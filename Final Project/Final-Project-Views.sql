/* Final Project Views 

USE myGuitarShop;
GO
CREATE VIEW CustomerOrders
AS
SELECT OrderID, FirstName, LastName, Customers.CustomerId "Date"
FROM Orders
JOIN Customers ON Customers.CustomerID = Orders.CustomerID;
GO
SELECT * FROM CustomerOrders; 

CREATE VIEW view_Inventory
AS
SELECT GuitarId, MAKE, MODEL, Price
FROM Inventory;
GO
SELECT * FROM view_Inventory; 

USE myGuitarShop;
GO
UPDATE view_Inventory
SET Price = 5000
WHERE GuitarID=1 

SELECT * FROM view_Inventory; 

CREATE VIEW OrderLocation
AS
SELECT OrderID, "Orders"."Date", StoreLocation.StoreID, Zipcode
FROM Orders
JOIN StoreLocation ON StoreLocation.StoreID = Orders.StoreID;
GO
SELECT * FROM OrderLocation; 

CREATE VIEW CustomerContact
AS
SELECT CustomerID, FirstName, LastName, Email, PhoneNumber
FROM Customers
GO
SELECT * FROM CustomerContact;
*/
