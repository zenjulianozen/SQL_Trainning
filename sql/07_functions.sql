--- 1. Crie uma função que receba como parâmetro o ID do pedido e retorne o valor total deste pedido
create function calc_total(p_id_pedido int)
returns numeric
language SQL
AS $$
select sum(quantidade * valor_un)
from pedidos_produtos
where id_pedido = p_id_pedido;
$$;

select id_pedido, calc_total(id_pedido) as total from pedidos_produtos
group by id_pedido

---2. Crie uma função chamada “maior”, que quando executada retorne o pedido com o maior valor
create function maior()
returns numeric
language SQL
as $$
select max(valor)
from pedidos
$$;

select maior();
