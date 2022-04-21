create database db_commerce;

use db_commerce;

create table tb_produtos(
id bigint auto_increment,
bolsa varchar(255),
camisa varchar(255),
short varchar(255),
vestido varchar(255),
saia varchar(255),
toalha varchar(255),
sapato varchar(255),
valor float,
primary key(id)
);


select * from tb_produtos;








insert into tb_produtos(bolsa, camisa, short, vestido, saia, toalha, sapato, valor) values("lilás", "amarela", "azul", "amarelo", "rosa", "verde", "preto", " 300");
insert into tb_produtos(bolsa, camisa, short, vestido, saia, toalha, sapato, valor) values("algodão", "algodão", "algodão", "algodão", "algodão", "algodão", "algodão","400");
insert into tb_produtos(bolsa, camisa, short, vestido, saia, toalha, sapato, valor) values("coleção 1", " coleção 2", " coleção5", "coleção 4", " coleção 5", " coleção 6", "coleção 7", "600");
insert into tb_produtos(bolsa, camisa, short, vestido, saia, toalha, sapato, valor) values("em estoque", "em estoque", "em estoque", "em estoque", "em estoque", "em estoque", "em estoque", "700");
insert into tb_produtos(bolsa, camisa, short, vestido, saia, toalha, sapato, valor) values("quantidade 22", "quantidade 22", "quantidade 22", "quantidade 22", "quantidade 22", "quantidade 22", "quantidade 22", "800");
insert into tb_produtos(bolsa, camisa, short, vestido, saia, toalha, sapato, valor) values("Coleção verão", "Coleção verão", "Coleção verão", "Coleção verão", "Coleção verão", "Coleção verão", "Coleção verão", "900");
insert into tb_produtos(bolsa, camisa, short, vestido, saia, toalha, sapato, valor) values("Marca liz", "Marca liz", "Marca liz", "Marca liz", "Marca liz", "Marca liz", "Marca liz", "1000");

select * from  tb_produtos where valor > 500;
select * from tb_produtos where valor < 500;

update tb_produtos set bolsa = "azul escuro " where id = 1;









