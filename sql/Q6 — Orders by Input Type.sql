--Q6 — Orders by Input Type**
SELECT InputType, COUNT(OrderID) AS Total_orders
FROM FarmerlineDB.dbo.InputOrders
GROUP BY InputType;