## Project Overview
Air pollution poses significant risks to public health and the environment, with pollutants like nitrogen dioxide (NO₂), particulate matter (PM2.5), sulfur dioxide (SO₂), ozone (O₃), nitric oxide (NO), and carbon monoxide (CO) being key contributors to degraded air quality. This report analyzes air quality data collected from various monitoring stations, focusing on these six pollutants to identify trends, patterns, and potential sources of pollution.
The dataset provides pollutant concentrations in parts per billion (ppb) and includes key statistical metrics such as percentiles, mean values, hourly and daily maximum concentrations, and the number of exceedances above regulatory air quality standards. By examining this data, I aim to uncover temporal patterns, assess pollution levels against established air quality criteria, and investigate potential factors contributing to pollution events.
The analysis employs both SQL and Python for data exploration, transformation, and visualization. SQL is utilized to aggregate and structure the data, while Python provides tools for statistical analysis and visual storytelling. The findings will offer insights into pollution patterns that may support data-driven decisions for environmental policy and public health initiatives.

## Project Structure

| File                       | Description                                      |
|----------------------------|--------------------------------------------------|
| [Air pollutants Files](https://open.canada.ca/data/en/dataset/e5018406-cb90-4ded-a826-3e756402a2db) | Original Dataset|
| [Air Quality Analysis.ipynb](https://github.com/ParikshitaJain/PortfolioProjects/blob/b27ccef484cbe93a8e1bb0362518003ec75cc2b7/2.%20Canada%20Air%20Pollutant%20Analysis/Air%20Quality%20Analysis.ipynb) |Python script for analysis|
| [Canada Annual Air Pollutant Analysis.sql](https://github.com/ParikshitaJain/PortfolioProjects/blob/184123094a04b13e526d1f4669d53f2d7a0b414a/2.%20Canada%20Air%20Pollutant%20Analysis/Canada%20Annual%20Air%20Pollutant%20Analysis.sql)| MSSQL script|
|[README.md](https://github.com/ParikshitaJain/PortfolioProjects/blob/b4db667dac446cd55d5558311e21e911e5c3264f/MoMA%20Art%20Collection%20Analysis/README.md)                | Project documentation          |

## Data Source
﻿This analysis is of real world air quality data of Canada using Python and SQL, focusing on key pollutants such as NO₂, PM2.5, SO₂, O₃, NO, and CO.  SQL is utilized for data extraction, cleaning, and aggregation, while Python is employed for statistical analysis and visualization. The analysis explores pollutant trends, peak pollution events, and compliance with air quality standards, providing insights into temporal patterns and potential pollution sources. The data is extracted from Canada Goverment's open data source.

## Tools & Technologies
1. Python: Statistical Analysis and Visualisation
  - Platform : Jupyter lab
  -	FrameWorks : Pandas, Numpy, Matplotlib, Seaborn, Scikit Learn (Linear,Polynomial Regression)

2. SQL: Data extraction, cleaning, and aggregation
  - Tool : Microsoft SQL

## Data Analysis Questions
1. What are the pollutants concentration at different percentiles?
2. What are the average concentration of pollutants per year? 
3. What is the average concentration of pollutants in cities?
4. Is there a correlation between pollutants?
5. How many times the pollutants exceed their threshold limits per year/city? 

## Key Findings
- All the pollutants seem to decrease over time, although concentration of Ozone shows the opposite trend.
- Higher percentiles consistently show spikes across pollutants, indicating episodic pollution events.
- Traffic-related pollutants (CO, NO, NO₂) show more pronounced percentile shifts, suggesting localized sources.
- Sharp drop in CO (early 2000s)
- Toronto seems to be most populated compared to other cities in Canada.
- O3 and NO2 clearly shows a clean scatter with strong negative trend. Although predictive modeling suggests there may also be a lot of variance in the data. 
- The plot shows a decreasing trend of exceedance level reached for SO2 and increasing for O3 in the years.

## Conclusion

By leveraging real-time data analysis, statistical modeling, and predictive techniques, this study provides insights into the patterns, causes, and risks associated with air pollution in Canadian cities. The findings highlight the need for data-driven decision-making in environmental policy and urban planning. 

