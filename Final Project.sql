UNLOCK TABLES;
DROP SCHEMA IF EXISTS ItSupply;
CREATE SCHEMA ItSupply;
USE ItSupply;

DROP TABLE IF EXISTS employees;
#This will create the employees table with all of the employee information
CREATE TABLE `employees`(
	`employeeID` INT(4),
    `firstName` VARCHAR(20),
    `lastName` VARCHAR(20),
    `gender` ENUM('M','F'),
    `title` VARCHAR(20),
    `streetAddress` VARCHAR(30),
    `city` VARCHAR(20),
    `state` VARCHAR(15),
    `zipCode` VARCHAR(10),
    `phoneNumber` VARCHAR(15),
    `reportsTo` INT(4) DEFAULT NULL,
    PRIMARY KEY(`employeeID`),#This sets the primary key to employeeID
    KEY `employeeID`(`employeeID`),
    CONSTRAINT `employeeID1234` FOREIGN KEY(`reportsTo`) REFERENCES `employees` (`employeeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

SELECT * FROM ItSupply.employees;

LOCK TABLES employees WRITE;

INSERT INTO employees(firstName,lastName) # Column names in parentheses
VALUES
('John','Doe')
;

UNLOCK TABLES;

DROP TABLE IF EXISTS customers;

CREATE TABLE `customers`(
	`customerID` INT(4),
    `customerName` VARCHAR(30),
    PRIMARY KEY(`customerID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS contacts;

CREATE TABLE contacts(
	`contactID` INT(4),
    `contactFirstName` VARCHAR (20),
    `contactLastName` VARCHAR (20) DEFAULT NULL,
    `customerID` INT(4),
    `address` VARCHAR(30),
    `city` VARCHAR(20),
    `state` VARCHAR(15),
    `zipCode` VARCHAR(10),
    `phoneNumber` VARCHAR(15),
    `isBilling` BOOLEAN,
    PRIMARY KEY(`contactID`),
    KEY `customerID`(`customerID`),
    CONSTRAINT `customerID1234` FOREIGN KEY(`customerID`) REFERENCES `customers`(`customerID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS region;

CREATE TABLE region(
	`employeeID` INT(4) NOT NULL,
    `state` VARCHAR(15),
    KEY `employeeID`(`employeeID`),
    CONSTRAINT `employeeID1235` FOREIGN KEY(`employeeID`) REFERENCES `employees`(`employeeID`)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- I made this table to make sure the state is the primary key:
CREATE TABLE regions(
    `employeeID` INT(4) NOT NULL,
    `state` VARCHAR(15) NOT NULL,
    PRIMARY KEY (`state`), -- Make state the primary key
    KEY `employeeID`(`employeeID`),
    CONSTRAINT `employeeID1235` FOREIGN KEY(`employeeID`) REFERENCES `employees`(`employeeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS products;

CREATE TABLE products(
	`partID` INT(3),
    `productDescription` VARCHAR(100),
    `priceEach` INT,
    PRIMARY KEY(`partID`)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE shippingMethods(
	`methodID` INT(4),
    `carrier` VARCHAR(15),
    `shippingDesc` VARCHAR(50), -- Changed from description
    `price` INT,
    PRIMARY KEY(`methodID`)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE orders(
	`orderID` INT(4),
    `customerID` INT(4),
    `orderDate` VARCHAR(30),
    `contactID` INT(4),
    `employeeID` INT(4),
    `paymentDueDate` DATE, -- Changed this to DATE form VARCHAR (30)
    `projectedDeliveryDate` DATE,
    `methodID` INT(4),
    PRIMARY KEY(`orderID`),
    CONSTRAINT `customerID1235` FOREIGN KEY(`customerID`) REFERENCES `customers`(`customerID`),
    CONSTRAINT `contactID1334` FOREIGN KEY(`contactID`) REFERENCES `contacts`(`contactID`),
    CONSTRAINT `employeeID1236` FOREIGN KEY(`employeeID`) REFERENCES `employees`(`employeeID`)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE orderDetails(
	`orderID` INT(4),
    `partID` INT(3),
    `quantity` INT,
    `discount` FLOAT,
    CONSTRAINT `orderID1222` FOREIGN KEY(`orderID`) REFERENCES `orders`(`orderID`),
	CONSTRAINT `partID123` FOREIGN KEY(`partID`) REFERENCES `products`(`partID`)
);



# for foreign keys: 
# KEY employeeID(employeeID),
# CONSTRAINT employeesID1234 FOREIGN KEY (territoryID) REFERENCES territory(territoryID)
