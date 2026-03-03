--
--1. O nome, a profissão, a nacionalidade, o complemento, o município, a unidade de federação, o bairro, 
--o CPF,o RG, a data de nascimento, o gênero (mostrar “Masculino” ou “Feminino”), o logradouro, o número,
--e as observações dos clientes.
create view tab_clientes as
select 
	cli.id_cliente as codigo,
	cli.nome, 
	prof.nome as profissao,
	nas.nome as nacionalidade,
	comp.nome as complemento,
	mun.nome as cidade,
	uf.sigla as uf,
	bair.nome as bairro,
	cli.cpf,
	cli.rg,
	case genero
		when 'F' then 'Feminino'
		when 'M' then 'Masculino'
		else 'Não informado'
	end as genero,
	logradouro,
	numero,
	observacoes	
from clientes cli
left join profissao prof on cli.id_profissao = prof.id_profissao
left join nacionalidade nas on cli.id_nacionalidade = nas.id_nacionalidade
left join complemento comp on cli.id_complemento = comp.id_complemento
left join municipio mun on cli.id_municipio = mun.id_municipio
left join uf uf on cli.id_uf = uf.id_uf
left join bairro bair on cli.id_bairro = bair.id_bairro;

select * from tab_clientes;

--2. O nome do município e o nome e a sigla da unidade da federação.
create view tab_cidades as
select mun.id_municipio as codigo, mun.nome as cidade, uf.nome as estado, uf.sigla
from municipio mun
left join uf uf on mun.id_uf = uf.id_uf;
select * from tab_cidades;

--3. O nome do produto, o valor e o nome do fornecedor dos produtos.
create view tab_produtos as
select prod.id_produto as codigo, prod.nome as produto, prod.valor, forn.nome as fornecedor
from produtos prod
left join fornecedores forn on prod.id_fornecedor = forn.id_fornecedor;
select * from tab_produtos;

--4. O nome da transportadora, o logradouro, o número, o nome da unidade de federação
--e a sigla da unidade de federação das transportadoras.
create view tab_transportadoras as
select 
	trn.id_transportadora as codigo,
	trn.nome as transportadora,
	uf.sigla as uf,
	mun.nome as cidade,
	trn.logradouro as endereco,
	trn.numero
from municipio mun
join transportadoras trn on mun.id_municipio = trn.id_municipio
join uf uf on mun.id_uf = uf.id_uf;
select * from tab_transportadoras;

-- 5. A data do pedido, o valor, o nome da transportadora, o nome do cliente e o nome do vendedor dos pedidos.
create view tab_pedidos as
select ped.id_pedido as codigo, ped.data_pedido, ped.valor, cli.nome as cliente, vend.nome as vendedor, trn.nome as transportadora
from pedidos ped
left join clientes cli on ped.id_cliente = cli.id_cliente
left join vendedores vend on ped.id_vendedor = vend.id_vendedor
left join transportadoras trn on ped.id_transportadora = trn.id_transportadora;
select * from tab_pedidos;

--6. O nome do produto, a quantidade, o valor unitário e o valor total dos produtos do pedido.
create view tab_items_ped as
select ppr.id_pedido, ppr.id_produto, prod.nome as produto, ppr.quantidade, ppr.valor_un, (ppr.quantidade * ppr.valor_un) as total
from pedidos_produtos as ppr
join produtos prod on ppr.id_produto = prod.id_produto;
select * from tab_items_ped;