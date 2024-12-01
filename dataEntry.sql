-- ALL EMPLOYEES ENTERED ********	
INSERT INTO employees
	(employeeID, firstName, lastName, 
    gender, title, streetAddress, 
    city, state, zipCode, 
    phoneNumber, reportsTo)
	VALUES('1001', 'Raymond', 'Boyce', 'M', 'VP of Sales', 
    '1 Arrowhead Drive', 'Kansas City', 'MO', '64129', 
    '8160993120');

INSERT INTO employees
	(employeeID, firstName, lastName, 
    gender, title, streetAddress, 
    city, state, zipCode, 
    phoneNumber, reportsTo)
    VALUES ('1002', 'Charles', 'Bachman', 'M', 'Salesperson', 
    '1701 Bryant Street', 'Denver', 'CO', '80204',
    '7200202583', '1001');

INSERT INTO employees
	(employeeID, firstName, lastName, 
    gender, title, streetAddress, 
    city, state, zipCode, 
    phoneNumber, reportsTo)
    VALUES('1003', 'Peter', 'Chen', 'M', 'Salesperson', 
    '1111 South Fibueroa St', 'Los Angeles', 'CA', '90015',
    '2130037427', '1001');

INSERT INTO employees
	(employeeID, firstName, lastName, 
    gender, title, streetAddress, 
    city, state, zipCode, 
    phoneNumber, reportsTo)
    VALUES ('1004', 'Edgar', 'Codd', 'M', 'Salesperson',
    '1060 West Addison', 'Chicago', 'IL', '60613', 
    '7730011918', '1001');

INSERT INTO employees
	(employeeID, firstName, lastName, 
    gender, title, streetAddress, 
    city, state, zipCode, 
    phoneNumber, reportsTo)
    VALUES ('1005', 'Larry', 'Ellison', 'M', 'Salesperson',
    '2804 Opryland Drive', 'Nashville', 'TN', '37214', 
    '615000000', '1001');

INSERT INTO employees
	(employeeID, firstName, lastName, 
    gender, title, streetAddress, 
    city, state, zipCode, 
    phoneNumber, reportsTo)
    VALUES ('1006', 'Ida', 'Lovelace', 'F', 'Salesperson',
    '1265 Lombardi Avenue', 'Green Bay', 'WI', '54304', 
    '9200103232', '1001');

INSERT INTO employees
	(employeeID, firstName, lastName, 
    gender, title, streetAddress, 
    city, state, zipCode, 
    phoneNumber, reportsTo)
    VALUES ('1007', 'Al', 'Tuple', 'M', 'Salesperson',
    '1651 Naismith Drive', 'Lawrence', 'KS', '66044',
    '9130123344', '1001');

-- PRODUCTS DATA ENTRY*******

INSERT INTO products
	(partID, productDescription, priceEach)
    VALUES ('112', '5 1/4 Floppy Disks', '0.75');

INSERT INTO products
	(partID, productDescription, priceEach)
    VALUES('113', '3 1/2 Disks', '1.25');

INSERT INTO products
	(partID, productDescription, priceEach)
    VALUES('221', 'Phone Support Hourly', '75.00');

INSERT INTO products
	(partID, productDescription, priceEach)
    VALUES('222', 'Phone Support (Family) Hourly', '225.00');

INSERT INTO products
	(partID, productDescription, priceEach)
    VALUES('337', 'User Encouragement Device (Electric)', '74.00');

INSERT INTO products
	(partID, productDescription, priceEach)
    VALUES('338', 'User Encouragement Device - Club Style (Black)', '52.00');

INSERT INTO products
	(partID, productDescription, priceEach)
    VALUES('339', 'User Encouragement Device - Club Style (Red)', '60.00');

INSERT INTO products
	(partID, productDescription, priceEach)
    VALUES('443', 'Really Fine User Manual', '327.00');
    
INSERT INTO products
	(partID, productDescription, priceEach)
    VALUES('445', 'Motivational Poster (Framed)', '17.00');

INSERT INTO products
	(partID, productDescription, priceEach)
    VALUES('1007', 'User Tolerance Assistance', '3.14');

-- ORDERS DATA ENTRY********

INSERT INTO orders
	(orderID, customerID, orderDate, contactID, employeeID, 
    paymentDueDate, projectedDeliveryDate, methodID)
    VALUES('1001', '1122', '2024-11-02', '1007', '1003', 
    '2024-12-02', '2024-11-16', '1001');

INSERT INTO orders
	(orderID, customerID, orderDate, contactID, employeeID, 
    paymentDueDate, projectedDeliveryDate, methodID)
    VALUES('1002', '2376', '2024-11-02', '1041', '1007',
    '2024-12-02', 'EMPTY', 'EMPTY'); -- check

INSERT INTO orders
	(orderID, customerID, orderDate, contactID, employeeID, 
    paymentDueDate, projectedDeliveryDate, methodID)
    VALUES('1003', '1835', '2024-11-03', '1029', '1007', 
    '2024-12-02', '2024-11-17', '1002');

INSERT INTO orders
	(orderID, customerID, orderDate, contactID, employeeID, 
    paymentDueDate, projectedDeliveryDate, methodID)
    VALUES('1004', '1375', '2024-11-03', '1024', '1007',
    '2024-12-03', '2024-11-17', '1003');

INSERT INTO orders
	(orderID, customerID, orderDate, contactID, employeeID, 
    paymentDueDate, projectedDeliveryDate, methodID)
    VALUES('1005', '2374', '2024-11-09', '1045', '1007', 
    '2024-12-09', '2024-11-23', '1004');
    
INSERT INTO orders
	(orderID, customerID, orderDate, contactID, employeeID, 
    paymentDueDate, projectedDeliveryDate, methodID)
    VALUES('1006', '3724', '2024-11-18', '1032', '1007', 
    '2024-12-18', '2024-11-30', 'EMPTY');

INSERT INTO orders
	(orderID, customerID, orderDate, contactID, employeeID, 
    paymentDueDate, projectedDeliveryDate, methodID)
    VALUES('1007', '1728', '2024-11-20', '1064', '1004', 
    '2024-12-20', 'EMPTY', 'EMPTY');

INSERT INTO orders
	(orderID, customerID, orderDate, contactID, employeeID, 
    paymentDueDate, projectedDeliveryDate, methodID)
    VALUES('1008', '1001', '2024-11-20', '1086', '1006', 
    '2024-12-20', '2024-12-04', '1005');

INSERT INTO orders
	(orderID, customerID, orderDate, contactID, employeeID, 
    paymentDueDate, projectedDeliveryDate, methodID)
    VALUES('1009', '1003', '2024-11-28', '1091', '1006', 
    '2024-12-28', '2024-12-12', '1006'); 

-- ORDER DETAILS DATA ENTRY**********

INSERT INTO orderDetails
	(orderID, partID, quantity, discount)
    VALUES('1001','112','7');

INSERT INTO orderDetails
	(orderID, partID, quantity, discount)
    VALUES('1001', '221', '1');

INSERT INTO orderDetails
	(orderID, partID, quantity, discount)
    VALUES('1001','339','12');

INSERT INTO orderDetails
	(orderID, partID, quantity, discount)
    VALUES('1002', '222', '5');

INSERT INTO orderDetails
	(orderID, partID, quantity, discount)
    VALUES('1003', '443', '5');

INSERT INTO orderDetails
	(orderID, partID, quantity, discount)
    VALUES('1003', '445', '12');

INSERT INTO orderDetails
	(orderID, partID, quantity, discount)
    VALUES('1003', '107', '50');

INSERT INTO orderDetails
	(orderID, partID, quantity, discount)
    VALUES('1004', '221', '2');

INSERT INTO orderDetails
	(orderID, partID, quantity, discount)
    VALUES('1004', '222', '5');

INSERT INTO orderDetails
	(orderID, partID, quantity, discount)
    VALUES('1004', '337', '1');

INSERT INTO orderDetails
	(orderID, partID, quantity, discount)
    VALUES('1004', '338', '3');

INSERT INTO orderDetails
	(orderID, partID, quantity, discount)
    VALUES('1005', '112', '501');

INSERT INTO orderDetails
	(orderID, partID, quantity, discount)
    VALUES('1005', '113', '125');

INSERT INTO orderDetails
	(orderID, partID, quantity, discount)
    VALUES('1006', '443', '23');

INSERT INTO orderDetails
	(orderID, partID, quantity, discount)
    VALUES('1006', '337', '4');

INSERT INTO orderDetails
	(orderID, partID, quantity, discount)
    VALUES('1006', '107', '44000', '0.1');

INSERT INTO orderDetails
	(orderID, partID, quantity, discount)
    VALUES('1007', '221', '12');

INSERT INTO orderDetails
	(orderID, partID, quantity, discount)
    VALUES('1008', '443', '10');

INSERT INTO orderDetails
	(orderID, partID, quantity, discount)
    VALUES('1008', '445', '5');

INSERT INTO orderDetails
	(orderID, partID, quantity, discount)
    VALUES('1009', '112', '50');

INSERT INTO orderDetails
	(orderID, partID, quantity, discount)
    VALUES('1009', '113', '150');

-- CONTACTS DATA ENTRY*******

INSERT INTO contacts
	(contactID, contactFirstName, contactLastName, customerID,
    address, city, zipCode, phoneNumber, isBilling)
    VALUES('1001', 'Patricia', 'Smith', '1122', 
    '111 Santa Anna Valley Road', 'Sacramento', 'CA', '94203', '9161014443', '1');
    
INSERT INTO contacts
	(contactID, contactFirstName, contactLastName, customerID,
    address, city, zipCode, phoneNumber, isBilling)
    VALUES('1002', 'Michael', 'Williams', '1122', 
    '1066 Gayley Ave', 'Los Angeles', 'CA', '90024', '2131108590', '0');

INSERT INTO contacts
	(contactID, contactFirstName, contactLastName, customerID,
    address, city, zipCode, phoneNumber, isBilling)
    VALUES('1003', 'Michael', 'Jones', '1122',
    '5101 York Blvd', 'Los Angeles', 'CA', '90042', '2131110003', '0');

INSERT INTO contacts
	(contactID, contactFirstName, contactLastName, customerID,
    address, city, zipCode, phoneNumber, isBilling)
    VALUES('1004', 'John', 'Wilson', '1122', 
    '5101 York Blvd', 'Los Angeles', 'CA', '90042', '2131110003', '0');

INSERT INTO contacts
	(contactID, contactFirstName, contactLastName, customerID,
    address, city, zipCode, phoneNumber, isBilling)
    VALUES('1031', 'Mary', 'Parsons', '3724', 
    '775 Normal Lane', 'Relational', 'KS', '66110', '9139998877', '1');

INSERT INTO contacts
	(contactID, contactFirstName, contactLastName, customerID,
    address, city, zipCode, phoneNumber, isBilling)
    VALUES('1032', 'Larry', 'DBA', '3724', 
    '237 Boyce Avenue', 'Codd', 'KS', '67444', '9137870000', '0');

INSERT INTO contacts
	(contactID, contactFirstName, contactLastName, customerID,
    address, city, zipCode, phoneNumber, isBilling)
    VALUES('1033', 'Thomas', 'Taylor', '3724',
    '738 SW Gage Blvd', 'Topeka', 'KS', '66606', '9131988567', '0');

INSERT INTO contacts
	(contactID, contactFirstName, contactLastName, customerID,
    address, city, zipCode, phoneNumber, isBilling)
    VALUES('1034', 'Linda', 'Wilson', '3724',
    '4745 NW Hunters Ridge Cir', 'Topeka', 'KS', '66618', '9131012409', '0');

INSERT INTO contacts
	(contactID, contactFirstName, contactLastName, customerID,
    address, city, zipCode, phoneNumber, isBilling)
    VALUES('1035', 'Richard', 'Garcia', '3724', 
    '16563 W 151st St', 'Oleathe', 'KS', '66206', '9131592910', '0');

INSERT INTO contacts
	(contactID, contactFirstName, contactLastName, customerID,
    address, city, zipCode, phoneNumber, isBilling)
    VALUES('1036', 'Joseph', 'Martin', '3724',
    '7732 E Central Ave', 'Whichita', 'KS', '67206', '9131386984', '0');

INSERT INTO contacts
	(contactID, contactFirstName, contactLastName, customerID,
    address, city, zipCode, phoneNumber, isBilling)
    VALUES('1037', 'Joseph', 'Thomas', '3724', 
    '7002 Johnson Dr', 'Mission', 'KS', '66202', '9131812280', '0');

INSERT INTO contacts
	(contactID, contactFirstName, contactLastName, customerID,
    address, city, zipCode, phoneNumber, isBilling)
    VALUES('1038', 'Daniel', 'Lee', '3724', '9474',
    '9474 Renner Blvd', 'Lanexa', 'KS', '6619', '9131755459', '0');

INSERT INTO contacts
	(contactID, contactFirstName, contactLastName, customerID,
    address, city, zipCode, phoneNumber, isBilling)
    VALUES('1039', 'Jennifer', 'Taylor', '3724',
    '150 Central Mall', 'Salina', 'KS', '57401', '9131132430', '0');

-- CUSTOMERS DATA ENTRY

INSERT INTO customers
	(customerID, customerName)
    VALUES('1122', 'Bill & Teds PC Repair');

INSERT INTO customers
	(customerID, customerName)
    VALUES('1375', 'Hestons 10 Commands');

INSERT INTO customers
	(customerID, customerName)
    VALUES('1376', 'Kelsons Northtown');

INSERT INTO customers
	(customerID, customerName)
    VALUES('1835', 'PC Loco');

INSERT INTO customers
	(customerID, customerName)
    VALUES('3724', 'Databases R Us');

INSERT INTO customers
	(customerID, customerName)
    VALUES('2298', 'Pyramid PC');

INSERT INTO customers
	(customerID, customerName)
    VALUES('2376', 'Big Freds Mac Emporium');

INSERT INTO customers
	(customerID, customerName)
    VALUES('1876', 'Macs Welcome Here');

INSERT INTO customers
	(customerID, customerName)
    VALUES('2374', 'PC Master Race');

INSERT INTO customers
	(customerID, customerName)
    VALUES('1313','Pulcinella PC');

INSERT INTO customers
	(customerID, customerName)
    VALUES('1214','Abos workshop');

INSERT INTO customers
	(customerID, customerName)
    VALUES('1275','Cosmic Computer');

INSERT INTO customers
	(customerID, customerName)
    VALUES('1012','AvantisCommodore');    

INSERT INTO customers
	(customerID, customerName)
    VALUES('1728','Gullivers traveling techs');

INSERT INTO customers
	(customerID, customerName)
    VALUES('1818','Bits & Bytes');    

INSERT INTO customers
	(customerID, customerName)
    VALUES('1276','Alma PC connection');

INSERT INTO customers
	(customerID, customerName)
    VALUES('1317','Shotgun Shack Mac');
    INSERT INTO customers
	(customerID, customerName)
    VALUES('1456','US PC');

INSERT INTO customers
	(customerID, customerName)
    VALUES('1568','Walton Computers');

INSERT INTO customers
	(customerID, customerName)
    VALUES('1513','Algiers applications');
    INSERT INTO customers
	(customerID, customerName)
    VALUES('1001','Brickhouse Computers');

INSERT INTO customers
	(customerID, customerName)
    VALUES('1002','Hometown Help');
    INSERT INTO customers
	(customerID, customerName)
    VALUES('1003','Michaels Dell Emporium');
    
-- REGION DATA ENTRY

INSERT INTO regions
	(employeeID, state)
	VALUES('1001', 'AL');
    
    INSERT INTO regions
	(employeeID, state)
	VALUES('1001','AK');
    
    INSERT INTO regions
	(employeeID, state)
	VALUES('1001','AZ');
    
    INSERT INTO regions
	(employeeID, state)
	VALUES('1001','CT');
    
    INSERT INTO regions
	(employeeID, state)
	VALUES('1001','DE');
    
    INSERT INTO regions
	(employeeID, state)
	VALUES('1001','FL');
    
    INSERT INTO regions
	(employeeID, state)
	VALUES('1001','GA');

INSERT INTO regions
	(employeeID, state)
	VALUES('1001','HI');

INSERT INTO regions
	(employeeID, state)
	VALUES('1001','ID');
    
    INSERT INTO regions
	(employeeID, state)
	VALUES('1001','KY');
    
    INSERT INTO regions
	(employeeID, state)
	VALUES('1001','LA');
    
    INSERT INTO regions
	(employeeID, state)
	VALUES('1001','ME');
    
    INSERT INTO regions
	(employeeID, state)
	VALUES('1001','MD');
    
    INSERT INTO regions
	(employeeID, state)
	VALUES('1001','MA');
    
    INSERT INTO regions
	(employeeID, state)
	VALUES('1001','MI');
    
    INSERT INTO regions
	(employeeID, state)
	VALUES('1001','MS');
    
    INSERT INTO regions
	(employeeID, state)
	VALUES('1001','MT');
    
    INSERT INTO regions
	(employeeID, state)
	VALUES('1001','NV');
    
    INSERT INTO regions
	(employeeID, state)
	VALUES('1001','NH');
    
    INSERT INTO regions
	(employeeID, state)
	VALUES('1001','NJ');
    
    INSERT INTO regions
	(employeeID, state)
	VALUES('1001','NY');
    
    INSERT INTO regions
	(employeeID, state)
	VALUES('1001','NC');
    
    INSERT INTO regions
	(employeeID, state)
	VALUES('1001','ND');
    
    INSERT INTO regions
	(employeeID, state)
	VALUES('1001','OR');
    
    INSERT INTO regions
	(employeeID, state)
	VALUES('1001','PA');
    
    INSERT INTO regions
	(employeeID, state)
	VALUES('1001','RI');
    
    INSERT INTO regions
	(employeeID, state)
	VALUES('1001','SC');
    
    INSERT INTO regions
	(employeeID, state)
	VALUES('1001','SD');
    
    INSERT INTO regions
	(employeeID, state)
	VALUES('1001','UT');
    
    INSERT INTO regions
	(employeeID, state)
	VALUES('1001','VT');
    
    INSERT INTO regions
	(employeeID, state)
	VALUES('1001','VA');
    
    INSERT INTO regions
	(employeeID, state)
	VALUES('1001','WA');
    
    INSERT INTO regions
	(employeeID, state)
	VALUES('1001','WV');
    
    INSERT INTO regions
	(employeeID, state)
	VALUES('1001','WY');
    
    INSERT INTO regions
	(employeeID, state)
	VALUES('1002','CO');
    
    INSERT INTO regions
	(employeeID, state)
	VALUES('1002','NM');
    
    INSERT INTO regions
	(employeeID, state)
	VALUES('1002','TX');
    
    INSERT INTO regions
	(employeeID, state)
	VALUES('1003','CA');
    
    INSERT INTO regions
	(employeeID, state)
	VALUES('1004','IL');
    
    INSERT INTO regions
	(employeeID, state)
	VALUES('1004','OH');
    
    INSERT INTO regions
	(employeeID, state)
	VALUES('1004','IN');
    
    INSERT INTO regions
	(employeeID, state)
	VALUES('1005','AR');
    
    INSERT INTO regions
	(employeeID, state)
	VALUES('1005','OK');
    
    INSERT INTO regions
	(employeeID, state)
	VALUES('1005','TN');
    
    INSERT INTO regions
	(employeeID, state)
	VALUES('1006','IA');
    
    INSERT INTO regions
	(employeeID, state)
	VALUES('1006','WI');
    
    INSERT INTO regions
	(employeeID, state)
	VALUES('1006','MN');
    
    INSERT INTO regions
	(employeeID, state)
	VALUES('1007','MO');
    
    INSERT INTO regions
	(employeeID, state)
	VALUES('1007','KS');
    
    INSERT INTO regions
	(employeeID, state)
	VALUES('1007','NE');
