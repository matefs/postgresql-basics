
CREATE TABLE clientes_novos (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    cidade VARCHAR(100)
);

CREATE TABLE clientes_antigos (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    cidade VARCHAR(100)
);


INSERT INTO clientes_novos (id, nome, cidade) VALUES
(1, 'Ana', 'São Paulo'),
(2, 'Bruno', 'Rio de Janeiro'),
(3, 'Daniel', 'Curitiba');

INSERT INTO clientes_antigos (id, nome, cidade) VALUES
(1, 'Carlos', 'Belo Horizonte'),
(2, 'Ana', 'São Paulo'),
(3, 'Daniel', 'Curitiba');



/*SELECT id, nome, cidade AS cidade_nova, NULL AS cidade_antiga
FROM clientes_novos

UNION ALL

SELECT id, nome, NULL AS cidade_nova, cidade AS cidade_antiga
FROM clientes_antigos;
*/


SELECT 
    id, 
    nome, 
    MAX(cidade_nova) AS cidade_nova, 
    MAX(cidade_antiga) AS cidade_antiga, 
    COUNT(*) AS total
FROM (
    SELECT id, nome, cidade AS cidade_nova, NULL AS cidade_antiga
    FROM clientes_novos

    UNION ALL

    SELECT id, nome, NULL AS cidade_nova, cidade AS cidade_antiga
    FROM clientes_antigos
) AS combined_results
GROUP BY id, nome;


