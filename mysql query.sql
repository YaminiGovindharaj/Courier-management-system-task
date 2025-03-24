-- Creating Database
CREATE DATABASE CourierManagement;
USE CourierManagement;

-- Creating User Table
CREATE TABLE Courier_users (
    UserID int constraint pk_users_id primary key,
    cName VARCHAR(255),
    Email VARCHAR(255) UNIQUE,
    uPassword VARCHAR(255),
    ContactNumber VARCHAR(20),
    uAddress TEXT
);


-- Inserting values into User Table
INSERT INTO Courier_users VALUES
(1, 'yamini', 'yamini@gmail.com', 'pass123', '9876543210', '45-Main Street, tirupattur'),
(2, 'Priya ', 'priya@gmail.com', 'securePass', '8765432109', '22-Greenway, vellore'),
(3, 'Amir', 'amit@gmail.com', 'abc123', '7654321098', '10-Park Lane, ambur'),
(4, 'Sureshini ', 'sureshini@gmail.com', 'suresh@123', '9988776655', '55-Market Road, vaniyambadi'),
(5, 'Anita ', 'anita@gmail.com', 'anita@456', '9877665544', '78-Highway, Bangalore'),
(6, 'Kavita', 'kavita@gmail.com', 'kavita@789', '9564783210', '23-Central Street, arakonam'),
(7, 'manoj', 'manoj@gmail.com', 'manoj@321', '8123456789', '99-Red Avenue, Hyderabad'),
(8, 'pooja', 'pooja@gmail.com', 'pooja@654', '8899776655', '34-Bridge Road, Ahmedabad'),
(9, 'Vicas ', 'vicas@gmail.com', 'vikas@789', '9876234567', '12-Lakeview,'),
(10, 'Neha ', 'neha@gmail.com', 'neha@963', '7654890123', '65-Garden Colony, Jaipur');


--select statement
select*from Courier_users;

SELECT * 
FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS 
WHERE TABLE_NAME = 'Courier_users';


-- Creating Courier Table
CREATE TABLE Couriers (
    CouriersID int constraint pk_courier_id primary key,
    SenderName VARCHAR(255),
    SenderAddress TEXT,
    ReceiverName VARCHAR(255),
    ReceiverAddress TEXT,
    Weight DECIMAL(5,2),
    couriersStatus VARCHAR(50),
    TrackingNumber VARCHAR(20) UNIQUE,
    DeliveryDate DATE
);
-- Inserting values into Courier Table
INSERT INTO Couriers VALUES
(1, 'Yamini', '45-Main Street, Tirupattur', 'Priya', '22-Greenway, Vellore', 2.5, 'In Transit', 'TRK001', '2025-03-25'),
(2, 'Priya', '22-Greenway, Vellore', 'Amir', '10-Park Lane, Ambur', 1.2, 'Delivered', 'TRK002', '2025-03-20'),
(3, 'Amir', '10-Park Lane, Ambur', 'Sureshini', '55-Market Road, Vaniyambadi', 3.0, 'Pending', 'TRK003', NULL),
(4, 'Sureshini', '55-Market Road, Vaniyambadi', 'Anita', '78-Highway, Bangalore', 4.5, 'In Transit', 'TRK004', '2025-03-27'),
(5, 'Anita', '78-Highway, Bangalore', 'Kavita', '23-Central Street, Arakonam', 1.8, 'Delivered', 'TRK005', '2025-03-22'),
(6, 'Kavita', '23-Central Street, Arakonam', 'Manoj', '99-Red Avenue, Hyderabad', 2.7, 'Dispatched', 'TRK006', NULL),
(7, 'Manoj', '99-Red Avenue, Hyderabad', 'Pooja', '34-Bridge Road, Ahmedabad', 5.2, 'Pending', 'TRK007', NULL),
(8, 'Pooja', '34-Bridge Road, Ahmedabad', 'Vikas', '12-Lakeview, Mumbai', 3.8, 'Delivered', 'TRK008', '2025-03-23'),
(9, 'Vikas', '12-Lakeview, Mumbai', 'Neha', '65-Garden Colony, Jaipur', 2.0, 'In Transit', 'TRK009', '2025-03-26'),
(10, 'Neha', '65-Garden Colony, Jaipur', 'Yamini', '45-Main Street, Tirupattur', 4.0, 'Pending', 'TRK010', NULL);

-- Select statement to verify inserted data
SELECT * FROM Couriers;
SELECT * 
FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS 
WHERE TABLE_NAME = 'Couriers';

-- courierservices table

CREATE TABLE CouriersServices (
    ServiceID int constraint pk_csid primary key,
    ServiceName VARCHAR(100),
    Cost DECIMAL(8,2) ,
);
--inserting values into the couriersServices table

INSERT INTO CouriersServices (ServiceID, ServiceName, Cost) VALUES
(1, 'Standard Delivery', 10.00),
(2, 'Express Delivery', 25.00),
(3, 'Same Day Delivery', 50.00),
(4, 'Overnight Shipping', 40.00),
(5, 'International Shipping', 100.00),
(6, 'Local Pickup', 5.00),
(7, 'Heavy Freight', 150.00),
(8, 'Document Courier', 8.00),
(9, 'Fragile Item Delivery', 20.00),
(10, 'Bulk Shipping', 75.00);

select* from CouriersServices
SELECT * 
FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS 
WHERE TABLE_NAME = 'CouriersServices';


--creating table for employees
CREATE TABLE Employees (
    EmployeeID int  constraint pk_eid primary key,
    EName VARCHAR(255) ,
    Email VARCHAR(255) UNIQUE ,
    ContactNumber VARCHAR(20),
    ERole VARCHAR(50),
    Salary DECIMAL(10,2) 
);
-- inserting values into employees table 
INSERT INTO Employees (EmployeeID, EName, Email, ContactNumber, ERole, Salary) VALUES
(1, 'Michael Johnson', 'michael@example.com', '5551234567', 'Manager', 50000.00),
(2, 'Sarah Brown', 'sarah@example.com', '5557654321', 'Courier', 35000.00),
(3, 'David Clark', 'david@example.com', '5559876543', 'Courier', 32000.00),
(4, 'Emma Rodriguez', 'emma@example.com', '5556789012', 'Dispatcher', 40000.00),
(5, 'James White', 'james@example.com', '5553456789', 'Warehouse Staff', 30000.00),
(6, 'Sophia Green', 'sophia@example.com', '5552345678', 'Admin', 45000.00),
(7, 'Olivia Hall', 'olivia@example.com', '5551239876', 'Finance', 48000.00),
(8, 'Liam Young', 'liam@example.com', '5554567890', 'Customer Support', 35000.00),
(9, 'Ethan Scott', 'ethan@example.com', '5557890123', 'Operations', 55000.00),
(10, 'Ava King', 'ava@example.com', '5555678901', 'HR', 42000.00);

select*from Employees
SELECT * 
FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS 
WHERE TABLE_NAME = 'employees';

--creating location table
CREATE TABLE Locations (
    LocationID int constraint pk_lid primary key,
    LocationName VARCHAR(100),
    Address TEXT ,
);
-- inserting values into location table
INSERT INTO Locations (LocationID, LocationName, Address) VALUES
(1, 'New York Hub', '123 Main St, New York, NY 10001'),
(2, 'Los Angeles Center', '456 Sunset Blvd, Los Angeles, CA 90028'),
(3, 'Chicago Warehouse', '789 Lake Shore Dr, Chicago, IL 60601'),
(4, 'Houston Depot', '101 Texas Ave, Houston, TX 77002'),
(5, 'Miami Station', '202 Ocean Dr, Miami, FL 33139'),
(6, 'San Francisco Branch', '303 Golden Gate Ave, San Francisco, CA 94102'),
(7, 'Atlanta Sorting', '404 Peachtree St, Atlanta, GA 30303'),
(8, 'Seattle Facility', '505 Rainier Ave, Seattle, WA 98101'),
(9, 'Dallas Distribution', '606 Elm St, Dallas, TX 75201'),
(10, 'Boston Office', '707 Beacon St, Boston, MA 02108');

select*from Locations
SELECT * 
FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS 
WHERE TABLE_NAME = 'locations';


--creating payment table
CREATE TABLE Payments (
    PaymentID int constraint pk_paymentid primary key,
    CourierID INT,
    LocationID INT,
    Amount DECIMAL(10,2),
    PaymentDate DATE,
    FOREIGN KEY (CourierID) REFERENCES Courier(CourierID),
    FOREIGN KEY (LocationID) REFERENCES Location(LocationID)
);
-- inserting values into the payment table
INSERT INTO Payments (PaymentID, CourierID, LocationID, Amount, PaymentDate) VALUES
(1, 1, 3, 50.00, '2025-03-10'),
(2, 2, 5, 100.00, '2025-03-11'),
(3, 3, 1, 75.00, '2025-03-12'),
(4, 4, 7, 120.00, '2025-03-13'),
(5, 5, 2, 60.00, '2025-03-14'),
(6, 6, 8, 200.00, '2025-03-15'),
(7, 7, 4, 80.00, '2025-03-16'),
(8, 8, 6, 95.00, '2025-03-17'),
(9, 9, 9, 150.00, '2025-03-18'),
(10, 10, 10, 110.00, '2025-03-19');

select*from Payments
SELECT * 
FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS 
WHERE TABLE_NAME = 'Payments';

---- day 4 task on queries
--1. list of customers - here customers are meant to be the users
select  cName from Courier_users

--2.list all orders for a specific customer
 select couriersID from Couriers where ReceiverName ='Priya'

 --3.list all couriers( all the couriers by listed out by simple statement, by using ascending order or descending order
 select couriersID  from Couriers
 select couriersID  from Couriers order by CouriersID ASC
 select couriersID  from Couriers order by CouriersID DESC
 
 --4.list all packages for a specific orders
  select Weight,  CouriersID from Couriers where CouriersID = 1
  select Weight,  CouriersID from Couriers where CouriersID = 10
  select Weight,  CouriersID from Couriers where CouriersID = 13
  select Weight,  CouriersID from Couriers where CouriersID = 4
  select Weight,  CouriersID from Couriers where CouriersID = 6
  select Weight,  CouriersID from Couriers where CouriersID = 4 
   --likewise we can find the other specific orders and here couriersID 13 is not there in the table hence that result coloumn looks empty

   --5.list all deliveries for a specific courier
   select  ServiceName from CouriersServices 
   where ServiceID = 10;
   select  ServiceName from CouriersServices 
   where ServiceID = 9;
  
  --6. list all undelivered packages
  select CouriersID, ReceiverName, couriersStatus from
  Couriers
  where couriersStatus = 'pending'

  --7.list all packages that are scheduled for delivery today

  select CouriersID from Couriers 
  where DeliveryDate=GETDATE();

  --8.list all packages with a specific status
  select CouriersID, ReceiverName, couriersStatus from Couriers where couriersStatus = 'In Transit'

  --9.calculate the total number of packages for each courier
  select COUNT(CouriersID) 
  from Couriers
  where CouriersID 
  between 1 and 4

   select COUNT(CouriersID) 
  from Couriers
  where CouriersID 
  between 7 and 10

  --10.find the avg delivery time for each courier// delivery time cant be calculated because the delivery details contains delivery date only) instead we can calculate weight
  select AVG(weight) from Couriers

  --11.list all the packages for a specific weight range
  select CouriersID , weight from Couriers 
  where Weight between 1.8 and 5.2

  select CouriersID , weight from Couriers 
  where Weight between 2.0and 4.8

  --12. retrieve employees whose name contains john
  select EName from Employees where EName = 'john'
  --the result looks empty because no name is with john

  --13.reterieve all courier records with payment > $50

  select  PaymentID, FORMAT(amount, 'c','en-us') from Payment where Amount> $50