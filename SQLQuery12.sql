DECLARE @sayi1 int
DECLARE @ad varchar (15)
DECLARE @soyad varchar(25)

SET @sayi1=5

print 'Girdiðiniz sayi: ' + Convert (nvarchar(20), @sayi1)

SET @ad='Ahmet'
SET @soyad ='Mehmet'
SELECT @ad as Ad, @soyad as Soyad