-- Bloco de Criação das Tabelas (Estrutura)
CREATE TABLE generos (
  id_genero INTEGER PRIMARY KEY AUTOINCREMENT,
  nome_genero VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE Artistas (
id_artista INTEGER PRIMARY KEY AUTOINCREMENT,
nome_artista VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE Albuns (
id_album INTEGER PRIMARY KEY AUTOINCREMENT,
nome_album VARCHAR(100),
ano_lancamento INTEGER,
id_artista INTEGER,
FOREIGN KEY (id_artista) REFERENCES Artistas(id_artista)
);

CREATE TABLE musicas (
id_musica INTEGER PRIMARY KEY,
nome_musica VARCHAR(100),
ano_publicacao INTEGER,
id_genero INTEGER,
id_artista INTEGER,
id_album INTEGER,
FOREIGN KEY (id_genero) REFERENCES generos(id_genero)
FOREIGN KEY (id_artista) REFERENCES Artistas(id_artista)
FOREIGN KEY (id_album) REFERENCES Albuns(id_album)
);

--Bloco de Inserção dos Dados (Conteúdo)

--Inserindo Gêneros
  
INSERT INTO generos(nome_genero) VALUES ('Sertanejo'), ('RapGeek');

--Inserindo Artistas

INSERT INTO Artistas(nome_artista) VALUES ('Luan Santana') , ('VMZ') , ('lil chainz, VMZ e MHRAP');

-- Inserindo Álbuns (O ID do artista será utilizado para identificação)
-- Luan Santana (ID 1) , VMZ (ID 2) , lil chainz, VMZ e MHRAP (ID 3)

INSERT INTO Albuns(nome_album, ano_lancamento, id_artista) VALUES ('AO VIVO NA LUA', 2025, 1);
INSERT INTO Albuns(nome_album, ano_lancamento, id_artista) VALUES ('BAKA', 2022, 2);
INSERT INTO Albuns(nome_album, ano_lancamento, id_artista) VALUES ('WIN', 2022, 2);
INSERT INTO Albuns(nome_album, ano_lancamento, id_artista) VALUES ('A Vida é um Game', 2021, 2);
INSERT INTO Albuns(nome_album, ano_lancamento, id_artista) VALUES ('Drink Azul', 2021, 3);
INSERT INTO Albuns(nome_album, ano_lancamento, id_artista) VALUES ('Drink Azul 2', 2024, 3);

--Inserindo Músicas (Para melhor compreensão, segue a seguinte estrutura composta por IDs) -> (ID Gênero, ID Artista e ID Álbum)
--Gêneros: Sertanejo(1), RapGeek(2)
--Artistas: Luan Santana(1), VMZ(2), lil chainz, VMZ e MHRAP(3)
--Albuns: AO VIVO NA LUA(1), BAKA(2), WIN(3), A Vida é um Game(4), Drink Azul(5), Drink Azul 2(6)

INSERT INTO musicas VALUES (1, 'Aluga-se (Ao Vivo)', 2025, 1, 1, 1);
INSERT INTO musicas VALUES (2, 'Dona (Ao Vivo)', 2025, 1, 1, 1);
INSERT INTO musicas VALUES (3, 'Chuva ou Choro (Ao Vivo)', 2025, 1, 1, 1);
INSERT INTO musicas VALUES (4, 'Violão (Ao Vivo)', 2025, 1, 1, 1);
INSERT INTO musicas VALUES (5, 'Parece (Ao Vivo)', 2025, 1, 1, 1);
INSERT INTO musicas VALUES (6, 'Clone (Ao Vivo)', 2025, 1, 1, 1);
INSERT INTO musicas VALUES (7, 'Sedutor (Ao Vivo)', 2025, 1, 1, 1);
INSERT INTO musicas VALUES (8, 'Meia Noite a Seis (Ao Vivo)', 2025, 1, 1, 1);
INSERT INTO musicas VALUES (9,'Certeza (Ao Vivo)', 2025, 1, 1, 1);
INSERT INTO musicas VALUES (10, 'Se Arrependimento Matasse (Ao Vivo)', 2025, 1, 1, 1);
INSERT INTO musicas VALUES (11, 'Coisas que Eu Não Vou Deixar de Ter (Ao Vivo)', 2025, 1, 1, 1);
INSERT INTO musicas VALUES (12, 'Decidida a Me Esquecer (Ao Vivo)', 2025, 1, 1, 1);
INSERT INTO musicas VALUES (13, 'Eles Estavam Certos (Ao Vivo)', 2025, 1, 1, 1);
INSERT INTO musicas VALUES (14, 'BAKA', 2022, 2, 2, 2);
INSERT INTO musicas VALUES (15, 'WIN', 2022, 2, 2 , 3);
INSERT INTO musicas VALUES (16, 'A Vida é um Game', 2021, 2, 2, 4);
INSERT INTO musicas VALUES (17, 'Drink Azul', 2021, 2, 3, 5);
INSERT INTO musicas VALUES (18, 'Drink Azul 2', 2024, 2, 3, 6);