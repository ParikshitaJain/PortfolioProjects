## Project Overview
Airline customer experience plays a crucial role in brand reputation, loyalty, and overall business success. This report analyzes British Airways customer reviews, focusing on key service aspects such as Seat Comfort, Cabin Staff Service, Food & Beverages, Inflight Entertainment, Ground Service, Value for Money, and Wifi & Connectivity. By extracting and cleaning data from Microsoft SQL Server (MSSQL) and applying sentiment analysis, text processing, and visualization techniques, this study aims to uncover customer perceptions and trends over time. Using natural language processing (NLP) and statistical modeling, the analysis identifies strengths, weaknesses, and areas for improvement, providing valuable insights into enhancing the passenger experience. The findings serve as a foundation for data-driven recommendations that can help British Airways improve customer satisfaction and stay competitive in the airline industry.

## Project Structure

| File                       | Description                                      |
|----------------------------|--------------------------------------------------|
| [Br](https://open.canada.ca/data/en/dataset/e5018406-cb90-4ded-a826-3e756402a2db) | Original Dataset|
| [British Airways Review.ipynb](https://github.com/ParikshitaJain/PortfolioProjects/blob/341d6ce010ba0672dc9b46b211d03e62cb6da22f/3.%20British%20Airways%20Reviews%20Analysis/Reviews%20analysis.ipynb) |Python script for analysis|
| [British Airways Review data.sql](https://github.com/ParikshitaJain/PortfolioProjects/blob/341d6ce010ba0672dc9b46b211d03e62cb6da22f/3.%20British%20Airways%20Reviews%20Analysis/Reviews%20database%20cleaned.sql)| MSSQL script|
|[README.md](https://github.com/ParikshitaJain/PortfolioProjects/blob/341d6ce010ba0672dc9b46b211d03e62cb6da22f/3.%20British%20Airways%20Reviews%20Analysis/README.md)| Project documentation          |

## Data Source
This dataset contains customer feedback for British Airways from Kaggle.

## Tools & Technologies
1. Python: Statistical Analysis and Visualisation
  - Platform : Jupyter lab
  -	FrameWorks : Pandas, Numpy, Matplotlib, Seaborn, Scikit Learn, NLP, WordCloud, TextBlob, Feature Extraction

2. SQL: Data extraction, cleaning, and aggregation
  - Tool : Microsoft SQL

## Data Analysis Questions
1. What are the average rating for different categories of the airplane service?
2. What kind of reviews are most common, negative/positive? 
3. How did the reviews change over time?
4. What category of airline services gets most attention?
5. Has the review became more positive or neagtive during last year? 

## Key Findings
- Cabin Staff Service has the highest rating with the least for Wifi and Connectivity.
- Common words: Highlighted in bar chart & word cloud.
- Sentiment Analysis: With major Sentiment Score ranging between 0 - 0.25, it shows a slightly negative or neutral reviews. This range suggests that the reviews are not very positive. 
  Airlines might be getting reviews that are mildly negative, or just very neutral, without much enthusiasm or strong positive feedback.
  This might suggest that passengers are generally not overly excited about the airline, but they aren't expressing strong dissatisfaction either.
- Mixed Reviews: Some customers highlight good experiences, friendly crew, and value for money, while others complain about cost-cutting measures, budget airline quality, and legroom issues.
- Customer Service & Cabin Crew Are Key Topics: These terms appear frequently, suggesting that interactions with staff significantly impact customer perception.
- Pricing & Cost Issues: The mention of "low cost," "budget airline," and "cost cutting" suggests that pricing strategy is a common concern.
- Despite short-term fluctuations, the sentiment score for reviews seems to gradually trend upwards, indicating a possible long-term improvement.
  The sentiment appears to be improving in the most recent years (2023-2024), showing an upward movement.
## Conclusion

In conclusion, the analysis of British Airways reviews highlights key insights into customer sentiment and service performance. The findings reveal that Cabin Staff Service and Seat Comfort received relatively high ratings, indicating strong customer satisfaction in these areas, while Wifi & Connectivity and Value for Money scored lower, suggesting opportunities for improvement. Sentiment analysis over time showed fluctuations, with some periods of sharp declines, but an overall trend toward improvement. To enhance passenger experience, British Airways should focus on improving in-flight internet connectivity, expanding entertainment options, and addressing concerns around value for money by offering competitive pricing or enhanced services. Additionally, continuous monitoring of sentiment trends can help identify emerging issues early, ensuring proactive service enhancements. Leveraging positive feedback in marketing strategies can also reinforce the airline’s strengths, helping to attract and retain customers in a highly competitive industry. 


