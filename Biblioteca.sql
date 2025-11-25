
/* 1.Crie um banco de dados chamado biblioteca_pessoal. */
CREATE SCHEMA IF NOT EXISTS biblioteca_pessoal DEFAULT
CHARACTER SET utf8;

/* 2.selecione o banco de dados para trabalhar. */
use biblioteca_pessoal;

/*3.Crie a tabela autor com os seguintes campos:*/
create table autor (
idautor int not null auto_increment,
nome VARCHAR(100) NOT NULL,
nacionalidade varchar (50),
primary key(idautor)
);
drop table autor;
show tables;
show create table autor;
select * from autor;

/*4.Crie a tabela livro com os seguintes campos:*/
create table livro (
idlivro int auto_increment,
titulo varchar(150) not null, 
ano int,
idautor int,
primary key(idlivro),
foreign key (idautor) references autor(idautor)
);

/*5.Crie uma tabela chamada categoria com os seguintes campos:*/
create table categoria (
idcategoria int auto_increment,
nome varchar(50) NOT NULL,
primary key (idcategoria)
);

/*6.Altere a tabela livro para incluir uma nova coluna chamada editora (texto de até 100
caracteres).*/
alter table livro
add column editora varchar(100);
select * from livro;

/*7.Altere a tabela autor para modificar o tamanho do campo nacionalidade para 100
caracteres.*/
alter table autor
modify nacionalidade varchar(100);

/*8.Renomeie a tabela livro para livros.*/
rename table livro to livros;

/*9."Tabela que armazena os livros
cadastrados na biblioteca pessoal."*/
alter table livros
comment= "Tabela que armazena os livros cadastrados na biblioteca pessoal";

/*10."Título completo da obra."*/
ALTER TABLE livros
MODIFY titulo VARCHAR(150) COMMENT 'Título completo da obra.';

/*11.Visualize o script completo de criação da tabela livros, incluindo comentários e
restrições. Certifique-se de que os comentários foram incluídos na estrutura da
tabela.*/
show create table livros;

/*12. Insira três registros na tabela autor*/
select * from autor;
INSERT INTO autor
(nome, nacionalidade)
VALUES ('João Pedro', 'Brasileiro');

INSERT INTO autor
(nome, nacionalidade)
VALUES ('José Cabral', 'Colombiano');

INSERT INTO autor
(nome, nacionalidade)
VALUES ('Vicente Pomodoro', 'Italiano');
select *from autor;

/*13. Insira três registros na tabela livros*/
select * from livros;
insert into livros
(titulo, ano ,idautor, editora)
values ('O Eco das Sombras', '1856','1', 'Saraiva');

insert into livros
(titulo, ano ,idautor, editora)
values ('Caminhos de Luz', '1956','2', 'Saraiva');

insert into livros
(titulo, ano ,idautor, editora)
values ('A Cidade dos Sonhos', '1989','3', 'Saraiva');
select *from livros;

/*14. Insira três registros na tabela categoria*/
select * from categoria;
insert into categoria
(nome)
values ('Terror');

insert into categoria
(nome)
values ('Aventura');

insert into categoria
(nome)
values ('Romance');

/*15. Confirme a inserção correta dos registros nas tabelas autor e livros*/
select * from categoria;
select *from autor;
select * from livros;

/*16. Esvazie todos os dados da tabela livros, mas mantenha sua estrutura.*/
truncate table livros;

/*17. Confirme o esvaziamento correto da tabela livros*/
select * from livros;

/*18. Apague a tabela categoria do banco de dados.*/
drop table categoria;

/*19. Confirme que a tabela foi realmente excluída do banco biblioteca_pessoal .*/
show tables;

/*20. Apague completamente o banco de dados biblioteca_pessoal.*/
drop database biblioteca_pessoal;

/*21. Confirme a exclusão do banco biblioteca_pessoal.*/
show databases;
