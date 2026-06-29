-- Query to Clean and normalise ReviewText column

SELECT 
    ReviewID,        
    CustomerID,      
    ProductID,       
    ReviewDate,      
    Rating,          
    -- Cleaned ReviewText:
    REPLACE(
        REPLACE(
            REPLACE(
                LTRIM(RTRIM(REPLACE(ReviewText, '-', ' '))),
                '  ', ' '),
            '  ', ' '),
        '  ', ' '
    ) AS ReviewText -- Removes dashes, trims spaces, and normalises multiple spaces to one

FROM dbo.customer_reviews;

