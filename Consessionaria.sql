CREATE DATABASE consecionaria;
USE consecionaria; 
CREATE TABLE marca(
CodMarca INT,
PRIMARY KEY (CodMarca),
NomeMarca VARCHAR(30)
);

CREATE TABLE Modelo(
NomeModelo VARCHAR(50),
CodModelo INT,
PRIMARY KEY (CodModelo),
CodMarca INT,
FOREIGN KEY (CodMarca)
REFERENCES marca(CodMarca)
);
 
CREATE TABLE veiculo (
Placa CHAR(10),
Chassi CHAR (17),
primary key (Chassi),
cor CHAR (50),
AnoFabricacao SMALLINT,
Quilometragem INT,
CodModelo INT,
FOREIGN KEY (CodModelo)
REFERENCES Modelo(CodModelo)
);
