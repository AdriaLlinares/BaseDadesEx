DROP DATABASE IF EXISTS EXERCICI4_PDF2;

CREATE DATABASE EXERCICI4_PDF2;

USE EXERCICI4_PDF2;

CREATE TABLE alumnes(
    Num_matricula INT(9) PRIMARY KEY,
    Telefon INT(9),
    Nom VARCHAR(30),
    DataNaixament DATE
);

CREATE TABLE professors(
    Id_P INT(5) PRIMARY KEY,
    NIF_P VARCHAR(9),
    Nom  VARCHAR(15),
    Especialitat VARCHAR(20),
    Telefon INT (9)
);

CREATE TABLE assignatures(
    Codi_A INT(9) PRIMARY KEY,
    Nom VARCHAR(30),
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
);

INSERT INTO professors VALUES ('12345','55667788G','Joel Miller','Informatica','699391929');
INSERT INTO assignatures VALUES ('123456789','Sistemes Operatius','12345');
INSERT INTO assignatures VALUES ('987654321','Base de dades','12345');
INSERT INTO alumnes VALUES ('1234567','123456789','Ellie Williams','1990-12-11');

START TRANSACTION;

INSERT INTO matricules (Num_matricula, Codi_A) VALUES ('1234567', 123456789);  

INSERT INTO matricules (Num_matricula, Codi_A) VALUES ('1234567', 987654321);  

COMMIT;

UPDATE alumnes SET Num_matricula = '123456789' WHERE Num_matricula = '1234567' ;




SELECT * FROM professors;
SELECT * FROM assignatures;

SELECT * FROM alumnes;
SELECT * FROM matricules;
