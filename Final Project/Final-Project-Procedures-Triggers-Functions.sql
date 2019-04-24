/* Final Project Procedures 
USE myGuitarShop
GO
CREATE PROC spTotalOrders
AS
SELECT COUNT(QtyOrdered) FROM OrderDetails
GO
EXEC spTotalOrders

CREATE PROC sp_CustomerSearch
@LastName varchar(20),
@FirstName varchar(20)
AS
SELECT FirstName, LastName, PhoneNumber
FROM Customers
WHERE FirstName=@FirstName AND LastName=@LastName
GO 
EXEC sp_CustomerSearch @FirstName='Bilbo', @LastName='Swaggins'; 

CREATE PROC sp_NumberOfStores
@StoreID int,
@NumberOfStores int OUTPUT
AS
SELECT StoreID, NumberOfStores = COUNT(StoreID)
FROM StoreLocation
WHERE StoreID=@StoreID
GROUP BY StoreID
GO
DECLARE @NumberOfStores int
EXEC sp_NumberOfStores 6, @NumberOfStores OUTPUT
PRINT 'Total Number of Stores';
PRINT @NumberOfStores; 

CREATE PROC spCustomerOrders
	@CustomerID int=NULL,
	@LastName varchar(20) = '%'
AS
IF @CustomerID IS NULL
	SELECT @CustomerID = OrderID FROM Orders

DECLARE @OrderCount int;
SELECT @OrderCount = COUNT(OrderID)
FROM Orders
JOIN Customers ON Customers.CustomerID = Orders.CustomerID
WHERE (LastName LIKE @LastName) AND (CustomerID LIKE @CustomerID);
RETURN @OrderCount;
GO 
DECLARE @OrderCount int;
EXEC @OrderCount = spCustomerOrders '1%', 'B%';
SELECT @OrderCount AS 'Customer Orders';
GO
DECLARE @OrderCount int;
EXEC @OrderCount = spCustomerOrders ",'C%';
PRINT 'Customer Orders' + CONVERT(varchar, @OrderCount);
GO 

Final Project User Defined Fuctions 

USE myGuitarShop;
GO
CREATE FUNCTION fnCustomerID
	(@LastName varchar(20))
	RETURNS int
BEGIN
RETURN (SELECT CustomerID FROM Customers WHERE LastName = @LastName);
END;
GO 
SELECT "DATE", OrderID
FROM Orders
WHERE CustomerID = dbo.fnCustomerID('Cash');

CREATE FUNCTION fnTopCustomerDue
	(@Limit money = 0)
	RETURNS table
	RETURN (SELECT OrderID, Inventory.GuitarID, SUM(Price) AS TotalDue
	FROM Inventory JOIN OrderDetails ON OrderDetails.GuitarID = Inventory.GuitarID
	WHERE Price > 0
	GROUP BY Inventory.GuitarID, OrderDetails.OrderID
	HAVING SUM(Price) >= @Limit);

--SELECT * FROM dbo.fnTopCustomerDue(0); 
--SELECT * FROM dbo.fnTopCustomerDue(1000);
--SELECT * FROM dbo.fnTopCustomerDue(4000);

Final Project Triggers 

USE myGuitarShop;
SELECT GuitarID, Make, Model, Price INTO TempInventory
FROM Inventory;

Create TABLE InventoryLog(
	GuitarID int,
	Status varchar(30)); 

CREATE TRIGGER TempInventory_DELETE ON TempInventory
AFTER DELETE
AS
BEGIN
SET NOCOUNT ON;
DECLARE @GuitarID int
SELECT @GuitarID = DELETED.GuitarID
FROM DELETED 

INSERT INTO InventoryLog
VALUES(@GuitarID, 'DELETED')
END 

DELETE FROM TempInventory WHERE GuitarID = 0001; 

CREATE TRIGGER TempInventory_INSERT ON TempInventory
AFTER INSERT
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @GuitarID int
	SELECT @GuitarID=INSERTED.GuitarID
	FROM INSERTED

INSERT INTO InventoryLog
VALUES(@GuitarID, 'Inserted')
END 

INSERT INTO TempInventory(GuitarID, MAKE, MODEL, Price) VALUES (0008, 'Gibson', 'Les Paul Standard', 400);

SELECT * FROM InventoryLog; 

CREATE TRIGGER TempInventory_INSERT_UPDATE ON TempInventory
AFTER INSERT,UPDATE
AS
UPDATE TempInventory SET GuitarID= UPPER(GuitarID)
WHERE GuitarID IN (SELECT GuitarID FROM INSERTED);

UPDATE TempInventory SET GuitarID=0010 WHERE GuitarID = 0009;
INSERT INTO TempInventory(GuitarID, MAKE, MODEL, Price) VALUES(0011, 'Fender', 'Stratocaster Standard', 300) 

SELECT * FROM InventoryLog;
SELECT * FROM TempInventory;

*/
