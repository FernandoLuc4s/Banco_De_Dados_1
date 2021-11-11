CREATE TABLE grp01.DISCIPLINA
(
	coddisciplina	int			not null,
	chavedisciplina varchar(17)	not null,
	codcurso		int			not null,
	coddepto		int			not null,
	nomedisciplina	varchar(50)	not null,
	seriecurso      smallint    not null,
	CONSTRAINT PK_DISCIPLINA_coddisciplina 	PRIMARY KEY (coddisciplina),
	CONSTRAINT FK_DISCIPLINA_codcurso 		FOREIGN KEY (codcurso) REFERENCES grp01.CURSO(codcurso),
	CONSTRAINT FK_DISCIPLINA_coddepto 		FOREIGN KEY (coddepto) REFERENCES grp01.DEPARTAMENTO(coddepto)
);

--
--Cria��o da tabela MATRICULA
--
CREATE TABLE grp01.MATRICULA
(
	chavematricula 	char(15) 	not null,
	codmatricula 	char(11) 	not null,
	ra				int		 	not null,
	codcurso		int		 	not null,
	serie 			smallint 	not null,
	codturno 		smallint 	not null,
	codunidade 		smallint 	not null,
	unidade 		varchar(10) not null,
	codturma 		char(07) 	not null,
	siglaturno 		char(02)	not null,
	tipocurso 		varchar(12) not null,
	datamatricula 	date 		not null,
	coddisciplina 	int 		not null,
	acrondisciplina varchar(17) not null,
	situacao		varchar(11) not null,
	CONSTRAINT PK_MATRICULA_chavematricula 	PRIMARY KEY (chavematricula),
	CONSTRAINT FK_MATRICULA_codcurso		FOREIGN KEY (codcurso) 		REFERENCES grp01.CURSO (codcurso),
	CONSTRAINT FK_MATRICULA_coddisciplina	FOREIGN KEY (coddisciplina) REFERENCES grp01.DISCIPLINA (coddisciplina)
);
--
-- Cria��o da tabela GENERO
--
CREATE TABLE grp01.GENERO
(	
	codgenero		smallint		not null,	
	genero			varchar(070)	not null,
--  descricao		varchar(200),
	CONSTRAINT PK_GENERO_codgenero PRIMARY KEY (codgenero)	
);
--
-- Cria��o da tabela ESTADOCIVIL
--
CREATE TABLE grp01.ESTADOCIVIL
(	
	codecivil		smallint	not null,	
	estadocivil		varchar(10)	not null,
	CONSTRAINT PK_GENERO_codecivil PRIMARY KEY (codecivil)
);
--
--Cria��o da tabela ALUNO
--
CREATE TABLE grp01.ALUNO
(
	ra       	int 			not null,
	nomealuno 	varchar(100) 	not null,
	codcurso  	int 			not null,
	sexo      	smallint 		not null,
	estadocivil char(05) 		not null,
	idade       smallint 		not null,
	logradouro 	varchar(16),
	endereco 	varchar(100),
	numero 		smallint,
	complemento varchar(100),
	bairro 		varchar(60),
	cidade 		varchar(40),
	uf 			varchar(03),
	regiao 		varchar(16),
	pais 		char(02),
	cep 		char(08),
	email 		varchar(60),
	telefone 	varchar(20),
	situacao    varchar(11) not null,
	CONSTRAINT PK_ALUNO_ra       PRIMARY KEY (ra),
	CONSTRAINT FK_ALUNO_codcurso FOREIGN KEY (codcurso) REFERENCES grp01.CURSO  (codcurso),
	CONSTRAINT FK_ALUNO_sexo	 FOREIGN KEY (sexo) 	REFERENCES grp01.GENERO (codgenero)	
);
/* � necess�rio aqui uma observa��o sobre a defini��o da chave estrangeira
   Na frase: CONSTRAINT FK_ALUNO_codcurso FOREIGN KEY(codcurso) REFERENCES grp01.CURSO(codcurso)
             CONSTRAINT � o comando para defini��o de uma chave prim�ria (PK) ou
			            chave estrangeira (FK)
			 FK_ALUNO_codcurso � o nome da chave prim�ria. � um mnem�nico que
			 facilita a identifica��o da chave, vez que
			 FK refere-se ao tipo de caso, neste caso chave estrangeira
			 ALUNO refere-se a qual tabela pertence a chave estrangeira
			 codcurso � a coluna selecionada para receber este status, isto �,
			 chave estrangeira.
			 FOREIGN KEY � a defini��o da chave estrangeira
			 REFERENCES � o par�metro para estabelecer a rela��o / associa��o entre
			 as tabelas: ALUNO e CURSO
*/			

--
-- Cria��o da tabela BOLETIM
--
CREATE TABLE grp01.BOLETIM
(
	chavematricula	char(15)	not null,
	codmatricula 	char(11) 	not null,
	ra				int  		not null,
	codcurso 		int 		not null,
	serie 			smallint 	not null,
	coddisciplina	int			not null,
	sigladisciplina	varchar(17) not null,
	notan1			decimal(5,2),
	notan2			decimal(5,2),
	notaaps			decimal(5,2),
	CONSTRAINT PK_BOLETIM_codmatricula	 	PRIMARY KEY (codmatricula),
	CONSTRAINT FK_BOLETIM_codcurso 			FOREIGN KEY (codcurso)      REFERENCES grp01.CURSO (codcurso),
	CONSTRAINT FK_BOLETIM_coddisciplina     FOREIGN KEY (coddisciplina) REFERENCES grp01.DISCIPLINA (coddisciplina)
);

--
--Cria��o da tabela GRADE
--
CREATE TABLE grp01.GRADE
(
	codmatricula 	char(11) 	not null,
	chavematricula	char(15) 	not null,
	unidade			varchar(10) not null,
	codcoordenador 	int 		not null,
	siglacurso      char(06)	not null,
	codcurso		char(03)	not null,
	serie 			smallint 	not null,
	coddisciplina	int 		not null,
	anoagenda 		int 		not null,
	semletivo		smallint 	not null,
	sigladisciplina varchar(18) not null,
	codturma		char(07)	not null,
	siglaturno 		char(02)	not null,
	horario			char(12)	not null,
	diasemana 		varchar(13) not null,
	codprofessor 	int 		not null,
	titulacao		varchar(13) not null,
	CONSTRAINT PK_GRADE_chavematricula 	PRIMARY KEY (chavematricula),
	CONSTRAINT FK_GRADE_codcoordenador 	FOREIGN KEY (codcoordenador) REFERENCES grp01.PROFESSOR  (codprofessor),
	CONSTRAINT FK_GRADE_coddisciplina 	FOREIGN KEY (coddisciplina)  REFERENCES grp01.DISCIPLINA (coddisciplina),
	CONSTRAINT FK_GRADE_codprofessor 	FOREIGN KEY (codprofessor)   REFERENCES grp01.PROFESSOR (codprofessor)
);