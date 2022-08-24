
INSERT INTO cars (VIN, marca, model, color,ID) VALUES('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 'Blue', '1');

INSERT INTO cars (VIN, marca, model, color,ID) VALUES('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 'Red', '2');

INSERT INTO cars (VIN, marca, model, color,ID) VALUES('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 'White', '3');

INSERT INTO cars (VIN, marca, model, color,ID) VALUES('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 'Silver', '4');

INSERT INTO cars (VIN, marca, model, color,ID) VALUES('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 'Grey', '5');

INSERT INTO cars (VIN, marca, model, color,ID) VALUES('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 'Grey', '6');


INSERT INTO customer(cID, name, phone, email, address, city, zip) VALUES('10001', 'Pablo Picasso', '+34 636 17 63 82', '', 'Paseo Chopera, 14' ,'Madrid', '28045');

INSERT INTO customer(cID, name, phone, email, address, city, zip) VALUES('20001', 'Hedy Lamarr', '+43 1 514442250', '', 'Weiglgasse 10',' Viena',  '1150');

INSERT INTO customer(cID, name, phone, email, address, city, zip) VALUES('30001', 'Katherine Johnson', '+1 202 358 0000', '', '300 E St SW', 'Washington', '20546');

INSERT INTO salesperson(sID, name, store) VALUES('00001','Petey Cruiser','Madrid');

INSERT INTO salesperson(sID, name, store) VALUES('00002','Anna Sthesia','Barcelona');

INSERT INTO salesperson(sID, name, store) VALUES('00003','Paul Molive','Berlin');

INSERT INTO salesperson(sID, name, store) VALUES ('00004','Gail Forcewind','Paris');

INSERT INTO salesperson(sID, name, store) VALUES ('00005','Paige Turner','Mimia');

INSERT INTO salesperson(sID, name, store) VALUES ('00006','Bob Frapples','Mexico City');

INSERT INTO salesperson(sID, name, store) VALUES ('00007','Walter Melon','Amsterdam');

INSERT INTO salesperson(sID, name, store) VALUES ('00007','Walter Melon','Amsterdam');

INSERT INTO salesperson(sID, name, store) VALUES ('00008','Shonda Leer','São Paulo');

INSERT INTO invoices(iID, name, date,salesperson_sID, customer_cID, cars_ID) VALUES('0','852399038','2018-08-22','00001','10001','5');

INSERT INTO invoices(iID, name, date,salesperson_sID, customer_cID, cars_ID) VALUES('1','731166526','2018-12-31','00004','20001','1');

INSERT INTO invoices(iID, name, date,salesperson_sID, customer_cID, cars_ID) VALUES('2','271135104','2019-01-22','00003','30001','2');

