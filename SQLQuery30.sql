--Cursor Kullanýmý 
-- Employees tablosundaki FirstName,

CREATE PROC spEmployeeReport
AS
BEGIN
--
Declare @FirstName nvarchar(Max)
DECLARE @LastName nvarchar(Max)
DEclare @Title nvarchar(Max)

---olay baþlýyor
--

Declare curEmployees Cursor
For 

	Select FirstName, LastName, Title From Employees

	OPEN curEmployees -- cursor açýlýyor.. default olarak ileri yönlü 
	--þimdi bu cursorun birinci kaydýna 1. kaydýna ulaþmak lazým ki okumaya baþlayalým
	--ayný anda okuduðum veriyi deðiþkenlerime aktarayým...

	--FETCH komutu okuyor/almaya baþlýyor  ve deðiþkenlerime yerleþtiriyor.
	FETCH NEXT FROM curEmployees INTO @FirstName, @LastName, @Title
	--- bir tane sistem deðiþkeni var.. Adý @@Fecth_Status
	--- Okuma Ýþlemini acaba Doðru yaptým mý kontrolü için kullanacaðým
	--yani iþlem baþarýlý ise @@FETCH_Status deðeri 0(Sýfýrdýr) ve iþlem baþarýlýdýr yani bir sonraki kayýt da mevcuttur.

	while @@FETCH_STATUS =0 -- Yani kayýt varsa iþlemini yap
		begin 
		print Concat(@FirstName,' ',@LastName, ' - ', @Title)
		--sýradaki satýra geçmem lazým o yüzden 
		FETCH NEXT FROM curEmployees INTO
		@FirstName, @LastName, @Title --bir sonraki kaydý okuma
		end

		--kayýtlar bitti. Þu ana ekrana bastým bir þeyler..
		--cursorýmý kapat

		CLOSE curEmployee
		--close etsem dahi hala bellekte.
		--o yüzden al eline oraðý salla gitsin
		DEALLOCATE curEmployees
END

exec dbo.spEmployeeReport