-- ALL EMPLOYEES ENTERED		
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

-- PRODUCTS DATA ENTRY

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

-- ORDERS DATA ENTRY

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
