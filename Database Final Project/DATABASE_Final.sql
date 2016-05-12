-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 12, 2016 at 04:40 AM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 7.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: Project
--

-- --------------------------------------------------------

--
-- Stand-in structure for view ch
--
CREATE TABLE ch (
CustomerID integer(11)
,LastName text
,FirstName text
,address text
,email text
);

-- --------------------------------------------------------

--
-- Table structure for table Customers
--

CREATE TABLE Customers (
  CustomerID integer(11) NOT NULL,
  LastName text NOT NULL,
  FirstName text NOT NULL,
  Address text NOT NULL,
  ZipCode integer(11) NOT NULL,
  Email text NOT NULL,
  Phone text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table Customers
--

INSERT integerO Customers (CustomerID, LastName, FirstName, Address, ZipCode, Email, Phone) VALUES
(1, 'Shmurda', 'Bobby', '911 Flatbush', 10501, 'bobby.shmurda.49@gmail.com', '84598322932'),
(2, 'Keef', 'Chief', '66 Chicago Ave', 19200, 'chief.keef13@gmail.com', '3873985598'),
(3, 'Lamar', 'Kenderick', '66 Sainteger Monica', 10043, 'kendrick.Lamar2@gmail.com', '9234358853'),
(4, 'Montana', 'French', '68 Gun Hill Road', 10043, 'french.montana9@gmail.com', '9219828834'),
(5, 'Ruiz', 'David', '133 Broadway Ave', 10030, 'david.ruiz1@gmail.com', '3479834992'),
(6, 'Mill', 'MIll', '233 Troy Ave', 10320, 'meek.mill1@gmail.com', '3472329321'),
(7, 'Snupe', 'Lil', '233 Troy Ave', 10320, 'lil.snupe1@gmail.com', '3479034832'),
(15, 'Visa Master Card', '', 'address', 0, '', ''),
(16, 'Visa Master Card', '', 'address', 0, '', ''),
(17, 'American Express', '', 'address', 0, '', ''),
(18, 'American Express', '', 'address', 0, '', ''),
(19, 'Paypal', '', 'address', 0, '', ''),
(20, 'Visa Mastercard', '', 'address', 0, '', ''),
(21, 'Visa MasterCard', '', 'address', 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table Department
--

CREATE TABLE Department (
  DepartmentID integer(11) NOT NULL,
  Location text NOT NULL,
  Description text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table Department
--

INSERT integerO Department (DepartmentID, Location, Description) VALUES
(1, 'Company', 'IT Department'),
(2, '233 Troy Ave', 'Independent'),
(3, 'Company', 'Human Recources'),
(4, 'Company', 'Financial'),
(5, 'Customers', 'Independent'),
(6, 'Company', 'Executive');

-- --------------------------------------------------------

--
-- Table structure for table Diss
--

CREATE TABLE Diss (
  ShipperID integer(11) NOT NULL,
  CompanyName text NOT NULL,
  TrackNumber text NOT NULL,
  PhoneNumber text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table Diss
--

INSERT integerO Diss (ShipperID, CompanyName, TrackNumber, PhoneNumber) VALUES
(1, 'UPS', '3OANPFNAS', '84598322932'),
(2, 'UPS', '5OSJONDF4', '3873985598'),
(3, 'UPS', '3UISDUNI96', '92343558853'),
(4, 'UPS', '5ISNROEM65', '3479834992'),
(5, 'UPS', '4JZIBASOIU5', '3479034832'),
(6, 'UPS', '7BBAULID9', '9219828834');

-- --------------------------------------------------------

--
-- Table structure for table Employee
--

CREATE TABLE Employee (
  EmployeeID integer(11) NOT NULL,
  Type text NOT NULL,
  Address text NOT NULL,
  ZipCode integer(11) NOT NULL,
  Email text NOT NULL,
  Phone text NOT NULL,
  CreateOn date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table Employee
--

INSERT integerO Employee (EmployeeID, Type, Address, ZipCode, Email, Phone, CreateOn) VALUES
(10, 'Executive', '5342 Kings Ave', 10045, 'Andrew65@mope.com', '646-904-3112', '2016-11-04'),
(11, 'Executive', '5342 Main Ave', 12821, 'esmeralda154@mope.com', '646-580-5574', '2016-08-05'),
(12, 'executive', '2333 valentine ave', 10458, 'bigboot69@hotmail.com', '91778878', '0000-00-00'),
(13, 'Tehnology', '1295 Blind St', 10025, 'Juancito_3@mope.com', '646-683-9949', '2015-03-23'),
(14, 'Executive', '3023 Fabuloso Ave', 10021, 'Luis09@mope.com', '646-245-9220', '2016-05-15'),
(15, 'executive', '3409 Maggie St', 10029, 'Orlanie98@mope.com', '347-982-9821', '2016-05-16'),
(16, 'Executive', '219 Monk Presserve', 10027, 'Nelson6320@mope.com', '347-924-0543', '2016-07-17');

-- --------------------------------------------------------

--
-- Table structure for table OrderDetails
--

CREATE TABLE OrderDetails (
  OrderDetailID integer(11) NOT NULL,
  OrderID integer(11) NOT NULL,
  customerName text NOT NULL,
  DeviceName text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table OrderDetails
--

INSERT integerO OrderDetails (OrderDetailID, OrderID, customerName, DeviceName) VALUES
(1, 10001, 'Keving Bruce', 'Macbook'),
(2, 10002, 'Talissa Tejada', 'Iphone5c'),
(3, 10045, 'Bernie Sanders', 'Lenovo'),
(4, 10046, 'Donald Trump', 'Windows'),
(5, 10047, 'Shawn Michaels', 'Sidekick 08'),
(6, 10047, 'KIna Fuente', 'Blackberry Peal');

-- --------------------------------------------------------

--
-- Table structure for table Payment
--

CREATE TABLE Payment (
  PaymentID integer(11) NOT NULL,
  Customers text NOT NULL,
  PaymentType text NOT NULL,
  Department text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table Payment
--

INSERT integerO Payment (PaymentID, Customers, PaymentType, Department) VALUES
(1, 'Bobby Shmurda', 'Visa Master Card', 'Independent'),
(2, 'Chief Keef', 'Visa Master Card', 'Independent'),
(3, 'kendrick lamar', 'American Express', 'Independent'),
(4, 'French Montana', 'American Express', 'Independent'),
(5, 'David Ruiz', 'Paypal', 'Indepedent'),
(6, 'Meek Mill', 'Visa Mastercard', 'Independent'),
(7, 'Lil Snupe', 'Visa MasterCard', 'Independent');

-- --------------------------------------------------------

--
-- Table structure for table position
--

CREATE TABLE position (
  EmployeetaskID integer(11) NOT NULL,
  Position text NOT NULL,
  details text NOT NULL,
  EmergencyNum integer(11) NOT NULL,
  Address text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table position
--

INSERT integerO position (EmployeetaskID, Position, details, EmergencyNum, Address) VALUES
(1, 'software dev', 'IT', 718, '24488 ryer ave'),
(2, 'CIO', 'Call ONLY FOR SEV 1s', 91778878, '2333 valentine ave'),
(3, 'Shareholder', 'ONLY IF TABITHA IS NOT AVALIABLE', 646, '1295 Blind St'),
(4, 'Shareholder', 'ONLY CONTACT IF ESMERALDA IS NOT AVALIABLE', 646, '3023 Fabuloso Ave.'),
(5, 'VP', 'ONLY IF CONTACT IF MANAGERS CANT SOLVE PROBLEMS', 646, '3409 Maggie St'),
(6, 'CEO type Commercial executor', 'ONLY IF CONTACT IF MANAGERS CANT SOLVE PROBLEMS', 646, '232 MLK St');

-- --------------------------------------------------------

--
-- Table structure for table Task
--

CREATE TABLE Task (
  TaskID integer(11) NOT NULL,
  employeeID integer(11) NOT NULL,
  contact text NOT NULL,
  phone text NOT NULL,
  personalnumber text NOT NULL,
  reference text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table Task
--

INSERT integerO Task (TaskID, employeeID, contact, phone, personalnumber, reference) VALUES
(3, 10, 'Andrew Brown(1)', '646-904-3112', '646-234-2321', 'Call person OC if not call Juan'),
(4, 11, 'Emeralda Diaz', '646-580-5564', '646-538-9281', 'Call person OC if not call Luis'),
(5, 12, 'Joseph Tomas', '917-78878', '646-234-2341', 'Call person OC if not call Juan'),
(6, 13, 'Juan Diaz', '646-683-9949', '646-547-3121', 'Call person OC if not call Esmeralda'),
(7, 14, 'Luis', '646-245-9220', '646-567-9273', 'Call person OC if not call Luis'),
(8, 15, 'Orlanie', '646-982-9821', '646-283-8374', 'Call person OC if not call Joseph'),
(9, 16, 'Nelson', '347-924-0543', '646-353-3498', 'Call person OC if not call Orlanie');

-- --------------------------------------------------------

--
-- Table structure for table Whosin
--

CREATE TABLE Whosin (
  whosinID text,
  EmployeeID text NOT NULL,
  start datetime DEFAULT NULL,
  finish datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table Whosin
--

INSERT integerO Whosin (whosinID, EmployeeID, start, finish) VALUES
('', '10', '2016-04-11 09:00:00', '2016-04-25 05:00:00'),
('Andrew Brown', '10', '2016-04-11 09:00:00', '2016-04-25 05:00:00'),
('Esmeralda Diaz', '11', '2016-04-11 05:00:00', '2016-04-25 02:00:00'),
('Joseph Tomas', '12', '2016-04-11 02:00:00', '2016-04-25 11:00:00'),
('Juan Diaz', '13', '2016-04-25 09:00:00', '2016-05-09 05:00:00'),
('Luis ', '14', '2016-04-25 05:00:00', '2016-05-09 02:00:00'),
('Orlanie ', '15', '2016-04-25 02:00:00', '2016-05-09 10:00:00'),
('Orlanie ', '15', '2016-05-09 10:00:00', '2016-05-23 07:00:00');

-- --------------------------------------------------------

--
-- Structure for view ch
--
DROP TABLE IF EXISTS ch;

CREATE ALGORITHM=UNDEFINED DEFINER=root@localhost SQL SECURITY DEFINER VIEW project.ch  AS  select project.customers.CustomerID AS CustomerID,project.customers.LastName AS LastName,project.customers.FirstName AS FirstName,project.customers.Address AS address,project.customers.Email AS email from project.customers order by project.customers.LastName desc ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table Customers
--
ALTER TABLE Customers
  ADD PRIMARY KEY (CustomerID);

--
-- Indexes for table Department
--
ALTER TABLE Department
  ADD PRIMARY KEY (DepartmentID);

--
-- Indexes for table Diss
--
ALTER TABLE Diss
  ADD PRIMARY KEY (ShipperID);

--
-- Indexes for table Employee
--
ALTER TABLE Employee
  ADD PRIMARY KEY (EmployeeID);

--
-- Indexes for table OrderDetails
--
ALTER TABLE OrderDetails
  ADD PRIMARY KEY (OrderDetailID);

--
-- Indexes for table Payment
--
ALTER TABLE Payment
  ADD PRIMARY KEY (PaymentID);

--
-- Indexes for table position
--
ALTER TABLE position
  ADD PRIMARY KEY (EmployeetaskID);

--
-- Indexes for table Task
--
ALTER TABLE Task
  ADD PRIMARY KEY (TaskID);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table Customers
--
ALTER TABLE Customers
  MODIFY CustomerID integer(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table Department
--
ALTER TABLE Department
  MODIFY DepartmentID integer(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table Diss
--
ALTER TABLE Diss
  MODIFY ShipperID integer(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table Employee
--
ALTER TABLE Employee
  MODIFY EmployeeID integer(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table OrderDetails
--
ALTER TABLE OrderDetails
  MODIFY OrderDetailID integer(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table Payment
--
ALTER TABLE Payment
  MODIFY PaymentID integer(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table position
--
ALTER TABLE position
  MODIFY EmployeetaskID integer(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table Task
--
ALTER TABLE Task
  MODIFY TaskID integer(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
