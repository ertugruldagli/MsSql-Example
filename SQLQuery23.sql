--sp örnek 
-- cutomers tablosundaki sehir bilgilerini sayýsý azalacak  þekilde city, adet þekildie listeleyen bir sp oluþtuþturur

--aþaðýdaki PROC  herhangi bir parametre almamaktadýr. Yani static 
CREATE PROCEDURE spCityList 
AS
BEGIN 

	SELECT city, COUNT(city) as 'adet'
	From Customers
	group  by city
	order by count(city) desc


END