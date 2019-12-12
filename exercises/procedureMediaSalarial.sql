create proc p_media_salarial
@codfil int
as
	declare @media dec(10, 2)
	select @media = AVG(salario) from vendedores v where v.codfil = @codfil
	print 'media salarial de ' + cast(@codfil as varchar(5)) + ' eh ' + cast(@media as varchar(10))

exec p_media_salarial 3