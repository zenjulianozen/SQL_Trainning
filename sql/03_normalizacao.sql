---
BEGIN;

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

COMMIT;

---
BEGIN;

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

COMMIT;

---
BEGIN;

alter table clientes rename column profissao to id_profissao;
alter table clientes drop id_profissao;
alter table clientes add id_profissao integer;

update clientes set id_profissao = 1 where id_cliente in (1, 9, 10, 12, 15, 17);
update clientes set id_profissao = 2 where id_cliente = 2;
update clientes set id_profissao = 3 where id_cliente = 3;
update clientes set id_profissao = 4 where id_cliente in (4, 5);
update clientes set id_profissao = 5 where id_cliente in (6, 7, 8, 13);

COMMIT;

---
BEGIN;

alter table clientes add id_nacionalidade integer;

update clientes set id_nacionalidade = 1 where id_cliente in (2, 1, 17, 11, 3, 4, 6, 14, 10);
update clientes set id_nacionalidade = 2 where id_cliente in (5, 7);
update clientes set id_nacionalidade = 3 where id_cliente = 8;
update clientes set id_nacionalidade = 4 where id_cliente in (9, 13);

alter table clientes drop nacionalidade;

COMMIT;

---
BEGIN;

alter table clientes add id_bairro integer;

update clientes set id_bairro = 1 where id_cliente in (12, 13, 1);
update clientes set id_bairro = 2 where id_cliente in (17, 2, 8, 9, 3, 6);
update clientes set id_bairro = 3 where id_cliente in (5, 4);
update clientes set id_bairro = 4 where id_cliente = 7;

alter table clientes drop bairro;

COMMIT;

---
BEGIN;

alter table clientes add id_complemento integer;

update clientes set id_complemento = 1 where id_cliente in (1, 12, 13, 9, 4);
update clientes set id_complemento = 2 where id_cliente in (2, 3, 7, 17);

alter table clientes drop complemento;

COMMIT;