CREATE DATABASE Escola;
USE Escola; 
CREATE TABLE Disciplina(
CodDisciplina INT,
primary key (CodDisciplina),
NomeDisciplina VARCHAR (50),
nroCreditos TINYINT
);

CREATE TABLE Matriculado (
Matricula INT,
foreign key (Matricula)
references Aluno (Matricula),
CodDisciplina INT, 
foreign key (CodDisciplina)
references Disciplina (CodDisciplina),
nota DECIMAL (2,1)
);

CREATE TABLE Aluno (
nome VARCHAR (100),
sexo CHAR(1),
endereco VARCHAR (100),
Matricula INT ,
primary key (Matricula),
nascimento DATETIME
); 
