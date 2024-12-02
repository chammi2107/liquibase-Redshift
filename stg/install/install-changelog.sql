--liquibase formatted sql

-- changeset DP:1
-- Purpose: Create the initial example_table with primary key and constraints
CREATE TABLE install.liquibase_table (
    id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP
);


-- changeset sachin:2
-- Purpose: Add a new table
CREATE TABLE install.liquibase_table (
    id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);
