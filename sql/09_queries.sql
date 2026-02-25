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

---
--1. O nome do cliente, a profissão, a nacionalidade, o logradouro, o número, 
--o complemento, o bairro, o município e a unidade de federação.
select * from clientes;
select cli.nome, prof.nome, nasc.nome, cli.logradouro, cli.numero, compl.nome, bair.nome, mun.nome, uf.sigla
from clientes cli
left join profissao prof on cli.id_profissao = prof.id_profissao
left join nacionalidade nasc on cli.id_nacionalidade = nasc.id_nacionalidade
left join complemento compl on cli.id_complemento = compl.id_complemento
left join bairro bair on cli.id_bairro = bair.id_bairro
left join municipio mun on cli.id_municipio = mun.id_municipio
left join uf uf on cli.id_uf = uf.id_uf;

--2. O nome do produto, o valor e o nome do fornecedor.
select prod.nome, prod.valor, forn.nome
from produtos prod
left join fornecedores forn on prod.id_fornecedor = forn.id_fornecedor;

--3. O nome da transportadora e o município.
select transp.nome, mun.nome
from transportadoras transp
left join municipio mun on transp.id_municipio = mun.id_municipio;

--4. A data do pedido, o valor, o nome do cliente, 
--o nome da transportadora e o nome do vendedor.
select ped.data_pedido, cli.nome, transp.nome, vend.nome, ped.valor
from pedidos ped
left join clientes cli on ped.id_cliente = cli.id_cliente
left join transportadoras transp on ped.id_transportadora = transp.id_transportadora
left join vendedores vend on ped.id_vendedor = vend.id_vendedor;

--5. O nome do produto, a quantidade e o valor unitário dos produtos do pedido.
select * from pedidos_produtos;
select ppr.id_pedido, prod.nome, ppr.quantidade, ppr.valor_un
from pedidos_produtos ppr
left join produtos prod on ppr.id_produto = prod.id_produto;

--6. O nome dos clientes e a data do pedido dos clientes que fizeram algum 
--pedido (ordenado pelo nome do cliente).
select cli.nome, ped.data_pedido
from pedidos ped
join clientes cli on ped.id_cliente = cli.id_cliente
order by cli.nome;

--7. O nome dos clientes e a data do pedido de todos os clientes, 
--independente se tenham feito pedido (ordenado pelo nome do cliente).
select cli.nome, ped.data_pedido
from pedidos ped
right join clientes cli on ped.id_cliente = cli.id_cliente
order by cli.nome;

--8. O nome da cidade e a quantidade de clientes que moram naquela cidade.
select mun.nome, count(cli.id_cliente) as clientes
from clientes cli
left join municipio mun on cli.id_municipio = mun.id_municipio
group by mun.nome
order by mun.nome;

--9. O nome do fornecedor e a quantidade de produtos de cada fornecedor.
select forn.nome, count(prod.id_produto) as produtos
from produtos prod
left join fornecedores forn on prod.id_fornecedor = forn.id_fornecedor
group by forn.nome
order by forn.nome;

--10.O nome do cliente e o somatório do valor do pedido (agrupado por cliente).
select cli.nome, sum(ped.valor)
from pedidos ped
left join clientes cli on ped.id_cliente = cli.id_cliente
group by cli.nome
order by cli.nome;

--11.O nome do vendedor e o somatório do valor do pedido (agrupado por vendedor).
select vend.nome, sum(ped.valor)
from pedidos ped
left join vendedores vend on ped.id_vendedor = vend.id_vendedor
group by vend.nome
order by vend.nome;

--12.O nome da transportadora e o somatório do valor do pedido (agrupado por transportadora).
select transp.nome, sum(ped.valor)
from pedidos ped
left join transportadoras transp on ped.id_transportadora = transp.id_transportadora
group by transp.nome
order by transp.nome;

--13.O nome do cliente e a quantidade de pedidos de cada um (agrupado por cliente).
select cli.nome, count(ped.id_pedido)
from pedidos ped
left join clientes cli on ped.id_cliente = cli.id_cliente
group by cli.nome
order by cli.nome;

--14.O nome do produto e a quantidade vendida (agrupado por produto).
select prod.nome, sum(ppr.quantidade)
from pedidos_produtos ppr
left join produtos prod on ppr.id_produto = prod.id_produto
group by prod.nome
order by prod.nome;

--15.A data do pedido e o somatório do valor dos produtos do 
--pedido (agrupado pela data do pedido). --- traduzindo o professor, o total vendido por dia.
select ped.data_pedido, sum(ped.valor)
from pedidos ped
group by ped.data_pedido
order by ped.data_pedido;

--16.A data do pedido e a quantidade de produtos do pedido (agrupado pela data do pedido).
-- tradução, a quantidade de itens vendidos por dia.
select ped.data_pedido, sum(ppr.quantidade)
from pedidos_produtos ppr
left join pedidos ped on ppr.id_pedido = ped.id_pedido
group by ped.data_pedido
order by ped.data_pedido;

---
--1. O nome do cliente e somente o mês de nascimento. 
--Caso a data de nascimento não esteja preenchida mostrar a mensagem “Não informado”.
select 
	nome,
	coalesce(
		extract(month from data_nascimento)::text, 'Não informado'
	) as mes_nascimento
from clientes;

--2. O nome do cliente e somente o nome do mês de nascimento (Janeiro, Fevereiro etc). 
--Caso a data de nascimento não esteja preenchida mostrar a mensagem “Não informado”.
select
	nome,
	case
		when extract(month from data_nascimento) = 1 then 'Janeiro'
		when extract(month from data_nascimento) = 2 then 'Fevereiro'
		when extract(month from data_nascimento) = 3 then 'Março'
		when extract(month from data_nascimento) = 4 then 'Abril'
		when extract(month from data_nascimento) = 5 then 'Maio'
		when extract(month from data_nascimento) = 6 then 'Junho'
		when extract(month from data_nascimento) = 7 then 'Julho'
		when extract(month from data_nascimento) = 8 then 'Agosto'
		when extract(month from data_nascimento) = 9 then 'Setembro'
		when extract(month from data_nascimento) = 10 then 'Outubro'
		when extract(month from data_nascimento) = 11 then 'Novembro'
		when extract(month from data_nascimento) = 12 then 'Dezembro'
		else 'Não informado'
	end as mes_nascimento
from clientes;

--ou
select
	nome,
	case extract(month from data_nascimento)
		when 1 then 'Janeiro'
		when 2 then 'Fevereiro'
		when 3 then 'Março'
		when 4 then 'Abril'
		when 5 then 'Maio'
		when 6 then 'Junho'
		when 7 then 'Julho'
		when 8 then 'Agosto'
		when 9 then 'Setembro'
		when 10 then 'Outubro'
		when 11 then 'Novembro'
		when 12 then 'Dezembro'
		else 'Não informado'
	end as mes_nascimento
from clientes;

--ou
-- TIP: 'TM Month' onde TM = translation mode
select 
	nome,
	coalesce(
	to_char(data_nascimento, 'TMMonth'), 
	'Não informado'
	) as mes_nascimento
from clientes;

--3. O nome do cliente e somente o ano de nascimento. 
--Caso a data de nascimento não esteja preenchida mostrar a mensagem “Não informado”.
select
	nome,
	coalesce(
		extract(year from data_nascimento)::text, 'Não informado'
	) as ano_nascimento
from clientes;

--4. O caractere 5 até o caractere 10 de todos os municípios.
select nome, substring(nome from 5 for 10) from municipio;
select nome, substring(nome, 5, 10) from municipio;

--5. O nome de todos os municípios em letras maiúsculas.
select upper(nome) from municipio;

--6. O nome do cliente e o gênero. 
--Caso seja M mostrar “Masculino”, senão mostrar “Feminino”.
select
	nome,
	case
		when genero = 'M' then 'Masculino'
		when genero = 'F' then 'Feminino'
		else 'Não informado'
	end as genero
from clientes;

--7. O nome do produto e o valor. 
--Caso o valor seja maior do que R$ 500,00 mostrar a mensagem “Acima de 500”, 
--caso contrário, mostrar a mensagem “Abaixo de 500”.
select
	nome,
	valor,
	case
		when valor > 500 then 'Acima de 500'
		when valor = 500 then '500'
		else 'Abaixo de 500'
	end as faixa
from produtos;

---
--1. O nome dos clientes que moram na mesma cidade do Manoel. 
--Não deve ser mostrado o Manoel.
select 
	cli.nome,
	cli.id_municipio,
	mun.nome as cidade
from clientes cli
join municipio mun on cli.id_municipio = mun.id_municipio
where cli.id_municipio = (select id_municipio from clientes where nome = 'Manoel')
and cli.nome <> 'Manoel';

--2. A data e o valor dos pedidos que o valor do pedido seja menor que 
--a média de todos os pedidos.
select
	data_pedido,
	valor
from pedidos
where valor < (select avg(valor) from pedidos);

--3. A data,o valor, o cliente e o vendedor dos pedidos que possuem 2 ou mais produtos.
select
	ped.data_pedido,
	ped.valor,
	cli.nome as cliente,
	ven.nome as vendedor
from pedidos ped
join clientes cli on ped.id_cliente = cli.id_cliente
join vendedores ven on ped.id_vendedor = ven.id_vendedor
where (select count(*) from pedidos_produtos ppr where ppr.id_pedido = ped.id_pedido) >= 2;

--4. O nome dos clientes que moram na mesma cidade da transportadora BS. Transportes.
select cli.nome, mun.id_municipio, mun.nome 
from clientes cli
join municipio mun on cli.id_municipio = mun.id_municipio
where mun.id_municipio = (
	select mun.id_municipio 
	from transportadoras trn
	join municipio mun on trn.id_municipio = mun.id_municipio
	where trn.nome = 'BS. Transportes'
);

--5. O nome do cliente e o município dos clientes que estão localizados 
--no mesmo município de qualquer uma das transportadoras.
select cli.nome, mun.id_municipio, mun.nome
from clientes cli
join municipio mun on cli.id_municipio = mun.id_municipio
where mun.id_municipio in (select id_municipio from transportadoras);

--6. Atualizar o valor do pedido em 5% para os pedidos que o somatório 
--do valor total dos produtos daquele pedido seja maior que a média do valor total
--de todos os produtos de todos os pedidos.
BEGIN;

update pedidos set valor = valor * 1.05
where 
	(select sum(ppr.valor_un) from pedidos_produtos ppr where id_pedido = ppr.id_pedido)
	>
	(select avg(valor_un) from pedidos_produtos);

ROLLBACK; -- para não modificar a bas de dados com exercício.

--7. O nome do cliente e a quantidade de pedidos feitos pelo cliente.
select cli.nome, count(ped.id_pedido) as quant_pedidos
from clientes cli
left join pedidos ped on cli.id_cliente = ped.id_cliente
group by cli.nome;

--8. Para revisar, refaça o exercício anterior (número 07) utilizando group by 
--e mostrando somente os clientes que fizeram pelo menos um pedido.
select cli.nome, count(ped.id_pedido) as quant_pedidos
from clientes cli
join pedidos ped on cli.id_cliente = ped.id_cliente
group by cli.nome;