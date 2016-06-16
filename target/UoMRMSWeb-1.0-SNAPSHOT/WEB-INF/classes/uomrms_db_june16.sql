--
-- Table structure for table `Semester`
--

CREATE TABLE IF NOT EXISTS `Semester` (
  `ID` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Semester`
--

INSERT INTO `Semester` (`ID`, `name`) VALUES
(1, 'Semester 1'),
(2, 'Semester 2'),
(3, 'Semester 3'),
(4, 'Semester 4'),
(5, 'Semester 5'),
(6, 'Semester 6'),
(7, 'Semester 7'),
(8, 'Semester 8');

CREATE TABLE IF NOT EXISTS `Faculty` (
  `ID` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Faculty`
--

INSERT INTO `Faculty` (`ID`, `name`) VALUES
(1, 'Engineering'),
(2, 'IT'),
(3, 'Architecture');



CREATE TABLE IF NOT EXISTS `Batch` (
  `ID` int(11) NOT NULL,
  `year` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Batch`
--

INSERT INTO `Batch` (`ID`, `year`) VALUES
(12, 2012),
(13, 2013),
(14, 2014),
(15, 2015);

-- --------------------------------------------------------

--
-- Table structure for table `Department`
--

CREATE TABLE IF NOT EXISTS `Department` (
  `ID` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `Faculty_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_Department_Faculty_idx` (`Faculty_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Department`
--

INSERT INTO `Department` (`ID`, `name`, `Faculty_ID`) VALUES
(1, 'Computer Science & Engineering', 1),
(2, 'Electronic & Telecommunication Engineering', 1),
(3, 'Civil Engineering', 1),
(4, 'Mechanical Engineering', 1),
(5, 'Electrical Engineering', 1),
(6, 'Chemical & Process Engineering', 1),
(7, 'Biomedical Engineering', 1),
(8, 'Material Science Engineering', 1);



CREATE TABLE IF NOT EXISTS `Grade` (
  `grade` varchar(10) NOT NULL,
  `mark` decimal(2,1) DEFAULT NULL,
  PRIMARY KEY (`grade`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Grade`
--

INSERT INTO `Grade` (`grade`, `mark`) VALUES
('A', 4.0),
('A+', 4.2),
('A-', 3.7),
('ab', 0.0),
('B', 3.0),
('B+', 3.3),
('B-', 2.7),
('C', 2.0),
('C+', 2.3),
('C-', 1.5),
('D', 1.0),
('F', 0.0),
('I-ca', 0.0),
('I-we', 0.0);

-- --------------------------------------------------------

--
-- Table structure for table `Module`
--

CREATE TABLE IF NOT EXISTS `Module` (
  `code` varchar(10) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `credits` decimal(2,1) DEFAULT NULL,
  `gpa` tinyint(1) DEFAULT NULL,
  `Semester_ID` int(11) NOT NULL,
  PRIMARY KEY (`Semester_ID`,`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Module`
--

INSERT INTO `Module` (`code`, `title`, `credits`, `gpa`, `Semester_ID`) VALUES
('CS-2022', 'OOP', 3.0, 1, 2),
('CS-2032', 'OOSD', 3.0, 1, 3);

-- --------------------------------------------------------



-- --------------------------------------------------------

--
-- Table structure for table `Student`
--

CREATE TABLE IF NOT EXISTS `Student` (
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
-- Dumping data for table `Student`
--

INSERT INTO `Student` (`ID`, `name`, `CGPA`, `rank`, `User_ID`, `Department_ID`, `Batch_ID`) VALUES
('130147J', 'Shanika', 4.0000, 2, NULL, 1, 13),
('130150L', 'Ashen', NULL, NULL, NULL, 2, 13),
('130197K', 'Ravindu', 4.2000, 1, NULL, 1, 13),
('130217B', 'Nadun', 3.0000, 3, NULL, 1, 13);

-- --------------------------------------------------------

--
-- Table structure for table `Student_has_Module`
--

CREATE TABLE IF NOT EXISTS `Student_has_Module` (
  `Student_ID` varchar(10) NOT NULL,
  `Grade_grade` varchar(10) NOT NULL,
  `Module_Semester_ID` int(11) NOT NULL,
  `Module_code` varchar(10) NOT NULL,
  PRIMARY KEY (`Student_ID`,`Module_Semester_ID`,`Module_code`),
  KEY `fk_Student_has_Module_Student1_idx` (`Student_ID`),
  KEY `fk_Student_has_Module_Grade1_idx` (`Grade_grade`),
  KEY `fk_Student_has_Module_Module1_idx` (`Module_Semester_ID`,`Module_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Student_has_Module`
--

INSERT INTO `Student_has_Module` (`Student_ID`, `Grade_grade`, `Module_Semester_ID`, `Module_code`) VALUES
('130147J', 'A', 2, 'CS-2022'),
('130197K', 'A+', 2, 'CS-2022'),
('130217B', 'B', 2, 'CS-2022');

-- --------------------------------------------------------

--
-- Table structure for table `Student_Semester_Results`
--

CREATE TABLE IF NOT EXISTS `Student_Semester_Results` (
  `Student_ID` varchar(10) NOT NULL,
  `Semester_ID` int(11) NOT NULL,
  `SGPA` decimal(5,4) DEFAULT NULL,
  `rank` varchar(45) DEFAULT NULL,
  `sem_credits` decimal(3,1) DEFAULT NULL,
  PRIMARY KEY (`Student_ID`,`Semester_ID`),
  KEY `fk_Student_has_Semester_Semester1_idx` (`Semester_ID`),
  KEY `fk_Student_has_Semester_Student1_idx` (`Student_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Student_Semester_Results`
--

INSERT INTO `Student_Semester_Results` (`Student_ID`, `Semester_ID`, `SGPA`, `rank`, `sem_credits`) VALUES
('130147J', 2, 4.0000, '2', 3.0),
('130197K', 2, 4.2000, '1', 3.0),
('130217B', 2, 3.0000, '3', 3.0);

-- --------------------------------------------------------

--
-- Table structure for table `User`
--

CREATE TABLE IF NOT EXISTS `User` (
  `ID` varchar(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `user_type` enum('SystemAdmin','UniversityAdmin','AcademicStaff','ExaminationsStaff','Student') DEFAULT NULL,
  `Department_ID` int(11) NOT NULL,
  `Gender` enum('Male','Female') DEFAULT NULL,
  `state` enum('Active','Inactive') DEFAULT 'Active',
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `username_UNIQUE` (`username`),
  KEY `fk_User_Department1_idx` (`Department_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `User`
--

INSERT INTO `User` (`ID`, `name`, `user_type`, `Department_ID`, `Gender`, `state`, `username`, `password`) VALUES
('130147J', 'Shanika', 'Student', 1, 'Male', 'Active', 'shanika', '123'),
('130150L', 'Ashen', 'SystemAdmin', 2, 'Male', 'Active', 'ashen', '123'),
('130197K', 'Ravindu', 'AcademicStaff', 1, 'Male', 'Active', 'ravindu', '123');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Department`
--
ALTER TABLE `Department`
  ADD CONSTRAINT `fk_Department_Faculty` FOREIGN KEY (`Faculty_ID`) REFERENCES `Faculty` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Module`
--
ALTER TABLE `Module`
  ADD CONSTRAINT `fk_Module_Semester1` FOREIGN KEY (`Semester_ID`) REFERENCES `Semester` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Student`
--
ALTER TABLE `Student`
  ADD CONSTRAINT `fk_Student_Batch1` FOREIGN KEY (`Batch_ID`) REFERENCES `Batch` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Student_Department1` FOREIGN KEY (`Department_ID`) REFERENCES `Department` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Student_has_Module`
--
ALTER TABLE `Student_has_Module`
  ADD CONSTRAINT `fk_Student_has_Module_Grade1` FOREIGN KEY (`Grade_grade`) REFERENCES `Grade` (`grade`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Student_has_Module_Module1` FOREIGN KEY (`Module_Semester_ID`, `Module_code`) REFERENCES `Module` (`Semester_ID`, `code`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Student_has_Module_Student1` FOREIGN KEY (`Student_ID`) REFERENCES `Student` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Student_Semester_Results`
--
ALTER TABLE `Student_Semester_Results`
  ADD CONSTRAINT `fk_Student_has_Semester_Semester1` FOREIGN KEY (`Semester_ID`) REFERENCES `Semester` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Student_has_Semester_Student1` FOREIGN KEY (`Student_ID`) REFERENCES `Student` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `User`
--
ALTER TABLE `User`
  ADD CONSTRAINT `fk_User_Department1` FOREIGN KEY (`Department_ID`) REFERENCES `Department` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

