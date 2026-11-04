CREATE TABLE movie (
    movie_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);
CREATE TABLE actor (
    actor_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    movie_id INT REFERENCES movie(movie_id)
);
CREATE TABLE director (
    director_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL
	
);

INSERT INTO movie (name)
VALUES ('Inception'), ('The Dark Knight'), ('Interstellar');


