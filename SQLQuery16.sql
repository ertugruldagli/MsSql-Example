--kullanýlacak tablolar Employees, Orders, Other Details 
-- Ýstenen þey:
-- EmployeeId Deðeri verilen bir personelin en kadar /kaç adet satýþ yaptýðýný listeleyen fonksiyonu hazýrlayýnýz

--Joýnler kullanýlarak ilgili sonuclara ulaþýlbailirs

CREATE FUNCTION funcSiparisHesapla
(

@EmpID int

)returns int
as
begin
	Declare @adet int 

	Select @adet=Sum(od.Quantity)
	From Employees Emps
	INNER JOIN Orders o ON Emps.EmployeeID=o.EmployeeID
	INNER JOIN [Order Details] od on o.OrderID=od.OrderID
	where Emps.EmployeeID=@EmpID
	Group by Emps.EmployeeID

	return @adet
end

