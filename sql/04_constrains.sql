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