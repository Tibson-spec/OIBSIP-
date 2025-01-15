--Custome Segmentation Analysis
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

-- Checking for missing values
-- Checking for NULL values in each column
SELECT
    COUNT(*) AS TotalRows,
    COUNT(Recency) AS NonNullRecency,
    COUNT(TotalFrequency) AS NonNullFrequency,
    COUNT(TotalMonetary) AS NonNullMonetary,
    COUNT(Income) AS NonNullIncome,
    COUNT(Age) AS NonNullAge
FROM Customer_RFM_Analysis;

WITH DuplicateRecords AS (
    SELECT 
        MIN(CustomerID) AS UniqueID,  -- Keep the first occurrence (based on the grouping columns)
        Recency,
        TotalFrequency,
        TotalMonetary,
        Income,
        Age, 
        Education,
        Marital_Status,
        NumWebVisitsMonth,
        Complain
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
)

-- Checking for duplicates
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

--Removing duplicates value from the table
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


--DESCRIPTIVE STATISTICS
--Basics Descriptive statistic
-- Average, Min, Max
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


SELECT CustomerID,
       SUM(TotalMonetary) AS TotalSpending,
       SUM(TotalFrequency) AS PurchaseFrequency,
       MAX(Recency) AS LastPurchaseDate
FROM Customer_RFM_Analysis
GROUP BY CustomerID;

--Summarizing Customer behaviour
SELECT CustomerID,
	   AVG(Recency) AS AvgRecency,
       AVG(TotalFrequency) AS AvgFrequency,
       AVG(TotalMonetary) AS AvgMonetary,
       ROUND(AVG(Income),2) AS AvgIncome
FROM Customer_RFM_Analysis
GROUP BY CustomerID

--Grouping by Demographics
SELECT Marital_Status, 
       COUNT(*) AS CustomerCount, 
       AVG(TotalMonetary) AS AvgSpending
FROM Customer_RFM_Analysis
GROUP BY Marital_Status;

SELECT Education,
       COUNT(*) AS CustomerCount,
	   AVG(TotalMonetary) AS AvgSpending,
	   ROUND(AVG(Income),2) AS AvgIncome
FROM Customer_RFM_Analysis
GROUP BY Education
ORDER BY AvgIncome DESC;


-- Add normalized columns
ALTER TABLE Customer_RFM_Analysis
ADD NormalizedSpending FLOAT, NormalizedPurchases FLOAT;

UPDATE Customer_RFM_Analysis
SET NormalizedSpending = (TotalMonetary - (SELECT MIN(TotalMonetary) FROM Customer_RFM_Analysis)) /
                         ((SELECT MAX(TotalMonetary) FROM Customer_RFM_Analysis) - (SELECT MIN(TotalMonetary) FROM Customer_RFM_Analysis));

UPDATE Customer_RFM_Analysis
SET NormalizedPurchases = (TotalFrequency - (SELECT MIN(TotalFrequency) FROM Customer_RFM_Analysis)) /
                          ((SELECT MAX(TotalFrequency) FROM Customer_RFM_Analysis) - (SELECT MIN(TotalFrequency) FROM Customer_RFM_Analysis));


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

-- Determining the minimum and maximum RFM score for better analysis
SELECT MIN(RFMScore) AS MinScore, MAX(RFMScore) AS MaxScore, COUNT(*) AS TotalRows
FROM Customer_RFM_Analysis;

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

-- Viewing the results
SELECT CustomerID, RFMScore, RFM_Segment
FROM Customer_RFM_Analysis
ORDER BY RFM_Segment;

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
