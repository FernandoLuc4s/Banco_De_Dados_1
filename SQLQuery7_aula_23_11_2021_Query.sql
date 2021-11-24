
-- Query que retorna o RA e o nome do aluno 
SELECT ra, nomealuno
FROM grp01.ALUNO;

-- Query que retorna o RA e o nome do aluno  que tenham o cod do curso determinado no where
SELECT ra, nomealuno
FROM grp01.ALUNO
WHERE codcurso=120;

-- Query que retorna o RA e o nome do aluno e outros dados que tenham o cod do curso determinado no where
SELECT ra, nomealuno, codcurso, datnasc, endereco
FROM grp01.ALUNO
WHERE codcurso=120;

--Ordenando o nome do aluno por ordem alfabética
SELECT ra, nomealuno, codcurso, datnasc, endereco
FROM grp01.ALUNO
WHERE codcurso=120
ORDER BY nomealuno ASC;

--Ordenando o nome do aluno por ordem alfabética descendente
SELECT ra, nomealuno, codcurso, datnasc, endereco
FROM grp01.ALUNO
WHERE codcurso=120
ORDER BY nomealuno DESC;