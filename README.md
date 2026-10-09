# employee-attrition-analysis
Employee attrition analysis using multivariate statistical techniques in R.
**Objective**
**Dataset** - Credit Card Customer Segmentation (Clustering)
1) Identify independent customer segments based on transaction and account characteristics.
2) Study the behavioural differences between the segments to develop engagement and marketing plans
to reach the specific segments.
3) Determine the appropriate number of clusters (4 vs. 5) and provide a rationale for the segmentation.
4) Devise marketing strategies for each customer segment identified.

**About the Dataset**
The sample Dataset summarizes the usage behaviour of about 9000 active credit card holders during the
last 6 months. The file is at a customer level with 18 behavioural variables.
Data Source: Kaggle

**Problem Statement**
To identify customer segments of the credit card users and then devise marketing strategies for each type of
customer segment so as to have focused marketing.
**Link to working files:**
https://drive.google.com/file/d/1P6YtzxFwhRAlhNJexEqS0fC3RINOWX3L/view?usp=drive_link

**Methodology**
K-means clustering is ideal for the given dataset which has all numeric values against the categorical column
of ‘Customer ID’.
The dataset was first cleaned to remove blank datapoints and further normalised before proceeding to
perform k-means cluster analysis.

**Business Recommendations**
Overall Recommendations
1. Adopt the 4-Cluster Segmentation Model for Marketing and Risk Strategy: Implement targeted
campaigns based on behavioural drivers, not just spending scale, for higher interpretability and ROI.
2. Leverage Data-Driven Personalization to Increase Card Usage: Use behavioural data to craft
relevant offers—premium travel perks for High-Flyers, instalment benefits for Balanced Buyers, etc.
3. Implement Risk Mitigation Measures for High-Risk Segments: Focus on Debt-Driven Users with
repayment support tools, low-APR transfer options, and financial literacy programs.
4. Maximize Engagement of Low-Usage Customers: For Frugal Financiers, incentivize low-ticket
and recurring transactions through cashback, points multipliers, and bill payment tie-ins.
5. Integrate Segmentation Insights into Portfolio Management: Tailor credit limits, fee structures,
and promotional budgets to segment profitability and risk.
6. Establish a Continuous Feedback Loop: Refresh segmentation periodically, and run A/B tests to
validate marketing impact.
