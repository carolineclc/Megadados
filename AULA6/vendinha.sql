DROP DATABASE IF EXISTS vendinha;
CREATE DATABASE vendinha;
USE vendinha;


DROP TABLE IF EXISTS regiao;
CREATE TABLE regiao (
	regiao CHAR(2) NOT NULL,
    descricao VARCHAR (80) NOT NULL,
    PRIMARY KEY (regiao)
);

DROP TABLE IF EXISTS uf;
CREATE TABLE uf(
uf CHAR (2) NOT NULL,
descricao VARCHAR (80) NOT NULL,
regiao CHAR(2) NOT NULL,
PRIMARY KEY (uf),
FOREIGN KEY (regiao) REFERENCES regiao (regiao)

);

 DROP TABLE IF EXISTS vendedor;
CREATE TABLE vendedor (
		id INT AUTO_INCREMENT NOT NULL,
		nome VARCHAR(120) NOT NULL,
		data_nasc VARCHAR (120) NOT NULL,
		data_cad DATE NOT NULL,
		ativo TINYINT NOT NULL,
		PRIMARY KEY (id)
);

DROP TABLE IF EXISTS cidade;
CREATE TABLE cidade(
	id INT NOT NULL AUTO_INCREMENT,
	descricao VARCHAR (100),
    uf CHAR(2) NOT NULL,
	PRIMARY KEY (id),
    FOREIGN KEY (uf) REFERENCES uf(uf)
);
DROP TABLE IF EXISTS vendedor_vende_cidade;
CREATE TABLE vendedor_vende_cidade(
	id_vendedor INT NOT NULL,
    id_cidade INT NOT NULL ,
    FOREIGN KEY (id_vendedor) REFERENCES vendedor(id),
    FOREIGN KEY (id_cidade) REFERENCES cidade(id)

);
INSERT INTO regiao (regiao, descricao) VALUES ("NE", "Nordeste"), ("SE", "Sudeste"), ("S", "Sul"), ("CO", "Centro-Oeste");
INSERT INTO regiao (regiao, descricao) VALUES ("N", "Norte");
INSERT INTO vendinha.uf
    (uf, descricao, regiao)
VALUES
    ('SP', 'São Paulo', 'SE'),
    ('MG', 'Minas Gerais', 'SE'),
    ('PR', 'Paraná', 'S'),
    ('AM', 'Amazonas', 'N'),
    ('BA', 'Bahia', 'NE');

INSERT INTO vendinha.cidade
    (id, descricao, uf)
VALUES
    (20, 'São Paulo', 'SP'),
    (21, 'Campinas', 'SP'),
    (22, 'Salvador', 'BA'),
    (23, 'Manaus', 'AM'),
    (24, 'Belo Horizonte', 'MG'),
    (25, 'São Roque de Minas', 'MG');
INSERT INTO vendinha.vendedor
    (id, nome, data_nasc, data_cad, ativo)
VALUES
    (100, 'Maria Roque', '1988-01-01', '2023-06-11', 1),
    (101, 'Ana Benedita', '1970-12-09', '2023-07-15', 1),
    (102, 'Silvio Jardim', '1988-12-25', '2023-08-01', 1),
    (103, 'Bruna Fontana', '1981-07-05', '2023-09-01', 1),
    (104, 'Tulio Maravilha', '1978-09-22', '2023-08-07', 1),
    (105, 'Gino Pereira', '1964-04-03', '2023-08-25', 0),
    (106, 'Camila Oliveira', '1992-08-05', '2023-09-01', 1),
    (107, 'Mariana Souza', '1985-08-29', '2023-09-01', 1)