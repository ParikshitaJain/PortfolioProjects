IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = 'RoadAccidents')
BEGIN
    CREATE DATABASE RoadAccidents;
END

select count(country)
from RoadAccidents..road_accident_dataset

--Total accidents per country

select Country, count(country) as total_accident_per_country
from RoadAccidents..road_accident_dataset
group by Country

--Total accidents per year in each the countries

select country, year, count(year)as total_accidents_yearly
from RoadAccidents..road_accident_dataset
where year='2024'
group by country,year
order by year desc

--Average number of vehicle involved per accident

select round(avg([Number of Vehicles Involved]),0) as Average_no_of_vehicle
from RoadAccidents..road_accident_dataset

--	Most common accident cause

select [accident cause], COUNT([accident cause])
from RoadAccidents..road_accident_dataset
GROUP BY [accident cause]

--Accident trend by year for a particular country

select country, year, count(year)as total_accidents
from RoadAccidents..road_accident_dataset
--where country='Canada'
group by country,year
order by year desc

--Total accidents per year for each country (using pivot able)
with cte1 (country,year,total_accidents)
as
(
select country, year, count(year)as total_accidents
from RoadAccidents..road_accident_dataset
--where country='Canada'
group by country,year
)
SELECT * 
FROM (
    SELECT country,year,total_accidents
    FROM cte1
) AS source_table
PIVOT (
    SUM(total_accidents) FOR country IN ([Germany], [Canada],[USA],[Japan],[India],[UK],[Russia],[China],[Australia],[Brazil])
) AS pivot_table
order by year desc

--accidents by month- more in winter or summer?
select Month, count(month) as accidents_byMonth
from RoadAccidents..road_accident_dataset
group by (month)
order by accidents_byMonth desc

--accidents by weekday- more in which day of the week?
select [Day of Week], count([Day of Week]) as accidents_bydays
from RoadAccidents..road_accident_dataset
group by ([Day of Week])
order by accidents_bydays desc

--Most fatalities causes
select [Accident Cause], sum([Number of Fatalities]) as total_fatalities
from RoadAccidents..road_accident_dataset
group by [accident cause]
order by total_fatalities desc

--which country had the most fatalities?

select Country, sum([number of fatalities]) as total_fatalities
from RoadAccidents..road_accident_dataset
group by Country
order by total_fatalities desc

--which country had the most injuries?

select Country, sum([Number of Injuries]) as total_injuries
from RoadAccidents..road_accident_dataset
group by Country
order by total_injuries desc

--partitioning by countries

select country,year[Number of Fatalities], row_number() over(partition by Country order by year desc)
as row_num
from RoadAccidents..road_accident_dataset
--where country like '%australia%'

--In a country how many cars were in good condition before the accident (subquery)

select count([Vehicle Condition]) as total_vehicle_count, (select count([Vehicle Condition]) as good_condition_count from RoadAccidents..road_accident_dataset where country = 'India'  and [Vehicle Condition] = 'good')
from RoadAccidents..road_accident_dataset
where country = 'India'

--In a country how many cars were in poor condition before the accident (subquery)

select count([Vehicle Condition]) as total_vehicle_count, (select count([Vehicle Condition]) from RoadAccidents..road_accident_dataset where country = 'India'  and [Vehicle Condition] = 'poor')
from RoadAccidents..road_accident_dataset
where country = 'India'


--Percentage of minor <18 and old drivers 61+ in the list of total drivers

with cte (country, total_drivers, minor_drivers, old_drivers, adult_drivers)
as
(
select country, count([driver age group]) as total_divers, 
sum(case when [driver age group] = '<18' then 1 else 0 end) as minor_drivers, 
sum(case when [driver age group] = '61+' then 1 else 0 end) as old_drivers,
from RoadAccidents..road_accident_dataset
group by country
)
select * ,
round(((cast(minor_drivers as float)/total_drivers)*100),2) as minor_drivers_percentage, 
round(((cast(old_drivers as float)/total_drivers)*100),2) as old_drivers_percentage
from cte
order by minor_drivers_percentage desc

--Age Group with most accidents

select [driver age group],count([driver age group])
from RoadAccidents..road_accident_dataset
group by [driver age group]
order by [driver age group] desc

--which gender with most accidents

select [driver gender],count([driver gender])
from RoadAccidents..road_accident_dataset
group by [driver gender]
order by [driver gender] desc

--total economic losses per country in a given year

select country,sum([economic loss]) as total_losses
from RoadAccidents..road_accident_dataset
where year='2024'
group by country
order by total_losses desc

--which accident casues most medical costs

select [accident cause],sum([economic loss]) as loss
from RoadAccidents..road_accident_dataset
--where country = 'russia'
group by [accident cause]
order by loss desc

select *
from RoadAccidents..road_accident_dataset

