alter PROC spSiparisZam
AS
BEGIN 
	--declare curFreight CURSOR
	 
			select p.ProductID, od.OrderID,o.Freight,od.UnitPrice
			from Orders o
			inner join [Order Details] od on o.OrderID=od.OrderID
			inner Join Products p on p.ProductID = od.ProductID
			where p.ProductID between 10 and 50	 (Select Freight*1.10 from Orders )

END


exec dbo.spSiparisZam

