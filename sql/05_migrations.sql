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
alter column id_fornecedor drop default;

alter table fornecedores
alter column id_fornecedor
add generated always as identity;

COMMIT;

--d. Município
BEGIN;

alter table municipio
alter column id_municipio drop default;

alter table municipio
alter column id_municipio
add generated always as identity;

COMMIT;

--e. Nacionalidade
BEGIN;

alter table nacionalidade
alter column id_nacionalidade drop default;

alter table nacionalidade
alter column id_nacionalidade
add generated always as identity;

COMMIT;

--f. Pedido
BEGIN;

alter table pedidos
alter column id_pedido drop default;

alter table pedidos
alter column id_pedido
add generated always as identity;

COMMIT;

--g. Pedido produto (verificar se é necessário)
select * from pedidos_produtos
--não é necessário

--h. Profissão
BEGIN;

alter table profissao
alter column id_profissao drop default;

alter table profissao
alter column id_profissao
add generated always as identity;

COMMIT;

--i. Transportadora
BEGIN;

alter table transportadoras
alter column id_transportadora drop default;

alter table transportadoras
alter column id_transportadora
add generated always as identity;

COMMIT;

--j. UF
BEGIN;

alter table uf
alter column id_uf drop default;

alter table uf
alter column id_uf
add generated always as identity;

COMMIT;

--k. Vendedor
BEGIN;

alter table vendedores
alter column id_vendedor drop default;

alter table vendedores
alter column id_vendedor
add generated always as identity;

COMMIT;

--prof esqueceu: produtos
BEGIN;

alter table produtos
alter column id_produto drop default;

alter table produtos
alter column id_produto
add generated always as identity;

COMMIT;

--prof esqueceu: bairro
BEGIN;

alter table bairro
alter column id_bairro drop default;

alter table bairro
alter column id_bairro
add generated always as identity;

COMMIT;
