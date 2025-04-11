/* Inner Join */

--1 Shart: Har bir buyurtma raqami (OrderID) va unga tegishli mijozning kompaniya nomini (CompanyName) chiqaring.

--Select O.OrderId, C.CompanyName
--From Orders O
--Inner Join Customers C
--ON O.CustomerID = C.CustomerID
--Order by O.OrderID

--2 Shart: Har bir mahsulot nomi (ProductName) va unga tegishli toifa nomini (CategoryName) chiqaring.

--Select p.ProductName, c.CategoryName
--From Products p
--Inner Join Categories c
--On p.CategoryID=c.CategoryID

--3 Shart: Har bir buyurtmadagi mahsulot nomi (ProductName), buyurtma raqami (OrderID) va qancha miqdorda olingani (Quantity) ko‘rsating.

--Select p.ProductName, od.OrderId, od.Quantity
--From [Order Details]od
--Inner join Products p
--ON od.ProductID =p.ProductID

--4 Shart: Har bir buyurtma va u bilan ishlagan xodim ismi (FirstName, LastName)ni chiqaring.

--Select o.OrderID, e.FirstName, e.LastName
--From Orders o
--Inner Join Employees e
--ON o.EmployeeID = e.EmployeeID

--5  Shart: Har bir supplier (yetkazib beruvchi) va u yetkazgan mahsulot nomini ko‘rsating.

--Select s.CompanyName , p.ProductName
--From Suppliers s
--Inner join Products p
--on s.SupplierID = p.SupplierID


/* Left join*/

--1
--Select c.CustomerId, o.OrderId
--From Customers c
--Left Join Orders o
--on c.CustomerID = o.CustomerID

--2
--Select p.ProductName, Od.OrderID
--From Products p
--Left join [Order Details] od
--on p.ProductID=od.ProductID

--3
--Select e.FirstName, e.LastName, o.OrderId
--From Employees e
--Left join Orders o
--on e.EmployeeID =o.EmployeeID
--4
--Select c.CategoryName, p.ProductName
--from categories c
--left join products p
--on c.CategoryID=p.CategoryID

--5
--Select s.CompanyName, p.productName
--From Suppliers s
--Left join Products p
--on s.SupplierID = p.SupplierID

/* Right join*/
--1
--Select o.OrderId, c.CompanyName
--From Orders o
--Right join Customers c
--on o.CustomerID = c.CustomerID
--2
--Select o.OrderId, e.FirstName, e.LastName
--From Employees e
--Right join orders o
--on o.EmployeeID=e.EmployeeID
--3
--Select ProductName, OrderID
--From Products p
--Right join [Order Details] od
--on p.ProductID=od.ProductID
--4
--Select p.ProductName, c.CategoryName
--From Categories c
--Right join products p
--on c.CategoryID=p.CategoryID
--5
--Select od.OrderID, s.CompanyName as suppilairName
--From Suppliers s
--Right join products p on s.SupplierID=p.SupplierID
--Right join [Order Details] od on p.ProductID=od.ProductID

/* Full join */
--1
--Select *
--From Customers c
--Full outer join Orders o
--on c.CustomerID = o.CustomerID

--2
--Select p.ProductName, c.CategoryName
--From Products p
--Full outer join Categories c
--on p.CategoryID = c.CategoryID

--3
--Select e.FirstName, e.LastName, o.OrderId
--From Employees e
--Full outer join Orders o
--on e.EmployeeID=o.EmployeeID

--4
--SELECT p.ProductName, od.OrderID
--FROM Products p
--FULL OUTER JOIN [Order Details] od ON p.ProductID = od.ProductID;


--5
--SELECT s.CompanyName AS SupplierName, p.ProductName
--FROM Suppliers s
--FULL OUTER JOIN Products p ON s.SupplierID = p.SupplierID;


