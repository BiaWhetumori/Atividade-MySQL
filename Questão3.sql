create database db_escola;

use db_escola;

create table tb_estudantes(
id bigint auto_increment,
nome varchar(255),
idade int (255),
endereço varchar(255),
pais varchar(255),
notas float,
primary key(id)
);
select * from tb_estudantes;




insert into tb_estudantes(nome, idade, endereço, pais, notas) values("Isabel","14", "Rua: Oswaldo", "Felipe e Clara", "9");
insert into tb_estudantes(nome, idade, endereço, pais, notas) values("Pedro","15", "Rua: Estrela", "Paula e Eduardo", "4");
insert into tb_estudantes(nome, idade, endereço, pais, notas) values("Luna","14", "Rua: Aquiraz", "Rodrigo e Luara", "10");
insert into tb_estudantes(nome, idade, endereço, pais, notas) values("Clara","15", "Rua:Fortaleza", "Joaquim e Léticia", "6");
insert into tb_estudantes(nome, idade, endereço, pais, notas) values("João","14", "Rua: Domingos", "Eduardo e Mônica", "3");
insert into tb_estudantes(nome, idade, endereço, pais, notas) values("Eduardo","14", "Rua: Oswaldo Cruz", "Robert e Thaís","8");
insert into tb_estudantes(nome, idade, endereço, pais, notas) values("Amanda","15", "Rua:Dom pedro", "Felipe e Carla", "2");
insert into tb_estudantes(nome, idade, endereço, pais, notas) values("Bekka","14", "Rua: Tulipa", "Felipe e Clara", "7");

select * from tb_estudantes where valor > 7;
select * from tb_estudantes where valor < 7;

update tb_estudantes set nome = "Rebeca" where id = 1;
