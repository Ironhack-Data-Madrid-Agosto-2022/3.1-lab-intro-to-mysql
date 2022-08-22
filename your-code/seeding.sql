insert into cars (id, vin_number, manufacturer, model, year_model, color)
values (0, '3K096I98581DHSNUP',  'Volkswagen', 'Tiguan', 2019, 'Blue');
insert into cars (id, vin_number, manufacturer, model, year_model, color)
values (1, 'ZM8G7BEUQZ97IH46V',  'Peugeot', 'Rifter', 2019, 'Red');
insert into cars (id, vin_number, manufacturer, model, year_model, color)
values (2, 'RKXVNNIHLVVZOUB4M',  'Ford', 'Fusion', 2018, 'White');
insert into cars (id, vin_number, manufacturer, model, year_model, color)
values (3, 'HKNDGS7CU31E9Z7JW',  'Toyota', 'RAV4', 2018, 'Silver');
insert into cars (id, vin_number, manufacturer, model, year_model, color)
values (4, 'DAM41UDN3CHU2WVF6',  'Volvo', 'V60', 2019, 'Gray');
insert into cars (id, vin_number, manufacturer, model, year_model, color)
values (5, 'DAM41UDN3CHU2WVF6',  'Volvo', 'V60 Cross Country', 2019, 'Gray');

insert into customers (id_customers, name, phone_number, adress, city, province, country, postal_code)
values (10001, 'Pablo Picasso',  '+34 636176382', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045');
insert into customers (id_customers, name, phone_number, adress, city, province, country, postal_code)
values (20001, 'Hedy Lamarr',  '+43 1514442250', 'Weiglgasse 10', 'Vienna', 'Vienna', 'Austria', '1150');
insert into customers (id_customers, name, phone_number, adress, city, province, country, postal_code)
values (30001, 'Katherine Johnson',  '+1 2023580000', '300 E St SW', 'Washington, DC', 'Washington', 'United States', '20546');

insert into salespersons (id_staff, name_staff, store)
values (00001, 'Petey Cruiser',  'Madrid');
insert into salespersons (id_staff, name_staff, store)
values (00002, 'Anna Sthesia',  'Barcelona');
insert into salespersons (id_staff, name_staff, store)
values (00003, 'Paul Molive',  'Berlin');
insert into salespersons (id_staff, name_staff, store)
values (00004, 'Gail Forcewind',  'Paris');
insert into salespersons (id_staff, name_staff, store)
values (00005, 'Paige Turner',  'Mimia');
insert into salespersons (id_staff, name_staff, store)
values (00006, 'Bob Frapples',  'Mexico City');
insert into salespersons (id_staff, name_staff, store)
values (00007, 'Walter Melon',  'Amsterdam');
insert into salespersons (id_staff, name_staff, store)
values (00008, 'Shonda Leer',  'Sao Paulo');

insert into invoices (id_invoice, invoice_number, date_number, Customers_id_customers, Cars_id1, Salespersons_id_staff)
values (0, '852399038',  '2018-08-22', 20001, 0, 00004 );
insert into invoices (id_invoice, invoice_number, date_number, Customers_id_customers, Cars_id1, Salespersons_id_staff)
values (1, '731166526',  '2018-12-31', 10001, 3, 00006 );
insert into invoices (id_invoice, invoice_number, date_number, Customers_id_customers, Cars_id1, Salespersons_id_staff)
values (2, '271135104',  '2019-01-22', 30001, 2, 00008 );


