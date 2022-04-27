CREATE DATABASE db_construindo_vidas;

USE db_construindo_vidas;
-- Criando tabela mãe
CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
ambiente VARCHAR (255) NOT NULL,
departamento VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
);

-- Registro
INSERT INTO  tb_categorias(ambiente,departamento) VALUES("Banheiro","Piso e revestimentos" );
INSERT INTO  tb_categorias(ambiente,departamento) VALUES("Cozinha","Janelas e portas");
INSERT INTO  tb_categorias(ambiente,departamento) VALUES("Lâmpada lede","Iluminação");
INSERT INTO  tb_categorias(ambiente,departamento) VALUES("Pá"," Ferramentas");

-- Criar tabela

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR (255),
preco DECIMAL (8,2)NOT NULL,
quantidade DECIMAL(8,2) NOT NULL,
medida VARCHAR (250),
PRIMARY KEY(ID),
categorias_id bigint NOT NULL,
FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);

-- REGISTRO
INSERT INTO tb_produtos (nome,preco,quantidade,medida,categorias_id) VALUES ("Gabinete",200, 2, "1.20m",2);
INSERT INTO tb_produtos (nome,preco,quantidade,medida,categorias_id) VALUES ("Lâmpada",10, 20, "unidades" ,3);
INSERT INTO tb_produtos (nome,preco,quantidade,medida,categorias_id) VALUES ("Porta alumínio", 350 ,4,"2.10m",2); 
INSERT INTO tb_produtos (nome,preco,quantidade,medida,categorias_id) VALUES ("Caixa de água",490,2,"1000litrosl",4);
INSERT INTO tb_produtos (nome,preco,quantidade,medida,categorias_id) VALUES ("Chave de fenda",11,3,"16x5",4);
INSERT INTO tb_produtos (nome,preco,quantidade,medida,categorias_id) VALUES ("Fio",120, 30,"m",4);
INSERT INTO tb_produtos (nome,preco,quantidade,medida,categorias_id) VALUES ("Mosáico",34,50, "15x30cm",1);
INSERT INTO tb_produtos (nome,preco,quantidade,medida,categorias_id) VALUES ("Torneira",90,6,"Unidade",1);

 
 
 -- Seleção maior que 100
 SELECT * FROM tb_produtos WHERE preco > 100;
 
 -- Seleção entre 70 á 150
 SELECT * FROM tb_produtos WHERE  preco BETWEEN 70  AND 150;
 -- Seleção do produtos com a letra C
 SELECT * FROM tb_produtos WHERE  nome LIKE "%C%";
 
 SELECT * FROM tb_categorias  INNER JOIN tb_produtos
 on tb_categorias.id = tb_produtos.id;
 
SELECT * FROM tb_categorias INNER JOIN tb_produtos
 on tb_categorias.id = tb_produtos.categorias_id WHERE tb_categorias.ambiente= "Cozinha";