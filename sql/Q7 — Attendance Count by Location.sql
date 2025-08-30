--Q7 — Attendance Count by Location**
SELECT Location, COUNT(FarmerID) AS TotalAttendance
FROM FarmerlineDB.dbo.TrainingAttendance
GROUP BY Location
ORDER BY TotalAttendance DESC;