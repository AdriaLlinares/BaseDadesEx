DROP DATABASE IF EXISTS EXERCICI1_PDF3;
CREATE DATABASE EXERCICI1_PDF3;
USE EXERCICI1_PDF3;
CREATE TABLE animals (
	id INT UNSIGNED PRIMARY KEY,
	nom VARCHAR(20),
	tipus ENUM ('gat', 'gos', 'conill', 'hamster'),
	raça VARCHAR(20),
	pes TINYINT UNSIGNED,
	color ENUM('negre', 'blanc', 'verd', 'marro'),
	edat TINYINT UNSIGNED
);

INSERT INTO animals (id,nom,tipus,raça,pes,color,edat)
	VALUES (0, 'Pepe', 'gos', 'Pastó Aleman', '35', 'negre', 7),
	(1, 'Marta', 'gat', 'Persa', 10, 'negre', 9),
	(2, 'Blacky', 'conill', 'Angora', 6, 'blanc',8),
	(3, 'White', 'hamster','Roborowski',0.5, 'marro',1),
	(4, 'Saxo', 'gat', 'Oriental', 12, 'negre',3),
	(5, 'Red', 'gos', 'Dalmata', 17, 'negre', 6);



SELECT + FROM animals;


SELECT nom, raça FROM animals;



SELECT nom, pes, NOW(),7-4 FROM animals;



SELECT nom, DATE_SUB(NOW(), INTERVAL edat YEAR) AS 'data de naixament' FROM animals;
