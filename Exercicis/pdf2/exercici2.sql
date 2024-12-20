DROP DATABASE IF EXISTS EXERCICI2_PDF2;
CREATE DATABASE EXERCICI2_PDF2;
USE EXERCICI2_PDF2;

CREATE TABLE clients (
	dni CHAR(9) PRIMARY KEY,
	nom VARCHAR(50),
	direccio VARCHAR(50)
);


CREATE TABLE pagaments_pendents (
	codi INTEGER PRIMARY KEY AUTO_INCREMENT,
	dni CHAR(9),
	import DOUBLE,
	FOREIGN KEY (dni) REFERENCES clients(dni)
		ON DELETE CASCADE
		ON UPDATE CASCADE
);

INSERT INTO clients VALUES ('55667788G','Pikachu','C\ Pueblo paleta, 22');
INSERT INTO pagaments_pendents (dni, import) VALUES ('55667788G', 467);
INSERT INTO pagaments_pendents (dni, import) VALUES ('55667788G', 56.7);

DELETE FROM clients WHERE dni = '55667788G';

INSERT INTO clients VALUES ('55667788G','Pikachu','C\ Pueblo paleta, 22');
INSERT INTO pagaments_pendents (dni, import) VALUES ('55667788G', 467);
INSERT INTO pagaments_pendents (dni, import) VALUES ('55667788G', 56.7);

UPDATE clients SET dni = '12345678G' WHERE dni = '55667788G';
