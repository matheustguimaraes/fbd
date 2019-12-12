create trigger t_menor_salario
on vendedores
for insert, update
as
if (select salario from inserted) < 1000
begin
rollback transaction
print ('salario invalido')
end