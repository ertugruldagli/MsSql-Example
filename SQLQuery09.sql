--######################---------------JOIN-----------------#########################--

--SELECT DISTINCT Orders.CustomerID, Customers.CompanyName, Customers.Phone
--FROM ORDERS
--INNER JOIN Customers ON Orders.CustomerID=Customers.CustomerID  

------------------------------------------------------------------------------------

--orders tablosundan varolan sipariþleri müþterileri adlarý nedir hangi taþýmacý(adý) taþýyordur.
--SELECT orders.OrderID, Orders.CustomerID, Customers.CompanyName, Customers.Phone, 
--		Shippers.CompanyName, Shippers.Phone, (Employees.FirstName +' '+ EmployeeS.LastName  ) + ' personeli satmýþtýr' AS ' Mesaj!'
--FROM ORDERS
--INNER JOIN Customers ON Orders.CustomerID=Customers.CustomerID  
--INNER JOIN Shippers ON Orders.ShipVia=Shippers.ShipperID
--INNER JOIN Employees ON Orders.EmployeeID= Employees.EmployeeID

-----------------------------------------------------------------------------------

--daily workout: çýkýþ tablom: products, istenen: ilgili ürünü acaba hangi tedarikçi (adýyla) (tablo: suppliers) saðlamaktadýr.
--ve ürünün kategorisi(kategori) nedir.
--select ProductName, Suppliers.CompanyName, Categories.CategoryName
--from Products
--inner join Suppliers on Products.SupplierID = Suppliers.SupplierID
--inner join Categories on Products.CategoryID= Categories.CategoryID

-------------------------------------------------------------------------------------

--Sipariþler tablosundan hareketle o sipariþin hangi tür kategori de olduðunu listeleyiniz. 
--select [Order Details].OrderID, Products.ProductName, Categories.CategoryName
--from [Order Details]  
--inner join Orders on Orders.OrderID = [Order Details].OrderID
--inner join Products on [Order Details].ProductID= Products.ProductID
--inner join Categories on Products.CategoryID=Categories.CategoryID

-----------------------------------------------------------------------------------------


--LEFT JOIN---

