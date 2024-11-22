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
    `isDefault` BOOLEAN,
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

DROP TABLE IF EXISTS products;

CREATE TABLE products(
	`partID` INT(3),
    `productName` VARCHAR(100),
    PRIMARY KEY(`partID`)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;



# for foreign keys: 
# KEY employeeID(employeeID),
# CONSTRAINT employeesID1234 FOREIGN KEY (territoryID) REFERENCES territory(territoryID)
