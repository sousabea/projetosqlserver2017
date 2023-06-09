/*
MANIPULANDO BANCO DE DADOS
	Criando banco de dados (simples e com indicação de repositório + parametrização)
*/

	CREATE DATABASE SUCOS_VENDAS_01

CREATE DATABASE SALES_VENDAS_02
ON ( NAME = SUCO_VENDAS_DAT,  
    FILENAME = 'C:\TEMP\DATA\SALES_VENDAS_02.mdf',  
    SIZE = 10,  
    MAXSIZE = 50,  
    FILEGROWTH = 5 )  
LOG ON  
( NAME = SUCOS_VENDAS_LOG,  
    FILENAME = 'C:\TEMP\DATA\SALES_VENDAS_02.ldf',  
    SIZE = 5MB,  
    MAXSIZE = 25MB,  
    FILEGROWTH = 5MB )


/*
	Apagando banco de dados
*/

DROP DATABASE SUCOS_VENDAS_01
