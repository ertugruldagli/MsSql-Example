--SubQuery

Select *
From Employees
where City In (
	Select City
	From Employees
	where FirstName IN ('Michael', 'Laura'))