/* FMU - Faculdades Metropolitanas Unidas
-- Cursos	:CST em An�lise e Desenvolvimento de Sistemas
             CST em Sistemas para Internet
			 BEL em Sistemas de Informa��o
			 BEL em Ci�ncia da Computa��o
-- Objetivo	:Importa��o de volume de dados no SQL Server
-- Data: Segundo Semestre 2021
-- Aplica-se toda vez em que tiver a necessidade de inserir acima de 1000 tuplas
   O BULK INSERT faz parte do roll de instru��es Transact SQL
   
*/
-- Define-se o Banco de Dados, o Schema e a tabela alvo da a��o de importa��o
BULK INSERT BancoDadosFmu20212n.grp01.GRADE
-- Define-se o caminho e nome do arquivo fonte.
FROM 'C:\Users\User\OneDrive\�rea de Trabalho\FMU\3� Semestre\BANCO DE DADOS\Scripts Homologados - SQL Server (Suporte a aula SQL- DML)\GRADE.csv'
WITH
(
 FORMAT = 'CSV',
 DATAFILETYPE	='char',
 -- Se o arquivo CSV tiver cabe�alho, declara-se a FIRSTROW = 2, caso contrario pode-SECOND
 -- omitir esta linha
 FIRSTROW		=2,
 -- como o arquivo de origem cont�m sinais gr�ficos da nossa lingua, o ideal e utilizar 
 -- c�digos UNICODE
 CODEPAGE = 'ACP',
 -- Entenda-se FIELDTERMINATOR como o caractere separador de campos / colunas
 FIELDTERMINATOR = ';',
 -- Terminador de final de linha, normalmente � \r\n  que em hexadecimal � representado por
 --  0x0a
 ROWTERMINATOR	='0x0a',
 -- Define-se MAXERRORS com um valor alto que � para o BULK INSERT reportar o erro, MASTER
 -- continuar o processo de importa��o.
 MAXERRORS = 200000,
 -- Defini��o do caminho e nome do arquivo de erros.
 ERRORFILE='C:\Users\User\OneDrive\�rea de Trabalho\FMU\3� Semestre\BANCO DE DADOS\Scripts Homologados - SQL Server (Suporte a aula SQL- DML)\gradeERROS.txt'
);