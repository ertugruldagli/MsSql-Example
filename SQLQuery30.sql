--Cursor Kullan�m� 
-- Employees tablosundaki FirstName,

CREATE PROC spEmployeeReport
AS
BEGIN
--
Declare @FirstNamee nvarchar(Max)
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

END