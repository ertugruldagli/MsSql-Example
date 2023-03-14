--Cursor Kullanýmý 
-- Employees tablosundaki FirstName,

CREATE PROC spEmployeeReport
AS
BEGIN
--
Declare @FirstNamee nvarchar(Max)
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

END