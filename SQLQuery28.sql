IF EXISTS (Select* from Suppliers where Country ='USA')
BEGIN 
PRINT 'Amerika''da yerle�ik �irketler var'
END 
ELSE
BEGIN
PRINT 'Amerika''da hi� tedarik�imiz yok'
END