create database db_generation_game_online;

use db_generation_game_online;

create table tb_classes(
	id bigint auto_increment,
    descricao varchar(50) not null,
    
    primary key(id)
);

insert into tb_classes(descricao) values 
('Guerreiro'), 
('Arqueiro'), 
('Mago'), 
('Clérigo'), 
('Ladrão');

create table tb_personagens(
	id bigint auto_increment,
    nome varchar(50) not null,
    poderAtq int not null,
    poderDef int not null,
    classe_id bigint,
    
    primary key(id),
    foreign key(classe_id) references tb_classes(id)
);

select * from tb_classes;
select * from tb_personagens;

insert into tb_personagens(nome, poderAtq, poderDef, classe_id) values ('Gieraon', 2476, 2992, 1);
insert into tb_personagens(nome, poderAtq, poderDef, classe_id) values ('Malfaus', 1511, 2713, 2);
insert into tb_personagens(nome, poderAtq, poderDef, classe_id) values ('Gruanco', 1723, 1690, 4);
insert into tb_personagens(nome, poderAtq, poderDef, classe_id) values ('Vazarond', 3324, 2762, 1);
insert into tb_personagens(nome, poderAtq, poderDef, classe_id) values ('Gratha', 3234, 3473, 5);
insert into tb_personagens(nome, poderAtq, poderDef, classe_id) values ('Weugak', 1448, 2565, 3);
insert into tb_personagens(nome, poderAtq, poderDef, classe_id) values 
('Miece', 2769, 1829, 1), ('Cumazir', 2166, 2610, 4);


select * from tb_personagens where poderAtq > 2000;

select * from tb_personagens where poderDef between 1000 and 2000;

select * from tb_personagens where nome like '%c%';

select * from tb_personagens inner join tb_classes on classe_id = tb_classes.id;

select * from tb_personagens inner join tb_classes on classe_id = tb_classes.id where classe_id = 4;
