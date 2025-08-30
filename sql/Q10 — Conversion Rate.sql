--Q10 — Conversion Rate: % of Training Attendees Who Also Placed Orders (By Region)**
SELECT 
    fr.Region,
    COUNT(DISTINCT ta.FarmerID) AS FarmersWhoAttendedTraining,
    COUNT(DISTINCT CASE WHEN io.FarmerID IS NOT NULL THEN ta.FarmerID END) AS FarmersWhoAttendedAndOrdered,
    ROUND(
        CAST(COUNT(DISTINCT CASE WHEN io.FarmerID IS NOT NULL THEN ta.FarmerID END) AS FLOAT) 
        / NULLIF(COUNT(DISTINCT ta.FarmerID),0) * 100,
        2
    ) AS TrueConversionRatePercent
FROM FarmerlineDB.dbo.FarmerRegistration fr
INNER JOIN FarmerlineDB.dbo.TrainingAttendance ta ON fr.FarmerID = ta.FarmerID
LEFT JOIN FarmerlineDB.dbo.InputOrders io ON fr.FarmerID = io.FarmerID
GROUP BY fr.Region;