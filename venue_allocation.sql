-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2025 at 06:12 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `venue allocation`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `AdminID` varchar(50) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`AdminID`, `FirstName`, `LastName`, `Email`, `Password`) VALUES
('Adm001', 'David', 'Wamenju', 'davey23@gmail.com', 'tractor2');

-- --------------------------------------------------------

--
-- Table structure for table `bookedvenue`
--

CREATE TABLE `bookedvenue` (
  `course` varchar(50) NOT NULL,
  `StaffID` varchar(50) DEFAULT NULL,
  `Venue Name` varchar(50) NOT NULL,
  `Location` varchar(50) NOT NULL,
  `Capacity` int(50) NOT NULL,
  `CourseType` varchar(50) NOT NULL,
  `Semester` varchar(50) NOT NULL,
  `Date` date DEFAULT NULL,
  `StartTime` time DEFAULT NULL,
  `EndTime` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookedvenue`
--

INSERT INTO `bookedvenue` (`course`, `StaffID`, `Venue Name`, `Location`, `Capacity`, `CourseType`, `Semester`, `Date`, `StartTime`, `EndTime`) VALUES
('COSC100', 'st001', 'S303', 'Science Complex', 150, 'ComputerScience', '1.1', '2025-03-26', '08:30:00', '10:30:00'),
('COSC101', 'st001', 'S303', 'Science Complex', 150, 'ComputerScience', '1.1', '2025-03-31', '08:30:00', '10:30:00'),
('COSC102', 'st001', 'S303', 'Science Complex', 150, 'ComputerScience', '1.1', '2025-03-30', '08:30:00', '10:30:00'),
('COSC103', 'st001', 'S502', 'Science Complex', 160, 'ComputerScience', '1.1', '2025-03-25', '11:30:00', '13:30:00'),
('COSC105', 'st002', 'S403', 'Science Complex', 160, 'Computer science', '1.1', '2025-03-20', '08:30:00', '10:30:00'),
('NRS100', NULL, 'S603', 'Business Complex', 150, 'Nursing', '1.1', '2025-03-28', '08:30:00', '10:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `Unit` varchar(50) NOT NULL,
  `CourseType` varchar(50) NOT NULL,
  `Semester` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`Unit`, `CourseType`, `Semester`) VALUES
('COSC100', 'ComputerScience', '1.1'),
('COSC101', 'ComputerScience', '1.1'),
('COSC102', 'ComputerScience', '1.1'),
('COSC103', 'ComputerScience', '1.1'),
('COSC104', 'ComputerScience', '1.1'),
('COSC105', 'ComputerScience', '1.1'),
('COSC120', 'ComputerScience', '1.2'),
('COSC121', 'ComputerScience', '1.2'),
('COSC122', 'ComputerScience', '1.2'),
('COSC123', 'ComputerScience', '1.2'),
('COSC124', 'ComputerScience', '1.2'),
('COSC125', 'ComputerScience', '1.2'),
('COSC200', 'ComputerScience', '2.1'),
('COSC201', 'ComputerScience', '2.1'),
('COSC202', 'ComputerScience', '2.1'),
('COSC203', 'ComputerScience', '2.1'),
('COSC204', 'ComputerScience', '2.1'),
('COSC205', 'ComputerScience', '2.1'),
('COSC210', 'ComputerScience', '2.2'),
('COSC211', 'ComputerScience', '2.2'),
('COSC212', 'ComputerScience', '2.2'),
('COSC213', 'ComputerScience', '2.2'),
('COSC214', 'ComputerScience', '2.2'),
('COSC215', 'ComputerScience', '2.2'),
('COSC300', 'ComputerScience', '3.1'),
('COSC301', 'ComputerScience', '3.1'),
('COSC302', 'ComputerScience', '3.1'),
('COSC303', 'ComputerScience', '3.1'),
('COSC304', 'ComputerScience', '3.1'),
('COSC305', 'ComputerScience', '3.1'),
('COSC310', 'ComputerScience', '3.2'),
('COSC311', 'ComputerScience', '3.2'),
('COSC312', 'ComputerScience', '3.2'),
('COSC313', 'ComputerScience', '3.2'),
('COSC314', 'ComputerScience', '3.2'),
('COSC315', 'ComputerScience', '3.2'),
('COSC400', 'ComputerScience', '4.1'),
('COSC401', 'ComputerScience', '4.1'),
('COSC402', 'ComputerScience', '4.1'),
('COSC403', 'ComputerScience', '4.1'),
('COSC404', 'ComputerScience', '4.1'),
('COSC405', 'ComputerScience', '4.1'),
('COSC410', 'ComputerScience', '4.2'),
('COSC411', 'ComputerScience', '4.2'),
('COSC412', 'ComputerScience', '4.2'),
('COSC413', 'ComputerScience', '4.2'),
('COSC414', 'ComputerScience', '4.2'),
('COSC415', 'ComputerScience', '4.2'),
('CRIM100', 'Criminology', '1.1'),
('CRIM101', 'Criminology', '1.1'),
('CRIM102', 'Criminology', '1.1'),
('CRIM103', 'Criminology', '1.1'),
('CRIM104', 'Criminology', '1.1'),
('CRIM105', 'Criminology', '1.1'),
('CRIM110', 'Criminology', '1.2'),
('CRIM111', 'Criminology', '1.2'),
('CRIM112', 'Criminology', '1.2'),
('CRIM113', 'Criminology', '1.2'),
('CRIM114', 'Criminology', '1.2'),
('CRIM115', 'Criminology', '1.2'),
('CRIM200', 'Criminology', '2.1'),
('CRIM201', 'Criminology', '2.1'),
('CRIM202', 'Criminology', '2.1'),
('CRIM203', 'Criminology', '2.1'),
('CRIM204', 'Criminology', '2.1'),
('CRIM205', 'Criminology', '2.1'),
('CRIM210', 'Criminology', '2.2'),
('CRIM211', 'Criminology', '2.2'),
('CRIM212', 'Criminology', '2.2'),
('CRIM213', 'Criminology', '2.2'),
('CRIM214', 'Criminology', '2.2'),
('CRIM215', 'Criminology', '2.2'),
('CRIM300', 'Criminology', '3.1'),
('CRIM301', 'Criminology', '3.1'),
('CRIM302', 'Criminology', '3.1'),
('CRIM303', 'Criminology', '3.1'),
('CRIM304', 'Criminology', '3.1'),
('CRIM305', 'Criminology', '3.1'),
('CRIM310', 'Criminology', '3.2'),
('CRIM311', 'Criminology', '3.2'),
('CRIM312', 'Criminology', '3.2'),
('CRIM313', 'Criminology', '3.2'),
('CRIM314', 'Criminology', '3.2'),
('CRIM315', 'Criminology', '3.2'),
('CRIM400', 'Criminology', '4.1'),
('CRIM401', 'Criminology', '4.1'),
('CRIM402', 'Criminology', '4.1'),
('CRIM403', 'Criminology', '4.1'),
('CRIM404', 'Criminology', '4.1'),
('CRIM405', 'Criminology', '4.1'),
('CRIM410', 'Criminology', '4.2'),
('CRIM411', 'Criminology', '4.2'),
('CRIM412', 'Criminology', '4.2'),
('CRIM413', 'Criminology', '4.2'),
('CRIM414', 'Criminology', '4.2'),
('CRIM415', 'Criminology', '4.2'),
('ED100', 'Education', '1.1'),
('ED101', 'Education', '1.1'),
('ED102', 'Education', '1.1'),
('ED103', 'Education', '1.1'),
('ED104', 'Education', '1.1'),
('ED105', 'Education', '1.1'),
('ED110', 'Education', '1.2'),
('ED111', 'Education', '1.2'),
('ED112', 'Education', '1.2'),
('ED113', 'Education', '1.2'),
('ED114', 'Education', '1.2'),
('ED115', 'Education', '1.2'),
('ED200', 'Education', '2.1'),
('ED201', 'Education', '2.1'),
('ED202', 'Education', '2.1'),
('ED203', 'Education', '2.1'),
('ED204', 'Education', '2.1'),
('ED205', 'Education', '2.1'),
('ED210', 'Education', '2.2'),
('ED211', 'Education', '2.2'),
('ED212', 'Education', '2.2'),
('ED213', 'Education', '2.2'),
('ED214', 'Education', '2.2'),
('ED215', 'Education', '2.2'),
('ED300', 'Education', '3.1'),
('ED301', 'Education', '3.1'),
('ED302', 'Education', '3.1'),
('ED303', 'Education', '3.1'),
('ED304', 'Education', '3.1'),
('ED305', 'Education', '3.1'),
('ED310', 'Education', '3.2'),
('ED311', 'Education', '3.2'),
('ED312', 'Education', '3.2'),
('ED313', 'Education', '3.2'),
('ED314', 'Education', '3.2'),
('ED315', 'Education', '3.2'),
('ED400', 'Education', '4.1'),
('ED401', 'Education', '4.1'),
('ED402', 'Education', '4.1'),
('ED403', 'Education', '4.1'),
('ED404', 'Education', '4.1'),
('ED405', 'Education', '4.1'),
('ED410', 'Education', '4.2'),
('ED411', 'Education', '4.2'),
('ED412', 'Education', '4.2'),
('ED413', 'Education', '4.2'),
('ED414', 'Education', '4.2'),
('ED415', 'Education', '4.2'),
('JOU100', 'Journalism', '1.1'),
('JOU101', 'Journalism', '1.1'),
('JOU102', 'Journalism', '1.1'),
('JOU103', 'Journalism', '1.1'),
('JOU104', 'Journalism', '1.1'),
('JOU105', 'Journalism', '1.1'),
('JOU110', 'Journalism', '1.2'),
('JOU111', 'Journalism', '1.2'),
('JOU112', 'Journalism', '1.2'),
('JOU113', 'Journalism', '1.2'),
('JOU114', 'Journalism', '1.2'),
('JOU115', 'Journalism', '1.2'),
('JOU200', 'Journalism', '2.1'),
('JOU201', 'Journalism', '2.1'),
('JOU202', 'Journalism', '2.1'),
('JOU203', 'Journalism', '2.1'),
('JOU204', 'Journalism', '2.1'),
('JOU205', 'Journalism', '2.1'),
('JOU210', 'Journalism', '2.2'),
('JOU211', 'Journalism', '2.2'),
('JOU212', 'Journalism', '2.2'),
('JOU213', 'Journalism', '2.2'),
('JOU214', 'Journalism', '2.2'),
('JOU215', 'Journalism', '2.2'),
('JOU300', 'Journalism', '3.1'),
('JOU301', 'Journalism', '3.1'),
('JOU302', 'Journalism', '3.1'),
('JOU303', 'Journalism', '3.1'),
('JOU304', 'Journalism', '3.1'),
('JOU305', 'Journalism', '3.1'),
('JOU310', 'Journalism', '3.2'),
('JOU311', 'Journalism', '3.2'),
('JOU312', 'Journalism', '3.2'),
('JOU313', 'Journalism', '3.2'),
('JOU314', 'Journalism', '3.2'),
('JOU315', 'Journalism', '3.2'),
('JOU400', 'Journalism', '4.1'),
('JOU401', 'Journalism', '4.1'),
('JOU402', 'Journalism', '4.1'),
('JOU403', 'Journalism', '4.1'),
('JOU404', 'Journalism', '4.1'),
('JOU405', 'Journalism', '4.1'),
('JOU410', 'Journalism', '4.2'),
('JOU411', 'Journalism', '4.2'),
('JOU412', 'Journalism', '4.2'),
('JOU413', 'Journalism', '4.2'),
('JOU414', 'Journalism', '4.2'),
('JOU415', 'Journalism', '4.2'),
('LAE100', 'Law', '1.1'),
('LAE101', 'Law', '1.1'),
('LAE102', 'Law', '1.1'),
('LAE103', 'Law', '1.1'),
('LAE104', 'Law', '1.1'),
('LAE105', 'Law', '1.1'),
('LAE110', 'Law', '1.2'),
('LAE111', 'Law', '1.2'),
('LAE112', 'Law', '1.2'),
('LAE113', 'Law', '1.2'),
('LAE114', 'Law', '1.2'),
('LAE115', 'Law', '1.2'),
('LAE200', 'Law', '2.1'),
('LAE201', 'Law', '2.1'),
('LAE202', 'Law', '2.1'),
('LAE203', 'Law', '2.1'),
('LAE204', 'Law', '2.1'),
('LAE205', 'Law', '2.1'),
('LAE210', 'Law', '2.2'),
('LAE211', 'Law', '2.2'),
('LAE212', 'Law', '2.2'),
('LAE213', 'Law', '2.2'),
('LAE214', 'Law', '2.2'),
('LAE215', 'Law', '2.2'),
('LAE300', 'Law', '3.1'),
('LAE301', 'Law', '3.1'),
('LAE302', 'Law', '3.1'),
('LAE303', 'Law', '3.1'),
('LAE304', 'Law', '3.1'),
('LAE305', 'Law', '3.1'),
('LAE310', 'Law', '3.2'),
('LAE311', 'Law', '3.2'),
('LAE312', 'Law', '3.2'),
('LAE313', 'Law', '3.2'),
('LAE314', 'Law', '3.2'),
('LAE315', 'Law', '3.2'),
('LAE400', 'Law', '4.1'),
('LAE401', 'Law', '4.1'),
('LAE402', 'Law', '4.1'),
('LAE403', 'Law', '4.1'),
('LAE404', 'Law', '4.1'),
('LAE405', 'Law', '4.1'),
('LAE410', 'Law', '4.2'),
('LAE411', 'Law', '4.2'),
('LAE412', 'Law', '4.2'),
('LAE413', 'Law', '4.2'),
('LAE414', 'Law', '4.2'),
('LAE415', 'Law', '4.2'),
('NRS100', 'Nursing', '1.1'),
('NRS101', 'Nursing', '1.1'),
('NRS102', 'Nursing', '1.1'),
('NRS103', 'Nursing', '1.1'),
('NRS104', 'Nursing', '1.1'),
('NRS105', 'Nursing', '1.1'),
('NRS110', 'Nursing', '1.2'),
('NRS111', 'Nursing', '1.2'),
('NRS112', 'Nursing', '1.2'),
('NRS113', 'Nursing', '1.2'),
('NRS114', 'Nursing', '1.2'),
('NRS115', 'Nursing', '1.2'),
('NRS200', 'Nursing', '2.1'),
('NRS201', 'Nursing', '2.1'),
('NRS202', 'Nursing', '2.1'),
('NRS203', 'Nursing', '2.1'),
('NRS204', 'Nursing', '2.1'),
('NRS205', 'Nursing', '2.1'),
('NRS210', 'Nursing', '2.2'),
('NRS211', 'Nursing', '2.2'),
('NRS212', 'Nursing', '2.2'),
('NRS213', 'Nursing', '2.2'),
('NRS214', 'Nursing', '2.2'),
('NRS215', 'Nursing', '2.2'),
('NRS300', 'Nursing', '3.1'),
('NRS301', 'Nursing', '3.1'),
('NRS302', 'Nursing', '3.1'),
('NRS303', 'Nursing', '3.1'),
('NRS304', 'Nursing', '3.1'),
('NRS305', 'Nursing', '3.1'),
('NRS310', 'Nursing', '3.2'),
('NRS311', 'Nursing', '3.2'),
('NRS312', 'Nursing', '3.2'),
('NRS313', 'Nursing', '3.2'),
('NRS314', 'Nursing', '3.2'),
('NRS315', 'Nursing', '3.2'),
('NRS400', 'Nursing', '4.1'),
('NRS401', 'Nursing', '4.1'),
('NRS402', 'Nursing', '4.1'),
('NRS403', 'Nursing', '4.1'),
('NRS404', 'Nursing', '4.1'),
('NRS405', 'Nursing', '4.1'),
('NRS410', 'Nursing', '4.2'),
('NRS411', 'Nursing', '4.2'),
('NRS412', 'Nursing', '4.2'),
('NRS413', 'Nursing', '4.2'),
('NRS414', 'Nursing', '4.2'),
('NRS415', 'Nursing', '4.2');

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `Admission Number` varchar(50) NOT NULL,
  `CourseType` varchar(50) NOT NULL,
  `Semester` varchar(50) NOT NULL,
  `Unit` varchar(50) NOT NULL,
  `Exam` int(50) NOT NULL,
  `CAT` int(50) NOT NULL,
  `Marks` int(50) NOT NULL,
  `Grade` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `exams`
--

INSERT INTO `exams` (`Admission Number`, `CourseType`, `Semester`, `Unit`, `Exam`, `CAT`, `Marks`, `Grade`) VALUES
('EB2/45326/21', 'Computer science', '2.1', 'COSC230', 20, 30, 50, 'C'),
('EB2/61314/22', 'Computer science', '3.1', 'COSC340', 67, 24, 91, 'A');

-- --------------------------------------------------------

--
-- Table structure for table `lclasstimetable`
--

CREATE TABLE `lclasstimetable` (
  `StaffID` varchar(50) NOT NULL,
  `CourseUnit` varchar(50) NOT NULL,
  `CourseType` varchar(50) NOT NULL,
  `Semester` varchar(50) NOT NULL,
  `Venue` varchar(50) NOT NULL,
  `Date` date DEFAULT NULL,
  `StartTime` time DEFAULT NULL,
  `EndTime` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lclasstimetable`
--

INSERT INTO `lclasstimetable` (`StaffID`, `CourseUnit`, `CourseType`, `Semester`, `Venue`, `Date`, `StartTime`, `EndTime`) VALUES
('st001', 'COSC340', '', '', 'S302', '2025-03-25', '09:00:00', '11:00:00'),
('st001', 'COSC320', '', '', 'BSR301', '2025-03-25', '07:00:00', '09:00:00'),
('st001', 'COSC370', '', '', 'BSR301', '2025-03-25', '11:00:00', '13:00:00'),
('st005', 'COSC100', 'ComputerScience', '3.1', 'S303', '2025-03-18', '07:00:00', '09:00:00'),
('st005', 'COSC101', 'ComputerScience', '3.1', 'S303', '2025-03-18', '09:00:00', '11:00:00'),
('st005', 'COSC102', 'ComputerScience', '3.1', 'S301', '2025-03-18', '11:00:00', '13:00:00'),
('st005', 'COSC103', 'ComputerScience', '3.1', 'S401', '2025-03-18', '13:00:00', '15:00:00'),
('st005', 'COSC104', 'ComputerScience', '3.1', 'S402', '2025-03-18', '15:00:00', '17:00:00'),
('st005', 'COSC105', 'ComputerScience', '3.1', 'S403', '2025-03-18', '17:00:00', '19:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `lecturers`
--

CREATE TABLE `lecturers` (
  `StaffID` varchar(50) NOT NULL,
  `FirstName` varchar(30) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `PhoneNumber` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lecturers`
--

INSERT INTO `lecturers` (`StaffID`, `FirstName`, `LastName`, `Email`, `Password`, `PhoneNumber`) VALUES
('st001', 'Amos', 'Mwangi', 'amos@gmail.com', 'a001', '01124344'),
('st002', 'Alan', 'Koech', 'alan@gmail.com', 'a0012', '0188373'),
('st005', 'Collins', 'Kiptoo', 'collinskiptoo@gmail.com', 'tractor', '075423156');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `Admission Number` varchar(50) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `course` varchar(50) NOT NULL,
  `year` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `PhoneNumber` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`Admission Number`, `FirstName`, `LastName`, `Email`, `course`, `year`, `Password`, `PhoneNumber`) VALUES
('EB17/34526/19', 'Frank ', 'Mwangi', 'frankmwangi@gmail.com', 'Nursing', '1.1', 'tractor', '0723476587'),
('EB2/45326/21', 'Norman', 'Muli', 'normanblack@gmail.com', 'ComputerScience', '2.1', 'tractor', '0754326754'),
('EB2/61314/22', 'Collins', 'Kiptoo', 'collinskiptoo@gmail.com', 'ComputerScience', '3.1', 'tractor', '0754231277'),
('EB1/45623/21', 'Boniface', 'Muinde', 'bonimuinde@gmail.com', 'ComputerScience', '3.1', 'tractor2', '0754654323'),
('EB1/43521/21', 'Brandon', 'Kipkosgei', 'brandykips@gmail.com', 'ComputerScience', '1.1', 'tractor', '0765342123');

-- --------------------------------------------------------

--
-- Table structure for table `units_registered`
--

CREATE TABLE `units_registered` (
  `AdmNo` varchar(50) NOT NULL,
  `CourseType` varchar(75) NOT NULL,
  `Units` varchar(75) NOT NULL,
  `Semester` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `units_registered`
--

INSERT INTO `units_registered` (`AdmNo`, `CourseType`, `Units`, `Semester`) VALUES
('EB1/45623/21', 'ComputerScience', 'COSC100', '1.1'),
('EB1/45623/21', 'ComputerScience', 'COSC101', '1.1'),
('EB1/45623/21', 'ComputerScience', 'COSC102', '1.1'),
('EB1/45623/21', 'ComputerScience', 'COSC103', '1.1'),
('EB1/45623/21', 'ComputerScience', 'COSC104', '1.1'),
('EB1/45623/21', 'ComputerScience', 'COSC105', '1.1');

-- --------------------------------------------------------

--
-- Table structure for table `venue`
--

CREATE TABLE `venue` (
  `Venue Name` varchar(50) NOT NULL,
  `Location` varchar(50) NOT NULL,
  `Capacity` int(50) NOT NULL,
  `Date` date DEFAULT current_timestamp(),
  `StartTime` time DEFAULT current_timestamp(),
  `EndTime` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `venue`
--

INSERT INTO `venue` (`Venue Name`, `Location`, `Capacity`, `Date`, `StartTime`, `EndTime`) VALUES
('S301', 'Science Complex', 120, '2025-03-28', '15:58:24', NULL),
('S302', 'Science Complex', 140, '2025-03-28', '15:58:34', NULL),
('S303', 'Science Complex', 150, '2025-03-28', '15:58:45', NULL),
('S304', 'Science Complex', 110, '2025-03-28', '15:59:03', NULL),
('S305', 'Science Complex', 100, '2025-03-28', '15:59:14', NULL),
('S306', 'Science Complex', 70, '2025-03-28', '15:59:24', NULL),
('S401', 'Science Complex', 170, '2025-03-28', '15:59:37', NULL),
('S402', 'Science Complex', 180, '2025-03-28', '16:00:03', NULL),
('S403', 'Science Complex', 160, '2025-03-28', '16:00:15', NULL),
('S404', 'Science Complex', 130, '2025-03-28', '16:00:25', NULL),
('S405', 'Science Complex', 120, '2025-03-28', '16:00:34', NULL),
('S406', 'Science Complex', 110, '2025-03-28', '16:00:46', NULL),
('S501', 'Science Complex', 210, '2025-03-28', '16:01:02', NULL),
('S502', 'Science Complex', 160, '2025-03-28', '16:01:13', NULL),
('S503', 'Science Complex', 250, '2025-03-28', '16:01:24', NULL),
('S504', 'Science Complex', 270, '2025-03-28', '16:01:36', NULL),
('S601', 'Business Complex', 130, '2025-03-28', '16:02:44', NULL),
('S602', 'Business Complex', 120, '2025-03-28', '16:03:22', NULL),
('S603', 'Business Complex', 150, '2025-03-28', '16:04:21', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookedvenue`
--
ALTER TABLE `bookedvenue`
  ADD PRIMARY KEY (`course`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`Unit`);

--
-- Indexes for table `lecturers`
--
ALTER TABLE `lecturers`
  ADD PRIMARY KEY (`StaffID`);

--
-- Indexes for table `units_registered`
--
ALTER TABLE `units_registered`
  ADD UNIQUE KEY `Units` (`Units`,`AdmNo`);

--
-- Indexes for table `venue`
--
ALTER TABLE `venue`
  ADD PRIMARY KEY (`Venue Name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
