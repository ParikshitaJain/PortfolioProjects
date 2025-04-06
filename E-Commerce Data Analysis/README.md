## Executive Summary
This report provides a comprehensive analysis of e-commerce performance for a UK-based retailer, focusing on transaction-level data from 2023. Leveraging Python for data cleaning and analysis, and Power BI for interactive visualization, the goal was to extract actionable insights related to sales trends, customer behavior, and product performance.

The analysis reveals strong overall performance, with £9.56 million in revenue, 20,000+ orders, and an impressive 98.36% repeat customer rate, indicating high customer satisfaction and loyalty. Monthly sales remained stable through most of the year, with a significant spike in October and November driven by seasonal promotions like Black Friday and early holiday shopping. However, a sharp decline in December suggests a need for better post-holiday strategies.

Customer segmentation using RFM analysis uncovered that while the retailer has a large base of recent and regular customers, the number of high-value "best customers" remains low. This signals an opportunity to implement loyalty programs to boost long-term customer value.

The report also highlights top-selling products—primarily low-ticket decorative and packaging items—and identifies the UK as the dominant market, though international interest from Germany, the Netherlands, and France presents growth potential. The 4.29% cancellation rate, likely tied to product listing issues, underscores the importance of improving descriptions and images.

Key recommendations include optimizing for a high-volume, low-cost business model, enhancing product listings, expanding internationally, and leveraging seasonality through targeted promotions. Future analytics efforts should focus on CLV modeling, cross-selling strategies, and inventory forecasting to support continued growth.

## Project Overview
This project involves analyzing the 2023 e-commerce transactional data for a UK-based retailer to identify key sales trends, customer behaviors, and product performance. Using Python (Pandas, Matplotlib) for data cleaning and analysis, and Power BI for visualization, the objective was to generate actionable insights that could drive strategic decisions and improve business outcomes.


## Project Structure

| File                       | Description                                      |
|----------------------------|--------------------------------------------------|
| [Dataset](https://www.kaggle.com/datasets/atharvaarya25/e-commerce-analysis-uk)                   | Original Dataset               |
| [E-Commerce Data Analysis.ipynb](https://github.com/ParikshitaJain/PortfolioProjects/blob/4e7ea4144693fa1cb71ff91ca64e72c0d071cbf0/E-Commerce%20Data%20Analysis/E-commerce%20Data%20Analysis.ipynb)  |             Python script for analysis                     |
| [E-Commerce Data Analysis.pbix](https://github.com/ParikshitaJain/PortfolioProjects/blob/4e7ea4144693fa1cb71ff91ca64e72c0d071cbf0/E-Commerce%20Data%20Analysis/E-Commerce%20Data%20Analysis.pbix)        | Power BI Workbook         |
| [E-Commerce Data Analysis dashboard](https://github.com/ParikshitaJain/PortfolioProjects/blob/4e7ea4144693fa1cb71ff91ca64e72c0d071cbf0/E-Commerce%20Data%20Analysis/E-Commerce%20Data%20Analysis.pbix)          | Power BI dashboard       |
|E-Commerce Data Analysis Report.pdf |  (https://github.com/ParikshitaJain/PortfolioProjects/blob/4e7ea4144693fa1cb71ff91ca64e72c0d071cbf0/E-Commerce%20Data%20Analysis/E-Commerce%20Data%20Analysis%20Report.pdf) | Project Report
| [README.md](https://github.com/ParikshitaJain/PortfolioProjects/blob/4e7ea4144693fa1cb71ff91ca64e72c0d071cbf0/E-Commerce%20Data%20Analysis/README.md)                | Project documentation          |

## Data Sources and Methodology
### Data Source
Retailer e-commerce data was extracted from Kaggle and cleaned and analysed using Python (handling missing values, outliers, transformations, duplicates), and visualized in Power BI for trend analysis.

### Tools & Technologies
1. Tools Used: Python (Pandas, Matplotlib), Power BI 
2. Data Cleaning & Processing: Handling missing values, outliers, transformations, duplicates
3. Analysis Techniques: Descriptive stats, RFM Analysis, Trend Analysis, Customer Behaviour

## Data Analysis Questions
1. What are the overall performance metrics (revenue, orders, customer base)?
2. How do monthly sales trends behave across the year?
3. Which products are the top performers by revenue?
4. Who are the customers (RFM segmentation)?
5. What is the order cancellation/return behavior?
6. Which countries are contributing most to the revenue?
7. What can be improved to reduce cancellations and increase customer lifetime value?

## Key Findings
#### Performance Metrics
- Annual Revenue: £9.56 Million
- Average Order Value: £489.46
- Total Orders: 20,000+
- Unique Customers: 376,970
- Repeat Customer Rate: 98.36%
- Order Cancellation Rate: 4.29%

#### Monthly Sales Trends
- Steady Sales from Jan to Aug (£0.49M–£0.70M)
- Peak Period: Oct (£0.99M) & Nov (£1.42M) due to holiday sales (Black Friday, Cyber Monday)
- Drop in December: Likely due to completed holiday shopping and shipping delays

#### Customer Segmentation (RFM Analysis)
- Recent Customers: 2677 (high potential for conversion into loyal buyers)
- Regular Customers: 1371 (need personalized engagement)
- Lost Customers: 269 (require re-engagement strategies)
- Best Customers: Very few (opportunity to grow this segment)

#### Product Insights
- Top-selling products are decorative and packaging items, likely tied to events and gifting
- UK dominates while notable international sales from Germany, Netherlands, France
- High cancellations possibly due to poor product listings (e.g., inaccurate descriptions)

##  Recommendations & Actionable Insights
- Optimize for Low-Cost High-Volume Sales
- Improve packaging/logistics for products in the £0–£5 range
- Offer bundles and multi-buy discounts
- Capitalize on Seasonal Demand
- Strategically schedule marketing campaigns for March and November
- Launch offers before expected demand spikes
- Expand Internationally
- Target Germany, Netherlands, France with localized marketing and language support
- Streamline international shipping
- Improve Product Listings
- Audit and enhance product descriptions and images
- A/B test listings to reduce cancellations
- Launch Customer Loyalty Programs
- With a 98% repeat customer rate, introduce tiered rewards or exclusive offers

## Future Analytical Directions
- Customer Lifetime Value (CLV) Modeling
- Market Basket Analysis for product recommendations
- Inventory Forecasting to prepare for high-demand seasons


