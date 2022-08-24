
UPDATE Customers
	set email = 'ppicasso@gmail.com'
    WHERE cus_name = 'Pablo Picasso';
    
UPDATE Customers
	set email = 'lamarr_hd@hollywood.com'
    WHERE cus_name = 'Hedy Lamarr';

UPDATE Customers
	set email = 'ppicasso@gmail.com'
    WHERE cus_name = 'Pablo Picasso';
    
/*
    Error Code: 1175. You are using safe update mode and you tried to update a table without a WHERE that uses a KEY column.
    To disable safe mode, toggle the option in Preferences -> SQL Editor and reconnect.
    
    MySQLWorkbench > Preferences... > SQL Editor > Safe Updates (rejects UPDATEs and DELETEs with no restrictions)
*/
