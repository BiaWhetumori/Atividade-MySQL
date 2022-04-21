create database db_servico_rh;

use db_servico_rh;

create table tb_colaboradores(
id bigint auto_increment,
nome varchar(255) not null,
endereco varchar(255) not null,
email varchar(255) ,
filhos int(255) not null,
salario float,
primary key(id)
);

select * from tb_colaboradores;


insert into tb_colaboradores(nome, endereco, email, filhos, salario) values("Andréia", "Rua: Nuvem", "andreia@gmail.com", "0", "500");
insert into tb_colaboradores(nome, endereco, email, filhos, salario) values("Paula", "Rua: Nuvem", "paula@gmail.com", "2", "700");
insert into tb_colaboradores(nome, endereco, email, filhos, salario) values("Raquel", "Rua: Nuvem", "raquel@gmail.com", "5", "1000");
insert into tb_colaboradores(nome, endereco, email, filhos, salario) values("Caio", "Rua: Nuvem", "caio@gmail.com", "0", "1500");
insert into tb_colaboradores (nome, endereco, email, filhos, salario) values("Bella", "Rua: Nuvem", "bell@gmail.com", "0", "300");

select * from tb_colaboradores where salario > 2000;
select * from tb_colaboradores where salario < 2000;

update tb_colaboradores set nome = "Lia" where id = 4;


