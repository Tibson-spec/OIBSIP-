--DATA LOADING AND CLEANING
--Creating Retail sales table
CREATE TABLE Retail_Sales(
        Transaction_ID INT PRIMARY KEY,
		date DATE,
		Customer_ID INT,
		Gender NVARCHAR(10),
		Age INT,
		Product_Category NVARCHAR(50),
		Quantity INT,
		Price_Per_Unit FLOAT,
		Total_Amount FLOAT
);

ALTER TABLE Retail_Sales 
ALTER COLUMN Customer_ID NVARCHAR(50);


--Populating the retail sales table
INSERT INTO Retail_Sales(Transaction_ID, date, Customer_ID, Gender, Age, Product_Category, Quantity, Price_Per_Unit, Total_Amount)
SELECT
      Transaction_ID,
	  date,
	  Customer_ID,
	  Gender,
	  Age,
	  Product_Category,
	  Quantity,
	  Price_Per_Unit,
	  Total_Amount
FROM retail_sales_dataset;


--Data Cleaning: Veryfying the datsets to check for missing values
SELECT * FROM Retail_Sales
WHERE Transaction_ID IS NULL 
      OR Date IS NULL 
	  OR Gender IS NULL 
	  OR Age IS NULL
	  OR Price_Per_Unit IS NULL
	  OR Total_Amount IS NULL;

--Ensure consistency of calculated Total Amount
SELECT Transaction_ID,
       (Quantity * Price_Per_Unit) AS CalculatedTotalAmount
FROM Retail_Sales
WHERE (Quantity * Price_Per_Unit) <> Total_Amount;

-- Step 2: Descriptive Statistics
--analyzing Basic Statistics
SELECT 
    AVG(Age) AS MeanAge,
    MIN(Age) AS MinAge,
    MAX(Age) AS MaxAge,
    ROUND(STDEV(Age),2) AS StdDevAge,
    AVG(Total_Amount) AS MeanTotalAmount,
	AVG(Quantity) AS AvgQuantity,
	AVG(Price_Per_Unit) AS AvgPrice_Per_Unit
FROM Retail_Sales;

--Analyzing Gender Distribution
SELECT Gender,
       COUNT (*) * 100 / (SELECT COUNT (*) FROM Retail_Sales) AS Percentage
FROM Retail_Sales
GROUP BY Gender;

--Analyzing Category Popularity
SELECT Product_Category,
       COUNT (*) AS Purchase_Count
FROM Retail_Sales
GROUP BY Product_Category
ORDER BY Purchase_Count DESC;

-- Step 3: Time Series Analysis
--Analyzing Sales Trend Over Time
SELECT 
      FORMAT(Date, 'yyyy-MM') AS Month,
	  SUM(Total_Amount) AS Total_Sales
FROM Retail_Sales
GROUP BY  
      FORMAT(Date, 'yyyy-MM')
ORDER BY Total_Sales DESC;

--Analyze Categoty Trends
SELECT FORMAT(Date, 'yyyy-MM') AS Month, 
       Product_Category, 
	   SUM(Total_Amount) AS Category_Sales
FROM Retail_Sales
GROUP BY 
        FORMAT(Date, 'yyyy-MM'), 
		Product_Category
ORDER BY Category_Sales DESC;

-- Step 4: Customer and Product Analysis
-- Analyze customer demographic and purchasing behaviour
SELECT Gender,
       CASE
           WHEN AGE < 25 THEN '18-24'
		   WHEN AGE BETWEEN 25 AND 34 THEN '25-34'
		   WHEN AGE BETWEEN 35 AND 44 THEN '35-44'
		   WHEN AGE BETWEEN 45 AND 54 THEN '45-54'
		   ELSE '55+' 
		   END AS Age_Group,
       COUNT(*) Age_count,
	   ROUND(AVG(Total_Amount),2) AS Total_Sales
FROM Retail_Sales
GROUP BY Gender,
       CASE
           WHEN AGE < 25 THEN '18-24'
		   WHEN AGE BETWEEN 25 AND 34 THEN '25-34'
		   WHEN AGE BETWEEN 35 AND 44 THEN '35-44'
		   WHEN AGE BETWEEN 45 AND 54 THEN '45-54'
		   ELSE '55+' 
		   END
ORDER BY Total_Sales DESC;

--Customer purchasing frequncy
SELECT TOP 10
       Customer_ID,
       COUNT(*) AS Purchase_Count,
       SUM(Total_Amount) AS Total_Spent
FROM Retail_Sales
GROUP BY
       Customer_ID
ORDER BY Total_Spent DESC;


