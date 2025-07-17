-- ---------------------------------------------------------------
-- Ingrid Alin Nilsson 27-3-07
-- Schema definition starts here
-- ---------------------------------------------------------------

-- CREATE DATABASE company;
-- USE company;

DROP TABLE IF EXISTS sale CASCADE;
DROP TABLE IF EXISTS supply CASCADE;
DROP TABLE IF EXISTS debit CASCADE;
DROP TABLE IF EXISTS parts CASCADE;
DROP TABLE IF EXISTS item CASCADE;
DROP TABLE IF EXISTS supplier CASCADE;
DROP TABLE IF EXISTS dept CASCADE;
DROP TABLE IF EXISTS store CASCADE;
DROP TABLE IF EXISTS city CASCADE;
DROP TABLE IF EXISTS employee CASCADE;
CREATE TABLE employee(
	pk_employee INTEGER,
	CONSTRAINT pk_employee PRIMARY KEY (pk_employee),
	name VARCHAR(20),
	salary INTEGER,
	manager INTEGER,
	birthyear INTEGER,
	startyear INTEGER) ENGINE=InnoDB;
CREATE TABLE dept(
	pk_dept INTEGER,
	CONSTRAINT pk_dept PRIMARY KEY (pk_dept),
	name VARCHAR(20),
	store INTEGER NOT NULL,
	floor INTEGER,
	manager INTEGER) ENGINE=InnoDB;

CREATE TABLE item(
	pk_item INTEGER,
	CONSTRAINT pk_item PRIMARY KEY (pk_item),
        name VARCHAR(20),
	dept INTEGER NOT NULL,
        price INTEGER,
	qoh INTEGER,
        supplier INTEGER NOT NULL) ENGINE=InnoDB;

CREATE TABLE parts(
	pk_parts INTEGER,
	CONSTRAINT pk_parts PRIMARY KEY (pk_parts),
	name VARCHAR(20),
	color VARCHAR(8),
	weight INTEGER,
	qoh INTEGER) ENGINE=InnoDB;

CREATE TABLE supply(
	supplier INTEGER NOT NULL,
	part INTEGER NOT NULL,
	shipdate DATE NOT NULL,
	quan INTEGER,
	CONSTRAINT pk_supply PRIMARY KEY (supplier, part, shipdate)) ENGINE=InnoDB;

CREATE TABLE sale(
	debit INTEGER NOT NULL,
	item INTEGER NOT NULL,
	quantity INTEGER,
	CONSTRAINT pk_sale PRIMARY KEY (debit, item)) ENGINE=InnoDB;

CREATE TABLE debit(
	pk_debit INTEGER,
	CONSTRAINT pk_debit PRIMARY KEY (pk_debit),
	sdate DATE NOT NULL,
	employee INTEGER NOT NULL,
	account INTEGER NOT NULL) ENGINE=InnoDB;

CREATE TABLE city(
	name VARCHAR(15) NOT NULL,
	state VARCHAR(6)) ENGINE=InnoDB;

ALTER TABLE city add index (name);
ALTER TABLE city add primary key (name);


CREATE TABLE store(
	pk_store INTEGER,
	CONSTRAINT pk_store PRIMARY KEY (pk_store),
	city VARCHAR(15) NOT NULL) ENGINE=InnoDB;

CREATE TABLE supplier(
	pk_supplier INTEGER,
	CONSTRAINT pk_supplier PRIMARY KEY (pk_supplier),
	name VARCHAR(20),
	city VARCHAR(20) NOT NULL) ENGINE=InnoDB;


-- ---------------------------------------------------------------

-- ---------------------------------------------------------------
-- Add foreign keys 

ALTER TABLE dept
	ADD CONSTRAINT fk_dept_store 
	FOREIGN KEY (store) 
	REFERENCES store (pk_store),
	ADD CONSTRAINT fk_dept_employee
	FOREIGN KEY (manager) 
	REFERENCES employee (pk_employee) 
	ON DELETE SET NULL;

ALTER TABLE item
	ADD CONSTRAINT fk_item_dept
	FOREIGN KEY (dept) 
	REFERENCES dept (pk_dept),
	ADD CONSTRAINT fk_item_supplier
	FOREIGN KEY (supplier)
	REFERENCES supplier (pk_supplier);

ALTER TABLE supply
	ADD CONSTRAINT fk_supply_supplier
	FOREIGN KEY (supplier)
	REFERENCES supplier (pk_supplier),
	ADD CONSTRAINT fk_supply_parts
 	FOREIGN KEY (part)
	REFERENCES parts (pk_parts);

ALTER TABLE sale
	ADD CONSTRAINT fk_sale_item
	FOREIGN KEY (item) 
	REFERENCES item (pk_item),
	ADD CONSTRAINT fk_sale_debit
	FOREIGN KEY (debit)
	REFERENCES debit(pk_debit);

-- implies that a debit/transaction must be created before a sale record.

ALTER TABLE debit
	ADD CONSTRAINT fk_debit_employee
	FOREIGN KEY (employee)
	REFERENCES employee (pk_employee);

ALTER TABLE store
	ADD CONSTRAINT fk_store_city
	FOREIGN KEY (city) 
	REFERENCES city (name);

ALTER TABLE supplier
	ADD CONSTRAINT fk_supplier_city
	FOREIGN KEY (city)
	REFERENCES city (name);

ALTER TABLE employee
	ADD CONSTRAINT fk_employee_manager
	FOREIGN KEY (manager)
	REFERENCES employee (pk_employee)
	ON DELETE SET NULL;

SHOW TABLES;
