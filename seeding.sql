#set foreign_key_checks = 0

insert car (`idCar`, `Manufacturer`, `Model`, `Year`, `Color`, `VIN`)
values ('0' , 'Volkswagen', 'Tiguan', '2019', 'Blue', '3K096I98581DHSNUP');

insert car (`idCar`, `Manufacturer`, `Model`, `Year`, `Color`, `VIN`)
values ('1' , 'Peugeot', 'Rifter', '2019', 'Red', 'ZM8G7BEUQZ97IH46V');

insert car (`idCar`, `Manufacturer`, `Model`, `Year`, `Color`, `VIN`)
values ('2' , 'Ford', 'Fusion', '2018', 'White', 'RKXVNNIHLVVZOUB4M	');

insert car (`idCar`, `Manufacturer`, `Model`, `Year`, `Color`, `VIN`)
values ('3' , 'Toyota', 'RAV4', '2018', 'Silver', 'HKNDGS7CU31E9Z7JW');

insert car (`idCar`, `Manufacturer`, `Model`, `Year`, `Color`, `VIN`)
values ('4' , 'Volvo', 'V60', '2019', 'Gray', 'DAM41UDN3CHU2WVF6');

insert car (`idCar`, `Manufacturer`, `Model`, `Year`, `Color`, `VIN`)
values ('5' , 'Volvo', 'V60 Cross Country', '2019', 'Gray', 'DAM41UDN3CHU2WVF6');


insert customer (`idCustomer`, `Name`, `Phone`, `Address`, `City`, `State_Province`, `Country`, `Zip_Postal code`,`Email`, `idcostumer`)
values ('0', 'Pablo Picasso', '+34 636 17 63 82', 'Paseo de la Chopera, 14','Madrid', 'Madrid', 'Spain', '28045','-', '10001');

insert customer (`idCustomer`, `Name`, `Phone`, `Address`, `City`, `State_Province`, `Country`, `Zip_Postal code`,`Email`, `idcostumer`)
values ('1', 'Hedy Lamarr', '+43 1 514442250', 'Weiglgasse 10','Viena', 'Vienna', 'Austria', '1150','-', '20001');

insert customer (`idCustomer`, `Name`, `Phone`, `Address`, `City`, `State_Province`, `Country`, `Zip_Postal code`,`Email`, `idcostumer`)
values ('2', 'Katherine Johnson', '+1 202 358 0000', '300 E St SW','Washington, DC', 'Washington', 'United States', '20546', '-', '30001');

#set foreign_key_checks = 0;

insert invoices (`idInvoices`, `idinvoice`, `Date`, `Salespersons_idSalespersons`, `Car_idCar`, `Customer_idCustomer`)
values ('0', '852399038', '2018-08-22', '3','0', '1');

insert invoices (`idInvoices`, `idinvoice`, `Date`, `Salespersons_idSalespersons`, `Car_idCar`, `Customer_idCustomer`)
values ('1', '731166526', '2018-12-31', '5','3', '0');

insert invoices (`idInvoices`, `idinvoice`, `Date`, `Salespersons_idSalespersons`, `Car_idCar`, `Customer_idCustomer`)
values ('2', '271135104', '2019-01-22', '7','2', '2');


insert salespersons (`iDSalespersons`, `idsales`, `Name`, `Store`)
values ('0', '00001', 'Petey Cruiser', 'Madrid');

insert salespersons (`iDSalespersons`, `idsales`, `Name`, `Store`)
values ('1', '00002', 'Anna Sthesia', 'Barcelona');

insert salespersons (`iDSalespersons`, `idsales`, `Name`, `Store`)
values ('2', '00003', 'Paul Molive', 'Berlin');

insert salespersons (`iDSalespersons`, `idsales`, `Name`, `Store`)
values ('3', '00004', 'Gail Forcewind', 'Paris');

insert salespersons (`iDSalespersons`, `idsales`, `Name`, `Store`)
values ('4', '00005', 'Paige Turner', 'Mimia');

insert salespersons (`iDSalespersons`, `idsales`, `Name`, `Store`)
values ('5', '00006', 'Bob Frapples', 'Mexico City');

insert salespersons (`iDSalespersons`, `idsales`, `Name`, `Store`)
values ('6', '00007', 'Walter Melon', 'Amsterdam');

insert salespersons (`iDSalespersons`, `idsales`, `Name`, `Store`)
values ('7', '00008', 'Shonda Leer', 'São Paulo');