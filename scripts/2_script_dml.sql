/*
=========================================================================
Projeto de Banco de Dados: Sistema de Gestão Acadêmica
SGDB: PostgreeSQL | Ferramenta: DBeaver
Descrição: Script DML para popular o banco de dados.
Autor: Victor A. M. Nossal
=========================================================================
*/

-- 1. Inserção de departamentos
INSERT INTO departamento (nome_departamento) VALUES
	('Engenharias e Tecnologias Exatas'),
	('Computação e Sistemas' );

-- 2. Inserção de cursos
INSERT INTO curso(nome_curso, cod_departamento) VALUES
	-- Departamento 1: Engenharias e Tecnologias Exatas
	('Engenharia de Produção', 1),
	-- Departamento 2: Computação e Sistemas
	('Sistemas de Informação', 2);

-- 3. Inserção de disciplinas
INSERT INTO disciplina (nome_disciplina, carga_horaria, num_alunos, cod_departamento) VALUES
	-- Departamento 1: Engenharias e Tecnologias Exatas (cod_departamento = 1)
	('Desenho Computacional I', 60, 0, 1),
	('Desenho Computacional II', 60, 0, 1),
	('Escrita Acadêmica e Comunicação', 60, 0, 1),
	('Produção Acadêmico-Científica', 60, 0, 1),
	('Probabilidade e Estatística', 60, 0, 1),
	('Sistemas de Produção', 60, 0, 1),
	('Química dos Materiais', 60, 0, 1),
	('Estatística Inferencial', 60, 0, 1),
	('Geometria Analítica', 60, 0, 1),
	('Matemática para Engenharia I', 60, 0, 1),
	('Matemática para Engenharia II', 60, 0, 1),
	('Matemática para Engenharia III', 60, 0, 1),
	('Engenharia Econômica', 60, 0, 1),
	('Métodos Numéricos', 60, 0, 1),
	('Metrologia e Instrumentação', 60, 0, 1),
	('Física - Mecânica', 60, 0, 1),
	('Física - Fluidos e Calor', 60, 0, 1),
	('Física - Eletricidade', 60, 0, 1),
	('Ergonomia e Segurança do Trabalho', 33, 0, 1),
	('Pesq. Operacional I - Prog. Linear', 60, 0, 1),
	('Pesq. Operacional II - Prog. Não Lin.', 60, 0, 1),
	('Engenharia Ambiental I', 60, 0, 1),
	('Engenharia Ambiental II', 60, 0, 1),
	('Sociologia e Contemporaneidade', 31, 0, 1),
	('Tecnologia e Ensaios Mecânicos', 60, 0, 1),
	('Sistemas da Qualidade I', 60, 0, 1),
	('Sistemas da Qualidade II', 60, 0, 1),
	('Termodinâmica Aplicada', 60, 0, 1),
	('Programação da Produção', 60, 0, 1),
	('Empreendedorismo', 60, 0, 1),
	('Sistemas Elétricos', 60, 0, 1),
	('Sist. de Transporte e Logística', 60, 0, 1),
	('Sistemas de Inovação', 60, 0, 1),
	('Fenômenos de Transporte', 60, 0, 1),
	('Modelagem e Simulação', 60, 0, 1),
	('Planejamento Industrial', 60, 0, 1),
	('Filosofia', 60, 0, 1),
	('Gestão de Projetos de Engenharia', 32, 0, 1),
	('Projetos de Eng. de Produção', 180, 0, 1),
	('Estágio Profissional', 160, 0, 1),
	-- Departamento 2: Computação e Sistemas (cod_departamento = 2)
	('Algoritmos e Programação', 60, 0, 2),
	('Introdução à Computação', 60, 0, 2),
	('Matemática Computacional', 60, 0, 2),
	('Lógica e Matemática Discreta', 60, 0, 2),
	('Design de Interfaces', 60, 0, 2),
	('Programação I', 60, 0, 2),
	('Programação II', 60, 0, 2),
	('Programação III', 60, 0, 2),
	('Desenvolvimento Web', 60, 0, 2),
	('Redes de Computadores I', 60, 0, 2),
	('Redes de Computadores II', 60, 0, 2),
	('Arquitetura de Computadores', 60, 0, 2),
	('Administração da Informação', 60, 0, 2),
	('Estrutura de Dados', 60, 0, 2),
	('Análise de Sistemas', 60, 0, 2),
	('Sistemas Operacionais', 60, 0, 2),
	('Banco de Dados I', 60, 0, 2),
	('Banco de Dados II', 60, 0, 2),
	('Paradigmas de Ling. de Programação', 60, 0, 2),
	('Avaliação de Desempenho de Sist.', 60, 0, 2),
	('Padrões Arquiteturais de Sistemas', 33, 0, 2),
	('Dev. para Dispositivos Móveis', 60, 0, 2),
	('Teste e Qualidade de Software', 60, 0, 2),
	('Engenharia de Software', 60, 0, 2),
	('Desenvolvimento Full Stack I', 60, 0, 2),
	('Desenvolvimento Full Stack II', 60, 0, 2),
	('Ciência de Dados', 60, 0, 2),
	('Inteligência Artificial', 60, 0, 2),
	('Aprendizado de Máquina', 60, 0, 2),
	('Segurança da Informação', 60, 0, 2),
	('Complexidade de Algoritmos', 60, 0, 2),
	('Compiladores', 60, 0, 2),
	('Sistemas Distribuídos', 60, 0, 2),
	('Inglês Técnico', 60, 0, 2),
	('Direito Digital', 60, 0, 2),
	('Tópicos Avançados em POO', 60, 0, 2),
	('Proj. de Desenv. de Software I', 120, 0, 2),
	('Proj. de Desenv. de Software II', 120, 0, 2),
	('Trabalho de Conclusão de Curso', 60, 0, 2);

-- 4. Inserção de curso_disciplina
INSERT INTO curso_disciplina (cod_curso, cod_disciplina) VALUES
	-- Matriz curricular Engenharia de Produção (cod_curso = 1)
	(1, 41), -- Algoritmos e Programação
	(1, 1),  -- Desenho Computacional I
	(1, 3),  -- Escrita Acadêmica e Comunicação
	(1, 4),  -- Produção Acadêmico-Científica
	(1, 5),  -- Probabilidade e Estatística
	(1, 6),  -- Sistemas de Produção
	(1, 46), -- Programação I
	(1, 2),  -- Desenho Computacional II
	(1, 7),  -- Química dos Materiais
	(1, 8),  -- Estatística Inferencial
	(1, 9),  -- Geometria Analítica
	(1, 10), -- Matemática para Engenharia I
	(1, 47), -- Programação II
	(1, 13), -- Engenharia Econômica
	(1, 14), -- Métodos Numéricos
	(1, 15), -- Metrologia e Instrumentação
	(1, 16), -- Física - Mecânica
	(1, 11), -- Matemática para Engenharia II
	(1, 48), -- Programação III
	(1, 19), -- Ergonomia e Segurança do Trabalho
	(1, 20), -- Pesq. Operacional I
	(1, 22), -- Engenharia Ambiental I
	(1, 17), -- Física - Fluidos e Calor
	(1, 12), -- Matemática para Engenharia III
	(1, 57), -- Banco de Dados I
	(1, 26), -- Sistemas da Qualidade I
	(1, 23), -- Engenharia Ambiental II
	(1, 24), -- Sociologia e Contemporaneidade
	(1, 18), -- Física - Eletricidade
	(1, 25), -- Tecnologia e Ensaios Mecânicos
	(1, 49), -- Desenvolvimento Web
	(1, 21), -- Pesq. Operacional II
	(1, 27), -- Sistemas da Qualidade II
	(1, 28), -- Termodinâmica Aplicada
	(1, 29), -- Programação da Produção
	(1, 30), -- Empreendedorismo
	(1, 65), -- Desenvolvimento Full Stack I
	(1, 68), -- Inteligência Artificial
	(1, 31), -- Sistemas Elétricos
	(1, 32), -- Sist. de Transporte e Logística
	(1, 33), -- Sistemas de Inovação
	(1, 34), -- Fenômenos de Transporte
	(1, 67), -- Ciência de Dados
	(1, 39), -- Projetos de Eng. de Produção
	(1, 35), -- Modelagem e Simulação
	(1, 36), -- Planejamento Industrial
	(1, 37), -- Filosofia
	(1, 69), -- Aprendizado de Máquina
	(1, 38), -- Gestão de Projetos de Engenharia
	(1, 40), -- Estágio Profissional
	(1, 79), -- Trabalho de Conclusão de Curso
	-- Matriz curricular Sistemas de Informação (cod_curso = 2)
	(2, 41), -- Algoritmos e Programação
	(2, 45), -- Design de Interfaces
	(2, 3),  -- Escrita Acadêmica / Português
	(2, 42), -- Introdução à Computação
	(2, 43), -- Matemática Computacional
	(2, 46), -- Programação I
	(2, 49), -- Desenvolvimento Web
	(2, 50), -- Redes de Computadores I
	(2, 52), -- Arquitetura de Computadores
	(2, 53), -- Administração da Informação
	(2, 44), -- Lógica e Matemática Discreta
	(2, 47), -- Programação II
	(2, 54), -- Estrutura de Dados
	(2, 51), -- Redes de Computadores II
	(2, 4),  -- Metodologia Científica
	(2, 30), -- Empreendedorismo
	(2, 74), -- Inglês Técnico
	(2, 48), -- Programação III
	(2, 55), -- Análise de Sistemas
	(2, 56), -- Sistemas Operacionais
	(2, 57), -- Banco de Dados I
	(2, 5),  -- Estatística / Prob. e Estatística
	(2, 68), -- Inteligência Artificial
	(2, 58), -- Banco de Dados II
	(2, 59), -- Paradigmas de Ling. de Programação
	(2, 60), -- Avaliação de Desempenho de Sist.
	(2, 61), -- Padrões Arquiteturais de Sistemas
	(2, 65), -- Desenvolvimento Full Stack I
	(2, 62), -- Dev. para Dispositivos Móveis
	(2, 63), -- Teste e Qualidade de Software
	(2, 64), -- Engenharia de Software
	(2, 66), -- Desenvolvimento Full Stack II
	(2, 67), -- Ciência de Dados
	(2, 77), -- Proj. de Desenv. de Software I
	(2, 76), -- Tópicos Avançados em POO
	(2, 69), -- Aprendizado de Máquina
	(2, 70), -- Segurança da Informação
	(2, 71), -- Complexidade de Algoritmos
	(2, 78), -- Proj. de Desenv. de Software II
	(2, 72), -- Compiladores
	(2, 75), -- Direito Digital
	(2, 24), -- Sociologia
	(2, 73), -- Sistemas Distribuídos
	(2, 37), -- Filosofia
	(2, 79); -- Trabalho de Conclusão de Curso

-- 5. Inserção de professor
INSERT INTO professor (nome_professor, sobrenome_professor, status, cod_departamento) VALUES
	-- Departamento 1: Engenharias e Tecnologias Exatas (cod_departamento = 1)
	('Carlos', 'Silva', TRUE, 1),
	('Ana', 'Souza', TRUE, 1),
	('Roberto', 'Santos', TRUE, 1),
	('Mariana', 'Oliveira', TRUE, 1),
	('Fernando', 'Lima', TRUE, 1),
	('Juliana', 'Costa', TRUE, 1),
	('Marcos', 'Pereira', TRUE, 1),
	('Patricia', 'Rodrigues', TRUE, 1),
	('Eduardo', 'Almeida', TRUE, 1),
	('Beatriz', 'Martins', TRUE, 1),
	('Lucas', 'Araujo', TRUE, 1),
	('Camila', 'Barbosa', TRUE, 1),
	('Gabriel', 'Ribeiro', TRUE, 1),
	('Larissa', 'Carvalho', TRUE, 1),
	('Rafael', 'Fernandes', TRUE, 1),
	('Natalia', 'Cardoso', TRUE, 1),
	('Thiago', 'Moreira', TRUE, 1),
	('Vanessa', 'Rocha', TRUE, 1),
	('Bruno', 'Goncalves', TRUE, 1),
	('Amanda', 'Correia', TRUE, 1),
	-- Departamento 2: Computação e Sistemas (cod_departamento = 2)
	('Ricardo', 'Mendes', TRUE, 2),
	('Sofia', 'Cavalcanti', TRUE, 2),
	('Rodrigo', 'Azevedo', TRUE, 2),
	('Gabriela', 'Farias', TRUE, 2),
	('Alexandre', 'Nogueira', TRUE, 2),
	('Jessica', 'Mota', TRUE, 2),
	('Vinicius', 'Prado', TRUE, 2),
	('Renata', 'Fogaca', TRUE, 2),
	('Leonardo', 'Vieira', TRUE, 2),
	('Daniela', 'Pires', TRUE, 2),
	('Gustavo', 'Freitas', TRUE, 2),
	('Leticia', 'Neves', TRUE, 2),
	('Diego', 'Medeiros', TRUE, 2),
	('Priscila', 'Diniz', TRUE, 2),
	('Marcelo', 'Siqueira', TRUE, 2),
	('Aline', 'Campos', TRUE, 2),
	('Felipe', 'Guimaraes', TRUE, 2),
	('Tatiana', 'Duarte', TRUE, 2),
	('Leonardo', 'Ramos', TRUE, 2),
	('Bianca', 'Rezende', TRUE, 2);

-- 6. Inserção de professor_disciplina
INSERT INTO professor_disciplina (cod_professor, cod_disciplina) VALUES
	-- Engenharia de Produção
	(1, 1), (1, 2),   -- Carlos Silva -> Desenho Computacional I e Desenho Computacional II
	(2, 3), (2, 4),   -- Ana Souza -> Escrita Acadêmica e Comunicação e Produção Acadêmico-Científica
	(3, 5), (3, 6),   -- Roberto Santos -> Probabilidade e Estatística e Sistemas de Produção
	(4, 7), (4, 8),   -- Mariana Oliveira -> Química dos Materiais e Estatística Inferencial
	(5, 9), (5, 10),  -- Fernando Lima -> Geometria Analítica e Matemática para Engenharia I
	(6, 11), (6, 12), -- Juliana Costa -> Matemática para Engenharia II e Matemática para Engenharia III
	(7, 13), (7, 14), -- Marcos Pereira -> Engenharia Econômica e Métodos Numéricos
	(8, 15), (8, 16), -- Patricia Rodrigues -> Metrologia e Instrumentação e Física - Mecânica
	(9, 17), (9, 18), -- Eduardo Almeida -> Física - Fluidos e Calor e Física - Eletricidade
	(10, 19), (10, 20), -- Beatriz Martins -> Ergonomia e Segurança do Trabalho e Pesq. Operacional I - Prog. Linear
	(11, 21), (11, 22), -- Lucas Araujo -> Pesq. Operacional II - Prog. Não Lin. e Engenharia Ambiental I
	(12, 23), (12, 24), -- Camila Barbosa -> Engenharia Ambiental II e Sociologia e Contemporaneidade
	(13, 25), (13, 26), -- Gabriel Ribeiro -> Tecnologia e Ensaios Mecânicos e Sistemas da Qualidade I
	(14, 27), (14, 28), -- Larissa Carvalho -> Sistemas da Qualidade II e Termodinâmica Aplicada
	(15, 29), (15, 30), -- Rafael Fernandes -> Programação da Produção e Empreendedorismo
	(16, 31), (16, 32), -- Natalia Cardoso -> Sistemas Elétricos e Sist. de Transporte e Logística
	(17, 33), (17, 34), -- Thiago Moreira -> Sistemas de Inovação e Fenômenos de Transporte
	(18, 35), (18, 36), -- Vanessa Rocha -> Modelagem e Simulação e Planejamento Industrial
	(19, 37), (19, 38), -- Bruno Goncalves -> Filosofia e Gestão de Projetos de Engenharia
	(20, 39), (20, 40), -- Amanda Correia -> Projetos de Eng. de Produção e Estágio Profissional
	-- Sistemas de Informação
	(21, 41), (21, 42), -- Ricardo Mendes -> Algoritmos e Programação e Introdução à Computação
	(22, 43), (22, 44), -- Sofia Cavalcanti -> Matemática Computacional e Lógica e Matemática Discreta
	(23, 45), (23, 46), -- Rodrigo Azevedo -> Design de Interfaces e Programação I
	(24, 47), (24, 48), -- Gabriela Farias -> Programação II e Programação III
	(25, 49), (25, 50), -- Alexandre Nogueira -> Desenvolvimento Web e Redes de Computadores I
	(26, 51), (26, 52), -- Jessica Mota -> Redes de Computadores II e Arquitetura de Computadores
	(27, 53), (27, 54), -- Vinicius Prado -> Administração da Informação e Estrutura de Dados
	(28, 55), (28, 56), -- Renata Fogaca -> Análise de Sistemas e Sistemas Operacionais
	(29, 57), (29, 58), -- Leonardo Vieira -> Banco de Dados I e Banco de Dados II
	(30, 59), (30, 60), -- Daniela Pires -> Paradigmas de Ling. de Programação e Avaliação de Desempenho de Sist.
	(31, 61), (31, 62), -- Gustavo Freitas -> Padrões Arquiteturais de Sistemas e Dev. para Dispositivos Móveis
	(32, 63), (32, 64), -- Leticia Neves -> Teste e Qualidade de Software e Engenharia de Software
	(33, 65), (33, 66), -- Diego Medeiros -> Desenvolvimento Full Stack I e Desenvolvimento Full Stack II
	(34, 67), (34, 68), -- Priscila Diniz -> Ciência de Dados e Inteligência Artificial
	(35, 69), (35, 70), -- Marcelo Siqueira -> Aprendizado de Máquina e Segurança da Informação
	(36, 71), (36, 72), -- Aline Campos -> Complexidade de Algoritmos e Compiladores
	(37, 73), (37, 74), -- Felipe Guimaraes -> Sistemas Distribuídos e Inglês Técnico
	(38, 75), (38, 76), -- Tatiana Duarte -> Direito Digital e Tópicos Avançados em POO
	(39, 77), (39, 78), -- Leonardo Ramos -> Proj. de Desenv. de Software I e Proj. de Desenv. de Software II
	(40, 79);           -- Bianca Rezende -> Trabalho de Conclusão de Curso

-- 7. Inserção disciplina_dependencia
INSERT INTO disciplina_dependencia (cod_disciplina, cod_pre_requisito) VALUES
	-- Engenharia de Produção
	(2, 1),   -- Desenho Computacional II depende de Desenho Computacional I
	(11, 10), -- Matemática para Engenharia II depende de Matemática para Engenharia I
	(12, 11), -- Matemática para Engenharia III depende de Matemática para Engenharia II
	(17, 16), -- Física - Fluidos e Calor depende de Física - Mecânica
	(18, 17), -- Física - Eletricidade depende de Física - Fluidos e Calor
	(21, 20), -- Pesq. Operacional II depende de Pesq. Operacional I
	(23, 22), -- Engenharia Ambiental II depende de Engenharia Ambiental I
	(27, 26), -- Sistemas da Qualidade II depende de Sistemas da Qualidade I
	-- Sistemas de Informação
	(46, 41), -- Programação I depende de Algoritmos e Programação
	(47, 46), -- Programação II depende de Programação I
	(48, 47), -- Programação III depende de Programação II
	(54, 46), -- Estrutura de Dados depende de Programação I
	(71, 54), -- Complexidade de Algoritmos depende de Estrutura de Dados
	(58, 57), -- Banco de Dados II depende de Banco de Dados I
	(65, 49), -- Desenvolvimento Full Stack I depende de Desenvolvimento Web
	(66, 65), -- Desenvolvimento Full Stack II depende de Desenvolvimento Full Stack I
	(69, 68), -- Aprendizado de Máquina depende de Inteligência Artificial
	(78, 77); -- Proj. de Desenv. de Software II depende de Proj. de Desenv. de Software I

-- 8. Inserção de turmas
INSERT INTO turma (periodo, num_alunos, data_inicio, data_fim, cod_curso) VALUES
	-- Turmas do Curso 1: Engenharia de Produção (cod_curso = 1)
	('Manhã', 0, '2026-02-16', '2026-07-05', 1),
	('Tarde', 0, '2026-02-16', '2026-07-05', 1),
	('Noite', 0, '2026-02-16', '2026-07-05', 1),
	-- Turmas do Curso 2: Sistemas de Informação (cod_curso = 2)
	('Manhã', 0, '2026-02-16', '2026-07-05', 2),
	('Tarde', 0, '2026-02-16', '2026-07-05', 2),
	('Noite', 0, '2026-02-16', '2026-07-05', 2);

-- 9. Inserção de alunos
INSERT INTO aluno (nome_aluno, sobrenome_aluno, cpf, sexo, nome_mae, nome_pai, status, email, cod_curso, cod_turma) VALUES
	-- Engenharia de Produção
	-- Turma 1: Manhã (cod_turma = 1)
	('Lucas', 'Ferreira', '11122233344', 'M', 'Maria Ferreira', 'José Ferreira', 'A', 'lucas.ferreira@email.com', 1, 1),
	('Beatriz', 'Lima', '22233344455', 'F', 'Ana Lima', 'Carlos Lima', 'A', 'beatriz.lima@email.com', 1, 1),
	-- Turma 2: Tarde (cod_turma = 2)
	('Davi', 'Monteiro', '12131415161', 'M', 'Adriana Monteiro', 'Sérgio Monteiro', 'A', 'davi.monteiro@email.com', 1, 2),
	('Sophia', 'Cardoso', '13141516172', 'F', 'Claudia Cardoso', 'Marcelo Cardoso', 'A', 'sophia.cardoso@email.com', 1, 2),
	-- Turma 3: Noite (cod_turma = 3)
	('Nicolas', 'Nogueira', '22232425261', 'M', 'Sandra Nogueira', 'Antonio Nogueira', 'A', 'nicolas.nogueira@email.com', 1, 3),
	('Luiza', 'Mendes', '23242526272', 'F', 'Cristina Mendes', 'Francisco Mendes', 'A', 'luiza.mendes@email.com', 1, 3),
	-- Sistemas de Informação
	-- Turma 4: Manhã (cod_turma = 4)
	('Enrico', 'Ramos', '32333435361', 'M', 'Ana Ramos', 'José Ramos', 'A', 'enrico.ramos@email.com', 2, 4),
	('Alice', 'Rezende', '33343536372', 'F', 'Maria Rezende', 'Carlos Rezende', 'A', 'alice.rezende@email.com', 2, 4),
	-- Turma 5: Tarde (cod_turma = 5)
	('Anthony', 'Barros', '42434445461', 'M', 'Adriana Barros', 'Sérgio Barros', 'A', 'anthony.barros@email.com', 2, 5),
	('Agatha', 'Freitas', '43444546472', 'F', 'Claudia Freitas', 'Marcelo Freitas', 'A', 'agatha.freitas@email.com', 2, 5),
	-- Turma 6: Noite (cod_turma = 6)
	('Ravi', 'Lins', '52535455561', 'M', 'Sandra Lins', 'Antonio Lins', 'A', 'ravi.lins@email.com', 2, 6),
	('Aurora', 'Sales', '53545556572', 'F', 'Cristina Sales', 'Francisco Sales', 'A', 'aurora.sales@email.com', 2, 6);

-- 10. Update em turma
-- Nesta etapa, realizamos um UPDATE para atualizar o número de alunos por turma.
-- Como iniciamos as turmas com num_alunos igual a zero, fazemos o recálculo 
-- com base nos alunos efetivamente inseridos e associados.
UPDATE turma
SET num_alunos = subquery.total_turma
FROM (
	SELECT cod_turma, COUNT(cod_turma) AS total_turma
	FROM aluno
	GROUP BY cod_turma
) AS subquery
WHERE turma.cod_turma = subquery.cod_turma;

-- 11. Inserção de aluno_disciplina
INSERT INTO aluno_disciplina (cod_aluno, cod_disciplina) VALUES
	-- Engenharia de Produção
	-- Aluno 1: Lucas Ferreira
	(1, 41), (1, 1), (1, 3), (1, 4), (1, 5),
	-- Aluno 2: Beatriz Lima
	(2, 41), (2, 1), (2, 3), (2, 4), (2, 5),
	-- Aluno 3: Davi Monteiro
	(3, 41), (3, 1), (3, 3), (3, 4), (3, 5),
	-- Aluno 4: Sophia Cardoso
	(4, 41), (4, 1), (4, 3), (4, 4), (4, 5),
	-- Aluno 5: Nicolas Nogueira
	(5, 41), (5, 1), (5, 3), (5, 4), (5, 5),
	-- Aluno 6: Luiza Mendes
	(6, 41), (6, 1), (6, 3), (6, 4), (6, 5),
	-- Sistemas de Informação
	-- Aluno 7: Enrico Ramos
	(7, 41), (7, 45), (7, 42), (7, 43), (7, 44),
	-- Aluno 8: Alice Rezende
	(8, 41), (8, 45), (8, 42), (8, 43), (8, 44),
	-- Aluno 9: Anthony Barros
	(9, 41), (9, 45), (9, 42), (9, 43), (9, 44),
	-- Aluno 10: Agatha Freitas
	(10, 41), (10, 45), (10, 42), (10, 43), (10, 44),
	-- Aluno 11: Ravi Lins
	(11, 41), (11, 45), (11, 42), (11, 43), (11, 44),
	-- Aluno 12: Aurora Sales
	(12, 41), (12, 45), (12, 42), (12, 43), (12, 44);

-- 12. Inserção de historico
INSERT INTO historico (data_inicio, data_fim, cod_aluno) VALUES
	('2026-02-16', '2026-07-05', 1),   -- Lucas Ferreira
	('2026-02-16', '2026-07-05', 2),   -- Beatriz Lima
	('2026-02-16', '2026-07-05', 3),   -- Davi Monteiro
	('2026-02-16', '2026-07-05', 4),   -- Sophia Cardoso
	('2026-02-16', '2026-07-05', 5),   -- Nicolas Nogueira
	('2026-02-16', '2026-07-05', 6),   -- Luiza Mendes
	('2026-02-16', '2026-07-05', 7),   -- Enrico Ramos
	('2026-02-16', '2026-07-05', 8),   -- Alice Rezende
	('2026-02-16', '2026-07-05', 9),   -- Anthony Barros
	('2026-02-16', '2026-07-05', 10),  -- Agatha Freitas
	('2026-02-16', '2026-07-05', 11),  -- Ravi Lins
	('2026-02-16', '2026-07-05', 12);  -- Aurora Sales

-- 13. Inserção de disciplina_historico
-- Associa as disciplinas cursadas por cada aluno ao seu respectivo histórico, registrando nota e frequência.
INSERT INTO disciplina_historico (cod_disciplina, cod_historico, nota, frequencia) VALUES
	-- Engenharia de Produção
	-- Histórico 1 (Lucas Ferreira)
	(41, 1, 8.50, 90),
	(1,  1, 7.50, 85),
	(3,  1, 9.00, 95),
	(4,  1, 8.00, 90),
	(5,  1, 6.50, 80),
	-- Histórico 2 (Beatriz Lima)
	(41, 2, 9.50, 100),
	(1,  2, 8.00, 90),
	(3,  2, 9.50, 100),
	(4,  2, 8.50, 95),
	(5,  2, 7.00, 85),
	-- Histórico 3 (Davi Monteiro)
	(41, 3, 6.00, 75),
	(1,  3, 7.00, 80),
	(3,  3, 7.50, 85),
	(4,  3, 6.50, 80),
	(5,  3, 5.50, 75),
	-- Histórico 4 (Sophia Cardoso)
	(41, 4, 10.00, 100),
	(1,  4, 9.00, 95),
	(3,  4, 9.50, 95),
	(4,  4, 9.00, 90),
	(5,  4, 8.50, 90),
	-- Histórico 5 (Nicolas Nogueira)
	(41, 5, 7.50, 85),
	(1,  5, 6.50, 80),
	(3,  5, 8.00, 90),
	(4,  5, 7.00, 85),
	(5,  5, 6.00, 75),
	-- Histórico 6 (Luiza Mendes)
	(41, 6, 8.50, 90),
	(1,  6, 8.00, 90),
	(3,  6, 9.00, 95),
	(4,  6, 8.50, 90),
	(5,  6, 7.50, 85),
	-- Sistemas de Informação
	-- Histórico 7 (Enrico Ramos)
	(41, 7, 9.00, 95),
	(45, 7, 8.50, 90),
	(42, 7, 9.50, 100),
	(43, 7, 7.50, 85),
	(44, 7, 8.00, 90),
	-- Histórico 8 (Alice Rezende)
	(41, 8, 8.00, 90),
	(45, 8, 9.00, 95),
	(42, 8, 8.50, 90),
	(43, 8, 8.00, 85),
	(44, 8, 9.00, 95),
	-- Histórico 9 (Anthony Barros)
	(41, 9, 6.50, 80),
	(45, 9, 7.00, 80),
	(42, 9, 6.00, 75),
	(43, 9, 6.50, 80),
	(44, 9, 7.00, 85),
	-- Histórico 10 (Agatha Freitas)
	(41, 10, 9.50, 100),
	(45, 10, 9.50, 100),
	(42, 10, 9.00, 95),
	(43, 10, 8.50, 90),
	(44, 10, 9.00, 95),
	-- Histórico 11 (Ravi Lins)
	(41, 11, 7.00, 85),
	(45, 11, 7.50, 85),
	(42, 11, 8.00, 90),
	(43, 11, 6.50, 80),
	(44, 11, 7.00, 85),
	-- Histórico 12 (Aurora Sales)
	(41, 12, 8.50, 90),
	(45, 12, 8.00, 90),
	(42, 12, 9.00, 95),
	(43, 12, 8.50, 90),
	(44, 12, 8.50, 90);

-- 14. Inserção de telefone_aluno
INSERT INTO telefone_aluno (cod_aluno, telefone) VALUES
	(1,  '(11) 98765-1111'),
	(1,  '(11) 3333-4444'),
	(2,  '(11) 98765-2222'),
	(2,  '(11) 3444-5555'),
	(3,  '(11) 98765-3333'),
	(4,  '(11) 98765-4444'),
	(5,  '(11) 98765-5555'),
	(6,  '(11) 98765-6666'),
	(7,  '(21) 97654-7777'),
	(7,  '(21) 2222-3333'),
	(8,  '(21) 97654-8888'),
	(9,  '(21) 97654-9999'),
	(10, '(21) 97654-0000'),
	(11, '(31) 96543-1111'),
	(12, '(31) 96543-2222');

-- 15. Inserção de endereco_aluno
INSERT INTO endereco_aluno (rua, numero, complemento, bairro, cidade, estado, cep, cod_aluno) VALUES
	-- Aluno 1: Lucas Ferreira
	('Rua das Flores', '123', 'Apto 42', 'Centro', 'São Paulo', 'SP', '01001000', 1),
	-- Aluno 2: Beatriz Lima
	('Av. Paulista', '1500', 'Bloco B', 'Bela Vista', 'São Paulo', 'SP', '01310100', 2),
	-- Aluno 3: Davi Monteiro
	('Rua Augusta', '450', 'Casa 2', 'Consolação', 'São Paulo', 'SP', '01305000', 3),
	-- Aluno 4: Sophia Cardoso
	('Rua Oscar Freire', '890', NULL, 'Cerqueira César', 'São Paulo', 'SP', '01426001', 4),
	-- Aluno 5: Nicolas Nogueira
	('Rua Haddock Lobo', '320', 'Apto 11', 'Cerqueira César', 'São Paulo', 'SP', '01414000', 5),
	-- Aluno 6: Luiza Mendes
	('Av. Brigadeiro Luis Antonio', '2100', 'Conj 51', 'Jardim Paulista', 'São Paulo', 'SP', '01402000', 6),
	-- Aluno 7: Enrico Ramos
	('Av. Atlântica', '500', 'Apto 601', 'Copacabana', 'Rio de Janeiro', 'RJ', '22010000', 7),
	-- Aluno 8: Alice Rezende
	('Rua Visconde de Pirajá', '300', 'Cobertura', 'Ipanema', 'Rio de Janeiro', 'RJ', '22410000', 8),
	-- Aluno 9: Anthony Barros
	('Rua Farme de Amoedo', '120', 'Apto 202', 'Ipanema', 'Rio de Janeiro', 'RJ', '22420020', 9),
	-- Aluno 10: Agatha Freitas
	('Av. Vieira Souto', '900', 'Apto 301', 'Ipanema', 'Rio de Janeiro', 'RJ', '22420000', 10),
	-- Aluno 11: Ravi Lins
	('Av. Afonso Pena', '1500', 'Apto 102', 'Centro', 'Belo Horizonte', 'MG', '30130000', 11),
	-- Aluno 12: Aurora Sales
	('Rua da Bahia', '1000', 'Sala 405', 'Funcionários', 'Belo Horizonte', 'MG', '30160011', 12);
