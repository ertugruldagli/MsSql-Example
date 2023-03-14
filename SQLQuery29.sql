 --- olayda br b�lme i�lemi var . Hata olabilir d���cesiyle bu hesaplama/i�lem k�sm�n� bir 
 ---try catch bloklar� aras�na almak yoluyla buradadki hatalar�n neler oldupunu g�rebilir.

ALTER PROC spDivide
(@a decimal, @b decimal, @c decimal output)
AS
BEGIN

	BEGIN TRY --
		SET @C=@A/@B;
		print 'Sonuc: '+ Convert(nchar(10),@c)
	END TRY
	
	BEGIN CATCH 
		SELECT 
			ERROR_NUMBER()AS ErrorNumber,
			ERROR_SEVERITY()AS ErrorSeverity,
			ERROR_STATE()AS ErrorState,
			ERROR_PROCEDURE()AS ErrorProcedure,
			ERROR_LINE()AS ErrorLine,
			ERROR_MESSAGE()AS ErrorMessage
	END CATCH

END;