-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

SELECT p.ProductName, c.CategoryName
FROM Product AS p
JOIN Category AS c
ON p.CategoryId = c.Id;

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

SELECT o.id, s.CompanyName
FROM [Order] AS o
JOIN Shipper AS s
ON o.ShipVia = s.Id
WHERE o.OrderDate < '2012-08-09';

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

SELECT o.Quantity, p.ProductName
FROM OrderDetail AS o
JOIN Product AS p
ON o.ProductId = p.Id
WHERE o.OrderId = 10251
ORDER BY p.ProductName;

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

SELECT c.CompanyName, e.LastName, o.ID
FROM [Order] AS o
JOIN Customer AS c 
ON o.CustomerId = c.Id
JOIN Employee AS e 
ON o.EmployeeId = e.Id;


-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
