-- Tasks

-- Retorne o nome, sexo, profissão de todos os clientes, em ordem de nome decrescente
select nome, genero as "sexo", profissao
from clientes
order by nome desc;

-- Retorne os clientes que tenham "R" no nome
select *
from clientes
where nome like '%r%'

-- Retorne os clientes que iniciem com "C"
select * 
from clientes
where nome like 'C%'

-- Retorne os clientes que terminam com "A"
select *
from clientes
where nome like '%a'

-- Retorne os clientes que moram no bairro "Centro"
select *
from clientes
where bairro = 'Centro' or bairro = 'Cto.' or bairro = 'Ctr.'

-- Retorne os clientes com complementos que iniciem em "A"
select *
from clientes
where complemento like 'A%'

-- Retorne somente os clientes do sexo feminino
select nome, genero
from clientes
where genero like 'F'

-- Retorne os clientes que não informaram CPF
select nome, cpf
from clientes
where cpf is null

-- Retorne o nome e profissão dos clientes ordenados em ordem crescente por profissão
select nome, profissao
from clientes
order by profissao

-- Retorne os clientes de nacionalidade "Brasileira"
select nome, nacionalidade
from clientes
where nacionalidade like 'Brasil%'

-- Retorne os clientes que informaram o número da residência
select nome, numero
from clientes
where numero is not null

-- Retorne os clientes de SC
select nome, uf
from clientes
where uf like 'SC'

-- Retorne os clientes que nasceram entre 01/01/2000 e 01/01/2022
select nome, data_nascimento
from clientes
where data_nascimento between '2000-01-01' and '2022-01-01'

-- Retorne os clientes concatenando cidade e UF
select 
	nome, 
	'Cidade: ' || municipio || ' / UF: ' || uf as "Cidade/UF"
from clientes
order by nome

-- Generic query
select * from uf

--- Generic query
select municipio, uf from clientes
order by municipio

--- 1. Somente o nome de todos os vendedores em ordem alfabética.
select nome from vendedores order by nome

--- 2. Os produtos que o preço seja maior que R$200,00, em ordem crescente pelo preço.
select id_produto, nome, valor from produtos 
where valor > 200
order by valor

-- 3. O nome do produto, o preço e o preço reajustado em 10%, ordenado pelo nome do produto.
select nome, valor, valor * 1.10 as valor_ajus from produtos order by nome

-- 4. Os municípios do Rio Grande do Sul.
select m.id_municipio, m.nome, u.nome from municipio m
join uf u on m.id_uf = u.id_uf
where u.sigla = 'RS';

-- 5. Os pedidos feitos entre 10/04/2008 e 25/04/2008 ordenado pelo valor.
select id_pedido, data_pedido, valor from pedidos
where data_pedido between '2008-04-10' and '2008-04-25'
order by valor;

-- 6. Os pedidos que o valor esteja entre R$1.000,00 e R$1.500,00.
select id_pedido, valor from pedidos
where valor between 1000 and 1500;

--7. Os pedidos que o valor não esteja entre R$100,00 e R$500,00.
select id_pedido, valor from pedidos
where valor not between 100 and 500;

-- 8. Os pedidos do vendedor André ordenado pelo valor em ordem decrescente.
select p.id_pedido, v.nome as vendedor,  p.valor
from pedidos p
join vendedores v on p.id_vendedor = v.id_vendedor
where v.nome = 'André'
order by p.valor desc;

-- 9. Os pedidos do cliente Manoel ordenado pelo valor em ordem crescente.
select p.id_pedido, c.nome as cliente, p.valor
from pedidos p
join clientes c on p.id_cliente = c.id_cliente
where c.nome = 'Manoel'
order by p.valor

-- 10. Os pedidos da cliente Jéssica que foram feitos pelo vendedor André.
select p.id_pedido, c.nome as cliente, v.nome as vendedor
from pedidos p
join clientes c on p.id_cliente = c.id_cliente
join vendedores v on p.id_vendedor = v.id_vendedor
where c.nome = 'Jessica' and v.nome = 'André';

-- 11. Os pedidos que foram transportados pela transportadora União Transportes.
select p.id_pedido, t.nome as transportadora
from pedidos p
join transportadoras t on p.id_transportadora = t.id_transportadora
where t.nome = 'União Transportes';

-- 12. Os pedidos feitos pela vendedora Maria ou pela vendedora Aline.
select p.id_pedido, v.nome as vendedor
from pedidos p
join vendedores v on p.id_vendedor = v.id_vendedor
where v.nome = 'Maria' or v.nome = 'Aline';

-- 13. Os clientes que moram em União da Vitória ou Porto União.
select c.id_cliente, c.nome as cliente, m.nome as cidade
from clientes c
join municipio m on c.id_municipio = m.id_municipio
where m.nome = 'União da Vitória' or m.nome = 'Porto União';

-- 14. Os clientes que não moram em União da Vitória e nem em Porto União.
select c.id_cliente, c.nome as cliente, m.nome as cidade
from clientes c
join municipio m on c.id_municipio = m.id_municipio
where m.nome <> 'União da Vitória' and m.nome <> 'Porto União';

-- 15. Os clientes que não informaram o logradouro.
select id_cliente, nome, logradouro
from clientes
where logradouro is null;

-- 16. Os clientes que moram em avenidas.
select id_cliente, nome, logradouro
from clientes
where logradouro like 'Av%';

-- 17. Os vendedores que o nome começam com a letra S.
select id_vendedor, nome
from vendedores
where nome like 'S%';

-- 18. Os vendedores que o nome terminam com a letra A.
select id_vendedor, nome
from vendedores
where nome like '%a';

-- 19. Os vendedores que o nome não começam com a letra A.
select id_vendedor, nome
from vendedores
where nome not like 'A%';

-- 20. Os municípios que começam com a letra P e são de Santa Catarina.
select m.id_municipio, m.nome
from municipio m
join uf u on m.id_uf = u.id_uf 
where m.nome like 'P%' and u.sigla = 'SC';

-- 21. As transportadoras que informaram o endereço.
select id_transportadora, nome, logradouro
from transportadoras
where logradouro is not null;

-- 22. Os itens do pedido 01.
select pp.id_pedido, pr.nome, pp.quantidade, pp.valor_un 
from pedidos_produtos pp
join produtos pr on pp.id_produto = pr.id_produto
where pp.id_pedido = 1;

-- 23. Os itens do pedido 06 ou do pedido 10.
select pp.id_pedido, pr.nome, pp.quantidade, pp.valor_un 
from pedidos_produtos pp
join produtos pr on pp.id_produto = pr.id_produto
where pp.id_pedido in (6, 10)
order by pp.id_pedido;

--
-- 1. A média dos valores de vendas dos vendedores que venderam mais que R$ 200,00.
select v.id_vendedor, v.nome, avg(p.valor) as avg_vendas 
from pedidos p
join vendedores v on p.id_vendedor = v.id_vendedor
group by v.id_vendedor, v.nome having avg(p.valor) > 200
order by avg_vendas desc;

-- 2. Os vendedores que venderam mais que R$ 1500,00.
select v.id_vendedor, v.nome, sum(p.valor) as total_vendas
from pedidos p
join vendedores v on p.id_vendedor = v.id_vendedor
group by v.id_vendedor, v.nome having sum(p.valor) > 1500
order by total_vendas desc;

--3. O somatório das vendas de cada vendedor.
select v.id_vendedor, v.nome, sum(p.valor) as total_vendas
from pedidos p
join vendedores v on p.id_vendedor = v.id_vendedor
group by v.id_vendedor, v.nome
order by total_vendas desc;

--4. A quantidade de municípios.
select count(id_municipio) as count_municipio from municipio

--5. A quantidade de municípios que são do Paraná ou de Santa Catarina.
select count(m.id_municipio) as count_municipio, uf.sigla
from municipio m
join uf uf on m.id_uf = uf.id_uf
where sigla in ('PR', 'SC')
group by uf.sigla;

--6. A quantidade de municípios por estado.
select count(m.id_municipio) as count_municipio, uf.sigla
from municipio m
join uf uf on m.id_uf = uf.id_uf
group by uf.sigla

--7. A quantidade de clientes que informaram o logradouro.
select count(id_cliente)
from clientes
where logradouro is not null
and trim(logradouro) <> '';

--8. A quantidade de clientes por município.
select count(c.id_cliente), m.nome
from clientes c
join municipio m on c.id_municipio = m.id_municipio
group by m.nome;

--9. A quantidade de fornecedores.
select count(id_fornecedor) from fornecedores;

--10. A quantidade de produtos por fornecedor.
select p.id_fornecedor, f.nome, count(p.id_produto)
from produtos p
join fornecedores f on p.id_fornecedor = f.id_fornecedor
group by p.id_fornecedor, f.nome
order by id_fornecedor;

--11. A média de preços dos produtos do fornecedor Cap. Computadores.
select p.id_fornecedor, f.nome, avg(valor)
from produtos p
join fornecedores f on p.id_fornecedor = f.id_fornecedor
where f.nome = 'Cap. Computadores'
group by p.id_fornecedor, f.nome;

--12. O somatório dos preços de todos os produtos.
select sum(valor) from produtos;

--13. O nome do produto e o preço somente do produto mais caro.
select id_produto, nome, valor from produtos
where valor = (select max(valor) from produtos);

--14. O nome do produto e o preço somente do produto mais barato.
select id_produto, nome, valor from produtos
where valor = (select min(valor) from produtos);

--15. A média de preço de todos os produtos.
select avg(valor) from produtos;

--16. A quantidade de transportadoras.
select count(*) from transportadoras;

--17. A média do valor de todos os pedidos.
select avg(valor) from pedidos;

--18. O somatório do valor do pedido agrupado por cliente.
select id_cliente, sum(valor) from pedidos
group by id_cliente
order by id_cliente;

--19. O somatório do valor do pedido agrupado por vendedor.
select id_vendedor, sum (valor) from pedidos
group by id_vendedor
order by id_vendedor;

--20. O somatório do valor do pedido agrupado por transportadora.
select id_transportadora, sum(valor) from pedidos
where id_transportadora is not null
group by id_transportadora
order by id_transportadora;

--21. O somatório do valor do pedido agrupado pela data.
select data_pedido, sum(valor) from pedidos
group by data_pedido
order by data_pedido;

--22. O somatório do valor do pedido agrupado por cliente, vendedor e transportadora.
select id_pedido, id_cliente, id_vendedor, id_transportadora, sum(valor)
from pedidos
group by id_pedido, id_cliente, id_vendedor, id_transportadora
order by id_pedido;

--23. O somatório do valor do pedido que esteja entre 01/04/2008 e 10/12/2009 e que seja maior que R$ 200,00.
select id_pedido, sum(valor) from pedidos
where data_pedido between '2008-04-01' and '2009-12-10' 
group by id_pedido having sum(valor) > 200;

--24. A média do valor do pedido do vendedor André.
select v.nome, avg(p.valor) 
from pedidos p
join vendedores v on p.id_vendedor = v.id_vendedor
where v.nome = 'André'
group by v.nome;

--25. A média do valor do pedido da cliente Jéssica.
select c.nome, avg(p.valor)
from pedidos p
join clientes c on p.id_cliente = c.id_cliente
where c.nome = 'Jessica'
group by c.nome;

--26. A quantidade de pedidos transportados pela transportadora BS. Transportes.
select t.nome, count (p.id_pedido)
from pedidos p
join transportadoras t on p.id_transportadora = t.id_transportadora
where t.nome = 'BS. Transportes'
group by t.nome;

--27. A quantidade de pedidos agrupados por vendedor.
select v.nome, count(p.id_pedido)
from pedidos p
join vendedores v on p.id_vendedor = v.id_vendedor
group by v.nome;

--28. A quantidade de pedidos agrupados por cliente.
select c.nome, count(p.id_pedido)
from pedidos p
join clientes c on p.id_cliente = c.id_cliente
group by c.nome;

--29. A quantidade de pedidos entre 15/04/2008 e 25/04/2008.
select count(id_pedido)
from pedidos
where data_pedido between '2008-04-15' and '2008-04-25';

--30. A quantidade de pedidos que o valor seja maior que R$ 1.000,00.
select count(id_pedido)
from pedidos
where valor > 1000;

--31. A quantidade de microcomputadores vendida.
select p.nome, sum(ppr.quantidade)
from pedidos_produtos ppr
join produtos p on ppr.id_produto = p.id_produto
where p.nome = 'Microcomputador'
group by p.nome;

--32. A quantidade de produtos vendida agrupado por produto.
select p.nome, sum(ppr.quantidade) as qnt
from pedidos_produtos ppr
join produtos p on ppr.id_produto = p.id_produto
group by p.nome
order by qnt desc;

--33. O somatório do valor dos produtos dos pedidos, agrupado por pedido.
select id_pedido, sum(valor_un*quantidade) as total
from pedidos_produtos
group by id_pedido
order by id_pedido;

--34. A quantidade de produtos agrupados por pedido.
select id_pedido, sum(quantidade)
from pedidos_produtos
group by id_pedido
order by id_pedido;

--35. O somatório dos valores unitários de todos os produtos.
select sum(valor) from produtos;

--36. A média dos produtos do pedido 6.
select avg(valor_un*quantidade)
from pedidos_produtos
where id_pedido = 6;

--37. O valor do maior produto do pedido.
select id_pedido, max(valor_un) as maior_vlr
from pedidos_produtos
group by id_pedido
order by id_pedido;

--38. O valor do menor produto do pedido.
select id_pedido, min(valor_un) as menor_vlr
from pedidos_produtos
group by id_pedido
order by id_pedido;

--39. O somatório da quantidade de produtos por pedido.
select id_pedido, sum(quantidade) as quant
from pedidos_produtos
group by id_pedido
order by id_pedido;

--40. O somatório da quantidade de todos os produtos do pedido.
select sum(quantidade) from pedidos_produtos;