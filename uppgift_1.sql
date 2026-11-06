DROP TABLE IF EXISTS movie_cast CASCADE;
DROP TABLE IF EXISTS movie CASCADE;
DROP TABLE IF EXISTS actor CASCADE;
DROP TABLE IF EXISTS director CASCADE;

CREATE TABLE director (
    director_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL
	
);
CREATE TABLE movie (
    movie_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    director_id INT REFERENCES director(director_id)
);
CREATE TABLE actor (
    actor_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE movie_cast (
    movie_id INT REFERENCES movie(movie_id) ON DELETE CASCADE,
    actor_id INT REFERENCES actor(actor_id) ON DELETE CASCADE,
    role_name VARCHAR(100),
    PRIMARY KEY (movie_id, actor_id)
);
INSERT INTO director (name)
VALUES ('Christopher Nolan');
INSERT INTO actor (name)
VALUES ('Leonardo DiCaprio'), ('Christian Bale'), ('Matthew McConaughey');

INSERT INTO movie (name, director_id)
VALUES ('Inception', 1), ('The Dark Knight', 1), ('Interstellar', 1);





SELECT * FROM movie;
SELECT * FROM actor;