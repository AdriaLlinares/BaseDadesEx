DROP DATABASE IF EXISTS EXERCICI5_PDF2;
CREATE DATABASE EXERCICI5_PDF2;
USE EXERCICI5_PDF2;

CREATE TABLE regions(
    Nom_regio VARCHAR(20) PRIMARY KEY
);

CREATE TABLE provincies(
    Codi_P INT(5) PRIMARY KEY,
    Nom VARCHAR(20),
    Nom_regio VARCHAR (20),
    FOREIGN KEY (Nom_regio) REFERENCES regions (Nom_regio)
);

CREATE TABLE localitats(
    Codi_L INT(5) PRIMARY KEY,
    Nom VARCHAR(20),
    Codi_P INT(5),
    FOREIGN KEY(Codi_P) REFERENCES provincies (Codi_P)
);


CREATE TABLE empleats(
    Id_Empleat INT(9) PRIMARY KEY,
    Nom VARCHAR(15),
    DNI_E VARCHAR(9),
    Telefon INT(9),
    Salari DECIMAL(10,2),
    Codi_L INT(5),
    FOREIGN KEY (Codi_L) REFERENCES localitats (Codi_L)
);

-- consulta per esborrar tots els empleats que no tinguin localitat.

DELETE FROM localitats 
WHERE Codi_L NOT IN
    (SELECT Codi_L FROM empleats);

-- consulta per esborrar empleats amb un sou superior a 70000€

DELETE FROM empleats
WHERE Salari > 70000;

-- consulta per establir un salari de 5000€ a els treballadors que han nascut a Barcelona, per fer-ho he utilitzat una subconsulta.
UPDATE empleats
    SET Salari=5000
    WHERE Codi_L IN ( SELECT Codi_L FROM localitats WHERE Nom='Barcelona');

-- consulta per augmetar el salari un 20% a la gent amb un salari inferior a 20000€.
UPDATE empleats
    SET Salari = Salari * 1.2
    WHERE Salari < 20000;
