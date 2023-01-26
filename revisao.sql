create database db_farmacia;

use db_farmacia;

create table tb_categorias(
	id bigint auto_increment,
    nome varchar(45) not null,
    descricao varchar(500),
    primary key(id)
);

insert into tb_categorias(nome, descricao) values ('medicamentos', 'medicamentos mesmo');
insert into tb_categorias(nome, descricao) values ('beleza', 'produtos de beleza');
insert into tb_categorias(nome, descricao) values ('outros', 'sei la o que vem aqui');
insert into tb_categorias(nome, descricao) values ('conveniencia', 'produtos de conveniencia');
insert into tb_categorias(descricao, nome) values ('produtos de higiene pessoal','higiene pessoal');

select * from tb_categorias;

create table tb_produtos(
	id bigint auto_increment,
    nome varchar(45) not null,
    descricao varchar(500),
    valor decimal(6, 2) not null,
    dataValidade date,
    categoriaId bigint,
    
    primary key(id),
    foreign key(categoriaId) references tb_categorias(id) 
);

insert into tb_produtos(nome, descricao, valor, dataValidade, categoriaId) 
	values ('produto 1', 'descrição do produto 1', 75.00, '2023-06-10', 2);

insert into tb_produtos(nome, descricao, valor, dataValidade, categoriaId) 
	values ('produto 2', 'descrição do produto 2', 15.00, '2023-06-10', 1);

insert into tb_produtos(nome, descricao, valor, dataValidade, categoriaId) 
	values ('produto 3', 'descrição do produto 3', 5.00, '2023-06-10', 3);
    
insert into tb_produtos(nome, descricao, valor, dataValidade, categoriaId) 
	values ('produto 4', 'descrição do produto 4', 1375.00, '2023-06-10', 4);
    
insert into tb_produtos(nome, descricao, valor, dataValidade, categoriaId) 
	values ('produto 5', 'descrição do produto 5', 1.99, '2023-06-10', 5);
    
insert into tb_produtos(nome, descricao, valor, dataValidade, categoriaId) 
	values ('produto 6', 'descrição do produto 6', 75.00, '2023-06-10', 1);
    
insert into tb_produtos(nome, descricao, valor, dataValidade, categoriaId) 
	values ('produto 7', 'descrição do produto 7', 35.00, '2023-06-10', 2);
    
insert into tb_produtos(nome, descricao, valor, dataValidade) 
	values ('recarga de celular', 'recarga de celular', 10.00, '2023-06-10');


select * from tb_produtos;

select * from tb_produtos where valor > 50;

select * from tb_produtos where valor between 5 and 60;
select * from tb_produtos where valor >= 5 and valor <= 60;

select * from tb_produtos where nome like '%c%';

select * from tb_produtos inner join tb_categorias
	on tb_produtos.categoriaId = tb_categorias.id;
    
select * from tb_produtos inner join tb_categorias
	on tb_produtos.categoriaId = tb_categorias.id
    where categoriaId = 2;


select * from tb_produtos as P,tb_categorias as C
	where P.categoriaId = C.id and P.categoriaId = 3;

