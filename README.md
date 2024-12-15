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
- **SQL Scripts**:
  - Data Loading
  - Cleaning
  - Statistical Analysis
- **Power BI Dashboard**:
  - `.pbix` file for interactive visualizations.
- **Documentation**:
  - Detailed report and insights.

---

### **GitHub Repository**
**[Retail Sales EDA Project](#)** *(Insert your GitHub repository link here)*
