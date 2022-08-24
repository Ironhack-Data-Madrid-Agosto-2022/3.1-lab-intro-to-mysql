INSERT INTO cars (id, car_VIN, manufacturer, model, year, color)
VALUES (0, "3K096I98581DHSNUP","Volkswagen", "Tiguan", 2019, "Blue");
INSERT INTO cars (id, car_VIN, manufacturer, model, year, color)
VALUES (1, "ZM8G7BEUQZ97IH46V","Peugeot", "Rifter", 2019, "Red");
INSERT INTO cars (id, car_VIN, manufacturer, model, year, color)
VALUES (2, "RKXVNNIHLVVZOUB4M","Ford", "Fusion", 2018, "White");
INSERT INTO cars (id, car_VIN, manufacturer, model, year, color)
VALUES (3, "HKNDGS7CU31E9Z7JW","Toyota", "RAV4", 2018, "Silver");
INSERT INTO cars (id, car_VIN, manufacturer, model, year, color)
VALUES (4, "DAM41UDN3CHU2WVF6","Volvo", "V60", 2019, "Gray");
INSERT INTO cars (id, car_VIN, manufacturer, model, year, color)
VALUES (5, "DAM41UDN3CHU2WVF6","Volvo", "V60 Cross Country", 2019,"Gray");
-- seeding customers\
INSERT INTO Customers (id, cus_id, cus_name, phone_number, email, address, city,state_province, country, zip_postal_code)
VALUES (0, "10001", "Pablo Picasso","+34636176382", "-", "Paseo de la Chopera, 14", "Madrid", "Madrid", "Spain", 28045);
INSERT INTO Customers (id, cus_id, cus_name, phone_number, email, address, city,state_province, country, zip_postal_code)
VALUES (1, "20001", "Hedy Lamarr","+431514442250","-","Weiglgasse 10", "Viena", "Vienna", "Austria", 1150);
INSERT INTO Customers (id, cus_id, cus_name, phone_number, email, address, city,state_province, country, zip_postal_code)
VALUES (2, "30001", "Katherine Johnson","+12023580000","-","300 E St SW", "Washington, DC", "Washington", "United States", 20546);
-- seeding salespersons\
INSERT INTO Salesperson (id,staff_id, staff_name, store)
VALUES (0, "00001","Petey Cruiser","Madrid");
INSERT INTO Salesperson (id,staff_id, staff_name, store)
VALUES (1, "00002","Anna Sthesia","Barcelona");
INSERT INTO Salesperson (id,staff_id, staff_name, store)
VALUES (2, "00003","Paul Molive", "Berlin");
INSERT INTO Salesperson (id,staff_id, staff_name, store)
VALUES (3, "00004","Gail Forcewind","Paris");
INSERT INTO Salesperson (id,staff_id, staff_name, store)
VALUES (4, "00005","Paige Turner","Miami");
INSERT INTO Salesperson (id,staff_id, staff_name, store)
VALUES (5, "00006","Bob Frapples","Mexico City");
INSERT INTO Salesperson (id,staff_id, staff_name, store)
VALUES (6, "00007","Walter Melon","Amsterdam");
INSERT INTO Salesperson (id,staff_id, staff_name, store)
VALUES (7, "00008","Shonda Leer","S\'e3o Paulo");
-- seeding invoices\
INSERT INTO Invoices (id, invoice_num, invoice_date, cars_id, cus_id, staff_id)
VALUES (0, 852399038 , "2018-08-22", 0, 1, 3);
INSERT INTO Invoices (id, invoice_num, invoice_date, cars_id, cus_id, staff_id)
VALUES (1, 731166526 , "2018-12-31", 3, 0, 5);
INSERT INTO Invoices (id, invoice_num, invoice_date, cars_id, cus_id, staff_id)
VALUES (2, 271135104 , "2019-01-22", 2, 2, 7);