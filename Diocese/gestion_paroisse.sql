
DROP DATABASE IF  EXISTS gestion_diocese;
CREATE DATABASE IF NOT EXISTS gestion_diocese;

USE gestion_diocese;

CREATE TABLE `pretre` (
  `Id` int NOT NULL PRIMARY KEY,
  `NomPretre` varchar(50) NOT NULL,
  `PrenomPretre` varchar(50) NOT NULL,
  `SexPretre` varchar(50) NOT NULL,
  `Nationalite` varchar(50) NOT NULL,
  `Photo` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `IdParoisse` int NOT NULL 
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `diocese` (
  `Id` int NOT NULL PRIMARY KEY,
  `NomDiocese` varchar(50) NOT NULL,
  `Location` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `paroisse` (
  `Id` int NOT NULL PRIMARY KEY,
  `NomParoisse` varchar(50) NOT NULL,
  `Location` varchar(50) NOT NULL,
  `DateOrdination` varchar(50) NOT NULL,
  `IdDiocese` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



ALTER TABLE pretre ADD foreign key (IdParoisse) REFERENCES paroisse(Id);

ALTER TABLE paroisse ADD foreign key (IdDiocese) REFERENCES diocese(Id);