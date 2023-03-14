--sp �rnek 
-- cutomers tablosundaki sehir bilgilerini say�s� azalacak  �ekilde city, adet �ekildie listeleyen bir sp olu�tu�turur

--a�a��daki PROC  herhangi bir parametre almamaktad�r. Yani static 
CREATE PROCEDURE spCityList 
AS
BEGIN 

	SELECT city, COUNT(city) as 'adet'
	From Customers
	group  by city
	order by count(city) desc


END