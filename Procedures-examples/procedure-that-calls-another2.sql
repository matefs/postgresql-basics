-- Função 1: Função que será chamada
CREATE OR REPLACE FUNCTION funcao_alvo()
RETURNS SETOF TEXT AS $$
BEGIN
  -- Lógica da função alvo que retorna um conjunto de textos
  RETURN NEXT 'Texto 1';
  RETURN NEXT 'Texto 2';
  RETURN;
END;
$$ LANGUAGE plpgsql;



-- Função 2: Função que chama a função alvo
CREATE OR REPLACE FUNCTION chama_funcao_alvo()
RETURNS SETOF TEXT AS $$
DECLARE
  resultado TEXT;
BEGIN
  -- Lógica antes de chamar a função alvo (se necessário)
  RAISE NOTICE 'Antes de chamar a função alvo.';

  -- Chama a função alvo e obtém os resultados
  FOR resultado IN SELECT * FROM funcao_alvo()
  LOOP
    -- Faça o que quiser com cada resultado, neste exemplo, apenas levantar um aviso
    RAISE NOTICE 'Resultado da função alvo: %', resultado;
  END LOOP;

  -- Lógica após chamar a função alvo (se necessário)
  RAISE NOTICE 'Depois de chamar a função alvo.';
END;
$$ LANGUAGE plpgsql;


select chama_funcao_alvo();
