select e.matr, isnull(sum(venc.valor), 0)
from empregado e 
left outer join emp_venc ev 
	inner join vencimento venc
	on ev.cod_venc=venc.cod_venc
on e.matr=ev.matr
group by e.matr

create view Total_Desc (matr, total_desc)
as 
select e.matr, isnull(sum(desco.valor),0)
from empregado e 
left outer join emp_desc ed 
	inner join desconto desco
	on ed.cod_desc=desco.cod_desc 
on e.matr=ed.matr
group by e.matr