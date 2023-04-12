/*
MANUTENÇÃO DOS DADOS NAS TABELAS
	Incluindo dados na tabela
*/

INSERT INTO [TABELA DE PRODUTOS]
([CODIGO DO PRODUTO], [NOME DO PRODUTO], [EMBALAGEM], [TAMANHO], [SABOR], [PREÇO DE LISTA])
VALUES
('1040107','Light - 350 ml - Melancia', 'Lata', '350 ml', 'Melancia', 4.56)

INSERT INTO [TABELA DE PRODUTOS]
([CODIGO DO PRODUTO], [NOME DO PRODUTO], [EMBALAGEM], [TAMANHO], [SABOR], [PREÇO DE LISTA])
VALUES
('1037797','Clean - 2 Litros - Laranja', 'PET', '2 Litros', 'Laranja', 16.01)

INSERT INTO [TABELA DE PRODUTOS]
([CODIGO DO PRODUTO], [NOME DO PRODUTO], [EMBALAGEM], [TAMANHO], [SABOR], [PREÇO DE LISTA])
VALUES
('1000889','Sabor da Montanha - 700 ml - Uva', 'Garrafa', '700 ml', 'Uva', 6.31)

/*
	Alterando registros
		Incluindo registros errados para correção
*/

INSERT INTO [TABELA DE PRODUTOS]
([CODIGO DO PRODUTO], [NOME DO PRODUTO], [EMBALAGEM], [TAMANHO], [SABOR], [PREÇO DE LISTA])
VALUES
('544931', 'Frescor do Verão - 350 ml - Limão', 'PET', '350 ml','Limão',3.20)

INSERT INTO [TABELA DE PRODUTOS]
([CODIGO DO PRODUTO], [NOME DO PRODUTO], [EMBALAGEM], [TAMANHO], [SABOR], [PREÇO DE LISTA])
VALUES
('1078680', 'Frescor do Verão - 470 ml - Manga', 'Lata', '470 ml','Manga',5.18)

/*
		Corrigindo os dados
*/

UPDATE [TABELA DE PRODUTOS] SET 
[EMBALAGEM] = 'Lata',
[PREÇO DE LISTA] = 2.46
WHERE [CODIGO DO PRODUTO] = '544931'

UPDATE [TABELA DE PRODUTOS] SET
[EMBALAGEM] = 'Garrafa'
WHERE [CODIGO DO PRODUTO] = '1078680'


/*
	Excluindo registros
*/

DELETE FROM [TABELA DE PRODUTOS]
WHERE [CODIGO DO PRODUTO] = '1088216'


/*
	Chave primária
*/

ALTER TABLE [TABELA DE PRODUTOS]
ADD CONSTRAINT PK_PRODUTOS 
PRIMARY KEY CLUSTERED ([CODIGO DO PRODUTO])

/*
	Manipulando datas e campos lógicos
*/

ALTER TABLE [TABELA DE CLIENTES]
ALTER COLUMN [CPF]
VARCHAR(11) NOT NULL

ALTER TABLE [TABELA DE CLIENTES]
ADD CONSTRAINT PK_CLIENTES
PRIMARY KEY CLUSTERED ([CPF])

INSERT INTO [dbo].[TABELA DE CLIENTES]
           ([CPF]
           ,[NOME]
           ,[ENDERECO 1]
           ,[ENDERECO 2]
           ,[BAIRRO]
           ,[CIDADE]
           ,[ESTADO]
           ,[CEP]
           ,[DATA DE NASCIMENTO]
           ,[IDADE]
           ,[SEXO]
           ,[LIMITE DE CREDITO]
           ,[VOLUME DE COMPRA]
           ,[PRIMEIRA COMPRA])
     VALUES
           ('00300000001'
           ,'João da Silva'
           ,'Rua Projetada A número 10'
           ,''
           ,'Centro'
           ,'Rio de Janeiro'
           ,'RJ'
           ,'20000000'
           ,'1990-10-25'
           ,27
           ,'M'
           ,120000.50
           ,1000
           ,1)

