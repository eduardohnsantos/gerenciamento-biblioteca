-- Criação da tabela livros
CREATE TABLE livros (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    titulo VARCHAR(255) NOT NULL,
    autor VARCHAR(255) NOT NULL,
    ano_publicacao INTEGER,
    genero VARCHAR(50),
	adicionado_em TIMESTAMP NOT NULL DEFAULT NOW()
);
