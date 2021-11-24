DELETE
FROM grp01.ALUNO
WHERE ra=100000; -- deleltando o aluno pelo ra

SELECT *
FROM grp01.ALUNO
WHERE ra=100000;-- verificando se o aluno foi deletado

DELETE
FROM grp01.PROFESSOR
WHERE codprofessor=99;

SELECT *
FROM grp01.PROFESSOR
WHERE codprofessor=99;

--criabdi uma subquery que exclui todos os ra que estão cadastrados no curso 123 da tabela boletim
DELETE
FROM grp01.BOLETIM
WHERE ra IN
(
	SELECT ra
	FROM grp01.ALUNO
	WHERE codcurso=123
);

--alterando notas através do comando update
UPDATE grp01.BOLETIM
SET notan1 = 10.0 -- Nota grupo n1
WHERE ra=102924 and coddisciplina =504;

SELECT *
FROM grp01.BOLETIM
WHERE ra=102924 and coddisciplina =504;

UPDATE grp01.BOLETIM
SET notan2 = notan2+1.25, aps = aps *0.10 -- Nota grupo n2
WHERE ra=102924 and coddisciplina =501;

SELECT *
FROM grp01.BOLETIM
WHERE ra=102924 and coddisciplina =501;