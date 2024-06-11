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

<h1>Modelagem Conceitual - DER 🤓</h1>
<p>O modelo conceitual é feito com o intúito de exemplificar em forma de diagramas, de qual maneira o sistema de dados vai funcionar, com suas devidas cardinalidades, tabelas, entidades e atributos, como no modelo a seguir:</p>

![image](https://github.com/Law751/prova.sql/assets/147450456/53d8f7d4-815d-4b4e-b588-ff81ce75b615)

<p>No modelo acima, estão presentes todas as entidades, sendo elas: Kisatsutai, Mestre, Equipamento, Missoes e Oni tambem seus atributos como maneira de reunir informações para atividades posteriores.</p>

<h1>Modelagem Lógica - Modelo ER 🍒</h1>
<p>O modelo lógico tem um objetivo similar ao modelo conceitual, a sua diferença é que ele exemplifica o modelo físico, agora ilustrando as chaves primarias e estrangeiras e os IDs</p>

![image](https://github.com/Law751/prova.sql/assets/147450456/4eba05fc-99a4-42b5-97a5-84c7a42ff0e6)

<p>Nota:Para as cardinalidades que possuem (n,n), são criadas novas tabelas pra conter e agrupar informações das suas respectivas entidades, atributos compostos são "dissolvidos" e multivalorados se transformam em tabelas.</p>

<h1>Criação de Tabelas 📑</h1>
<p>As tabelas principais são, Kisatsutai(Informações principais dos caçadores membros do Kisatsutai), Mestre(Os mestres de técnicas de respiração da organização), Equipamento(Informações do equipamento unico de cada membro da organização), Missoes(Informações das missões, quem foi atribuido a aquela missão, se a missão foi concluida, está em andamento ou fracassada), Oni(Informação dos demonios catalogados pela organização) e Kis_Mis("Tabela Ponte" que faz relação entre a colaboração N:N da tabela Kisatsutai e Missao)</p>

<h1>Criando o Database 📆</h1>
<p>Para criarmos a database, ou banco de dados, é necessário utilizar o seguinte comando:</p>

```sql

CREATE DATABASE Prova2;
use Prova2

```

<h1>Criando as Tabelas 🖥️</h2>


```sql

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
