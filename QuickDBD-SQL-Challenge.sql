﻿DROP TABLE IF EXISTS Contacts, Category, Subcategory, Campaign CASCADE;

-- Create Contacts table
CREATE TABLE Contacts (
    contact_id INTEGER PRIMARY KEY NOT NULL,
    first_name VARCHAR(12) NOT NULL,
    last_name VARCHAR(13) NOT NULL,
    email VARCHAR(50) NOT NULL
);

-- Create Category table
CREATE TABLE Category (
    category_id VARCHAR(4) PRIMARY KEY NOT NULL,
    category VARCHAR(12) NOT NULL
);

-- Create Subcategory table
CREATE TABLE Subcategory (
    subcategory_id VARCHAR(6) PRIMARY KEY NOT NULL,
    subcategory VARCHAR(16) NOT NULL
);

-- Create Campaign table
CREATE TABLE Campaign (
    cf_id INTEGER PRIMARY KEY NOT NULL,
    contact_id INTEGER NOT NULL,
    company_name VARCHAR(30) NOT NULL,
    description VARCHAR(50) NOT NULL,
    goal INTEGER NOT NULL,
    pledged INTEGER NOT NULL,
    outcome VARCHAR(10) NOT NULL,
    backers_count INTEGER NOT NULL,
    country VARCHAR(2) NOT NULL,
    currency VARCHAR(3) NOT NULL,
    launch_date DATE NOT NULL,
    end_date DATE NOT NULL,
    category_id VARCHAR(4) NOT NULL,
    subcategory_id VARCHAR(6) NOT NULL,
	FOREIGN KEY (contact_id) REFERENCES Contacts(contact_id),
	FOREIGN KEY (category_id) REFERENCES Category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES Subcategory(subcategory_id)
);

-- Confirm tables are populated correctly
SELECT * FROM Contacts;
SELECT * FROM Category;
SELECT * FROM Subcategory;
SELECT * FROM Campaign;
