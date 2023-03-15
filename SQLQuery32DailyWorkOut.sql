--			WORKOUT    --


-- Sipari� Tablosundan �r�n Kodu 10-50 olsun. Freight 
--Orders tablosundaki kay�tlardan hareketele , �r�n Kodu (ProductID) 10 ile 50 numaral� �r�nlerin Navlun(Freight) fiyatlar�na %10 zam gelmi�tir..
--Buna g�re Orders tablosunu ilgili yeni de�erlere g�re g�ncelleyen sp'yi yaz�n�z..

--�pucu 1 : Sipari� bilgisine haiz ProductID bilgisi nerdedir onu arast�r�n.
--�pucu 2 : Her bir kay�t i�in ifadesi kafan�zda ne gibi bir yap� olusturmustur. CURSOR


alter Procedure spOrdersRaise
as begin
Select * From Orders o Inner join [Order Details] op on op.OrderID=o.OrderID where op.ProductID between 10 and 50 -- �lk Hali
declare @ProductID int,@Freight money,@ProductName nvarchar(30),@OrderID int -- Parametreler 
declare curOrders CURSOR -- cursor u parametre olarak g�sterme
For -- bu cursor su tablo �zerinde �al��acak , su degerlerle.
Select op.ProductID,o.OrderID,o.Freight From Orders o 
Inner join [Order Details] op on op.OrderID=o.OrderID
where op.ProductID between 10 and 50
Open curOrders -- cursoru ac�yoruz..

FETCH NEXT FROM curOrders INTO @ProductID,@OrderID,@Freight -- �nce bi fetch next from ile kay�tlar� �zerimize al�p okumaya basl�yoruz..
-- i�lemler
-- ald���m prodid aral�ktam�
WHILE @@FETCH_STATUS=0  -- Kay�t var 
BEGIN -- i�leme sok
set @Freight=@Freight*1.10
Update Orders set Freight=@Freight where OrderID=@OrderID -- bu degerleri g�ncelle
FETCH NEXT FROM curOrders INTO @ProductID,@OrderID,@Freight -- sonra tekrar fetch ile degerleri kaydet ve d�n 
end
Close curOrders -- cursoru kapa.
DeAllocate curOrders
Select * From Orders o Inner join [Order Details] op on op.OrderID=o.OrderID where op.ProductID between 10 and 50 -- Son Hali yazd�r..
end


Exec spOrdersRaise


