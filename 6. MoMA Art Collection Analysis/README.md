## Executive Summary
The analysis of the MoMA art collection dataset provides insights into the distribution, acquisition trends, and characteristics of artworks and artists in the museum’s collection. The findings indicate that the collection is primarily composed of paintings, prints, and photographs, with a notable emphasis on American and European artists. The acquisition trends reveal significant periods of growth, which could guide future strategies for expanding the collection. To improve exhibition planning, it is important to diversify artist representation, enhance data completeness, and leverage insights effectively.

## Project Overview
The goal of the analysis of the MoMA art collection dataset is to provide insights into the distribution, acquisition trends, and characteristics of artworks in the museum’s collection. Insights will guide on how an art gallery can make data-driven decision to increase its productvity make long-term actionable strategies for growth.


## Project Structure

| File                       | Description                                      |
|----------------------------|--------------------------------------------------|
| [Artworks.xlsx](https://github.com/ParikshitaJain/PortfolioProjects/blob/d831b89fe824225bfca79f6a8391df5678865c1e/MoMA%20Art%20Collection%20Analysis/Artworks.xlsx)                   | Original Dataset               |
| [Artworks_Copy.xlsx](https://github.com/ParikshitaJain/PortfolioProjects/blob/0ace48cb1f9498fa41c558d598996d29b288801c/MoMA%20Art%20Collection%20Analysis/Artworks_Copy.xlsx)     | Processed Dataset ready for Power BI    |
| [MoMa Art Gallery Python.ipynb](https://github.com/ParikshitaJain/PortfolioProjects/blob/b4db667dac446cd55d5558311e21e911e5c3264f/MoMA%20Art%20Collection%20Analysis/MoMA%20Art%20Gallery%20Python.ipynb)  |             Python script for analysis                     |
| [MoMA Art Gallery.pbix](https://github.com/ParikshitaJain/PortfolioProjects/blob/86a25db934df735a842093b25bdda56c80ce3fc0/3.%20MoMA%20Art%20Collection%20Analysis/MoMA%20art%20gallery%20data%20analysis.pbix)        | Power BI Workbook         |
| [MoMa art gallery Report.pdf](https://github.com/ParikshitaJain/PortfolioProjects/blob/86a25db934df735a842093b25bdda56c80ce3fc0/3.%20MoMA%20Art%20Collection%20Analysis/MoMA%20art%20gallery%20data%20analysis%20dashboard.pdf)          | Project Report      |
| [README.md](https://github.com/ParikshitaJain/PortfolioProjects/blob/b4db667dac446cd55d5558311e21e911e5c3264f/MoMA%20Art%20Collection%20Analysis/README.md)                | Project documentation          |

## Data Sources and Methodology
### Data Source
The dataset is sourced from [MavenAnalytics](https://mavenanalytics.io/data-playground?order=date_added%2Cdesc&page=1&pageSize=5). This research dataset contains 157,630 records, representing all of the works that have been accessioned into MoMA’s collection and cataloged in their database. It includes basic metadata for each work, including title, artist, date made, medium, dimensions, and date acquired by the Museum. 

### Tools & Technologies
1. Tools Used : Python (Pandas, Numpy, Matplotlib, Seaborn, WordCloud, TextBlob), Power BI
2. Data Cleaning & Processing : Handling missing values, outliers, transformations, removing duplicates
3. Analysis Techniques :  Descriptive stats, EDA, NLP, Wordcloud visualisation

## Data Analysis Questions
1. What is the distribution of artists’ nationalities? 
2. What is the gender distrbution of artists over time? 
3. Which classification of artwork is most common?
4. What is the trend of artwork acquisitions over time?
5. What are the most commonly used mediums? 
6. Which departments acquire the most artworks over time? 
7. What is the average lifespan of artists based on their birth and death years? 
8. What size of artworks more likely to be "On View" in the museum? 
9. Which artists have the most works in the collection?

## Key Findings

- Types of Artworks Displayed: Paintings are the most commonly displayed artworks, followed by photography and sculptures.
- Acquisition Trends: Significant spikes in acquisitions occurred in the late 1960s and early 2000s, likely due to major donations or museum expansion efforts.
- Artist Representation: Ludwig Mies van der Rohe is the most featured artist, with notable contributions from Picasso, Matisse, and others.
- Common Artwork Types: Print and photographs dominate the collection, followed by illustrated books and drawings.
- Artist Nationality: The majority of artists represented are American, followed by French, German, and British artists.

##  Recommendations & Actionable Insights

The MoMA art collection analysis reveals significant trends in acquisitions, artist representation, and artwork types. The findings suggest that paintings, prints, and photographs dominate the collection, with a strong focus on American and European artists. Acquisition patterns highlight key periods of growth, which may inform future collection strategies. Recommendations include diversifying artist representation, improving data completeness, and leveraging insights for better exhibition planning. By continuously analyzing and updating the collection data, MoMA can enhance its curation and provide a more inclusive and engaging experience for visitors.

