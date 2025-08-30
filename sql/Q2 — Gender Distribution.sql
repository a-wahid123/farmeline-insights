--Q2 — Gender Distribution**

SELECT Gender, COUNT(FarmerID) AS No_of_Farmers
FROM FarmerlineDB.dbo.FarmerRegistration
GROUP BY Gender;