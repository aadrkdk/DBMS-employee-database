-- Table to store employee information
CREATE TABLE tbl_Employee (
    employee_name VARCHAR(255) NOT NULL, -- Employee's name
    street VARCHAR(255) NOT NULL, -- Employee's street address
    city VARCHAR(255) NOT NULL, -- Employee's city of residence
    PRIMARY KEY(employee_name) -- Primary key constraint on employee_name column
);

-- Table to store employee employment details
CREATE TABLE tbl_Works (
    employee_name VARCHAR(255) NOT NULL, -- Employee's name (foreign key referencing tbl_Employee)
    FOREIGN KEY (employee_name) REFERENCES tbl_Employee(employee_name), -- Foreign key constraint
    company_name VARCHAR(255), -- Name of the company where the employee works
    salary DECIMAL(10, 2) -- Employee's salary at the company
);

-- Table to store company information
CREATE TABLE tbl_Company (
    company_name VARCHAR(255) NOT NULL, -- Name of the company
    city VARCHAR(255), -- City where the company is located
    PRIMARY KEY(company_name) -- Primary key constraint on company_name column
);

-- Table to store employee-manager relationships
CREATE TABLE tbl_Manages (
    employee_name VARCHAR(255) NOT NULL, -- Employee's name (foreign key referencing tbl_Employee)
    FOREIGN KEY (employee_name) REFERENCES tbl_Employee(employee_name), -- Foreign key constraint
    manager_name VARCHAR(255) -- Name of the manager who manages the employee
);

