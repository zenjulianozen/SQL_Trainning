---
BEGIN;

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

COMMIT;

-- Exercícios 02:
BEGIN;

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

COMMIT;

--
BEGIN;

insert into profissao (id_profissao, nome) values (1, 'Estudante');
insert into profissao (id_profissao, nome) values (2, 'Engenheiro');
insert into profissao (id_profissao, nome) values (3, 'Pedreiro');
insert into profissao (id_profissao, nome) values (4, 'Jornalista');
insert into profissao (id_profissao, nome) values (5, 'Professor');

insert into nacionalidade (id_nacionalidade, nome) values (1, 'Brasileira');
insert into nacionalidade (id_nacionalidade, nome) values (2, 'Italiana');
insert into nacionalidade (id_nacionalidade, nome) values (3, 'Norte Amerciana');
insert into nacionalidade (id_nacionalidade, nome) values (4, 'Alemã');

insert into complemento (id_complemento, nome) values (1, 'Casa');
insert into complemento (id_complemento, nome) values (2, 'Apartamento');

insert into bairro (id_bairro, nome) values (1, 'Cidade Nova');
insert into bairro (id_bairro, nome) values (2, 'Centro');
insert into bairro (id_bairro, nome) values (3, 'São Pedro');
insert into bairro (id_bairro, nome) values (4, 'Santa Rosa');

COMMIT;

---
BEGIN;

insert into uf (id_uf, nome, sigla) values (1, 'Santa Catarina', 'SC');
insert into uf (id_uf, nome, sigla) values (2, 'Paraná', 'PR');
insert into uf (id_uf, nome, sigla) values (3, 'São Paulo', 'SP');
insert into uf (id_uf, nome, sigla) values (4, 'Minas Gerais', 'MG');
insert into uf (id_uf, nome, sigla) values (5, 'Rio Grande do Sul', 'RS');
insert into uf (id_uf, nome, sigla) values (6, 'Rio de Janeiro', 'RJ');

COMMIT;

---
BEGIN;

insert into municipio (id_municipio, nome, id_uf) values (1, 'Porto União', 1);
insert into municipio (id_municipio, nome, id_uf) values (2, 'Canoinhas', 1);
insert into municipio (id_municipio, nome, id_uf) values (3, 'Porto Vitória', 2);
insert into municipio (id_municipio, nome, id_uf) values (4, 'General Carneiro', 2);
insert into municipio (id_municipio, nome, id_uf) values (5, 'São Paulo', 3);
insert into municipio (id_municipio, nome, id_uf) values (6, 'Rio de Janeiro', 6);
insert into municipio (id_municipio, nome, id_uf) values (7, 'Uberlândia', 4);
insert into municipio (id_municipio, nome, id_uf) values (8, 'Porto Alegre', 5);
insert into municipio (id_municipio, nome, id_uf) values (9, 'União da Vitória', 2);
insert into municipio (id_municipio, nome, id_uf) values (10, 'Curitiba', 2);

COMMIT;

---
BEGIN;

insert into vendedores (id_vendedor, nome) values (1, 'André');
insert into vendedores (id_vendedor, nome) values (2, 'Alisson');
insert into vendedores (id_vendedor, nome) values (3, 'José');
insert into vendedores (id_vendedor, nome) values (4, 'Ailton');
insert into vendedores (id_vendedor, nome) values (5, 'Maria');
insert into vendedores (id_vendedor, nome) values (6, 'Suelem');
insert into vendedores (id_vendedor, nome) values (7, 'Aline');
insert into vendedores (id_vendedor, nome) values (8, 'Silvana');

COMMIT;

---
BEGIN;

insert into fornecedores (id_fornecedor, nome) values (1, 'Cap. Computadores');
insert into fornecedores (id_fornecedor, nome) values (2, 'AA. Computadores');
insert into fornecedores (id_fornecedor, nome) values (3, 'BB. Máquinas');

COMMIT;

---
BEGIN;

insert into transportadoras (id_transportadora , id_municipio, nome, logradouro, numero)
values (1, 2, 'BS. Transportes', 'Rua das Limas', '01');
insert into transportadoras (id_transportadora , id_municipio, nome, logradouro, numero)
values (2, 3, 'União Transportes', null, null);

COMMIT;

---
BEGIN;

insert into produtos (id_produto, id_fornecedor, nome, valor)
values (1, 1, 'Microcopmutador', 800);
insert into produtos (id_produto, id_fornecedor, nome, valor)
values (2, 1, 'Monitor', 500);
insert into produtos (id_produto, id_fornecedor, nome, valor)
values (3, 2, 'Placa Mãe', 200);
insert into produtos (id_produto, id_fornecedor, nome, valor)
values (4, 2, 'HD', 150);
insert into produtos (id_produto, id_fornecedor, nome, valor)
values (5, 2, 'Placa de Vídeo', 200);
insert into produtos (id_produto, id_fornecedor, nome, valor)
values (6, 3, 'Memória RAM', 100);
insert into produtos (id_produto, id_fornecedor, nome, valor)
values (7, 1, 'Case', 35);

COMMIT;