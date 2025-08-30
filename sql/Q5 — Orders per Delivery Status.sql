--Q5 — Orders per Delivery Status**
SELECT DeliveryStatus, COUNT(OrderID) AS Total_orders
FROM FarmerlineDB.dbo.InputOrders
GROUP BY DeliveryStatus;