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
	nome text unique not null,

constraint fk_idEditora
	foreign key (idEditora)
	references editoras(idEditora),

constraint fk_idCategoria
	foreign key (idCategoria)
	references categorias(idCategoria)
);

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

---10. Crie uma tabela chamada LIVRO_AUTOR, de acordo com os dados abaixo: 
BEGIN;
create table livro_autor (
	idLivro integer not null,
	idAutor integer not null,

	constraint pk_livro_autor
		primary key (idLivro, idAutor),

	constraint fk_idLivro
		foreign key (idLivro)
		references livros(idLivro)
		on delete cascade,

	constraint fk_idAutor
		foreign key (idAutor)
		references autores(idAutor)
);
COMMIT;

---11. Insira os dados abaixo na tabela LIVRO_AUTOR.
BEGIN;
insert into livro_autor (idLivro, idAutor)
select 
	l.idLivro,
	a.idAutor
from (
	values
		('Banco de Dados – 1 Edição', 'Waldemar Setzer'),
		('Banco de Dados – 1 Edição', 'Flávio Soares'),
		('Oracle DataBase 11G Administração', 'John Watson'),
		('Programação de Computadores em Java', 'Rui Rossi dos Santos'),
		('Programação Orientada a Aspectos em Java', 'Antonio Pereira de Resende'),
		('Programação Orientada a Aspectos em Java', 'Claudiney Calixto Lima'),
		('HTML5 – Guia Prático', 'Evandro Carlos Teruel'),
		('XHTML: Guia de Referência para Desenvolvimento na Web', 'Ian Graham'),
		('PHP para Desenvolvimento Profissional', 'Fabrício Xavier'),
		('PHP com Programação Orientada a Objetos', 'Pablo Dalloglio')
) as lista(livro, autor)
join livros l on l.nome = lista.livro
join autores a on a.nome = lista.autor;

COMMIT;

---12. Crie uma tabela chamada ALUNO, de acordo com os dados abaixo:
BEGIN;
create table alunos(
	idAluno integer not null generated always as identity primary key,
	nome text not null
);

COMMIT;

---13. Insira os dados abaixo na tabela ALUNO. 
BEGIN;
insert into alunos(nome)
values
	('Mario'),
	('João'),
	('Paulo'),
	('Pedro'),
	('Maria');

COMMIT;

---14. Crie uma tabela chamada EMPRESTIMO, de acordo com os dados abaixo: 
BEGIN;
create table emprestimos(
	idEmprestimo integer not null generated always as identity primary key,
	idAluno integer not null,
	data_emprestimo date not null default current_date,
	data_devolucao date not null,
	valor numeric(10,2) not null,
	devolvido char(1) not null,

	constraint fk_idAluno
		foreign key (idAluno)
		references alunos(idAluno)
);

COMMIT;

---15. Insira os dados abaixo na tabela EMPRESTIMO. 
BEGIN;
insert into emprestimos(idAluno, data_emprestimo, data_devolucao, valor, devolvido)
select
	a.idAluno,
	data_emprestimo::date,
	data_devolucao::date,
	valor,
	devolvido
from (
	values
		('Mario', '2012-05-02', '2012-05-12', 10.00, 'S'),
		('Mario', '2012-04-23', '2012-05-03', 5.00, 'N'),
		('João', '2012-05-10', '2012-05-20', 12.00, 'N'),
		('Paulo', '2012-05-10', '2012-05-20', 8.00, 'S'),
		('Pedro', '2012-05-05', '2012-05-15', 15.00, 'N'),
		('Pedro', '2012-05-07', '2012-07-17', 20.00, 'S'),
		('Pedro', '2012-05-08', '2012-05-18', 5.00, 'S')
) as lista(aluno, data_emprestimo, data_devolucao, valor, devolvido)
join alunos a on lista.aluno = a.nome;

COMMIT;


---16. Crie uma tabela chamada EMPRESTIMO_LIVRO, de acordo com os dados abaixo: 
BEGIN;
create table emprestimos_livros (
	idEmprestimo integer not null,
	idLivro integer not null,

	constraint pk_emprestimo_livro
		primary key (idEmprestimo, idLivro),

	constraint fk_idEmprestimo
		foreign key (idEmprestimo)
		references emprestimos(idEmprestimo),

	constraint fk_idLivro
		foreign key (idLivro)
		references livros(idLivro)
);

COMMIT;

---17. Insira os dados abaixo na tabela EMPRESTIMO_LIVRO.
BEGIN;
insert into emprestimos_livros(idEmprestimo, idLivro)
select
	idEmprestimo,
	l.idLivro
from (
	values
		(1, 'Banco de Dados – 1 Edição'),
		(2, 'Programação Orientada a Aspectos em Java'),
		(2, 'Programação de Computadores em Java'),
		(3, 'Oracle DataBase 11G Administração'),
		(3, 'PHP para Desenvolvimento Profissional'),
		(4, 'HTML5 – Guia Prático'),
		(7, 'Programação Orientada a Aspectos em Java'),
		(6, 'XHTML: Guia de Referência para Desenvolvimento na Web'),
		(6, 'Banco de Dados – 1 Edição'),
		(5, 'PHP com Programação Orientada a Objetos')
) as lista(idEmprestimo, nome)
join livros l on lista.nome = l.nome;

COMMIT;

---18. Crie os seguintes índices: 
BEGIN;
create index idx_data_emprestimo on emprestimos(data_emprestimo);
create index idx_data_devolucao on emprestimos(data_devolucao);
COMMIT;

---19. O nome dos autores em ordem alfabética.
select nome from autores
order by nome;

---20. O nome dos alunos que começam com a letra P.
select nome from alunos
where nome like 'P%';

---21. O nome dos livros da categoria Banco de Dados ou Java.
select l.idLivro, cat.nome, l.nome from livros l
join categorias cat on l.idCategoria = cat.idCategoria
where cat.nome = 'Banco de Dados' or cat.nome = 'Java';

---22. O nome dos livros da editora Bookman. 
select l.idLivro, edit.nome, l.nome from livros l
join editoras edit on l.idEditora = edit.idEditora
where edit.nome = 'Bookman';

---23. Os empréstimos realizados entre 05/05/2012 e 10/05/2012. 
select * from emprestimos
where data_emprestimo between '2012-05-05' and '2012-05-10'
order by data_emprestimo;

---24. Os empréstimos que não foram feitos entre 05/05/2012 e 10/05/2012
select * from emprestimos
where data_emprestimo not between '2012-05-05' and '2012-05-10'
order by data_emprestimo;

---25. Os empréstimos que os livros já foram devolvidos.
select * from emprestimos
where devolvido = 'S';

---26. A quantidade de livros.
select count(*) from livros;

---27. O somatório do valor dos empréstimos.
select sum(valor) from emprestimos;

---28. A média do valor dos empréstimos.
select avg(valor) from emprestimos;

---29. O maior valor dos empréstimos. 
select max(valor) from emprestimos;

---30. O menor valor dos empréstimos.
select min(valor) from emprestimos

---31. O somatório do valor do empréstimo que estão entre 05/05/2012 e 10/05/2012.
select sum(valor) from emprestimos
where data_emprestimo between '2012-05-05' and '2012-05-10';

---32. A quantidade de empréstimos que estão entre 01/05/2012 e 05/05/2012
select count(*) from emprestimos
where data_emprestimo between '2012-05-01' and '2012-05-05';

---33. O nome do livro, a categoria e a editora (LIVRO) – fazer uma view
BEGIN;
create view view_tabLivros as
select
	l.nome as livro,
	c.nome as categoria,
	e.nome as editora
from livros l
join editoras e on l.idEditora = e.idEditora
join categorias c on l.idCategoria = c.idCategoria;

COMMIT;

---34. O nome do livro e o nome do autor (LIVRO_AUTOR) – fazer uma view. 
BEGIN;
create view view_tabLivroAutores as
select
	l.nome as livro,
	a.nome as autor
from livro_autor la
join livros l on la.idLivro = l.idLivro
join autores a on la.idAutor = a.idAutor;
COMMIT;

---35. O nome dos livros do autor Ian Graham (LIVRO_AUTOR).
select
	l.nome as livro,
	a.nome as autor
from livro_autor la
join livros l on la.idLivro = l.idLivro
join autores a on la.idAutor = a.idAutor
where a.nome like 'Ian Graham';

---36. O nome do aluno, a data do empréstimo e a data de devolução (EMPRESTIMO).
select
	alunos.nome as nome,
	e.data_emprestimo as emprestimo,
	e.data_devolucao as devolucao
from emprestimos e
join alunos on e.idAluno = alunos.idAluno;

---37. O nome de todos os livros que foram emprestados (EMPRESTIMO_LIVRO). 
select * from emprestimos_livros
select
	distinct(livros.nome)
from emprestimos_livros el
join livros on el.idLivro = livros.idLivro;

---38. O nome da editora e a quantidade de livros de cada editora (LIVRO).
select
	e.nome as editora,
	count(l.idlivro) as quantidade
from livros l
join editoras e on l.idEditora = e.idEditora
group by e.nome;

---39. O nome da categoria e a quantidade de livros de cada categoria (LIVRO). 
select
	cat.nome as categoria,
	count(l.idlivro) as quantidade
from livros l
join categorias cat on l.idCategoria = cat.idCategoria
group by cat.nome;

---40. O nome do autor e a quantidade de livros de cada autor (LIVRO_AUTOR).
select
	a.nome as autor,
	count(l.idlivro) as quantidade
from livro_autor la
join autores a on la.idAutor = a.idAutor
join livros l on la.idLivro = l.idLivro
group by a.nome;

---41. O nome do aluno e a quantidade de empréstimo de cada aluno (EMPRESTIMO_LIVRO).
select
	a.nome,
	count(e.idEmprestimo) as quantidade
from emprestimos_livros el
join emprestimos e on el.idemprestimo = e.idemprestimo
join alunos a on e.idaluno = a.idaluno
group by a.nome;

---42. O nome do aluno e o somatório do valor total dos empréstimos de cada aluno (EMPRESTIMO). 
select
	a.nome,
	sum(e.valor) as total
from emprestimos e
join alunos a on e.idAluno = a.idAluno
group by a.nome;

---43. O nome do aluno e o somatório do valor total dos empréstimos de cada aluno 
---somente daqueles que o somatório for maior do que 7,00 (EMPRESTIMO)
select
	a.nome,
	sum(e.valor) as total
from emprestimos e
join alunos a on e.idAluno = a.idAluno
group by a.nome having sum(e.valor) > 7.00;