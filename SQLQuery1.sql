--CREATE DATABASE
CREATE DATABASE CemeteryDB;

--USE THE DATABASE 
USE CemeteryDB;

--CREATE TABLE 
CREATE TABLE Graveyard (GraveId int primary key identity (1,1),
    DeceasedName VARCHAR(100),
    DateOfBirth DATE,
    DateOfDeath DATE,
    PlotNumber VARCHAR(20))

--INSERT DATA INTO TABLE
INSERT INTO Graveyard (DeceasedName, DateOfBirth, DateOfDeath, PlotNumber)
VALUES 
('Juan Dela Cruz', '1950-05-12', '2020-03-10', 'A-12'),
('Nora Aunor', '1953-05-21', '2022-04-16', 'A-10'),
('Fernando Poe Jr.', '1939-08-20', '2004-08-14', 'B-07');

--READ TABLE (CRUD)
SELECT * FROM Graveyard;
