create view Salario_Liquido (matr, salario_liquido)
as
select sbb.matr, sbb.sal_bruto - tdd.total_desc
from Salario_Bruto sbb inner join Total_Desc tdd
on sbb.matr = tdd.matr
