---
BEGIN;

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

COMMIT;

---
BEGIN;

create table profissao (
	id_profissao integer not null,
	nome varchar(30) not null,

	constraint pk_prf_id_profissao primary key (id_profissao),
	constraint un_prf_nome unique (nome)
);

create table nacionalidade(
	id_nacionalidade integer not null,
	nome varchar(30) not null,

	constraint pk_ncn_id_nacionalidade primary key (id_nacionalidade),
	constraint un_ncn_nome unique (nome)
);

create table complemento (
	id_complemento integer not null,
	nome varchar(30) not null,

	constraint pk_cpl_id_complemento primary key (id_complemento),
	constraint un_cpl_nome unique (nome)
);

create table bairro (
	id_bairro int not null,
	nome varchar(30) not null,

	constraint pk_brr_id_bairro primary key (id_bairro),
	constraint un_brr_nome unique (nome)
);

COMMIT;

---
BEGIN;

create table uf (
	id_uf int not null,
	nome varchar(30) not null,
	sigla char(2) not null,

	constraint pk_ufd_id_uf primary key (id_uf),
	constraint un_ufd_nome unique (nome),
	constraint un_ufd_sigla unique (sigla)
);

COMMIT;

---
BEGIN;

create table municipio (
	id_municipio integer not null,
	nome varchar(30) not null,
	id_uf integer not null,

	constraint pk_mnc_id_municipio primary key (id_municipio),
	constraint un_nmc_nome unique (nome)
);

COMMIT;

---
BEGIN;

create table fornecedores (
	id_fornecedor integer not null,
	nome varchar(30) not null,

	constraint pk_frn_id_fornecedor primary key (id_fornecedor),
	constraint un_frn_nome unique (nome)
);

COMMIT;

---
BEGIN;

create table vendedores (
	id_vendedor integer not null,
	nome varchar(30) not null,

	constraint pk_vnd_id_vendedor primary key (id_vendedor),
	constraint un_vnd_nome unique (nome)
);

COMMIT;

---
BEGIN;

create table transportadoras (
	id_transportadora integer not null,
	id_municipio integer,
	nome varchar(30) not null,
	logradouro varchar(50),
	numero varchar(10),

	constraint pk_trn_id_transportadora primary key (id_transportadora),
	constraint un_trn_nome unique (nome)
);

COMMIT;

---
BEGIN;

create table produtos (
	id_produto integer not null,
	id_fornecedor integer not null,
	nome varchar(50) not null,
	valor numeric(10,2) not null,

	constraint pk_prd_id_produto primary key (id_produto)
);

COMMIT;

---
BEGIN;

create table pedidos (
	id_pedido integer not null,
	id_cliente integer not null,
	id_transportadora integer,
	id_vendedor integer not null,
	data_pedido date not null,
	valor numeric(10,2) not null,

	constraint pk_ped_id_pedido primary key (id_pedido)
);

SELECT * FROM PEDIDOS;

create table pedidos_produtos (
	id_pedido integer not null,
	id_produto integer not null,
	quantidade integer not null,
	valor_un numeric(10,2) not null
);

SELECT * FROM PEDIDOS_PRODUTOS;

COMMIT;