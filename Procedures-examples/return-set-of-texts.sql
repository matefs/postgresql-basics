CREATE OR REPLACE FUNCTION minha_funcao()
RETURNS SETOF TEXT AS $$
DECLARE
    meu_array TEXT[];
BEGIN
    -- Definir um valor inicial (array vazio)
    meu_array := ARRAY['Olá'];

    -- Adicionar mais um valor ao array
    meu_array := meu_array || ARRAY['Mundo'];

    -- Iterar sobre os valores do array e retorná-los
    FOR i IN 1..array_length(meu_array, 1) LOOP
        RETURN NEXT meu_array[i];
    END LOOP;

    -- Indicar o fim do conjunto
    RETURN;
END;
$$ LANGUAGE PLPGSQL;


select minha_funcao();

