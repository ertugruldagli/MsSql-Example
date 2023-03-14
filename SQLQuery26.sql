-- SP - IF,ELSE
--Yazacaðýmýz sp ülkelere göre çok basit olarak o ülkede tedarikçi var mý/ yok mu kontrol edecek: iki adet parametre 
--alarak bu iþi  yapacak 

ALTER PROCEDURE spSupplierByCountry
(
@Country1 nvarchar(20),
@Country2 nvarchar (20)
)
AS
BEGIN 
	IF @Country1 IS NOT NULL 
		begin --country1 parametresi dolu gelmiþse aþaðdaki bloðu çalýþtýr
			SELECT *
			FROM Suppliers
			WHERE Country=@Country1

			print '1. sonuc setindeki tedarikçiler'+' '+@Country1+ ' ülkesinde bulunuyorlar'
		end

	IF @Country2 IS NOT NULL
		begin
			SELECT *
			FROM Suppliers
			WHERE Country=@Country2

			print '2. sonuc setindeki tedarikçiler'+ ' '+@Country2+ ' ülkesinde bulunuyorlar'

		end
END