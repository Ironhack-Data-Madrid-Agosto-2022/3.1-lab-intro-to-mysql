CREATE TABLE if not exists Facturas   
(Id_factura SMALLINT primary key,      
Num_Factura VARCHAR(10) not null,      
Fecha DATE not null,      
Id_coche SMALLINT,      
Id_cliente SMALLINT,   
Id_vendedor SMALLINT)
