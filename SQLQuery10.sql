---LEN fonksiyonu 

--SELECT* FROM products

--select ProductName, LEN(ProductName) as 'uzunluk'
--from Products
--where LEN(ProductName)<10
--order by LEN(ProductName) desc

-----------------------------------------------------------

--select ProductName, substring(ProductName,1,5) as 'sonuc'
--from Products

-----------------------------------------------------------

--select ProductName, RIGHT(productName,8) as 'Sonuc'
--from Products

------------------------------------------------------------

--lower/upper
--select ProductName, lower(productName) as 'Sonuc'
--from Products

-------------------------------------------------------------

--example: Product name sadece ilk karakterini küçük yap
--SELECT ProductName, SUBSTRING(ProductName,1,1)+ lower( SUBSTRING(ProductName,2,LEN(ProductName)))
--from Products