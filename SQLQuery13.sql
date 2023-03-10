
DECLARE @CompanyName varchar(50), @Address nvarchar(20), @City nvarchar(20), @Country nvarchar(20)

SELECT CompanyName, Address, City, Country
from Suppliers
where SupplierID=8

SELECT @CompanyName=CompanyName, @Address= Address, @City=City, @Country=Country
From Suppliers
Where SupplierID=8

Print  CONCAT (@CompanyName + ' þirketinin açýk adresi ' + @Address + ' ' + @City + ' ' + @Country + ' dir')
--Print  @CompanyName + ' þirketinin açýk adresi ' + @Address + ' ' + @City + ' ' + @Country + ' dir'

