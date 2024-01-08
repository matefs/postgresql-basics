CREATE OR REPLACE FUNCTION exemplo_interpolacao()
RETURNS VOID AS $$
DECLARE
    nome_pessoa VARCHAR(50) := 'João';
    idade INTEGER := 30;
    mensagem VARCHAR(100);
BEGIN
    mensagem := format('Olá, %s! Você tem %s anos.', nome_pessoa, idade);
    RAISE NOTICE '%', mensagem;
END;
$$ LANGUAGE plpgsql;


select exemplo_interpolacao()

