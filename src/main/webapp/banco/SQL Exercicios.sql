USE ViewsExerc

--Ex 1
SELECT CAST(codigo AS VARCHAR(10)) AS Codigo, nome AS Nome from Motorista 
UNION 
SELECT placa AS Placa, 
marca AS Marca 
FROM Onibus

--Ex 2
CREATE VIEW v_motorista_onibus AS 
SELECT CAST(codigo AS VARCHAR(10)) AS Codigo, 
nome AS Nome 
FROM Motorista 
UNION 
SELECT placa AS Placa, 
marca AS Marca 
FROM Onibus

--Ex 3
CREATE VIEW v_descricao_onibus AS
SELECT vg.codigo AS Codigo,
mt.nome AS Nome,
UPPER(Substring(oni.placa, 1,3))+'-'+SUBSTRING(oni.placa, 4,8) AS Placa,
oni.marca AS Marca,
oni.ano AS Ano,
oni.descricao AS Descricao
FROM Viagem vg 
INNER JOIN Motorista mt
ON vg.motorista_codigo = mt.codigo
INNER JOIN Onibus oni
On vg.onibus_placa = oni.placa

--Ex 4

CREATE VIEW v_descricao_viagem AS 
SELECT vg.codigo AS Codigo,
UPPER(Substring(oni.placa, 1,3))+'-'+SUBSTRING(oni.placa, 4,8) AS Placa,
CASE
	WHEN LEN(vg.hora_saida) = 2 THEN
		CAST(vg.hora_saida AS CHAR(2)) + ':00' 
	ELSE
		'0'+CAST(vg.hora_saida AS CHAR(1)) + ':00' 
	END AS Hora_da_Saida,

CASE
	WHEN LEN(vg.hora_chegada) = 2 THEN
		CAST(vg.hora_chegada AS CHAR(2)) + ':00' 
	ELSE
		'0'+CAST(vg.hora_chegada AS CHAR(1)) + ':00' 
	END AS Hora_da_Chegada,
vg.partida as Partida,
vg.destino as Destino
FROM Viagem vg
INNER JOIN Onibus oni
ON vg.onibus_placa = oni.placa

