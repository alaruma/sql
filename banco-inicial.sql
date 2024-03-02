CREATE DATABASE alura;

drop table aluno
	CREATE TABLE aluno (
    id SERIAL PRIMARY KEY,
	primeiro_nome VARCHAR(255) NOT NULL,
	ultimo_nome VARCHAR(255) NOT NULL,
	data_nascimento DATE NOT NULL
);

CREATE TABLE categoria (
    id SERIAL PRIMARY KEY,
	nome VARCHAR(255) NOT NULL UNIQUE
);


CREATE TABLE curso(
    id SERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    categoria_id INTEGER NOT NULL REFERENCES categoria(id)
);

CREATE TABLE aluno_curso (
	aluno_id INTEGER NOT NULL REFERENCES aluno(id),
	curso_id INTEGER NOT NULL REFERENCES curso(id),
	PRIMARY KEY (aluno_id, curso_id)

);


INSERT INTO aluno (primeiro_nome, ultimo_nome, data_nascimento) 
VALUES ('Eduwardo', 'Collin', '2010-06-20');

INSERT INTO aluno (primeiro_nome, ultimo_nome, data_nascimento) 
VALUES ('Izabela', 'Suani', '2010-09-23');

INSERT INTO aluno (primeiro_nome, ultimo_nome, data_nascimento) 
VALUES ('Jaco', 'Berg', '2010-01-14');

INSERT INTO aluno (primeiro_nome, ultimo_nome, data_nascimento) 
VALUES ('Lauren', 'Xuregui', '2010-06-27');

INSERT INTO aluno (primeiro_nome, ultimo_nome, data_nascimento) 
VALUES ('Rana', 'Montanha', '2010-06-20');

INSERT INTO categoria (nome) VALUES ('Tecnologia');
INSERT INTO categoria (nome) VALUES ('Dança');
INSERT INTO categoria (nome) VALUES ('Musica');

INSERT INTO curso (nome, categoria_id) VALUES ('Hacker do bem', 1);
INSERT INTO curso (nome, categoria_id) VALUES ('Break Dance', 2);
INSERT INTO curso (nome, categoria_id) VALUES ('Coral', 3);

SELECT * FROM aluno
SELECT * FROM curso
SELECT * FROM categoria
SELECT * FROM aluno_curso

SELECT id FROM aluno WHERE  primeiro_nome = 'Eduwardo' AND  ultimo_nome = 'Collin';
SELECT id FROM aluno WHERE  primeiro_nome = 'Izabela' AND  ultimo_nome = 'Suani';
SELECT id FROM aluno WHERE  primeiro_nome = 'Jaco' AND  ultimo_nome = 'Berg';
SELECT id FROM aluno WHERE  primeiro_nome = 'Lauren' AND  ultimo_nome = 'Xuregui';
SELECT id FROM aluno WHERE  primeiro_nome = 'Rana' AND  ultimo_nome = 'Montanha';


INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (1, 2);
INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (2, 1);
INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (3, 2);
INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (4, 3);
INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (6, 3);


SELECT 
    'Eduwardo' AS primeiro_nome, 
    'Collin' AS ultimo_nome, 
    '2010-06-20' AS data_nascimento, 
    'Break Dance' AS nome_curso
UNION ALL
SELECT 
    'Izabela' AS primeiro_nome, 
    'Suani' AS ultimo_nome, 
    '2010-09-23' AS data_nascimento, 
    'Hacker do bem' AS nome_curso
UNION ALL
SELECT 
    'Jaco' AS primeiro_nome, 
    'Berg' AS ultimo_nome, 
    '2010-01-14' AS data_nascimento, 
    'Break Dance' AS nome_curso
UNION ALL
SELECT 
    'Lauren' AS primeiro_nome, 
    'Xuregui' AS ultimo_nome, 
    '2010-06-27' AS data_nascimento, 
    'Coral' AS nome_curso
UNION ALL
SELECT 
    'Rana' AS primeiro_nome, 
    'Montanha' AS ultimo_nome, 
    '2010-06-20' AS data_nascimento, 
    'Coral' AS nome_curso;
