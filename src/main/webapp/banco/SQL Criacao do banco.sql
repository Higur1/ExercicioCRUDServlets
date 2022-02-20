CREATE DATABASE ViewsExerc

USE ViewsExerc

CREATE TABLE Motorista(
	codigo INT PRIMARY KEY IDENTITY(12341,1),
	nome VARCHAR(20) NOT NULL,
	naturalidade VARCHAR(15) NOT NULL
)

CREATE TABLE Onibus(
	placa VARCHAR(7) PRIMARY KEY,
	marca VARCHAR(8) NOT NULL,
	ano INT NOT NULL,
	descricao VARCHAR(20)
)

CREATE TABLE Viagem(
	codigo INT PRIMARY KEY IDENTITY(101,1),
	onibus_placa VARCHAR(7) NOT NULL,
	motorista_codigo INT NOT NULL,
	hora_saida INT NOT NULL CHECK (hora_saida >= 0),
	hora_chegada INT NOT NULL CHECK (hora_chegada >= 0),
	partida VARCHAR(30) NOT NULL,
	destino VARCHAR(30) NOT NULL,

	CONSTRAINT FK_viagem_onibus FOREIGN KEY (onibus_placa) REFERENCES Onibus(placa),
	CONSTRAINT FK_viagem_motorista FOREIGN KEY (motorista_codigo) REFERENCES Motorista(codigo)
)
INSERT INTO Motorista(nome, naturalidade)
	VALUES('Julio Cesar', 'S�o Paulo'),
		  ('Mario Carmo', 'Americana'),
		  ('Lucio Castro', 'Campinas'),
		  ('Andr� Figueiredo', 'S�o Paulo'),
		  ('Luiz Carlos', 'S�o Paulo'),
		  ('Calos Roberto', 'Campinas'),
		  ('Jo�o Paulo', 'S�o Paulo')
INSERT INTO Onibus(placa,marca,ano,descricao)
	VALUES('adf0965', 'Mercedes', 2009, 'Leito'),
		  ('bhg7654', 'Mercedes', 2012, 'Sem Banheiro'),
		  ('dtr2093', 'Mercedes', 2017, 'Ar Condicionado'),
		  ('gui7625', 'Volvo', 2014, 'Ar Condicionado'),
		  ('jhy9425', 'Volvo', 2018, 'Leito'),
		  ('lmk7485', 'Mercedes', 2015, 'Ar Condicionado'),
		  ('aqw2374', 'Volvo', 2014, 'Leito')

INSERT INTO Viagem(onibus_placa,motorista_codigo,hora_saida,hora_chegada,partida, destino)
	VALUES('adf0965', 12343, 10, 12, 'S�o Paulo', 'Campinas'),
	('gui7625', 12341, 7, 12, 'S�o Paulo', 'Araraguara'),
	('bhg7654', 12345, 14, 22, 'S�o Paulo', 'Rio de Janeiro'),
	('dtr2093', 12344, 18, 21, 'S�o Paulo', 'Sorocaba'),
	('aqw2374', 12342, 11, 17, 'S�o Paulo', 'Ribeir�o Preto'),
	('jhy9425', 12347, 10, 19, 'S�o Paulo', 'S�o Jos� do Rio Preto'),
	('lmk7485', 12346, 13, 20, 'S�o Paulo', 'Curitiba'),
	('adf0965', 12343, 14, 16, 'Campinas', 'S�o Paulo'),
	('gui7625', 12341, 14, 19, 'Araraquara', 'S�o Paulo'),
	('bhg7654', 12345, 0, 8, 'Rio de Janeiro', 'S�o Paulo'),
	('dtr2093', 12344, 22, 1, 'Sorocaba', 'S�o Paulo'),
	('aqw2374', 12342, 19, 5, 'Ribeir�o Preto', 'S�o Paulo'),
	('jhy9425', 12347, 22, 7 , 'S�o Jos� do Rio Preto', 'S�o Paulo'),
	('lmk7485', 12346, 0, 7, 'Curitiba', 'S�o Paulo')