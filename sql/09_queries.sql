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
select id_produto, nome, valor from produtos order by valor desc

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