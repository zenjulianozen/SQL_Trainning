--- Create Table

CREATE TABLE clientes (
	id_cliente INTEGER NOT NULL,
	nome VARCHAR(50) NOT NULL,
	cpf CHAR(11),
	rg VARCHAR(15),
	data_nascimento DATE,
	genero CHAR(1),
	profissao VARCHAR(30),
	nacionalidade VARCHAR(30),
	logradouro VARCHAR(30),
	numero VARCHAR(10),
	complemento VARCHAR(30),
	bairro VARCHAR(30),
	municipio VARCHAR(30),
	uf VARCHAR(30),
	observacoes TEXT,

	-- Primary key
	CONSTRAINT pk_cln_id_cliente PRIMARY KEY (id_cliente)
);


--- Instert Data

INSERT INTO clientes (id_cliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade,
	logradouro, numero, complemento, bairro, municipio, uf)
VALUES (1, 'Manoel', '88828383821', '32323', '2001-01-30', 'M', 'Estudante', 'Brasileira', 'Rua Joaquim Nabuco', '23', 
'Casa', 'Cidade Nova', 'Porto União', 'SC');

INSERT INTO clientes (id_cliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade,
	logradouro, numero, complemento, bairro, municipio, uf)
VALUES (2, 'Geraldo', '12343299929', '56565', '1987-01-04', 'M', 'Engenheiro', 'Brasileira', 'Rua das Limas', '200', 
'AP.', 'Centro', 'P. União', 'SC');

INSERT INTO clientes (id_cliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade,
	logradouro, numero, complemento, bairro, municipio, uf)
VALUES (3, 'Carlos', '87732323227', '55463', '1967-10-01', 'M', 'Pedreiro', 'Brasileira', 'Rua das Laranjeiras', '300', 
'Apart.', 'Cto.', 'Canoinhas', 'SC');

INSERT INTO clientes (id_cliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade,
	logradouro, numero, complemento, bairro, municipio, uf)
VALUES (4, 'Adriana', '12321222122', '98777', '1989-09-10', 'F', 'Jornalista', 'Brasileira', 'Rua das Limas', '240', 
'Casa', 'São Pedro', 'Porto Vitória', 'PR');

INSERT INTO clientes (id_cliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade,
	logradouro, numero, complemento, bairro, municipio, uf)
VALUES (5, 'Amanda', '99982838828', '28382', '1991-03-04', 'F', 'Jorn.', 'Italiana', 'Av. Central', '100', 
null, 'São Pedro', 'General Carneiro', 'PR');

INSERT INTO clientes (id_cliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade,
	logradouro, numero, complemento, bairro, municipio, uf)
VALUES (6, 'Ângelo', '99982828181', null, '2000-01-01', 'M', 'Professor', 'Brasileiro', 'Av. Beira Mar', '300', 
null, 'Ctr.', 'São Paulo', 'SP');

INSERT INTO clientes (id_cliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade,
	logradouro, numero, complemento, bairro, municipio, uf)
VALUES (7, 'Anderson', null, null, null, 'M', 'Prof.', 'Italiano', 'Av. Brasil', '100', 
'Apartamento', 'Santa Rosa', 'Rio de Janeiro', 'SP');

INSERT INTO clientes (id_cliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade,
	logradouro, numero, complemento, bairro, municipio, uf)
VALUES (8, 'Camila', '9998282828', null, '2001-10-10', 'F', 'Professora', 'Norte Americana', 'Rua Central', '4333', 
null, 'Centro', 'Uberlândia', 'MG');

INSERT INTO clientes (id_cliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade,
	logradouro, numero, complemento, bairro, municipio, uf)
VALUES (9, 'Cristiano', null, null, null, 'M', 'Estudante', 'Alemã', 'Rua do Centro', '877', 
'Casa', 'Centro', 'Porto Alegre', 'RS');

INSERT INTO clientes (id_cliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade,
	logradouro, numero, complemento, bairro, municipio, uf)
VALUES (10, 'Fabrício', '8828282828', '32323', null, 'M', 'Estudante', 'Brasileiro', null, null, 
null, null, 'PU', 'SC');

INSERT INTO clientes (id_cliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade,
	logradouro, numero, complemento, bairro, municipio, uf)
VALUES (11, 'Fernanda', null, null, null, 'F', null, 'Brasileira', null, null, 
null, null, 'Porto União', 'SC');

INSERT INTO clientes (id_cliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade,
	logradouro, numero, complemento, bairro, municipio, uf)
VALUES (12, 'Gilmar', '88881818181', '888', '2000-02-10', 'M', 'Estud.', null, 'Rua das Laranjeiras', '200', 
'Casa', 'Cidade N.', 'São Paulo', 'SP');

INSERT INTO clientes (id_cliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade,
	logradouro, numero, complemento, bairro, municipio, uf)
VALUES (13, 'Diego', '1010191919', '111939', null, 'M', 'Professor', 'Alemão', 'Rua Central', '455', 
'Casa', 'Cidade N.', 'São Paulo', 'SP');

INSERT INTO clientes (id_cliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade,
	logradouro, numero, complemento, bairro, municipio, uf)
VALUES (14, 'Jeferson', null, null, '1983-07-01', 'M', null, 'Brasileiro', null, null, 
null, null, 'União da Vitória', 'PR');	

INSERT INTO clientes (id_cliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade,
	logradouro, numero, complemento, bairro, municipio, uf)
VALUES (15, 'Jessica', null, null, null, 'F', 'Estudante', null, null, null, 
null, null, 'União da Vitória', 'PR');


-- Queries 01

select * from clientes;
select nome, data_nascimento from clientes;
select nome, data_nascimento as "Data de nascimento" from clientes;
select cpf, rg from clientes;
select 'CPF: ' || cpf || ' / RG : ' || rg as "CPF e RG" from clientes;
select * from clientes limit 3;


-- Queries 02

select nome, data_nascimento 
from clientes
where data_nascimento > '2000-01-01';

select nome
from clientes
where nome like 'C%';

select nome
from clientes
where nome like '%c%';

select nome, data_nascimento
from clientes
where data_nascimento between '1990-01-01' and '1998-01-01';

select nome, rg
from clientes
where rg is null;

select nome
from clientes
order by nome;

select nome 
from clientes
order by nome desc;

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


-- Update e Delete:

select * 
from clientes;

update clientes
set nome = 'Teste'
where id_cliente = 1;

update clientes
set nome = 'Adriano', genero = 'M', numero = '241'
where id_cliente = 4;

insert 
into clientes (id_cliente, nome)
values (16, 'João');

delete
from clientes
where id_cliente = 16;


-- Exercícios 02:

-- 1. Insira os dados abaixo na tabela de clientes
insert into clientes (id_cliente, nome, cpf, rg, data_nascimento, genero, profissao, 
municipio, uf)
values (16, 'Maicon', '12349596421', '1234', '1965-10-10', 'F', 'Empresário', 
'Florianópolis', 'PR');

insert into clientes (id_cliente, nome, rg, genero, profissao, nacionalidade, logradouro,
numero, complemento, bairro, municipio, uf)
values (17, 'Getúlio', '4631', 'F', 'Estudante', 'Brasileira', 'Rua Central', '343',
'Apartamento', 'Centro', 'Curitiba', 'PR');

insert into clientes(id_cliente, nome, genero, profissao, nacionalidade, numero, 
complemento)
values(18, 'Sandra', 'M', 'Professor', 'Italiana', '12', 'Bloco A');

-- 2. Altere os dados do cliente Maicon
-- a. O CPF para 45390569432
-- b. O gênero para M
-- c. A nacionalidade para Brasileira
-- d. O UF para SC

update clientes
set cpf = '45390569432', genero = 'M', nacionalidade = 'Brasileira', uf = 'SC'
where nome = 'Maicon';

-- 3. Altere os dados do cliente Getúlio
-- a. A data de nascimento para 01/04/1978
-- b. O gênero para M

update clientes
set data_nascimento = '1978-04-01', genero = 'M'
where nome = 'Getúlio';

-- 4. Altere os dados da cliente Sandra
-- a. O gênero para F
-- b. A profissão para Professora
-- c. O número para 123

update clientes
set genero = 'F', profissao = 'Professora', numero = '123'
where nome = 'Sandra';

-- 5. Apague o cliente Maicon

delete
from clientes
where nome = 'Maicon';

-- 6. Apague a cliente Sandra

delete
from clientes
where nome = 'Sandra';

select *
from clientes;


-- Criação de novas tabelas:

create table profissao (
	id_profissao integer not null,
	nome varchar(30) not null,

	constraint pk_prf_id_profissao primary key (id_profissao),
	constraint un_prf_nome unique (nome)
)

insert into profissao (id_profissao, nome) values (1, 'Estudante');
insert into profissao (id_profissao, nome) values (2, 'Engenheiro');
insert into profissao (id_profissao, nome) values (3, 'Pedreiro');
insert into profissao (id_profissao, nome) values (4, 'Jornalista');
insert into profissao (id_profissao, nome) values (5, 'Professor');

select * from profissao;

create table nacionalidade(
	id_nacionalidade integer not null,
	nome varchar(30) not null,

	constraint pk_ncn_id_nacionalidade primary key (id_nacionalidade),
	constraint un_ncn_nome unique (nome)
);

select nacionalidade from clientes;

insert into nacionalidade (id_nacionalidade, nome) values (1, 'Brasileira');
insert into nacionalidade (id_nacionalidade, nome) values (2, 'Italiana');
insert into nacionalidade (id_nacionalidade, nome) values (3, 'Norte Amerciana');
insert into nacionalidade (id_nacionalidade, nome) values (4, 'Alemã');

select * from nacionalidade;

create table complemento (
	id_complemento integer not null,
	nome varchar(30) not null,

	constraint pk_cpl_id_complemento primary key (id_complemento),
	constraint un_cpl_nome unique (nome)
);

insert into complemento (id_complemento, nome) values (1, 'Casa');
insert into complemento (id_complemento, nome) values (2, 'Apartamento');

select * from complemento;

create table bairro (
	id_bairro int not null,
	nome varchar(30) not null,

	constraint pk_brr_id_bairro primary key (id_bairro),
	constraint un_brr_nome unique (nome)
);

insert into bairro (id_bairro, nome) values (1, 'Cidade Nova');
insert into bairro (id_bairro, nome) values (2, 'Centro');
insert into bairro (id_bairro, nome) values (3, 'São Pedro');
insert into bairro (id_bairro, nome) values (4, 'Santa Rosa');

select * from bairro;

-- Boas práticas
-- dica: ao invés de criar o id apenas como not null, use "id INT GENERATED ALWAYS AS IDENTITY"
-- também manter como pardão apenas "id" ao invés de id+sufixo

-- Relacionamento entre tabelas:

-- Profissões:
select nome, profissao from clientes;

alter table clientes 
rename column profissao to id_profissao;
select nome, id_profissao from clientes;
-- estudante: 1, 9, 10, 12, 15, 17
-- engenheiro: 2
-- pedreito: 3
-- jornalista: 4, 5
-- professor: 6, 7, 8, 13
-- null: 11, 14
alter table clientes drop id_profissao;
alter table clientes add id_profissao integer;

select * from clientes;

alter table clientes 
add constraint fk_cln_id_profissao foreign key (id_profissao)
references profissao (id_profissao);

update clientes set id_profissao = 1 where id_cliente in (1, 9, 10, 12, 15, 17);
update clientes set id_profissao = 2 where id_cliente = 2;
update clientes set id_profissao = 3 where id_cliente = 3;
update clientes set id_profissao = 4 where id_cliente in (4, 5);
update clientes set id_profissao = 5 where id_cliente in (6, 7, 8, 13);

select id_cliente, nome, id_profissao from clientes;

select * from profissao;

-- Boas práticas:
-- Lembre-se: declare BEGIN, ROLLBACK/COMMIT em queries que alterem/criem/deletem dados
-- EXEMPLO:

--BEGIN;

--ALTER TABLE clientes ADD COLUMN id_profissao INT;

--UPDATE clientes SET id_profissao = 1 WHERE id_cliente IN (...);

--ALTER TABLE clientes
--ADD CONSTRAINT fk_clientes_profissao
--FOREIGN KEY (id_profissao) REFERENCES profissao(id);

--COMMIT; ou rollback


-- Nacionalidades
BEGIN;

select id_cliente, nacionalidade 
from clientes
order by nacionalidade;

alter table clientes add id_nacionalidade integer;

select * from nacionalidade
-- 1: Brasileira (2, 1, 17, 11, 3, 4, 6, 14, 10)
-- 2: Italiana(5, 7)
-- 3: Norte Americana (8)
-- 4: Alemã (9, 13)

update clientes set id_nacionalidade = 1 where id_cliente in (2, 1, 17, 11, 3, 4, 6, 14, 10);
update clientes set id_nacionalidade = 2 where id_cliente in (5, 7);
update clientes set id_nacionalidade = 3 where id_cliente = 8;
update clientes set id_nacionalidade = 4 where id_cliente in (9, 13);

alter table clientes 
add constraint fk_cln_nacionalidade 
foreign key (id_nacionalidade)
references nacionalidade (id_nacionalidade);

select count(*)
from clientes
where id_nacionalidade is null;

alter table clientes drop nacionalidade;

select id_cliente, id_nacionalidade from clientes

COMMIT;

--- Bairros
select * from bairro
-- 1: Cidade Nova (12, 13, 1)
-- 2: Centro (17, 2, 8, 9, 3, 6)
-- 3: São Pedro (5, 4)
-- 4: Santa Rosa (7)

BEGIN;

alter table clientes add id_bairro integer;

select id_cliente, bairro 
from clientes 
order by bairro;

update clientes set id_bairro = 1 where id_cliente in (12, 13, 1);
update clientes set id_bairro = 2 where id_cliente in (17, 2, 8, 9, 3, 6);
update clientes set id_bairro = 3 where id_cliente in (5, 4);
update clientes set id_bairro = 4 where id_cliente = 7;

alter table clientes
add constraint fk_cln_bairro
foreign key (id_bairro)
references bairro(id_bairro);

select count(*)
from clientes
where id_bairro is null;

alter table clientes drop bairro;

select id_cliente, id_bairro
from clientes
order by id_bairro

COMMIT;


-- Complementos:
select * from complemento;
-- 1: Casa (1, 12, 13, 9, 4)
-- 2: Apartamento (2, 3, 7, 17)

BEGIN;

select id_cliente, complemento
from clientes
order by complemento;

alter table clientes add id_complemento integer;

update clientes set id_complemento = 1 where id_cliente in (1, 12, 13, 9, 4);
update clientes set id_complemento = 2 where id_cliente in (2, 3, 7, 17);

select count(*)
from clientes
where id_complemento is null;

alter table clientes
add constraint fk_cln_complemento
foreign key (id_complemento)
references complemento(id_complemento);

alter table clientes drop complemento;

select id_cliente, id_complemento
from clientes
order by id_complemento;

COMMIT;