-- Unlock tables if previously locked
UNLOCK TABLES;
-- Drop the schema 'ItSupply' if it exists and create a new schema named 'ItSupply'
DROP SCHEMA IF EXISTS ItSupply;
CREATE SCHEMA ItSupply;
-- Use the newly created 'ItSupply' schema for the following operations
USE ItSupply;
-- Drop the 'employees' table if it exists before recreating it
DROP TABLE IF EXISTS employees;
#This will create the employees table with all of the employee information
CREATE TABLE `employees`(
	`employeeID` INT(4) NOT NULL,
    `firstName` VARCHAR(20) NOT NULL,
    `lastName` VARCHAR(20) NOT NULL,
    `gender` ENUM('M','F') NOT NULL,
    `title` VARCHAR(20) NOT NULL,
    `streetAddress` VARCHAR(30) NOT NULL,
    `city` VARCHAR(20) NOT NULL,
    `state` VARCHAR(15) NOT NULL,
    `zipCode` VARCHAR(10) NOT NULL,
    `phoneNumber` VARCHAR(15) NOT NULL,
    `reportsTo` INT(4) DEFAULT NULL,
    PRIMARY KEY(`employeeID`),#This sets the primary key to employeeID
    CONSTRAINT `employeeID1234` FOREIGN KEY(`reportsTo`) REFERENCES `employees` (`employeeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1; #Sets the storage engine and character set



DROP TABLE IF EXISTS customers;#Checks if the table already exists
#Creates the customers table
CREATE TABLE `customers`(
	`customerID` INT AUTO_INCREMENT,
    `publicCustomerID` INT(4) NOT NULL,
    `customerName` VARCHAR(30) NOT NULL,
    PRIMARY KEY(`customerID`)#Sets the primary key to customerID
) ENGINE=InnoDB DEFAULT CHARSET=latin1
AUTO_INCREMENT = 1000;

DROP TABLE IF EXISTS contacts;

#Creates the contacts table
CREATE TABLE contacts(
	`contactID` INT(4) NOT NULL AUTO_INCREMENT, #contactID has to have a value
    `contactFirstName` VARCHAR (20) NOT NULL,
    `contactLastName` VARCHAR (20) DEFAULT NULL, #contactLastName doesn't have to have a value as there are some contacts that didn't have a last name
    `customerID` INT(4) NOT NULL,#customerID has to have a value
    `address` VARCHAR(30) NOT NULL,
    `city` VARCHAR(20) NOT NULL,
    `state` VARCHAR(15) NOT NULL,
    `zipCode` VARCHAR(10) NOT NULL,
    `phoneNumber` VARCHAR(15) NOT NULL,
    `isBilling` BOOLEAN NOT NULL,
    PRIMARY KEY(`contactID`),#Sets the primary key to contactID
    CONSTRAINT `customerID1234` FOREIGN KEY(`customerID`) REFERENCES `customers`(`customerID`)#Sets the foreign key to customerID and refers to the customers table
) ENGINE=InnoDB DEFAULT CHARSET=latin1
AUTO_INCREMENT = 1000;

DROP TABLE IF EXISTS regions;

-- I made this table to make sure the state is the primary key:
CREATE TABLE regions(
    `employeeID` INT(4) NOT NULL,
    `state` VARCHAR(15) NOT NULL,
    PRIMARY KEY (`state`), -- Make state the primary key
    KEY `employeeID`(`employeeID`),
    CONSTRAINT `employeeID1235` FOREIGN KEY(`employeeID`) REFERENCES `employees`(`employeeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS products;
#Creates the products table
CREATE TABLE products(
	`partID` INT(3) NOT NULL, #This allows the integer to not exceed 3 bytes
    `productDescription` VARCHAR(100) NOT NULL,
    PRIMARY KEY(`partID`)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS shippingMethods;
#Creates the shippingMethods table that stores the different shipping methods that are used
CREATE TABLE shippingMethods(
	`methodID` INT(4) NOT NULL,
    `carrier` ENUM('UPS','USPS','DHS','FOB', 'FedEx') NOT NULL,
    `shippingDesc` VARCHAR(50) NOT NULL, -- Changed from description
    PRIMARY KEY(`methodID`)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS orders;
#Creates the orders table that stores all the orders
CREATE TABLE orders(
	`orderID` INT(4) NOT NULL AUTO_INCREMENT,
    `customerID` INT(4) NOT NULL,
    `orderDate` DATE NOT NULL,
    `contactID` INT(4) NOT NULL,
    `employeeID` INT(4) NOT NULL,
    `paymentDueDate` DATE NOT NULL, -- Changed this to DATE form VARCHAR (30)
    `projectedDeliveryDate` DATE DEFAULT NULL,
    `methodID` INT(4),
    PRIMARY KEY(`orderID`),
    CONSTRAINT `customerID1235` FOREIGN KEY(`customerID`) REFERENCES `customers`(`customerID`),
    CONSTRAINT `contactID1334` FOREIGN KEY(`contactID`) REFERENCES `contacts`(`contactID`),
    CONSTRAINT `employeeID1236` FOREIGN KEY(`employeeID`) REFERENCES `employees`(`employeeID`),
    CONSTRAINT `methodID1001` FOREIGN KEY(`methodID`) REFERENCES `shippingMethods`(`methodID`)
)ENGINE=InnoDB DEFAULT CHARSET=latin1
AUTO_INCREMENT = 1000;

DROP TABLE IF EXISTS orderDetails;


#Creates the orderDetails table
CREATE TABLE orderDetails(
	`orderID` INT(4) NOT NULL,
    `partID` INT(3) NOT NULL,
    `quantity` INT NOT NULL,
    `shippingPrice` DECIMAL NOT NULL, #Used float instead of decimal because the price is a quote from the carriers
    `discount` FLOAT DEFAULT NULL,
    `isDiscountApproved` ENUM('Pending','Approved','Denied') DEFAULT NULL,
    CONSTRAINT `orderID1001` FOREIGN KEY(`orderID`) REFERENCES `orders`(`orderID`),
	CONSTRAINT `partID123` FOREIGN KEY(`partID`) REFERENCES `products`(`partID`)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS price;
#Creates the price table for historcial and current prices
CREATE TABLE price(
	`partID` INT(4) NOT NULL,
	`priceEach` DECIMAL(5,2) NOT NULL,
    `fromDate` DATE NOT NULL,
    `toDate` DATE DEFAULT NULL,
    CONSTRAINT `partID122` FOREIGN KEY (`partID`) REFERENCES `products`(`partID`)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;


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
	(publicCustomerID, customerName)
    VALUES('1122', 'Bill & Teds PC Repair');

INSERT INTO customers
	(publicCustomerID, customerName)
    VALUES('1375', 'Hestons 10 Commands');

INSERT INTO customers
	(publicCustomerID, customerName)
    VALUES('1376', 'Kelsons Northtown');

INSERT INTO customers
	(publicCustomerID, customerName)
    VALUES('1835', 'PC Loco');

INSERT INTO customers
	(publicCustomerID, customerName)
    VALUES('3724', 'Databases R Us');

INSERT INTO customers
	(publicCustomerID, customerName)
    VALUES('2298', 'Pyramid PC');

INSERT INTO customers
	(publicCustomerID, customerName)
    VALUES('2376', 'Big Freds Mac Emporium');

INSERT INTO customers
	(publicCustomerID, customerName)
    VALUES('1876', 'Macs Welcome Here');

INSERT INTO customers
	(publicCustomerID, customerName)
    VALUES('2374', 'PC Master Race');

INSERT INTO customers
	(publicCustomerID, customerName)
    VALUES('1313','Pulcinella PC');

INSERT INTO customers
	(publicCustomerID, customerName)
    VALUES('1214','Abos workshop');

INSERT INTO customers
	(publicCustomerID, customerName)
    VALUES('1275','Cosmic Computer');

INSERT INTO customers
	(publicCustomerID, customerName)
    VALUES('1012','AvantisCommodore');    

INSERT INTO customers
	(publicCustomerID, customerName)
    VALUES('1728','Gullivers traveling techs');

INSERT INTO customers
	(publicCustomerID, customerName)
    VALUES('1818','Bits & Bytes');    

INSERT INTO customers
	(publicCustomerID, customerName)
    VALUES('1276','Alma PC connection');

INSERT INTO customers
	(publicCustomerID, customerName)
    VALUES('1317','Shotgun Shack Mac');
    INSERT INTO customers
	(publicCustomerID, customerName)
    VALUES('1456','US PC');

INSERT INTO customers
	(publicCustomerID, customerName)
    VALUES('1568','Walton Computers');

INSERT INTO customers
	(publicCustomerID, customerName)
    VALUES('1513','Algiers applications');
    INSERT INTO customers
	(publicCustomerID, customerName)
    VALUES('1001','Brickhouse Computers');

INSERT INTO customers
	(publicCustomerID, customerName)
    VALUES('1002','Hometown Help');
    INSERT INTO customers
	(publicCustomerID, customerName)
    VALUES('1003','Michaels Dell Emporium');


INSERT INTO contacts
    (contactID, contactFirstName, contactLastName, customerID,
    address, city, state, zipCode, phoneNumber, isBilling)
    VALUES('1001', 'Patricia', 'Smith', '1000', 
    '111 Santa Anna Valley Road', 'Sacramento', 'CA', '94203', '9161014443', '1');
    
INSERT INTO contacts
    (contactID, contactFirstName, contactLastName, customerID,
    address, city, state, zipCode, phoneNumber, isBilling)
    VALUES('1002', 'Michael', 'Williams', '1000', 
    '1066 Gayley Ave', 'Los Angeles', 'CA', '90024', '2131108590', '0');

INSERT INTO contacts
    (contactID, contactFirstName, contactLastName, customerID,
    address, city, state, zipCode, phoneNumber, isBilling)
    VALUES('1003', 'Michael', 'Jones', '1000',
    '5101 York Blvd', 'Los Angeles', 'CA', '90042', '2131110003', '0');

INSERT INTO contacts
    (contactID, contactFirstName, contactLastName, customerID,
    address, city, state, zipCode, phoneNumber, isBilling)
    VALUES('1004', 'John', 'Wilson', '1000', 
    '5101 York Blvd', 'Los Angeles', 'CA', '90042', '2131110003', '0');

INSERT INTO contacts
    (contactID, contactFirstName, contactLastName, customerID,
    address, city, state, zipCode, phoneNumber, isBilling)
    VALUES('1031', 'Mary', 'Parsons', '1004', 
    '775 Normal Lane', 'Relational', 'KS', '66110', '9139998877', '1');

INSERT INTO contacts
    (contactID, contactFirstName, contactLastName, customerID,
    address, city, state, zipCode, phoneNumber, isBilling)
    VALUES('1032', 'Larry', 'DBA', '1004', 
    '237 Boyce Avenue', 'Codd', 'KS', '67444', '9137870000', '0');

INSERT INTO contacts
    (contactID, contactFirstName, contactLastName, customerID,
    address, city, state, zipCode, phoneNumber, isBilling)
    VALUES('1033', 'Thomas', 'Taylor', '1004',
    '738 SW Gage Blvd', 'Topeka', 'KS', '66606', '9131988567', '0');

INSERT INTO contacts
    (contactID, contactFirstName, contactLastName, customerID,
    address, city, state, zipCode, phoneNumber, isBilling)
    VALUES('1034', 'Linda', 'Wilson', '1004',
    '4745 NW Hunters Ridge Cir', 'Topeka', 'KS', '66618', '9131012409', '0');

INSERT INTO contacts
    (contactID, contactFirstName, contactLastName, customerID,
    address, city, state, zipCode, phoneNumber, isBilling)
    VALUES('1035', 'Richard', 'Garcia', '1004', 
    '16563 W 151st St', 'Oleathe', 'KS', '66206', '9131592910', '0');

INSERT INTO contacts
    (contactID, contactFirstName, contactLastName, customerID,
    address, city, state, zipCode, phoneNumber, isBilling)
    VALUES('1036', 'Joseph', 'Martin', '1004',
    '7732 E Central Ave', 'Whichita', 'KS', '67206', '9131386984', '0');

INSERT INTO contacts
    (contactID, contactFirstName, contactLastName, customerID,
    address, city, state, zipCode, phoneNumber, isBilling)
    VALUES('1037', 'Joseph', 'Thomas', '1004', 
    '7002 Johnson Dr', 'Mission', 'KS', '66202', '9131812280', '0');

INSERT INTO contacts
    (contactID, contactFirstName, contactLastName, customerID,
    address, city, state, zipCode, phoneNumber, isBilling)
    VALUES('1038', 'Daniel', 'Lee', '1004',
    '9474 Renner Blvd', 'Lanexa', 'KS', '6619', '9131755459', '0');

INSERT INTO contacts
    (contactID, contactFirstName, contactLastName, customerID,
    address, city, state, zipCode, phoneNumber, isBilling)
    VALUES('1039', 'Jennifer', 'Taylor', '1004',
    '150 Central Mall', 'Salina', 'KS', '57401', '9131132430', '0');
    
INSERT INTO contacts
    (contactID, contactFirstName, contactLastName, customerID, 
    address, city, state, zipCode, phoneNumber, isBilling) 
VALUES
    ('1007', 'Maria', 'Rodriguez', '1000', '6541 Hollywood Blvd', 'Los Angeles', 'CA', '90028',    '2131092912', '0'),
    ('1024', 'Steve', 'Walton', '1001', '1801 Baltimore Ave', 'Kansas City', 'MO', 64108, '8161329745', '1'),
    ('1045', 'Barbara', 'Smith', '1008', '16919 Audrey St', 'Omaha', 'NE', 68136, '4021269604', '0'),
    ('1064', 'Patricia', 'White', '1013', '1512 W Berwyn Ave', 'Chicago', 'IL', 60640, '3121216247', '1'),
    ('1086', 'Robert', 'Thomas', '1020', '110 E Water St', 'Decorah', 'IA', 52101, '5151445162', '1'),
    ('1091', 'Robert', 'White', '1022', '2300 Muscatine Ave', 'Iowa City', 'IA', '0000', '5151459846', '0'),
    ('1041', 'William', 'Johnson', '1006', '1101 S 119th St', 'Omaha', 'NE', 68144, '4021015829', '1'),
    ('1029', 'David', 'Rodriguez', '1003', '9747 E 21st St N', 'Wichita', 'KS', 67206, '9131415414', '0');


    
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
    VALUES('1001', '1000', '2024-11-02', '1007', '1003', 
    '2024-12-02', '2024-11-16', '1001');

INSERT INTO orders
	(orderID, customerID, orderDate, contactID, employeeID, 
    paymentDueDate, projectedDeliveryDate, methodID)
    VALUES('1002', '1006', '2024-11-02', '1041', '1007',
    '2024-12-02', NULL, NULL); -- Phone Assistance

INSERT INTO orders
	(orderID, customerID, orderDate, contactID, employeeID, 
    paymentDueDate, projectedDeliveryDate, methodID)
    VALUES('1003', '1003', '2024-11-03', '1029', '1007', 
    '2024-12-02', '2024-11-17', '1002');

INSERT INTO orders
	(orderID, customerID, orderDate, contactID, employeeID, 
    paymentDueDate, projectedDeliveryDate, methodID)
    VALUES('1004', '1001', '2024-11-03', '1024', '1007',
    '2024-12-03', '2024-11-17', '1003');

INSERT INTO orders
	(orderID, customerID, orderDate, contactID, employeeID, 
    paymentDueDate, projectedDeliveryDate, methodID)
    VALUES('1005', '1008', '2024-11-09', '1045', '1007', 
    '2024-12-09', '2024-11-23', '1004');
    
INSERT INTO orders
	(orderID, customerID, orderDate, contactID, employeeID, 
    paymentDueDate, projectedDeliveryDate, methodID)
    VALUES('1006', '1004', '2024-11-18', '1032', '1007', 
    '2024-12-18', '2024-11-30', '1001');

INSERT INTO orders
	(orderID, customerID, orderDate, contactID, employeeID, 
    paymentDueDate, projectedDeliveryDate, methodID)
    VALUES('1007', '1013', '2024-11-20', '1064', '1004', 
    '2024-12-20', NULL, NULL); -- Phone assistance

INSERT INTO orders
	(orderID, customerID, orderDate, contactID, employeeID, 
    paymentDueDate, projectedDeliveryDate, methodID)
    VALUES('1008', '1020', '2024-11-20', '1086', '1006', 
    '2024-12-20', '2024-12-04', '1005');

INSERT INTO orders
	(orderID, customerID, orderDate, contactID, employeeID, 
    paymentDueDate, projectedDeliveryDate, methodID)
    VALUES('1009', '1022', '2024-11-28', '1091', '1006', 
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
	(orderID, partID, quantity, shippingPrice)
    VALUES('1006', '443', '23', '0');

INSERT INTO orderDetails
	(orderID, partID, quantity, shippingPrice)
    VALUES('1006', '337', '4', '0');

INSERT INTO orderDetails
	(orderID, partID, quantity, discount, shippingPrice, isDiscountApproved)
    VALUES('1006', '1007', '44000', '0.1', '0', 'Approved');

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
    VALUES('1009', '112', '50', '17.25');

INSERT INTO orderDetails
	(orderID, partID, quantity, shippingPrice)
    VALUES('1009', '113', '150', '17.25');
    
    SELECT 
    o.orderID AS 'Order ID',  -- Selects the Order ID from the orders table
    c.customerName AS 'Bill To Customer',  -- Selects the customer name from the customers table
    ct.address AS 'Bill To Address',  -- Selects the billing address from the contacts table
    ct.phoneNumber AS 'Bill To Phone',  -- Selects the billing phone number from the contacts table
    CONCAT(ct.contactFirstName, ' ', ct.contactLastName) AS 'Ship To Recipient',  -- Combines first and last name from contacts table to create 'Ship To Recipient'
    ct.address AS 'Ship To Address',  -- Selects the shipping address from the contacts table (assuming it's the same as the billing address here)
    ct.phoneNumber AS 'Ship To Phone',  -- Selects the shipping phone number from the contacts table (assuming it's the same as the billing phone number here)
    o.paymentDueDate AS 'Payment Due',  -- Selects the payment due date from the orders table
    e.firstName AS 'Salesperson First Name',  -- Selects the first name of the salesperson from the employees table
    e.lastName AS 'Salesperson Last Name',  -- Selects the last name of the salesperson from the employees table
    sm.carrier AS 'Shipping Method',  -- Selects the carrier (shipping method) from the shippingMethods table
    sm.shippingDesc AS 'Shipping Description',  -- Selects the description of the shipping method from the shippingMethods table
    od.quantity AS 'Qty',  -- Selects the quantity of items from the orderDetails table
    p.productDescription AS 'Description',  -- Selects the product description from the products table
    pr.priceEach AS 'Unit Price',  -- Selects the unit price for each product from the price table
    od.discount AS 'Discount',  -- Selects the discount applied to each product from the orderDetails table
    -- Calculate the line total: quantity * price each * (1 - discount)
    -- If there's no discount, it uses the price without discount (assuming discount is stored as a percentage)
    ROUND(od.quantity * pr.priceEach * (1 - COALESCE(od.discount, 0)), 2) AS 'Line Total', 
    -- Calculate the total for the entire order: sum of all line totals for the order, rounded to 2 decimal places
    -- The SUM function is used to aggregate the line totals across all items in the same order
    ROUND(SUM(od.quantity * pr.priceEach * (1 - COALESCE(od.discount, 0))) OVER (PARTITION BY o.orderID), 2) AS 'Order Total'
FROM 
    orders o  
LEFT JOIN 
    customers c ON o.customerID = c.customerID  
LEFT JOIN 
    contacts ct ON o.contactID = ct.contactID  
LEFT JOIN 
    employees e ON o.employeeID = e.employeeID  
LEFT JOIN 
    shippingMethods sm ON o.methodID = sm.methodID  -- Left join with the shippingMethods table on methodID (to get shipping method details)
LEFT JOIN 
    orderDetails od ON o.orderID = od.orderID  -- Left join with the orderDetails table on orderID (to get item details for each order)
LEFT JOIN 
    products p ON od.partID = p.partID  -- Left join with the products table on partID (to get product descriptions)
LEFT JOIN 
    price pr ON p.partID = pr.partID AND o.orderDate BETWEEN pr.fromDate AND COALESCE(pr.toDate, CURRENT_DATE)  -- Left join with the price table on partID and a date range condition to get the price for the correct period
WHERE 
    o.orderID = 1006  -- Filter the results to only include orderID 1006
ORDER BY 
    od.partID;  -- Order the results by partID to group the items in each order (this can be adjusted depending on your needs)
    
    SELECT 
    c.customerName AS 'Customer Name',
    CONCAT(e.firstName, ' ', e.lastName) AS 'Salesperson',
    o.orderID AS 'Order ID',
    ROUND(
        SUM(
            CASE 
                WHEN od.discount IS NOT NULL AND od.discount > 0 THEN 
                    -- Apply discount for the item: multiply price by (1 - discount)
                    (od.quantity * p.priceEach) * (1 - od.discount) 
                ELSE 
                    -- No discount, regular price
                    (od.quantity * p.priceEach)
            END
        ) + ROUND(od.shippingPrice) -- Add rounded shipping price
		-- Round final total to 2 decimal places
    ) AS 'Order Total'
FROM 
    orders o
JOIN 
    customers c ON o.customerID = c.customerID
JOIN 
    employees e ON o.employeeID = e.employeeID
JOIN 
    orderDetails od ON o.orderID = od.orderID
JOIN 
    price p ON od.partID = p.partID
GROUP BY 
    c.customerName, e.firstName, e.lastName, o.orderID;


# for foreign keys: 
# KEY employeeID(employeeID),
# CONSTRAINT employeesID1234 FOREIGN KEY (territoryID) REFERENCES territory(territoryID)
