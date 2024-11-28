# Power BI End-to-End Project: Churn Prediction Analysis

## Overview
This project integrates **SQL Server**, **Power BI**, and **Machine Learning (Random Forest)** to predict customer churn and identify actionable insights. The process includes data preprocessing, modeling, visualization, and strategic recommendations for targeted interventions.

---

## Key Components

### 1. Data Extraction and Transformation
- **SQL Server (SSMS):**
  - Conducted **data exploration** to check for nulls, distinct values, and churn reasons.
  - Cleaned data using `ISNULL()` functions to handle missing fields (e.g., `Churn_Category`, `Internet_Type`).
  - Created views (`vw_ChurnData`, `vw_JoinData`) for Power BI integration.
  - Segmented contracts, tenure, and geography-based churn rates for insights.

### 2. Power Query Transformations
- Added new calculated columns:
  - **Churn Status**: Binary (1 = Churned, 0 = Stayed).
  - **Monthly Charge Ranges**: Categorized into `<20`, `20-50`, `50-100`, `>100`.
  - **Age and Tenure Groups**: Simplified into actionable demographic buckets.
- Unpivoted service columns for better analysis of churn patterns.

### 3. Data Visualization
- **Power BI Dashboards:**
  - **Churn Summary Page**: Total Customers, New Joiners, Total Churn, and Churn Rate, broken down by demographics, contract types, and services.
  - **Churn Prediction Page**: Profiles of predicted churners and their key characteristics.
- Visuals designed using **Adobe Color Palette** for consistency and accessibility.
- Background desgned in powerpoint

### 4. Machine Learning Model
- **Random Forest Classifier:**
  - Preprocessed data with label encoding for categorical variables.
  - Trained the model using features such as tenure, payment methods, and service usage.
  - Evaluated model performance with confusion matrices and feature importance plots.
- Integrated predictions into Power BI for actionable visualization.

---

## Key Insights

1. **Churn Drivers:**
   - **Internet Service dissatisfaction** is the primary churn driver (~98.7% churned).
   - **Device Protection Plans** and **Paperless Billing** exhibit high churn (~70%).

2. **Age and Demographics:**
   - Customers aged **>65 years** have the highest churn rate (~39.81%), suggesting unmet needs.
   - **20-35 age group** churns at a lower rate (~24%) but remains susceptible to competitors.

3. **Contract Trends:**
   - **1-month contracts** show the highest churn (~76.74%), indicating poor engagement.
   - Longer contracts significantly reduce churn (~1.5% for 2-year plans).

4. **Geographical Patterns:**
   - Regions like **Jammu & Kashmir** and **Assam** have the highest churn rates (~77% and ~61%).

---

## Recommendations

### Marketing Team
1. **Tailored Campaigns:**
   - Design offers for **>65 age group**, focusing on value-driven benefits.
   - Target **1-month contract users** with onboarding campaigns to reduce churn.

2. **Service Promotion:**
   - Highlight the value of **Device Protection Plans** and **Paperless Billing** through educational campaigns.

3. **Engage At-Risk Customers:**
   - Use ML predictions to proactively offer loyalty incentives to high-risk customers.

### Product Team
1. **Improve Core Services:**
   - Address **Internet Service dissatisfaction** by improving speed, reliability, and support.
   - Redesign underperforming services based on feedback.

2. **Flexible Contract Options:**
   - Introduce **6-month contracts** as an alternative to short-term plans.

3. **Modernize Payment Options:**
   - Encourage digital payment methods with discounts or reward points.

---

## Process Refinements

1. **Data Integration:**
   - Leverage SQL views (`vw_ChurnData`, `vw_JoinData`) for seamless integration across the pipeline.
   - Automate prediction data flow into dashboards for real-time insights.

2. **Feature Optimization:**
   - Focus on the most influential churn predictors based on feature importance analysis.

3. **Scalability:**
   - Regularly update ML models with new data to maintain prediction accuracy.

---

## Repository Structure
- **SQL/**
  ETL_Scripts.sql &
  Views.sql
- **PowerBI/**
  Dashboards.pbix,
  Dashboards.png &
  Dashboards2.png
- **Python/**
  RandomForestModel.ipynb
- **README.md**
- **Colour Palettes**
- **Datasets.xlsx**
- **Background Creation -ppt & png files**
