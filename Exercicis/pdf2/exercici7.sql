DROP DATABASE IF EXISTS EXERCICI7_PDF2;
CREATE DATABASE EXERCICI7_PDF2;
USE EXERCICI7_PDF2;

CREATE TABLE especies(
    id_especies INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    nom_vulgar VARCHAR(20),
    nom_cientific VARCHAR(20),
    familia ENUM('mamifer', 'anfibi', 'au'),
    en_perill_extincio BOOLEAN
);

CREATE TABLE zoos(
    id_zoos INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	nom VARCHAR(20),
	ciutat VARCHAR(20),
	pais ENUM('espanya', 'frança', 'alemania', 'africa'),
	presupost INT UNSIGNED,
	grandaria INT UNSIGNED,
	CHECK (grandaria > 1000 AND grandaria < 1000000000)
);

CREATE TABLE animals(
	id_animal INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	num_identificacio INT UNSIGNED,
	sexe ENUM ("mascle", "femella"),
	any_naixament SMALLINT UNSIGNED,
        pais ENUM("espanya", "frança", "alemania"),
	continent ENUM ("europa", "africa"),
	id_especies INT UNSIGNED NOT NULL,
	id_zoos INT UNSIGNED NOT NULL UNIQUE,
	FOREIGN KEY (id_especies) REFERENCES especies(id_especies),
	FOREIGN KEY (id_zoos) REFERENCES zoos(id_zoos)
);

UPDATE zoos
SET presupost = presupost * 1.1
WHERE id_zoos in (SELECT id_zoos FROM animals WHERE sexe = 'femella' AND pais 'africa';)
AND pais 'africa';