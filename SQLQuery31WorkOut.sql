CREATE PROC spShippersCRUD
(@ShipperID int, @OpCode char(1), @CompanyName nvarchar(40), @Phone nvarchar(24))---PARAMETRE TANIM ALANI
AS
BEGIN 

-- �nclikle tablonun �imdikini durumunu listele
	select *
	from Shippers

--i�lemler b�l�m�
	IF @ShipperID <> 0
		begin --bir kay�t i�in tabloda bulunan bir kay�t i�in R,U,D i�lerinlerinden biri isteniyormu�
			if @OpCode = 'R' --Read
				Select * from Shippers where ShipperID=@ShipperID

			if @OpCode = 'U' --Update
				Update Shippers set CompanyName=@CompanyName, Phone=@Phone where ShipperID=@ShipperID

			if @OpCode = 'D' --DELETE
				DELETE from Shippers where ShipperID=@ShipperID
		end

		else --- ShippersID=0 ise demekki yeni kay�t yapmam isteniyormu�
			begin 
				INSERT INTO Shippers (CompanyName,Phone) VALUES (@CompanyName,@Phone)
			end

Select* from Shippers

END