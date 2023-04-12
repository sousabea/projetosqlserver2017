/*
GERENCIANDO AS TABELAS DO BANCO DE DADOS
	Criando tabela de dados
*/

CREATE TABLE [TABELA DE CLIENTES]
(    [CPF] [VARCHAR] (11) ,
    [NOME] [VARCHAR] (100) ,
    [ENDERECO 1] [VARCHAR] (150) ,
    [ENDERECO 2] [VARCHAR] (150) ,
    [BAIRRO] [VARCHAR] (50) ,
    [CIDADE] [VARCHAR] (50) ,
    [ESTADO] [VARCHAR] (2) ,
    [CEP] [VARCHAR] (8) ,
    [DATA DE NASCIMENTO] [DATE],
    [IDADE] [SMALLINT],
    [SEXO] [VARCHAR] (1) ,
    [LIMITE DE CREDITO] [MONEY] ,
    [VOLUME DE COMPRA] [FLOAT] ,
    [PRIMEIRA COMPRA] [BIT])

/*
	Criando tabela teste para exclusão
*/

CREATE TABLE [dbo].[TABELA DE VENDEDORES 02](
        [MATRICULA] [varchar](5) NULL,
        [NOME] [varchar](100) NULL,
        [PERCENTUAL COMISSÃO] [float] NULL
) ON [PRIMARY]

/*
	Apagando tabela de dados
*/

DROP TABLE [dbo].[TABELA DE VENDEDORES 02]
