--CONSULTA 1: Listar todas as músicas do cantor Justin Bieber (Artista ID 4)
SELECT nome_musica, ano_publicacao
FROM musicas
WHERE id_artista = 4;

--CONSULTA 2: Mostrar nome dos Artistas e quantos Álbuns cada um possui
SELECT Artistas.nome_artista,
COUNT(Albuns.nome_album)
FROM Albuns
INNER JOIN Artistas
ON Artistas.id_artista = Albuns.id_artista
GROUP BY Artistas.nome_artista

--CONSULTA 3: Filtragem de Álbuns por data de lançamento e seus respectivos nomes
SELECT nome_album, ano_lancamento
FROM Albuns
WHERE ano_lancamento > 2023;

--CONSULTA 4: Listar todas as músicas do Álbum "Purpose"
SELECT nome_musica
FROM Albuns
INNER JOIN musicas
ON Musicas.id_album = Albuns.id_album
WHERE albuns.nome_album = 'Purpose';

--CONSULTA 5: Contar quantas músicas cada Artista tem no catálogo
SELECT Artistas.nome_artista,
COUNT(musicas.id_musica) AS total_de_musicas
FROM musicas
INNER JOIN Artistas
ON Artistas.id_artista = musicas.id_artista
GROUP BY Artistas.nome_artista
ORDER BY total_de_musicas DESC;

--CONSULTA 6: Retornar todos os artistas cadastradas
SELECT * FROM Artistas

--CONSULTA 7: Mostrar todas as músicas do gênero Pop/R&B (Gênero ID 3)
SELECT Albuns.nome_album, Artistas.nome_artista
FROM musicas
INNER JOIN Albuns ON musicas.id_album = Albuns.id_album
INNER JOIN Artistas ON Albuns.id_artista = Artistas.id_artista
WHERE musicas.id_genero = 3
GROUP BY Albuns.nome_album