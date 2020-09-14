CREATE DATABASE fullstack DEFAULT CHARACTER SET utf8 ;
USE fullstack;

CREATE TABLE Paciente (
  idPaciente INT NOT NULL,
  nome VARCHAR(80) NOT NULL,
  altura DOUBLE NOT NULL,
  dataNasc DATE NOT NULL,
  PRIMARY KEY (idPaciente))
ENGINE = InnoDB;

CREATE TABLE Dobras (
  idDobras INT NOT NULL,
  nome VARCHAR(60) NOT NULL,
  valor INT NOT NULL,
  data_dobras DATE NOT NULL,
  PRIMARY KEY (idDobras))
ENGINE = InnoDB;

CREATE TABLE Perimetro (
  idPerimetro INT NOT NULL,
  nome VARCHAR(100) NOT NULL,
  comprimento DOUBLE NOT NULL,
  data_perimetro DATE NOT NULL,
  PRIMARY KEY (idPerimetro))
ENGINE = InnoDB;

CREATE TABLE Dobras_Paciente (
  idDobras_Paciente INT NOT NULL,
  idPaciente INT NOT NULL,
  PRIMARY KEY (idDobras_Paciente),
  CONSTRAINT fk_Dobras_Paciente_Dobras
    FOREIGN KEY (idDobras_Paciente)
    REFERENCES Dobras (idDobras),
  CONSTRAINT fk_Dobras_Paciente_Paciente
    FOREIGN KEY (idPaciente)
    REFERENCES Paciente (idPaciente))
ENGINE = InnoDB;

CREATE TABLE Perimetro_Paciente(
  idPerimetro_Paciente INT NOT NULL,
  idPaciente INT NOT NULL,
  PRIMARY KEY (idPerimetro_Paciente),
  CONSTRAINT fk_Perimetro_Paciente_Perimetro
    FOREIGN KEY (idPerimetro_Paciente)
    REFERENCES Perimetro (idPerimetro),
  CONSTRAINT fk_Perimetro_Paciente_Paciente
    FOREIGN KEY (idPaciente)
    REFERENCES Paciente (idPaciente))
ENGINE = InnoDB;

