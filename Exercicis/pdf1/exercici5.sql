DROP DATABASE IF EXISTS EXERCICI5_PDF1;
CREATE DATABASE EXERCICI5_PDF1;
USE EXERCICI5_PDF1;

CREATE TABLE clients(
	id_clients INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	DNI_clients VARCHAR(9),
	nom VARCHAR (20),
	adreça VARCHAR (20)
);

CREATE TABLE assumptes(
	id_assumptes INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	periode DATE,
	estat ENUM('ACTIU', 'NO_ACTIU') DEFAULT 'ACTIU',
	id_clients INT UNSIGNED,
	FOREIGN KEY(id_clients) REFERENCES clients(id_clients)
);

CREATE TABLE procuradors(
	id_procuradors INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	DNI_clients VARCHAR (20),
	adreça VARCHAR (20),
	nom VARCHAR (20)
);

CREATE TABLE procuradors_Assumpte(
	id_procuradors INT UNSIGNED,
	id_assumptes INT UNSIGNED,
	PRIMARY KEY (id_procuradors, id_assumptes),
	FOREIGN KEY (id_assumptes) REFERENCES assumptes(id_assumptes),
	FOREIGN KEY (id_procuradors) REFERENCES procuradors(id_procuradors)
);
