-- criar o banco de dados
create database exercicio1;

-- selecionar o banco de dados para executar todos os proximos comandos
use exercicio1;

-- criar a tabela, passando os dados durante a criação, de todos os atributos que a tabela terá
create table colaboradores(
	id int not null auto_increment,
    nome varchar(150) not null,
    salario decimal(8,2) not null,
    cargo varchar(50) not null,
    setor varchar(30),
    primary key(id)
);

-- exibir todos os dados da tabela (nesse ponto, ainda aparece uma tabela em branco)
select * from colaboradores;

-- inserir os valores descritos, dentro da tabela
insert into colaboradores(nome, salario,cargo,setor) 
	values ('Thiago',1234.56,'instrutor','aulas');
    
insert into colaboradores(nome, salario,cargo,setor) 
	values ('Rafael',12345.56,'instrutor','aulas');
    
insert into colaboradores(nome, salario,cargo) 
	values ('Leonardo',12534.56,'aluno');
    
insert into colaboradores(nome, salario,cargo) 
	values ('Matheus',12340.56,'aluno');
    
insert into colaboradores(nome, salario,cargo) 
	values ('Celina',1234.56,'aluno');

-- select filtrando por salario maior que 2000, trazendo todos os dados na resposta
select * from colaboradores where salario > 2000;

-- select para salario menor que 2000, retornando apenas o nome e o salario
select nome, salario from colaboradores where salario < 2000;

-- atualizar os dados de um ponto em especifico
update colaboradores set salario = 3000 where id = 5;
