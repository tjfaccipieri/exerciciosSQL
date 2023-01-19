create database exercicio2;

use exercicio2;

create table produtos(
	id int not null auto_increment,
    nome varchar(100) not null,
    descricao varchar(5000) not null,
    preco decimal(6,2) not null,
    categoria varchar(30) not null,
    
    primary key(id)
);

select * from produtos;

insert into produtos(nome, descricao, preco, categoria) values ('monitor', 'monitor 27 polegadas bem legal', 1500.00,'eletronicos');
insert into produtos(nome, descricao, preco, categoria) values ('teclado base', 'teclado padrão ABNT2 básico', 60.00,'eletronicos');
insert into produtos(nome, descricao, preco, categoria) values ('teclado mecanico', 'teclado padrão ABNT2 com switchs mecanicos', 550.00,'eletronicos');
insert into produtos(nome, descricao, preco, categoria) values ('mouse de fusquinha', 'mouse básico com formado de um fusca', 45.00,'eletronicos');
insert into produtos(nome, descricao, preco, categoria) values ('mouse gamer', 'mouse gamer cheio de luzinha colorida que clica igual todos os outros', 300.00,'eletronicos');

select * from produtos where preco < 500;
select * from produtos where preco > 500;

update produtos set preco = 40.00 where id = 4;

select * from produtos where preco = 40;