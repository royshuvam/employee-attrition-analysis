# employee-attrition-analysis
Employee attrition analysis using multivariate statistical techniques in R.
**Objective**
Dataset - Employee Attrition Predictive Modelling (LDA)
 Develop a discriminant model that classifies employees as 'Likely to Stay" or 'Likely to Leave'.
 Assess which variables most distinguish between the two groups and quantify their relative
importance.
 Develop actionable HR recommendations recognizing the likelihood of attrition in an employee and
impact the level of workforce stability.

**About the Dataset**
The dataset contains 1,470 employee records with 31 attributes capturing demographics, job details,
compensation, work patterns, and satisfaction levels, aimed at analysing factors affecting employee attrition
(Attrition - Yes/No). It includes demographic information such as age, gender, education, and marital status;
job-related attributes like department, role, level, and years at the company; compensation metrics such as
monthly income, salary hike percentage, and stock options; work pattern variables including travel
frequency, overtime, and distance from home; and satisfaction ratings for environment, job, relationships,
and work-life balance, making it well-suited for predictive modelling and HR analytics.

**Problem Statement**
The problem is to identify and understand the key factors influencing employee attrition within an
organization, using demographic, job-related, compensation, and satisfaction data. By analysing these
factors, the goal is to predict which employees are at risk of leaving and provide actionable insights to help
HR teams design targeted retention strategies, reduce turnover costs, and improve workforce stability.

**Methodology**
The analysis employs Linear Discriminant Analysis (LDA) to classify employees based on their likelihood
of attrition. LDA is a supervised classification technique that projects high-dimensional data onto a lowerdimensional
space by maximizing class separability. In this study, the independent variables include
demographic, job-related, compensation, and satisfaction factors, while the target variable is the binary
Attrition field. The dataset is pre-processed by handling categorical variables, scaling numerical features,
and splitting into training and testing sets. LDA is then applied to derive discriminant functions that best
separate the “Attrition” and “No Attrition” classes, enabling both predictive modelling and interpretation of
the most influential features driving employee turnover.

**Conclusion**
Linear Discriminant Analysis on the employee dataset revealed that attrition is caused by concrete,
statistically supported factors. Younger employees (average age 33.1 versus 37.8 for those who stay), shorter
tenure (4.71 versus 7.19 years), and higher levels of overtime (54% versus 24%) turned out to be primary
turnover factors. Attrition was higher for certain job roles, such as Sales Representatives (+1.379), Human
Resources (+1.231), and Lab Technicians, whereas ways to retain the workforce included higher income,
longer years-with-current-manager, and defined career-growth paths.
While the initial model produced an accuracy of ~88.7% with a great specificity of 97%, it had a low
sensitivity of 40%. Bringing down the classification threshold will increase the sensitivity to 56.4%, with
only moderate drops in accuracy (80%) and specificity (83%)-thus severely improving its ability to detect
at-risk employees.
With all things considered, not only does the LDA model predict attrition with high reliability, but it can also
provide action-oriented insights for HR to check into. With this knowledge, targeted interventions can be
addressed to young, low-paid employees in high-turnover job roles and those who experience heavy
overtime. With regular model updates, these insights can inform proactive HR strategies, reduce turnover
costs and enhance workforce stability.
