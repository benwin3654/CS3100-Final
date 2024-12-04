-- Unlock tables if previously locked
UNLOCK TABLES;

-- Drop the schema 'ItSupply' if it exists and create a new schema named 'ItSupply'
DROP SCHEMA IF EXISTS ItSupply;
CREATE SCHEMA ItSupply;

-- Use the newly created 'ItSupply' schema for the following operations
USE ItSupply;

-- Drop the 'employees' table if it exists before recreating it
DROP TABLE IF EXISTS employees;

-- Create the 'employees' table to store employee information
CREATE TABLE `employees`(
    -- Define employeeID as an integer field with 4 digits, which cannot be null
    `employeeID` INT(4) NOT NULL, 
    -- Define first name as a varchar field, max length 20 characters, which cannot be null
    `firstName` VARCHAR(20) NOT NULL, 
    -- Define last name as a varchar field, max length 20 characters, which cannot be null
    `lastName` VARCHAR(20) NOT NULL,
    -- Define gender as an ENUM type with two values 'M' (Male) and 'F' (Female), cannot be null
    `gender` ENUM('M','F') NOT NULL,
    -- Define title as a varchar field, max length 20 characters, which cannot be null
    `title` VARCHAR(20) NOT NULL,
    -- Define street address as a varchar field, max length 30 characters, which cannot be null
    `streetAddress` VARCHAR(30) NOT NULL,
    -- Define city as a varchar field, max length 20 characters, which cannot be null
    `city` VARCHAR(20) NOT NULL,
    -- Define state as a varchar field, max length 15 characters, which cannot be null
    `state` VARCHAR(15) NOT NULL,
    -- Define zip code as a varchar field, max length 10 characters, which cannot be null
    `zipCode` VARCHAR(10) NOT NULL,
    -- Define phone number as a varchar field, max length 15 characters, which cannot be null
    `phoneNumber` VARCHAR(15) NOT NULL,
    -- Define a foreign key 'reportsTo' that references the employeeID of the supervisor
    `reportsTo` INT(4) DEFAULT NULL,
    
    -- Set employeeID as the primary key for this table
    PRIMARY KEY(`employeeID`),
    
    -- Create an index on employeeID for faster lookups (though it is the primary key)
    KEY `employeeID`(`employeeID`),
    
    -- Define a foreign key constraint linking 'reportsTo' to 'employeeID' in the same table
    CONSTRAINT `employeeID1234` FOREIGN KEY(`reportsTo`) REFERENCES `employees` (`employeeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1; -- Use InnoDB engine and latin1 character set


-- Drop the 'customers' table if it exists before recreating it
DROP TABLE IF EXISTS customers;

-- Create the 'customers' table to store customer information
CREATE TABLE `customers`(
    -- Define customerID as an integer field with 4 digits, which cannot be null
    `customerID` INT(4),
    -- Define customerName as a varchar field, max length 30 characters, which cannot be null
    `customerName` VARCHAR(30) NOT NULL,
    
    -- Set customerID as the primary key for this table
    PRIMARY KEY(`customerID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Drop the 'contacts' table if it exists before recreating it
DROP TABLE IF EXISTS contacts;

-- Create the 'contacts' table to store contact information for each customer
CREATE TABLE contacts(
    -- Define contactID as an integer field with 4 digits, which cannot be null
    `contactID` INT(4), 
    -- Define contact first name as a varchar field, max length 20 characters
    `contactFirstName` VARCHAR (20),
    -- Define contact last name as a varchar field, max length 20 characters, can be null
    `contactLastName` VARCHAR (20) DEFAULT NULL,
    -- Define customerID as an integer that links to the 'customers' table, cannot be null
    `customerID` INT(4) NOT NULL,
    -- Define address as a varchar field, max length 30 characters, cannot be null
    `address` VARCHAR(30) NOT NULL,
    -- Define city as a varchar field, max length 20 characters, cannot be null
    `city` VARCHAR(20) NOT NULL,
    -- Define state as a varchar field, max length 15 characters, cannot be null
    `state` VARCHAR(15) NOT NULL,
    -- Define zip code as a varchar field, max length 10 characters, cannot be null
    `zipCode` VARCHAR(10) NOT NULL,
    -- Define phone number as a varchar field, max length 15 characters, cannot be null
    `phoneNumber` VARCHAR(15) NOT NULL,
    -- Define whether the contact is the billing contact (boolean value)
    `isBilling` BOOLEAN NOT NULL,
    
    -- Set contactID as the primary key for this table
    PRIMARY KEY(`contactID`),
    
    -- Create an index on customerID for faster lookups in the 'contacts' table
    KEY `customerID`(`customerID`),
    
    -- Define a foreign key constraint linking 'customerID' to 'customers' table
    CONSTRAINT `customerID1234` FOREIGN KEY(`customerID`) REFERENCES `customers`(`customerID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Drop the 'regions' table if it exists before recreating it
DROP TABLE IF EXISTS regions;

-- Create the 'regions' table with the state as the primary key
CREATE TABLE regions(
    -- Define employeeID as an integer field with 4 digits
    `employeeID` INT(4),
    -- Define state as a varchar field, max length 15 characters, cannot be null
    `state` VARCHAR(15) NOT NULL,
    
    -- Set state as the primary key to ensure it is unique for each region
    PRIMARY KEY (`state`),
    
    -- Create an index on employeeID for faster lookups
    KEY `employeeID`(`employeeID`),
    
    -- Define a foreign key constraint linking 'employeeID' to the 'employees' table
    CONSTRAINT `employeeID1235` FOREIGN KEY(`employeeID`) REFERENCES `employees`(`employeeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Drop the 'products' table if it exists before recreating it
DROP TABLE IF EXISTS products;

-- Create the 'products' table to store product information
CREATE TABLE products(
    -- Define partID as an integer field with 3 digits, cannot be null
    `partID` INT(3) NOT NULL,
    -- Define productDescription as a varchar field, max length 100 characters, cannot be null
    `productDescription` VARCHAR(100) NOT NULL,
    
    -- Set partID as the primary key for this table
    PRIMARY KEY(`partID`)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Drop the 'shippingMethods' table if it exists before recreating it
DROP TABLE IF EXISTS shippingMethods;

-- Create the 'shippingMethods' table to store shipping methods used for orders
CREATE TABLE shippingMethods(
    -- Define methodID as an integer field with 4 digits, cannot be null
    `methodID` INT(4) NOT NULL,
    -- Define carrier as an ENUM field with predefined values, cannot be null
    `carrier` ENUM('UPS','USPS','DHS','FOB') NOT NULL,
    -- Define shippingDesc as a varchar field, max length 50 characters, cannot be null
    `shippingDesc` VARCHAR(50) NOT NULL,
    
    -- Set methodID as the primary key for this table
    PRIMARY KEY(`methodID`)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Drop the 'orders' table if it exists before recreating it
DROP TABLE IF EXISTS orders;

-- Create the 'orders' table to store information about each order
CREATE TABLE orders(
    -- Define orderID as an integer field with 4 digits, cannot be null
    `orderID` INT(4) NOT NULL,
    -- Define customerID as an integer field that references the 'customers' table
    `customerID` INT(4),
    -- Define orderDate as a date field, which cannot be null
    `orderDate` DATE NOT NULL,
    -- Define contactID as an integer field that links to the 'contacts' table
    `contactID` INT(4),
    -- Define employeeID as an integer field that links to the 'employees' table
    `employeeID` INT(4),
    -- Define paymentDueDate as a date field, which cannot be null
    `paymentDueDate` DATE NOT NULL,
    -- Define projectedDeliveryDate as a date field, which cannot be null
    `projectedDeliveryDate` DATE NOT NULL,
    -- Define methodID as an integer field that links to the 'shippingMethods' table
    `methodID` INT(4),
    
