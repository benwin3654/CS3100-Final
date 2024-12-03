UNLOCK TABLES;
DROP SCHEMA IF EXISTS ItSupply;
CREATE SCHEMA ItSupply;
USE ItSupply;

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
    KEY `employeeID`(`employeeID`),
    CONSTRAINT `employeeID1234` FOREIGN KEY(`reportsTo`) REFERENCES `employees` (`employeeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1; #Sets the storage engine and character set

SELECT * FROM ItSupply.employees;

LOCK TABLES employees WRITE;

INSERT INTO employees(firstName,lastName) # Column names in parentheses
VALUES
('John','Doe')
;

UNLOCK TABLES;

DROP TABLE IF EXISTS customers;#Checks if the table already exists
#Creates the customers table
CREATE TABLE `customers`(
	`customerID` INT(4),
    `customerName` VARCHAR(30) NOT NULL,
    PRIMARY KEY(`customerID`)#Sets the primary key to customerID
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS contacts;

#Creates the contacts table
CREATE TABLE contacts(
	`contactID` INT(4), #contactID has to have a value
    `contactFirstName` VARCHAR (20),
    `contactLastName` VARCHAR (20) DEFAULT NULL,#contactLastName doesn't have to have a value
    `customerID` INT(4) NOT NULL,#customerID has to have a value
    `address` VARCHAR(30) NOT NULL,
    `city` VARCHAR(20) NOT NULL,
    `state` VARCHAR(15) NOT NULL,
    `zipCode` VARCHAR(10) NOT NULL,
    `phoneNumber` VARCHAR(15) NOT NULL,
    `isBilling` BOOLEAN NOT NULL,
    PRIMARY KEY(`contactID`),#Sets the primary key to contactID
    KEY `customerID`(`customerID`),
    CONSTRAINT `customerID1234` FOREIGN KEY(`customerID`) REFERENCES `customers`(`customerID`)#Sets the foreign key to customerID and refers to the customers table
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS regions;

-- I made this table to make sure the state is the primary key:
CREATE TABLE regions(
    `employeeID` INT(4),
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
    `carrier` ENUM('UPS','USPS','DHS','FOB') NOT NULL,
    `shippingDesc` VARCHAR(50) NOT NULL, -- Changed from description
    PRIMARY KEY(`methodID`)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS orders;
#Creates the orders table that stores all the orders
CREATE TABLE orders(
	`orderID` INT(4) NOT NULL,
    `customerID` INT(4),
    `orderDate` DATE NOT NULL,
    `contactID` INT(4),
    `employeeID` INT(4),
    `paymentDueDate` DATE NOT NULL, -- Changed this to DATE form VARCHAR (30)
    `projectedDeliveryDate` DATE NOT NULL,
    `methodID` INT(4),
    PRIMARY KEY(`orderID`),
    CONSTRAINT `customerID1235` FOREIGN KEY(`customerID`) REFERENCES `customers`(`customerID`),
    CONSTRAINT `contactID1334` FOREIGN KEY(`contactID`) REFERENCES `contacts`(`contactID`),
    CONSTRAINT `employeeID1236` FOREIGN KEY(`employeeID`) REFERENCES `employees`(`employeeID`),
    CONSTRAINT `methodID1234` FOREIGN KEY(`methodID`) REFERENCES `shippingMethods`(`methodID`)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS orderDetails;
#Creates the orderDetails table
CREATE TABLE orderDetails(
	`orderID` INT(4),
    `partID` INT(3),
    `quantity` INT NOT NULL,
    `shippingPrice` DECIMAL NOT NULL, #Used float instead of decimal because the price is a quote from the carriers
    `discount` DECIMAL NOT NULL,
    `isDiscountApproved` ENUM('Pending','Approved','Denied') DEFAULT NULL,
    CONSTRAINT `orderID1222` FOREIGN KEY(`orderID`) REFERENCES `orders`(`orderID`),
	CONSTRAINT `partID123` FOREIGN KEY(`partID`) REFERENCES `products`(`partID`)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS price;
#Creates the price table for historcial and current prices
CREATE TABLE price(
	`partID` INT(3),
	`priceEach` DECIMAL NOT NULL,
    `fromDate` DATE NOT NULL,
    `toDate` DATE NOT NULL,
    CONSTRAINT `partID122` FOREIGN KEY (`partID`) REFERENCES `products`(`partID`)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;





# for foreign keys: 
# KEY employeeID(employeeID),
# CONSTRAINT employeesID1234 FOREIGN KEY (territoryID) REFERENCES territory(territoryID)
