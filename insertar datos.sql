insert into cars (id, vin, manufacture, model)
values ("0", "3K096I98581DHSNUP", "volkswagen", "Tiguan");
insert into cars (id, vin, manufacture, model)
values ("1", "ZM8G7BEUQZ97IH46V", "Peugeot", "Rifter");
insert into cars (id, vin, manufacture, model)
values ("2", "RKXVNNIHLVVZOUB4M", "Ford", "Fusion");
insert into cars (id, vin, manufacture, model)
values ("3", "HKNDGS7CU31E9Z7JW", "Toyota", "RAV4");
insert into cars (id, vin, manufacture, model)
values ("4", "DAM41UDN3CHU2WVF6", "Volvo", "V60");
insert into cars (id, vin, manufacture, model)
values ("5", "DAM41UDN3CHU2WVH6", "Volvo", "V60 Cross Country");

insert into Customer (customer_ID, name, phone, email, address, city, state, country)
values ("10001", "Pablo Picasso", "+34 636 17 63 82", "-", "Paseo de la Chopera, 14", "Madrid", "Madrid", "España");
insert into Customer (customer_ID, name, phone, email, address, city, state, country)
values ("20001", "Hedy Lamarr", "+43 1 514442250", "-", "Weiglgasse 10", "Viena", "Viena", "Austria");
insert into Customer (customer_ID, name, phone, email, address, city, state, country)
values ("30001", "Katherine Johnson", "+1 202 358 0000", "_", "300 E St SW", "Washington DC", "Washington", "United States");

insert into salesperson (staff_ID, name, store)
values ("00001", "Petey Cruiser", "Madrid");
insert into salesperson (staff_ID, name, store)
values ("00002", "Anna Sthesia", "barcelona");
insert into salesperson (staff_ID, name, store)
values ("00003", "Paul Molive", "Berlin");
insert into salesperson (staff_ID, name, store)
values ("00004", "Gail Forcewind", "paris");
insert into salesperson (staff_ID, name, store)
values ("00005", "Paige Turner", "mimia");
insert into salesperson (staff_ID, name, store)
values ("00006", "Bob Frapples", "Mexico City");
insert into salesperson (staff_ID, name, store)
values ("00007", "Walter Melon", "Amsterdam");
insert into salesperson (staff_ID, name, store)
values ("00008", "Shonda Leer", "sao Paulo");

insert into invoice(invoice_number, date, cars_vin, Customer_customer_ID, salesperson_staff_ID)
values ("852399038", "22-08-2018", "3K096I98581DHSNUP", "10001", "00003");
insert into invoice(invoice_number, date, cars_vin, Customer_customer_ID, salesperson_staff_ID)
values ("731166526", "31-12-2018", "HKNDGS7CU31E9Z7JW", "10001", "00005");
insert into invoice(invoice_number, date, cars_vin, Customer_customer_ID, salesperson_staff_ID)
values ("271135104", "22-01-2019", "RKXVNNIHLVVZOUB4M", "20001", "00007");
