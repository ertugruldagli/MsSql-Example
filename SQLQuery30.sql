--Cursor Kullan�m� 
-- Employees tablosundaki FirstName,

CREATE PROC spEmployeeReport
AS
BEGIN
--
Declare @FirstName nvarchar(Max)
DECLARE @LastName nvarchar(Max)
DEclare @Title nvarchar(Max)

---olay ba�l�yor
--

Declare curEmployees Cursor
For 

	Select FirstName, LastName, Title From Employees

	OPEN curEmployees -- cursor a��l�yor.. default olarak ileri y�nl� 
	--�imdi bu cursorun birinci kayd�na 1. kayd�na ula�mak laz�m ki okumaya ba�layal�m
	--ayn� anda okudu�um veriyi de�i�kenlerime aktaray�m...

	--FETCH komutu okuyor/almaya ba�l�yor  ve de�i�kenlerime yerle�tiriyor.
	FETCH NEXT FROM curEmployees INTO @FirstName, @LastName, @Title
	--- bir tane sistem de�i�keni var.. Ad� @@Fecth_Status
	--- Okuma ��lemini acaba Do�ru yapt�m m� kontrol� i�in kullanaca��m
	--yani i�lem ba�ar�l� ise @@FETCH_Status de�eri 0(S�f�rd�r) ve i�lem ba�ar�l�d�r yani bir sonraki kay�t da mevcuttur.

	while @@FETCH_STATUS =0 -- Yani kay�t varsa i�lemini yap
		begin 
		print Concat(@FirstName,' ',@LastName, ' - ', @Title)
		--s�radaki sat�ra ge�mem laz�m o y�zden 
		FETCH NEXT FROM curEmployees INTO
		@FirstName, @LastName, @Title --bir sonraki kayd� okuma
		end

		--kay�tlar bitti. �u ana ekrana bast�m bir �eyler..
		--cursor�m� kapat

		CLOSE curEmployee
		--close etsem dahi hala bellekte.
		--o y�zden al eline ora�� salla gitsin
		DEALLOCATE curEmployees
END

exec dbo.spEmployeeReport