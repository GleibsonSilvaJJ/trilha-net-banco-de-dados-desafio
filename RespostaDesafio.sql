--1 - Buscar o nome e ano dos filmes
SELECT
	Nome, Ano 
FROM Filmes

--2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT
	Nome, Ano, Duracao
FROM Filmes
ORDER BY Ano

--3 - Buscar pelo filme de volta para o futuro, trazendo o nome ano e a duracao
SELECT
	Nome, Ano, Duracao
FROM Filmes
WHERE Nome = 'De volta para o futuro'

--4 - Buscar os filmes lancados em 1997
SELECT
	Nome, Ano, Duracao
FROM Filmes
WHERE Ano = '1997'

--5 - Busca os filmes lan;ados APOS o ano 2000
SELECT
	Nome, Ano, Duracao
FROM Filmes
WHERE Ano > 2000 

--6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenado pela duracao em ordem crescente
SELECT
	Nome, Ano, Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao 

--7 - Buscar a quantidade de filmes lancados no ano, agrupado por ano, ordenado pela duracao em ordem decrescente
SELECT
	 Ano,  
	 COUNT(*) Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

--8 - Buscar os atores do genero masculino, retornando o PrimeiroNome, UltimoNome
SELECT
	 PrimeiroNome,
	 UltimoNome,
	 Genero
FROM Atores
WHERE Genero = 'M'

--9 - Buscar os Atores do genero feminino, retornando o PrimeiroNome, UltimoNome, e Ordenado pelo PrimeiroNome
SELECT
	 PrimeiroNome,
	 UltimoNome,
	 Genero
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

--10 - Buscar o nome do filme e o genero
SELECT
	Filmes.Nome,
	Generos.Genero 
FROM Filmes
INNER JOIN Generos ON Filmes.Id = Generos.Id;

--11 - Buscar o nome do filme e o genero do tipo Misterio
SELECT 	
	Filmes.Nome,
	Generos.Genero 
FROM Filmes
INNER JOIN Generos ON Filmes.ID = Generos.Id
WHERE Generos.Genero = 'Mistério'


--12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel

SELECT 
	Filmes.Nome,
	Atores.PrimeiroNome,
	Atores.UltimoNome, 
	ElencoFilme.Papel 
FROM Filmes
INNER JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme 
INNER JOIN Atores ON Atores.Id = ElencoFilme.IdAtor;



