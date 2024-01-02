-- Create the 'alura' database
CREATE DATABASE alura;

-- Create the 'aluno' table
CREATE TABLE aluno (
    id SERIAL PRIMARY KEY,
    primeiro_nome VARCHAR(255) NOT NULL,
    ultimo_nome VARCHAR(255) NOT NULL,
    data_nascimento DATE NOT NULL
);

-- Create the 'curso' table
CREATE TABLE curso (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL
);

-- Create the 'aluno_curso' table with foreign key references
CREATE TABLE aluno_curso (
    aluno_id INTEGER NOT NULL,
    curso_id INTEGER NOT NULL,
    PRIMARY KEY (aluno_id, curso_id),
    FOREIGN KEY (aluno_id) REFERENCES aluno(id),
    FOREIGN KEY (curso_id) REFERENCES curso(id)
);

