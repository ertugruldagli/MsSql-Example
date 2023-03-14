-- SP - IF,ELSE
--Yazaca��m�z sp �lkelere g�re �ok basit olarak o �lkede tedarik�i var m�/ yok mu kontrol edecek: iki adet parametre 
--alarak bu i�i  yapacak 

ALTER PROCEDURE spSupplierByCountry
(
@Country1 nvarchar(20),
@Country2 nvarchar (20)
)
AS
BEGIN 
	IF @Country1 IS NOT NULL 
		begin --country1 parametresi dolu gelmi�se a�a�daki blo�u �al��t�r
			SELECT *
			FROM Suppliers
			WHERE Country=@Country1

			print '1. sonuc setindeki tedarik�iler'+' '+@Country1+ ' �lkesinde bulunuyorlar'
		end

	IF @Country2 IS NOT NULL
		begin
			SELECT *
			FROM Suppliers
			WHERE Country=@Country2

			print '2. sonuc setindeki tedarik�iler'+ ' '+@Country2+ ' �lkesinde bulunuyorlar'

		end
END