if DB_ID('tienda2025') IS NULL
create database tienda2025
go

use tienda2025
go

create table Pedido(
	id_pedido int IDENTITY(1,1) PRIMARY KEY ,
	nombre_pedido varchar(50),
	cantidad int,
	precio decimal
)
go

create or alter procedure pa_listar_pedido
as
	select * from Pedido
go


insert into Pedido (nombre_pedido, cantidad, precio) VALUES 
('Coca Cola', 30, 13),
('Fideos Cabello de angel', 40, 10)
GO

exec pa_listar_pedido
go