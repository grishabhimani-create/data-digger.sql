-- SQLBook: Code
CREATE DATABASE shopsphere; 
USE shopsphere;
-- SQLBook: Code
CREATE TABLE Customers ( CustomerID INT PRIMARY KEY, Name VARCHAR(100), Email VARCHAR(100), Address VARCHAR(200) );
-- SQLBook: Code
INSERT INTO Customers VALUES 
(201, 'Riya Shah', 'riya@gmail.com', 'Surat'),
(202, 'Aarav Patel', 'aarav@gmail.com', 'Ahmedabad'), 
(203, 'Meera Joshi', 'meera@gmail.com', 'Vadodara'),
(204, 'Kabir Mehta', 'kabir@gmail.com', 'Rajkot'), 
(205, 'Alice Desai', 'alice@gmail.com', 'Surat');
-- SQLBook: Code
SELECT * FROM Customers;
-- SQLBook: Code
UPDATE Customers 
SET Address = 'Mumbai'
WHERE CustomerID = 202;
-- SQLBook: Code
DELETE FROM Customers
WHERE CustomerID = 204;
-- SQLBook: Code
SELECT * FROM Customers 
WHERE Name = 'Alice Desai';
-- SQLBook: Code
CREATE TABLE Orders ( OrderID INT PRIMARY KEY, CustomerID INT, OrderDate DATE, TotalAmount DECIMAL(10,2), FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID) );
-- SQLBook: Code
INSERT INTO Orders VALUES (301, 201, '2026-09-01', 1250.00), (302, 202, '2026-09-02', 2300.00), (303, 203, '2026-09-04', 850.00), (304, 205, '2026-09-05', 1750.00), (305, 201, '2026-09-07', 3200.00);
-- SQLBook: Code
SELECT * FROM Orders 
WHERE CustomerID = 201
-- SQLBook: Code
UPDATE Orders SET TotalAmount = 1400.00 
WHERE OrderID = 301;
-- SQLBook: Code
DELETE FROM Orders 
WHERE OrderID = 303;
-- SQLBook: Code
SELECT MAX(TotalAmount) AS Highest_Order FROM Orders;
-- SQLBook: Code
SELECT MIN(TotalAmount) AS Lowest_Order FROM Orders;
-- SQLBook: Code
SELECT AVG(TotalAmount) AS Average_Order FROM Orders;
-- SQLBook: Code
CREATE TABLE Products ( ProductID INT PRIMARY KEY, ProductName VARCHAR(100), Price DECIMAL(10,2), Stock INT );
-- SQLBook: Code
INSERT INTO Products VALUES (401, 'Wireless Mouse', 750.00, 25), (402, 'Keyboard', 1200.00, 15), (403, 'Bluetooth Speaker', 1800.00, 10), (404, 'USB Cable', 450.00, 30), (405, 'Smart Watch', 2500.00, 0);
-- SQLBook: Code
SELECT * FROM Products ORDER BY Price DESC;
-- SQLBook: Code
UPDATE Products SET Price = 1350.00 WHERE ProductID = 402;
-- SQLBook: Code
DELETE FROM Products 
WHERE Stock = 0;
-- SQLBook: Code
SELECT * FROM Products 
WHERE Price BETWEEN 500 AND 2000;
-- SQLBook: Code
SELECT MAX(Price) AS Maximum_Price FROM Products;
-- SQLBook: Code
SELECT MIN(Price) AS Minimum_Price FROM Products;
-- SQLBook: Code
CREATE TABLE OrderDetails ( OrderDetailID INT PRIMARY KEY, OrderID INT, ProductID INT, Quantity INT, SubTotal DECIMAL(10,2), FOREIGN KEY (OrderID) REFERENCES Orders(OrderID), FOREIGN KEY (ProductID) REFERENCES Products(ProductID) );
-- SQLBook: Code
INSERT INTO OrderDetails VALUES (501, 301, 401, 2, 1500.00), (502, 302, 402, 1, 1350.00), (503, 304, 403, 1, 1800.00), (504, 305, 401, 3, 2250.00), (505, 305, 404, 2, 900.00);
-- SQLBook: Code
SELECT * FROM OrderDetails WHERE OrderID = 305;
-- SQLBook: Code
SELECT SUM(SubTotal) AS Total_Revenue FROM OrderDetails
-- SQLBook: Code
SELECT ProductID, SUM(Quantity) AS Total_Quantity FROM OrderDetails GROUP BY ProductID ORDER BY Total_Quantity DESC LIMIT 3;
-- SQLBook: Code
SELECT ProductID, COUNT(*) AS Times_Sold 
FROM OrderDetails 
WHERE ProductID = 401 
GROUP BY ProductID;
-- SQLBook: Code
SHOW TABLES;
-- SQLBook: Code
DESC Customers;
-- SQLBook: Code
DESC Orders;
-- SQLBook: Code
DESC Products;
-- SQLBook: Code
DESC OrderDetails;