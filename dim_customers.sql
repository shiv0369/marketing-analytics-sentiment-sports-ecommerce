-- Query to retrieve customer details along with geographic information and age category
SELECT 
    c.CustomerID,
    c.CustomerName,
    c.Email,
    c.Gender,
    c.Age,
    CASE 
        WHEN c.Age BETWEEN 18 AND 24 THEN 'Young'
        WHEN c.Age BETWEEN 25 AND 34 THEN 'Young adult'
        WHEN c.Age BETWEEN 35 AND 59 THEN 'Adult'
        WHEN c.Age >= 60 THEN 'Senior'
        ELSE 'Unknown'
    END AS AgeCategory,
    g.Country,
    g.City
FROM 
    dbo.customers AS c
LEFT JOIN 
    dbo.geography AS g  -- Join geography data to enrich customer records
    ON c.GeographyID = g.GeographyID;  -- Match based on GeographyID
