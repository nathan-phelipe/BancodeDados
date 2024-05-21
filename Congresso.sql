CREATE DATABASE congresso;
USE congresso ;
CREATE TABLE partido  (
sigla VARCHAR (10),
PRIMARY KEY (sigla),
nome VARCHAR (50) 
);

CREATE TABLE filiado (
dataFi DATE,
codigo INT,
foreign key (codigo)
references congressista (codigo),
sigla VARCHAR(10),
foreign key (sigla)
references filiado (sigla)
);

CREATE TABLE congressista(
prenome  VARCHAR (50),
sobrenome VARCHAR (100),
codigo INT,
PRIMARY KEY (codigo)
);