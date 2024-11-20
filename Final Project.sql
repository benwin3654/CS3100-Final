DROP SCHEMA IF EXISTS ItSupply;
CREATE SCHEMA ItSupply;
USE ItSupply;

CREATE TABLE employees(
	employeeID INT(4),
    firstName VARCHAR(20),
    lastName VARCHAR(20),
    gender ENUM('M','F'),
    title VARCHAR(20),
    streetAddress VARCHAR(30),
    city VARCHAR(20),
    state VARCHAR(15),
    zipCode VARCHAR(10),
    phoneNumber VARCHAR(15),
    reportsTo INT(4)
);

SELECT * FROM ItSupply.employees;
