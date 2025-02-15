--Breaking user into individual columns (full_name,country,DateofReview)

--Adding column full name
ALTER TABLE british_airways_review
ADD review_name NVARCHAR(255)

UPDATE british_airways_review
SET review_name = CASE 
WHEN [user] like '%(%)%'
THEN LTRIM(SUBSTRING([user],1,CHARINDEX('(',[user])-1))
WHEN [user] not like '%(%)%'
THEN LTRIM(SUBSTRING([user],1,PATINDEX('%[0-9]%',[user])-1))
ELSE [user]
END
FROM PortfolioProjects..british_airways_review


ALTER TABLE british_airways_review
ADD full_name NVARCHAR(255)

UPDATE british_airways_review
SET full_name = 
CASE
WHEN review_name LIKE '%reviews%'
THEN SUBSTRING(review_name,CHARINDEX('reviews',review_name)+LEN('reviews')+4,LEN([user]))
ELSE review_name
END 
FROM PortfolioProjects..british_airways_review

--Adding column country
ALTER TABLE british_airways_review
ADD countrydate NVARCHAR(255)

UPDATE british_airways_review
SET countrydate = 
CASE WHEN [user] LIKE '%(%)%'
THEN PARSENAME (REPLACE([user],'(','.'),1)
ELSE [user]
END
FROM PortfolioProjects..british_airways_review

ALTER TABLE british_airways_review
ADD country NVARCHAR(255)

UPDATE british_airways_review
SET country = CASE WHEN countrydate LIKE '%)%'
THEN PARSENAME (REPLACE(countrydate, ')' , '.'),2)
ELSE NULL
END
FROM PortfolioProjects..british_airways_review

--Adding column date
ALTER TABLE british_airways_review
ADD DateofReview NVARCHAR(255)

UPDATE british_airways_review
SET DateofReview = CASE WHEN countrydate LIKE '%)%'
THEN PARSENAME (REPLACE(countrydate, ')' , '.'),1)
ELSE SUBSTRING(countrydate,PATINDEX('%[0-9]%',countrydate),LEN(countrydate))
END
FROM PortfolioProjects..british_airways_review

-----------------------------------------------------------
--Standardize date format
ALTER TABLE british_airways_review
ADD DateConverted DATE

UPDATE british_airways_review
SET DateConverted = CONVERT(DATE,[Date Flown])

-----------------------------------------------------------------
--Breaking Route to individual columns (Departure,Arrival)

--Updated table with 'Departure column'
ALTER TABLE british_airways_review
ADD departure NVARCHAR(255)

UPDATE british_airways_review
SET departure = 
CASE WHEN route like '%to%'
THEN LTRIM(RTRIM(SUBSTRING(route,1,CHARINDEX(' to ',route)-1)))
WHEN route like '%-%'
THEN LTRIM(RTRIM(SUBSTRING(route,1,CHARINDEX('-',route)-1)))
WHEN route NOT LIKE '%to%' AND route NOT LIKE '%-%' AND route NOT LIKE '%via%'
then LTRIM(RTRIM(SUBSTRING(route,1,CHARINDEX(' ',route)-1)))
else NULL
end
from PortfolioProjects..british_airways_review

--Updated tables with arrival column
ALTER TABLE british_airways_review
ADD arrival NVARCHAR(255)

update british_airways_review
SET arrival = 
CASE
WHEN route LIKE '%to%' AND route LIKE '%via%'
THEN LTRIM(RTRIM(PARSENAME(REPLACE(REPLACE(route, ' to ','.'),' via ','.'),2)))
WHEN route LIKE '%to%'
THEN LTRIM(RTRIM(PARSENAME(REPLACE(route, ' to ','.'),1)))
WHEN route LIKE '%-%'
THEN LTRIM(RTRIM(PARSENAME(REPLACE(route, '-','.'),1)))
WHEN route LIKE '%-%' AND route LIKE '%via%'
THEN LTRIM(RTRIM(PARSENAME(REPLACE(REPLACE(route, '-','.'),' via ','.'),2)))
WHEN route NOT LIKE '%to%' AND route NOT LIKE '%-%' AND route NOT LIKE '%via%'
THEN LTRIM(RTRIM(PARSENAME(REPLACE(route,' ','.'),1)))
WHEN route NOT LIKE '%to%' AND route NOT LIKE '%-%' AND route LIKE '%via%'
THEN LTRIM(RTRIM(PARSENAME(REPLACE(route,' via ','.'),2)))
ELSE NULL
END
FROM PortfolioProjects..british_airways_review

ALTER TABLE british_airways_review
DROP COLUMN review_name

-- check for duplicate reviews
WITH cte 
AS(
SELECT *,
ROW_NUMBER() OVER (PARTITION BY main_text,text_content,departure,arrival,full_name 
				ORDER BY departure) AS row_num
FROM PortfolioProjects..british_airways_review
)
DELETE
FROM cte
WHERE row_num > 1
