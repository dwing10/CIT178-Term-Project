/* USE myGuitarShop;
GO
INSERT INTO Zipcode VALUES ('33004','Hollywood','CA')
INSERT INTO Zipcode VALUES ('33101','Miami','FL')
INSERT INTO Zipcode VALUES ('71652','Kingsland','AR')
INSERT INTO Zipcode VALUES ('49601','Cadillac','MI')
INSERT INTO Zipcode VALUES ('98101','Seattle','WA')
INSERT INTO Zipcode VALUES ('85001','Pheonix','AR')
INSERT INTO Zipcode VALUES ('48127','Detroit','MI') 
INSERT INTO Zipcode VALUES ('75001','Dallas','TX')
INSERT INTO Zipcode VALUES ('37011','Nashville','TN') 

SELECT * FROM Zipcode; 

INSERT INTO Inventory Values (001,'Gibson','Les Paul Custom',4599,'Electric',24.75,9) 
INSERT INTO Inventory Values (002,'Gibson','SG Special',1499,'Electric',24.75,8.5)
INSERT INTO Inventory Values (003,'Gibson','ES339 Studio',1599,'Semi-Hallow',24.75,5)
INSERT INTO Inventory Values (004,'Fender','Stratocaster',525,'Electric',25.5,6.5)
INSERT INTO Inventory Values (005,'Fender','Telecaster',500,'Electric',25.5,7.5)
INSERT INTO Inventory Values (006,'Fender','Jazzmaster',650,'Electric',25.5,7.5)
INSERT INTO Inventory Values (007,'Ibanez','RG1070PBZ',1300,'Electric',25.5,7)
INSERT INTO Inventory Values (008,'Ibanez','AEG2011',400,'Acoustic',25.5,6)
INSERT INTO Inventory Values (009,'Yamaha','A1M',500,'Acoustic',25.5,6) 

SELECT * FROM Inventory; 

INSERT INTO StoreLocation Values (1,85001)
INSERT INTO StoreLocation Values (2,49601)
INSERT INTO StoreLocation Values (3,33101)
INSERT INTO StoreLocation Values (4,98101)
INSERT INTO StoreLocation Values (5,33004)
INSERT INTO StoreLocation Values (6,48127) 
INSERT INTO StoreLocation Values (7,85001) 

SELECT * FROM StoreLocation; 

INSERT INTO Customers VALUES (1001, 'Eddy', 'Van Halen', 'eddyvanhalen@gmail.com', '(707)-123-4567', '1520 Rockstar rd.', '33004') 
INSERT INTO Customers VALUES (1002, 'Bilbo', 'Swaggins', 'swaggins_bilbo@hotmail.com', '(884)-060-1123', '986 Someroad', '33101')
INSERT INTO Customers VALUES (1003, 'Johny', 'Cash', 'johnyc@gmail.com', '(456)-258-9876', '0120 Country rd.', '71652')
INSERT INTO Customers VALUES (1004, 'Joe', 'Mamma', 'jm@yahoo.com', '(231)-987-9856', '9th st.', '49601')
INSERT INTO Customers VALUES (1005, 'Samantha', 'Samson', 's-samson@hotmail.com', '(321)-654-9876', '1254 Thisisafake rd.', '98101') 

SELECT * FROM Customers; 

INSERT INTO Orders VALUES (001, 1001, '2/4/2019', 5) 
INSERT INTO Orders VALUES (002, 1002, '1/30/2019', 3)
INSERT INTO Orders VALUES (003, 1003, '1/15/2019', 1)
INSERT INTO Orders VALUES (004, 1004, '12/27/2018', 2)
INSERT INTO Orders VALUES (005, 1005, '12/5/2018', 4) 

SELECT * FROM Orders; 

INSERT INTO OrderDetails VALUES (001, 002, 1) 
INSERT INTO OrderDetails VALUES (002, 009, 1)
INSERT INTO OrderDetails VALUES (003, 008, 2)
INSERT INTO OrderDetails VALUES (004, 005, 1)
INSERT INTO OrderDetails VALUES (005, 001, 1) 

SELECT * FROM OrderDetails; */