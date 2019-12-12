use fbd

select d.nome, div.nome, e.nome, sal_bruto 'salario_bruto', total_desc as 'total_desconto',  sal_bruto-total_desc as 'salario_liquido' 
from departamento d inner join divisao div inner join empregado e inner join Salario_Bruto sb inner join Total_Desc tdesc
on sb.matr=tdesc.matr on e.matr=sb.matr on div.cod_dep=e.cod_dep_chefia
on d.cod_dep=div.cod_dep
order by d.nome, div.nome asc, 6 desc