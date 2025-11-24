## Table of Contents

| File                       | Description                                      |
|----------------------------|--------------------------------------------------|
| [Dataset](https://github.com/ParikshitaJain/PortfolioProjects/blob/59243e62ba76f486e55e73f95932a8a0bc24d5c3/Campaign%20Performance%20Analysis/camp%20data.xlsx)                   | Original Dataset               |
| [Marketing Data Analysis](https://github.com/ParikshitaJain/PortfolioProjects/blob/59243e62ba76f486e55e73f95932a8a0bc24d5c3/Campaign%20Performance%20Analysis/SQL%20Query.png)  |             SQL queries for analysis                     |
| [Marketing Data Analysis dashboard](https://github.com/ParikshitaJain/PortfolioProjects/blob/59243e62ba76f486e55e73f95932a8a0bc24d5c3/Campaign%20Performance%20Analysis/Marketing%20data%20analyst%20project.pdf)          | Power BI dashboard       |
| [README.md](https://github.com/ParikshitaJain/PortfolioProjects/blob/59243e62ba76f486e55e73f95932a8a0bc24d5c3/Campaign%20Performance%20Analysis/README.md)                | Project documentation          |

## Executive Summary

This report provides a comprehensive analysis of marketing campaign performance over the year, focusing on engagement metrics, cost efficiency, and platform-level trends. Using a Kaggle dataset that aggregates impressions, clicks, spend, and budget at the campaign and channel level, the analysis highlights patterns in audience interactions, channel effectiveness, and campaign efficiency.

Key insights include:

- Trends in Engagement: Monthly impressions and clicks peaked in August and October, indicating high audience engagement during these periods. CTR fluctuated throughout the year, with February achieving the highest engagement (6.68%) and November the lowest (2.34%).
- Platform and Channel Performance: DV360 and Facebook Ads delivered the highest impressions and clicks, with strong CTR and moderate CPC. Display campaigns achieved the highest CTR (3.95%), while mobile campaigns drove the highest click volume. Search and social campaigns had slightly higher CPC, suggesting areas for cost optimization.
- Campaign-level Efficiency: Campaign 2980 demonstrated exceptional performance with the highest CTR (31.2%) and lowest CPC ($0.03), whereas Campaign 3719 showed low efficiency with high CPC ($6.24) and low CTR (0.64%). Most campaigns were within budget, reflecting effective financial management.
This analysis offers actionable insights into which platforms, channels, and campaigns delivered the most engagement and cost efficiency, providing a foundation for optimizing future marketing strategies.

## Introduction
This report examines the performance of multiple marketing campaigns over a one-year period using a Kaggle dataset that captures campaign activities across several channels and platforms. The data includes key interaction metrics—impressions, clicks, and click-through rates (CTR)—along with media cost, allocated budgets, and channel-level performance indicators. Together, these elements provide a clear view of how each campaign engaged audiences and how efficiently its budget was used.
The objective of this analysis is straightforward: compare the effectiveness of different channels, platforms, and individual campaigns. Performance is assessed through core marketing metrics such as impressions, clicks, CTR, cost efficiency (CPC and CPM), and spend relative to budget. The goal is to identify which campaigns and channels delivered stronger engagement and better cost performance, and which ones underperformed despite investment.
The scope of the analysis is intentionally focused. Only the metrics available within the Kaggle dataset are used, including impressions, clicks, media cost, impressions, and campaign-level performance. External factors such as attribution modeling, ROI calculations, conversion outcomes, or predictive forecasting are excluded. The report centers strictly on descriptive and comparative insights drawn from the dataset itself.

## Data Description
The analysis is based on a publicly available marketing campaign dataset sourced from Kaggle. The dataset contains campaign-level and channel-level performance records, including audience interaction metrics and corresponding media investment. While the dataset does not specify its original collection method, the structure suggests it was aggregated from internal marketing reporting systems that track impressions, clicks, reach, spend, and budget across multiple platforms.

The dataset includes several groups of variables. Campaign identifiers capture where and how each campaign ran, including campaign_item_id, channel_name, and ext_service_name. Interaction metrics consist of impressions, clicks, total_reach, and unique_reach, which provide insight into audience exposure and engagement. Cost-related variables include campaign_budget_usd and media_cost_usd, allowing evaluation of budget allocation and spending efficiency. Time-based fields such as no_of_days and time indicate campaign duration and temporal patterns.

Overall data quality was solid. Minor inconsistencies in format were standardized during cleaning, and missing values were addressed using reasonable imputations in Excel. Additional checks for duplicates, irregular values, and structural issues showed no significant problems. The dataset was therefore suitable for descriptive and comparative analysis without extensive preprocessing.

## Methodology

The analytical workflow included structured data cleaning, targeted transformations, and systematic evaluation of campaign performance metrics. Cleaning steps addressed inconsistent formats, standardized data types, managed missing values, and verified the dataset for duplicates or irregular entries. After these adjustments, the dataset was reliable for deeper analysis.

Transformation steps focused on resolving the row-level structure of campaigns. Several campaigns appeared as repeated daily entries, often with budget changes occurring mid-campaign. To correctly evaluate spending and budget utilization, SQL was used to group records by campaign_item_id, channel_name, and campaign_budget_usd. Media cost was then aggregated within each budget grouping, producing a clear view of total spend associated with each budget tier. This consolidated view was stored in a separate Power BI table (“Budget Perform”). Additional calculated fields were created for key performance metrics including CPC, CPM, and CTR. A calendar table was also generated to support time-based filtering and trend analysis.

Analytical techniques centered on descriptive and comparative evaluation. Means, totals, rates, and percentage differences were used to examine performance across platforms, channels, and individual campaigns. Trend analysis captured changes in engagement and spending over time. Cost-efficiency evaluation identified campaigns running above or below budget and compared CPC and CTR across channels to determine which platforms were more expensive or more effective at generating interaction. No statistical models or machine learning methods were applied; the analysis focused on descriptive insights derived directly from the dataset and calculated metrics.

## Exploratory Data Analysis
#### 1. Overall Trends

Impressions and Clicks: Monthly impressions started at 2.9M in January, remained steady until April, then rose sharply to peak at 19.8M in August. A dip occurred in September to 12.3M, followed by a rebound to 19.7M in October and a sharp decline to 3.23M by December. Clicks followed a similar pattern, approximately 3–4 times lower than impressions.

CTR and CPC: Overall CTR declined from January to July, followed by fluctuations for the remainder of the year, with the lowest CTR observed in November (2.34%) and the highest in February (6.68%). CPC increased from $0.11 in January to $0.33 in July, decreased in August, and rose again in September.

Media Spend: Total monthly spend mirrored impression trends, with the lowest spend in January ($22.02K) and the highest in October ($191.63K), contributing to an annual spend of $858.27K.

#### 2. Channel and Platform Performance

Platform Comparison: DV360 led in impressions (34M) and clicks (1.35M) with a CTR of 3.99% and CPC of $0.22, resulting in a total spend of $289.7K. Facebook Ads had similar impressions (33M) and clicks (1M) with a CTR of 3.89% and CPC of $0.22, spending $292K. Google Ads had the lowest spend ($276.4K) and comparatively lower CTR (3.65%) and clicks (1M).

Channel Insights: Mobile campaigns generated the highest number of clicks overall, while video campaigns led in impressions, though the difference from mobile was marginal. Display campaigns achieved the highest CTR (3.95%), whereas search and social campaigns had slightly higher CPCs ($0.23) compared to other channels ($0.22).

#### 3. Cost Efficiency and Campaign-level Analysis

Budget vs. Spend: Most campaigns remained under budget, with a total overspend of only $34 annually. Among individual campaigns, Campaign 3719 had the highest CPC ($6.24) with low CTR (0.64%) and spend of $1.89K, whereas Campaign 2980 achieved the highest CTR (31.2%) with the lowest CPC ($0.03) and spend of $4.32K.

Efficiency Trends: Monthly analysis indicated that January had the highest CTR with the lowest CPC, highlighting periods of high cost efficiency. October’s peak in spend corresponded to the highest volume of impressions and clicks but did not necessarily result in proportionally higher engagement, indicating varying efficiency across campaigns.

## Results & Findings
The analysis of campaign performance over the year provides key insights into engagement trends, platform efficiency, and budget utilization. The findings highlight which campaigns and channels delivered the most impact, where spend efficiency was maximized, and areas for optimization.

#### 1. Overall Performance Insights

Engagement Patterns: Impressions and clicks followed a seasonal trend, peaking in August and October. This indicates periods of heightened audience interaction and potential campaign opportunities. CTR fluctuated across months, with February achieving the highest engagement (6.68%) and November the lowest (2.34%), suggesting variability in campaign effectiveness over time.

Cost Metrics: CPC peaked in July ($0.33) and was lowest in January ($0.11), indicating periods of higher competition or less efficient spend. Overall, the total annual spend of $858.27K was largely in line with budgets, with only minor overspend ($34), reflecting effective budget management at the aggregate level.

#### 2. Platform and Channel Insights

Top Platforms: DV360 led in impressions (34M) and clicks (1.35M) with strong CTR (3.99%) and moderate CPC ($0.22), making it a high-reach and cost-efficient channel. Facebook Ads delivered comparable results in clicks (1M) and impressions (33M) but at slightly higher total spend ($292K). Google Ads exhibited the lowest engagement efficiency, with both CTR (3.65%) and clicks (1M) lagging behind other platforms despite lower spend ($276.4K).

Channel Performance: Mobile campaigns drove the highest overall clicks, while video campaigns generated the most impressions. Display campaigns achieved the highest CTR (3.95%), making them effective for engagement-focused campaigns. CPC analysis revealed that search and social campaigns ($0.23) were marginally more expensive than mobile, video, and display campaigns ($0.22), highlighting areas where cost efficiency could be improved.

#### 3. Campaign-level Insights

High-performing Campaigns: Campaign 2980 achieved exceptional engagement with a CTR of 31.2% at a CPC of $0.03, demonstrating strong efficiency in both reach and cost.
Underperforming Campaigns: Campaign 3719 had the highest CPC ($6.24) and lowest CTR (0.64%), signaling a poor return on spend and identifying an opportunity for optimization or reallocation of budget.
Budget Utilization: While most campaigns remained under budget, select campaigns experienced minor overspending. Monitoring CPC and CTR trends alongside spend can help optimize campaign allocation to maximize engagement while controlling costs.

## Recommendations
- Prioritize campaigns and platforms with proven high CTR and low CPC, such as DV360 and display channels, to improve overall engagement efficiency.
- Reevaluate high-CPC, low-CTR campaigns like Campaign 3719 to identify root causes—whether targeting, creatives, or timing—and adjust strategy accordingly.
- Leverage seasonal trends by allocating higher budgets in high-engagement months (August and October) while optimizing for cost efficiency in low-CTR periods.
- Regularly monitor channel-level performance to balance spend, maximize clicks, and maintain cost efficiency across campaigns.

## Conclusion
The campaign performance analysis demonstrates clear variations in engagement and cost efficiency across platforms, channels, and campaigns. Seasonal trends suggest optimal periods for campaign activity, while campaign-level comparisons highlight opportunities to reallocate budget toward high-performing initiatives and reconsider underperforming ones. While the analysis is constrained by the absence of ROI and conversion data, the descriptive trends and cost-efficiency insights provide a valuable understanding of campaign effectiveness. Future analyses could incorporate conversion and revenue metrics to evaluate return on spend and predictive modeling to forecast campaign performance. Overall, the findings support strategic decision-making in optimizing media spend, prioritizing high-performing platforms and campaigns, and improving marketing efficiency across the organization.
