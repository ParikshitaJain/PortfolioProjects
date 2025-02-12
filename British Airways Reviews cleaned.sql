select *
from PortfolioProjects..british_airways_review

--Breaking user into individual columns (full_name,country,DateofReview)

--Adding column full name
alter table british_airways_review
add review_name nvarchar(255)

update british_airways_review
set review_name = case 
when [user] like '%(%)%'
then ltrim(substring([user],1,charindex('(',[user])-1))
when [user] not like '%(%)%'
then ltrim(substring([user],1,patindex('%[0-9]%',[user])-1))
else [user]
end
from PortfolioProjects..british_airways_review


alter table british_airways_review
add full_name nvarchar(255)

update british_airways_review
set full_name = 
case
when review_name like '%reviews%'
then substring(review_name,charindex('reviews',review_name)+len('reviews')+4,len([user]))
else review_name
end 
from PortfolioProjects..british_airways_review

--Adding column country
alter table british_airways_review
add countrydate nvarchar(255)

update british_airways_review
set countrydate = 
case when [user] like '%(%)%'
then parsename (replace([user],'(','.'),1)
else [user]
end
from PortfolioProjects..british_airways_review

alter table british_airways_review
add country nvarchar(255)

update british_airways_review
set country = case when countrydate like '%)%'
then parsename (replace(countrydate, ')' , '.'),2)
else null
end
from PortfolioProjects..british_airways_review

--Adding column date

alter table british_airways_review
add DateofReview nvarchar(255)

update british_airways_review
set DateofReview = case when countrydate like '%)%'
then parsename (replace(countrydate, ')' , '.'),1)
else substring(countrydate,patindex('%[0-9]%',countrydate),len(countrydate))
end
from PortfolioProjects..british_airways_review

-----------------------------------------------------------
--Standardize date format
alter table british_airways_review
add DateConverted date

update british_airways_review
set DateConverted = convert(date,[Date Flown])

-----------------------------------------------------------------
--Breaking Route to individual columns (Departure,Arrival)

--Updated table with 'Departure column'
alter table british_airways_review
add departure nvarchar(255)

update british_airways_review
set departure = 
case when route like '%to%'
then LTRIM(RTRIM(substring(route,1,charindex(' to ',route)-1)))
when route like '%-%'
then LTRIM(RTRIM(substring(route,1,charindex('-',route)-1)))
when route not like '%to%' and route not like '%-%' and route not like '%via%'
then LTRIM(RTRIM(substring(route,1,charindex(' ',route)-1)))
else NULL
end
from PortfolioProjects..british_airways_review

--Updated tables with arrival column

alter table british_airways_review
add arrival nvarchar(255)

update british_airways_review
set arrival = 
case
when route like '%to%' and route like '%via%'
then  LTRIM(RTRIM(parsename(replace(replace(route, ' to ','.'),' via ','.'),2)))
when route like '%to%'
then LTRIM(RTRIM(parsename(replace(route, ' to ','.'),1)))
when route like '%-%'
then LTRIM(RTRIM(parsename(replace(route, '-','.'),1)))
when route like '%-%' and route like '%via%'
then  LTRIM(RTRIM(parsename(replace(replace(route, '-','.'),' via ','.'),2)))
when route not like '%to%' and route not like '%-%' and route not like '%via%'
then LTRIM(RTRIM(parsename(replace(route,' ','.'),1)))
when route not like '%to%' and route not like '%-%' and route like '%via%'
then LTRIM(RTRIM(parsename(replace(route,' via ','.'),2)))
else null
end
from PortfolioProjects..british_airways_review

alter table british_airways_review
drop column review_name

-- check for duplicate reviews
with cte 
as(
select *,
row_number() over (partition by main_text,text_content,departure,arrival,full_name 
				order by departure) as row_num
from PortfolioProjects..british_airways_review
)
delete
from cte
where row_num > 1
