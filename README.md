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

### **10. Repository Content (GitHub)
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
- Figuring out how to implement k-means clustering in power BI.
- Cleaning data to ensure accuracy and consistency.
- Balancing engagement strategies across diverse customer segments.
- Visualizing datasets in a clear and meaningful way.

---

## **Approach and Methodology**

### **1. Data Preparation**
I aggregated customer purchase and demographic data from the database using SQL queries. Key metrics like **Recency**, **Frequency**, and **Monetary** values were computed for analysis.

**Example SQL Query**:

```sql
-- Creating the Customer RFM Analysis Table: Contains customer behavior and purchase insights
SELECT
    ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) AS CustomerID,
    Recency,
    (NumWebPurchases + NumCatalogPurchases + NumStorePurchases + NumDealsPurchases) AS TotalFrequency,
    (MntWines + MntFruits + MntMeatProducts + MntFishProducts + MntSweetProducts + MntGoldProds) AS TotalMonetary,
    Income,
    Age,
    CASE 
        WHEN education_Basic = 1 THEN 'Basic'
        WHEN education_Graduation = 1 THEN 'Graduation'
        WHEN education_Master = 1 THEN 'Master'
        WHEN education_PhD = 1 THEN 'PhD'
        ELSE 'Other'
    END AS Education,
    CASE 
        WHEN marital_Married = 1 THEN 'Married'
        WHEN marital_Single = 1 THEN 'Single'
        WHEN marital_Divorced = 1 THEN 'Divorced'
        WHEN marital_Together = 1 THEN 'Together'
        WHEN marital_Widow = 1 THEN 'Widow'
        ELSE 'Other'
    END AS Marital_Status,
    NumWebVisitsMonth,
    Complain
INTO Customer_RFM_Analysis
FROM Customer_Segmentation
WHERE Recency IS NOT NULL
  AND Age IS NOT NULL
  AND Income IS NOT NULL;
```

### **2. Data Cleaning**
- **Missing Values**: Checked for and handled missing values in key metrics.
```
SELECT
    COUNT(*) AS TotalRows,
    COUNT(Recency) AS NonNullRecency,
    COUNT(TotalFrequency) AS NonNullFrequency,
    COUNT(TotalMonetary) AS NonNullMonetary,
    COUNT(Income) AS NonNullIncome,
    COUNT(Age) AS NonNullAge
FROM Customer_RFM_Analysis;
```

- **Duplicates**: Removed duplicate entries to ensure data integrity.
```
SELECT 
    MIN(CustomerID) AS SampleCustomerID, 
    Recency, 
    TotalFrequency, 
    TotalMonetary, 
    Income, 
    Age, 
    Education, 
    Marital_Status, 
    NumWebVisitsMonth, 
    Complain, 
    COUNT(*) AS DuplicateCount
FROM Customer_RFM_Analysis
GROUP BY 
    Recency, 
    TotalFrequency, 
    TotalMonetary, 
    Income, 
    Age, 
    Education, 
    Marital_Status, 
    NumWebVisitsMonth, 
    Complain
HAVING COUNT(*) > 1;
```

**SQL for Removing Duplicates**:

```sql
WITH DuplicateRanked AS (      
    SELECT
        CustomerID,
        Recency,
        TotalFrequency,
        TotalMonetary,
        Income,
        Age,
        Education,
        Marital_Status,
        NumWebVisitsMonth,
        Complain,
        ROW_NUMBER() OVER (PARTITION BY 
            Recency, 
            TotalFrequency, 
            TotalMonetary, 
            Income, 
            Age, 
            Education, 
            Marital_Status, 
            NumWebVisitsMonth, 
            Complain
            ORDER BY CustomerID) AS RowNum
    FROM Customer_RFM_Analysis
)
-- Delete all but maintain one duplicate record for each group
DELETE FROM Customer_RFM_Analysis
WHERE CustomerID IN (
    SELECT CustomerID
    FROM DuplicateRanked
    WHERE RowNum > 1
);
```
### 3. DESCRIPTIVE STATISTICS
--Basics Descriptive statistic
-- Average, Min, Max
```
SELECT 
    AVG(TotalMonetary) AS AvgSpending,
    MIN(TotalMonetary) AS MinSpending,
    MAX(TotalMonetary) AS MaxSpending
FROM Customer_RFM_Analysis;

SELECT 
    AVG(Recency) AS AvgRecency,
    MIN(Recency) AS MinRecency,
    MAX(Recency) AS MaxRecency
FROM Customer_RFM_Analysis;

SELECT 
    AVG(TotalFrequency) AS AvgFrequency,
    MIN(TotalFrequency) AS MinFrequency,
    MAX(TotalFrequency) AS MaxFrequency
FROM Customer_RFM_Analysis;

--Summarizing Customer behaviour
SELECT CustomerID,
	   AVG(Recency) AS AvgRecency,
       AVG(TotalFrequency) AS AvgFrequency,
       AVG(TotalMonetary) AS AvgMonetary,
       ROUND(AVG(Income),2) AS AvgIncome
FROM Customer_RFM_Analysis
GROUP BY CustomerID;

SELECT CustomerID,
       SUM(TotalMonetary) AS TotalSpending,
       SUM(TotalFrequency) AS PurchaseFrequency,
       MAX(Recency) AS LastPurchaseDate
FROM Customer_RFM_Analysis
GROUP BY CustomerID;

--Grouping by Demographics
SELECT Marital_Status, 
       COUNT(*) AS CustomerCount, 
       AVG(TotalMonetary) AS AvgSpending
FROM Customer_RFM_Analysis
GROUP BY Marital_Status;

--Grouping by Education
SELECT Education,
       COUNT(*) AS CustomerCount,
	   AVG(TotalMonetary) AS AvgSpending,
	   ROUND(AVG(Income),2) AS AvgIncome
FROM Customer_RFM_Analysis
GROUP BY Education
ORDER BY AvgIncome DESC;
```

### **4. RFM Scoring and Customer Segmentation**
- **RFM Scoring**: Scored customers on Recency, Frequency, and Monetary values (1–5 scale).
```
--creating the RFM score columns and segment
ALTER TABLE Customer_RFM_Analysis
ADD RecencyScore INT;

ALTER TABLE Customer_RFM_Analysis
ADD FrequencyScore INT;

ALTER TABLE Customer_RFM_Analysis
ADD MonetaryScore INT;

ALTER TABLE Customer_RFM_Analysis
ADD RFMScore INT;

ALTER TABLE Customer_RFM_Analysis
ADD RFM_Segment VARCHAR(50);

--Populating the FRM columns Created
UPDATE Customer_RFM_Analysis
SET 
-- Update Recency Score based on Recency
    RecencyScore = CASE
                    WHEN Recency <= 30 THEN 5
                    WHEN Recency <= 60 THEN 4
                    WHEN Recency <= 80 THEN 3
                    WHEN Recency <= 90 THEN 2
                    ELSE 1
                    END ;
    
-- Update Frequency Score based on TotalFrequency
UPDATE Customer_RFM_Analysis
SET 
	FrequencyScore = CASE
                        WHEN TotalFrequency >= 20 THEN 5
                        WHEN TotalFrequency >= 15 THEN 4
                        WHEN TotalFrequency >= 10 THEN 3
                        WHEN TotalFrequency >= 5 THEN 2
                        ELSE 1
                        END;

-- Update Monetary Score based on TotalMonetary
UPDATE Customer_RFM_Analysis
SET 
   MonetaryScore = CASE
                     WHEN TotalMonetary >= 1000 THEN 5
                     WHEN TotalMonetary >= 500 THEN 4
                     WHEN TotalMonetary >= 200 THEN 3
                     WHEN TotalMonetary >= 100 THEN 2
                     ELSE 1
                     END;

-- Calculating RFMScore as a sum of RecencyScore, FrequencyScore, and MonetaryScore
UPDATE Customer_RFM_Analysis
SET 
	RFMScore = (CASE
                    WHEN Recency <= 30 THEN 5
                    WHEN Recency <= 60 THEN 4
                    WHEN Recency <= 80 THEN 3
                    WHEN Recency <= 90 THEN 2
                    ELSE 1
                 END * 100) + 
               (CASE
                    WHEN TotalFrequency >= 20 THEN 5
                    WHEN TotalFrequency >= 15 THEN 4
                    WHEN TotalFrequency >= 10 THEN 3
                    WHEN TotalFrequency >= 5 THEN 2
                    ELSE 1
                 END * 10) + 
               (CASE
                    WHEN TotalMonetary >= 1000 THEN 5
                    WHEN TotalMonetary >= 500 THEN 4
                    WHEN TotalMonetary >= 200 THEN 3
                    WHEN TotalMonetary >= 100 THEN 2
                    ELSE 1
                 END);
```
- Customer Segmentation**: Classified customers into segments like VIP, Lost Customers, At-Risk, Potential Loyalists, Loyal Customers.
```
-- Assigning RFM_Segment based on RFMScore
UPDATE Customer_RFM_Analysis
SET 
    RFM_Segment = CASE
                    -- Bottom 20% (RFMScore between 111 and 199)
                    WHEN RFMScore >= 111 AND RFMScore <= 199 THEN 'Lost Customers'
                    
                    -- 21%-40% (RFMScore between 200 and 288)
                    WHEN RFMScore >= 200 AND RFMScore <= 288 THEN 'At-Risk'
                    
                    -- 41%-60% (RFMScore between 289 and 377)
                    WHEN RFMScore >= 289 AND RFMScore <= 377 THEN 'Potential Loyalists'
                    
                    -- 61%-80% (RFMScore between 378 and 466)
                    WHEN RFMScore >= 378 AND RFMScore <= 466 THEN 'Loyal Customers'
                    
                    -- Top 20% (RFMScore between 467 and 555)
                    ELSE 'VIP'
                  END;
```
### 4. RFM Analysis to gain insights
```
--Analyzing the distribution and size of each RFM segment.
SELECT RFM_Segment, 
       COUNT(CustomerID) AS CustomerCount, 
       SUM(TotalMonetary) AS TotalRevenue
FROM Customer_RFM_Analysis
GROUP BY RFM_Segment
ORDER BY TotalRevenue DESC;

--Identifying which customer segments are driving revenue
SELECT RFM_Segment, 
       SUM(TotalMonetary) AS Revenue
FROM Customer_RFM_Analysis
GROUP BY RFM_Segment
ORDER BY Revenue DESC;

--Customer Retention and Churn Analysis
--Compare customer behavior in "Lost Customers" and "At-Risk" segments against "VIP" and "Loyal" segments.
SELECT RFM_Segment, 
       AVG(Recency) AS AvgRecency, 
       AVG(TotalFrequency) AS AvgFrequency
FROM Customer_RFM_Analysis
GROUP BY RFM_Segment
ORDER BY AvgRecency DESC;

-- Customer Distribution by Recency, Frequency, and Monetary Values
SELECT RecencyScore, 
       FrequencyScore, 
       SUM(TotalMonetary) AS TotalRevenue
FROM Customer_RFM_Analysis
GROUP BY RecencyScore, 
         FrequencyScore
ORDER BY TotalRevenue DESC;

-- Determine the average lifetime value of customers in each RFM segment.
SELECT RFM_Segment, 
       AVG(TotalMonetary) AS AvgCLV
FROM Customer_RFM_Analysis
GROUP BY RFM_Segment
ORDER BY AvgCLV DESC;

-- Analyzing how customers are distributed across RFM scores.
SELECT RFMScore, COUNT(CustomerID) AS CustomerCount
FROM Customer_RFM_Analysis
GROUP BY RFMScore
ORDER BY RFMScore;
```

### **4. Visualization and Insights**
Data was visualized using **Power BI** to create dashboards highlighting:
1. Demographic insights.
![Image Alt](https://github.com/Tibson-spec/OIBSIP-/blob/main/demographic.PNG?raw=true)

2. Customer segmentation analysis.
![Image Alt](https://github.com/Tibson-spec/OIBSIP-/blob/main/cus%20seg%20dasboard.PNG?raw=true)

3. Behavioral patterns.
![Image Alt](https://github.com/Tibson-spec/OIBSIP-/blob/main/Customer%20behav.PNG?raw=true)

4. RFM score distribution and trends.
![Image Alt](https://github.com/Tibson-spec/OIBSIP-/blob/main/rfm%20analysis.PNG?raw=true)

---

## **Key Insights**
---

## **Customer Segmentation and Behavior Patterns Dashboard Analysis**  
The analysis combines insights from Power BI visualizations to provide actionable recommendations aimed at driving customer engagement, retention, and revenue growth.

---

### **1. RFM Analysis Dashboard**  
The **RFM (Recency, Frequency, and Monetary)** segmentation provides a granular understanding of customer behaviors and helps classify them into actionable groups.

#### **Key Visuals and Insights**

1. **Average Recency by RFM Segment (Bar Chart)**  
   - **Visual Description**: A bar chart showing average recency (time since the last purchase) for each RFM segment.  
   - **Key Insights**:  
     - **VIP Customers** have the lowest recency (15 days), reflecting frequent and recent engagement.  
     - **At-Risk** and **Lost Customers** show high recency, signaling disengagement.

2. **Customer Distribution by RFM Segment (Pie Chart)**  
   - **Visual Description**: A pie chart illustrating the proportion of customers in each segment.  
   - **Key Insights**:  
     - **VIP Customers** (645) and **Loyal Customers** (587) make up the largest segments.  
     - **At-Risk** and **Lost Customers** form smaller portions, highlighting opportunities for improvement.  

3. **Total Purchases by RFM Segment (Treemap)**  
   - **Visual Description**: A treemap showing purchase contributions from each segment.  
   - **Key Insights**:  
     - **VIP Customers** contribute the highest purchase volume (9.58K).  
     - **Potential Loyalists** exhibit promising growth potential (5.91K purchases).  

4. **Customer Complaints (Pie Chart)**  
   - **Visual Description**: A pie chart displaying customers with and without complaints.  
   - **Key Insights**:  
     - **99.05%** of customers report no complaints, indicating high satisfaction levels.  

5. **Total Spending by RFM Segment (Bar Chart)**  
   - **Visual Description**: A bar chart showing total spending across segments.  
   - **Key Insights**:  
     - **VIP Customers** lead with $0.39M in spending, followed by **Loyal Customers** at $0.35M.  
     - **At-Risk Customers** contribute minimally, presenting an opportunity for targeted campaigns.  

---

#### **Recommendations Based on Visuals**  

- **Engage At-Risk and Lost Customers**:  
   - Launch email campaigns with **personalized offers** and time-sensitive deals to rekindle interest.  
- **Retain VIP and Loyal Customers**:  
   - Introduce **exclusive loyalty programs**, early product access, and premium services to sustain engagement.  
- **Develop Potential Loyalists**:  
   - Convert **Potential Loyalists** into **Loyal Customers** by offering discounts or rewards for repeat purchases.  
- **Maintain High Satisfaction**:  
   - Continue monitoring complaints and resolving issues promptly to sustain a high satisfaction rate.  

---

### **2. Customer Behavior Patterns Dashboard**

This dashboard highlights purchasing behavior and spending patterns, helping identify key areas for strategic intervention.  

#### **Key Visuals and Insights**

1. **Total Purchases vs. Total Spending (Scatter Plot)**  
   - **Visual Description**: A scatter plot clustering customers by their total spending and purchase frequency.  
   - **Key Insights**:  
     - **VIP** and **Loyal Customers** are clustered at high spending and purchase frequency.  
     - **At-Risk** and **Dormant Customers** cluster in low spending, indicating disengagement.  

2. **Segment Metrics Table**  
   - **Visual Description**: A table displaying metrics like average spending, recency, and purchase frequency for each segment.  
   - **Key Insights**:  
     - **Loyal Customers** average $1,392 in spending and 24 purchases annually.  
     - **At-Risk High-Value Buyers** average $1,469 in spending but with declining purchase frequency.  

3. **Recency vs. Spending (Scatter Plot)**  
   - **Visual Description**: A scatter plot mapping recency against spending.  
   - **Key Insights**:  
     - **VIP Customers** maintain low recency and high spending.  
     - **At-Risk Customers** show low spending and high recency, signaling disengagement.  

---

#### **Recommendations Based on Visuals**  

- **Focus on High-Potential Segments**:  
   - Engage **At-Risk High-Value Buyers** through personalized reactivation campaigns, highlighting premium products.  
- **Enhance New Buyer Engagement**:  
   - Create onboarding campaigns for **New Casual Buyers**, such as first-purchase discounts or bundle offers.  
- **Reward Consistency in Steady Buyers**:  
   - Offer loyalty rewards, recognition programs, or exclusive content to retain **Steady Buyers**.  
- **Boost Recency Metrics**:  
   - Introduce limited-time offers or seasonal promotions to encourage **Dormant and At-Risk Customers** to return.  

---

### **3. Demographic Insights Dashboard**  

This dashboard combines demographic and behavioral data to identify patterns among customer groups.  

#### **Key Visuals and Insights**  

1. **Total Spending by Age Group (Bar Chart)**  
   - **Key Insights**: Senior-aged customers dominate spending. Middle_aged contribute less but represent untapped potential.  

2. **Purchase Frequency by Marital Status (Bar Chart)**  
   - **Key Insights**: Married individuals purchase more frequently, indicating family-oriented marketing opportunities.  

3. **Average Spending by Education Level (Bar Chart)**  
   - **Key Insights**: Graduates and PhDs spend the most, while Basic education customers underperform.  

---

#### **Recommendations Based on Visuals**  

- **Target Premium Customers**:  
   - Focus on **graduates and PhDs** with premium offerings and exclusive promotions.  
- **Attract Younger and Middle_aged Customers**:  
   - Offer **student discounts** and friendly packages to broaden the customer base.  
- **Leverage Family-Oriented Campaigns**:  
   - Create campaigns tailored to married individuals, emphasizing family benefits and shared experiences.  

---

### **Strategic Action Plan**

1. **Retention**: Focus on **VIP**, **Loyal**, and **Potential Loyalists** by offering personalized rewards and promotions.  
2. **Re-Engagement**: Develop targeted campaigns for **At-Risk** and **Lost Customers**, emphasizing incentives for reactivation.  
3. **Demographic-Based Strategies**: Target **graduates**, **Senior-aged customers**, and **married individuals** with tailored messaging.  
4. **Improved Customer Experience**: Maintain a low complaint rate by continuously improving service quality.  

---

### **Overall Visualization Strategy**  

By utilizing Power BI's visual insights, this approach identifies key segments and behaviors, enabling focused marketing and customer engagement strategies. Tailored actions based on these insights will maximize customer lifetime value, improve retention, and drive sustainable business growth.  

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

### Repository Content (GitHub)**
- **SQL Scripts**: [Click here](https://github.com/Tibson-spec/OIBSIP-/blob/main/Customer%20Segmentation%20Analysis.sql)
- **Power BI Dashboard**:
  - `.pbix` file for interactive visualizations.
- **Documentation**:
  - Detailed report and insights.

---

---

## **Conclusion**
This project demonstrates the value of RFM analysis and customer segmentation in understanding customer behavior and driving business growth. By implementing the recommendations provided, businesses can enhance customer retention, improve engagement, and maximize revenue potential.



Here's the content without markdown formatting so you can directly copy and paste it as plain text:

---



# Task 3
# Cleaning Airbnb NYC 2019 Dataset

## **Description:**

This project focuses on cleaning and transforming the Airbnb NYC 2019 dataset to ensure its quality and usability for analysis. The data cleaning process addresses key challenges such as handling missing data, removing duplicates, standardizing formats, and detecting outliers.

---

## **Key Concepts and Challenges:**

1. Data Integrity: Ensuring the dataset is accurate, consistent, and reliable.
2. Missing Data Handling: Managing missing values by filling them with appropriate defaults.
3. Duplicate Removal: Eliminating redundant rows to maintain data uniqueness.
4. Standardization: Ensuring consistent formatting for seamless analysis.
5. Outlier Detection: Identifying and removing extreme values that could skew results.

---

## **Steps and Tools:**

Tools Used:
- SQL Server: For database-level cleaning and transformations.

---

## **Cleaning Process:**

1. **Inspecting the Dataset:**
   - Examined the structure of AB_NYC_2019_raw.csv.
   - Identified missing values, duplicates, and outliers.

2. **Data Cleaning Steps:**
   - Missing Data:
     - Replaced missing `name` and `host_name` with "Unknown."
     - Set `reviews_per_month` to mean_review_per_month where missing.
     - Filled missing `last_review` with mean_last_review.
   - Standardization:
     - Converted `neighbourhood` and `room_type` to uppercase for consistency.
   - Duplicates:
     - Removed rows with duplicate `id`.
   - Outliers:
     - Removed rows where `price > 1000` and cap where `minimum_nights > 365`.

3. **Results:**
   - Final dataset saved as AB_NYC_2019_cleaned.sql.
   - Cleaned dataset contains 48,656 rows and 16 columns.

---

**Repository Structure:**

Cleaning-Airbnb-NYC-2019-Dataset/
- README.txt
- data/
  - AB_NYC_2019_raw.csv
  - AB_NYC_2019_cleaned.sql
- sql_queries/
  - data_cleaning.sql
---

**How to Use:**

1. Clone the repository:[click here](https://github.com/Tibson-spec/OIBSIP-/blob/main/Data%20Cleaning%20Task.sql.)

2. Review the cleaning process:
   - SQL: [Click here](https://github.com/Tibson-spec/OIBSIP-/blob/main/Data%20Cleaning%20Task.sql)

3. Access the cleaned dataset in the data folder.

---

**SQL Script:**

```sql
-- Identifying duplicates based on the id column
SELECT 
    id, COUNT(*) AS TotalCount 
FROM 
    AB_NYC_2019
GROUP BY 
    id
HAVING 
    COUNT(*) > 1;

--Removing Duplicates
WITH CTE AS (
    SELECT 
        *, ROW_NUMBER() OVER (PARTITION BY id ORDER BY id) AS row_num
    FROM 
        AB_NYC_2019
)
DELETE FROM CTE WHERE row_num > 1;

--Checking for missing values
SELECT 
    COUNT(*) AS Total_Rows,
    SUM(CASE WHEN name IS NULL THEN 1 ELSE 0 END) AS Missing_Names,
    SUM(CASE WHEN host_name IS NULL THEN 1 ELSE 0 END) AS Missing_Host_Names,
    SUM(CASE WHEN last_review IS NULL THEN 1 ELSE 0 END) AS Missing_Last_Review,
    SUM(CASE WHEN reviews_per_month IS NULL THEN 1 ELSE 0 END) AS Missing_Reviews
FROM 
    AB_NYC_2019;

-- Replace NULL values in 'name' and 'host_name' with 'Unknown'
UPDATE AB_NYC_2019
SET name = 'Unknown'
WHERE name IS NULL;

UPDATE AB_NYC_2019
SET host_name = 'Unknown'
WHERE host_name IS NULL;

-- Calculate the mean (average) of reviews_per_month
WITH mean_value AS (
    SELECT AVG(reviews_per_month) AS mean_reviews_per_month
    FROM AB_NYC_2019
    WHERE reviews_per_month IS NOT NULL
)
-- Update the rows where reviews_per_month is NULL
UPDATE AB_NYC_2019
SET reviews_per_month = (SELECT mean_reviews_per_month FROM mean_value)
WHERE reviews_per_month IS NULL;

-- Calculate the mean date for last_review between 2011 and 2019
WITH MeanDate AS (
    SELECT 
        AVG(DATEDIFF(DAY, '19000101', last_review)) AS avg_days
    FROM AB_NYC_2019
    WHERE last_review IS NOT NULL
      AND last_review BETWEEN '2011-01-01' AND '2019-12-31'
)
SELECT DATEADD(DAY, avg_days, '19000101') AS mean_date
FROM MeanDate;

-- Update NULL values in last_review with the calculated mean date
WITH MeanDate AS (
    SELECT 
        AVG(DATEDIFF(DAY, '19000101', last_review)) AS avg_days
    FROM AB_NYC_2019
    WHERE last_review IS NOT NULL
      AND last_review BETWEEN '2011-01-01' AND '2019-12-31'
)
UPDATE AB_NYC_2019
SET last_review = DATEADD(DAY, avg_days, '19000101')
FROM MeanDate
WHERE last_review IS NULL;

-- Convert room_type to uppercase for consistency
UPDATE AB_NYC_2019
SET room_type = UPPER(room_type);

-- Standardize the neighbourhood column
UPDATE AB_NYC_2019
SET neighbourhood = UPPER(neighbourhood);

-- Standardize the Name column 
UPDATE AB_NYC_2019
SET name = UPPER(name);

-- Standardize the Name column 
UPDATE AB_NYC_2019
SET host_name = UPPER(host_name);

-- Convert last_review to proper date format (e.g., 'MM-DD-YYYY')
UPDATE AB_NYC_2019
SET last_review = CONVERT(DATE, last_review, 101)
WHERE last_review IS NOT NULL;

-- Detect outliers where price is greater than $1,000
SELECT *
FROM AB_NYC_2019
WHERE price > 1000;

-- Remove rows with price greater than $1,000
DELETE FROM AB_NYC_2019
WHERE price > 1000;

-- Detect outliers where minimum_nights is greater than 365
SELECT *
FROM AB_NYC_2019
WHERE minimum_nights > 365;

-- Cap the 'minimum_nights' to 365 if it's greater than 365
UPDATE AB_NYC_2019
SET minimum_nights = 365
WHERE minimum_nights > 365;

-- Checking the data types for each column
SELECT COLUMN_NAME, DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'AB_NYC_2019';

-- Count the number of rows after all cleaning
SELECT COUNT(*) AS row_count 
FROM AB_NYC_2019;

-- Check for NULL values in any columns (particularly those that should not have NULLs)
SELECT last_review, COUNT(*)
FROM AB_NYC_2019
WHERE last_review IS NULL
GROUP BY last_review;

SELECT reviews_per_month, COUNT(*)
FROM AB_NYC_2019
WHERE reviews_per_month IS NULL
GROUP BY reviews_per_month;
```

---


---
# Task 4
# Project Title: House Price Prediction using Linear Regression 

---

# Overview:
This project demonstrates how to predict house prices using a linear regression model. The goal is to train a machine learning model that can accurately predict house prices based on features such as the number of rooms, total area, and location. The project covers the entire process, from loading the dataset to evaluating and optimizing the model.

---

# 1. Dataset Description 
The dataset used for this project is a CSV file named `Housing.csv`. It contains the following columns:  
- **Rooms**: The number of rooms in the house (numerical).  
- **Area**: Total area of the house in square feet (numerical).  
- **Location**: Categorical feature indicating the geographical area of the house.  
- **Price**: The price of the house in dollars (target variable, numerical).  

---

# 2. Prerequisites 
Before running the project, ensure you have Python installed (version 3.7 or above). You also need to install the required libraries:

- **pandas**: For data manipulation and analysis.   
- **matplotlib**: For visualizing the results.  
- **scikit-learn**: For implementing the machine learning model.  

Install the required packages using the following command:  
`pip install pandas numpy matplotlib scikit-learn`

---

# 3. Project Steps

### **Step 1: Load and Explore the Dataset**  
Objective: Load the dataset and explore its structure to understand the data.  

**Code:**  
```python
import pandas as pd

# Load dataset
file_path =  r"C:\Users\DELL\Downloads\Housing"
housing_data = pd.read_csv( r"C:\Users\DELL\Downloads\Housing.csv")

# Display the first few rows
print(housing_data.head())

# Check for missing values and data types
print(housing_data.info())

# View summary statistics
print(housing_data.describe())
```

**Explanation:**  
- The `pd.read_csv` function loads the dataset.
- `data.head()` displays the first five rows for an initial look at the data.  
- `data.info()` shows the data types and whether there are missing values.  
- `data.describe()` provides a summary of numerical columns.

---

### **Step 2: Data Cleaning**  
Objective: Handle missing or inconsistent data for reliable analysis.  

**Code:**  
```python
# Check for missing values
print(housing_data.isnull().sum())

# Impute missing values with median (if any)
data.fillna(data.median(), inplace=True)
```

**Explanation:**  
- `isnull().sum()` checks for missing values in each column.
- Missing values are replaced with the median of each column using `fillna`.

---

### **Step 3: Feature Engineering**  
Objective: Prepare the data for the model by encoding categorical variables and scaling numerical features.  

**Code:**  
```python
# One-hot encoding for categorical variables
housing_data_encoded = pd.get_dummies(housing_data, drop_first=True)

# Split features and target variable
X = housing_data_encoded.drop('Price', axis=1)
y = housing_data_encoded['Price']

```

**Explanation:**  
- `pd.get_dummies` converts categorical variables into numerical ones (one-hot encoding).  
- Features (`X`) and target (`y`) are separated.  

---

### **Step 4: Split Data**  
Objective: Divide the data into training and testing sets for evaluation.  

**Code:**  
```python
from sklearn.model_selection import train_test_split

X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)
```

**Explanation:**  
- `train_test_split` divides the dataset into 80% training and 20% testing sets.  
- `random_state` ensures reproducibility.

---

### **Step 5: Train the Model**  
Objective: Train a linear regression model using the training set.  

**Code:**  
```python
from sklearn.linear_model import LinearRegression

# Train the linear regression model
model = LinearRegression()
model.fit(X_train, y_train)

# View model coefficients
print("Coefficients:", model.coef_)
print("Intercept:", model.intercept_)
```

**Explanation:**  
- `LinearRegression()` initializes the model.
- `model.fit()` trains the model on the training set.
- The coefficients and intercept represent the impact of each feature on the house price.

---

### **Step 6: Evaluate the Model**  
Objective: Assess the model’s performance on unseen data.  

**Code:**  
```python
from sklearn.metrics import mean_squared_error, r2_score

# Predict prices on the test set
y_pred = model.predict(X_test)

# Evaluate performance
mse = mean_squared_error(y_test, y_pred)
r2 = r2_score(y_test, y_pred)

print("Mean Squared Error:", mse)
print("R-squared:", r2)
```

**Explanation:**  
- `mean_squared_error` computes the average squared error of predictions.  
- `r2_score` measures the proportion of variance explained by the model.

---

### **Step 7: Visualize the Results**  
Objective: Create a scatter plot to visualize actual vs predicted prices.  

**Code:**  
```python
import matplotlib.pyplot as plt

plt.scatter(y_test, y_pred, alpha=0.5)
plt.xlabel("Actual Prices")
plt.ylabel("Predicted Prices")
plt.title("Actual vs Predicted Prices")
plt.show()
```

**Explanation:**  
- The scatter plot compares actual house prices (x-axis) to predicted prices (y-axis).  
- Ideally, points should align along a diagonal line.

---

# **4. Optional: Model Optimization**  
- Perform feature selection to remove less important variables.  
- Use Ridge or Lasso regression for regularization to reduce overfitting.  

Example with Lasso Regression:  
```python
from sklearn.linear_model import Lasso

lasso_model = Lasso(alpha=0.1)
lasso_model.fit(X_train, y_train)
print("Lasso R-squared:", lasso_model.score(X_test, y_test))
```

---

# **5. Project Results:**  
- **Performance Metrics**:  
  - R-squared: ~0.85  
  - Mean Squared Error: ~1000  

- **Visualizations**:  
  The scatter plot of actual vs predicted prices demonstrates how well the model predicts the house prices.

---

# **6. How to Run the Project:**  
1. Clone this repository:  
   `git clone https://github.com/Tibson_spec/House-Price-Prediction.git`  
2. Install dependencies:  
   `pip install -r requirements.txt`  
3. [click here to Run the notebook or Python script to execute the project](https://github.com/Tibson-spec/OIBSIP-/blob/main/Housing%20data(Predictive%20model).ipynb?short_path=aea296c)

---

Absolutely! Below is a refined and comprehensive documentation that incorporates the goals, methodology, and insights from the datasets, tailored to showcase your project's core objectives and desired outcomes. This will serve as a solid foundation for your GitHub repository and help other users understand your approach.

---



# Task 5
# **Unveiling the Android App Market: Analyzing Google Play Store Data**

## **Project Overview**

The goal of this project is to perform a comprehensive analysis of the Android app market by exploring Google Play Store data. The analysis covers various aspects such as app distribution across categories, ratings, popularity trends, pricing, and sentiment analysis of user reviews. Through data cleaning, visualization, and advanced analytics, the project offers in-depth insights into the dynamics of the app market, highlighting patterns and trends that can drive strategic decisions for developers, marketers, and analysts.

This project leverages data analytics, visualization techniques, and sentiment analysis to enhance understanding and interpretation of the Google Play Store ecosystem.

---

## **Core Objectives**

- **Data Preparation**: Clean and preprocess the Google Play Store dataset to ensure accuracy, consistency, and meaningful analysis.
- **Category Exploration**: Investigate the distribution of apps across different categories and understand the concentration of app types within the store.
- **Metrics Analysis**: Analyze key metrics such as app ratings, size, popularity (number of installs), and pricing to identify trends and patterns in the app market.
- **Sentiment Analysis**: Examine user reviews to extract sentiment insights, understanding how users feel about apps based on their reviews.
- **Interactive Visualization**: Create interactive visualizations and plots to communicate the findings in an engaging and informative manner.
- **Skill Enhancement**: Apply concepts and techniques from the "Understanding Data Visualization" course to craft compelling visual narratives.

---

## **Data Description and Methodology**

This project uses two primary datasets:
1. **`apps_work.csv`**: A dataset containing metadata about mobile apps in the Google Play Store, such as app name, category, rating, price, size, installs, and more.
2. **`user_reviews.csv`**: Contains user-generated reviews for the apps, including the review text, sentiment scores, polarity, and subjectivity.

### **Data Preparation**

The initial step in the analysis involves cleaning and preparing the data:
- **Handling Missing Values**: Dropped rows with missing or null values in critical columns like `Rating`, `Size`, `Current Ver`, and `Android Ver` to ensure the integrity of the dataset.
- **Removing Duplicates**: Removed any duplicate entries to ensure that each app is represented once in the dataset.
- **Data Type Correction**:
  - The `Installs` column was cleaned by removing commas and '+' symbols, then converted to an integer type.
  - The `Price` column was cleaned by removing the dollar sign (`$`), then converted to a numeric type.
  - The `Size` column had non-numeric values (such as 'Varies with device') replaced with `None`, and sizes were normalized to MB for consistency.

### **Category Exploration**

To understand the diversity of the app market, the distribution of apps across different categories is analyzed. We group the apps by their category and count how many apps belong to each one. This analysis helps us identify the most popular app categories and gain insights into the market's structure.

```python
category_distribution = app_data.groupby('Category')['App'].count().reset_index()
category_distribution.to_csv('category_distribution.csv', index=False)
```
![Image Alt](https://github.com/Tibson-spec/OIBSIP-/blob/main/Task%205/Category%20distribution(App).png?raw=true)


### **Metrics Analysis**

#### **App Ratings and Popularity**:
The ratings are analyzed by category to determine which types of apps receive the highest ratings. Additionally, the number of installs (`Installs` column) is analyzed to assess app popularity.

#### **App Size and Pricing Trends**:
The size of the apps is also important to consider, as it may impact download decisions and user experience. The average app size by category is calculated, and trends in app pricing are examined, including the distinction between free and paid apps.

```python
price_distribution = app_data['Type'].value_counts()
price_distribution.plot(kind='bar', figsize=(8, 6), title='Distribution of App Prices')
```

#### **Interactive Visualizations**:
We utilize libraries such as **Plotly** for creating interactive charts, allowing users to explore relationships between different app attributes. For example, an interactive scatter plot is created to explore the relationship between app size and rating.

```python
import plotly.express as px
fig = px.scatter(app_data, x='Size', y='Rating', color='Category', title='App Ratings vs Size')
fig.show()
```

### **Sentiment Analysis of User Reviews**

The sentiment of user reviews is assessed using **TextBlob**, which computes the **polarity** (positive or negative sentiment) and **subjectivity** (opinion vs. fact) of each review. This analysis helps uncover the emotional tone of user feedback and assess whether the app's ratings align with the sentiment expressed in the reviews.

- **Text Preprocessing**: The reviews are preprocessed by converting text to lowercase, removing punctuation, and tokenizing the text. Common stopwords are removed to ensure the sentiment analysis focuses on meaningful terms.
  
```python
def preprocess_text(text):
    if not isinstance(text, str):
        text = str(text)
    text = text.lower()
    text = text.translate(str.maketrans('', '', string.punctuation))
    tokens = word_tokenize(text)
    stop_words = set(stopwords.words('english'))
    tokens = [word for word in tokens if word not in stop_words]
    return ' '.join(tokens)
```

- **Sentiment Calculation**: After preprocessing, the **polarity** and **subjectivity** are computed for each review using TextBlob.

```python
def compute_sentiment(text):
    Analysis = TextBlob(text)
    return Analysis.polarity, Analysis.subjectivity
```

- **Comparison of Sentiment**: The sentiment polarity values from the **computed sentiment** are compared against the original sentiment scores to assess the model’s accuracy.

```python
sns.scatterplot(data=user_reviews, x='Sentiment_Polarity', y='Computed_Polarity', hue='Sentiment')
```

### **Interactive Visualizations for Sentiment**:
Interactive visualizations are also created to explore sentiment distributions and compare user sentiment with app ratings.

```python
sentiment_counts = user_reviews['Sentiment'].value_counts()
sentiment_counts.plot(kind='bar', figsize=(8, 6), title='Sentiment Distribution')
```

---

## **Key Insights**

Through comprehensive data exploration and sentiment analysis, we uncover valuable insights into the Android app market:

1. **Category Distribution**: Certain app categories dominate the Google Play Store, with categories such as *Games*, *family*, and *tools* receiving the most apps. These insights can guide developers looking to enter specific markets.

2. **App Ratings and Size Trends**: There is a noticeable correlation between app size and ratings, with smaller apps generally receiving higher ratings due to better optimization. Larger apps tend to be more resource-intensive, which may affect user ratings.

3. **Pricing Trends**: The majority of apps on the Google Play Store are free, but paid apps tend to be higher in  the *family* and *game* categories. This insight is useful for app developers considering monetization strategies.

4. **Sentiment Analysis**: User reviews reveal valuable information regarding the emotional tone of app usage. Positive reviews generally correlate with higher ratings, but some apps receive high ratings despite mixed user sentiments(Neutral and negative). This highlights the importance of analyzing user reviews beyond the surface-level rating score.

---

## **Conclusion**

This project provides a detailed exploration of the Google Play Store ecosystem by analyzing app metadata and user reviews. The findings offer valuable insights into app distribution, pricing trends, app ratings, and user sentiments. Through data cleaning, transformation, and advanced visualization techniques, the project enhances understanding of market dynamics and offers actionable insights for app developers, marketers, and analysts.

---

## **License**

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

--







