DROP DATABASE IF EXISTS EXERCICI4_PDF1;
CREATE DATABASE EXERCICI4_PDF1;
USE EXERCICI4_PDF1;

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



