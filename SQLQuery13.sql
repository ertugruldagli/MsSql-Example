
--DECLARE @CompanyName varchar(30), @Address nvarchar(20), @City nvarchar(10), @Country nvarchar(20)

--SET @CompanyName='Exotica Liquids'

----SELECT CompanyName, Address, City, Country
----from Suppliers
----where SupplierID=8

--SELECT  @Address= Address, @City=City, @Country=Country
--From Suppliers
--Where CompanyName =@CompanyName

--Print  CONCAT (@CompanyName + ' �irketinin a��k adresi ' + @Address + ' ' + @City + ' ' + @Country + ' dir')
----Print  @CompanyName + ' �irketinin a��k adresi ' + @Address + ' ' + @City + ' ' + @Country + ' dir'


---Di�er  yol-------

DECLARE @CompanyName varchar(30), @LongAdress nvarchar(100)

SET @CompanyName='Exotica Liquids'

SELECT  @LongAdress = Address + ' ' + City + ' ' + Country 
From Suppliers
Where CompanyName = @CompanyName

Print  @CompanyName + ' �irketinin a��k adresi ' + @LongAdress + ' dir'

