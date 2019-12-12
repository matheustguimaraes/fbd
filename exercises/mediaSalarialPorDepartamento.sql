select dee.cod_dep, avg(sl.salario_liquido)
from Salario_Liquido sl inner join empregado emm inner join divisao dii inner join departamento dee
on dee.cod_dep = dii.cod_dep on dii.cod_div = emm.cod_div on sl.matr = emm.matr
group by dee.cod_dep
