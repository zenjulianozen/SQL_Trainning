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