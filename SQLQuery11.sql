--Select LTRIM ('                                ÜMÝT ERTUGRUL                        ')
--Select RTRIM ('                                ÜMÝT ERTUGRUL                        ')
--Select TRIM ('            S             S       ÜMÝT ERTUGRUL           S        S     ')

----------------------------------------------------

--SELECT CONVERT(int,'10')*20 
--SELECT CONVERT(varchar(20),50)
--SELECT cast('10'as int )+50

--select CONCAT('ertugrul ', ' daglý')

--------------------------------------------------------------

--select OrderID, Quantity,
--case
--	when Quantity>30 then '30dan büyük'
--	when Quantity=30 then '30 a eþit'
--	ELSE '30dan küçük'
--end  as 'test'
--from [Order Details]

--------------------------------------------------------------------

SELECT TOP 1
[Order Details].ProductID,
Products.ProductName,
[Order Details].UnitPrice
FROM [Order Details]
INNER JOIN Products ON [Order Details].ProductID=Products.ProductID
GROUP BY
[Order Details].ProductID,
Products.ProductName,
[Order Details].UnitPrice
HAVING [Order Details].UnitPrice=MAX([Order Details].UnitPrice)
ORDER BY [Order Details].UnitPrice DESC