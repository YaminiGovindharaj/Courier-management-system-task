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

--1. list of customers --> here customers are meant to be the users

select UserID, cName as CustomerName, Email, ContactNumber, uAddress 
from  Courier_users;


--2.list all orders for a specific customer
 select couriersID from Couriers where ReceiverName ='Priya'

 select* from Couriers where SenderName = 'Priya';



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

  select * from Couriers 
where couriersStatus IN ('Pending', 'In Transit', 'Dispatched');


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

 select SenderName, COUNT(*) AS TotalPackages 
 from Couriers 
 group by SenderName;



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

  select  PaymentID, format(amount, 'c','en-us') from Payment where Amount> $50

  --14. Find the total number of couriers

  SELECT COUNT(CouriersID) AS TotalCouriers FROM Couriers;

  --DAY 5 TASKS



  --15. --Calculate the total revenue generated by each location 
 select L.LocationID, L.LocationName, 
 SUM(P.Amount) AS TotalRevenue from Locations L
 JOIN Payments P ON L.LocationID = P.LocationID
 group by L.LocationID, L.LocationName

  --16. Find the total number of couriers delivered to each location.

 select L.LocationID, L.LocationName, 
 COUNT(C.CouriersID) AS TotalDeliveredCouriers
 from Locations L
 JOIN Couriers C 
 ON L.LocationID = C.LocationID
 where C.couriersStatus = 'Delivered'
 group by L.LocationID, L.LocationName

 ---since locationid of the shows null 
 select * from Couriers where couriersStatus = 'Delivered';

  --17. Find the courier with the highest average delivery time: 

select datediff(day,deliverydate,
getdate())as deliverytime,
deliverydate from courier ;

--18. Find Locations with Total Payments Less Than a Certain Amount 


select L.LocationID, L.LocationName,
sum(P.Amount) AS TotalPayments
from Locations L
JOIN Payments P
on L.LocationID = P.LocationID
group by L.LocationID, L.LocationName
having SUM(P.Amount) < 200;

--19. Calculate Total Payments per Location 


select L.LocationID, L.LocationName, SUM(P.Amount) AS TotalPayments
from Locations L
JOIN Payments P ON L.LocationID = P.LocationID
group by L.LocationID, L.LocationName;

--20. Retrieve couriers who have received payments totaling more than $1000 in a specific location (LocationID = X):

select P.CourierID, SUM(P.Amount) AS TotalPayments
from Payments P
where P.LocationID = 2 ---as i checked from 1 to 10 there is no couriers receives such kind of payments
group by P.CourierID
having SUM(P.Amount) > 1000;

--since none of the couriers receivers such kind of payments, lets adjust values by inserting
insert into Payments (PaymentID, CourierID, LocationID, Amount, PaymentDate)
values (101, 5, 11, 1200.00, '2025-03-20');

select  CourierID, LocationID, SUM(Amount) AS TotalPayments from Payments
group by CourierID, LocationID having SUM(Amount) > 1000;

--21. Retrieve couriers who have received payments totaling more than $1000 after a certain date (PaymentDate > 'YYYY-MM-DD'):

-- --since none of the couriers receivers such kind of payments, lets adjust values by inserting
insert into Payments (PaymentID, CourierID, LocationID, Amount, PaymentDate)
values (101, 5, 3, 1200.00, '2024-01-01'); 

select P.CourierID, SUM(P.Amount) AS TotalPayments
from Payments P
where P.PaymentDate > '2024-01-01'
group by P.CourierID
having SUM(P.Amount) > 1000;

--22. Retrieve locations where the total amount received is more than $5000 before a certain date (PaymentDate > 'YYYY-MM-DD')  

insert into Payments (PaymentID, CourierID, LocationID, Amount, PaymentDate) values 
(11, 3, 1, 3000.00, '2025-03-01'),
(12, 4, 1, 2500.00, '2025-03-02');

select LocationID, SUM(Amount) AS TotalReceived
from Payments
where PaymentDate < '2025-03-10'
group by LocationID
having SUM(Amount) > 5000;


--23. Retrieve Payments with Courier Information 


select P.PaymentID, P.Amount, P.PaymentDate, C.CouriersID, C.TrackingNumber, C.couriersStatus
FROM Payments P
INNER JOIN Couriers C 
on P.CourierID = C.CouriersID;

select P.PaymentID, P.Amount, P.PaymentDate, C.CouriersID, C.TrackingNumber, C.couriersStatus
from Payments P
LEFT OUTER JOIN Couriers C
ON P.CourierID = C.CouriersID;

--24. Retrieve Payments with Location Information 
select P.PaymentID, P.Amount, P.PaymentDate, 
L.LocationID, L.LocationName, L.Address
from Payments P
JOIN Locations L
ON P.LocationID = L.LocationID;


--25. Retrieve Payments with Courier and Location Information  

select  P.PaymentID, P.Amount,  P.PaymentDate,  C.CouriersID, C.SenderName AS CourierSender,  C.ReceiverName AS CourierReceiver, L.LocationID, L.LocationName, L.Address
from Payments P
JOIN Couriers C ON 
P.CourierID = C.CouriersID
JOIN Locations L 
ON P.LocationID = L.LocationID;

--26. List all payments with courier details  


select  P.PaymentID,  P.Amount, P.PaymentDate, C.CouriersID, C.SenderName AS CourierSender, C.ReceiverName AS CourierReceiver, C.TrackingNumber, C.couriersStatus
from Payments P
JOIN Couriers C 
ON P.CourierID = C.CouriersID;

--27. Total payments received for each courier  

select  C.CouriersID,  C.TrackingNumber,  C.SenderName, C.ReceiverName, 
sum(P.Amount) AS TotalPaymentsReceived
from Payments P
JOIN Couriers C
on P.CourierID = C.CouriersID
group by C.CouriersID, C.TrackingNumber, C.SenderName, C.ReceiverName

--28. List payments made on a specific date

select PaymentID,CourierID,LocationID,Amount, PaymentDate
from Payments
where PaymentDate = '2025-03-15';

--29. Get Courier Information for Each Payment 

select P.PaymentID,P.Amount,P.PaymentDate,C.CouriersID,C.SenderName,C.ReceiverName,C.TrackingNumber,C.couriersStatus
from Payments P
join Couriers C
on P.CourierID = C.CouriersID;

--30. Get Payment Details with Location 


select P.PaymentID,P.Amount,P.PaymentDate,L.LocationID,L.LocationName,L.Address
from Payments P
JOIN Locations L
on P.LocationID = L.LocationID;

--31. Calculating Total Payments for Each Courier


select C.CouriersID,C.TrackingNumber, 
SUM(P.Amount) AS TotalPayments
from Payments P
JOIN Couriers C
on P.CourierID = C.CouriersID
group by C.CouriersID, C.TrackingNumber

--32. List Payments Within a Date Range

select *from Payments
where PaymentDate BETWEEN '2025-03-01' AND '2025-03-20';

--33. Retrieve a list of all users and their corresponding courier records, including cases where there are no matches on either side 

select U.UserID,U.cName AS UserName, C.CouriersID,C.TrackingNumber,C.couriersStatus,C.DeliveryDate
from Courier_users U
LEFT JOIN Couriers C 
on U.cName = C.SenderName;

--34. Retrieve a list of all couriers and their corresponding services, including cases where there are no matches on either side 

select C.CouriersID,C.TrackingNumber,C.couriersStatus,C.DeliveryDate,CS.ServiceID,CS.ServiceName,CS.Cost
from Couriers C
INNER JOIN CouriersServices CS 
on C.CouriersID = CS.ServiceID;

--35. Retrieve a list of all employees and their corresponding payments, including cases where there are no matches on either side  

select E.EmployeeID,E.EName,E.Email,E.ContactNumber,E.ERole,E.Salary,P.PaymentID,P.CourierID,P.LocationID,P.Amount,P.PaymentDate
from Employees E
INNER JOIN Payments P 
on E.EmployeeID = P.CourierID;

--36. List all users and all courier services, showing all possible combinations.

select U.SenderName AS UserName,U.SenderAddress,CS.ServiceID,CS.ServiceName,CS.Cost
from Couriers U
CROSS JOIN CouriersServices CS;

--37. List all employees and all locations, showing all possible combinations:

select E.EmployeeID,E.EName AS EmployeeName,E.ERole,L.LocationID,L.LocationName,L.Address
from Employees E
CROSS JOIN Locations L;

--38. Retrieve a list of couriers and their corresponding sender information (if available) 

select C.CouriersID,C.TrackingNumber,C.couriersStatus,C.DeliveryDate,C.SenderName,CU.UserID AS SenderID, CU.cName AS SenderFullName, CU.Email AS SenderEmail, 
CU.ContactNumber AS SenderContact,CU.uAddress AS SenderAddress
from Couriers C
LEFT JOIN Courier_users CU 
on C.SenderName = CU.cName;

--39. Retrieve a list of couriers and their corresponding receiver information (if available):

select C.CouriersID,C.TrackingNumber,C.couriersStatus,C.DeliveryDate,C.ReceiverName, 
CU.UserID AS ReceiverID,CU.cName AS ReceiverFullName, CU.Email AS ReceiverEmail, CU.ContactNumber AS ReceiverContact, CU.uAddress AS ReceiverAddress
from Couriers C
LEFT JOIN Courier_users CU 
on C.ReceiverName = CU.cName;

--40. Retrieve a list of couriers along with the courier service details (if available): 

select C.CouriersID,C.TrackingNumber,C.couriersStatus, C.DeliveryDate, CS.ServiceID,CS.ServiceName,CS.Cost
from Couriers C
LEFT JOIN CouriersServices CS 
on C.CouriersID = CS.ServiceID;


--41. Retrieve a list of employees and the number of couriers assigned to each employee:  

select E.EmployeeID, E.EName AS EmployeeName, 
count(C.CourierID) AS TotalCouriersAssigned
from Employees E
LEFT JOIN Courier C ON E.EmployeeID = C.CourierID 
group by E.EmployeeID, E.EName


 --42. Retrieve a list of locations and the total payment amount received at each location: 

select L.LocationID, L.LocationName, 
COALESCE(SUM(P.Amount), 0) AS TotalPayments
from Locations L
LEFT JOIN Payments P 
on L.LocationID = P.LocationID
group by L.LocationID, L.LocationName

--43. Retrieve all couriers sent by the same sender (based on SenderName). 

select * from Couriers where SenderName = 'Yamini';

--44. List all employees who share the same role.

select ERole, EName from Employees order by ERole;

select ERole, STRING_AGG(EName, ', ') AS Employees, COUNT(*) AS TotalEmployees from Employees group by ERole having COUNT(*) > 1

--45. Retrieve all payments made for couriers sent from the same location.

select cast(C.SenderAddress as varchar(255)) AS SenderLocation, 
count(P.PaymentID) AS TotalPayments, 
sum(P.Amount) AS TotalAmountPaid
from Payments P
JOIN Couriers C ON P.CourierID = C.CouriersID
group by cast(C.SenderAddress as varchar(255))

--46. Retrieve all couriers sent from the same location (based on SenderAddress).

select cast(SenderAddress as varchar(255)) AS SenderLocation, 
 count(CouriersID) AS TotalCouriers
from Couriers
group by CAST(SenderAddress as varchar(255));

--47. List employees and the number of couriers they have delivered:

select couriersStatus, COUNT(CouriersID) AS TotalCouriers from Couriers group by couriersStatus;


--48. Find couriers that were paid an amount greater than the cost of their respective courier services 

select P.CourierID, P.Amount AS PaymentAmount from Payments P where P.Amount > 100;


--49. Find couriers that have a weight greater than the average weight of all couriers

select * from Couriers where Weight  > (SELECT AVG(Weight) FROM Couriers);

--50. Find the names of all employees who have a salary greater than the average salary: 

select EName from Employees WHERE Salary > (SELECT AVG(Salary) FROM Employees);

--51. Find the total cost of all courier services where the cost is less than the maximum cost

select SUM(Cost) AS TotalCost from CourierServices where Cost < (SELECT MAX(Cost) FROM CourierServices);

--52.Find all couriers that have been paid for 

select C.*from Couriers C where EXISTS (select 1 from Payments P where P.CourierID = C.CouriersID);

--53. Find the locations where the maximum payment amount was made 

select L.LocationID, L.LocationName, P.Amount from Payments P
JOIN Locations L ON P.LocationID = L.LocationID
where P.Amount = (SELECT MAX(Amount) FROM Payments);


--54. Find all couriers whose weight is greater than the weight of all couriers sent by a specific sender (e.g., 'SenderName'): 

select * from Couriers where weight > ALL (SELECT Weight FROM Couriers WHERE SenderName = 'Amir');




 




















