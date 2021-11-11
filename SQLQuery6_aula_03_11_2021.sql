USE BancoDadosFMU20212n;

CREATE TABLE grp01.CURSO
(
	codcurso			int			not null,
	siglacurso      	varchar(10) not null,
	nomecurso			varchar(50)	not null,
	integralizacao		smallint	not null,
	autorizacao			date		not null,
	reconhecimento		date				,
	notareconhecimento  decimal(5,2)not null,
	/* Definição da Chave Primária (PK) da tabela curso	*/
	CONSTRAINT PK_CURSO_codcurso PRIMARY KEY (codcurso)
);

