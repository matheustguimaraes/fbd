create trigger t_estoque_cheio on estoque
after insert, update
as
if (select qtde from estoque) < 10
begin
print ('estoque atingiu nivel critico')
end
else
begin
print ('estoque em nivel normal')
end

select * from estoque

insert into estoque (cod, ref, prcom, prven, qtde, codfor)
values (18, 'Teste1', 300.0, 2500.0, 2, 7)
