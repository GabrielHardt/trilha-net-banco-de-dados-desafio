-- 1 - Buscar o nome e ano dos filmes

select nome,ano from filmes

-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano

select * from filmes
order by ano

-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração

select * from filmes
where nome = 'De Volta para o futuro'

-- 4 - Buscar os filmes lançados em 1997

select * from filmes
where ano = 1997

-- 5 - Buscar os filmes lançados APÓS o ano 2000

select * from filmes
where ano > 2000

-- 6 - Buscar os filmes com a duracao maior que 100
-- e menor que 150, ordenando pela duracao em ordem crescente

select * from filmes
where duracao > 100 and duracao < 150
order by duracao

-- 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por
-- ano, ordenando pela duracao em ordem decrescente

select 
	ano,
	count(*) as 'Quantidade'
from filmes
group by ano 
order by Quantidade desc

-- 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome

select * from atores
where genero = 'm'

-- 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome,
-- e ordenando pelo PrimeiroNome

select * from atores
where genero = 'f'
order by primeironome

-- 10 - Buscar o nome do filme e o gênero

select 
	nome, genero
from
	filmes f
inner join filmesGenero on f.id = filmesGenero.idFilme
inner join generos g on g.id = filmesGenero.idGenero

-- 11 - Buscar o nome do filme e o gênero do tipo "Mistério"

select 
	nome, genero
from
	filmes f
inner join filmesGenero on f.id = filmesGenero.idFilme
inner join generos g on g.id = filmesGenero.idGenero
where genero = 'Mistério'

-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel


select
	F.Nome, A.PrimeiroNome, A.UltimoNome, EF.Papel
from
	filmes F
inner join elencoFilme EF on f.id = ef.idFilme
inner join atores A on EF.idAtor = A.id
