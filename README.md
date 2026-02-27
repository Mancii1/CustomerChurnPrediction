# Customer Churn Prediction


Overview

This project demonstrates an end-to-end data science workflow to predict customer churn for a telecom company. The goal is to identify high-risk customers early, enabling targeted retention strategies that maximize revenue.
It integrates SQL for data cleaning and feature engineering with Python for preprocessing, modeling, and evaluation, reflecting real-world analytics practices.


Business Challenge

Losing customers increases acquisition costs and reduces revenue.
Predicting which customers are likely to churn allows businesses to proactively intervene.
This project shows how analytics can directly influence business decisions, estimating potential revenue saved through retention.


Data Source

Simulated telecom customer dataset with demographics, services, charges, contract type, and churn labels.
Raw data required cleaning, standardization, and feature engineering before modeling.


Feature Engineering & Cleaning

SQL was used to:
Standardize CustomerID for accurate joins
Convert numeric columns (Total Charges, Monthly Charges) to floats
Engineer features:
total_spend – total charges per customer
monthly_spend – monthly subscription charges
is_monthly_contract – binary indicator for month-to-month contracts

Handle missing values for downstream analysis

Python was used to:
Load the cleaned SQL output into pandas
Fill remaining missing values (median imputation)
Drop non-feature columns (like customer_id)
Prepare training and test datasets


Modeling & Evaluation

Algorithms: Logistic Regression & Random Forest

Evaluation Metrics:
AUC = 0.78
Precision = 0.59
Recall = 0.31

These metrics demonstrate a strong baseline for actionable churn prediction, with room for optimization.


Customer Risk & Revenue Impact
<img width="1390" height="590" alt="image" src="https://github.com/user-attachments/assets/da9dbe16-3d82-4728-8639-8a19efad1686" />
Insights:

Identified high-risk customers for retention strategies.
Estimated revenue protected: $784,000
Net potential revenue after retention costs: $724,000

Shows the direct financial benefit of using the model and your ability to translate predictions into business impact.

Random Forest Feature Importance
<img width="790" height="590" alt="image" src="https://github.com/user-attachments/assets/2a9f3e24-3ec9-4661-aafc-0f697accea08" />

Top features:
total_spend – total customer charges
monthly_spend – monthly subscription charges
is_monthly_contract – 1 if month-to-month, 0 otherwise

Demonstrates interpretability and the ability to communicate actionable insights to business teams.


Project Workflow

SQL Data Cleaning & Feature Engineering
Standardized IDs, numeric conversion, missing value handling, feature creation

Python Preprocessing
Load cleaned data, impute missing values, drop identifiers

Model Training & Evaluation
Train/test split, fit models, evaluate with AUC/Precision/Recall

Business Impact Analysis
Identify high-risk customers, estimate revenue protected, calculate net revenue impact

