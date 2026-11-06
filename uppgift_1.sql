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

INSERT INTO movie (name)
VALUES ('Inception'), ('The Dark Knight'), ('Interstellar');
INSERT INTO actor (name, actor_id)
VALUES ('Leonardo DiCaprio', 1), ('Christian Bale', 2), ('Matthew McConaughey', 3);
INSERT INTO director (name, director_id)
VALUES ('Christopher Nolan', 1), ('Christopher Nolan', 2), ('Christopher Nolan', 3);



SELECT * FROM movie;
SELECT * FROM actor;