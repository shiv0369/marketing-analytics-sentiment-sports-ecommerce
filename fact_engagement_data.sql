--Query to clean and normalise engagement data

SELECT 
    EngagementID,
    ContentID,
    CampaignID,
    ProductID,
    FORMAT(CONVERT(DATE, EngagementDate), 'dd/MM/yyyy') AS EngagementDate,  -- Formats date to UK style
    UPPER(REPLACE(ContentType, 'Socialmedia', 'Social Media')) AS ContentType,  -- Standardises content type
    CAST(LEFT(ViewsClicksCombined, CHARINDEX('-', ViewsClicksCombined) - 1) AS INT) AS Views,  -- Extracts and converts views
    CAST(RIGHT(ViewsClicksCombined, LEN(ViewsClicksCombined) - CHARINDEX('-', ViewsClicksCombined)) AS INT) AS Clicks,  -- Extracts and converts clicks
    Likes
FROM 
    dbo.engagement_data;