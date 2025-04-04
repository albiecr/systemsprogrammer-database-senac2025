-- TIRANDO O MODO SEGURO
SET SQL_SAFE_UPDATES = 0;

-- APAGANDO O BANCO DE DADOS CASO EXISTA
DROP DATABASE IF EXISTS DBEXERCICIO03;

-- CRIANDO O BANCO DE DADOS
CREATE DATABASE DBEXERCICIO03;

-- CONECTANDO AO BANCO DE DADOS
USE DBEXERCICIO03;

-- CRIANDO AS TABELAS
CREATE TABLE PESQUISA (
	IDPESQUISA INT NOT NULL AUTO_INCREMENT
    , NOME VARCHAR(120) NOT NULL
    , CIDADE VARCHAR (120)
    , IDADE INT
    , NOTA DECIMAL (5,2) NOT NULL
    , PRIMARY KEY (IDPESQUISA)
);
-- QUANDO FOR UMA LINHA
INSERT INTO PESQUISA (NOME, CIDADE, IDADE, NOTA)
VALUES('PEDRO', 'SAO PAULO', 34, 83.0);
-- QUANDO FOR VARIAS LINHAS
INSERT INTO PESQUISA (NOME, CIDADE, IDADE, NOTA)VALUES
('MARIA', 'SAO PAULO', 23, 59.0),
('JANAINA', 'RIO DE JANEIRO', 32, 86.0),
('WONG', 'BRASILIA', 43, 89.0),
('ROBERTO', 'SALVADOR', 38, 98.0),
('MARCO', 'CURITIBA', 31, 61.0),
('PAULA', 'BELO HORIZONTE', 34, 44.0);
-- 4. Liste os dados da tabela e verifique se ficou conforme a imagem (Select)
SELECT * FROM PESQUISA;

-- 5. Altere a idade do Roberto para 28 anos
	UPDATE PESQUISA SET IDADE = 28 WHERE IDPESQUISA = 5;
    
-- 6. Altere a nota da aluna Maria para 69.2 e a cidade para Florianopolis
	UPDATE PESQUISA SET NOTA = 69.2, CIDADE ='FLORIANOPOLIS' WHERE NOME = 'MARIA';
    
-- 7. Apague todos os alunos que tenham mais de 40 anos
DELETE FROM PESQUISA WHERE IDADE > 40;