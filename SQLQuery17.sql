select FirstName, LastName, dbo.funcSiparisHesapla(3)
from Employees
where EmployeeID=7