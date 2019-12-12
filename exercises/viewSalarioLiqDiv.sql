use fbd

create view Total_Desc (matr, total_desc)
as 
select e.matr, isnull(sum(desco.valor),0)
from empregado e left outer join emp_desc ed inner join desconto 
desco
on ed.cod_desc=desco.cod_desc on e.matr=ed.matr
group by e.matr


create view Salario_liq_div (dep_nome,  div_nome, emp_nome, salario_bruto, total_desconto, salario_liquido)
as
select d.nome, div.nome, e.nome, sal_bruto 'salario_bruto', total_desc as 'total_desconto',  sal_bruto - total_desc as 'salario_liquido' 
from departamento d inner join divisao div inner join empregado e inner join Salario_Bruto sb inner join Total_Desc tdesc
on sb.matr=tdesc.matr on e.matr=sb.matr on div.cod_dep=e.cod_dep_chefia on d.cod_dep=div.cod_dep


select *
from departamento