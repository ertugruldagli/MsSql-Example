--			WORKOUT    --


-- Sipariþ Tablosundan Ürün Kodu 10-50 olsun. Freight 
--Orders tablosundaki kayýtlardan hareketele , Ürün Kodu (ProductID) 10 ile 50 numaralý ürünlerin Navlun(Freight) fiyatlarýna %10 zam gelmiþtir..
--Buna göre Orders tablosunu ilgili yeni deðerlere göre güncelleyen sp'yi yazýnýz..

--Ýpucu 1 : Sipariþ bilgisine haiz ProductID bilgisi nerdedir onu arastýrýn.
--Ýpucu 2 : Her bir kayýt için ifadesi kafanýzda ne gibi bir yapý olusturmustur. CURSOR


alter Procedure spOrdersRaise
as begin
Select * From Orders o Inner join [Order Details] op on op.OrderID=o.OrderID where op.ProductID between 10 and 50 -- Ýlk Hali
declare @ProductID int,@Freight money,@ProductName nvarchar(30),@OrderID int -- Parametreler 
declare curOrders CURSOR -- cursor u parametre olarak gösterme
For -- bu cursor su tablo üzerinde çalýþacak , su degerlerle.
Select op.ProductID,o.OrderID,o.Freight From Orders o 
Inner join [Order Details] op on op.OrderID=o.OrderID
where op.ProductID between 10 and 50
Open curOrders -- cursoru acýyoruz..

FETCH NEXT FROM curOrders INTO @ProductID,@OrderID,@Freight -- önce bi fetch next from ile kayýtlarý üzerimize alýp okumaya baslýyoruz..
-- iþlemler
-- aldýðým prodid aralýktamý
WHILE @@FETCH_STATUS=0  -- Kayýt var 
BEGIN -- iþleme sok
set @Freight=@Freight*1.10
Update Orders set Freight=@Freight where OrderID=@OrderID -- bu degerleri güncelle
FETCH NEXT FROM curOrders INTO @ProductID,@OrderID,@Freight -- sonra tekrar fetch ile degerleri kaydet ve dön 
end
Close curOrders -- cursoru kapa.
DeAllocate curOrders
Select * From Orders o Inner join [Order Details] op on op.OrderID=o.OrderID where op.ProductID between 10 and 50 -- Son Hali yazdýr..
end


Exec spOrdersRaise


