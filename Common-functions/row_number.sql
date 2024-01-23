-- there is no id ? no problema, we can use row_number() 

CREATE TABLE eventos (
    inicio TIMESTAMP, 
    fim TIMESTAMP     
);


INSERT INTO eventos (inicio, fim) VALUES
    ('2024-01-23 08:00:00', '2024-01-23 12:00:00'),
    ('2024-01-23 14:00:00', '2024-01-23 18:00:00');
 

 -- select * from eventos

select ROW_NUMBER() over (order by inicio) as numero_linha from eventos;



SELECT resultado
FROM (
    SELECT inicio AS resultado, ROW_NUMBER() OVER (ORDER BY inicio) AS numero_linha FROM eventos
    UNION ALL
    SELECT fim AS resultado, ROW_NUMBER() OVER (ORDER BY inicio) AS numero_linha FROM eventos
) AS Numeradas
ORDER BY numero_linha, resultado;

