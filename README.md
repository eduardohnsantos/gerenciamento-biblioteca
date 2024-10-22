# Projeto de Gerenciamento de Biblioteca

Este projeto é um sistema simples de gerenciamento de livros em uma biblioteca.

## Estrutura do Banco de Dados

- Tabela `livros`: armazena informações sobre os livros.

## Stored Procedures

- `adicionar_livro`: permite adicionar um novo livro.
- `listar_livros`: lista todos os livros cadastrados.

## Como Usar

1. Execute o script `biblioteca.sql` no seu banco de dados PostgreSQL.
2. Para adicionar um livro, chame a stored procedure `adicionar_livro` passando os parâmetros.
3. Para listar todos os livros, chame a stored procedure `listar_livros`.

## Exemplo de Uso

Para adicionar um livro:

```sql
CALL adicionar_livro('O Senhor dos Anéis', 'J.R.R. Tolkien', 1954, 'Fantasia');
