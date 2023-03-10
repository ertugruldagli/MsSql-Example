select FirstName, LastName, dbo.funcBolgeSoyle(2)  as 'bolge'
from Employees
where EmployeeID=2
