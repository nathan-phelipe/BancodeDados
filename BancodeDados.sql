DROP DATABASE IF EXISTS livraria;
CREATE DATABASE livraria; 
USE livraria;
CREATE TABLE area (
codArea SMALLINT PRIMARY KEY,
nomeAerea VARCHAR(100)
);
CREATE TABLE livro (
editora VARCHAR(20),
anopublicado VARCHAR(4),
autor VARCHAR(50),
nome VARCHAR(100),
ISBN CHAR(13),
PRIMARY KEY (ISBN),
codArea SMALLINT,
FOREIGN KEY (codArea) REFERENCES area (codArea)
);


