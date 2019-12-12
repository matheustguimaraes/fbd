create view v5 (nome, qtde_item)
with schemabinding as	
select fo.nome, count_big(*)
from dbo.fornecedores fo inner join dbo.estoque e
on fo.cod = e.codfor
group by fo.nome

create unique clustered index i_v5 on v5 (nome)

