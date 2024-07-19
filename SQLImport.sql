-- This code creates a database and table to then bring all your movie data into. Please note that the expected file type is a csv file
-- with just the name, year, rating, and director as the expected information, if you have more or less you will need to modify the code.
drop database movie_info;
create database movie_info;
use movie_info;

drop table movie_ratings;
create table movie_ratings (
name varchar(70),
year int,
rating double,
director varchar(50)
);

LOAD DATA local INFILE 'filename' 
INTO TABLE movie_ratings
Character Set utf8mb4
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
