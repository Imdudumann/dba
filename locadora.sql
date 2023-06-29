create database locadora;
use locadora;

create table tb_filme(
	codigo_tb_filme int auto_increment not null primary key,
	nome varchar(100) not null,
    tempo double not null,
    diretor varchar(100) not null,
    pais char(20)
);

create table tb_genero(
	codigo_tb_genero int not null auto_increment primary key,
    tipo char(20),
    classificacao_indicativa int
);

create table tb_editora(
	codigo_tb_editora int not null auto_increment primary key,
    editora varchar(50) not null
);

alter table tb_filme
add codigo_genero int,add codigo_editora int,
add ator_principal char(20);

alter table tb_filme
add constraint fk_filme_genero foreign key (codigo_genero)
references tb_genero(codigo_tb_genero);

alter table tb_filme
add constraint fk_file_editora foreign key(codigo_editora)
references tb_editora(codigo_tb_editora);

alter table tb_filme 
add valor_locacao double;

alter table tb_filme
drop foreign key fk_file_editora;

alter table tb_filme
drop foreign key fk_filme_genero;

alter table tb_filme
drop column codigo_editora,drop column codigo_genero;

describe tb_filme;

describe tb_filme;

drop table tb_filme;
drop table tb_editora;
drop table tb_genero;
drop database locadora;