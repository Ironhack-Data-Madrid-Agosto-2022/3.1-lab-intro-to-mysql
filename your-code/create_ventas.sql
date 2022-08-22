CREATE TABLE if not exists Ventas_coches   
(Id_coche SMALLINT primary key,      
VIN char(17) not null,      
Fabricante VARCHAR(20) not null,      
Modelo VARCHAR(40) not null,      
Año YEAR not null,          
Color VARCHAR(20) not null)
