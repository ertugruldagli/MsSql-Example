--######################---------------JOIN-----------------#########################--

--SELECT DISTINCT Orders.CustomerID, Customers.CompanyName, Customers.Phone
--FROM ORDERS
--INNER JOIN Customers ON Orders.CustomerID=Customers.CustomerID  

------------------------------------------------------------------------------------

--orders tablosundan varolan sipari�leri m��terileri adlar� nedir hangi ta��mac�(ad�) ta��yordur.
--SELECT orders.OrderID, Orders.CustomerID, Customers.CompanyName, Customers.Phone, 
--		Shippers.CompanyName, Shippers.Phone, (Employees.FirstName +' '+ EmployeeS.LastName  ) + ' personeli satm��t�r' AS ' Mesaj!'
--FROM ORDERS
--INNER JOIN Customers ON Orders.CustomerID=Customers.CustomerID  
--INNER JOIN Shippers ON Orders.ShipVia=Shippers.ShipperID
--INNER JOIN Employees ON Orders.EmployeeID= Employees.EmployeeID

-----------------------------------------------------------------------------------

--daily workout: ��k�� tablom: products, istenen: ilgili �r�n� acaba hangi tedarik�i (ad�yla) (tablo: suppliers) sa�lamaktad�r.
--ve �r�n�n kategorisi(kategori) nedir.
--select ProductName, Suppliers.CompanyName, Categories.CategoryName
--from Products
--inner join Suppliers on Products.SupplierID = Suppliers.SupplierID
--inner join Categories on Products.CategoryID= Categories.CategoryID

-------------------------------------------------------------------------------------

--Sipari�ler tablosundan hareketle o sipari�in hangi t�r kategori de oldu�unu listeleyiniz. 
--select [Order Details].OrderID, Products.ProductName, Categories.CategoryName
--from [Order Details]  
--inner join Orders on Orders.OrderID = [Order Details].OrderID
--inner join Products on [Order Details].ProductID= Products.ProductID
--inner join Categories on Products.CategoryID=Categories.CategoryID

-----------------------------------------------------------------------------------------


--LEFT JOIN---

