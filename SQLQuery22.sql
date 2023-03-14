--ürün ortalama fiyatýnýn altýnda fiyata sahip ürünlerin adý ve fiyatýný listeleyen sorgu

Select ProductName, UnitPrice
From Products
where ProductName In (
	Select AVG(UnitPrice) as 'Ortalama Fiyat'
	From Products
	having AVG(UnitPrice)<UnitPrice)
