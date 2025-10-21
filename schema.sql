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
FOREIGN KEY (id_genero) REFERENCES generos(id_genero),
FOREIGN KEY (id_artista) REFERENCES Artistas(id_artista),
FOREIGN KEY (id_album) REFERENCES Albuns(id_album)
);

--Bloco de Inserção dos Dados (Conteúdo)

--Inserindo Gêneros
  
INSERT INTO generos(nome_genero) VALUES ('Sertanejo'), ('RapGeek') , ('Pop e R&B Contemporâneo'), ('Pop'), ('Eletrônica');

--Inserindo Artistas

INSERT INTO Artistas(nome_artista) VALUES ('Luan Santana') , ('VMZ') , ('lil chainz, VMZ e MHRAP') , ('Justin Bieber'), ('Sabrina Carpenter'), ('Alan Walker');

-- Inserindo Álbuns (O ID do artista será utilizado para identificação)
-- Luan Santana (ID 1) , VMZ (ID 2) , lil chainz, VMZ e MHRAP (ID 3), Justin Bieber (ID 4), Sabrina Carpenter (ID 5), Alan Walker (ID 6)

INSERT INTO Albuns(nome_album, ano_lancamento, id_artista) VALUES ('AO VIVO NA LUA', 2025, 1);
INSERT INTO Albuns(nome_album, ano_lancamento, id_artista) VALUES ('Luan City 2.0', 2023, 1);
INSERT INTO Albuns(nome_album, ano_lancamento, id_artista) VALUES ('BAKA', 2022, 2);
INSERT INTO Albuns(nome_album, ano_lancamento, id_artista) VALUES ('WIN', 2022, 2);
INSERT INTO Albuns(nome_album, ano_lancamento, id_artista) VALUES ('A Vida é um Game', 2021, 2);
INSERT INTO Albuns(nome_album, ano_lancamento, id_artista) VALUES ('Drink Azul', 2021, 3);
INSERT INTO Albuns(nome_album, ano_lancamento, id_artista) VALUES ('Drink Azul 2', 2024, 3);
INSERT INTO Albuns(nome_album, ano_lancamento, id_artista) VALUES ('Believe', 2012, 4);
INSERT INTO Albuns(nome_album, ano_lancamento, id_artista) VALUES ('Purpose', 2015, 4);
INSERT INTO Albuns(nome_album, ano_lancamento, id_artista) VALUES ('Short n''Sweet', 2024, 5);
INSERT INTO Albuns(nome_album, ano_lancamento, id_artista) VALUES ('Different World', 2018, 6);
INSERT INTO Albuns(nome_album, ano_lancamento, id_artista) VALUES ('World of Walker', 2021, 6);

--Inserindo Músicas (Para melhor compreensão, segue a seguinte estrutura composta por IDs) -> (ID Gênero, ID Artista e ID Álbum)
--Gêneros: Sertanejo(1), RapGeek(2), Pop e R&B Contemporâneo(3), Pop(4), Eletrônica(5)
--Artistas: Luan Santana(1), VMZ(2), lil chainz, VMZ e MHRAP(3), Justin Bieber(4), Sabrina Carpenter(5), Alan Walker(6)
--Albuns: AO VIVO NA LUA(1), Luan City 2.0 (2), BAKA(3), WIN(4), A Vida é um Game(5), Drink Azul(6), Drink Azul 2(7), Believe(8), Purpose(9), Short n' Sweet(10), Different World(11), World of Walker(12)


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
INSERT INTO musicas VALUES (14, 'Deus é Muito Bom (Ao Vivo)', 2023, 1, 1, 2);
INSERT INTO musicas VALUES (15, 'Mulher Segura (Ao Vivo)', 2023, 1, 1, 2);
INSERT INTO musicas VALUES (16, 'Meio Termo (Ao Vivo)', 2023, 1, 1, 2);
INSERT INTO musicas VALUES (17, 'Ambiente Errado (Ao Vivo)', 2023, 1, 1, 2);
INSERT INTO musicas VALUES (18, 'Sem Sentimento (Ao Vivo)', 2023, 1, 1, 2);
INSERT INTO musicas VALUES (19, 'Me Desbloqueia Aí (Ao Vivo)', 2023, 1, 1, 2);
INSERT INTO musicas VALUES (20, 'Calvin Klein (Ao Vivo)', 2023, 1, 1, 2);
INSERT INTO musicas VALUES (21, 'E Aí (Ao Vivo)', 2023, 1, 1, 2);
INSERT INTO musicas VALUES (22, 'Vida Noturna (Ao Vivo)', 2023, 1, 1, 2);
INSERT INTO musicas VALUES (23, 'Hype (Ao Vivo)', 2023, 1, 1, 2);
INSERT INTO musicas VALUES (24, 'Procura-se (Ao Vivo)', 2023, 1, 1, 2);
INSERT INTO musicas VALUES (25, 'Refletindo Mágoas (Ao Vivo)', 2023, 1, 1, 2);
INSERT INTO musicas VALUES (26, 'Tudo o Que Eu Queria (Ao Vivo)', 2023, 1, 1, 2);
INSERT INTO musicas VALUES (27, 'Hino dos Solteiros (Ao Vivo)', 2023, 1, 1, 2);
INSERT INTO musicas VALUES (28, 'Amiga de Ex Minha (Ao Vivo)', 2023, 1, 1, 2);
INSERT INTO musicas VALUES (29, 'Solteira Enrustida (Ao Vivo)', 2023, 1, 1, 2);
INSERT INTO musicas VALUES (30, 'Carregador (Ao Vivo)', 2023, 1, 1, 2);
INSERT INTO musicas VALUES (31, 'Tímida (Ao Vivo)', 2023, 1, 1, 2);
INSERT INTO musicas VALUES (32, 'Pouco Beijo, Muito Gelo (Ao Vivo)', 2023, 1, 1, 2);
INSERT INTO musicas VALUES (33, 'Vai Chorar no Carro (Ao Vivo)', 2023, 1, 1, 2);
INSERT INTO musicas VALUES (34, 'Saudade Imperceptível (Ao Vivo)', 2023, 1, 1, 2);
INSERT INTO musicas VALUES (35, 'BAKA', 2022, 2, 2, 3);
INSERT INTO musicas VALUES (36, 'WIN', 2022, 2, 2 , 4);
INSERT INTO musicas VALUES (37, 'A Vida é um Game', 2021, 2, 2, 5);
INSERT INTO musicas VALUES (38, 'Drink Azul', 2021, 2, 3, 6);
INSERT INTO musicas VALUES (39, 'Drink Azul 2', 2024, 2, 3, 7);
INSERT INTO musicas VALUES (40, 'All Around The World', 2012, 3, 4, 8);
INSERT INTO musicas VALUES (41, 'Boyfriend', 2012, 3, 4, 8);
INSERT INTO musicas VALUES (42, 'As Long as Love You Love Me', 2012, 3, 4, 8);
INSERT INTO musicas VALUES (43, 'Catching Feelings', 2012, 3, 4, 8);
INSERT INTO musicas VALUES (44, 'Take You', 2012, 3, 4, 8);
INSERT INTO musicas VALUES (45, 'Right Here', 2012, 3, 4, 8);
INSERT INTO musicas VALUES (46, 'Fall', 2012, 3, 4, 8);
INSERT INTO musicas VALUES (47, 'Die in Your Arms', 2012, 3, 4, 8);
INSERT INTO musicas VALUES (48, 'Thought of You', 2012, 3, 4, 8);
INSERT INTO musicas VALUES (49, 'Beauty and a Beat', 2012, 3, 4, 8);
INSERT INTO musicas VALUES (50, 'One Love', 2012, 3, 4, 8);
INSERT INTO musicas VALUES (51, 'Be Alright', 2012, 3, 4, 8);
INSERT INTO musicas VALUES (52, 'Believe', 2012, 3, 4, 8);
INSERT INTO musicas VALUES (53, 'Mark My Words', 2015, 3, 4, 9);
INSERT INTO musicas VALUES (54, 'l''ll Show You', 2015, 3, 4, 9);
INSERT INTO musicas VALUES (55, 'What Do You Mean?', 2015, 3, 4, 9);
INSERT INTO musicas VALUES (56, 'Sorry', 2015, 3, 4, 9);
INSERT INTO musicas VALUES (57, 'Love Yourself', 2015, 3, 4, 9);
INSERT INTO musicas VALUES (58, 'Company', 2015, 3, 4, 9);
INSERT INTO musicas VALUES (59, 'No Pressure', 2015, 3, 4, 9);
INSERT INTO musicas VALUES (60, 'No Sense', 2015, 3, 4, 9);
INSERT INTO musicas VALUES (61, 'The Feeling', 2015, 3, 4, 9);
INSERT INTO musicas VALUES (62, 'Life Is Worth Living', 2015, 3, 4, 9);
INSERT INTO musicas VALUES (63, 'Where Are U Now', 2015, 3, 4, 9);
INSERT INTO musicas VALUES (64, 'Children', 2015, 3, 4, 9);
INSERT INTO musicas VALUES (65, 'Purpose', 2015, 3, 4, 9);
INSERT INTO musicas VALUES (66, 'Taste', 2024, 4, 5, 10);
INSERT INTO musicas VALUES (67, 'Please Please Please', 2024, 4, 5, 10);
INSERT INTO musicas VALUES (68, 'Good Graces', 2024, 4, 5, 10);
INSERT INTO musicas VALUES (69, 'Sharpest Tool', 2024, 4, 5, 10);
INSERT INTO musicas VALUES (70, 'Coincidence', 2024, 4, 5, 10);
INSERT INTO musicas VALUES (71, 'Bed Chem', 2024, 4, 5, 10);
INSERT INTO musicas VALUES (72, 'Espresso', 2024, 4, 5, 10);
INSERT INTO musicas VALUES (73, 'Dumb & Poetic', 2024, 4, 5, 10);
INSERT INTO musicas VALUES (74, 'Slim Pickins', 2024, 4, 5, 10);
INSERT INTO musicas VALUES (75, 'Juno', 2024, 4, 5, 10);
INSERT INTO musicas VALUES (76, 'Lie To Girls', 2024, 4, 5, 10);
INSERT INTO musicas VALUES (77, 'Don''t Slime', 2024, 4, 5, 10);
INSERT INTO musicas VALUES (78, 'Lost Control', 2018, 5, 6, 11);
INSERT INTO musicas VALUES (79, 'Lily', 2018, 5, 6, 11);
INSERT INTO musicas VALUES (80, 'Lonely', 2018, 5, 6, 11);
INSERT INTO musicas VALUES (81, 'Sing Me to Sleep', 2018, 5, 6, 11);
INSERT INTO musicas VALUES (82, 'All Falls Down', 2018, 5, 6, 11);
INSERT INTO musicas VALUES (83, 'Darkside', 2018, 5, 6, 11);
INSERT INTO musicas VALUES (84, 'Alone', 2018, 5, 6, 11);
INSERT INTO musicas VALUES (85, 'Diamond Heart', 2018, 5, 6, 11);
INSERT INTO musicas VALUES (86, 'Faded', 2018, 5, 6, 11);
INSERT INTO musicas VALUES (87, 'Alone Part. II', 2021, 5, 6, 12);
INSERT INTO musicas VALUES (88, 'On My Way', 2021, 5, 6, 12);