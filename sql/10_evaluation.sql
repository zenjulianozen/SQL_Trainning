---2. Crie uma tabela chamada EDITORA, de acordo com os dados abaixo: 
BEGIN;

create table editoras(
	idEditora INTEGER not null generated always as identity primary key,
	nome varchar(30) unique not null
);

COMMIT;

---3. Insira os dados abaixo na tabela EDITORA.
BEGIN;

insert into editoras(nome) values('Bookman');
insert into editoras(nome) values('Edgard Blusher');
insert into editoras(nome) values('Nova Terra');
insert into editoras(nome) values('Brasport');

COMMIT;

---4. Crie uma tabela chamada CATEGORIA, de acordo com os dados abaixo:
BEGIN;

create table categorias(
	idCategoria integer not null primary key generated always as identity,
	nome varchar(30) unique not null
);

COMMIT;

---5. Insira os dados abaixo na tabela CATEGORIA.
BEGIN;

insert into categorias(nome) values('Banco de Dados');
insert into categorias(nome) values('HTML');
insert into categorias(nome) values('Java');
insert into categorias(nome) values('PHP');

COMMIT;

---6. Crie uma tabela chamada AUTOR, de acordo com os dados abaixo: 
BEGIN;
create table autores(
	idAutor integer not null primary key generated always as identity,
	nome varchar(30) not null
);

COMMIT;

---7. Insira os dados abaixo na tabela AUTOR.
BEGIN;
insert into autores(nome) values('Waldemar Setzer');
insert into autores(nome) values('Flávio Soares');
insert into autores(nome) values('John Watson');
insert into autores(nome) values('Rui Rossi dos Santos');
insert into autores(nome) values('Antonio Pereira de Resende');
insert into autores(nome) values('Claudiney Calixto Lima');
insert into autores(nome) values('Evandro Carlos Teruel');
insert into autores(nome) values('Ian Graham');
insert into autores(nome) values('Fabrício Xavier');
insert into autores(nome) values('Pablo Dalloglio');

COMMIT;

---Crie uma tabela chamada LIVRO, de acordo com os dados abaixo:
BEGIN;
create table livros(
	idLivro integer not null generated always as identity primary key,
	idEditora integer not null,
	idCategoria integer not null,
	nome text unique not null
);

alter table livros
add constraint fk_idEditora
foreign key (idEditora)
references editoras(idEditora);

alter table livros
add constraint fk_idCategoria
foreign key (idCategoria)
references categorias(idCategoria);

select * from livros;

COMMIT;

---9. Insira os dados abaixo na tabela LIVRO.
---Função para simplificar:
BEGIN;

insert into livros (idEditora, idCategoria, nome)
select
	e.idEditora,
	c.idCategoria,
	lista.nome
from (
	values
		('Edgard Blusher', 'Banco de Dados', 'Banco de Dados – 1 Edição'),
		('Bookman', 'Banco de Dados', 'Oracle DataBase 11G Administração'),
		('Nova Terra', 'Java', 'Programação de Computadores em Java'),
		('Brasport', 'Java', 'Programação Orientada a Aspectos em Java'),
		('Brasport', 'HTML', 'HTML5 – Guia Prático'),
		('Nova Terra', 'HTML', 'XHTML: Guia de Referência para Desenvolvimento na Web'),
		('Bookman', 'PHP', 'PHP para Desenvolvimento Profissional'),
		('Edgard Blusher', 'PHP', 'PHP com Programação Orientada a Objetos')
) as lista(editora, categoria, nome)
join editoras e on e.nome = lista.editora
join categorias c on c.nome = lista.categoria;

COMMIT;

SELECT * FROM LIVROS;
