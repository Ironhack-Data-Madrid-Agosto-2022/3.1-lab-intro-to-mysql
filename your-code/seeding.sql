insert into cars (id_car,vin_number,model,color,year,manufacturer) values (0,'3K096I98581DHSNUP','Tiguan','Blue', '2019-01-01','Volkswagen')
INSERT INTO `labcoches`.`cars` (`id_car`, `vin_number`, `model`, `color`, `year`, `manufacturer`) VALUES ('1', 'ZM8G7BEUQZ97IH46V', 'Rifter', 'Red', '2019-01-01', 'Peugeot');
INSERT INTO `labcoches`.`cars` (`id_car`, `vin_number`, `model`, `color`, `year`, `manufacturer`) VALUES ('2', 'RKXVNNIHLVVZOUB4M', 'Fusion', 'White', '2018-01-01', 'Ford');
INSERT INTO `labcoches`.`cars` (`id_car`, `vin_number`, `model`, `color`, `year`, `manufacturer`) VALUES ('3', 'HKNDGS7CU31E9Z7JW', 'RAV4', 'Silver', '2018-01-01', 'Toyota');
INSERT INTO `labcoches`.`cars` (`id_car`, `vin_number`, `model`, `color`, `year`, `manufacturer`) VALUES ('4', 'DAM41UDN3CHU2WVF6', 'V60', 'Gray', '2019-01-01', 'Volvo');
INSERT INTO `labcoches`.`cars` (`id_car`, `vin_number`, `model`, `color`, `year`, `manufacturer`) VALUES ('5', 'DAM41UDN3CHU2WVF6', 'V60 Cross Country', 'Gray', '2019-01-01', 'Volvo');


INSERT INTO `labcoches`.`customers` (`id_customer`, `id_number`, `name`, `phone_number`, `country`, `city`, `address`, `province`, `postal_code`) VALUES ('0', '10001', 'Pablo Picasso', '+34 636 17 63 82', 'Spain', 'Madrid', 'Paseo de la Chopera, 14', 'Madrid', '28045');
INSERT INTO `labcoches`.`customers` (`id_customer`, `id_number`, `name`, `phone_number`, `country`, `city`, `address`, `province`, `postal_code`) VALUES ('1', '20001', 'Hedy Lamarr', '+43 1 514442250', 'Austria', 'Viena', 'Weiglgasse 10', 'Vienna', '1150');
INSERT INTO `labcoches`.`customers` (`id_customer`, `id_number`, `name`, `phone_number`, `country`, `city`, `address`, `province`, `postal_code`) VALUES ('2', '30001', 'Katherine Johnson', '+1 202 358 0000', 'United States', 'Washington, DC', '300 E St SW', 'Washington', '20546');


INSERT INTO `labcoches`.`salesperson` (`id_staff`, `name`, `store`) VALUES ('00001', 'Petey Cruiser', 'Madrid');
INSERT INTO `labcoches`.`salesperson` (`id_staff`, `name`, `store`) VALUES ('00002', 'Anna Sthesia', 'Barcelona');
INSERT INTO `labcoches`.`salesperson` (`id_staff`, `name`, `store`) VALUES ('00003', 'Paul Molive', 'Berlin');
INSERT INTO `labcoches`.`salesperson` (`id_staff`, `name`, `store`) VALUES ('00004', 'Gail Forcewind', 'Paris');
INSERT INTO `labcoches`.`salesperson` (`id_staff`, `name`, `store`) VALUES ('00005', 'Paige Turner', 'Mimia');
INSERT INTO `labcoches`.`salesperson` (`id_staff`, `name`, `store`) VALUES ('00006', 'Bob Frapples', 'Mexico City');
INSERT INTO `labcoches`.`salesperson` (`id_staff`, `name`, `store`) VALUES ('00007', 'Walter Melon', 'Amsterdam');
INSERT INTO `labcoches`.`salesperson` (`id_staff`, `name`, `store`) VALUES ('00008', 'Shonda Leer', 'São Paulo');


INSERT INTO `labcoches`.`invoice` (`id_invoice`, `invoice_number`, `date`, `cars_id_car`, `customers_id_customer`, `salesperson_id_staff`) VALUES ('0', '852399038', '2018-08-22', '0', '1', '3');
INSERT INTO `labcoches`.`invoice` (`id_invoice`, `invoice_number`, `date`, `cars_id_car`, `customers_id_customer`, `salesperson_id_staff`) VALUES ('1', '731166526', '2018-12-31', '3', '0', '5');
INSERT INTO `labcoches`.`invoice` (`id_invoice`, `invoice_number`, `date`, `cars_id_car`, `customers_id_customer`, `salesperson_id_staff`) VALUES ('2', '271135104', '2019-01-22', '2', '2', '7');