
// USER CONSTRAINTS
CREATE CONSTRAINT user_id_unique IF NOT EXISTS
FOR (u:User)
REQUIRE u.userId IS UNIQUE;

CREATE CONSTRAINT user_email_unique IF NOT EXISTS
FOR (u:User)
REQUIRE u.email IS UNIQUE;


// MOVIE CONSTRAINTS
CREATE CONSTRAINT movie_id_unique IF NOT EXISTS
FOR (m:Movie)
REQUIRE m.movieId IS UNIQUE;



// SERIES CONSTRAINTS
CREATE CONSTRAINT series_id_unique IF NOT EXISTS
FOR (s:Series)
REQUIRE s.seriesId IS UNIQUE;


// GENRE CONSTRAINTS
CREATE CONSTRAINT genre_id_unique IF NOT EXISTS
FOR (g:Genre)
REQUIRE g.genreId IS UNIQUE;

CREATE CONSTRAINT genre_name_unique IF NOT EXISTS
FOR (g:Genre)
REQUIRE g.name IS UNIQUE;


// ACTOR CONSTRAINTS
CREATE CONSTRAINT actor_id_unique IF NOT EXISTS
FOR (a:Actor)
REQUIRE a.actorId IS UNIQUE;

// DIRECTOR CONSTRAINTS
CREATE CONSTRAINT director_id_unique IF NOT EXISTS
FOR (d:Director)
REQUIRE d.directorId IS UNIQUE;


// USERS

MERGE (u:User {
  userId: 'u1',
  name: 'Josefina',
  email: 'josefina@email.com',
  gender: 'F',
  birthDate: date('1993-11-01'),
  country: 'Brazil',
  subscriptionType: 'Premium',
  joinDate: date('2023-05-12'),
  isActive: true
});

MERGE (u:User {
  userId: 'u2',
  name: 'Carlos',
  email: 'carlos@email.com',
  gender: 'M',
  birthDate: date('1990-07-23'),
  country: 'Brazil',
  subscriptionType: 'Free',
  joinDate: date('2023-02-15'),
  isActive: true
});

MERGE (u:User {
  userId: 'u3',
  name: 'Luana',
  email: 'luana@email.com',
  gender: 'F',
  birthDate: date('2000-01-10'),
  country: 'Portugal',
  subscriptionType: 'Premium',
  joinDate: date('2024-03-02'),
  isActive: true
});

MERGE (u:User {
  userId: 'u4',
  name: 'Marcos',
  email: 'marcos@email.com',
  gender: 'M',
  birthDate: date('1987-06-11'),
  country: 'Brazil',
  subscriptionType: 'Family',
  joinDate: date('2023-09-08'),
  isActive: true
});

MERGE (u:User {
  userId: 'u5',
  name: 'Sofia',
  email: 'sofia@email.com',
  gender: 'F',
  birthDate: date('1995-09-12'),
  country: 'Chile',
  subscriptionType: 'Free',
  joinDate: date('2023-11-20'),
  isActive: true
});

MERGE (u:User {
  userId: 'u6',
  name: 'João',
  email: 'joao@email.com',
  gender: 'M',
  birthDate: date('1998-03-25'),
  country: 'Brazil',
  subscriptionType: 'Premium',
  joinDate: date('2023-06-01'),
  isActive: true
});

MERGE (u:User {
  userId: 'u7',
  name: 'Fernanda',
  email: 'fernanda@email.com',
  gender: 'F',
  birthDate: date('1989-12-05'),
  country: 'Argentina',
  subscriptionType: 'Family',
  joinDate: date('2023-08-18'),
  isActive: true
});

MERGE (u:User {
  userId: 'u8',
  name: 'Miguel',
  email: 'miguel@email.com',
  gender: 'M',
  birthDate: date('1997-02-14'),
  country: 'Brazil',
  subscriptionType: 'Free',
  joinDate: date('2024-01-25'),
  isActive: true
});

MERGE (u:User {
  userId: 'u9',
  name: 'Laura',
  email: 'laura@email.com',
  gender: 'F',
  birthDate: date('1994-10-30'),
  country: 'Peru',
  subscriptionType: 'Premium',
  joinDate: date('2024-05-09'),
  isActive: true
});

MERGE (u:User {
  userId: 'u10',
  name: 'Rafael',
  email: 'rafael@email.com',
  gender: 'M',
  birthDate: date('1992-08-19'),
  country: 'Brazil',
  subscriptionType: 'Premium',
  joinDate: date('2023-04-14'),
  isActive: true
});


// MOVIES
MERGE (m:Movie {
  movieId: 'm1',
  title: 'Inception',
  genre: 'Sci-Fi',
  releaseYear: 2010,
  duration: 148,
  ageRating: '14',
  language: 'English',
  country: 'USA',
  isAvailable: true
});

MERGE (m:Movie {
  movieId: 'm2',
  title: 'The Godfather',
  genre: 'Crime',
  releaseYear: 1972,
  duration: 175,
  ageRating: '16',
  language: 'English',
  country: 'USA',
  isAvailable: true
});

MERGE (m:Movie {
  movieId: 'm3',
  title: 'Parasite',
  genre: 'Thriller',
  releaseYear: 2019,
  duration: 132,
  ageRating: '16',
  language: 'Korean',
  country: 'South Korea',
  isAvailable: true
});

MERGE (m:Movie {
  movieId: 'm4',
  title: 'Interstellar',
  genre: 'Sci-Fi',
  releaseYear: 2014,
  duration: 169,
  ageRating: '10',
  language: 'English',
  country: 'USA',
  isAvailable: true
});

MERGE (m:Movie {
  movieId: 'm5',
  title: 'Coco',
  genre: 'Animation',
  releaseYear: 2017,
  duration: 105,
  ageRating: 'L',
  language: 'Spanish',
  country: 'Mexico',
  isAvailable: true
});

MERGE (m:Movie {
  movieId: 'm6',
  title: 'The Dark Knight',
  genre: 'Action',
  releaseYear: 2008,
  duration: 152,
  ageRating: '12',
  language: 'English',
  country: 'USA',
  isAvailable: true
});

MERGE (m:Movie {
  movieId: 'm7',
  title: 'Spirited Away',
  genre: 'Animation',
  releaseYear: 2001,
  duration: 125,
  ageRating: 'L',
  language: 'Japanese',
  country: 'Japan',
  isAvailable: true
});

MERGE (m:Movie {
  movieId: 'm8',
  title: 'Avatar',
  genre: 'Sci-Fi',
  releaseYear: 2009,
  duration: 162,
  ageRating: '12',
  language: 'English',
  country: 'USA',
  isAvailable: true
});

MERGE (m:Movie {
  movieId: 'm9',
  title: 'The Irishman',
  genre: 'Crime',
  releaseYear: 2019,
  duration: 209,
  ageRating: '16',
  language: 'English',
  country: 'USA',
  isAvailable: true
});

MERGE (m:Movie {
  movieId: 'm10',
  title: 'City of God',
  genre: 'Drama',
  releaseYear: 2002,
  duration: 130,
  ageRating: '18',
  language: 'Portuguese',
  country: 'Brazil',
  isAvailable: true
});


// SERIES

MERGE (s:Series {seriesId: 's1', title: 'Breaking Bad', genre: 'Crime', releaseYear: 2008, seasons: 5, language: 'English', country: 'USA', isAvailable: true});
MERGE (s:Series {seriesId: 's2', title: 'Stranger Things', genre: 'Sci-Fi', releaseYear: 2016, seasons: 4, language: 'English', country: 'USA', isAvailable: true});
MERGE (s:Series {seriesId: 's3', title: 'Dark', genre: 'Sci-Fi', releaseYear: 2017, seasons: 3, language: 'German', country: 'Germany', isAvailable: true});
MERGE (s:Series {seriesId: 's4', title: 'Money Heist', genre: 'Crime', releaseYear: 2017, seasons: 5, language: 'Spanish', country: 'Spain', isAvailable: true});
MERGE (s:Series {seriesId: 's5', title: 'The Crown', genre: 'Drama', releaseYear: 2016, seasons: 6, language: 'English', country: 'UK', isAvailable: true});
MERGE (s:Series {seriesId: 's6', title: 'The Office', genre: 'Comedy', releaseYear: 2005, seasons: 9, language: 'English', country: 'USA', isAvailable: true});
MERGE (s:Series {seriesId: 's7', title: 'Friends', genre: 'Comedy', releaseYear: 1994, seasons: 10, language: 'English', country: 'USA', isAvailable: true});
MERGE (s:Series {seriesId: 's8', title: 'Narcos', genre: 'Crime', releaseYear: 2015, seasons: 3, language: 'Spanish', country: 'Colombia', isAvailable: true});
MERGE (s:Series {seriesId: 's9', title: 'The Witcher', genre: 'Fantasy', releaseYear: 2019, seasons: 3, language: 'English', country: 'Poland', isAvailable: true});
MERGE (s:Series {seriesId: 's10', title: 'Lupin', genre: 'Crime', releaseYear: 2021, seasons: 3, language: 'French', country: 'France', isAvailable: true});



// GENRE
MERGE (g:Genre {genreId: 'g1', name: 'Sci-Fi'});
MERGE (g:Genre {genreId: 'g2', name: 'Crime'});
MERGE (g:Genre {genreId: 'g3', name: 'Drama'});
MERGE (g:Genre {genreId: 'g4', name: 'Comedy'});
MERGE (g:Genre {genreId: 'g5', name: 'Thriller'});
MERGE (g:Genre {genreId: 'g6', name: 'Animation'});
MERGE (g:Genre {genreId: 'g7', name: 'Fantasy'});
MERGE (g:Genre {genreId: 'g8', name: 'Action'});
MERGE (g:Genre {genreId: 'g9', name: 'Romance'});
MERGE (g:Genre {genreId: 'g10', name: 'Adventure'});


//ACTORS
MERGE (a:Actor {actorId: 'a1', name: 'Leonardo DiCaprio', birthDate: date('1974-11-11'), nationality: 'USA'});
MERGE (a:Actor {actorId: 'a2', name: 'Christian Bale', birthDate: date('1974-01-30'), nationality: 'UK'});
MERGE (a:Actor {actorId: 'a3', name: 'Tom Hanks', birthDate: date('1956-07-09'), nationality: 'USA'});
MERGE (a:Actor {actorId: 'a4', name: 'Emma Stone', birthDate: date('1988-11-06'), nationality: 'USA'});
MERGE (a:Actor {actorId: 'a5', name: 'Morgan Freeman', birthDate: date('1937-06-01'), nationality: 'USA'});
MERGE (a:Actor {actorId: 'a6', name: 'Bryan Cranston', birthDate: date('1956-03-07'), nationality: 'USA'});
MERGE (a:Actor {actorId: 'a7', name: 'Millie Bobby Brown', birthDate: date('2004-02-19'), nationality: 'UK'});
MERGE (a:Actor {actorId: 'a8', name: 'Pedro Pascal', birthDate: date('1975-04-02'), nationality: 'Chile'});
MERGE (a:Actor {actorId: 'a9', name: 'Song Kang-ho', birthDate: date('1967-03-17'), nationality: 'South Korea'});
MERGE (a:Actor {actorId: 'a10', name: 'Robert De Niro', birthDate: date('1943-08-17'), nationality: 'USA'});


// DIRECTORS
MERGE (d:Director {directorId: 'd1', name: 'Christopher Nolan', nationality: 'UK', birthDate: date('1970-07-30')});
MERGE (d:Director {directorId: 'd2', name: 'Francis Ford Coppola', nationality: 'USA', birthDate: date('1939-04-07')});
MERGE (d:Director {directorId: 'd3', name: 'Bong Joon-ho', nationality: 'South Korea', birthDate: date('1969-09-14')});
MERGE (d:Director {directorId: 'd4', name: 'Pete Docter', nationality: 'USA', birthDate: date('1968-10-09')});
MERGE (d:Director {directorId: 'd5', name: 'Hayao Miyazaki', nationality: 'Japan', birthDate: date('1941-01-05')});
MERGE (d:Director {directorId: 'd6', name: 'Martin Scorsese', nationality: 'USA', birthDate: date('1942-11-17')});
MERGE (d:Director {directorId: 'd7', name: 'Fernando Meirelles', nationality: 'Brazil', birthDate: date('1955-11-09')});
MERGE (d:Director {directorId: 'd8', name: 'Vince Gilligan', nationality: 'USA', birthDate: date('1967-02-10')});
MERGE (d:Director {directorId: 'd9', name: 'Duffer Brothers', nationality: 'USA', birthDate: date('1984-02-15')});
MERGE (d:Director {directorId: 'd10', name: 'Baran bo Odar', nationality: 'Germany', birthDate: date('1978-04-18')});


// RELATIONSHIPS

// MOVIE -> GENRE
MATCH (m:Movie), (g:Genre)
WHERE m.genre = g.name
MERGE (m)-[:IN_GENRE]->(g);

// SERIES -> GENRE
MATCH (s:Series), (g:Genre)
WHERE s.genre = g.name
MERGE (s)-[:IN_GENRE]->(g);

// DIRECTOR -> MOVIE
MATCH (d:Director {name: 'Christopher Nolan'}), (m:Movie {title: 'Inception'})
MERGE (d)-[:DIRECTED]->(m);
MATCH (d:Director {name: 'Christopher Nolan'}), (m:Movie {title: 'Interstellar'})
MERGE (d)-[:DIRECTED]->(m);
MATCH (d:Director {name: 'Martin Scorsese'}), (m:Movie {title: 'The Irishman'})
MERGE (d)-[:DIRECTED]->(m);
MATCH (d:Director {name: 'Bong Joon-ho'}), (m:Movie {title: 'Parasite'})
MERGE (d)-[:DIRECTED]->(m);

// DIRECTOR -> SERIES
MATCH (d:Director {name: 'Vince Gilligan'}), (s:Series {title: 'Breaking Bad'})
MERGE (d)-[:DIRECTED]->(s);
MATCH (d:Director {name: 'Duffer Brothers'}), (s:Series {title: 'Stranger Things'})
MERGE (d)-[:DIRECTED]->(s);
MATCH (d:Director {name: 'Baran bo Odar'}), (s:Series {title: 'Dark'})
MERGE (d)-[:DIRECTED]->(s);

// ACTOR -> MOVIE
MATCH (a:Actor {name: 'Leonardo DiCaprio'}), (m:Movie {title: 'Inception'})
MERGE (a)-[:ACTED_IN]->(m);
MATCH (a:Actor {name: 'Robert De Niro'}), (m:Movie {title: 'The Irishman'})
MERGE (a)-[:ACTED_IN]->(m);
MATCH (a:Actor {name: 'Song Kang-ho'}), (m:Movie {title: 'Parasite'})
MERGE (a)-[:ACTED_IN]->(m);

// ACTOR -> SERIES
MATCH (a:Actor {name: 'Bryan Cranston'}), (s:Series {title: 'Breaking Bad'})
MERGE (a)-[:ACTED_IN]->(s);
MATCH (a:Actor {name: 'Millie Bobby Brown'}), (s:Series {title: 'Stranger Things'})
MERGE (a)-[:ACTED_IN]->(s);

// USER -> WATCHED (Movies and Series)
MATCH (u:User {userId: 'u1'}), (m:Movie {title: 'Inception'})
MERGE (u)-[:WATCHED {rating: 5}]->(m);
MATCH (u:User {userId: 'u1'}), (s:Series {title: 'Breaking Bad'})
MERGE (u)-[:WATCHED {rating: 4.5}]->(s);
MATCH (u:User {userId: 'u2'}), (m:Movie {title: 'Coco'})
MERGE (u)-[:WATCHED {rating: 5}]->(m);
MATCH (u:User {userId: 'u3'}), (m:Movie {title: 'Parasite'})
MERGE (u)-[:WATCHED {rating: 4.8}]->(m);
MATCH (u:User {userId: 'u4'}), (s:Series {title: 'Dark'})
MERGE (u)-[:WATCHED {rating: 5}]->(s);
MATCH (u:User {userId: 'u5'}), (m:Movie {title: 'Interstellar'})
MERGE (u)-[:WATCHED {rating: 4.7}]->(m);
MATCH (u:User {userId: 'u6'}), (s:Series {title: 'Stranger Things'})
MERGE (u)-[:WATCHED {rating: 4.9}]->(s);
MATCH (u:User {userId: 'u7'}), (m:Movie {title: 'The Godfather'})
MERGE (u)-[:WATCHED {rating: 4.6}]->(m);
MATCH (u:User {userId: 'u8'}), (m:Movie {title: 'Avatar'})
MERGE (u)-[:WATCHED {rating: 4.3}]->(m);
MATCH (u:User {userId: 'u9'}), (s:Series {title: 'Money Heist'})
MERGE (u)-[:WATCHED {rating: 4.5}]->(s);
MATCH (u:User {userId: 'u10'}), (m:Movie {title: 'City of God'})
MERGE (u)-[:WATCHED {rating: 5}]->(m);

