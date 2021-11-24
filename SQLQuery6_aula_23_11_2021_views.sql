-- criando uma view

CREATE VIEW	grp01.vwHISTORICO

AS	SELECT	A.ra AS [Registro do Aluno], 

			A.nomealuno AS [Nome do Aluno], 

			D.nomedisciplina AS [Nome da Disciplina], 

			B.notan1 AS [NotaGrupoN1], B.notan2 AS [NotaGrupoN2], B.aps AS [NotaAPS],

      (B.notan1*0.40 + (B.notan2*0.9+ B.aps*0.1)*0.60) AS [Média Final]

FROM		grp01. ALUNO AS A, grp01. BOLETIM AS B, grp01. CURSO AS C, grp01. DISCIPLINA AS D

WHERE	(B.ra=A.ra) AND (B.coddisciplina=D.coddisciplina) AND (A.codcurso=C.codcurso)

			AND C.codcurso ='120' AND a.ra= '100021'; 


--SELECIONANDO A VIEW
SELECT *
FROM INFORMATION_SCHEMA.VIEWS;

-- criando uma nova view
create view grp01.[Historico Segundo Semestre]

AS SELECT  H.[Registro do Aluno], H.[Nome do aluno], H.[Nome da Disciplina], H.[Média Final]

FROM  grp01.vwHISTORICO AS H

WHERE  H.[Média Final]>=7.0;