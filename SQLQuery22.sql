--ürün ortalama fiyatýnýn altýnda fiyata sahip ürünlerin adý ve fiyatýný listeleyen sorgu

Select ProductName, UnitPrice
From Products
where UnitPrice < (
	Select AVG(UnitPrice) 
	From Products)
	
