# Atividade: Sistema de Recomendação de Música

## Descrição da Atividade
![WhatsApp Image 2025-11-18 at 21 24 21_e4d39c28](https://github.com/user-attachments/assets/55befcd7-1a8b-4c14-8cd0-9c7497f35292)


## Modelagem (arrows.app)
<img width="927" height="533" alt="Untitled graph (4)" src="https://github.com/user-attachments/assets/b5ec4390-1583-4265-9b26-fed00158e3a8" />

### Definindo constraints

- Id's únicos

      // Artista
        CREATE CONSTRAINT artist_id_unique IF NOT EXISTS
        FOR (a:Artist)
        REQUIRE a.id IS UNIQUE;
        
        // Usuário
        CREATE CONSTRAINT user_id_unique IF NOT EXISTS
        FOR (u:User)
        REQUIRE u.id IS UNIQUE;
        
        // Música
        CREATE CONSTRAINT music_id_unique IF NOT EXISTS
        FOR (m:Music)
        REQUIRE m.id IS UNIQUE;
        
        // Gênero
        CREATE CONSTRAINT genre_id_unique IF NOT EXISTS
        FOR (g:Genre)
        REQUIRE g.id IS UNIQUE;

- E-mail e CPF únicos (Usuário)

        CREATE CONSTRAINT user_email_unique IF NOT EXISTS
        FOR (u:User)
        REQUIRE u.email IS UNIQUE;
        
        CREATE CONSTRAINT user_cpf_unique IF NOT EXISTS
        FOR (u:User)
        REQUIRE u.cpf IS UNIQUE;


- Name único (Artista e Gênero)

        // Artista
        CREATE CONSTRAINT artist_name_unique IF NOT EXISTS
        FOR (a:Artist)
        REQUIRE a.name IS UNIQUE;
        
        // Gênero
        CREATE CONSTRAINT genre_name_unique IF NOT EXISTS
        FOR (g:Genre)
        REQUIRE g.name IS UNIQUE;

### Definindo as relações

Os id's devem ser substituidos pelo ID dos nós referentes.

- User - FOLLOW - Artist

        MATCH (u:User {id: $userId})
        MATCH (a:Artist {id: $artistId})
        MERGE (u)-[:FOLLOW]->(a);

- User - LISTEN - Music

        MATCH (u:User {id: $userId})
        MATCH (m:Music {id: $musicId})
        MERGE (u)-[:LISTEN {rating: $rating, nListen: $nListen}]->(m);

- Artist - RELEASE - Music

        MATCH (a:Artist {id: $artistId})
        MATCH (m:Music {id: $musicId})
        MERGE (a)-[:RELEASE {date: $date}]->(m);


- Music - HAS - Genre

        MATCH (m:Music {id: $musicId})
        MATCH (g:Genre {id: $genreId})
        MERGE (m)-[:HAS]->(g);

## Carregando dados

Os dados utilizados foi do [Spotify Global Music Dataset (2009–2025)](https://www.kaggle.com/datasets/wardabilal/spotify-global-music-dataset-20092025?resource=download).

Foi necessário aplicar um filtro na coluna de track_name e artist_genre para remover títulos com aspas duplas.


      LOAD CSV WITH HEADERS FROM 'file:///spotify_data_clean.csv' AS row
      CALL {
          WITH row
      
          // MUSIC
          MERGE (m:Music { id: row.track_id })
          SET m.title = row.track_name,
              m.time = row.track_duration_min,
              m.popularity = toInteger(row.track_popularity),
              m.explicit = (row.explicit = "true")
      
          // ARTIST
          MERGE (a:Artist { name: row.artist_name })
          SET a.popularity = toInteger(row.artist_popularity)
      
          // GENRE
          MERGE (g:Genre { name: row.artist_genres })
      
          // Artist - RELEASE - Music
          MERGE (a)-[:RELEASE]->(m)
      
          // Music - HAS - Genre
          MERGE (m)-[:HAS]->(g)
      
      }
      IN TRANSACTIONS OF 1000 ROWS;


