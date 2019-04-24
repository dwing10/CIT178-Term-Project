/*
CREATE DATABASE myGuitarShop;

GO

USE myGuitarShop;
CREATE TABLE Invenory(
	GuitarID int NOT NULL,
	MAKE varchar (30) NOT NULL,
	MODEL varchar (30) NOT NULL,
	Price money,
	style varchar (30) NOT NULL,
	Scalelength decimal,
	Weight decimal 
); 

CREATE TABLE Customers (
	CustomerID int NOT NULL,
	FirstName varchar (20) NOT NULL,
	LastName varchar (20) NOT NULL,
	Email varchar (30),
	PhoneNumber varchar (15),
	Address varchar (30),
	Zipcode varchar (15) NOT NULL,
	PRIMARY KEY (CustomerID)
);

GO

CREATE TABLE Orders(
	OrderID int NOT NULL,
	CustomerID int NOT NULL,
	StoreID int NOT NULL,
	Date date,
	PRIMARY KEY (OrderID)
);

GO

CREATE TABLE OrderDetails(
	OrderID int NOT NULL,
	GuitarID int NOT NULL,
	QtyOrdered int,
	PRIMARY KEY (OrderID)
);

GO

CREATE TABLE Zipcode(
	Zipcode varchar (15) NOT NULL,
	City varchar (20),
	State char (2),
	PRIMARY KEY (Zipcode)
);

GO

CREATE TABLE StoreLocation(
	StoreID smallint NOT NULL,
	Zipcode varchar (15) NOT NULL,
	PRIMARY KEY (StoreID)
); 


USE myGuitarShop;
ALTER TABLE Customers
DROP COLUMN Zipcode; 

ALTER TABLE Customers
ADD Zipcode varchar (15) NOT NULL; 

USE myGuitarShop;
ALTER TABLE Customers WITH CHECK
ADD CONSTRAINT FK_Zipcode FOREIGN KEY(Zipcode) REFERENCES Zipcode(Zipcode)
ON UPDATE CASCADE; 

ALTER TABLE Orders
DROP COLUMN StoreID; 

ALTER TABLE Orders
ADD StoreID smallint NOT NULL; 

USE myGuitarShop;
ALTER TABLE Orders WITH CHECK
ADD CONSTRAINT FK_CustomerID FOREIGN KEY(CustomerID) REFERENCES Customers(CustomerID)
ON UPDATE CASCADE; 


USE myGuitarShop;
ALTER TABLE Orders WITH CHECK
ADD CONSTRAINT FK_StoreID FOREIGN KEY(StoreID) REFERENCES StoreLocation(StoreID)
ON UPDATE CASCADE; 

ALTER TABLE OrderDetails WITH CHECK
ADD CONSTRAINT FK_OrderID FOREIGN KEY(ORDERID) REFERENCES Orders(OrderID)
ON UPDATE CASCADE; 

ALTER TABLE OrderDetails WITH CHECK
ADD CONSTRAINT FK_GuitarID FOREIGN KEY(GuitarID) REFERENCES Inventory(GuitarID)
ON UPDATE CASCADE; 

DROP TABLE Invenory; 

USE myGuitarShop;
CREATE TABLE Inventory(
	GuitarID int NOT NULL,
	MAKE varchar (30) NOT NULL,
	MODEL varchar (30) NOT NULL,
	Price money,
	style varchar (30) NOT NULL,
	Scalelength decimal,
	Weight decimal 
); 

ALTER TABLE OrderDetails WITH CHECK
ADD CONSTRAINT FK_GuitarID FOREIGN KEY(GuitarID) REFERENCES Inventory(GuitarID)
ON UPDATE CASCADE; 

ALTER TABLE StoreLocation WITH CHECK
ADD CONSTRAINT FK_CustZipcode FOREIGN KEY(Zipcode) REFERENCES Zipcode(Zipcode)
ON DELETE NO ACTION; */
