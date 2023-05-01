/*	TSQL TRATAMENTO DE ERROS
		@@ERROR @@ROWCOUNT		
*/

SELECT SUM(A.QUANTIDADE * A.[PRE�O]) AS FATURAMENTO,
SUM(A.QUANTIDADE * A.[PRE�O])/10 AS COMISSAO
FROM [ITENS NOTAS FISCAIS] A INNER JOIN [NOTAS FISCAIS] B
ON A.NUMERO = B.NUMERO WHERE B.CPF = '1471156710' AND YEAR(B.[DATA]) = 2016

DECLARE @DENOMINADOR INT
SET @DENOMINADOR = 0
SELECT SUM(A.QUANTIDADE * A.[PRE�O]) AS FATURAMENTO,
SUM(A.QUANTIDADE * A.[PRE�O])/@DENOMINADOR AS COMISSAO
FROM [ITENS NOTAS FISCAIS] A INNER JOIN [NOTAS FISCAIS] B
ON A.NUMERO = B.NUMERO WHERE B.CPF = '1471156710' AND YEAR(B.[DATA]) = 2016


CREATE PROCEDURE TrataErroZero @CPF VARCHAR(12), @ANO INT, @DENOMINADOR INT, 
@NUMERRO INT OUTPUT, @NUMLINHA INT OUTPUT
AS
BEGIN
  SELECT SUM(A.QUANTIDADE * A.[PRE�O]) AS FATURAMENTO,
  SUM(A.QUANTIDADE * A.[PRE�O])/@DENOMINADOR AS COMISSAO
  FROM [ITENS NOTAS FISCAIS] A INNER JOIN [NOTAS FISCAIS] B
  ON A.NUMERO = B.NUMERO WHERE B.CPF = @CPF AND YEAR(B.[DATA]) = @ANO
  SELECT @NUMERRO = @@ERROR, @NUMLINHA = @@ROWCOUNT
END

DECLARE @DENOMINADOR INT
DECLARE @CPF VARCHAR(12)
DECLARE @ANO INT
DECLARE @NUMERRO INT
DECLARE @NUMLINHA INT
SET @CPF = '1471156710'
SET @ANO = 2016
SET @DENOMINADOR = 0
EXEC TrataErroZero @CPF = @CPF, @ANO = @ANO, @DENOMINADOR = @DENOMINADOR, @NUMERRO = @NUMERRO OUTPUT, @NUMLINHA = @NUMLINHA OUTPUT
IF @NUMERRO <> 0
 PRINT 'Houve um erro: ' + CONVERT(VARCHAR(30), @NUMERRO) + ' - ' + CONVERT(VARCHAR(30), @NUMLINHA)



 /*	Tratamento com Try-Catch
 */
 CREATE PROCEDURE [dbo].[TrataErroZeroTry] @CPF VARCHAR(12), @ANO INT, @DENOMINADOR INT, 
@MENSAGEM VARCHAR(50) OUTPUT
AS
BEGIN
  BEGIN TRY
     SELECT SUM(A.QUANTIDADE * A.[PRE�O]) AS FATURAMENTO,
     SUM(A.QUANTIDADE * A.[PRE�O])/@DENOMINADOR AS COMISSAO
     FROM [ITENS NOTAS FISCAIS] A INNER JOIN [NOTAS FISCAIS] B
     ON A.NUMERO = B.NUMERO WHERE B.CPF = @CPF AND YEAR(B.[DATA]) = @ANO
  END TRY
  BEGIN CATCH
      SET @MENSAGEM = 'Houve um erro n�mero: ' + CONVERT(VARCHAR(10), @@ERROR)
  END CATCH
END

DECLARE @DENOMINADOR INT
DECLARE @CPF VARCHAR(12)
DECLARE @ANO INT
DECLARE @MENSAGEM VARCHAR(30)

SET @CPF = '1471156710'
SET @ANO = 2016
SET @DENOMINADOR = 0
SET @MENSAGEM = ''
EXEC TrataErroZeroTry @CPF = @CPF, @ANO = @ANO, @DENOMINADOR = @DENOMINADOR, @MENSAGEM = @MENSAGEM OUTPUT
IF @MENSAGEM <> ''
  PRINT @MENSAGEM

