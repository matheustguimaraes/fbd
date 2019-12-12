create view View_Desconto (matr, desconto)
as
select e3.matr, sum(desco.valor) as total_desc 
from empregado e3 left outer join emp_desc ed inner join desconto desco 
on ed.cod_desc=desco.cod_desc on e3.matr=ed.matr 
group by e3.matr