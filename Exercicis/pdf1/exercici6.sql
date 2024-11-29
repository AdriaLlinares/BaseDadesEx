DROP DATABASE IF EXISTS EXERCICI6_PDF1;
CREATE DATABASE EXERCICI6_PDF1;
USE EXERCICI6_PDF1;
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
	pais ENUM('espanya', 'frança', 'alemania'),
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
