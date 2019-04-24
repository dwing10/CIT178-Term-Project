/*
USE myGuitarShop;
SELECT Zipcode.City, COUNT(Orders.OrderID) AS [Number of Orders]
FROM Customers JOIN Zipcode ON Zipcode.Zipcode = Customers.Zipcode
JOIN Orders On Customers.CustomerID = Orders.CustomerID
GROUP BY Zipcode.City
ORDER BY Zipcode.City; 

SELECT COUNT(OrderDetails.GuitarID) AS [Number of Sales],
SUM (Inventory.Price) AS [Total Sales]
FROM OrderDetails JOIN Inventory ON OrderDetails.GuitarID = Inventory.GuitarID
ORDER BY [Number of Sales]; 

SELECT COUNT(OrderDetails.GuitarID) AS [Number of Sales],
AVG(Inventory.Price) AS [Average Cost]
FROM OrderDetails JOIN Inventory ON OrderDetails.GuitarID = Inventory.GuitarID
ORDER BY [Number of Sales]; 

SELECT MIN(Inventory.Price) AS [Lowest Priced Guitar],
MAX (Inventory.Price) AS [Highest Priced Guitar],
AVG (Inventory.Price) AS [Average Cost of a Guitar]
FROM Inventory; */