--Q1 — Farmers by Region**

SELECT Region, COUNT(FarmerID) AS Total_Farmers
FROM FarmerlineDB.dbo.FarmerRegistration
GROUP BY Region
ORDER BY Total_Farmers DESC;