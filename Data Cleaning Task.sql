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


