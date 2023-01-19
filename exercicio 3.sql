create database escola;

use escola;

create table alunos(
	id int auto_increment,
    nome varchar(150) not null,
    nota float(3,1) not null,
    serie varchar(20) not null,
    materia varchar(20) not null,
    
    primary key(id)
);

select * from alunos;

insert into alunos(nome, nota, serie, materia) values ('Thiago', 8.0, '3º médio', 'matemática');
insert into alunos(nome, nota, serie, materia) values ('Thiago', 9.6, '3º médio', 'física');
insert into alunos(nome, nota, serie, materia) values ('Thiago', 6.5, '3º médio', 'geografia');
insert into alunos(nome, nota, serie, materia) values ('Thiago', 7.0, '3º médio', 'história');
insert into alunos(nome, nota, serie, materia) values ('Thiago', 7.5, '3º médio', 'português');

select * from alunos where nota >= 7 and materia = 'matemática';
select * from alunos where nota <= 7;

update alunos set nota = 7.8 where materia = 'português'
