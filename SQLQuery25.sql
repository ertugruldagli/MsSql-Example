USE [Northwind]
GO
/****** Object:  StoredProcedure [dbo].[spCustomerOrders]    Script Date: 14.03.2023 10:35:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--sp örnek 
-- cutomers tablosundaki sehir bilgilerini sayısı azalacak  şekilde city, adet şekildie listeleyen bir sp oluştuşturur

--aşağıdaki PROC  herhangi bir parametre almamaktadır. Yani static 
--CREATE PROCEDURE spCityList 
--AS
--BEGIN 

--	SELECT city, COUNT(city) as 'adet'
--	From Customers
--	group  by city
--	order by count(city) desc
--END

------------------------------------------------------------------

--parametreli proc
--orders tablosundan customerIDsi verilen müşteriye ait siprarişleri listeleyen SP'yi hazırlayınız.
--ek: orders tablosundan customerIDsi verilen müşteriye ait siprarişleri numarasını, sipariş tarihini ve bunlara ek olarak müşteri detaylarını (CompanyName, Addres,City,Country)
ALTER PROCEDURE [dbo].[spCustomerOrders] 
( @CustomerID nchar(5))

AS
BEGIN 
	
	SELECT O.OrderID, O.OrderDate, C.CustomerID, C.CompanyName, C.Address, C.Country
	From Orders O
	INNER JOIN Customers C ON O.CustomerID=C.CustomerID
	Where SUBSTRING(C.CustomerID,1,1)= @CustomerID

	order by C.CompanyName ASC
END