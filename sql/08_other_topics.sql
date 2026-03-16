---1. Crie uma stored procedure que receba como parâmetro o ID do produto e 
---o percentual de aumento, e reajuste o preço somente deste produto de acordo 
---com o valor passado como parâmetro

create or replace procedure ajuste_preco(idp integer, percentual numeric(10,2))
language SQL
as $$
	update produtos set valor = valor + ((valor * percentual) / 100) 
	where id_produto = idp;
$$;

call ajuste_preco(1, 10);
select * from produtos;

---2. Crie uma stored procedure que receba como parâmetro o ID do produto e 
---exclua da base de dados somente o produto com o ID correspondente
create or replace procedure delete_produto(idp integer)
language SQL
as $$
	delete from produtos where id_produto = idp;
$$;

call delete_produto(9);
select * from produtos;

---