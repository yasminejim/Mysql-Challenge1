-- CREATE DATABASE MySQL_challenge_1;

USE MySQL_challenge_1;

--    Very Easy  --

CREATE TABLE cars (
id INT PRIMARY KEY AUTO_INCREMENT,
make VARCHAR(100),
model VARCHAR(100),
year INT
);

INSERT INTO cars (make, model, year)
VALUES 
('Cadillac', 'Escalade', 2020),
('Mercedes-Benz', 'c250', 2022),
('Honda', 'Civic', 2022);

INSERT INTO cars (make, model, year)
VALUES 
('Honda', 'Accord', 2020),
('Mercedes-Benz', 'c250', 2021);

SELECT * FROM cars;



--   Easy   --
 
 CREATE TABLE books (
 id INT PRIMARY KEY AUTO_INCREMENT,
 title VARCHAR(100),
 publish_date VARCHAR(100),
 author_first_name VARCHAR(100),
 author_last_name VARCHAR(100)
);

INSERT INTO books (title, publish_date, author_first_name, author_last_name)
VALUES
('The Odyssey','725 bce', 'Homer', ''),
('The Divine Comedy','1472', 'Dante', 'Alighieri'),
('The Complete Tales and Poems of Edgar Allen Poe','1849', 'Edgar', 'Allen Poe'),
('The Most Dangerous Game','1924', 'Richard', 'Connell'),
('Twilight','2005', 'Stephenie', 'Meyer');

INSERT INTO books (title, publish_date, author_first_name, author_last_name)
VALUES
('Moby Dick','1851', 'Elizabeth', 'Hardwick'),
('Hamlet','1599', 'William', 'Shakespeare');

DELETE FROM books
WHERE id = 1;

SELECT * FROM books;




--     Med     --

CREATE TABLE movies (
id INT PRIMARY KEY AUTO_INCREMENT,
title VARCHAR(100),
release_date INT(100),
rating VARCHAR(100)
);

INSERT INTO movies (title, release_date, rating)
VALUES
('Hereditary', 2018, 'R'),
('The Cabin In The Woods', 2011, 'R'),
('The Texas Chainsaw Massacre', 1974, 'R'),
('Saw', 2004, 'R'),
('As Above So Below', 2014, 'R'),
('Inception', 2010, 'PG-13'),
('The Matrix', 1999, 'R'),
('Shutter Island', 2010, 'R'),
('The Notebook', 2004, 'PG-13'),
('The Godfather', 1972, 'R');

SELECT * FROM movies;
SELECT * FROM movies
WHERE title LIKE '%s%' ORDER BY release_date ASC;



--    hard   --

CREATE TABLE movies2 (
id INT PRIMARY KEY AUTO_INCREMENT,
title VARCHAR(100),
release_date INT(100),
rating VARCHAR(100),
director_first_name VARCHAR(100),
director_last_name VARCHAR(100)
);

INSERT INTO movies2 (title, release_date, rating,director_first_name, director_last_name)
VALUES
('Hereditary', 2018, 'R','Ari', 'Aster'),
('The Cabin In The Woods', 2011, 'R', 'Drew','Goddard'),
('Saw', 2004, 'R','James','Wan'),
('As Above So Below', 2014, 'R', 'John', 'Dowdle'),
('Inception', 2010, 'PG-13', 'Christopher', 'Nolan'),
('The Matrix', 1999, 'R','Lana', 'Wachowski'),
('Shutter Island', 2010, 'R', 'Martin', 'Scorsese'),
('The Notebook', 2004, 'PG-13', 'Nick', 'Cassavetes'),
('The Godfather', 1972, 'R', 'Francis', 'Coppola');

SELECT * FROM movies2 
ORDER BY director_last_name ASC;

DELETE FROM movies2
WHERE director_last_name 
BETWEEN 'r%' AND 'z%';

SELECT * FROM movies2 LIMIT 3;




--     Very hard     --

CREATE TABLE cars2 (
id INT PRIMARY KEY AUTO_INCREMENT,
make VARCHAR(100),
model VARCHAR(100),
year INT
);

INSERT INTO cars2 (make, model, year)
VALUES 
('Cadillac', 'Escalade', 2020),
('Mercedes-Benz', 'c250', 2022);

INSERT INTO cars2 (make, model, year)
VALUES 
('Honda', 'Accord', 2020),
('Honda', 'Civic', 2020),
('Mercedes-Benz', 'c250', 2021);

ALTER TABLE cars2 ADD price INT;
ALTER TABLE cars2 ADD color VARCHAR(100);

INSERT INTO cars2 (make, model, year, price, color)
VALUES 
('Cadillac', 'Escalade', 2020, 70000, 'black'),
('Mercedes-Benz', 'c250', 2022, 80000, 'grey'),
('Honda', 'Accord', 2020, 30000, 'silver'),
('Honda', 'Civic', 2020, 20000, 'black'),
('Mercedes-Benz', 'c250', 2021, 50000, 'white');


SELECT * FROM cars2;
