--�r�n ortalama fiyat�n�n alt�nda fiyata sahip �r�nlerin ad� ve fiyat�n� listeleyen sorgu

Select ProductName, UnitPrice
From Products
where ProductName In (
	Select AVG(UnitPrice) as 'Ortalama Fiyat'
	From Products
	having AVG(UnitPrice)<UnitPrice)
