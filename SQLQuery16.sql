--kullan�lacak tablolar Employees, Orders, Other Details 
-- �stenen �ey:
-- EmployeeId De�eri verilen bir personelin en kadar /ka� adet sat�� yapt���n� listeleyen fonksiyonu haz�rlay�n�z

--Jo�nler kullan�larak ilgili sonuclara ula��lbailirs

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

