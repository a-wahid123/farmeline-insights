--Q9 — Total Order Value by Farmer Region**
SELECT fr.Region, SUM(io.Price) AS TotalOrderValue
FROM FarmerlineDB.dbo.FarmerRegistration AS fr
JOIN FarmerlineDB.dbo.InputOrders AS io
    ON io.FarmerID = fr.FarmerID
GROUP BY fr.Region
ORDER BY TotalOrderValue DESC;