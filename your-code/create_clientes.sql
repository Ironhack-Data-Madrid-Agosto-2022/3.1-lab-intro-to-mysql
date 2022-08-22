CREATE TABLE if not exists Clientes   
(Id_cliente SMALLINT primary key,      
Nombre_cliente VARCHAR(20) not null,      
Telefono CHAR(9) not null,      
Email VARCHAR(50),      
Direccion VARCHAR(40),   
Ciudad VARCHAR(20),     
Provincia VARCHAR(20) not null,     
Pais VARCHAR(20) not null,     
CP CHAR(5))
