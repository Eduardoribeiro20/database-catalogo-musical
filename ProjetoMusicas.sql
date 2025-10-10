-- SQLite
CREATE TABLE musicas (
id_musica INTEGER PRIMARY KEY,
nome_musica VARCHAR(100),
ano_publicacao INTEGER,
id_genero INTEGER,
FOREIGN KEY (id_genero) REFERENCES generos(id_genero)
);

INSERT INTO musicas VALUES (1, 'Aluga-se (Ao Vivo)', 'Luan Santana', 'AO VIVO NA LUA', 2025, 1);
INSERT INTO musicas VALUES (2, 'Dona (Ao Vivo)', 'Luan Santana', 'AO VIVO NA LUA', 2025, 1);
INSERT INTO musicas VALUES (3, 'Chuva ou Choro (Ao vivo)', 'Luan Santana', 'AO VIVO NA LUA', 2025, 1);
INSERT INTO musicas VALUES (4, 'Violão (Ao Vivo)', 'Luan Santana', 'AO VIVO NA LUA', 2025, 1);
INSERT INTO musicas VALUES (5, 'Parece (Ao Vivo)', 'Luan Santana', 'AO VIVO NA LUA', 2025, 1);
INSERT INTO musicas VALUES (6, 'Clone (Ao Vivo)', 'Luan Santana', 'AO VIVO NA LUA', 2025, 1);
INSERT INTO musicas VALUES (7, 'Sedutor (Ao Vivo)', 'Luan Santana', 'AO VIVO NA LUA', 2025, 1);
INSERT INTO musicas VALUES (8, 'Meia Noite a seis (Ao Vivo)', 'Luan Santana', 'AO VIVO NA LUA', 2025, 1);
INSERT INTO musicas VALUES (9, 'Certeza (Ao Vivo)', 'Luan Santana', 'AO VIVO NA LUA', 2025, 1);
INSERT INTO musicas VALUES (10, 'Se Arrependimento Matasse (Ao Vivo)', 'Luan Santana', 'AO VIVO NA LUA', 2025, 1);
INSERT INTO musicas VALUES (11, 'Coisas que Eu não Vou Deixar de Ter', 'Luan Santana', 'AO VIVO NA LUA', 2025, 1);
INSERT INTO musicas VALUES (12, 'Decidida a Me Esquecer', 'Luan Santana', 'AO VIVO NA LUA', 2025, 1);
INSERT INTO musicas VALUES (13, 'Eles Estavam Certos (Ao Vivo)', 'Luan Santana', 'AO VIVO NA LUA', 2025, 1);

CREATE TABLE generos (
  id_genero INTEGER PRIMARY KEY AUTOINCREMENT,
  nome_genero VARCHAR(50) NOT NULL UNIQUE
);
    
INSERT INTO generos(nome_genero) VALUES ('Sertanejo');
INSERT INTO generos(nome_genero) VALUES ('RapGeek');

INSERT INTO musicas VALUES (14, 'BAKA', 'VMZ', 'BAKA', 2022, 2);
INSERT INTO musicas VALUES (15, 'Win', 'VMZ', 'Win', 2022, 2);
INSERT INTO musicas VALUES (16, 'A Vida é um Game', 'VMZ', 'A Vida é um Game', 2021, 2);
INSERT INTO musicas VALUES (17, 'Drink Azul', 'lil chainz, VMZ e MHRAP', 'Drink Azul', 2021, 2);
INSERT INTO musicas VALUES (18, 'Drink Azul 2', 'lil chainz, VMZ e MHRAP', 'Drink Azul 2', 2024, 2);

--SELECT nome_musica, nome_cantor FROM musicas WHERE nome_cantor = 'Luan Santana';

CREATE TABLE Artistas (
id_artista INTEGER PRIMARY KEY AUTOINCREMENT,
nome_artista VARCHAR(100) NOT NULL UNIQUE,
nacionalidade VARCHAR(100) NOT NULL,
ano_nascimento INTEGER
);


CREATE TABLE Albuns (
id_album INTEGER PRIMARY KEY AUTOINCREMENT,
nome_album VARCHAR(100),
ano_lancamento INTEGER,
FOREIGN KEY (id_artista) REFERENCES Artistas(id_artista)
);