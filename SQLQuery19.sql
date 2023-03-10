--- Deðeri (ID) verilmiþ olan bir çalýþanýn hizmet verdiði bölge tanýmýný getiren bir fonksiyon yazýnýz.

create function funcBolgeSoyle
(
	@EmpID int

)returns varchar(20)
as
begin
	DEclare @bolge varchar(20)

	Select  @bolge= r.RegionDescription
	From Employees Emps

	INNER JOIN EmployeeTerritories et ON Emps.EmployeeID=et.EmployeeID
	INNER JOIN Territories t ON et.TerritoryID=t.TerritoryID
	INNER JOIN Region r ON t.RegionID=r.RegionID

	where Emps.EmployeeID=@EmpID
	
return @bolge
end

