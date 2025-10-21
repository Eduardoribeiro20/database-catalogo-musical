# 🎵 Catálogo Musical - Banco de Dados SQL

Um projeto de banco de dados para catalogar minhas músicas favoritas, organizando-as por artistas, álbuns e gêneros. Este projeto demonstra a modelagem de dados relacionais e a manipulação de dados com SQL.

## 🚀 Funcionalidades

* Criação de uma estrutura de banco de dados com 4 tabelas (`generos`, `Artistas`, `Albuns`, `musicas`).
* Uso de chaves primárias e estrangeiras para criar relacionamentos entre as tabelas.
* Inserção de um dataset realista com 6 artistas, 12 álbuns e mais de 80 músicas.
* Consultas (`queries`) para extrair informações significativas dos dados (em breve).

## 🛠️ Tecnologias Utilizadas

* **SQL** (SQLite)
* **Git** e **GitHub** para versionamento
* **Visual Studio Code** como editor de código

## ⚙️ Como Usar

1.  Garanta que você tenha um cliente de banco de dados compatível com SQLite (como a extensão do VS Code ou o DBeaver).
2.  Copie o conteúdo do arquivo `schema.sql`.
3.  Execute o script SQL no seu cliente para criar e popular o banco de dados.

## 📈 Estrutura do Banco de Dados

O diagrama abaixo ilustra como as tabelas se relacionam:

```mermaid
erDiagram
    Artistas {
        INTEGER id_artista PK
        VARCHAR nome_artista
    }
    Albuns {
        INTEGER id_album PK
        VARCHAR nome_album
        INTEGER ano_lancamento
        INTEGER id_artista FK
    }
    generos {
        INTEGER id_genero PK
        VARCHAR nome_genero
    }
    musicas {
        INTEGER id_musica PK
        VARCHAR nome_musica
        INTEGER ano_publicacao
        INTEGER id_genero FK
        INTEGER id_artista FK
        INTEGER id_album FK
    }

    musicas ||--o{ generos : "pertence a"
    musicas ||--o{ Artistas : "interpretada por"
    musicas ||--o{ Albuns : "faz parte de"
    Albuns ||--o{ Artistas : "lançado por"
``
