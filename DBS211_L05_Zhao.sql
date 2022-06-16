-- ***********************
-- Name: Xiaoyue Zhao
-- ID:124899212
-- Date: Jun 14
-- Purpose: Lab 05 DBS211
-- ***********************

SET AUTOCOMMIT ON; 

-- Q1 SOLUTION --
CREATE TABLE l5_directors ( 
director_id INT PRIMARY key, 
first_name VARCHAR(20) NOT NULL, 
last_name VARCHAR(30) NOT NULL );


CREATE TABLE l5_movies ( 
m_id INT PRIMARY key, 
title VARCHAR(35) NOT NULL, 
release_year INT NOT NULL, 
director INT NOT NULL, 
score DECIMAL(3, 2) CHECK (score > 0 
AND score < 5), 
CONSTRAINT l5_movies_m_id_fk 
FOREIGN key (director) REFERENCES l5_directors );


CREATE TABLE l5_actors ( 
a_id INT PRIMARY key, 
first_name VARCHAR(20) NOT NULL, 
last_name VARCHAR(30) NOT NULL );


CREATE TABLE l5_castings ( 
movie_id INT, 
actor_id INT, 
CONSTRAINT l5_castings_pk PRIMARY key (movie_id, actor_id) );



-- Q2 SOLUTION --
ALTER TABLE l5_castings 
ADD (
CONSTRAINT l5_movies_movie_id_fk 
FOREIGN key (movie_id) REFERENCES l5_movies, 
CONSTRAINT l5_movies_actor_id_fk 
FOREIGN key (actor_id) REFERENCES l5_actors 
);



-- Q3 SOLUTION --
ALTER TABLE l5_directors 
ADD username VARCHAR(60);



-- Q4 SOLUTION --
ALTER TABLE l5_directors 
ADD CONSTRAINT l5_directors_username_uk 
UNIQUE (username);



-- Q5 SOLUTION --
INSERT ALL
   INTO L5_DIRECTORS (director_id, first_name, last_name) 
        VALUES ('1010', 'Rob', 'Minkoff')
   INTO L5_DIRECTORS (director_id, first_name, last_name) 
        VALUES ('1020', 'Bill', 'Condon')
   INTO L5_DIRECTORS (director_id, first_name, last_name) 
        VALUES ('1050', 'Josh', 'Condon')
   INTO L5_DIRECTORS (director_id, first_name, last_name) 
        VALUES ('2010', 'Brad', 'Bird')
   INTO L5_DIRECTORS (director_id, first_name, last_name) 
        VALUES ('3020', 'Lake', 'Bell')
SELECT 1 FROM DUAL;



-- Q6 SOLUTION --
UPDATE
   l5_directors 
SET
   username = LOWER(substr(first_name, 1, 1) || last_name);



-- Q7 SOLUTION --
DROP TABLE l5_castings;
DROP TABLE l5_actors;
DROP TABLE l5_movies;
DROP TABLE l5_directors;

-- It is important.
-- Drop a table：
-- Drop the child table first, and then the parent table.






