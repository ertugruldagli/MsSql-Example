--�r�n ortalama fiyat�n�n alt�nda fiyata sahip �r�nlerin ad� ve fiyat�n� listeleyen sorgu

Select ProductName, UnitPrice
From Products
where UnitPrice < (
	Select AVG(UnitPrice) 
	From Products)
	
