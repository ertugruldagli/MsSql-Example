
--Verilen bir tarih bilgisine göre Yaşını Hesaplayan bir fonksiyon (scalar function)

ALTER function [dbo].[funcYasHesapla] 
(
	@tarih Date 
)
returns int
as
begin
	DECLARE @sonuc int

	SET @sonuc=Year(GETDATE()) - YEAR(@tarih)--Year,getdate(bugünün tarihini getirir.) sistem fonksiyon

return @sonuc
end