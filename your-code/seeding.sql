insert into Coches (id_coche, VIN, Modelo, Fabricante, Color, Año)
values (0, '3K096I98581DHSNUP', 'tiguan', 'volkswagen', 'Azul', '2019');

insert into Coches (id_coche, VIN, Modelo, Fabricante, Color, Año)
values (1, 'ZM8G7BEUQZ97IH46V', 'Rifter', 'Peugeot', 'Red', '2019');

insert into Coches (id_coche, VIN, Modelo, Fabricante, Color, Año)
values (2, 'RKXVNNIHLVVZOUB4M', 'Fusion', 'Ford', 'White', '2018');


insert into Coches (id_coche, VIN, Modelo, Fabricante, Color, Año)
values (3, 'HKNDGS7CU31E9Z7JW', 'RAV4', 'Toyota', 'Silver', '2018');

insert into Coches (id_coche, VIN, Modelo, Fabricante, Color, Año)
values (4, 'DAM41UDN3CHU2WVF6', 'V60', 'Volvo', 'Grey', '2019');

insert into Coches (id_coche, VIN, Modelo, Fabricante, Color, Año)
values (5, 'DAM41UDN3CHU2WVF6', 'V60 Cross Country', 'Volvo', 'Grey', '2019');



insert into Clientes (id_Cliente, Nombre, Num_Telf, `E-mail`, Dirección, Ciudad, `Estado/Provincia`, País, CP)
values (10001, 'Pablo Picasso', '+34 636 17 63 82', '-', 'Paseo de la Chopera', 'Madrid', 'Madrid', 'Spain', '28045');

insert into Clientes (id_Cliente, Nombre, Num_Telf, `E-mail`, Dirección, Ciudad, `Estado/Provincia`, País, CP)
values (20001, 'Hedy Lamarr', '+43 1 514442250', '-', 'Weiglgasse 10', 'Viena', 'Vienna', 'Austria', '1150');

insert into Clientes (id_Cliente, Nombre, Num_Telf, `E-mail`, Dirección, Ciudad, `Estado/Provincia`, País, CP)
values (30001, 'Katherine Johnson', '+1 202 358 0000', '-', '300 E St SW', 'Washington, DC', 'Washington', 'United States', '20546');



insert into Vendedores (id_Personal, Nombre, Tienda)
values (00001, 'Petey Cruiser', 'Madrid');

insert into Vendedores (id_Personal, Nombre, Tienda)
values (00002, 'Anna Sthesia', 'Barcelona');

insert into Vendedores (id_Personal, Nombre, Tienda)
values (00003, 'Paul Molive', 'Berlin');

insert into Vendedores (id_Personal, Nombre, Tienda)
values (00004, 'Gail Forcewind', 'Paris');

insert into Vendedores (id_Personal, Nombre, Tienda)
values (00005, 'Paige Turner', 'Mimia');

insert into Vendedores (id_Personal, Nombre, Tienda)
values (00006, 'Bob Frapples', 'Mexico City');

insert into Vendedores (id_Personal, Nombre, Tienda)
values (00007, 'Walter Melon', 'Amsterdam');

insert into Vendedores (id_Personal, Nombre, Tienda)
values (00008, 'Shonda Leer', 'São Paulo');

insert into INVOICES (id_Factura, Num_Factura, Fecha, id_Personal, Coches_id_coche, id_Cliente)
values (0, '852399038', '22-08-2018', 3, 0, 1);

insert into INVOICES (id_Factura, Num_Factura, Fecha, id_Personal, Coches_id_coche, id_Cliente)
values (1, '731166526', '31-12-2018', 3, 0, 5);

insert into INVOICES (id_Factura, Num_Factura, Fecha, id_Personal, Coches_id_coche, id_Cliente)
values (1, '271135104', '22-01-2019', 2, 2, 7);