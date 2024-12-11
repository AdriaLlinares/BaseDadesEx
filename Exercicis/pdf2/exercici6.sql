DROP DATABASE IF EXISTS EXERCICI6_PDF2;
CREATE DATABASE EXERCICI6_PDF2;
USE EXERCICI6_PDF2;

CREATE TABLE clients(
    id_clients INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    DNI_clients VARCHAR(9),
    nom VARCHAR(20),
    adreça VARCHAR(20)
);

CREATE TABLE procuradors(
    id_procuradors INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    DNI_clients VARCHAR(20),
    adreça VARCHAR(20),
    nom VARCHAR(20)
);

CREATE TABLE assumptes(
    id_assumptes INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    periode DATE,
    estat ENUM('ACTIU', 'NO_ACTIU') DEFAULT 'ACTIU',
    id_clients INT UNSIGNED,
    id_procuradors INT UNSIGNED,
    FOREIGN KEY(id_clients) REFERENCES clients(id_clients) ON DELETE CASCADE,
    FOREIGN KEY(id_procuradors) REFERENCES procuradors(id_procuradors) ON DELETE CASCADE
);

-- Insercio de tres clientes
INSERT INTO clients (DNI_clients, nom, adreça)
VALUES ('4118619D', 'Marc', 'Pueblo Paleta');

INSERT INTO clients (DNI_clients, nom, adreça)
VALUES ('41645819G', 'Alex', 'Pueblo Paleta');

INSERT INTO clients (DNI_clients, nom, adreça)
VALUES ('41678619A', 'Pol', 'Pueblo Paleta');


-- Insercio tres advocats

INSERT INTO procuradors (DNI_clients, adreça, nom)
VALUES ('4118619D', 'Pueblo Paleta', 'Alfredo');

INSERT INTO procuradors (DNI_clients, adreça, nom)
VALUES ('41645819G', 'Pueblo Paleta', 'Laura');

INSERT INTO procuradors (DNI_clients, adreça, nom)
VALUES ('41678619A', 'Pueblo Paleta', 'Eric');


-- Insercio 3 assumptes 

INSERT INTO assumptes (periode, estat, id_clients, id_procuradors)
VALUES ('2024-12-10', 'ACTIU', 1, 1);

INSERT INTO assumptes (periode, estat, id_clients, id_procuradors)
VALUES ('2024-12-10', 'ACTIU', 2, 2);

INSERT INTO assumptes (periode, estat, id_clients, id_procuradors)
VALUES ('2024-12-10', 'ACTIU', 3, 3);


SELECT * FROM clients;
SELECT * FROM procuradors;
SELECT * FROM assumptes;



/* Esborra un client i verifica que es borra tota la informació, per poder esborrar el client he hagut d'afegir ON DELETE CASCADE a 
les claus foranes perque un cop s'esborri un client tambe es borri la seva relacio amb el procurador, si no afegia el DELETE ON CASCADE no podia borrar cap dada.
*/

DELETE FROM clients WHERE nom = 'Marc';

SELECT * FROM clients;
SELECT * FROM procuradors;
SELECT * FROM assumptes;