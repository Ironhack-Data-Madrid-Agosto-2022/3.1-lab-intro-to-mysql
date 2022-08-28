insert into Cars (VIn, Manufacturer, Model, Year, Color)
Values 
(2,	'RKXVNNIHLVVZOUB4M',	'Ford	Fusion',	2018,	'White'),
(3,	'HKNDGS7CU31E9Z7JW',	'Toyota	RAV4',	2018,	'Silver'),
(4,	'DAM41UDN3CHU2WVF6',	'Volvo	V60',	2019,	'Gray'),
(5,	'DAM41UDN3CHU2WVF6',	'Volvo	V60 Cross Country',	2019,	'Gray');

insert into Customers (Customer ID, Name, Phone number, Email, Address, City, State, Country, ZIP code)
Values 
(10001,	'Pablo Picasso',	'+34 636 17 63 82',		'Paseo de la Chopera  14 Madrid	Madrid	Spain',	28045),
(20001,	'Hedy Lamarr',	'+43 1 514442250',		'Weiglgasse 10	Viena Vienna	Austria',	1150),
(30001,	'Katherine Johnson',	'+1 202 358 0000',		'300 E St SW Washington  DC	Washington	United States',	20546);

insert into SalesPerson (Staff ID, Name, Store)
Values 
(00001,	'Petey Cruiser',	'Madrid')
(00002,	'Anna Sthesia',	'Barcelona')
(00003,	'Paul Molive',	'Berlin')
(00004,	'Gail Forcewind',	'Paris')
(00005,	'Paige Turner',	'Mimia')
(00006,	'Bob Frapples',	'Mexico City')
(00007,	'Walter Melon',	'Amsterdam')
(00008,	'Shonda Leer',	'São Paulo')

insert into Invoices (Invoice ID, Invoice Number, Date, Car, Customer, Salesperson)
Values 
(852399038,	22-08-2018,	0,	1,	3,)
(731166526,	31-12-2018,	3,	0,	5,)
(271135104,	22-01-2019,	2,	2,	7,)
