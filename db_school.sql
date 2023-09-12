-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 12, 2023 at 02:35 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_school`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Add_New_User` (IN `Input_last_Name` VARCHAR(30), IN `Input_first_Name` VARCHAR(30), IN `Input_middle_Name` VARCHAR(30), IN `Input_extention_name` VARCHAR(30), IN `Input_Sex` CHAR(1), IN `Input_birth_date` DATE, IN `Input_age` INT(2), IN `Input_home_address` VARCHAR(75), IN `Input_status` VARCHAR(12), IN `Input_religion` VARCHAR(20), IN `Input_nationality` VARCHAR(20), IN `Input_boarding_Address` VARCHAR(75), IN `Input_contact_number` CHAR(11), IN `Input_email` VARCHAR(25))  BEGIN 
   
    	INSERT INTO person (last_Name, first_Name, middle_Name, extention_name, Sex, birth_date, age, home_address, status, religion, nationality, boarding_Address, contact_number, email) 
        
    VALUES (Input_first_Name,Input_last_Name, Input_middle_Name, Input_extention_name,Input_Sex, Input_birth_date, Input_age, Input_home_address, Input_status, Input_religion, Input_nationality, Input_boarding_Address, Input_contact_number, Input_email);
    
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `person_ID` int(9) NOT NULL,
  `first_Name` varchar(50) NOT NULL,
  `middle_Name` varchar(50) DEFAULT NULL,
  `last_Name` varchar(50) NOT NULL,
  `extension_name` varchar(6) DEFAULT NULL,
  `Sex` char(10) NOT NULL,
  `birth_date` date NOT NULL,
  `age` int(2) NOT NULL,
  `home_address` varchar(100) NOT NULL,
  `status` char(10) NOT NULL,
  `contact_number` int(11) DEFAULT NULL,
  `boarding_Address` varchar(100) NOT NULL,
  `email` varchar(25) NOT NULL,
  `religion` varchar(20) NOT NULL,
  `nationality` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`person_ID`, `first_Name`, `middle_Name`, `last_Name`, `extension_name`, `Sex`, `birth_date`, `age`, `home_address`, `status`, `contact_number`, `boarding_Address`, `email`, `religion`, `nationality`) VALUES
(1, 'April Joy', 'Abuyuan', 'Duruin', 'n/a', 'F', '2002-04-25', 21, 'Remus', 'Single', 2147483647, 'Calaogan', 'duruinapriljoy@sjcbi.edu.', 'Roman Catholic', 'Filipino'),
(2, 'April Joy', 'Abuyuan', 'Duruin', 'n/a', 'F', '2002-04-25', 21, 'Remus', 'Single', 2147483647, 'Calaogan', 'duruinapriljoy@sjcbi.edu.', 'Roman Catholic', 'Filipino'),
(3, 'April Joy', 'Abuyuan', 'Duruin', 'n/a', 'F', '2002-04-25', 21, 'Remus', 'Single', 2147483647, 'Calaogan', 'duruinapriljoy@sjcbi.edu.', 'Roman Catholic', 'Filipino'),
(4, 'April Joy', 'Abuyuan', 'Duruin', 'n/a', 'F', '2002-04-25', 21, 'Remus', 'Single', 2147483647, 'Calaogan', 'duruinapriljoy@sjcbi.edu.', 'Roman Catholic', 'Filipino'),
(5, 'April Joy', 'Abuyuan', 'Duruin', 'n/a', 'F', '2002-04-25', 21, 'Remus', 'Single', 2147483647, 'Calaogan', 'duruinapriljoy@sjcbi.edu.', 'Roman Catholic', 'Filipino'),
(6, 'April Joy', 'Abuyuan', 'Duruin', 'n/a', 'F', '2002-04-25', 21, 'Remus', 'Single', 2147483647, 'Calaogan', 'duruinapriljoy@sjcbi.edu.', 'Roman Catholic', 'Filipino'),
(7, 'April Joy', 'Abuyuan', 'Duruin', 'n/a', 'F', '2002-04-25', 21, 'Remus', 'Single', 2147483647, 'Calaogan', 'duruinapriljoy@sjcbi.edu.', 'Roman Catholic', 'Filipino'),
(8, 'April Joy', 'Abuyuan', 'Duruin', 'n/a', 'F', '2002-04-25', 21, 'Remus', 'Single', 2147483647, 'Calaogan', 'duruinapriljoy@sjcbi.edu.', 'Roman Catholic', 'Filipino'),
(9, 'April Joy', 'Abuyuan', 'Duruin', 'n/a', 'F', '2002-04-25', 21, 'Remus', 'Single', 2147483647, 'Calaogan', 'duruinapriljoy@sjcbi.edu.', 'Roman Catholic', 'Filipino'),
(10, 'April Joy', 'Abuyuan', 'Duruin', 'n/a', 'F', '2002-04-25', 21, 'Remus', 'Single', 2147483647, 'Calaogan', 'duruinapriljoy@sjcbi.edu.', 'Roman Catholic', 'Filipino'),
(11, 'sirma beatriz', 'cariaga', 'gutierrez', 'n/a', 'F', '2002-03-29', 21, 'hacienda intal baggao cagayan', 'Single', 2147483647, 'zone 3 san jose', 'gutierrezsirmabeatriz@sjc', 'inc', 'Filipino'),
(12, 'sirma beatriz', 'cariaga', 'gutierrez', 'n/a', 'F', '2002-03-29', 21, 'hacienda intal baggao cagayan', 'Single', 2147483647, 'zone 3 san jose', 'gutierrezsirmabeatriz@sjc', 'inc', 'Filipino'),
(13, 'sirma beatriz', 'cariaga', 'gutierrez', 'n/a', 'F', '2002-03-29', 21, 'hacienda intal baggao cagayan', 'Single', 2147483647, 'zone 3 san jose', 'gutierrezsirmabeatriz@sjc', 'inc', 'Filipino'),
(14, 'sirma beatriz', 'cariaga', 'gutierrez', 'n/a', 'F', '2002-03-29', 21, 'hacienda intal baggao cagayan', 'Single', 2147483647, 'zone 3 san jose', 'gutierrezsirmabeatriz@sjc', 'inc', 'Filipino'),
(15, 'sirma beatriz', 'cariaga', 'gutierrez', 'n/a', 'F', '2002-03-29', 21, 'hacienda intal baggao cagayan', 'Single', 2147483647, 'zone 3 san jose', 'gutierrezsirmabeatriz@sjc', 'inc', 'Filipino'),
(16, '', '', '', '', 'M', '0000-00-00', 0, '', 'Single', 0, '', '', '', ''),
(17, '', '', '', '', 'M', '0000-00-00', 0, '', 'Single', 0, '', '', '', ''),
(18, 'cristel may', 'Batan', 'domingo', 'n/a', 'F', '2001-11-27', 21, 'Tallang', 'Single', 2147483647, 'n/a', 'domingocristelmay@sjcbi.e', 'MRCP', 'Filipino'),
(19, '', '', '', '', 'M', '0000-00-00', 0, '', 'Single', 0, '', '', '', ''),
(20, 'daisy', 'Julian', 'baril', 'n/a', 'F', '2001-05-06', 21, 'zone 3 san jose', 'Single', 2147483647, 'zone 3 san jose', 'barildaisy@sjcbi.edu.ph', 'Roman Catholic', 'Filipino'),
(21, 'April Joy', 'Abuyuan', 'Duruin', 'n/a', 'F', '2002-04-25', 21, 'Remus', 'Single', 2147483647, 'Calaogan', 'duruinapriljoy@sjcbi.edu.', 'Roman Catholic', 'Filipino'),
(22, 'April Joy', 'Abuyuan', 'Duruin', 'n/a', 'F', '2002-04-25', 21, 'Remus', 'Single', 2147483647, 'Calaogan', 'duruinapriljoy@sjcbi.edu.', 'Roman Catholic', 'Filipino');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`person_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `person`
--
ALTER TABLE `person`
  MODIFY `person_ID` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
