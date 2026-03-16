
USE TechCorp;


drop table Departments 
drop table Employees
drop table Contractors
drop table Projects

CREATE TABLE Departments (DeptID INT PRIMARY KEY, DeptName VARCHAR(50));
CREATE TABLE Employees (EmpID INT PRIMARY KEY, Name VARCHAR(50), Salary INT, DeptID INT);
CREATE TABLE Contractors (ContID INT PRIMARY KEY, Name VARCHAR(50), Salary INT);
CREATE TABLE Projects (ProjectID INT PRIMARY KEY, ProjectName VARCHAR(50), EmpID INT);



INSERT INTO Departments VALUES (1, 'IT'), (2, 'HR'), (3, 'Marketing'), (4, 'Sales'); -- المبيعات مفيهاش موظفين
INSERT INTO Employees VALUES (101, 'Omar', 15000, 1), (102, 'Ali', 9000, 2), (103, 'Mona', 12000, 1), (104, 'Sara', 11000, 3);
INSERT INTO Contractors VALUES (201, 'Hassan', 8000), (202, 'Nour', 7500);
INSERT INTO Projects VALUES (10, 'Website Update', 101), (20, 'Recruitment Campaign', 102), (30, 'New App', 101);

/*

SELECT * FROM customers;
SELECT * FROM orders;

-- INNER JOIN
/* Get all customers along with their orders, 
   but only for customers who have placed an order */
SELECT
    c.id,
    c.first_name,
    o.order_id,
    o.sales
FROM customers AS c
INNER JOIN orders AS o
ON c.id = o.customer_id
*/
SELECT * FROM Departments;
SELECT * FROM Employees;
SELECT
d.DeptName,
e.Name

FROM Departments AS d
INNER JOIN Employees AS e
ON d.DeptID = e.DeptID

/*

-- LEFT JOIN
/* Get all customers along with their orders, 
   including those without orders */
SELECT
    c.id,
    c.first_name,
    o.order_id,
    o.sales
FROM customers AS c
LEFT JOIN orders AS o
ON c.id = o.customer_id
-----------------------
SELECT 
    o.OrderID,
    o.Sales,
    c.FirstName AS CustomerFirstName,
    c.LastName AS CustomerLastName,
    p.Product AS ProductName,
    p.Price,
    e.FirstName AS EmployeeFirstName,
    e.LastName AS EmployeeLastName
FROM Sales.Orders AS o
LEFT JOIN Sales.Customers AS c
ON o.CustomerID = c.CustomerID
LEFT JOIN Sales.Products AS p
ON o.ProductID = p.ProductID
LEFT JOIN Sales.Employees AS e
ON o.SalesPersonID = e.EmployeeID
----------------
SELECT
    FirstName,
    LastName
FROM Sales.Customers
UNION
SELECT
    FirstName,
    LastName
FROM Sales.Employees;

----
SELECT
    FirstName,
    LastName
FROM Sales.Employees
EXCEPT
SELECT
    FirstName,
    LastName
FROM Sales.Customers;



*/

SELECT * FROM Departments;
SELECT * FROM Employees;
SELECT
d.DeptName,
e.Name

FROM Departments AS d
LEFT JOIN Employees AS e
ON d.DeptID = e.DeptID
 ------------------------
 SELECT * FROM Departments;
 SELECT * FROM Employees;
 SELECT * FROM Projects;

 SELECT 
 d.DeptName,
 e.Name,
 p.ProjectName

 FROM Departments AS d
 LEFT JOIN Employees AS e
 ON d.DeptID = e.DeptID
 LEFT JOIN Projects AS p
 ON e.EmpID = p.EmpID
--------------------

SELECT
    Name,
    Salary    
   
FROM Contractors

UNION All

SELECT
   Name,
   Salary 

FROM Employees;
/*
select DeptID
from Departments
WHERE DeptID = 2;
*/
--------------

SELECT
   
    DeptID,
     DeptName
   
FROM Departments

EXCEPT

SELECT
   DeptID,
     Name

FROM Employees;

---------
