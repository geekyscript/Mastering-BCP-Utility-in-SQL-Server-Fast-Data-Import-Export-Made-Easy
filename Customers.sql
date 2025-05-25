-- 1. Create the database
CREATE DATABASE MyDatabase;
GO

-- 2. Use the newly created database
USE MyDatabase;
GO

-- 3. Create the Customers table
CREATE TABLE Customers (
    CustomerID INT IDENTITY(1,1) PRIMARY KEY,
    FirstName NVARCHAR(50) NOT NULL,
    LastName NVARCHAR(50) NOT NULL,
    Email NVARCHAR(100) UNIQUE,
    PhoneNumber NVARCHAR(20),
    City NVARCHAR(50),
    CreatedDate DATETIME DEFAULT GETDATE()
);
GO

-- 4. Insert 20 sample records
INSERT INTO Customers (FirstName, LastName, Email, PhoneNumber, City)
VALUES 
('John', 'Doe', 'john.doe@example.com', '123-456-7890', 'New York'),
('Jane', 'Smith', 'jane.smith@example.com', '234-567-8901', 'Los Angeles'),
('Michael', 'Johnson', 'michael.j@example.com', '345-678-9012', 'Chicago'),
('Emily', 'Davis', 'emily.d@example.com', '456-789-0123', 'Houston'),
('William', 'Brown', 'william.b@example.com', '567-890-1234', 'Phoenix'),
('Olivia', 'Garcia', 'olivia.g@example.com', '678-901-2345', 'Philadelphia'),
('James', 'Martinez', 'james.m@example.com', '789-012-3456', 'San Antonio'),
('Ava', 'Rodriguez', 'ava.r@example.com', '890-123-4567', 'San Diego'),
('Benjamin', 'Wilson', 'ben.w@example.com', '901-234-5678', 'Dallas'),
('Sophia', 'Anderson', 'sophia.a@example.com', '012-345-6789', 'San Jose'),
('Lucas', 'Thomas', 'lucas.t@example.com', '111-222-3333', 'Austin'),
('Mia', 'Taylor', 'mia.t@example.com', '222-333-4444', 'Jacksonville'),
('Henry', 'Moore', 'henry.m@example.com', '333-444-5555', 'Fort Worth'),
('Amelia', 'Jackson', 'amelia.j@example.com', '444-555-6666', 'Columbus'),
('Alexander', 'White', 'alex.w@example.com', '555-666-7777', 'Charlotte'),
('Isabella', 'Harris', 'isa.h@example.com', '666-777-8888', 'San Francisco'),
('Daniel', 'Clark', 'daniel.c@example.com', '777-888-9999', 'Indianapolis'),
('Charlotte', 'Lewis', 'charlotte.l@example.com', '888-999-0000', 'Seattle'),
('Matthew', 'Lee', 'matt.l@example.com', '999-000-1111', 'Denver'),
('Evelyn', 'Walker', 'eve.w@example.com', '000-111-2222', 'Boston');
GO

Select * from Customers;

CREATE TABLE Employee (
    EmployeeID INT IDENTITY(1,1) PRIMARY KEY,
    FirstName NVARCHAR(50) NOT NULL,
    LastName NVARCHAR(50) NOT NULL,
    Email NVARCHAR(100) UNIQUE,
    PhoneNumber NVARCHAR(20),
    City NVARCHAR(50)
);
GO