--This analysis is of real world air quality data of Canada using Python and SQL, focusing on key pollutants such as NO₂, PM2.5, SO₂, O₃, NO, and CO.  
--SQL is utilized for data extraction, cleaning, and aggregation, while Python is employed for statistical analysis and visualization. 
--The analysis explores pollutant trends, peak pollution events, and compliance with air quality standards, providing insights into 
--temporal patterns and potential pollution sources. Dataset source : https://open.canada.ca/data/en/dataset/e5018406-cb90-4ded-a826-3e756402a2db

--Cleaning data
DELETE FROM PortfolioProjects..NO_data
WHERE [year] IS NULL

--Dropping Duplicates
WITH CTE ([station number],[type],[valid hour],[99 percentile],[location],row_num)
AS(
SELECT [station number],[type],[valid hour],[99 percentile],[location],
ROW_NUMBER() OVER (PARTITION BY [station number],[type],[valid hour],[99 percentile],[30th percentile],[location] ORDER BY [station number]) AS row_num
FROM PortfolioProjects..so2_data
)
DELETE FROM cte
WHERE row_num > 1

--Basic Statistics : Mean, Min, Max as per year
SELECT [year], AVG(mean) avg_concentration, 
			   MAX(mean) max_concentration,
			   MIN(mean) min_concentration
FROM PortfolioProjects..pm25_data
GROUP BY [year]
ORDER BY [year] DESC

--Percentile analysis
SELECT 
    [Year], 
    AVG([10th Percentile]) AS P10, 
    AVG([30th Percentile]) AS P30, 
    AVG([50th Percentile]) AS P50, 
    AVG([70th Percentile]) AS P70, 
    AVG([90th Percentile]) AS P90, 
    AVG([99 Percentile]) AS P99
FROM PortfolioProjects..o3_data
GROUP BY [Year]
ORDER BY [Year] DESC

--Trend Analysis
SELECT [year], AVG(mean) avg_concentration
FROM PortfolioProjects..co_data
GROUP BY [year]
ORDER BY [year] DESC

--Geographic analysis (City-Based Analysis)
SELECT city, AVG(mean) CO_mean
FROM PortfolioProjects..co_data
GROUP BY city


--Average pollutant concentration per year
WITH cte ([Year],SN,City,
		  co_mean,NO_Mean,NO2_Mean,O3_Mean,pm_Mean,SO2_Mean)
AS (
SELECT  co.[year] [Year],co.[station number] SN,co.city City, co.mean*1000 co_mean, no_.mean NO_Mean, 
		no2.Mean NO2_Mean, o3.Mean O3_Mean, pm.Mean pm_Mean, so2.Mean SO2_Mean	
FROM PortfolioProjects..co_data co
LEFT JOIN PortfolioProjects..no_data no_ ON co.[year] = no_.[year] AND co.city = no_.city
LEFT JOIN PortfolioProjects..no2_data no2 ON co.[year] = no2.[year] AND co.city = no2.city
LEFT JOIN PortfolioProjects..o3_data o3 ON co.[year] = o3.[year] AND co.city = o3.city
LEFT JOIN PortfolioProjects..PM25_data pm ON co.[year] = pm.[year] AND co.city = pm.city
LEFT JOIN PortfolioProjects..so2_data so2 ON co.[year] = so2.[year] AND co.city = so2.city
)
SELECT [year], AVG(co_mean) CO_Mean_avg, AVG(NO_Mean) NO_Mean_avg, AVG(NO2_Mean) NO2_Mean_avg, AVG(O3_Mean) O3_Mean_avg, 
			   AVG(pm_Mean) pm_Mean_avg, AVG(SO2_Mean) SO2_Mean_avg	
FROM cte
GROUP BY [year]
ORDER BY [year] DESC

--Average pollutant concentration in different cities
WITH cte ([Year],SN,City,
		  co_mean,NO_Mean,NO2_Mean,O3_Mean,pm_Mean,SO2_Mean)
AS (
SELECT  co.[year] [Year],co.[station number] SN,co.city City, co.mean*1000 co_mean, no_.mean NO_Mean, 
		no2.Mean NO2_Mean, o3.Mean O3_Mean, pm.Mean pm_Mean, so2.Mean SO2_Mean	
FROM PortfolioProjects..co_data co
LEFT JOIN PortfolioProjects..no_data no_ ON co.[year] = no_.[year] AND co.city = no_.city
LEFT JOIN PortfolioProjects..no2_data no2 ON co.[year] = no2.[year] AND co.city = no2.city
LEFT JOIN PortfolioProjects..o3_data o3 ON co.[year] = o3.[year] AND co.city = o3.city
LEFT JOIN PortfolioProjects..PM25_data pm ON co.[year] = pm.[year] AND co.city = pm.city
LEFT JOIN PortfolioProjects..so2_data so2 ON co.[year] = so2.[year] AND co.city = so2.city
)
SELECT city, AVG(co_mean) CO_Mean_avg, AVG(NO_Mean) NO_Mean_avg, AVG(NO2_Mean) NO2_Mean_avg, AVG(O3_Mean) O3_Mean_avg, 
						  AVG(pm_Mean) pm_Mean_avg, AVG(SO2_Mean) SO2_Mean_avg	
FROM cte
GROUP BY city

--Correlation between pollutants
SELECT no2.mean no2_mean, o3.mean o3_mean, pm.mean pm25_mean, co.mean*1000 co_mean,so2.mean so2_mean
FROM PortfolioProjects..no2_data no2
JOIN PortfolioProjects..o3_data o3 ON o3.[year] = no2.[year] AND o3.[Station Number] = no2.[station number]
JOIN PortfolioProjects..PM25_data pm ON pm.[year] = no2.[year] AND pm.[Station Number] = no2.[station number]
JOIN PortfolioProjects..co_data co ON co.[year] = no2.[year] AND co.[Station Number] = no2.[station number]
JOIN PortfolioProjects..SO2_data so2 ON so2.[year] = no2.[year] AND so2.[Station Number] = no2.[station number]



--Finding No of times CO,NO2,O3,SO2 concentration exceeded 1-Hour threshold per year
WITH cte ([Year],SN,City,
		  CO_limit,NO2_limit,O3_limit,SO2_limit)
AS (
SELECT  co.[year] [Year],co.[station number] SN,co.city City, co.[No# of Times Above 1-Hour Criterion] CO_limit,
		no2.[No# of Times Above 1-Hour Criterion] NO2_limit, o3.[No# of Times Above 1-Hour Criterion] O3_limit, so2.[No# of Times Above 1-Hour Criterion] SO2_limit	
FROM PortfolioProjects..co_data co
LEFT JOIN PortfolioProjects..no_data no_ ON co.[year] = no_.[year] AND co.city = no_.city
LEFT JOIN PortfolioProjects..no2_data no2 ON co.[year] = no2.[year] AND co.city = no2.city
LEFT JOIN PortfolioProjects..o3_data o3 ON co.[year] = o3.[year] AND co.city = o3.city
LEFT JOIN PortfolioProjects..PM25_data pm ON co.[year] = pm.[year] AND co.city = pm.city
LEFT JOIN PortfolioProjects..so2_data so2 ON co.[year] = so2.[year] AND co.city = so2.city
)
SELECT [year], SUM(CO_limit) CO_limit_reached, SUM(NO2_limit) NO2_limit_reached, SUM(O3_limit) O3_limit_reached, SUM(SO2_limit) SO2_limit_reached
FROM cte
GROUP BY [year]
ORDER BY [year] DESC

--Finding No of times CO,NO2,O3,SO2 concentration exceeded the threshold in different cities
WITH cte ([Year],SN,City,
		  CO_limit,NO2_limit,O3_limit,SO2_limit)
AS (
SELECT  co.[year] [Year],co.[station number] SN,co.city City, co.[No# of Times Above 1-Hour Criterion] CO_limit,
		no2.[No# of Times Above 1-Hour Criterion] NO2_limit, o3.[No# of Times Above 1-Hour Criterion] O3_limit, so2.[No# of Times Above 1-Hour Criterion] SO2_limit	
FROM PortfolioProjects..co_data co
LEFT JOIN PortfolioProjects..no_data no_ ON co.[year] = no_.[year] AND co.city = no_.city
LEFT JOIN PortfolioProjects..no2_data no2 ON co.[year] = no2.[year] AND co.city = no2.city
LEFT JOIN PortfolioProjects..o3_data o3 ON co.[year] = o3.[year] AND co.city = o3.city
LEFT JOIN PortfolioProjects..PM25_data pm ON co.[year] = pm.[year] AND co.city = pm.city
LEFT JOIN PortfolioProjects..so2_data so2 ON co.[year] = so2.[year] AND co.city = so2.city
)
SELECT city, SUM(CO_limit) CO_limit_reached, SUM(NO2_limit) NO2_limit_reached, SUM(O3_limit) O3_limit_reached, SUM(SO2_limit) SO2_limit_reached
FROM cte
GROUP BY city




