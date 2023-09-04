DROP DATABASE IF EXISTS empresa;
CREATE DATABASE empresa;
USE empresa;


DROP TABLE IF EXISTS Departamentos;
CREATE TABLE Departamentos (
		id_dep INT,
		nome VARCHAR(45),
		PRIMARY KEY (id_dep)
        
);


DROP TABLE IF EXISTS Funcionarios;
CREATE TABLE Funcionarios (
		nome VARCHAR (45),
		RG VARCHAR(45),
		salario FLOAT,
		telefone INT,
        id_dep INT,
		PRIMARY KEY (RG),
        FOREIGN KEY (id_dep) REFERENCES Departamentos(id_dep)
);

DROP TABLE IF EXISTS Dependentes;
CREATE TABLE Dependentes(
nome VARCHAR (45), 
RG_dep VARCHAR (45),
RG  VARCHAR (45),
PRIMARY KEY (RG_dep),
FOREIGN KEY (RG) REFERENCES Funcionarios(RG)
);
