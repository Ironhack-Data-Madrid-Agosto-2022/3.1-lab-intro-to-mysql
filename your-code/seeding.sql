INSERT INTO customers (customerid, name, phone, email, adress, city, country, postalc)
VALUES ('1','Kartoffel','098098080','klaus@gmail.com', 'calle porto rico', 'Berlin','Germany', '34009');

INSERT INTO customers (customerid,name,phone,email, adress,city,country,postalc)
VALUES ('2','Juan','324234234','klaueer@gmail.com', 'calle porto rico', 'Madrid','Zimbawe', '99009');

INSERT INTO customers (customerid,name,phone,email, adress,city,country,postalc)
VALUES ('3','Peter','82342342000','Peter@gmail.com', 'calle porto rico', 'Madrid','Spain', '8899');

INSERT INTO customers (customerid,name,phone,email, adress,city,country,postalc)
VALUES ('4','Jack','88589933','Jack@gmail.com', 'plaza santa ana', 'Malaga','Spain', '34573');

INSERT INTO customers (customerid,name,phone,email, adress,city,country,postalc)
VALUES ('5','Friki','899990000','Friki@gmail.com', 'calle porto rico', 'Palma','Spain','87633');

INSERT INTO salespersons (salespersonid, name, store)
VALUES ('1','Chanqueter','Madrid');

INSERT INTO salespersons (salespersonid, name, store)
VALUES ('2','Peterpanic','Barca');

INSERT INTO salespersons (salespersonid, name, store)
VALUES ('3','OLe','Madrid');

INSERT INTO invoice (invoiceID, vin, car, customer, salespersons_salespersonid, cars_carid, customers_customerid)
VALUES ('0001','3K096I93428581DH','Fiat', '1', '1', '1','2');

INSERT INTO invoice (invoiceID, vin, car, customer, salespersons_salespersonid, cars_carid, customers_customerid)
VALUES ('0002','3K096I6768985NUP','Volkswagen','2','2', '2','1');

INSERT INTO invoice (invoiceID, vin, car, customer, salespersons_salespersonid, cars_carid, customers_customerid)
VALUES ('0003','3KI98581DHSNUPFG','Renault','3','3' ,'3','3');

