DROP DATABASE IF EXISTS EXERCICI3_PDF1;

CREATE DATABASE EXERCICI3_PDF1;

USE EXERCICI3_PDF1;

CREATE TABLE alumnes(
    Num_matricula INT(9) PRIMARY KEY,
    Telefon INT(9), 
    Nom VARCHAR(15),
    DataNaixament DATE
);

CREATE TABLE professors(
    Id_P INT(5) PRIMARY KEY,
    NIF_P VARCHAR(9),
    Nom  VARCHAR(15),
    Especialitat VARCHAR(10),
    Telefon INT (9)
);

CREATE TABLE assignatures(
    Codi_A INT(9) PRIMARY KEY,
    Nom VARCHAR(15),
    Id_P int(9),
    FOREIGN KEY (Id_P) REFERENCES professors (Id_P)
);



CREATE TABLE matricules(
    Num_matricula INT(9),
    Codi_A INT (9),
    any_academic DATE,
    PRIMARY KEY (Num_matricula, Codi_A),
    FOREIGN KEY (Codi_A) REFERENCES assignatures(Codi_A),
    FOREIGN KEY (Num_matricula) REFERENCES alumnes(Num_matricula)
)
