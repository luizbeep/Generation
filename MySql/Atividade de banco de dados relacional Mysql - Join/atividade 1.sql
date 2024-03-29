
CREATE DATABASE DB_RPG;

USE DB_RPG;

CREATE TABLE TB_CLASSE(
ID BIGINT AUTO_INCREMENT,
CLASSE VARCHAR(255),
ARMA VARCHAR(255),
DESCRICAO VARCHAR(255),
PRIMARY KEY(ID)
);

CREATE TABLE TB_PERSONAGEM(
ID BIGINT AUTO_INCREMENT,
NOME VARCHAR(255),
RACA VARCHAR(255),
ATAQUE DOUBLE,
DEFESA DOUBLE,
HP INT,
PRIMARY KEY(ID),
CLASSE_ID BIGINT,
FOREIGN KEY(CLASSE_ID) REFERENCES TB_CLASSE(ID)
);

SELECT * FROM TB_CLASSE;
SELECT * FROM TB_PERSONAGEM;

INSERT INTO TB_CLASSE(CLASSE, ARMA, DESCRICAO) VALUES('Ladrao','Adaga','Rouba');
INSERT INTO TB_CLASSE(CLASSE, ARMA, DESCRICAO) VALUES('Mago(a)','cajado','solta magia');
INSERT INTO TB_CLASSE(CLASSE, ARMA, DESCRICAO) VALUES('Paladino','Marreta','é tudo pela fé');

INSERT INTO TB_PERSONAGEM(NOME, RACA, ATAQUE, DEFESA, HP, CLASSE_ID) VALUES('Vagner','Humano',2000, 700, 1000,2);
INSERT INTO TB_PERSONAGEM(NOME, RACA, ATAQUE, DEFESA, HP, CLASSE_ID) VALUES('Bruna','Maga',3000, 500, 1000,3);
INSERT INTO TB_PERSONAGEM(NOME, RACA, ATAQUE, DEFESA, HP, CLASSE_ID) VALUES('Cinthia','Guerreira', 2300, 3000, 1000,2);
INSERT INTO TB_PERSONAGEM(NOME, RACA, ATAQUE, DEFESA, HP, CLASSE_ID) VALUES('Maria','Guerreira', 2500, 2000, 1000,2);
INSERT INTO TB_PERSONAGEM(NOME, RACA, ATAQUE, DEFESA, HP, CLASSE_ID) VALUES('Amilton','Humano', 1700, 2000, 1000,1);

#INNER JOIN E LEFT JOIN SE COMPORTAM PARECIDOS
SELECT * FROM TB_PERSONAGEM INNER JOIN TB_CLASSE ON TB_CLASSE.ID = TB_PERSONAGEM.CLASSE_ID;
SELECT * FROM TB_PERSONAGEM LEFT JOIN TB_CLASSE ON TB_CLASSE.ID = TB_PERSONAGEM.CLASSE_ID;
SELECT * FROM TB_PERSONAGEM RIGHT JOIN TB_CLASSE ON TB_CLASSE.ID = TB_PERSONAGEM.CLASSE_ID;

SELECT TB_PERSONAGEM.NOME, TB_PERSONAGEM.RACA, TB_CLASSE.CLASSE FROM TB_PERSONAGEM INNER JOIN TB_CLASSE ON TB_CLASSE.ID = TB_PERSONAGEM.CLASSE_ID;

SELECT TB_PERSONAGEM.NOME, TB_CLASSE.CLASSE, TB_CLASSE.DESCRICAO FROM TB_PERSONAGEM INNER JOIN TB_CLASSE ON TB_CLASSE.ID = TB_PERSONAGEM.CLASSE_ID WHERE TB_CLASSE.CLASSE = 'Mago(a)';

SELECT * FROM TB_PERSONAGEM WHERE ATAQUE > 2000;

SELECT * FROM TB_PERSONAGEM WHERE ATAQUE > 1000 AND ATAQUE < 2000;
