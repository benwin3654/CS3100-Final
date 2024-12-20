-- ALL EMPLOYEES ENTERED		
INSERT INTO employees
	(employeeID, firstName, lastName, 
    gender, title, streetAddress, 
    city, state, zipCode, 
    phoneNumber, reportsTo)
	VALUES('1001', 'Raymond', 'Boyce', 'M', 'VP of Sales', 
    '1 Arrowhead Drive', 'Kansas City', 'MO', '64129', 
    '8160993120', NULL);

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
    
-- CONTACTS DATA ENTRY

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


INSERT INTO contacts
	(contactID, contactFirstName, contactLastName, customerID,
    address, city, state, zipCode, phoneNumber, isBilling)
    VALUES('1001', 'Patricia', 'Smith', '1122', 
    '111 Santa Anna Valley Road', 'Sacramento', 'CA', '94203', '9161014443', '1');
    
INSERT INTO contacts
	(contactID, contactFirstName, contactLastName, customerID,
    address, city, state, zipCode, phoneNumber, isBilling)
    VALUES('1002', 'Michael', 'Williams', '1122', 
    '1066 Gayley Ave', 'Los Angeles', 'CA', '90024', '2131108590', '0');

INSERT INTO contacts
	(contactID, contactFirstName, contactLastName, customerID,
    address, city, state, zipCode, phoneNumber, isBilling)
    VALUES('1003', 'Michael', 'Jones', '1122',
    '5101 York Blvd', 'Los Angeles', 'CA', '90042', '2131110003', '0');

INSERT INTO contacts
	(contactID, contactFirstName, contactLastName, customerID,
    address, city, state, zipCode, phoneNumber, isBilling)
    VALUES('1004', 'John', 'Wilson', '1122', 
    '5101 York Blvd', 'Los Angeles', 'CA', '90042', '2131110003', '0');

INSERT INTO contacts
	(contactID, contactFirstName, contactLastName, customerID,
    address, city, state, zipCode, phoneNumber, isBilling)
    VALUES('1031', 'Mary', 'Parsons', '3724', 
    '775 Normal Lane', 'Relational', 'KS', '66110', '9139998877', '1');

INSERT INTO contacts
	(contactID, contactFirstName, contactLastName, customerID,
    address, city, state, zipCode, phoneNumber, isBilling)
    VALUES('1032', 'Larry', 'DBA', '3724', 
    '237 Boyce Avenue', 'Codd', 'KS', '67444', '9137870000', '0');

INSERT INTO contacts
	(contactID, contactFirstName, contactLastName, customerID,
    address, city, state, zipCode, phoneNumber, isBilling)
    VALUES('1033', 'Thomas', 'Taylor', '3724',
    '738 SW Gage Blvd', 'Topeka', 'KS', '66606', '9131988567', '0');

INSERT INTO contacts
	(contactID, contactFirstName, contactLastName, customerID,
    address, city, state, zipCode, phoneNumber, isBilling)
    VALUES('1034', 'Linda', 'Wilson', '3724',
    '4745 NW Hunters Ridge Cir', 'Topeka', 'KS', '66618', '9131012409', '0');

INSERT INTO contacts
	(contactID, contactFirstName, contactLastName, customerID,
    address, city, state, zipCode, phoneNumber, isBilling)
    VALUES('1035', 'Richard', 'Garcia', '3724', 
    '16563 W 151st St', 'Oleathe', 'KS', '66206', '9131592910', '0');

INSERT INTO contacts
	(contactID, contactFirstName, contactLastName, customerID,
    address, city, state, zipCode, phoneNumber, isBilling)
    VALUES('1036', 'Joseph', 'Martin', '3724',
    '7732 E Central Ave', 'Whichita', 'KS', '67206', '9131386984', '0');

INSERT INTO contacts
	(contactID, contactFirstName, contactLastName, customerID,
    address, city, state, zipCode, phoneNumber, isBilling)
    VALUES('1037', 'Joseph', 'Thomas', '3724', 
    '7002 Johnson Dr', 'Mission', 'KS', '66202', '9131812280', '0');

INSERT INTO contacts
	(contactID, contactFirstName, contactLastName, customerID,
    address, city, state, zipCode, phoneNumber, isBilling)
    VALUES('1038', 'Daniel', 'Lee', '3724',
    '9474 Renner Blvd', 'Lanexa', 'KS', '6619', '9131755459', '0');

INSERT INTO contacts
	(contactID, contactFirstName, contactLastName, customerID,
    address, city, state, zipCode, phoneNumber, isBilling)
    VALUES('1039', 'Jennifer', 'Taylor', '3724',
    '150 Central Mall', 'Salina', 'KS', '57401', '9131132430', '0');
    
INSERT INTO contacts
    (contactID, contactFirstName, contactLastName, customerID, 
    address, city, state, zipCode, phoneNumber, isBilling) 
VALUES
	('1007', 'Maria', 'Rodriguez', '1122', '6541 Hollywood Blvd', 'Los Angeles', 'CA', '90028',	'2131092912', '0'),
    ('1024', 'Steve', 'Walton', '1375', '1801 Baltimore Ave', 'Kansas City', 'MO', 64108, '8161329745', '1'),
    ('1045', 'Barbara', 'Smith', '2374', '16919 Audrey St', 'Omaha', 'NE', 68136, '4021269604', '0'),
    ('1064', 'Patricia', 'White', '1728', '1512 W Berwyn Ave', 'Chicago', 'IL', 60640, '3121216247', '1'),
    ('1086', 'Robert', 'Thomas', '1001', '110 E Water St', 'Decorah', 'IA', 52101, '5151445162', '1'),
    ('1091', 'Robert', 'White', '1003', '2300 Muscatine Ave', 'Iowa City', 'IA', '0000', '5151459846', '0'),
    ('1041', 'William', 'Johnson', '2376', '1101 S 119th St', 'Omaha', 'NE', 68144, '4021015829', '1'),
    ('1029', 'David', 'Rodriguez', '1835', '9747 E 21st St N', 'Wichita', 'KS', 67206, '9131415414', '0');

    
INSERT INTO products
	(partID, productDescription)
    VALUES ('112', '5 1/4 Floppy Disks');

INSERT INTO products
	(partID, productDescription)
    VALUES('113', '3 1/2 Disks');

INSERT INTO products
	(partID, productDescription)
    VALUES('221', 'Phone Support Hourly');

INSERT INTO products
	(partID, productDescription)
    VALUES('222', 'Phone Support (Family) Hourly');

INSERT INTO products
	(partID, productDescription)
    VALUES('337', 'User Encouragement Device (Electric)');

INSERT INTO products
	(partID, productDescription)
    VALUES('338', 'User Encouragement Device - Club Style (Black)');

INSERT INTO products
	(partID, productDescription)
    VALUES('339', 'User Encouragement Device - Club Style (Red)');

INSERT INTO products
	(partID, productDescription)
    VALUES('443', 'Really Fine User Manual');
    
INSERT INTO products
	(partID, productDescription)
    VALUES('445', 'Motivational Poster (Framed)');

INSERT INTO products
	(partID, productDescription)
    VALUES('1007', 'User Tolerance Assistance');
    
-- Price Table

INSERT INTO price
	(partID, priceEach, fromDate, toDate)
    VALUES(112, '0.75', '2024-11-01', NULL);

INSERT INTO price
	(partID, priceEach, fromDate, toDate)
    VALUES(113, '1.25', '2024-11-01', NULL);

INSERT INTO price
	(partID, priceEach, fromDate, toDate)
    VALUES(221, '75.00', '2024-11-01', NULL);

INSERT INTO price
	(partID, priceEach, fromDate, toDate)
    VALUES(222, '225.00', '2024-11-01', NULL);
    
INSERT INTO price
	(partID, priceEach, fromDate, toDate)
    VALUES(337, '74.00', '2024-11-01', NULL);
    
INSERT INTO price
	(partID, priceEach, fromDate, toDate)
    VALUES(338, '52.00', '2024-11-01', NULL);

INSERT INTO price
	(partID, priceEach, fromDate, toDate)
    VALUES(339, '60.00', '2024-11-01', NULL);

INSERT INTO price
	(partID, priceEach, fromDate, toDate)
    VALUES(443, '327.00', '2024-11-01', NULL);

INSERT INTO price
	(partID, priceEach, fromDate, toDate)
    VALUES(445, '17.50', '2024-11-01', NULL);
    
INSERT INTO price
	(partID, priceEach, fromDate, toDate)
    VALUES(1007, '3.14', '2024-11-01', NULL);
    
    
INSERT INTO shippingMethods
	(methodID, carrier, shippingDesc)
    VALUES('1001', 'UPS', 'FOB Destination');

INSERT INTO shippingMethods
	(methodID, carrier, shippingDesc)
    VALUES('1002', 'USPS', '1st Class');

INSERT INTO shippingMethods
	(methodID, carrier, shippingDesc)
    VALUES('1003', 'UPS', 'Next Day');

INSERT INTO shippingMethods
	(methodID, carrier, shippingDesc)
    VALUES('1004', 'UPS', 'Standard');

INSERT INTO shippingMethods
	(methodID, carrier, shippingDesc)
    VALUES('1005', 'Fedex', 'Overnight');
    
INSERT INTO shippingMethods
	(methodID, carrier, shippingDesc)
    VALUES('1006', 'UPS', '3 Day, FOB Destination');
 
-- orders
INSERT INTO orders
	(orderID, customerID, orderDate, contactID, employeeID, 
    paymentDueDate, projectedDeliveryDate, methodID)
    VALUES('1001', '1122', '2024-11-02', '1007', '1003', 
    '2024-12-02', '2024-11-16', '1001');

INSERT INTO orders
	(orderID, customerID, orderDate, contactID, employeeID, 
    paymentDueDate, projectedDeliveryDate, methodID)
    VALUES('1002', '2376', '2024-11-02', '1041', '1007',
    '2024-12-02', NULL, NULL); -- Phone Assistance

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
    '2024-12-18', '2024-11-30', NULL);

INSERT INTO orders
	(orderID, customerID, orderDate, contactID, employeeID, 
    paymentDueDate, projectedDeliveryDate, methodID)
    VALUES('1007', '1728', '2024-11-20', '1064', '1004', 
    '2024-12-20', NULL, NULL); -- Phone assistance

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
    
-- order details
INSERT INTO orderDetails
	(orderID, partID, quantity, shippingPrice)
    VALUES('1001','112','7', '2.75');

INSERT INTO orderDetails
	(orderID, partID, quantity, shippingPrice)
    VALUES('1001', '221', '1', '2.75');

INSERT INTO orderDetails
	(orderID, partID, quantity, shippingPrice)
    VALUES('1001','339','12', '2.75');

INSERT INTO orderDetails
	(orderID, partID, quantity)
    VALUES('1002', '222', '5');

INSERT INTO orderDetails
	(orderID, partID, quantity, shippingPrice)
    VALUES('1003', '443', '5', '25.00');

INSERT INTO orderDetails
	(orderID, partID, quantity, shippingPrice)
    VALUES('1003', '445', '12', '25.00');

INSERT INTO orderDetails
	(orderID, partID, quantity, shippingPrice)
    VALUES('1003', '1007', '50', '25.00');

INSERT INTO orderDetails
	(orderID, partID, quantity, shippingPrice)
    VALUES('1004', '221', '2', '32.00');

INSERT INTO orderDetails
	(orderID, partID, quantity, shippingPrice)
    VALUES('1004', '222', '5', '32.00');

INSERT INTO orderDetails
	(orderID, partID, quantity, shippingPrice)
    VALUES('1004', '337', '1', '32.00');

INSERT INTO orderDetails
	(orderID, partID, quantity, shippingPrice)
    VALUES('1004', '338', '3', '32.00');

INSERT INTO orderDetails
	(orderID, partID, quantity, shippingPrice)
    VALUES('1005', '112', '501', '12.25');

INSERT INTO orderDetails
	(orderID, partID, quantity, shippingPrice)
    VALUES('1005', '113', '125', '12.25');

INSERT INTO orderDetails
	(orderID, partID, quantity)
    VALUES('1006', '443', '23');

INSERT INTO orderDetails
	(orderID, partID, quantity)
    VALUES('1006', '337', '4');

INSERT INTO orderDetails
	(orderID, partID, quantity, discount)
    VALUES('1006', '1007', '44000', '0.1');

INSERT INTO orderDetails
	(orderID, partID, quantity)
    VALUES('1007', '221', '12');

INSERT INTO orderDetails
	(orderID, partID, quantity, shippingPrice)
    VALUES('1008', '443', '10', '32.50');

INSERT INTO orderDetails
	(orderID, partID, quantity, shippingPrice)
    VALUES('1008', '445', '5', '32.50');

INSERT INTO orderDetails
	(orderID, partID, quantity, shippingPrice)
    VALUES('1009', '112', '50', '12.75');

INSERT INTO orderDetails
	(orderID, partID, quantity, shippingPrice)
    VALUES('1009', '113', '150', '12.75');


    





    

    