<h1>Essa merda</h1>

```sql

CREATE DATABASE Prova2;
use Prova2

CREATE TABLE Equipamento(
	ID_EQUIPAMENTO		INTEGER PRIMARY KEY identity,
	DESCRICAO			VARCHAR(200),
	TECNICA_ASSOCIADA	VARCHAR(60),
	TIPO				VARCHAR(50)
);

CREATE TABLE Mestre(
	ID_MESTRE	INTEGER PRIMARY KEY IDENTITY,
	RESPIRACAO	VARCHAR(80),
	NOME		VARCHAR(50)
);

CREATE TABLE Kisatsutai(
	ID_CACADOR		INTEGER PRIMARY KEY identity,
	ID_EQUIPAMENTO	INT,
	ID_MESTRE		INT,
	TECNICA			VARCHAR(60),
	CONDICAO		VARCHAR(10),
	IDADE			INT,
	NOME			VARCHAR(50),
	RANKS			VARCHAR(30),

	FOREIGN KEY (ID_EQUIPAMENTO) REFERENCES Equipamento(ID_EQUIPAMENTO),
	FOREIGN KEY (ID_MESTRE) REFERENCES Mestre(ID_MESTRE)
);

CREATE TABLE Oni(
	ID_ONI		INTEGER PRIMARY KEY IDENTITY,
	HIERARQUIA	VARCHAR(60),
	NOME		VARCHAR(50)
);

CREATE TABLE Missao(
	ID_MISSAO	 INTEGER PRIMARY KEY IDENTITY,
	ID_ONI		 INT,
	DT_INICIO	 DATE,
	DT_CONCLUSAO DATE,
	CONDICAO	 VARCHAR(60),
	DESCRICAO	 VARCHAR(250),
	FOREIGN KEY (ID_ONI) REFERENCES Oni(ID_ONI) 
);

```
