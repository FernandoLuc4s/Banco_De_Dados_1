CREATE TABLE grp01.DEPARTAMENTO
(
	coddepto		int			not null,
	nomedepto		varchar(50)	not null,
	codfaculdade	int			not null,
	codcoordenador	int			not null
	CONSTRAINT PK_DEPARTAMENTO_coddepto PRIMARY KEY (coddepto)
);