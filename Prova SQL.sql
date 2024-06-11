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

-- Inser��o de dados na tabela Equipamento
INSERT INTO Equipamento (DESCRICAO, TECNICA_ASSOCIADA, TIPO) VALUES 
('Espada Longa', 'Corte Veloz', 'Arma'),
('Arco e Flecha', 'Tiro Preciso', 'Arma'),
('Katana', 'T�cnica da �gua', 'Arma'),
('Adaga de Arremesso', 'Furtividade', 'Arma'),
('Escudo', 'Bloqueio Firme', 'Defesa'),
('Armadura de Placas', 'Resist�ncia', 'Defesa'),
('Cajado M�gico', 'Magia Elemental', 'Magia'),
('Orbe de Cura', 'Curar Ferimentos', 'Magia'),
('Po��o de For�a', 'Aumento de For�a', 'Consum�vel'),
('Po��o de Cura', 'Cura Leve', 'Consum�vel'),
('Foice', 'T�cnica da Morte', 'Arma'),
('Escudo Espelhado', 'Reflex�o', 'Defesa'),
('Varinha M�gica', 'Feiti�os Arcanos', 'Magia'),
('Lan�a', 'Investida Poderosa', 'Arma'),
('Luvas de Boxe', 'Nocaute R�pido', 'Arma'),
('Elmo de Ferro', 'Prote��o Total', 'Defesa'),
('Espada Dupla', 'Dan�a das L�minas', 'Arma'),
('Armadura de Couro', 'Agilidade', 'Defesa'),
('Pergaminho de Explos�o', 'Magia Explosiva', 'Magia'),
('Amuleto de Prote��o', 'Escudo M�stico', 'Defesa');

-- Inser��o de dados na tabela Mestre
INSERT INTO Mestre (RESPIRACAO, NOME) VALUES 
('Respira��o da �gua', 'Tanjiro Kamado'),
('Respira��o do Fogo', 'Kyojuro Rengoku'),
('Respira��o do Vento', 'Sanemi Shinazugawa'),
('Respira��o do Trov�o', 'Zenitsu Agatsuma'),
('Respira��o do Inseto', 'Shinobu Kocho'),
('Respira��o da Pedra', 'Giyu Tomioka'),
('Respira��o das Chamas Dan�antes', 'Tengen Uzui'),
('Respira��o do Sol', 'Muichiro Tokito'),
('Respira��o da Serpente', 'Mitsuri Kanroji'),
('Respira��o das Plantas', 'Kanao Tsuyuri'),
('Respira��o do Som', 'Gyomei Himejima'),
('Respira��o do Amor', 'Obanai Iguro'),
('Respira��o da Neve', 'Genya Shinazugawa'),
('Respira��o da Escurid�o', 'Tokito Muichiro'),
('Respira��o da Lua', 'Kokushibo'),
('Respira��o das Chamas', 'Rengoku Senjurou'),
('Respira��o do Vazio', 'Akaza'),
('Respira��o da Besta', 'Gyuutarou'),
('Respira��o do Esplendor', 'Gyokko'),
('Respira��o do Abra�o', 'Hantengu');

-- Inser��o de dados na tabela Kisatsutai
INSERT INTO Kisatsutai (ID_EQUIPAMENTO, ID_MESTRE, TECNICA, CONDICAO, IDADE, NOME, RANKS) VALUES 
(1, 1, 'Forma da �gua', 'Ativo', 17, 'Tanjiro Kamado', 'Mestre'),
(2, 2, 'Chama Eterna', 'Ativo', 19, 'Kyojuro Rengoku', 'Mestre'),
(3, 3, 'Ventos Cortantes', 'Inativo', 20, 'Sanemi Shinazugawa', 'Mestre'),
(4, 4, 'Trovoada Divina', 'Ativo', 18, 'Zenitsu Agatsuma', 'Mestre'),
(5, 5, 'Inseto da Morte', 'Ativo', 21, 'Shinobu Kocho', 'Mestre'),
(6, 6, 'Pedra Mortal', 'Inativo', 22, 'Giyu Tomioka', 'Mestre'),
(7, 7, 'Dan�a das Borboletas', 'Ativo', 20, 'Tengen Uzui', 'Mestre'),
(8, 8, 'Sol Dourado', 'Inativo', 23, 'Muichiro Tokito', 'Mestre'),
(9, 9, 'Serpente Carmesim', 'Ativo', 19, 'Mitsuri Kanroji', 'Mestre'),
(10, 10, 'Flor da Salva��o', 'Ativo', 20, 'Kanao Tsuyuri', 'Mestre'),
(11, 11, 'Melodia dos Trov�es', 'Inativo', 18, 'Gyomei Himejima', 'Mestre'),
(12, 12, 'Rosa Carmesim', 'Ativo', 21, 'Obanai Iguro', 'Mestre'),
(13, 13, 'Flocos de Neve', 'Ativo', 20, 'Genya Shinazugawa', 'Mestre'),
(14, 14, 'Flor da Lua', 'Inativo', 22, 'Tokito Muichiro', 'Mestre'),
(15, 15, 'Chama da Destrui��o', 'Ativo', 21, 'Rengoku Senjurou', 'Mestre'),
(16, 16, 'Vazio Eterno', 'Ativo', 24, 'Akaza', 'Mestre'),
(17, 17, 'Fera Selvagem', 'Inativo', 23, 'Gyuutarou', 'Mestre'),
(18, 18, 'Esplendor Infernal', 'Ativo', 20, 'Gyokko', 'Mestre'),
(19, 19, 'Abra�o da Perdi��o', 'Ativo', 22, 'Hantengu', 'Mestre'),
(20, 20, 'Trov�o Celestial', 'Inativo', 25, 'Kokushibo', 'Mestre');

-- Inser��o de dados na tabela Oni
INSERT INTO Oni (HIERARQUIA, NOME) VALUES 
('Dem�nio Principal', 'Muzan Kibutsuji'),
('Lua Sangrenta', 'Akaza'),
('Fera Devoradora', 'Enmu'),
('Canto Mortal', 'Daki'),
('Ilus�o Amaldi�oada', 'Gyokko'),
('Trov�o Infernal', 'Hantengu'),
('Sonho Maldito', 'Gyutarou'),
('Pesadelo Vivo', 'Rui'),
('Lua Crescente', 'Kokushibo'),
('Trov�o da Morte', 'Kaigaku'),
('L�mina da Lua', 'Douma'),
('Sombra Negra', 'Gyokko'),
('Pesadelo Noturno', 'Rokuro'),
('L�mina Voraz', 'Kuina'),
('Dan�a M�stica', 'Gyuutarou'),
('Chama da Destrui��o', 'Kyogai'),
('Fera Demon�aca', 'Wakuraba'),
('Mar de Sangue', 'Susamaru'),
('F�ria Amaldi�oada', 'Yahaba'),
('Olho de Lua', 'Temari');

-- Inser��o de dados na tabela Missao
INSERT INTO Missao (ID_ONI, DT_INICIO, DT_CONCLUSAO, CONDICAO, DESCRICAO) VALUES 
(1, '2024-05-01', '2024-05-10', 'Derrotar o L�der Demon�aco', 'Miss�o para derrotar o l�der dos Onis, Muzan Kibutsuji.'),
(2, '2024-04-15', '2024-04-20', 'Capturar Akaza', 'Miss�o para capturar o Oni Akaza.'),
(3, '2024-03-20', '2024-03-25', 'Exterminar Enmu', 'Miss�o para exterminar o Oni Enmu que est� aterrorizando uma vila.'),
(4, '2024-02-10', '2024-02-15', 'Resgatar Ref�ns', 'Miss�o de resgate de ref�ns mantidos por Daki, um Oni.'),
(5, '2024-01-05', '2024-01-10', 'Investigar Ataques', 'Miss�o para investigar uma s�rie de ataques noturnos na regi�o.'),
(6, '2023-12-15', '2023-12-20', 'Eliminar Gyokko', 'Miss�o para eliminar o Oni Gyokko que est� causando estragos.'),
(7, '2023-11-20', '2023-11-25', 'Neutralizar Hantengu', 'Miss�o para neutralizar o Oni Hantengu que est� controlando uma �rea montanhosa.'),
(8, '2023-10-10', '2023-10-15', 'Derrotar Rui', 'Miss�o para derrotar o Oni Rui e libertar sua fam�lia.'),
(9, '2023-09-05', '2023-09-10', 'Localizar Kokushibo', 'Miss�o para localizar e confrontar o tem�vel Oni Kokushibo.'),
(10, '2023-08-20', '2023-08-25', 'Eliminar Kaigaku', 'Miss�o para eliminar o ex-Demon Slayer Kaigaku que se tornou um Oni.'),
(11, '2023-07-15', '2023-07-20', 'Exterminar Douma', 'Miss�o para exterminar o Oni Douma que est� aterrorizando uma cidade.'),
(12, '2023-06-10', '2023-06-15', 'Investigar Gyokko', 'Miss�o de investiga��o sobre atividades suspeitas do Oni Gyokko.'),
(13, '2023-05-05', '2023-05-10', 'Resgatar Ref�ns', 'Miss�o de resgate de ref�ns mantidos por Rokuro, um Oni.'),
(14, '2023-04-20', '2023-04-25', 'Investigar Kuina', 'Miss�o de reconhecimento para investigar a presen�a do Oni Kuina em uma �rea remota.'),
(15, '2023-03-15', '2023-03-20', 'Derrotar Gyuutarou', 'Miss�o para derrotar o Oni Gyuutarou e impedir seus planos malignos.'),
(16, '2023-02-10', '2023-02-15', 'Neutralizar Kyogai', 'Miss�o para neutralizar o Oni Kyogai, conhecido por suas t�cnicas ilus�rias.'),
(17, '2023-01-05', '2023-01-10', 'Exterminar Wakuraba', 'Miss�o para exterminar o Oni Wakuraba que est� causando problemas em uma vila pr�xima.'),
(18, '2022-12-20', '2022-12-25', 'Resgatar Ref�ns', 'Miss�o de resgate de ref�ns mantidos por Susamaru e Yahaba, dois Onis poderosos.'),
(19, '2022-11-15', '2022-11-20', 'Investigar Temari', 'Miss�o de investiga��o sobre atividades suspeitas do Oni Temari.'),
(20, '2022-10-10', '2022-10-15', 'Derrotar Muzan Kibutsuji', 'Miss�o final para derrotar o l�der dos Onis, Muzan Kibutsuji, e salvar a humanidade.');


CREATE TABLE Kis_Mis(
	ID_CACADOR	INT,
	ID_MISSAO	INT,
	FOREIGN KEY (ID_CACADOR) REFERENCES Kisatsutai(ID_CACADOR),
	FOREIGN KEY (ID_MISSAO) REFERENCES Missao(ID_MISSAO)
);

-- Inser��o de dados na tabela ponte Kis_Mis
INSERT INTO Kis_Mis (ID_CACADOR, ID_MISSAO) VALUES 
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20);

INSERT INTO Equipamento (DESCRICAO, TECNICA_ASSOCIADA, TIPO) VALUES ('L�mina Celestial', 'Corte Divino', 'Arma');

INSERT INTO Mestre (RESPIRACAO, NOME) VALUES ('Respira��o do Trov�o', 'Inosuke Hashibira');

INSERT INTO Kisatsutai (ID_EQUIPAMENTO, ID_MESTRE, TECNICA, CONDICAO, IDADE, NOME, RANKS) VALUES (21, 21, 'F�ria Bestial', 'Ativo', 20, 'Inosuke Hashibira', 'Mestre');

INSERT INTO Oni (HIERARQUIA, NOME) VALUES ('Fera Demon�aca', 'Wakuraba');

INSERT INTO Missao (ID_ONI, DT_INICIO, DT_CONCLUSAO, CONDICAO, DESCRICAO) VALUES (21, '2024-07-01', '2024-07-10', 'Neutralizar a Amea�a', 'Miss�o para neutralizar o Oni Wakuraba que est� causando problemas na regi�o.');

SELECT * FROM Equipamento;

SELECT * FROM Mestre;

SELECT * FROM Kisatsutai;

SELECT * FROM Oni;

SELECT * FROM Missao;

UPDATE Equipamento SET DESCRICAO = 'Espada Celestial' WHERE ID_EQUIPAMENTO = 21;

UPDATE Mestre SET NOME = 'Zenitsu Agatsuma' WHERE ID_MESTRE = 21;

UPDATE Kisatsutai SET CONDICAO = 'Inativo' WHERE ID_CACADOR = 21;

UPDATE Oni SET HIERARQUIA = 'L�der dos Onis' WHERE ID_ONI = 21;

UPDATE Missao SET DESCRICAO = 'Miss�o de resgate de ref�ns mantidos por Wakuraba, um Oni.' WHERE ID_MISSAO = 21;

	DELETE FROM Equipamento WHERE ID_EQUIPAMENTO = 21;

	DELETE FROM Mestre WHERE ID_MESTRE = 21;

	DELETE FROM Kisatsutai WHERE ID_CACADOR = 21;

	DELETE FROM Oni WHERE ID_ONI = 21;

	DELETE FROM Missao WHERE ID_MISSAO = 21;

SELECT k.*, m.NOME AS NOME_MESTRE
FROM Kisatsutai k
INNER JOIN Mestre m ON k.ID_MESTRE = m.ID_MESTRE;

SELECT m.*, o.NOME AS NOME_ONI
FROM Missao m
INNER JOIN Oni o ON m.ID_ONI = o.ID_ONI;

SELECT k.*, e.DESCRICAO AS DESCRICAO_EQUIPAMENTO, m.NOME AS NOME_MESTRE
FROM Kisatsutai k
INNER JOIN Equipamento e ON k.ID_EQUIPAMENTO = e.ID_EQUIPAMENTO
INNER JOIN Mestre m ON k.ID_MESTRE = m.ID_MESTRE
WHERE k.ID_CACADOR = 1; -- Altere o ID_CACADOR conforme necess�rio

SELECT * FROM Equipamento WHERE TIPO = 'Defesa';

SELECT * FROM Kisatsutai WHERE CONDICAO = 'Ativo' ORDER BY IDADE ASC;

SELECT * FROM Oni ORDER BY HIERARQUIA DESC  5;

SELECT * FROM Missao WHERE DT_CONCLUSAO IS NOT NULL ORDER BY DT_INICIO ASC;

SELECT m.*, COUNT(k.ID_CACADOR) AS NUMERO_CACADORES
FROM Mestre m
LEFT JOIN Kisatsutai k ON m.ID_MESTRE = k.ID_MESTRE
GROUP BY m.ID_MESTRE, m.NOME;

SELECT k.*
FROM Kisatsutai k
INNER JOIN Equipamento e ON k.ID_EQUIPAMENTO = e.ID_EQUIPAMENTO
WHERE e.TIPO = 'Magia'
ORDER BY k.NOME ASC;

SELECT m.*, o.NOME AS NOME_ONI
FROM Missao m
INNER JOIN Oni o ON m.ID_ONI = o.ID_ONI
INNER JOIN Kis_Mis km ON m.ID_MISSAO = km.ID_MISSAO
WHERE km.ID_CACADOR = 1 -- Altere o ID_CACADOR conforme necess�rio
ORDER BY m.DT_INICIO ASC;

SELECT k.NOME AS NOME_CACADOR, k.TECNICA, m.NOME AS NOME_MESTRE
FROM Kisatsutai k
INNER JOIN Mestre m ON k.ID_MESTRE = m.ID_MESTRE
ORDER BY k.NOME ASC;

SELECT k.NOME AS NOME_CACADOR, k.IDADE, e.DESCRICAO AS DESCRICAO_EQUIPAMENTO, e.TIPO
FROM Kisatsutai k
INNER JOIN Equipamento e ON k.ID_EQUIPAMENTO = e.ID_EQUIPAMENTO
WHERE k.IDADE > 20
ORDER BY e.TIPO ASC, k.NOME ASC;



