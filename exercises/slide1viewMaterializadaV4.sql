Create view V4 (filial, num_vend)  
with schemabinding 
as 
select f.nome, count_big(*) 
from dbo.vendedores inner join dbo.filiais f 
on cod=codfil 
group by f.nome

Create unique clustered index I_V4  
on V4 (filial)

select * from V4

insert into vendedores (matr, nome, salario, codfil, CPF)
values (1221, 'teste', 2141, 2, 12214)
update vendedores set matr = 1221, nome = 'teste', salario = 1252, codfil = 2, cpf = 12125
