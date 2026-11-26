/*
=========================================================================
Projeto de Banco de Dados: Sistema de Gestão Acadêmica
SGDB: PostgreeSQL | Ferramenta: DBeaver
Descrição: Script DDL para criação da estrutura física do banco de dados.
Autor: Victor A. M. Nossal
=========================================================================
*/

-- 1. Criação do banco de dados
CREATE DATABASE db_gestao_academica;

/*
-------------------------------------------------------------------------
NOTA IMPORTANTE
-------------------------------------------------------------------------
1. No PostgreSQL, conecte-se ao banco 'db_gestao_academica'
recém-criado antes de executar os comandos de criação de tabelas abaixo.

2. O script foi estruturado seguindo uma hierarquia, onde as tabelas 
independentes (como departamento) são criadas primeiro e as tabelas 
dependentes, isto é, as que possuem chave-estrangeira (como professor, 
que depende de departamento) são criadas depois.
Isso garante a integridade referencial e evita erros de excução.
-------------------------------------------------------------------------
*/

-- 2. Criação da tabela departamento
CREATE TABLE departamento (
	cod_departamento SERIAL PRIMARY KEY,
	nome_departamento VARCHAR(40) NOT NULL
);

-- 3. Criação da tabela professor
CREATE TABLE professor (
	cod_professor SERIAL PRIMARY KEY,
	nome_professor VARCHAR(25) NOT NULL,
	sobrenome_professor VARCHAR(40) NOT NULL,
	status BOOLEAN NOT NULL,
	cod_departamento INT REFERENCES departamento(cod_departamento) NOT NULL -- FK: Vincula o professor ao seu departamento
);

-- 4. Criação da tabela curso
CREATE TABLE curso (
	cod_curso SERIAL PRIMARY KEY,
	nome_curso VARCHAR(40) NOT NULL,
	cod_departamento INT REFERENCES departamento(cod_departamento) NOT NULL -- FK: Vincula o curso ao seu departamento
);

-- 5. Criação da tabela turma
CREATE TABLE turma (
	cod_turma SERIAL PRIMARY KEY,
	periodo VARCHAR(10) NOT NULL,
	num_alunos SMALLINT NOT NULL,
	data_inicio DATE NOT NULL,
	data_fim DATE NOT NULL,
	cod_curso INT REFERENCES curso(cod_curso) NOT NULL -- FK: Vincula a turma ao seu curso
);

-- 6. Criação da tabela disciplina
CREATE TABLE disciplina (
	cod_disciplina SERIAL PRIMARY KEY,
	nome_disciplina VARCHAR(40) NOT NULL,
	descricao VARCHAR(200),
	carga_horaria INT NOT NULL,
	num_alunos SMALLINT NOT NULL,
	cod_departamento INT REFERENCES departamento(cod_departamento) NOT NULL -- FK: Vincula a disciplina ao seu departamento
);

-- 7. Criação da tabela disciplina_dependencia
CREATE TABLE disciplina_dependencia (
	-- Identifica a disciplina principal que exige o pré-requisito
	cod_disciplina INT REFERENCES disciplina(cod_disciplina) NOT NULL,
	
	-- Identifica qual é a disciplina que serve de pré-requisito
	cod_pre_requisito INT REFERENCES disciplina(cod_disciplina) NOT NULL,
	
	-- Chave primária composta
	PRIMARY KEY (cod_disciplina, cod_pre_requisito)
);

-- 8. Criação da tabela associativa professor_disciplina
CREATE TABLE professor_disciplina (
	-- Identifica o professor
	cod_professor INT REFERENCES professor(cod_professor) NOT NULL,
	
	-- Identifica a disciplina
	cod_disciplina INT REFERENCES disciplina(cod_disciplina) NOT NULL,
	
	-- Chave primária composta
	PRIMARY KEY (cod_professor, cod_disciplina)
);

-- 9. Criação da tabela curso_disciplina
CREATE TABLE curso_disciplina (
	-- Identifica o curso
	cod_curso INT REFERENCES curso(cod_curso) NOT NULL,
	
	-- Identifica a disciplina
	cod_disciplina INT REFERENCES disciplina(cod_disciplina) NOT NULL,
	
	-- Chave primária composta
	PRIMARY KEY (cod_curso, cod_disciplina)
);

-- 10. Criação da tabela aluno
CREATE TABLE aluno (
	cod_aluno SERIAL PRIMARY KEY,
	nome_aluno VARCHAR(25) NOT NULL,
	sobrenome_aluno VARCHAR(40) NOT NULL,
	cpf VARCHAR(11) UNIQUE NOT NULL,
	sexo VARCHAR(1) NOT NULL,
	nome_mae VARCHAR(80) NOT NULL,
	nome_pai VARCHAR(80),
	status VARCHAR(1) NOT NULL,
	email VARCHAR(100) UNIQUE NOT NULL,
	cod_curso INT REFERENCES curso(cod_curso) NOT NULL, -- FK: Vincula o aluno ao curso
	cod_turma INT REFERENCES turma(cod_turma) NOT NULL -- FK: Vincula o aluno a turma
);

-- 11. Criação da tabela aluno_disciplina
CREATE TABLE aluno_disciplina (
	-- Identifica o aluno
	cod_aluno INT REFERENCES aluno(cod_aluno) NOT NULL,
	
	-- Identifica a disciplina
	cod_disciplina INT REFERENCES disciplina(cod_disciplina) NOT NULL,
	
	-- Chave primária composta
	PRIMARY KEY (cod_aluno, cod_disciplina)
);

-- 12. Criação da tabela historico
CREATE TABLE historico (
	cod_historico SERIAL PRIMARY KEY,
	data_inicio DATE NOT NULL,
	data_fim DATE NOT NULL,
	cod_aluno INT REFERENCES aluno(cod_aluno) NOT NULL -- FK: Vincula o histórico ao aluno
);

-- 13. Criação da tabela disciplina_historico
CREATE TABLE disciplina_historico (
	-- Identifica a disciplina
	cod_disciplina INT REFERENCES disciplina(cod_disciplina) NOT NULL,
	
	-- Identifica o histórico
	cod_historico INT REFERENCES historico(cod_historico) NOT NULL,
	
	nota NUMERIC(4,2) NOT NULL,
	frequencia INT NOT NULL,
	
	--Chave primária composta
	PRIMARY KEY (cod_disciplina, cod_historico)
);

-- 14. Criação da tabela telefone_aluno
CREATE TABLE telefone_aluno (
	cod_telefone SERIAL PRIMARY KEY,
	cod_aluno INT REFERENCES aluno(cod_aluno) NOT NULL, -- FK: Vincula o telefone_aluno ao aluno
	telefone VARCHAR(40) NOT NULL
);

-- 15. Criação da tabela endereco_aluno
CREATE TABLE endereco_aluno (
	cod_endereco SERIAL PRIMARY KEY,
	rua VARCHAR(80) NOT NULL,
	numero VARCHAR(10) NOT NULL,
	complemento VARCHAR(30),
	bairro VARCHAR(40) NOT NULL,
	cidade VARCHAR(50) NOT NULL,
	estado CHAR(2) NOT NULL,
	cep CHAR(8) NOT NULL,
	cod_aluno INT REFERENCES aluno(cod_aluno) NOT NULL -- FK: Vincula o endereco_aluno ao aluno
);
