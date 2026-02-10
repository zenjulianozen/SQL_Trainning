-- Exercícios 01:

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

---
select municipio, uf from clientes
order by municipio