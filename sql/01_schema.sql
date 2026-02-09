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