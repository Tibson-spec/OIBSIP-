## Task 1
## **Retail Sales Data Exploration Project**

### **1. Problem Statement**
Retail businesses generate large volumes of sales data, but without meaningful analysis, this data often remains untapped. The challenge is to uncover actionable insights from the data to:

- Identify key customer demographics driving revenue.
- Understand product performance across categories.
- Discover trends and correlations for strategic decision-making.

By performing **Exploratory Data Analysis (EDA)** on retail sales data, this project aims to provide valuable recommendations that optimize marketing, inventory, and sales strategies.

---

### **2. Objective**
The primary goal of this project is to extract meaningful insights from retail sales data using SQL and Power BI. The analysis focuses on:

1. **Understanding Customer Behavior**:
   - Segmenting customers based on demographics like age, gender, and purchasing patterns.
   - Analyzing preferences for specific product categories.
   
2. **Sales Trend Analysis**:
   - Identifying seasonal and temporal sales trends.
   - Discovering correlations between variables such as age, spending, and product preferences.

3. **Actionable Insights**:
   - Recommending strategies to enhance customer engagement.
   - Improving inventory management and promotional targeting.

---

### **3. Tools and Technologies**
- **SQL Server**: Data extraction, transformation, and cleaning.
- **SQL Server**: Data Exploratory Analysis
- **DAX (Data Analysis Expressions)**: Advanced calculations and aggregations for Power BI visuals.
- **Power BI**: Interactive dashboards and visualizations for insights.


---

### **4. Workflow**

#### **Step 1: Data Loading and Cleaning**
- Imported the retail sales dataset into SQL Server.
- Cleaned the dataset by:
  - Removing nulls and duplicates.
  - Standardizing formats (e.g., dates, categorical fields).

#### **Step 2: Descriptive Statistics**
Calculated key statistics using SQL and DAX:
- **Mean, Median, Mode** for numerical variables like `Sales Amount`.
- **Standard Deviation** for variability analysis.

#### **Step 3: Time Series Analysis**
- Used SQL to group sales data by time (e.g., month, quarter, year).
- Visualized sales trends over time in Power BI using **line charts**.

#### **Step 4: Customer and Product Analysis**
- Created age groups using a custom DAX formula:
  ```DAX
  Age_Group = 
      SWITCH(
          TRUE(),
          Retail_Sales[Age] < 25, "18-24",
          Retail_Sales[Age] >= 25 && Retail_Sales[Age] < 35, "25-34",
          Retail_Sales[Age] >= 35 && Retail_Sales[Age] < 45, "35-44",
          Retail_Sales[Age] >= 45 && Retail_Sales[Age] < 55, "45-54",
          "55+"
      )
  ```
- Analyzed purchasing behavior across **Age Groups**, **Gender**, and **Product Categories**.

#### **Step 5: Correlation and Heatmaps**
- Generated correlation metrics between variables such as `Quantity` and `Price`.
- Used Power BI matrix visual with conditional formatting to create a heatmap.

#### **Step 6: Visualization and Dashboarding**
- Designed interactive dashboards in Power BI:
  - **Bar Charts**: Sales distribution by demographics and product categories.
  - **Heatmaps**: Correlations between age, spending, and product preferences.
  - **Donut Chart**: Proportion of sales by product categories.

#### **Step 7: Recommendations**
- Based on the analysis, actionable recommendations were provided for marketing, inventory, and operational improvements.

---

### **5. Key Findings**
1. **Demographic Insights**:
   - Customers aged **45-54** contributed the most to sales.
   - Males showed a preference for electronics, while females leaned toward fashion.

2. **Product Performance**:
   - The top-performing product category was "Electronics," followed by "Clothing."
   - Seasonal trends showed higher sales during Q4 (holiday season) and Q2.

3. **Spending Patterns**:
   - Significant correlation between age and spending, with younger demographics spending less per transaction.

---

### **6. Recommendations**
- **Targeted Marketing**:
  - Focus on the 45-54 age group with digital and marketing campaigns.
  - Create gender-specific bundles for popular product categories.

- **Inventory Optimization**:
  - Increase stock for high-demand products during Q4.
  - Phase out underperforming products or offer discounts offer.

- **Customer Engagement**:
  - Introduce loyalty programs to retain high-value customers.
  - Use social media for promotions targeting younger audiences.

---

### **7. Visual Insights**
- **Heatmap**: Displayed correlations between age and spending.
![Image Alt](https://github.com/Tibson-spec/OIBSIP-/blob/main/heatmap.PNG?raw=true)

- **Stacked Bar chart**: Gender distribution by product category
![Image Alt](https://github.com/Tibson-spec/OIBSIP-/blob/main/salesby%20demographics%20and%20product%20cat.PNG?raw=true)

-   Donut Chart: Highlighted the contribution of product categories to total sales.
![Image Alt](https://github.com/Tibson-spec/OIBSIP-/blob/main/T%20by%20product%20category.PNG?raw=true)

-   line chart: depicts monthly,quarterly and annualy sales across product category
![Image Alt](https://github.com/Tibson-spec/OIBSIP-/blob/main/monthly%20quater%20sales%20trend.PNG?raw=true)

-   line chart: depicts Total monthly sales
![Image Alt](https://github.com/Tibson-spec/OIBSIP-/blob/main/total%20sales%20by%20month.PNG?raw=true)


### Overview Insights and Trend Analysis Dashboard
![Image Alt](https://github.com/Tibson-spec/OIBSIP-/blob/main/New%20Trend%20analysis.PNG?raw=true)

![Image Alt](https://github.com/Tibson-spec/OIBSIP-/blob/main/insights.PNG?raw=true)

![Click here for PDF Dashboard](https://github.com/Tibson-spec/OIBSIP-/blob/main/retail_sale_dataset%20pdf%20pic.pdf)


---

### **8. Challenges and Learnings**
- Data cleaning and formatting required significant effort to handle missing values and inconsistent entries.
- DAX formulas were instrumental in creating calculated fields like `Age Group` and statistical field.
- Power BI's interactivity helped communicate insights effectively.

---

### **9. Conclusion**
This project showcases the power of data-driven decision-making in retail. By leveraging EDA techniques and visualization tools, actionable insights were provided to improve customer targeting, optimize inventory, and boost overall sales.

---

### **10. Repository Content (GitHub)**
- **SQL Scripts**: [Click here](https://github.com/Tibson-spec/OIBSIP-/blob/main/retail_sales_datasets%20EDA(Task%201)_.sql)
  - Data Loading
  - Cleaning
  - Statistical Analysis

- **Power BI Dashboard**:
  - `.pbix` file for interactive visualizations.
- **Documentation**:
  - Detailed report and insights.

---

### **GitHub Repository**
**[Retail Sales EDA Project](https://github.com/Tibson-spec/OIBSIP-)** 



# Task 2
# **Customer Segmentation Analysis and Behavior Patterns Documentation**

## **Table of Contents**

1. [Project Overview](#project-overview)
    - [Problem Statement](#problem-statement)
    - [Goals](#goals)
    - [Key Challenges](#key-challenges)
2. [Approach and Methodology](#approach-and-methodology)
    - [1. Data Preparation](#1-data-preparation)
    - [2. Data Cleaning](#2-data-cleaning)
    - [3. RFM Scoring and Customer Segmentation](#3-rfm-scoring-and-customer-segmentation)
    - [4. Visualization and Insights](#4-visualization-and-insights)
3. [Key Insights](#key-insights)
    - [Demographic Insights](#demographic-insights)
    - [Customer Segmentation Analysis](#customer-segmentation-analysis)
    - [Behavior Patterns](#behavior-patterns)
4. [Actionable Recommendations](#actionable-recommendations)
5. [How to Run This Project](#how-to-run-this-project)
6. [File Structure](#file-structure)
7. [Conclusion](#conclusion)

---

## **Project Overview**

### **Problem Statement**
Businesses often struggle to understand their customer base effectively. By using data-driven techniques like **Recency, Frequency, and Monetary (RFM)** analysis, we aim to segment customers, analyze behavior patterns, and derive actionable insights for targeted marketing and better customer engagement.

### **Goals**
1. Segment customers based on purchasing behavior using the RFM model.
2. Generate meaningful visualizations to understand customer trends and patterns.
3. Identify priority customer groups (e.g., VIPs, At-Risk customers) for tailored marketing campaigns.
4. Provide actionable recommendations to improve retention, reactivation, and overall customer experience.

### **Key Challenges**
- Aggregating data from various sources.
- Cleaning data to ensure accuracy and consistency.
- Balancing engagement strategies across diverse customer segments.
- Visualizing large datasets in a clear and meaningful way.

---

## **Approach and Methodology**

### **1. Data Preparation**
We aggregated customer purchase and demographic data from the database using SQL queries. Key metrics like **Recency**, **Frequency**, and **Monetary** values were computed for analysis.

**Example SQL Query**:

```sql
SELECT 
    ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) AS CustomerID,
    Recency,
    (NumWebPurchases + NumCatalogPurchases + NumStorePurchases + NumDealsPurchases) AS TotalFrequency,
    (MntWines + MntFruits + MntMeatProducts + MntFishProducts + MntSweetProducts + MntGoldProds) AS TotalMonetary,
    Income,
    Age
INTO Customer_RFM_Analysis
FROM Customer_Segmentation;
```

### **2. Data Cleaning**
- **Missing Values**: Checked for and handled missing values in key metrics.
- **Duplicates**: Removed duplicate entries to ensure data integrity.

**SQL for Removing Duplicates**:

```sql
WITH DuplicateRanked AS (
    SELECT *, ROW_NUMBER() OVER (PARTITION BY Recency, TotalFrequency, TotalMonetary ORDER BY CustomerID) AS RowNum
    FROM Customer_RFM_Analysis
)
DELETE FROM Customer_RFM_Analysis
WHERE CustomerID IN (SELECT CustomerID FROM DuplicateRanked WHERE RowNum > 1);
```

### **3. RFM Scoring and Customer Segmentation**
- **RFM Scoring**: Scored customers on Recency, Frequency, and Monetary values (1–5 scale).
- **Customer Segmentation**: Classified customers into segments like VIPs, At-Risk, and Loyal Customers.

**RFM Scoring SQL**:

```sql
UPDATE Customer_RFM_Analysis
SET 
    RecencyScore = CASE WHEN Recency <= 30 THEN 5 WHEN Recency <= 60 THEN 4 ELSE 1 END,
    FrequencyScore = CASE WHEN TotalFrequency >= 10 THEN 5 WHEN TotalFrequency >= 6 THEN 4 ELSE 1 END,
    MonetaryScore = CASE WHEN TotalMonetary >= 1000 THEN 5 WHEN TotalMonetary >= 500 THEN 4 ELSE 1 END;
```

### **4. Visualization and Insights**
Data was visualized using **Power BI** to create dashboards highlighting:
1. Demographic insights.
2. Customer segmentation analysis.
3. Behavioral patterns.
4. RFM score distribution and trends.

---

## **Key Insights**

### **Demographic Insights**
- **Education**: Customers with advanced education levels (e.g., PhDs) spend significantly more.
- **Marital Status**: Married customers dominate purchases; widowed/divorced segments are underperforming.
- **Age**: Middle-aged customers (30–50 years) are the most active spenders.

### **Customer Segmentation Analysis**
- **VIPs**: High-value, frequent buyers with recent activity.
- **At-Risk**: High-value buyers with declining engagement.
- **Lost Customers**: Previously active customers who are no longer engaged.

### **Behavior Patterns**
- **Recency Trends**: VIP customers purchase frequently, while Lost Customers need reactivation campaigns.
- **Spending Trends**: Younger customers have lower average spending compared to middle-aged groups.

---

## **Actionable Recommendations**
1. **Engage At-Risk and Lost Customers**:
   - Reactivation campaigns using personalized offers or discounts.
   - Time-sensitive promotions to boost urgency.

2. **Retain Loyal and VIP Customers**:
   - Offer loyalty programs and exclusive perks.
   - Prioritize these segments for early access to new products.

3. **Target Potential Loyalists**:
   - Convert them into VIPs by incentivizing repeat purchases.
   - Use targeted communication to highlight the value of loyalty.

4. **Focus on Younger and Basic-Education Groups**:
   - Create affordable, value-based products to attract these demographics.

5. **Monitor Complaints and Improve Service**:
   - Address recurring issues in customer feedback to improve retention.

---

## **How to Run This Project**

1. **Prerequisites**:
   - SQL environment to execute queries.
   - Power BI for creating visualizations.

2. **Steps**:
   - Load the dataset into your SQL database.
   - Execute the provided SQL scripts for data preparation, cleaning, and segmentation.
   - Use the output table (`Customer_RFM_Analysis`) as the data source for Power BI.
   - Build and customize dashboards using the visual templates provided.

---

## **File Structure**

```
Customer-Segmentation-Analysis/
│
├── README.md                # Overview and project documentation
├── scripts/
│   ├── data_preparation.sql
│   ├── data_cleaning.sql
│   ├── rfm_scoring.sql
│   └── segmentation_analysis.sql
├── data/
│   └── customer_segmentation.csv  # Placeholder for input data
└── insights/
    ├── power_bi_dashboard.pbix   # Power BI dashboard file
    └── visual_screenshots/       # Dashboard images and analysis
```

---

## **Conclusion**
This project demonstrates the value of RFM analysis and customer segmentation in understanding customer behavior and driving business growth. By implementing the recommendations provided, businesses can enhance customer retention, improve engagement, and maximize revenue potential.


