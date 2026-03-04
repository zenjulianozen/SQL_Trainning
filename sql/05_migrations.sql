--- 1. Criar sequências para todas as outras tabelas da base de dados

---a. Cliente
BEGIN;

alter table clientes
alter column id_cliente drop default;

alter table clientes
alter column id_cliente
add generated always as identity;

COMMIT;

--b. Complemento
BEGIN;

alter table complemento
alter column id_complemento drop default;

alter table complemento
alter column id_complemento
add generated always as identity;

COMMIT;

--c. Fornecedor
BEGIN;

alter table fornecedores
alter column id_municipio drop default;

alter table fornecedores
alter column id_municipio
add generated always as identity;

COMMIT;

--d. Município
BEGIN;

alter table municipio
alter column id_municipio drop default;

alter table municip
alter column id_municipio
add generated always as identity;

COMMIT;

--1. Adicione valores default na tabela de produtos do pedido
--a. Quantidade com o valor 1
BEGIN;

alter table pedidos_produtos
alter column quantidade
set default 1;

COMMIT;

--b. Valor unitário com o valor 0
BEGIN;

alter table pedidos_produtos
alter column valor_un
set default 0;

COMMIT;

--2. Adicione valor default na tabela de produtos
--a. Valor com o valor 0
BEGIN;

alter table produtos
alter column valor
set default 0;

COMMIT;


---1. Adicione índices nas seguintes tabelas e campos
--a. Pedido – data do pedido
--b. Produto – nome

BEGIN;

create index idx_data_pedido
on pedidos(data_pedido);

create index idx_produto
on produtos(nome);

COMMIT;