-- Stored Procedure para adicionar um livro
CREATE OR REPLACE PROCEDURE adicionar_livro(
   IN p_titulo VARCHAR,
   IN p_autor VARCHAR,
   IN p_ano_publicacao INTEGER,
   IN p_genero VARCHAR
)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO livros (titulo, autor, ano_publicacao, genero)
    VALUES (p_titulo, p_autor, p_ano_publicacao, p_genero);
	
	RAISE NOTICE 'Livro "%", do autor "%", cadastrado com sucesso.', p_titulo, p_autor;
	
	EXCEPTION
    WHEN unique_violation THEN
        RAISE NOTICE 'O livro "%", do autor "%", já foi cadastrado.', p_titulo, p_autor;
END;
$$;