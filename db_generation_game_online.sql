-- Criar banco de dados
CREATE DATABASE db_generation_game_online;

-- usar o banco de dados

USE db_generation_game_online;

-- criando tabela mãe (1)
CREATE TABLE tb_classes(
id BIGINT AUTO_INCREMENT,
funcao VARCHAR(250) NOT NULL,
dano FLOAT NOT NULL,
defesa FLOAT NOT NULL,
PRIMARY KEY(ID)
);

-- REGISTRO
INSERT INTO  tb_classes(funcao,dano,defesa) VALUES("Duelista",2000, 1500);
INSERT INTO  tb_classes(funcao,dano,defesa) VALUES("Controlador",800, 1500);
INSERT INTO  tb_classes(funcao,dano,defesa) VALUES("Sentinela",700, 1500);
INSERT INTO  tb_classes(funcao,dano,defesa) VALUES("Iniciador",1000, 1500);
INSERT INTO  tb_classes(funcao,dano,defesa) VALUES("Controlador2",800, 1500);


-- Criar tabela (n)
CREATE TABLE tb_personagens(
id BIGINT AUTO_INCREMENT,
nome VARCHAR (255) NOT NULL,
habilidade VARCHAR(255) NOT NULL,
ult VARCHAR (255) NOT NULL,
jogadores INT NOT NULL,
classes_id bigint,
PRIMARY KEY (id),
FOREIGN KEY(classes_id) REFERENCEs tb_classes(id)
);

-- registro
INSERT INTO tb_personagens (nome, habilidade, ult, jogadores, classes_id) VALUES ("Viper","Cortina tóxica","Poço peçonhento", 5,2);
INSERT INTO tb_personagens (nome, habilidade, ult, jogadores, classes_id) VALUES ("Phoenix","Mãos quentes","Renascimento", 5,1);
INSERT INTO tb_personagens (nome, habilidade, ult, jogadores, classes_id) VALUES ("Sova","Flecha ","Fúria do caçador", 5,4);
INSERT INTO tb_personagens (nome, habilidade, ult, jogadores, classes_id) VALUES ("Sage ","Orbe curativo ","Ressurreição", 5,3);
INSERT INTO tb_personagens (nome, habilidade, ult, jogadores, classes_id) VALUES ("Raze ","Cartucho de tinta  ","Estraga-prazeres", 5,1);
INSERT INTO tb_personagens (nome, habilidade, ult, jogadores,  classes_id) VALUES ("Omen","Manto sobrio","Salto das sombras", 5,2);
INSERT INTO tb_personagens (nome, habilidade, ult, jogadores,  classes_id) VALUES ("Neon","Equipamento voltaico","Sobrecarga", 5,1);
INSERT INTO tb_personagens (nome, habilidade, ult, jogadores, classes_id) VALUES ("Champer","Rendezvous","Tour de force", 5,3);

-- Seleção dano maior que 2000
SELECT * FROM tb_classes WHERE dano > 2000;
-- seleção defesa entre 1000 e 2000
SELECT * FROM tb_classes WHERE defesa BETWEEN 1000 AND 2000;
-- seleção de personagens com a letra C
SELECT * FROM tb_personagens WHERE nome LIKE "%C%";

SELECT * FROM tb_classes INNER JOIN tb_personagens
on tb_classes.id = tb_personagens.id;

SELECT * FROM tb_classes INNER JOIN tb_personagens
on tb_classes.id = tb_personagens.classes_id WHERE tb_classes.funcao = "Controlador";
 SELECT * FROM tb_personagens;




 
 
 




