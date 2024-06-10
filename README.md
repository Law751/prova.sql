<h1>Banco de Dados para Demon Slayer ⚔️👹</h1>
<p>Este projeto foi feito para a realização da ultima avaliação do 2º Bimestre do curso de Desenvolvimento de Sofware Multiplataforma da FATEC, Dr. Thomaz Novelino de Franca.</p>
<h2>Cenário Banco de Dados 🐲</h2>
<p>O mundo de Demon Slayer se passa no Japão na era Taisho (1912 – 1926), onde os demônios 
existem nas sombras (demônios são criaturas hediondas que se alimentam de corpos humanos) e 
nesse mundo existe a organização Kisatsutai (Esquadrão de Caçadores de Onis) que foi criada 
para a finalidade de proteger a humanidade dos Onis, nesse cenário surge a necessidade de se 
criar um banco de dados para auxiliar o Kisatsutai a registrar informações sobre demônios, locais 
de atividade e o histórico de combates.</p>

![image](https://github.com/Law751/prova.sql/assets/147450456/81895e1f-1b63-4d4e-ae66-e7808e1c20fd)

![image](https://github.com/Law751/prova.sql/assets/147450456/c4e89b5e-3791-498f-a657-3a984b222380)



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
