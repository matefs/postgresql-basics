-- TabelaA
CREATE TABLE TabelaA (
  ID SERIAL PRIMARY KEY,
  descricao VARCHAR(255) 
);

-- TabelaB
CREATE TABLE TabelaB (
  ID SERIAL PRIMARY KEY,
  descricao VARCHAR(255) 
);

-- Tabela de junção (Tabelas_Relacionadas)
CREATE TABLE Tabelas_Relacionadas (
  ID SERIAL PRIMARY KEY,
  ID_TabelaA INT,
  ID_TabelaB INT,
  FOREIGN KEY (ID_TabelaA) REFERENCES TabelaA(ID),
  FOREIGN KEY (ID_TabelaB) REFERENCES TabelaB(ID)
);

 
INSERT INTO TabelaA (descricao) VALUES
    ('Descrição 1 TabelaA'),
    ('Descrição 2 TabelaA'),
    ('Descrição 3 TabelaA');
 
INSERT INTO TabelaB (descricao) VALUES
    ('Descrição 1 TabelaB'),
    ('Descrição 2 TabelaB'),
    ('Descrição 3 TabelaB');

INSERT INTO Tabelas_Relacionadas (ID_TabelaA, ID_TabelaB) VALUES
    (1, 1), 
    (1, 2), 
    (2, 2), 
    (3, 3);
    
    
SELECT a.ID AS ID_TabelaA, a.descricao AS Descricao_TabelaA, b.ID AS ID_TabelaB, b.descricao AS Descricao_TabelaB
FROM TabelaA AS a
INNER JOIN Tabelas_Relacionadas AS r ON a.ID = r.ID_TabelaA
INNER JOIN TabelaB AS b ON b.ID = r.ID_TabelaB;
