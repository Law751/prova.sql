CREATE DATABASE Prova2;
use Prova2

CREATE TABLE Equipamento(
	ID_EQUIPAMENTO		INTEGER PRIMARY KEY identity,
	DESCRICAO		VARCHAR(200),
	TECNICA_ASSOCIADA	VARCHAR(60),
	TIPO			VARCHAR(50)
);

CREATE TABLE Mestre(
	ID_MESTRE	INTEGER PRIMARY KEY IDENTITY,
	RESPIRACAO	VARCHAR(80),
	NOME		VARCHAR(50)
);

CREATE TABLE Kisatsutai(
	ID_CACADOR		INTEGER PRIMARY KEY identity,
	ID_EQUIPAMENTO		INT,
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
	DT_CONCLUSAO     DATE,
	CONDICAO	 VARCHAR(60),
	DESCRICAO	 VARCHAR(250),
	FOREIGN KEY (ID_ONI) REFERENCES Oni(ID_ONI) 
);

-- Inserção de dados na tabela Equipamento
INSERT INTO Equipamento (DESCRICAO, TECNICA_ASSOCIADA, TIPO) VALUES 
('Espada Longa', 'Corte Veloz', 'Arma'),
('Arco e Flecha', 'Tiro Preciso', 'Arma'),
('Katana', 'Técnica da Água', 'Arma'),
('Adaga de Arremesso', 'Furtividade', 'Arma'),
('Escudo', 'Bloqueio Firme', 'Defesa'),
('Armadura de Placas', 'Resistência', 'Defesa'),
('Cajado Mágico', 'Magia Elemental', 'Magia'),
('Orbe de Cura', 'Curar Ferimentos', 'Magia'),
('Poção de Força', 'Aumento de Força', 'Consumível'),
('Poção de Cura', 'Cura Leve', 'Consumível'),
('Foice', 'Técnica da Morte', 'Arma'),
('Escudo Espelhado', 'Reflexão', 'Defesa'),
('Varinha Mágica', 'Feitiços Arcanos', 'Magia'),
('Lança', 'Investida Poderosa', 'Arma'),
('Luvas de Boxe', 'Nocaute Rápido', 'Arma'),
('Elmo de Ferro', 'Proteção Total', 'Defesa'),
('Espada Dupla', 'Dança das Lâminas', 'Arma'),
('Armadura de Couro', 'Agilidade', 'Defesa'),
('Pergaminho de Explosão', 'Magia Explosiva', 'Magia'),
('Amuleto de Proteção', 'Escudo Místico', 'Defesa');

-- Inserção de dados na tabela Mestre
INSERT INTO Mestre (RESPIRACAO, NOME) VALUES 
('Respiração da Água', 'Tanjiro Kamado'),
('Respiração do Fogo', 'Kyojuro Rengoku'),
('Respiração do Vento', 'Sanemi Shinazugawa'),
('Respiração do Trovão', 'Zenitsu Agatsuma'),
('Respiração do Inseto', 'Shinobu Kocho'),
('Respiração da Pedra', 'Giyu Tomioka'),
('Respiração das Chamas Dançantes', 'Tengen Uzui'),
('Respiração do Sol', 'Muichiro Tokito'),
('Respiração da Serpente', 'Mitsuri Kanroji'),
('Respiração das Plantas', 'Kanao Tsuyuri'),
('Respiração do Som', 'Gyomei Himejima'),
('Respiração do Amor', 'Obanai Iguro'),
('Respiração da Neve', 'Genya Shinazugawa'),
('Respiração da Escuridão', 'Tokito Muichiro'),
('Respiração da Lua', 'Kokushibo'),
('Respiração das Chamas', 'Rengoku Senjurou'),
('Respiração do Vazio', 'Akaza'),
('Respiração da Besta', 'Gyuutarou'),
('Respiração do Esplendor', 'Gyokko'),
('Respiração do Abraço', 'Hantengu');

-- Inserção de dados na tabela Kisatsutai
INSERT INTO Kisatsutai (ID_EQUIPAMENTO, ID_MESTRE, TECNICA, CONDICAO, IDADE, NOME, RANKS) VALUES 
(1, 1, 'Forma da Água', 'Ativo', 17, 'Tanjiro Kamado', 'Mestre'),
(2, 2, 'Chama Eterna', 'Ativo', 19, 'Kyojuro Rengoku', 'Mestre'),
(3, 3, 'Ventos Cortantes', 'Inativo', 20, 'Sanemi Shinazugawa', 'Mestre'),
(4, 4, 'Trovoada Divina', 'Ativo', 18, 'Zenitsu Agatsuma', 'Mestre'),
(5, 5, 'Inseto da Morte', 'Ativo', 21, 'Shinobu Kocho', 'Mestre'),
(6, 6, 'Pedra Mortal', 'Inativo', 22, 'Giyu Tomioka', 'Mestre'),
(7, 7, 'Dança das Borboletas', 'Ativo', 20, 'Tengen Uzui', 'Mestre'),
(8, 8, 'Sol Dourado', 'Inativo', 23, 'Muichiro Tokito', 'Mestre'),
(9, 9, 'Serpente Carmesim', 'Ativo', 19, 'Mitsuri Kanroji', 'Mestre'),
(10, 10, 'Flor da Salvação', 'Ativo', 20, 'Kanao Tsuyuri', 'Mestre'),
(11, 11, 'Melodia dos Trovões', 'Inativo', 18, 'Gyomei Himejima', 'Mestre'),
(12, 12, 'Rosa Carmesim', 'Ativo', 21, 'Obanai Iguro', 'Mestre'),
(13, 13, 'Flocos de Neve', 'Ativo', 20, 'Genya Shinazugawa', 'Mestre'),
(14, 14, 'Flor da Lua', 'Inativo', 22, 'Tokito Muichiro', 'Mestre'),
(15, 15, 'Chama da Destruição', 'Ativo', 21, 'Rengoku Senjurou', 'Mestre'),
(16, 16, 'Vazio Eterno', 'Ativo', 24, 'Akaza', 'Mestre'),
(17, 17, 'Fera Selvagem', 'Inativo', 23, 'Gyuutarou', 'Mestre'),
(18, 18, 'Esplendor Infernal', 'Ativo', 20, 'Gyokko', 'Mestre'),
(19, 19, 'Abraço da Perdição', 'Ativo', 22, 'Hantengu', 'Mestre'),
(20, 20, 'Trovão Celestial', 'Inativo', 25, 'Kokushibo', 'Mestre');

-- Inserção de dados na tabela Oni
INSERT INTO Oni (HIERARQUIA, NOME) VALUES 
('Demônio Principal', 'Muzan Kibutsuji'),
('Lua Sangrenta', 'Akaza'),
('Fera Devoradora', 'Enmu'),
('Canto Mortal', 'Daki'),
('Ilusão Amaldiçoada', 'Gyokko'),
('Trovão Infernal', 'Hantengu'),
('Sonho Maldito', 'Gyutarou'),
('Pesadelo Vivo', 'Rui'),
('Lua Crescente', 'Kokushibo'),
('Trovão da Morte', 'Kaigaku'),
('Lâmina da Lua', 'Douma'),
('Sombra Negra', 'Gyokko'),
('Pesadelo Noturno', 'Rokuro'),
('Lâmina Voraz', 'Kuina'),
('Dança Mística', 'Gyuutarou'),
('Chama da Destruição', 'Kyogai'),
('Fera Demoníaca', 'Wakuraba'),
('Mar de Sangue', 'Susamaru'),
('Fúria Amaldiçoada', 'Yahaba'),
('Olho de Lua', 'Temari');

-- Inserção de dados na tabela Missao
INSERT INTO Missao (ID_ONI, DT_INICIO, DT_CONCLUSAO, CONDICAO, DESCRICAO) VALUES 
(1, '2024-05-01', '2024-05-10', 'Derrotar o Líder Demoníaco', 'Missão para derrotar o líder dos Onis, Muzan Kibutsuji.'),
(2, '2024-04-15', '2024-04-20', 'Capturar Akaza', 'Missão para capturar o Oni Akaza.'),
(3, '2024-03-20', '2024-03-25', 'Exterminar Enmu', 'Missão para exterminar o Oni Enmu que está aterrorizando uma vila.'),
(4, '2024-02-10', '2024-02-15', 'Resgatar Reféns', 'Missão de resgate de reféns mantidos por Daki, um Oni.'),
(5, '2024-01-05', '2024-01-10', 'Investigar Ataques', 'Missão para investigar uma série de ataques noturnos na região.'),
(6, '2023-12-15', '2023-12-20', 'Eliminar Gyokko', 'Missão para eliminar o Oni Gyokko que está causando estragos.'),
(7, '2023-11-20', '2023-11-25', 'Neutralizar Hantengu', 'Missão para neutralizar o Oni Hantengu que está controlando uma área montanhosa.'),
(8, '2023-10-10', '2023-10-15', 'Derrotar Rui', 'Missão para derrotar o Oni Rui e libertar sua família.'),
(9, '2023-09-05', '2023-09-10', 'Localizar Kokushibo', 'Missão para localizar e confrontar o temível Oni Kokushibo.'),
(10, '2023-08-20', '2023-08-25', 'Eliminar Kaigaku', 'Missão para eliminar o ex-Demon Slayer Kaigaku que se tornou um Oni.'),
(11, '2023-07-15', '2023-07-20', 'Exterminar Douma', 'Missão para exterminar o Oni Douma que está aterrorizando uma cidade.'),
(12, '2023-06-10', '2023-06-15', 'Investigar Gyokko', 'Missão de investigação sobre atividades suspeitas do Oni Gyokko.'),
(13, '2023-05-05', '2023-05-10', 'Resgatar Reféns', 'Missão de resgate de reféns mantidos por Rokuro, um Oni.'),
(14, '2023-04-20', '2023-04-25', 'Investigar Kuina', 'Missão de reconhecimento para investigar a presença do Oni Kuina em uma área remota.'),
(15, '2023-03-15', '2023-03-20', 'Derrotar Gyuutarou', 'Missão para derrotar o Oni Gyuutarou e impedir seus planos malignos.'),
(16, '2023-02-10', '2023-02-15', 'Neutralizar Kyogai', 'Missão para neutralizar o Oni Kyogai, conhecido por suas técnicas ilusórias.'),
(17, '2023-01-05', '2023-01-10', 'Exterminar Wakuraba', 'Missão para exterminar o Oni Wakuraba que está causando problemas em uma vila próxima.'),
(18, '2022-12-20', '2022-12-25', 'Resgatar Reféns', 'Missão de resgate de reféns mantidos por Susamaru e Yahaba, dois Onis poderosos.'),
(19, '2022-11-15', '2022-11-20', 'Investigar Temari', 'Missão de investigação sobre atividades suspeitas do Oni Temari.'),
(20, '2022-10-10', '2022-10-15', 'Derrotar Muzan Kibutsuji', 'Missão final para derrotar o líder dos Onis, Muzan Kibutsuji, e salvar a humanidade.');


CREATE TABLE Kis_Mis(
	ID_CACADOR	INT,
	ID_MISSAO	INT,
	FOREIGN KEY (ID_CACADOR) REFERENCES Kisatsutai(ID_CACADOR),
	FOREIGN KEY (ID_MISSAO) REFERENCES Missao(ID_MISSAO)
);

-- Inserção de dados na tabela ponte Kis_Mis
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

INSERT INTO Equipamento (DESCRICAO, TECNICA_ASSOCIADA, TIPO) VALUES ('Lâmina Celestial', 'Corte Divino', 'Arma');

INSERT INTO Mestre (RESPIRACAO, NOME) VALUES ('Respiração do Trovão', 'Inosuke Hashibira');

INSERT INTO Kisatsutai (ID_EQUIPAMENTO, ID_MESTRE, TECNICA, CONDICAO, IDADE, NOME, RANKS) VALUES (21, 21, 'Fúria Bestial', 'Ativo', 20, 'Inosuke Hashibira', 'Mestre');

INSERT INTO Oni (HIERARQUIA, NOME) VALUES ('Fera Demoníaca', 'Wakuraba');

INSERT INTO Missao (ID_ONI, DT_INICIO, DT_CONCLUSAO, CONDICAO, DESCRICAO) VALUES (21, '2024-07-01', '2024-07-10', 'Neutralizar a Ameaça', 'Missão para neutralizar o Oni Wakuraba que está causando problemas na região.');

SELECT * FROM Equipamento;

SELECT * FROM Mestre;

SELECT * FROM Kisatsutai;

SELECT * FROM Oni;

SELECT * FROM Missao;

UPDATE Equipamento SET DESCRICAO = 'Espada Celestial' WHERE ID_EQUIPAMENTO = 21;

UPDATE Mestre SET NOME = 'Zenitsu Agatsuma' WHERE ID_MESTRE = 21;

UPDATE Kisatsutai SET CONDICAO = 'Inativo' WHERE ID_CACADOR = 21;

UPDATE Oni SET HIERARQUIA = 'Líder dos Onis' WHERE ID_ONI = 21;

UPDATE Missao SET DESCRICAO = 'Missão de resgate de reféns mantidos por Wakuraba, um Oni.' WHERE ID_MISSAO = 21;

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
WHERE k.ID_CACADOR = 1; -- Altere o ID_CACADOR conforme necessário

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
WHERE km.ID_CACADOR = 1 -- Altere o ID_CACADOR conforme necessário
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



