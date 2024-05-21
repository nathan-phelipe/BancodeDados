CREATE DATABASE banco ;
USE banco;
CREATE TABLE conta(
nroConta int,
PRIMARY KEY (nroConta),
saldoConta FLOAT
);

CREATE TABLE transacao(
nroTransacao int,
PRIMARY KEY (nroTransacao),
dataTra DATE, 
valor Float,
nroConta INT,
foreign key (nroConta)
REFERENCES conta (nroConta)
);

