select d.cod_div, avg(ISNULL(sal_bruto,0) - ISNULL(total_desc,0)) as media 
	from divisao d inner join empregado e1 inner join Salario_Bruto sb inner join Total_Desc tdesc
	on sb.matr=tdesc.matr on e1.matr=sb.matr on d.cod_div=e1.cod_div
	group by d.cod_div