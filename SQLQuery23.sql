--sp �rnek 
-- cutomers tablosundaki sehir bilgilerini say�s� azalacak  �ekilde city, adet �ekildie listeleyen bir sp olu�tu�turur

--a�a��daki PROC  herhangi bir parametre almamaktad�r. Yani static 
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
--orders tablosundan customerIDsi verilen m��teriye ait siprari�leri listeleyen SP'yi haz�rlay�n�z.
CREATE PROCEDURE spCustomerOrders 
( @CustomerID nchar(5))
AS
BEGIN 
	SELECT *
	From Orders
	Where CustomerID=@CustomerID
	
END