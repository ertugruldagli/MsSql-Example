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
--Select FirstName, LastName, Country
--From Employees
--where Country not in('USA')

------------------------------------------------
--13.)
--Select City, CompanyName, ContactName
--From Customers
--where ContactName like 'A%' or ContactName like 'B%'

--------------------------------------------------
--14.)
--Select*
--from orders
--where Freight>500

------------------------------------------------
--15.)
--Select CompanyName, ContactName,Fax
--From Customers
--where Fax <> ''

------------------------------------------------
--16.)
--Select FirstName,LastName, ReportsTo
--From Employees
--where ReportsTo  not  like  null

-------------------------------------------------
--17.)
--select CompanyName, ContactName, City
--From Customers
--where City Like ('%L%')
--order by contactName desc

------------------------------------------------
--18.)
--Select FirstName, LastName, BirthDate
--From Employees
--where BirthDate < '1950-01-01' and BirthDate > '1950-12-31'

----------------------------------------------
--19.)
--Select S.SupplierID, p.ProductName, S.CompanyName
--from Suppliers S
--Inner Join Products p on p.SupplierID=S.SupplierID
--where  S.CompanyName  in('Exotic Liquids','Specialty Biscuits, Ltd.','Escargots Nouveaux')
--order by S.SupplierID asc

-----------------------------------------------------
--20.)
--Select LastName, FirstName
--from Employees
--where City='Seattle'

----------------------------------------------------
--22.)
--Select ContactName
--from Customers
--where ContactName not like '_A%'

------------------------------------------------
--23.)
--Select CustomerID, Freight
--From Orders


