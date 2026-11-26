/*
=========================================================================
Projeto de Banco de Dados: Sistema de Gestão Acadêmica
SGDB: PostgreeSQL | Ferramenta: DBeaver
Descrição: Script DQL com consultas de exercício no banco de dados.
Autor: Victor A. M. Nossal
=========================================================================
*/

/*
Exercício 1:
Listar todas as disciplinas cujo nome contenha o termo "Programação", 
exibindo o nome e carga horária.

Anotações:
Se o LIKE fosse 'Programação%', apenas as disciplinas que começam com 
'Programação' seriam incluídas. E se fosse '%Programação', apenas as que
terminam com 'Programação' seriam incluídas. Desse modo, ao usarmos
'%Programação%' ambas as possibilidades ficam disponíveis.
*/

SELECT
	nome_disciplina , carga_horaria
FROM disciplina
WHERE nome_disciplina  LIKE '%Programação%';

/*
Exercício 2:
Listar o nome e o e-mail de todos os alunos que estão matriculados em 
turmas associadas ao período 'Noite'.

Anotações:
Utilizamos o JOIN para conectar a tabela de alunos à tabela de turmas 
através de sua chave estrangeira correspondente (cod_turma), cruzando 
as informações cadastrais com o respectivo período de aula.
*/

SELECT
	nome_aluno,
	email,
	periodo
FROM aluno
JOIN turma
	ON turma.cod_turma = aluno.cod_turma
WHERE periodo = 'Noite';

/*
Exercício 3:
Listar o nome, sobrenome, curso e turno de todos os alunos.

Anotações:
Utilizamos múltiplos JOINs para conectar a tabela aluno a outras 
duas tabelas: cruzamos com a tabela turma através de cod_turma 
para obter o turno (período), e cruzamos com a tabela curso através 
de cod_curso para obter o nome do curso do aluno.
*/

SELECT
	nome_aluno,
	sobrenome_aluno,
	nome_curso,
	periodo
FROM aluno
JOIN turma
	ON turma.cod_turma = aluno.cod_turma
JOIN curso
	ON curso.cod_curso = aluno.cod_curso;

/*
Exercício 4:
Listar todas as disciplinas cursadas por um aluno específico, 
exibindo nome, sobrenome, nome da disciplina e nota obtida.

Anotações:
Utilizamos múltiplos JOINs para ligar o aluno ao seu histórico, 
passando pela tabela associativa de notas até chegar na disciplina.
Foi utilizada a aluna Sophia Cardoso (cod_aluno = 4).
*/

SELECT
	nome_aluno,
	sobrenome_aluno,
	nome_disciplina,
	nota
FROM aluno
JOIN historico
	ON historico.cod_aluno = aluno.cod_aluno
JOIN disciplina_historico
	ON disciplina_historico.cod_historico = historico.cod_historico
JOIN disciplina
	ON disciplina.cod_disciplina = disciplina_historico.cod_disciplina
WHERE aluno.cod_aluno = 4;

/*
Exercício 5:
Apresentar o nome completo dos professores e as respectivas disciplinas 
que lecionam, exibindo também a carga horária.

Anotações:
Utilizamos a função CONCAT para unir nome e sobrenome do professor, 
e encadeamos a tabela associativa professor_disciplina para cruzar 
as informações cadastrais com as disciplinas lecionadas.
*/

SELECT
	CONCAT(nome_professor, ' ',sobrenome_professor) AS nome_completo,
	nome_disciplina,
	carga_horaria
FROM professor
JOIN professor_disciplina
	ON professor_disciplina.cod_professor = professor.cod_professor
JOIN disciplina
	ON disciplina.cod_disciplina = professor_disciplina.cod_disciplina;



/*
Exercício 6:
Listar a grade curricular do curso de Engenharia de Produção, contendo 
o nome da disciplina, carga horária e professor responsável.

Anotações:
Utilizamos a tabela associativa curso_disciplina para resgatar a 
matriz do curso filtrando pelo código 1 (Engenharia de Produção), e 
encadeamos as tabelas de disciplinas e professores para exibir o corpo 
docente correspondente.
*/

SELECT
	nome_disciplina,
	carga_horaria,
	CONCAT(nome_professor, ' ', sobrenome_professor)
FROM curso_disciplina
JOIN disciplina
	ON disciplina.cod_disciplina = curso_disciplina.cod_disciplina
JOIN professor_disciplina
	ON professor_disciplina.cod_disciplina = disciplina.cod_disciplina
JOIN professor
	ON professor.cod_professor = professor_disciplina.cod_professor
WHERE cod_curso = 1
ORDER BY
	disciplina.cod_disciplina;

/*
Exercício 7:
Gerar um relatório completo contendo nome, sobrenome, CPF, números de 
telefones e endereço completo dos alunos.

Anotações:
Utilizamos STRING_AGG em conjunto com o GROUP BY para agrupar múltiplos 
telefones de um mesmo aluno em uma única linha, evitando registros duplicados. 
Além disso, aplicamos o COALESCE na concatenação do endereço para omitir 
a vírgula extra caso o campo opcional 'complemento' esteja nulo.
*/

SELECT
	nome_aluno,
	sobrenome_aluno,
	cpf,
	STRING_AGG(telefone, ', ') AS telefones,
	CONCAT(rua, ', ', numero, ', ', COALESCE(complemento || ', ', ''), bairro, ', ', cidade, ', ', estado, ', ', cep) AS endereco_completo
FROM aluno
JOIN telefone_aluno
	ON telefone_aluno.cod_aluno = aluno.cod_aluno
JOIN endereco_aluno
	ON endereco_aluno.cod_aluno = aluno.cod_aluno
GROUP BY
	aluno.cod_aluno, 
	nome_aluno, 
	sobrenome_aluno, 
	cpf, 
	rua, 
	numero, 
	complemento, 
	bairro, 
	cidade, 
	estado, 
	cep;

/*
Exercício 8:
Contar e listar a quantidade total de disciplinas gerenciadas por cada 
departamento.

Anotações:
Utilizamos a função de agregação COUNT() para contar as disciplinas 
e o GROUP BY para agrupar o resultado por departamento, cruzando as 
tabelas por meio de sua chave estrangeira.
*/

SELECT
	nome_departamento,
	COUNT(departamento.cod_departamento ) AS total_disciplinas
FROM disciplina
JOIN departamento
	ON departamento.cod_departamento  = disciplina.cod_departamento
GROUP BY
	departamento.cod_departamento;

/*
Exercício 9:
Calcular e exibir a nota média global dos alunos agrupada por curso.

Anotações:
Utilizamos múltiplos JOINs para conectar a tabela 'curso' até a tabela 
de notas 'disciplina_historico', aplicando a função AVG() combinada 
com o ROUND() para exibir a média global formatada com duas casas decimais.
*/

SELECT
	nome_curso,
	ROUND(AVG(nota), 2) AS media_global_curso
FROM curso
JOIN aluno
	ON aluno.cod_curso = curso.cod_curso
JOIN historico
	ON historico.cod_aluno = aluno.cod_aluno
JOIN disciplina_historico
	ON disciplina_historico.cod_historico = historico.cod_historico
GROUP BY
	nome_curso;

/*
Exercício 10:
Exibir o nome de cada disciplina e a respectiva média aritmética das 
notas obtidas por todos os alunos que a cursaram.

Anotações:
Utilizamos o JOIN entre a tabela disciplina e a tabela associativa 
disciplina_historico para cruzar as matérias com suas respectivas notas, 
aplicando a função AVG() arredondada pelo ROUND() para exibir a média 
por disciplina.
*/

SELECT
	nome_disciplina,
	ROUND(AVG(nota), 2) AS media
FROM disciplina
JOIN disciplina_historico
	ON disciplina_historico.cod_disciplina = disciplina.cod_disciplina
GROUP BY
	nome_disciplina;

/*
Exercício 11:
Calcular a média de notas da disciplina "Algoritmos e Programação" 
agrupada por curso.

Anotações:
Utilizamos múltiplos JOINs para conectar curso, aluno, histórico e notas, 
aplicando a cláusula WHERE para filtrar especificamente a disciplina desejada, 
e o ROUND(AVG(nota), 2) para exibir a média segmentada por curso.
*/

SELECT
	nome_curso,
	ROUND(AVG(nota), 2) AS media
FROM disciplina
JOIN disciplina_historico
	ON disciplina_historico.cod_disciplina = disciplina.cod_disciplina
JOIN historico
	ON historico.cod_historico = disciplina_historico.cod_historico
JOIN aluno
	ON aluno.cod_aluno = historico.cod_aluno
JOIN curso
	ON curso.cod_curso = aluno.cod_curso
WHERE nome_disciplina = 'Algoritmos e Programação'
GROUP BY
	nome_curso;

/*
Exercício 12:
Exibir o nome, sobrenome e código do aluno, para uma disciplina, e sua 
respectiva nota, acrescentando uma coluna condicional que avalie o status 
de aprovação (considerando nota $\ge$ 8.0 como critério de aprovação).

Anotações:
Utilizamos a estrutura condicional CASE WHEN para criar uma coluna dinâmica 
que classifica a situação acadêmica do aluno ("Aprovado" ou "Reprovado") 
com base na nota obtida na disciplina filtrada.
*/

SELECT
	aluno.cod_aluno,
	nome_aluno,
	sobrenome_aluno,
	nota,
	CASE
		WHEN nota >= 8 THEN 'Aprovado'
		ELSE 'Reprovado'
	END AS situacao
FROM aluno
JOIN historico
	ON historico.cod_aluno = aluno.cod_aluno
JOIN disciplina_historico
	ON disciplina_historico.cod_historico = historico.cod_historico
JOIN disciplina
	ON disciplina.cod_disciplina = disciplina_historico.cod_disciplina
WHERE nome_disciplina = 'Algoritmos e Programação';

/*
Exercício 13:
Listar os 3 alunos com maior média geral de notas por curso.

Anotações:
Calculamos a média geral de notas e a frequência média de cada 
aluno agrupando os dados por curso e nome do aluno.
Em caso de empate nas notas, utilizamos a frequência média como 
segundo critério de ordenação no ranking.
Funções de Janela: Utilizamos a função RANK() particionada por curso 
(PARTITION BY) e ordenada decrescentemente por nota e frequência para gerar 
o pódio independente de cada curso.
Modularização: Utilizamos uma CTE (Common Table Expression - cláusula WITH) 
para isolar o cálculo do ranking e, na consulta principal, filtramos apenas 
os alunos com posição <= 3.
*/

WITH ranking_alunos AS (
	SELECT
		nome_aluno,
		nome_curso,
		ROUND(AVG(nota), 2) AS media_geral,
		ROUND(AVG(frequencia), 2) AS frequencia_geral,
		RANK () OVER (
			PARTITION BY nome_curso
			ORDER BY AVG(nota) DESC, AVG(frequencia) DESC
		) AS posicao
	FROM curso
	JOIN aluno
		ON aluno.cod_curso = curso.cod_curso
	JOIN historico
		ON historico.cod_aluno = aluno.cod_aluno
	JOIN disciplina_historico
		ON disciplina_historico.cod_historico = historico.cod_historico
	GROUP BY
		nome_aluno,
		nome_curso
)
SELECT *
FROM ranking_alunos
WHERE posicao <= 3;
