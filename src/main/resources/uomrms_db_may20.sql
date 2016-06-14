-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2016 at 11:40 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `uomrms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `batch`
--

CREATE TABLE IF NOT EXISTS `batch` (
  `ID` int(11) NOT NULL,
  `year` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `batch`
--

INSERT INTO `batch` (`ID`, `year`) VALUES
(12, 2012),
(13, 2013);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE IF NOT EXISTS `department` (
  `ID` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `Faculty_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_Department_Faculty_idx` (`Faculty_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`ID`, `name`, `Faculty_ID`) VALUES
(1, 'Computer Science & Engineering', 1),
(2, 'Electronic & Telecommunication Engineering', 1),
(3, 'Civil Engineering', 1),
(4, 'Mechanical Engineering', 1),
(5, 'Electrical Engineering', 1),
(6, 'Chemical & Process Engineering', 1),
(7, 'Biomedical Engineering', 1),
(8, 'Material Science Engineering', 1);

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE IF NOT EXISTS `faculty` (
  `ID` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`ID`, `name`) VALUES
(1, 'Engineering'),
(2, 'IT'),
(3, 'Architecture');

-- --------------------------------------------------------

--
-- Table structure for table `grade`
--

CREATE TABLE IF NOT EXISTS `grade` (
  `grade` varchar(10) NOT NULL,
  `mark` decimal(2,1) DEFAULT NULL,
  PRIMARY KEY (`grade`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grade`
--

INSERT INTO `grade` (`grade`, `mark`) VALUES
('A', '4.0'),
('A+', '4.2'),
('A-', '3.7'),
('ab', '0.0'),
('B', '3.0'),
('B+', '3.3'),
('B-', '2.7'),
('C', '2.0'),
('C+', '2.3'),
('C-', '1.5'),
('D', '1.0'),
('F', '0.0'),
('I-ca', '0.0'),
('I-we', '0.0');

-- --------------------------------------------------------

--
-- Table structure for table `module`
--

CREATE TABLE IF NOT EXISTS `module` (
  `code` varchar(10) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `credits` decimal(2,1) DEFAULT NULL,
  `gpa` tinyint(1) DEFAULT NULL,
  `Semester_ID` int(11) NOT NULL,
  PRIMARY KEY (`Semester_ID`,`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `module`
--

INSERT INTO `module` (`code`, `title`, `credits`, `gpa`, `Semester_ID`) VALUES
('CS-2022', 'OOP', '3.0', 1, 2),
('CS-2032', 'OOSD', '3.0', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE IF NOT EXISTS `semester` (
  `ID` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `semester`
--

INSERT INTO `semester` (`ID`, `name`) VALUES
(1, 'Semester 1'),
(2, 'Semester 2'),
(3, 'Semester 3'),
(4, 'Semester 4'),
(5, 'Semester 5'),
(6, 'Semester 6'),
(7, 'Semester 7'),
(8, 'Semester 8');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `ID` varchar(10) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `CGPA` decimal(5,4) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `User_ID` varchar(10) DEFAULT NULL,
  `Department_ID` int(11) NOT NULL,
  `Batch_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_Student_Department1_idx` (`Department_ID`),
  KEY `fk_Student_Batch1_idx` (`Batch_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`ID`, `name`, `CGPA`, `rank`, `User_ID`, `Department_ID`, `Batch_ID`) VALUES
('130147J', 'Shanika', NULL, NULL, NULL, 1, 13),
('130197K', 'Ravindu', NULL, NULL, NULL, 1, 13);

-- --------------------------------------------------------

--
-- Table structure for table `student_has_module`
--

CREATE TABLE IF NOT EXISTS `student_has_module` (
  `Student_ID` varchar(10) NOT NULL,
  `Grade_grade` varchar(10) NOT NULL,
  `Module_Semester_ID` int(11) NOT NULL,
  `Module_code` varchar(10) NOT NULL,
  PRIMARY KEY (`Student_ID`,`Module_Semester_ID`,`Module_code`),
  KEY `fk_Student_has_Module_Student1_idx` (`Student_ID`),
  KEY `fk_Student_has_Module_Grade1_idx` (`Grade_grade`),
  KEY `fk_Student_has_Module_Module1_idx` (`Module_Semester_ID`,`Module_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_semester_results`
--

CREATE TABLE IF NOT EXISTS `student_semester_results` (
  `Student_ID` varchar(10) NOT NULL,
  `Semester_ID` int(11) NOT NULL,
  `SGPA` decimal(5,4) DEFAULT NULL,
  `rank` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Student_ID`,`Semester_ID`),
  KEY `fk_Student_has_Semester_Semester1_idx` (`Semester_ID`),
  KEY `fk_Student_has_Semester_Student1_idx` (`Student_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `ID` varchar(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `user_type` enum('System Admin','University Admin','Academic Staff','Examinations Staff','Student') DEFAULT NULL,
  `Department_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_User_Department1_idx` (`Department_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `department`
--
ALTER TABLE `department`
  ADD CONSTRAINT `fk_Department_Faculty` FOREIGN KEY (`Faculty_ID`) REFERENCES `faculty` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `module`
--
ALTER TABLE `module`
  ADD CONSTRAINT `fk_Module_Semester1` FOREIGN KEY (`Semester_ID`) REFERENCES `semester` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `fk_Student_Batch1` FOREIGN KEY (`Batch_ID`) REFERENCES `batch` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Student_Department1` FOREIGN KEY (`Department_ID`) REFERENCES `department` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `student_has_module`
--
ALTER TABLE `student_has_module`
  ADD CONSTRAINT `fk_Student_has_Module_Grade1` FOREIGN KEY (`Grade_grade`) REFERENCES `grade` (`grade`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Student_has_Module_Module1` FOREIGN KEY (`Module_Semester_ID`, `Module_code`) REFERENCES `module` (`Semester_ID`, `code`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Student_has_Module_Student1` FOREIGN KEY (`Student_ID`) REFERENCES `student` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `student_semester_results`
--
ALTER TABLE `student_semester_results`
  ADD CONSTRAINT `fk_Student_has_Semester_Semester1` FOREIGN KEY (`Semester_ID`) REFERENCES `semester` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Student_has_Semester_Student1` FOREIGN KEY (`Student_ID`) REFERENCES `student` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `fk_User_Department1` FOREIGN KEY (`Department_ID`) REFERENCES `department` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
