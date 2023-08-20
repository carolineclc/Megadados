SHOW TABLES;
-- ---------------------------
DESCRIBE CD;
-- ---------------------------
SELECT * FROM CD;
-- ---------------------------
SELECT Nome_CD, Data_Lancamento FROM CD;
-- ---------------------------
SELECT 
	* 
FROM 
	CD
WHERE 
	Nome_CD LIKE '%a'; -- Aqui, % tem o mesmo significado que asterisco em uma busca no terminal
-- ---------------------------
SELECT 
*
FROM 
CD
ORDER BY Nome_CD ASC;  -- Ordenar em order ascendente. Para descendente DESC.
-- ---------------------------
SELECT 
Nome_CD,
Preco_Venda AS Preco,
Preco_Venda * 0.1 AS Desconto
FROM 
CD
WHERE Preco_Venda > 12;
-- ---------------------------
SELECT 
Nome_CD, Preco_Venda, Data_Lancamento
From 
CD
WHERE
Preco_Venda >= 13
ORDER BY
Data_Lancamento DESC;
-- ---------------------------
SELECT
Nome_CD, Preco_Venda, Data_Lancamento
From 
CD
WHERE 
Preco_Venda >= 13
ORDER BY
Data_Lancamento ASC
LIMIT 1;
-- ---------------------------
SELECT 
Nome_CD, Preco_Venda, Data_Lancamento
FROM 
CD
WHERE
Preco_Venda >= 13
ORDER BY 
Data_Lancamento DESC;
-- ---------------------------
SELECT
Nome_Musica AS nome_musica_mais_longa
From 
MUSICA
ORDER BY
Duracao DESC
LIMIT 1;
-- ---------------------------
SELECT 
Nome_Gravadora
FROM 
GRAVADORA
WHERE
Endereco IS NULL;
-- ---------------------------
SELECT
Nome_CD
FROM
CD
WHERE
Data_Lancamento BETWEEN '1990-01-01' AND '2000-01-01';
-- ---------------------------
SELECT
Nome_CD
FROM
CD
WHERE
Preco_Venda <=10 AND
Data_Lancamento BETWEEN '1990-01-01' AND '2000-01-01';
-- ---------------------------
SELECT DISTINCT 
CD_Indicado
FROM 
CD
WHERE
CD_Indicado IS NOT NULL

