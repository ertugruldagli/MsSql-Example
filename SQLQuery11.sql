--Select LTRIM ('                                �M�T ERTUGRUL                        ')
--Select RTRIM ('                                �M�T ERTUGRUL                        ')
--Select TRIM ('            S             S       �M�T ERTUGRUL           S        S     ')

----------------------------------------------------

--SELECT CONVERT(int,'10')*20 
--SELECT CONVERT(varchar(20),50)
--SELECT cast('10'as int )+50

--select CONCAT('ertugrul ', ' dagl�')

--------------------------------------------------------------

--select OrderID, Quantity,
--case
--	when Quantity>30 then '30dan b�y�k'
--	when Quantity=30 then '30 a e�it'
--	ELSE '30dan k���k'
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