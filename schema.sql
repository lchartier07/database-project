-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 11, 2024 at 11:15 PM
-- Server version: 10.5.21-MariaDB-0+deb11u1
-- PHP Version: 8.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lchartier01`
--

-- --------------------------------------------------------

--
-- Table structure for table `L_Application`
--

CREATE TABLE `L_Application` (
  `Id` int(11) NOT NULL,
  `JobId` int(11) NOT NULL,
  `CandidateId` int(11) NOT NULL,
  `DesiredContractId` int(11) NOT NULL,
  `DesiredRemoteId` int(11) NOT NULL,
  `ApplicationDate` datetime NOT NULL,
  `DesiredSalary` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `L_Application`
--

INSERT INTO `L_Application` (`Id`, `JobId`, `CandidateId`, `DesiredContractId`, `DesiredRemoteId`, `ApplicationDate`, `DesiredSalary`) VALUES
(1, 10, 9, 1, 2, '2024-01-26 08:00:00', 32000),
(2, 4, 11, 3, 3, '2024-01-27 08:00:00', 42000),
(3, 16, 3, 1, 1, '2024-01-28 08:00:00', 57000),
(4, 18, 12, 3, 3, '2024-01-29 08:00:00', 28500),
(5, 20, 17, 3, 2, '2024-01-30 08:00:00', 28000),
(6, 23, 16, 2, 2, '2024-01-31 08:00:00', 44000),
(7, 5, 21, 3, 3, '2024-02-01 08:00:00', 30000),
(8, 23, 15, 2, 1, '2024-02-02 08:00:00', 42000),
(9, 12, 6, 2, 2, '2024-02-03 08:00:00', 24000),
(10, 5, 10, 2, 2, '2024-02-04 08:00:00', 30000),
(11, 13, 1, 2, 2, '2024-02-05 08:00:00', 32000),
(12, 8, 21, 1, 2, '2024-02-06 08:00:00', 42000),
(13, 14, 6, 3, 2, '2024-02-07 08:00:00', 57500),
(14, 5, 15, 2, 1, '2024-02-08 08:00:00', 27000),
(15, 7, 7, 3, 2, '2024-02-09 08:00:00', 28000),
(16, 22, 10, 3, 2, '2024-02-10 08:00:00', 44000),
(17, 3, 9, 3, 2, '2024-02-11 08:00:00', 28000),
(18, 21, 17, 3, 1, '2024-02-12 08:00:00', 50000),
(19, 4, 4, 3, 2, '2024-02-13 08:00:00', 24000),
(20, 1, 1, 3, 3, '2024-02-14 08:00:00', 32000),
(21, 24, 14, 1, 2, '2024-02-15 08:00:00', 31000),
(22, 19, 16, 1, 3, '2024-02-16 08:00:00', 46000),
(23, 20, 16, 2, 1, '2024-02-17 08:00:00', 57000),
(24, 1, 13, 3, 1, '2024-02-18 08:00:00', 27500),
(25, 3, 21, 2, 2, '2024-02-19 08:00:00', 28000);

-- --------------------------------------------------------

--
-- Table structure for table `L_Candidate`
--

CREATE TABLE `L_Candidate` (
  `Id` int(11) NOT NULL,
  `FirstName` varchar(255) NOT NULL,
  `Surname` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `City` varchar(255) NOT NULL,
  `Country` varchar(255) NOT NULL,
  `Postcode` varchar(15) DEFAULT NULL,
  `DoB` date NOT NULL,
  `Email` varchar(255) NOT NULL,
  `PhoneNo` varchar(15) DEFAULT NULL,
  `CV` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `L_Candidate`
--

INSERT INTO `L_Candidate` (`Id`, `FirstName`, `Surname`, `Address`, `City`, `Country`, `Postcode`, `DoB`, `Email`, `PhoneNo`, `CV`) VALUES
(1, 'Leo', 'Chartier', '10 Something Street', 'Abu Dhabi', 'United Arab Emirates', 'BT11AA', '2005-02-02', 'lchartier001@gmail.com', '7123456789', 'Yes'),
(2, 'Ryan', 'Gibson', '11 Something Street', 'Abu Dhabi', 'United Arab Emirates', 'BT11AB', '2005-02-03', 'rgibson002@gmail.com', '7123456790', 'Yes'),
(3, 'Emma', 'Brian', '12 Something Street', 'Novosibirsk', 'Russia', 'BT11AC', '2005-02-04', 'ebrian003@gmail.com', '7123456791', 'Yes'),
(4, 'Elliot', 'British', '13 Something Street', 'Novosibirsk', 'Russia', 'BT11AD', '2005-02-05', 'ebritish004@gmail.com', '7123456792', 'Yes'),
(5, 'Peter', 'Griffin', '14 Something Street', 'Philadelphia', 'United States', 'BT11AE', '2005-02-06', 'pgriffin005@gmail.com', '7123456793', 'Yes'),
(6, 'Craig', 'Thompson', '15 Something Street', 'Philadelphia', 'United States', 'BT11AF', '2005-02-07', 'cthompson006@gmail.com', '7123456794', 'Yes'),
(7, 'Eshwar', 'Sai Vuppalapati', '16 Something Street', 'Wenzhou', 'China', 'BT11AG', '2005-02-08', 'evuppalapati007@gmail.com', '7123456795', 'Yes'),
(8, 'Daniel', 'Lyttle', '17 Something Street', 'Wenzhou', 'China', 'BT11AH', '2005-02-09', 'dlyttle008@gmail.com', '7123456796', 'Yes'),
(9, 'Daniel', 'Mackle', '18 Something Street', 'Daegu', 'South Korea', 'BT11AI', '2005-02-10', 'dmackle009@gmail.com', '7123456797', 'Yes'),
(10, 'Daniel', 'Onstwedder', '19 Something Street', 'Daegu', 'South Korea', 'BT11AJ', '2005-02-11', 'donstwedder010@gmail.com', '7123456798', 'Yes'),
(11, 'Fionn', 'Denvir', '20 Something Street', 'Quanzhou', 'China', 'BT11AK', '2005-02-12', 'fdenvir011@gmail.com', '7123456799', 'Yes'),
(12, 'Paul', 'Brown', '21 Something Street', 'Quanzhou', 'China', 'BT11AL', '2005-02-13', 'pbrown012@gmail.com', '7123456800', 'Yes'),
(13, 'Sam', 'Jardine', '22 Something Street', 'Taichung', 'Taiwan', 'BT11AM', '2005-02-14', 'sjardine013@gmail.com', '7123456801', 'Yes'),
(14, 'Tiernan', 'Brennan', '23 Something Street', 'Taichung', 'Taiwan', 'BT11AN', '2005-02-15', 'tbrennan014@gmail.com', '7123456802', 'Yes'),
(15, 'Oliver', 'White', '24 Something Street', 'Kobe', 'Japan', 'BT11AO', '2005-02-16', 'owhite015@gmail.com', '7123456803', 'Yes'),
(16, 'Ethan', 'Hair', '25 Something Street', 'Kobe', 'Japan', 'BT11AP', '2005-02-17', 'ehair016@gmail.com', '7123456804', 'Yes'),
(17, 'Ethan', 'Hunt', '26 Something Street', 'Hangzhou', 'China', 'BT11AQ', '2005-02-18', 'ehunt017@gmail.com', '7123456805', 'Yes'),
(18, 'Chris', 'Blue', '27 Something Street', 'Hangzhou', 'China', 'BT11AR', '2005-02-19', 'cblue018@gmail.com', '7123456806', 'Yes'),
(19, 'Jamie', 'Barron', '28 Something Street', 'Fortaleza', 'Brazil', 'BT11AS', '2005-02-20', 'jbarron019@gmail.com', '7123456807', 'Yes'),
(20, 'Arpit', 'Kumar Sahoo', '29 Something Street', 'Fortaleza', 'Brazil', 'BT11AT', '2005-02-21', 'aSahoo020@gmail.com', '7123456808', 'Yes'),
(21, 'Caleb', 'Hair', '30 Something Street', 'Taipei', 'Taiwan', 'BT11AU', '2005-02-22', 'chair021@gmail.com', '7123456809', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `L_CandidateSkill`
--

CREATE TABLE `L_CandidateSkill` (
  `CandidateId` int(11) NOT NULL,
  `SkillId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `L_CandidateSkill`
--

INSERT INTO `L_CandidateSkill` (`CandidateId`, `SkillId`) VALUES
(1, 9),
(1, 17),
(1, 21),
(2, 28),
(4, 3),
(4, 7),
(6, 19),
(7, 15),
(7, 28),
(8, 4),
(8, 24),
(9, 13),
(10, 3),
(10, 12),
(11, 23),
(11, 24),
(11, 27),
(12, 20),
(13, 11),
(13, 25),
(14, 1),
(14, 3),
(14, 8),
(14, 11),
(14, 13),
(14, 17),
(14, 28),
(15, 10),
(15, 11),
(16, 17),
(16, 24),
(18, 5),
(18, 14),
(19, 7),
(21, 10);

-- --------------------------------------------------------

--
-- Table structure for table `L_Company`
--

CREATE TABLE `L_Company` (
  `Id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `PhoneNo` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `L_Company`
--

INSERT INTO `L_Company` (`Id`, `Name`, `PhoneNo`) VALUES
(1, 'Royal Dutch Shell', '7123456825'),
(2, 'Bp', '7123456826'),
(3, 'Hsbc Holdings', '7123456827'),
(4, 'Lloyds Banking Group', '7123456828'),
(5, 'Aviva', '7123456829'),
(6, 'Tesco', '7123456830'),
(7, 'Royal Dutch Shell Company', '7123456831'),
(8, 'General Electric Company', '7123456832'),
(9, 'Arm Holdings Plc', '7123456833'),
(10, 'Csr Plc', '7123456834'),
(11, 'Ihs Inc.', '7123456835'),
(12, 'King Digital Entertainment Plc', '7123456836'),
(13, 'Manpowergroup', '7123456837'),
(14, 'Bbc', '7123456838'),
(15, 'Jazztel', '7123456839'),
(16, 'Creditcall', '7123456840'),
(17, 'Swan Brand', '7123456841'),
(18, 'Google Deepmind', '7123456842'),
(19, 'Majestic Wine & Deli, Inc.', '7123456843'),
(20, 'Nice & Jj Corporation', '7123456844'),
(21, 'Test', '07123456845'),
(22, 'Test2', '07123456846');

-- --------------------------------------------------------

--
-- Table structure for table `L_Contract`
--

CREATE TABLE `L_Contract` (
  `Id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `L_Contract`
--

INSERT INTO `L_Contract` (`Id`, `Name`) VALUES
(3, 'Contract'),
(1, 'Permanent'),
(2, 'Temporary');

-- --------------------------------------------------------

--
-- Table structure for table `L_Employee`
--

CREATE TABLE `L_Employee` (
  `Id` int(11) NOT NULL,
  `OfficeId` int(11) NOT NULL,
  `FirstName` varchar(255) NOT NULL,
  `Surname` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `City` varchar(255) NOT NULL,
  `Country` varchar(255) NOT NULL,
  `Postcode` varchar(15) DEFAULT NULL,
  `DoB` date NOT NULL,
  `FullTime` tinyint(1) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `PhoneNo` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `L_Employee`
--

INSERT INTO `L_Employee` (`Id`, `OfficeId`, `FirstName`, `Surname`, `Address`, `City`, `Country`, `Postcode`, `DoB`, `FullTime`, `Email`, `PhoneNo`) VALUES
(1, 3, 'Eduardas', 'Paulina', '30 Something Street', 'Rosario', 'Argentina', 'BT11AA', '2005-02-02', 0, 'epaulina021@gmail.com', '7123456789'),
(2, 7, 'Aurora', 'Ramakanta', '46 Something Street', 'Rosario', 'Argentina', 'BT11AB', '2005-02-03', 1, 'aramakanta022@gmail.com', '7123456790'),
(3, 15, 'Ellanher', 'Radobod', '47 Something Street', 'Bandung', 'Indonesia', 'BT11AC', '2005-02-04', 1, 'eradobod023@gmail.com', '7123456791'),
(4, 5, 'Eve', 'Islambek', '48 Something Street', 'Bandung', 'Indonesia', 'BT11AD', '2005-02-05', 1, 'eislambek024@gmail.com', '7123456792'),
(5, 14, 'Guiying', 'Milivoj', '49 Something Street', 'Pyongyang', 'North Korea', 'BT11AE', '2005-02-06', 1, 'gmilivoj025@gmail.com', '7123456793'),
(6, 4, 'Amalbert', 'Mathilda', '50 Something Street', 'Pyongyang', 'North Korea', 'BT11AF', '2005-02-07', 1, 'amathilda026@gmail.com', '7123456794'),
(7, 4, 'Zubair', 'Elvis', '51 Something Street', 'Shiraz', 'Iran', 'BT11AG', '2005-02-08', 0, 'zelvis027@gmail.com', '7123456795'),
(8, 5, 'Page', 'Ethne', '52 Something Street', 'Shiraz', 'Iran', 'BT11AH', '2005-02-09', 0, 'pethne028@gmail.com', '7123456796'),
(9, 3, 'Naveen', 'Zula', '53 Something Street', 'Visakhapatnam', 'India', 'BT11AI', '2005-02-10', 1, 'nzula029@gmail.com', '7123456797'),
(10, 5, 'Albina', 'Tuathal', '54 Something Street', 'Visakhapatnam', 'India', 'BT11AJ', '2005-02-11', 1, 'atuathal030@gmail.com', '7123456798'),
(11, 11, 'Daniela', 'Gunter', '55 Something Street', 'Managua', 'Nicaragua', 'BT11AK', '2005-02-12', 0, 'dgunter031@gmail.com', '7123456799'),
(12, 3, 'Gaia', 'Habib', '56 Something Street', 'Managua', 'Nicaragua', 'BT11AL', '2005-02-13', 1, 'ghabib032@gmail.com', '7123456800'),
(13, 2, 'Ingulf', 'Tedore', '57 Something Street', 'Changsha', 'China', 'BT11AM', '2005-02-14', 1, 'itedore033@gmail.com', '7123456801'),
(14, 3, 'Karmen', 'Vera', '58 Something Street', 'Changsha', 'China', 'BT11AN', '2005-02-15', 1, 'kvera034@gmail.com', '7123456802'),
(15, 8, 'Brandee', 'Akicita', '59 Something Street', 'Hanoi', 'Vietnam', 'BT11AO', '2005-02-16', 1, 'bakicita035@gmail.com', '7123456803'),
(16, 14, 'Raginhild', 'Adriana', '60 Something Street', 'Hanoi', 'Vietnam', 'BT11AP', '2005-02-17', 1, 'radriana036@gmail.com', '7123456804'),
(17, 6, 'Kira', 'Madelina', '61 Something Street', 'Mexico City', 'Mexico', 'BT11AQ', '2005-02-18', 0, 'kmadelina037@gmail.com', '7123456805'),
(18, 6, 'Barnaby', 'Daire', '62 Something Street', 'Mexico City', 'Mexico', 'BT11AR', '2005-02-19', 0, 'bdaire038@gmail.com', '7123456806'),
(19, 14, 'Faustina', 'Brad', '63 Something Street', 'Singapore', 'Singapore', 'BT11AS', '2005-02-20', 1, 'fbrad039@gmail.com', '7123456807'),
(20, 9, 'Hanne', 'Pankaja', '64 Something Street', 'Singapore', 'Singapore', 'BT11AT', '2005-02-21', 1, 'hpankaja040@gmail.com', '7123456808');

-- --------------------------------------------------------

--
-- Table structure for table `L_Job`
--

CREATE TABLE `L_Job` (
  `Id` int(11) NOT NULL,
  `OfficeId` int(11) NOT NULL,
  `EmployeeId` int(11) NOT NULL,
  `SectorId` int(11) NOT NULL,
  `ContractId` int(11) NOT NULL,
  `RemoteId` int(11) NOT NULL,
  `Title` varchar(255) NOT NULL,
  `DatePosted` datetime NOT NULL,
  `Salary` double NOT NULL,
  `ExpiryDate` datetime NOT NULL,
  `Description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `L_Job`
--

INSERT INTO `L_Job` (`Id`, `OfficeId`, `EmployeeId`, `SectorId`, `ContractId`, `RemoteId`, `Title`, `DatePosted`, `Salary`, `ExpiryDate`, `Description`) VALUES
(1, 1, 10, 3, 1, 1, 'Senior HR Advisor', '2024-01-01 08:00:00', 30000, '2025-01-01 00:00:00', 'We need you'),
(2, 4, 15, 1, 1, 3, 'HR Business Partner', '2024-01-02 08:00:00', 40000, '2025-01-02 00:00:00', 'We need you'),
(3, 2, 7, 1, 1, 1, 'Joiner', '2024-01-03 08:00:00', 55000, '2025-01-03 00:00:00', 'We need you'),
(4, 2, 12, 3, 2, 3, 'Mechanic', '2024-01-04 08:00:00', 26500, '2025-01-04 00:00:00', 'We need you'),
(5, 14, 15, 3, 2, 3, 'Admin Officer', '2024-01-05 08:00:00', 26000, '2025-01-05 00:00:00', 'We need you'),
(6, 3, 1, 2, 1, 1, 'Clerical Officer', '2024-01-06 08:00:00', 42000, '2025-01-06 00:00:00', 'We need you'),
(7, 2, 3, 1, 1, 3, 'Stores Admin', '2024-01-07 08:00:00', 27500, '2025-01-07 00:00:00', 'We need you'),
(8, 9, 14, 3, 2, 2, 'Electrician', '2024-01-08 08:00:00', 40000, '2025-01-08 00:00:00', 'We need you'),
(9, 6, 18, 1, 1, 3, 'Procurement Manager', '2024-01-09 08:00:00', 22000, '2025-01-09 00:00:00', 'We need you'),
(10, 11, 16, 2, 1, 3, 'Occupational Health Nurse', '2024-01-10 08:00:00', 29000, '2025-01-10 00:00:00', 'We need you'),
(11, 3, 2, 1, 1, 2, 'Band 6 Pharmacist', '2024-01-11 08:00:00', 30000, '2025-01-11 00:00:00', 'We need you'),
(12, 11, 17, 2, 1, 3, 'Financial Accountant', '2024-01-12 08:00:00', 40000, '2025-01-12 00:00:00', 'We need you'),
(13, 5, 14, 3, 2, 3, 'Design Coordinator', '2024-01-13 08:00:00', 55000, '2025-01-13 00:00:00', 'We need you'),
(14, 6, 2, 2, 2, 3, 'Caretaker', '2024-01-14 08:00:00', 26500, '2025-01-14 00:00:00', 'We need you'),
(15, 10, 4, 1, 1, 3, 'Legal Officer', '2024-01-15 08:00:00', 26000, '2025-01-15 00:00:00', 'We need you'),
(16, 10, 17, 3, 1, 3, 'Legal Secretary', '2024-01-16 08:00:00', 42000, '2025-01-16 00:00:00', 'We need you'),
(17, 11, 8, 3, 1, 3, 'Senior Buyer', '2024-01-17 08:00:00', 27500, '2025-01-17 00:00:00', 'We need you'),
(18, 8, 7, 2, 1, 1, 'Caretaker', '2024-01-18 08:00:00', 40000, '2025-01-18 00:00:00', 'We need you'),
(19, 11, 1, 3, 3, 3, 'Legal Personal Assisstant', '2024-01-19 08:00:00', 22000, '2025-01-19 00:00:00', 'We need you'),
(20, 8, 5, 1, 1, 1, 'Forklift truck driver', '2024-01-20 08:00:00', 29000, '2025-01-20 00:00:00', 'We need you'),
(21, 1, 13, 2, 3, 1, 'Client relations supervisor', '2024-01-21 08:00:00', 30000, '2025-01-21 00:00:00', 'We need you'),
(22, 3, 13, 1, 3, 2, 'Health & fitness instructor', '2024-01-22 08:00:00', 40000, '2025-01-22 00:00:00', 'We need you'),
(23, 1, 4, 2, 3, 2, 'graduate consultant scheme', '2024-01-23 08:00:00', 55000, '2025-01-23 00:00:00', 'We need you'),
(24, 13, 12, 2, 2, 1, 'graduate programme', '2024-01-24 08:00:00', 26500, '2025-01-24 00:00:00', 'We need you'),
(25, 8, 1, 1, 2, 2, 'entry level graduate scheme', '2024-01-25 08:00:00', 26000, '2025-01-25 00:00:00', 'We need you');

-- --------------------------------------------------------

--
-- Table structure for table `L_JobSkill`
--

CREATE TABLE `L_JobSkill` (
  `JobId` int(11) NOT NULL,
  `SkillId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `L_JobSkill`
--

INSERT INTO `L_JobSkill` (`JobId`, `SkillId`) VALUES
(1, 26),
(2, 1),
(3, 17),
(3, 20),
(4, 9),
(4, 17),
(5, 19),
(6, 18),
(7, 3),
(8, 7),
(8, 16),
(8, 24),
(9, 21),
(9, 24),
(10, 9),
(11, 12),
(12, 2),
(13, 18),
(13, 19),
(14, 7),
(14, 8),
(15, 16),
(16, 21),
(17, 4),
(18, 7),
(18, 25),
(19, 14),
(19, 24),
(20, 7),
(20, 24),
(21, 26),
(22, 20),
(23, 27),
(24, 27),
(25, 2);

-- --------------------------------------------------------

--
-- Table structure for table `L_Office`
--

CREATE TABLE `L_Office` (
  `Id` int(11) NOT NULL,
  `CompanyId` int(11) NOT NULL,
  `PhoneNo` varchar(15) DEFAULT NULL,
  `Address` varchar(255) NOT NULL,
  `City` varchar(255) NOT NULL,
  `Country` varchar(255) NOT NULL,
  `Postcode` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `L_Office`
--

INSERT INTO `L_Office` (`Id`, `CompanyId`, `PhoneNo`, `Address`, `City`, `Country`, `Postcode`) VALUES
(1, 11, '7123456810', '31 Something Street', 'T\'bilisi', 'Georgia', 'BT11AV'),
(2, 3, '7123456811', '32 Something Street', 'Santiago', 'Chile', 'BT11AW'),
(3, 2, '7123456812', '33 Something Street', 'Harbin', 'China', 'BT11AX'),
(4, 2, '7123456813', '34 Something Street', 'Pune', 'India', 'BT11AY'),
(5, 13, '7123456814', '35 Something Street', 'Mandalay', 'Myanmar', 'BT11AZ'),
(6, 19, '7123456815', '36 Something Street', 'Lusaka', 'Zambia', 'BT11BA'),
(7, 20, '7123456816', '37 Something Street', 'Isfahan', 'Iran', 'BT11BB'),
(8, 13, '7123456817', '38 Something Street', 'Ningbo', 'China', 'BT11BC'),
(9, 10, '7123456818', '39 Something Street', 'Salvador', 'Brazil', 'BT11BD'),
(10, 10, '7123456819', '40 Something Street', 'Hangzhou', 'China', 'BT11BE'),
(11, 19, '7123456820', '41 Something Street', 'Kwangju', 'South Korea', 'BT11BF'),
(12, 18, '7123456821', '42 Something Street', 'Tianjin', 'China', 'BT11BG'),
(13, 16, '7123456822', '43 Something Street', 'Jakarta', 'Indonesia', 'BT11BH'),
(14, 7, '7123456823', '44 Something Street', 'New York City', 'United States', 'BT11BI'),
(15, 4, '7123456824', '45 Something Street', 'Bulawayo', 'Zimbabwe', 'BT11BJ');

-- --------------------------------------------------------

--
-- Table structure for table `L_Remote`
--

CREATE TABLE `L_Remote` (
  `Id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `L_Remote`
--

INSERT INTO `L_Remote` (`Id`, `Name`) VALUES
(1, 'Hybrid'),
(2, 'No'),
(3, 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `L_Sector`
--

CREATE TABLE `L_Sector` (
  `Id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `L_Sector`
--

INSERT INTO `L_Sector` (`Id`, `Name`) VALUES
(6, 'Built Environment'),
(7, 'Business Sector'),
(10, 'Engineering & Manufacturing'),
(5, 'Executive'),
(2, 'Finance'),
(3, 'HR'),
(12, 'Legal'),
(4, 'Public Sector'),
(8, 'Sales & Marketing'),
(11, 'Science'),
(9, 'Supply Chain and Logistics'),
(1, 'Tech');

-- --------------------------------------------------------

--
-- Table structure for table `L_Skill`
--

CREATE TABLE `L_Skill` (
  `Id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `L_Skill`
--

INSERT INTO `L_Skill` (`Id`, `Name`) VALUES
(18, 'Active listening'),
(19, 'Adaptability'),
(12, 'Ambition'),
(1, 'Commitment'),
(16, 'Communication'),
(15, 'Conflict resolution'),
(9, 'Creativity'),
(8, 'Critical thinking'),
(20, 'Customer service'),
(22, 'Decision making'),
(26, 'Emotional intelligence'),
(5, 'Empathy'),
(29, 'Flexibility'),
(2, 'Initiative'),
(25, 'Interpersonal skills'),
(24, 'Leadership'),
(4, 'Motivation'),
(13, 'Negotiation'),
(7, 'Patience'),
(23, 'Persuasion'),
(6, 'Positive attitude'),
(21, 'Problem solving'),
(14, 'Public speaking'),
(3, 'Resilience'),
(11, 'Responsibility'),
(10, 'Self-discipline'),
(28, 'Teamwork'),
(27, 'Time management'),
(17, 'Work ethic');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `L_Application`
--
ALTER TABLE `L_Application`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `DesiredContractId` (`DesiredContractId`),
  ADD KEY `DesiredRemoteId` (`DesiredRemoteId`),
  ADD KEY `ApplicationDate` (`ApplicationDate`),
  ADD KEY `DesiredSalary` (`DesiredSalary`),
  ADD KEY `L_Application_ibfk_1` (`JobId`),
  ADD KEY `L_Application_ibfk_2` (`CandidateId`);

--
-- Indexes for table `L_Candidate`
--
ALTER TABLE `L_Candidate`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `FirstName` (`FirstName`),
  ADD KEY `Surname` (`Surname`),
  ADD KEY `Address` (`Address`),
  ADD KEY `City` (`City`),
  ADD KEY `Country` (`Country`),
  ADD KEY `DoB` (`DoB`);

--
-- Indexes for table `L_CandidateSkill`
--
ALTER TABLE `L_CandidateSkill`
  ADD PRIMARY KEY (`CandidateId`,`SkillId`),
  ADD KEY `SkillId` (`SkillId`);

--
-- Indexes for table `L_Company`
--
ALTER TABLE `L_Company`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Name` (`Name`);

--
-- Indexes for table `L_Contract`
--
ALTER TABLE `L_Contract`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Name` (`Name`);

--
-- Indexes for table `L_Employee`
--
ALTER TABLE `L_Employee`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `OfficeId` (`OfficeId`),
  ADD KEY `FirstName` (`FirstName`),
  ADD KEY `Surname` (`Surname`),
  ADD KEY `Address` (`Address`),
  ADD KEY `City` (`City`),
  ADD KEY `Country` (`Country`),
  ADD KEY `DoB` (`DoB`),
  ADD KEY `FullTime` (`FullTime`);

--
-- Indexes for table `L_Job`
--
ALTER TABLE `L_Job`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `OfficeId` (`OfficeId`),
  ADD KEY `EmployeeId` (`EmployeeId`),
  ADD KEY `SectorId` (`SectorId`),
  ADD KEY `ContractId` (`ContractId`),
  ADD KEY `RemoteId` (`RemoteId`),
  ADD KEY `NAME` (`Title`),
  ADD KEY `DatePosted` (`DatePosted`),
  ADD KEY `Salary` (`Salary`);

--
-- Indexes for table `L_JobSkill`
--
ALTER TABLE `L_JobSkill`
  ADD PRIMARY KEY (`JobId`,`SkillId`),
  ADD KEY `SkillId` (`SkillId`);

--
-- Indexes for table `L_Office`
--
ALTER TABLE `L_Office`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `CompanyId` (`CompanyId`),
  ADD KEY `Address` (`Address`),
  ADD KEY `City` (`City`),
  ADD KEY `Country` (`Country`);

--
-- Indexes for table `L_Remote`
--
ALTER TABLE `L_Remote`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Name` (`Name`);

--
-- Indexes for table `L_Sector`
--
ALTER TABLE `L_Sector`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Name` (`Name`);

--
-- Indexes for table `L_Skill`
--
ALTER TABLE `L_Skill`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Name` (`Name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `L_Application`
--
ALTER TABLE `L_Application`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `L_Candidate`
--
ALTER TABLE `L_Candidate`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `L_Company`
--
ALTER TABLE `L_Company`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `L_Contract`
--
ALTER TABLE `L_Contract`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `L_Employee`
--
ALTER TABLE `L_Employee`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `L_Job`
--
ALTER TABLE `L_Job`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `L_Office`
--
ALTER TABLE `L_Office`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `L_Remote`
--
ALTER TABLE `L_Remote`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `L_Sector`
--
ALTER TABLE `L_Sector`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `L_Skill`
--
ALTER TABLE `L_Skill`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `L_Application`
--
ALTER TABLE `L_Application`
  ADD CONSTRAINT `L_Application_ibfk_1` FOREIGN KEY (`JobId`) REFERENCES `L_Job` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `L_Application_ibfk_2` FOREIGN KEY (`CandidateId`) REFERENCES `L_Candidate` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `L_Application_ibfk_3` FOREIGN KEY (`DesiredContractId`) REFERENCES `L_Contract` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `L_Application_ibfk_4` FOREIGN KEY (`DesiredRemoteId`) REFERENCES `L_Remote` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `L_CandidateSkill`
--
ALTER TABLE `L_CandidateSkill`
  ADD CONSTRAINT `L_CandidateSkill_ibfk_1` FOREIGN KEY (`CandidateId`) REFERENCES `L_Candidate` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `L_CandidateSkill_ibfk_2` FOREIGN KEY (`SkillId`) REFERENCES `L_Skill` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `L_Employee`
--
ALTER TABLE `L_Employee`
  ADD CONSTRAINT `L_Employee_ibfk_1` FOREIGN KEY (`OfficeId`) REFERENCES `L_Office` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `L_Job`
--
ALTER TABLE `L_Job`
  ADD CONSTRAINT `L_Job_ibfk_1` FOREIGN KEY (`OfficeId`) REFERENCES `L_Office` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `L_Job_ibfk_2` FOREIGN KEY (`EmployeeId`) REFERENCES `L_Employee` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `L_Job_ibfk_3` FOREIGN KEY (`SectorId`) REFERENCES `L_Sector` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `L_Job_ibfk_4` FOREIGN KEY (`ContractId`) REFERENCES `L_Contract` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `L_Job_ibfk_5` FOREIGN KEY (`RemoteId`) REFERENCES `L_Remote` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `L_JobSkill`
--
ALTER TABLE `L_JobSkill`
  ADD CONSTRAINT `L_JobSkill_ibfk_1` FOREIGN KEY (`JobId`) REFERENCES `L_Job` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `L_JobSkill_ibfk_2` FOREIGN KEY (`SkillId`) REFERENCES `L_Skill` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `L_Office`
--
ALTER TABLE `L_Office`
  ADD CONSTRAINT `L_Office_ibfk_1` FOREIGN KEY (`CompanyId`) REFERENCES `L_Company` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
