--1.)
--select CategoryName, Description 
--from Categories
--order by CategoryName asc

----------------------------------------------
--2.)
--Select CompanyName,ContactName,ContactTitle , Phone
--from Customers
--order by Phone asc

-----------------------------------------------
--3.)
--Select  HireDate, FirstName,  upper (LastName)
--From Employees
--Order by HireDate desc

-------------------------------------------------
--4.)
--Select top 10 OrderId,OrderDate, ShippedDate, CustomerID,Freight
--from Orders
--order by Freight desc

------------------------------------------------
--5.)
--Select lower( CustomerID) as 'Kimlik Tnm'
--From Customers

------------------------------------------------
--6.)
--Select CompanyName, Fax, Phone, Country
--From Suppliers
--where(order by CompanyName asc)
--order by Country desc 

------------------------------------------------
--7.)
--Select CompanyName, ContactName
--From Customers
--where city='Buenos Aires'

--------------------------------------------------
--8.)
--Select ProductName, UnitPrice, QuantityPerUnit
--From Products
--where UnitsInStock=0

------------------------------------------------
--9.)
--Select CompanyName, Address, City, Country
--From Customers
--where Country not IN('Germany','Mexico','Spain')

------------------------------------------------
--10.)
--Select OrderDate, ShippedDate, CustomerID, Freight
--From Orders
--where OrderDate=(21/05/1996)

------------------------------------------------
--11.)
Select FirstName, LastName, Country
From Employees
where Country not in('USA')


------------------------------------------------