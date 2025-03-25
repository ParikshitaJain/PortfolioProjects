## Executive Summary
Data analysis is crucial for the healthcare industry as it directly influences decision-making, operational efficiency, and patient care quality. With the growing amount of patient data being generated, healthcare organizations are increasingly relying on data-driven insights to improve clinical outcomes, streamline operations, and reduce costs.
The Hospital Patient Analysis project focuses on extracting valuable insights from healthcare data to improve patient care, resource allocation, and overall operational efficiency. Focusing on preventive healthcare, increased resource allocation for cardiac patients, more awareness for mental health cases.


## Project Structure

| File                       | Description                                      |
|----------------------------|--------------------------------------------------|
| [Hospital Data Records.rar](https://github.com/ParikshitaJain/PortfolioProjects/blob/main/4.%20Hospital%20Patient%20Analysis/Hospital%2BPatient%2BRecords.rar)                   | Original Dataset               |
| [Hospital Data Analysis.pbix](https://github.com/ParikshitaJain/PortfolioProjects/blob/c0389e276df5337b323dee4cf10bd3dfbbfc12f5/4.%20Hospital%20Patient%20Analysis/Hospital%20Patients%20Analysis.pbix)     | Processed Dataset ready for Tableau    |
| [Hospital Data Analysis Report](https://github.com/ParikshitaJain/PortfolioProjects/blob/abb356d36a6b1847366a5d018394b114e11fefd4/4.%20Hospital%20Patient%20Analysis/Hospital%20Patients%20Analysis%20Report.pdf)  |             Project Analysis Documentation                      |
| [README.md](https://github.com/ParikshitaJain/PortfolioProjects/blob/9a00de63e4b17054d0dd2e785bfc86fc0f4bdf64/4.%20Hospital%20Patient%20Analysis/README.md)                | Project Description         |

## Data Sources & Methodology
### Data Source
The dataset is sourced from [MavenAnalytics](https://mavenanalytics.io/data-playground?order=date_added%2Cdesc&page=1&pageSize=5). This data is on ~1k patients of Massachussets General Hospital from 2011-2022, including information on patient demographics, insurance coverage, and medical encounters & procedures.

### Tools & Technologies
Tools : Power BI (DAX functions)
Data Cleaning : Handling missing values, transformations
Analysis Techniques : Descriptive stats, Trend Analysis, KPIs, Year-over-Year (YoY) & Month-over-Month (MoM) comparisons, custom DAX measures, Map Visualizations


## Objectives
In this analysis, I used Power BI to visualize and explore data from three core tables—Encounters, Patients, and Procedures. This powerful tool helped in creating interactive dashboards that provided a comprehensive overview of patient health patterns, their interactions with the healthcare system, and the medical procedures they undergo.

![Hospital Patients Analysis Model View](https://github.com/user-attachments/assets/2dec255f-d844-4b51-93d1-b9e0e599f8bf)


1. Patient & Demographics Insights:
The first objective of this analysis is to understand the trends in patient visits over the past few years, identifying whether there is a rise in the number of visits, and if so, whether these are from repeat or new patients. A key focus is to examine the demographic factors, such as age and gender, that influence patient volume and whether certain groups require more frequent care. I will explore how patient encounters vary across different age groups and genders to identify potential patterns or trends. Additionally, I aim to analyze whether some patient groups undergo more medical procedures than others, which may reflect a higher need for medical interventions within certain demographics.

2. Operational Efficiency & Healthcare Utilization:
In this section, I aim to investigate whether there has been an increase in the average number of encounters per patient, which could suggest a shift in patient health conditions or healthcare needs. I will also examine the typical duration of a patient encounter and analyze whether this duration is changing over time, potentially reflecting more complex conditions or treatments. Another critical aspect is identifying peak times or seasons when patient visits increase significantly, helping hospital administrators plan for higher demand.

3. Clinical & Treatment Effectiveness:
This objective focuses on evaluating the clinical effectiveness of treatments and procedures performed during patient encounters. I will analyze the most frequently performed procedures, assessing whether their frequency is increasing over time.

4. Financial & Insurance Considerations:
Understanding the financial aspects of patient encounters is crucial for any healthcare organization. In this section, I will analyze how many patient encounters are fully covered by insurance versus those paid out-of-pocket, providing insights into the financial burden on patients.

## Key Findings & Recommendations

-	Ambulatory and emergency cases have the longest hospital stays, suggesting a need for better triage, care coordination, and discharge planning.
-	Outpatient, wellness, and urgent care cases have significantly lower hospital stay durations, reinforcing the importance of early interventions and preventive healthcare.
-	The average patient age is 69, with a significant elderly population (21K senior citizens) requiring specialized care, chronic disease management, and geriatric services.
-	There is an increasing demand for mental health procedures, such as depression screenings, substance abuse assessments, and hospice care, emphasizing the need for stronger psychological support and palliative care services.
-	Health assessments are the most frequently performed procedures (4,596 cases), reflecting a proactive approach to preventive healthcare.
-	Cardiovascular treatments, such as electrical cardioversion, generate the highest revenue ($36.46M), indicating a significant focus on cardiac care.
-	Depression screenings and assessments of mental health conditions are among the top procedures, showing a growing need for mental health resources.
-	The highest hospital expenses are driven by cardiac-related treatments, requiring investment in preventive cardiology and remote patient monitoring to lower hospital dependency.
-	There is a strong correlation between frequently performed procedures and high-revenue services, suggesting an opportunity for better resource allocation and improved patient outcomes.


## Conclusion

This analysis utilized hospital patient data, leveraging visualization tools like Power BI to uncover trends in patient demographics, hospital stay durations, procedure frequencies, and healthcare costs. By applying data analytics techniques, I identified critical areas for improvement, including emergency care efficiency, preventive healthcare, mental health services, and cost optimization.


