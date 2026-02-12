---
BEGIN;

alter table clientes add constraint fk_cln_id_profissao foreign key (id_profissao)
references profissao (id_profissao);

COMMIT;

---
BEGIN;

alter table clientes 
add constraint fk_cln_nacionalidade 
foreign key (id_nacionalidade)
references nacionalidade (id_nacionalidade);

COMMIT;

---
BEGIN;

alter table clientes
add constraint fk_cln_bairro
foreign key (id_bairro)
references bairro(id_bairro);

COMMIT;

---
BEGIN;

alter table clientes
add constraint fk_cln_complemento
foreign key (id_complemento)
references complemento(id_complemento);

COMMIT;

---
BEGIN;

alter table municipio
add constraint fk_nmc_id_uf
foreign key (id_uf)
references uf (id_uf);

COMMIT;

---
BEGIN;

alter table clientes
add constraint fk_clientes_id_uf
foreign key (id_uf)
references uf (id_uf);

alter table clientes
add constraint fk_clientes_id_municipio
foreign key (id_municipio)
references municipio (id_municipio);

COMMIT;

---
BEGIN;

alter table transportadoras
add constraint fk_trn_id_municipio
foreign key (id_municipio)
references municipio (id_municipio);

COMMIT;

---
BEGIN;

alter table produtos
add constraint fk_prd_id_fornecedor
foreign key (id_fornecedor)
references fornecedores (id_fornecedor);

COMMIT;

---
BEGIN;

alter table pedidos
add constraint fk_ped_id_cliente
foreign key (id_cliente)
references clientes (id_cliente);

alter table pedidos
add constraint fk_ped_id_transportadora
foreign key (id_transportadora)
references transportadoras (id_transportadora);

alter table pedidos
add constraint fk_ped_id_vendedor
foreign key (id_vendedor)
references vendedores (id_vendedor);

COMMIT;

---
BEGIN;

alter table pedidos_produtos
add constraint fk_ppr_id_pedido
foreign key (id_pedido)
references pedidos (id_pedido);

alter table pedidos_produtos
add constraint fk_ppr_id_produto
foreign key (id_produto)
references produtos (id_produto);

COMMIT;

