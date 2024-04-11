CREATE TABLE exemplo (
    id SERIAL PRIMARY KEY,
    data_registro DATE
);

INSERT INTO exemplo (data_registro) VALUES
    ('2024-04-11'),
    ('2024-04-12'),
    ('2024-04-13'),
    ('2024-04-14'),
    ('2024-04-15');

select data_registro, extract(dow from data_registro ) as dia_correpondente_na_semana 
from exemplo order by data_registro 

---  (0 para domingo, 1 para segunda-feira, etc.).

/*| Dia da Semana | Descrição     |
|---------------|---------------|
| 0             | Domingo       |
| 1             | Segunda-feira |
| 2             | Terça-feira   |
| 3             | Quarta-feira  |
| 4             | Quinta-feira  |
| 5             | Sexta-feira   |
| 6             | Sábado        |
| 7             | Não definido  |
*/