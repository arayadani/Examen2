create database VentasUh

create table Cajeros
(
codigo int identity(100,1),
nombre varchar(100)NOT NULL,
apellido varchar(50)NOT NULL,
CONSTRAINT PK_codigo PRIMARY KEY (codigo),

)


create table Productos 
(
code int identity(10,5),
name nvarchar(100)NOT NULL,
precio float default 0
CONSTRAINT code primary Key (code),

)
create table Maquina_Registradoras
(
Codigos int identity(100,5),
pisos int,

CONSTRAINT Codigos PRIMARY KEY (Codigos),

)

 
create table Venta
(
	Producto int,
	Maquina int,
	Cajero int,
	Fecha Datetime Default GetDate(),
	Codigo_Venta int identity,
	CONSTRAINT FK_CajeroVen FOREIGN KEY (Cajero) REFERENCES Cajeros,
	CONSTRAINT FK_MaquinaVen FOREIGN KEY (Maquina) REFERENCES Productos,

)



INSERT INTO Cajeros values (100,'daniela','araya'),(200,'jholy','jimenez')
select * from Cajeros

INSERT INTO Productos values ('macarrones',150),('queso',250),('pizza',350)

select * from Productos
select * from Maquina_Registradoras
INSERT INTO Maquina_registradoras values (123),(456)



update Productos set name='lasagna' where name='macarrones'
update Productos set precio =1500 where precio=150

INSERT INTO Venta values (1,1,1)

select Cajeros.nombre,Productos.name,Maquina_Registradoras.Codigos
from Venta
inner join Cajeros on Cajeros.codigo=Venta.Cajero
inner join Productos on Productos.code=Venta.Producto
inner join Maquina_Registradoras on Maquina_Registradoras.Codigos=Venta.Maquina


