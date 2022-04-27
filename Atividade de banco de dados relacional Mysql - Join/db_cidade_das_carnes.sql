CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;
-- Criando tabela mãe
CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
tipo VARCHAR(255) NOT NULL,
pecas VARCHAR (255)NOT NULL,
PRIMARY KEY (id)
);

-- Registro
INSERT INTO  tb_categorias(tipo,pecas) VALUES("Maminha","1.5kg");
INSERT INTO  tb_categorias(tipo,pecas) VALUES("Picanha","2.0kg");
INSERT INTO  tb_categorias(tipo,pecas) VALUES("Boi","3.0kg");
INSERT INTO  tb_categorias(tipo,pecas) VALUES("Porco","4.5kg");

-- Criar tabela

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
marca VARCHAR (255),
preco DECIMAL NOT NULL,
validade DATE,
peso VARCHAR (255),
PRIMARY KEY(ID),
categorias_id bigint NOT NULL,
FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);

-- REGISTRO
 INSERT INTO tb_produtos (marca,preco,validade,peso,categorias_id) VALUES ("Sádia",50, "2022-04-20", "2.0kg",2);
 INSERT INTO tb_produtos (marca,preco,validade,peso,categorias_id) VALUES ("Perdigão",100, "2022-04-21", "4.0kg",1);
 INSERT INTO tb_produtos (marca,preco,validade,peso,categorias_id) VALUES ("Friboi",150, "2022-04-22", "8.0kg",4);
 INSERT INTO tb_produtos (marca,preco,validade,peso,categorias_id) VALUES ("Seara",80, "2022-04-23", "3.5kg",3);
 INSERT INTO tb_produtos (marca,preco,validade,peso,categorias_id) VALUES ("Maturata",130, "2022-04-24", "2.5kg",3);
 
 
 -- Seleção maior que 50
 SELECT * FROM tb_produtos WHERE preco > 50;
 
 -- Seleção entre 50 á 150
 SELECT * FROM tb_produtos WHERE  preco BETWEEN 50  AND 150;
 -- Seleção do produtos com a letra C
 SELECT * FROM tb_produtos WHERE  marca LIKE "%C%";
 
 SELECT * FROM tb_categorias  INNER JOIN tb_produtos
 on tb_categorias.id = tb_produtos.id;
 
SELECT * FROM tb_categorias INNER JOIN tb_produtos
 on tb_categorias.id = tb_produtos.categorias_id WHERE tb_categorias.tipo = "Maminha";

 
 
 







