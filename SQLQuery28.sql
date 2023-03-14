--IF EXISTS (Select* from Suppliers where Country ='USA')
--BEGIN 
--PRINT 'Amerika''da yerleþik þirketler var'
--END 
--ELSE
--BEGIN
--PRINT 'Amerika''da hiç tedarikçimiz yok'
--END

----------------------------------------------------------------

-- 1den 10a kadar olan sayýalrý bas

--Alter PROCEDURE spCounter
--AS
--Declare @Counter INT=1;
--Declare @toplam INT=0;
--WHILE @Counter<=10
--BEGIN
--	PRINT @Counter;
--	SET	@Counter= @Counter+1;
--	set @toplam=@toplam+@counter;
--END
--PRINT 'Toplam:  ' + Convert(nvarchar(20),@toplam);

--EXEC dbo.spCounter

---------------------------------------------------------------