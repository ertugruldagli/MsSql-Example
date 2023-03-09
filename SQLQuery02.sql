--SELECT * INTO PRODUCTS_NEW --TABLO KOPYALAMASI YAPAR
--FROM Products


--SELECT * INTO PRODUCTS_NEW3
--FROM Products
--WHERE 5=6  --false döndürdüðü için içi boþ bir tablo oluþturacak



--Hangi ülkede kaç müþterim var
--Customers 

--Select Country, COUNT (CustomerID) AS 'ADET'
--From Customers
--Group By Country
--HAVING COUNT (CustomerID)>10
--ORDER BY Country DESC


--DELETE FROM Products_New WHERE SupplierID=1;


--SELECT * FROM  Products_New


--SELECT ProductName, unitprice, (unitprice+15) as 'Toplam Fiyat'
--FROM Products 


--UPDATE  Products
--SET UnitPrice+=15
--WHERE UnitPrice<=100
--SELECT * 
--FROM PRODUCTS  
--WHERE UnitPrice<=100



--SELECT (ProductName+ 'Ürünün toplam stok maliyeti = ' + CONVERT (nvarchar(8),unitPrice * UnitsInStock)) as 'Yeni Durum'
--FROM Products
--ORDER BY ProductName DESC