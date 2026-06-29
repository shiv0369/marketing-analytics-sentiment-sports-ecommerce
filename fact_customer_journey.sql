
/*
-- Common Table Expression (CTE) to identify duplicate records based on key columns

WITH DuplicateRecords AS (
    SELECT 
        JourneyID,
        CustomerID,
        ProductID,
        VisitDate,
        Stage,
        Action,
        Duration,
        ROW_NUMBER() OVER (
            PARTITION BY CustomerID, ProductID, VisitDate, Stage, Action
            ORDER BY JourneyID
        ) AS row_num  -- Assigns a unique number to each row within duplicate groups
    FROM dbo.customer_journey
)

-- Select all duplicates except the first occurrence (row_num > 1)
SELECT *
FROM DuplicateRecords
WHERE row_num > 1
ORDER BY JourneyID;
*/

-- Query to clean and deduplicate records
-- Step 1: Deduplicate records
WITH Deduplicated AS (
    SELECT 
        JourneyID,
        CustomerID,
        ProductID,
        VisitDate,
        UPPER(Stage) AS Stage,  -- Normalise Stage
        Action,
        Duration,
        ROW_NUMBER() OVER (
            PARTITION BY CustomerID, ProductID, VisitDate, UPPER(Stage), Action
            ORDER BY JourneyID
        ) AS row_num  -- Keep first occurrence of duplicates
    FROM dbo.customer_journey
)

-- Step 2: Calculate monthly average on deduplicated data
SELECT 
    JourneyID,
    CustomerID,
    ProductID,
    FORMAT(VisitDate, 'dd/MM/yyyy') AS VisitDate,
    Stage,
    Action,
    COALESCE(Duration, avg_duration) AS Duration  -- Replace NULL with monthly average
FROM (
    SELECT *,
        AVG(Duration) OVER (
            PARTITION BY YEAR(VisitDate), MONTH(VisitDate)
        ) AS avg_duration  -- Monthly average AFTER deduplication
    FROM Deduplicated
    WHERE row_num = 1  -- Only unique rows(deduplicated)
) AS final_cleaned;
