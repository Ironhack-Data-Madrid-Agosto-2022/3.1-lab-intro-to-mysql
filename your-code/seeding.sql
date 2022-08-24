SET foreign_key_checks = 0;
INSERT INTO cars (ID,VIN,Manufacturer,Model,Year,Color)
VALUES('0','ZM8G7BEUQZ97IH46V','Peugeot','Rifter',2019,'Red');
INSERT INTO cars (ID,VIN,Manufacturer,Model,Year,Color)
VALUES ('1','RKXVNNIHLVVZOUB4M','Ford','Fusion',2018,'White');
INSERT INTO cars (ID,VIN,Manufacturer,Model,Year,Color)
VALUES ('2','HKNDGS7CU31E9Z7JW','Toyota','RAV4',2018,'Silver');
INSERT INTO cars (ID,VIN,Manufacturer,Model,Year,Color)
VALUES ('3','DAM41UDN3CHU2WVF6','Volvo','V60',2019,'Gray');
INSERT INTO cars (ID,VIN,Manufacturer,Model,Year,Color)
VALUES ('4','DAM41UDN3CHU2WVF6','Volvo','V60 Cross',2019,'Gray');
INSERT INTO cars (ID,VIN,Manufacturer,Model,Year,Color)
VALUES ('5','3K096I98581DHSNUP','Volkswagen','Tiguan','2019','Blue');
INSERT INTO customers (customer ID,name,phone number,email,address,city,state/province,country,zip/postal code)
VALUES (10001,"Pablo Picasso","+34 636 17 63 82",'-',"Paseo de la Chopera 14",'Madrid','Madrid','Spain',28045);
INSERT INTO customers (customer ID,name,phone number,email,address,city,state/province,country,zip/postal code)
VALUES (20001,'Hedy Lamarr','+43 1 514442250','-','Weiglgasse 10','Viena','Vienna','Austria',1150);
INSERT INTO customers (customer ID,name,phone number,email,address,city,state/province,country,zip/postal code)
VALUES (30001,'Katherine Johnson','+1 202 358 0000','-','300 E St SW','Washington DC','Washington','USA',20546)
INSERT INTO salespersons (staff ID, name, store)
VALUES (1,"Petey Cruiser","Madrid");
INSERT INTO salespersons (staff ID, name, store)
VALUES (2,"Anna Sthesia","Barcelona");
INSERT INTO salespersons (staff ID, name, store)
VALUES (3,"Paul Molive","Berlin");
INSERT INTO salespersons (staff ID, name, store)
VALUES (4,"Gail Forcewind","Paris");
INSERT INTO salespersons (staff ID, name, store)
VALUES (5,"Paige Turner","Mimia");
INSERT INTO salespersons (staff ID, name, store)
VALUES (6,"Bob Frapples","Mexico City");
INSERT INTO salespersons (staff ID, name, store)
VALUES (7,"Walter Melon","Amsterdam");
INSERT INTO salespersons (staff ID, name, store)
VALUES (8,"Shonda Leer","São Paulo");
INSERT INTO invoices (invoice ID,invoice number,date,Salespersons_staff ID,Customers_customer ID,cars_ID)
VALUES (0,852399038,'2018-08-22',3,1,0);
INSERT INTO invoices (invoice ID,invoice number,date,Salespersons_staff ID,Customers_customer ID,cars_ID)
VALUES (1,731166526	,'2018-12-31',5,0,3);
INSERT INTO invoices (invoice ID,invoice number,date,Salespersons_staff ID,Customers_customer ID,cars_ID)
VALUES (2,271135104,'2019-01-22',7,2,2);