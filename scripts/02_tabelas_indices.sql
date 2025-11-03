/************************************************************
 Autor: Landry Duailibe

 Hands On: Tabelas e Índices
*************************************************************/
use master
go

CREATE DATABASE Aula
go
USE Aula
go

/***********************
 Tabela Cliente
************************/
DROP TABLE IF exists dbo.Cliente
go
CREATE TABLE dbo.Cliente (
ClienteID int NOT NULL CONSTRAINT pk_Cliente PRIMARY KEY,
Nome varchar(152) NOT NULL,
Tipo char(2) NOT NULL)
go

ALTER TABLE dbo.Cliente ADD CONSTRAINT unq_Cliente_Nome UNIQUE (Nome)
go

CREATE NONCLUSTERED INDEX ix_Cliente_Tipo ON dbo.Cliente (Tipo)
go

EXEC sp_helpindex 'dbo.Cliente'

-- Importando dados do banco AdventureWorks
INSERT dbo.Cliente (ClienteID,Nome,Tipo)

SELECT c.CustomerID as ClienteID,FirstName + ISNULL(' ' + MiddleName,'') + ISNULL(' ' + Lastname,'') as Nome,PersonType as Tipo
FROM AdventureWorks.Sales.Customer c 
JOIN AdventureWorks.Person.Person p ON p.BusinessEntityID = c.PersonID
WHERE FirstName = 'Aaron'
go

SELECT * FROM dbo.Cliente

INSERT dbo.Cliente (ClienteID,Nome,Tipo) VALUES (11739,'Landry Duailibe','IN')
/*
Msg 2627, Level 14, State 1, Line 44
Violation of PRIMARY KEY constraint 'pk_Cliente'. Cannot insert duplicate key in object 'dbo.Cliente'. The duplicate key value is (11739).
*/

INSERT dbo.Cliente (ClienteID,Nome,Tipo) VALUES (63000,'Aaron L King','IN')
/*
Msg 2627, Level 14, State 1, Line 50
Violation of UNIQUE KEY constraint 'unq_Cliente_Nome'. Cannot insert duplicate key in object 'dbo.Cliente'. The duplicate key value is (Aaron L King).
*/


DROP TABLE IF exists dbo.Venda
go
CREATE TABLE dbo.Venda (
VendaID int NOT NULL CONSTRAINT pk_Venda PRIMARY KEY,
DataVenda datetime NOT NULL,
ClienteID int NULL,
ValorTotal decimal(19,4) NOT NULL)
go

ALTER TABLE dbo.Venda ADD CONSTRAINT fk_Venda_Cliente
FOREIGN KEY (ClienteID) REFERENCES dbo.Cliente (ClienteID)
go

INSERT dbo.Venda (VendaID,DataVenda,ClienteID,ValorTotal)

SELECT SalesOrderID as VendaID, OrderDate as DataVenda, CustomerID as ClienteID, TotalDue as ValorTotal
FROM AdventureWorks.Sales.SalesOrderHeader a
WHERE exists (SELECT * FROM dbo.Cliente b WHERE b.ClienteID = a.CustomerID)
go

SELECT * FROM dbo.Cliente WHERE ClienteID = 27663
SELECT * FROM dbo.Venda WHERE ClienteID = 27663

SELECT getdate()

INSERT dbo.Venda (VendaID,DataVenda,ClienteID,ValorTotal)
VALUES (70925,getdate(),12050,5000)
/*
Msg 2627, Level 14, State 1, Line 82
Violation of PRIMARY KEY constraint 'pk_Venda'. Cannot insert duplicate key in object 'dbo.Venda'. The duplicate key value is (70925).
*/

INSERT dbo.Venda (VendaID,DataVenda,ClienteID,ValorTotal)
VALUES (91000,getdate(),10,5000)
/*
Msg 547, Level 16, State 0, Line 89
The INSERT statement conflicted with the FOREIGN KEY constraint "fk_Venda_Cliente". The conflict occurred in database "Aula", table "dbo.Cliente", column 'ClienteID'.
*/

/***************************
 Exclui Tabelas
****************************/
DROP TABLE IF exists dbo.Venda
go
DROP TABLE IF exists dbo.Cliente
go
