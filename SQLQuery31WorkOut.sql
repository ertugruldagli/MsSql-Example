CREATE PROC spShippersCRUD
(@ShipperID int, @OpCode char(1), @CompanyName nvarchar(40), @Phone nvarchar(24))---PARAMETRE TANIM ALANI
AS
BEGIN 

-- Önclikle tablonun þimdikini durumunu listele
	select *
	from Shippers

--iþlemler bölümü
	IF @ShipperID <> 0
		begin --bir kayýt için tabloda bulunan bir kayýt için R,U,D iþlerinlerinden biri isteniyormuþ
			if @OpCode = 'R' --Read
				Select * from Shippers where ShipperID=@ShipperID

			if @OpCode = 'U' --Update
				Update Shippers set CompanyName=@CompanyName, Phone=@Phone where ShipperID=@ShipperID

			if @OpCode = 'D' --DELETE
				DELETE from Shippers where ShipperID=@ShipperID
		end

		else --- ShippersID=0 ise demekki yeni kayýt yapmam isteniyormuþ
			begin 
				INSERT INTO Shippers (CompanyName,Phone) VALUES (@CompanyName,@Phone)
			end

Select* from Shippers

END