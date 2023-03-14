IF EXISTS (Select* from Suppliers where Country ='USA')
BEGIN 
PRINT 'Amerika''da yerleþik þirketler var'
END 
ELSE
BEGIN
PRINT 'Amerika''da hiç tedarikçimiz yok'
END