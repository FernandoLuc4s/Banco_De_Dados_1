CREATE TABLE grp01.PROFESSOR
(
	codprofessor	int	not     null,
	nomeprof		varchar(40)	not null,
	titulacao 		varchar(12) not null,
	coddepto		int			not null,
	CONSTRAINT PK_PROFESSOR_codprofessor 	PRIMARY KEY (codprofessor),
	CONSTRAINT FK_PROFESSOR_coddepto 		FOREIGN KEY (coddepto) REFERENCES grp01.DEPARTAMENTO (coddepto),
);