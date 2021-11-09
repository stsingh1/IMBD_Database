-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 05, 2021 at 05:36 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project1`
--

-- --------------------------------------------------------

--
-- Table structure for table `Award`
--

CREATE TABLE `Award` (
  `mpid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `award_name` varchar(100) NOT NULL,
  `award_year` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Award`
--

INSERT INTO `Award` (`mpid`, `pid`, `award_name`, `award_year`) VALUES
(101, 37, 'Best Actor', 2014),
(101, 37, 'Best Actor', 2016),
(101, 40, 'Best Director', 2014),
(102, 45, 'Best Director', 2004),
(103, 42, 'Best Actor', 2001),
(103, 43, 'Best Actor', 2006),
(103, 44, 'Best Actor', 2006),
(103, 45, 'Best Director', 2001),
(103, 45, 'Best Director', 2002),
(103, 45, 'Best Director', 2004),
(103, 45, 'Best Director', 2005),
(103, 45, 'Best Director', 2006),
(103, 45, 'Best Producer', 2004),
(103, 45, 'Best Producer', 2006),
(104, 40, 'Best Director', 2008),
(104, 40, 'Best Producer', 2008),
(106, 49, 'Best Director', 2010),
(107, 40, 'Best Actor', 1989),
(109, 53, 'Best Director', 1990),
(109, 53, 'Best Director', 1995),
(109, 53, 'Best Director', 2015),
(109, 53, 'Best Director', 2020),
(109, 53, 'Best Director', 2021),
(110, 43, 'Best Actor', 2019),
(110, 43, 'Best Actor By Popular Vote', 2019),
(110, 52, 'Best Director', 2020),
(201, 5, 'Best Actor', 2010),
(201, 5, 'Best Director', 2009),
(205, 13, 'Best Actor', 2012),
(208, 9, 'Best Actor', 2000),
(209, 9, 'Best Actor', 2015),
(210, 13, 'Best Actor', 2014);

-- --------------------------------------------------------

--
-- Table structure for table `Genre`
--

CREATE TABLE `Genre` (
  `mpid` int(11) NOT NULL,
  `genre_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Genre`
--

INSERT INTO `Genre` (`mpid`, `genre_name`) VALUES
(101, 'Crime'),
(102, 'Action'),
(103, 'Action'),
(104, 'Animation'),
(105, 'Crime'),
(106, 'Animation'),
(107, 'Comedy'),
(108, 'Comedy');

-- --------------------------------------------------------

--
-- Table structure for table `Likes`
--

CREATE TABLE `Likes` (
  `mpid` int(11) NOT NULL,
  `uemail` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Likes`
--

INSERT INTO `Likes` (`mpid`, `uemail`) VALUES
(101, 'aneeshr@bu.edu'),
(104, 'aneeshr@bu.edu'),
(201, 'aneeshr@bu.edu'),
(101, 'jamiel@gmail.com'),
(108, 'jamiel@gmail.com'),
(102, 'poly@gmail.com'),
(104, 'poly@gmail.com'),
(204, 'poly@gmail.com'),
(208, 'poly@gmail.com'),
(210, 'poly@gmail.com'),
(101, 'ssarkar@bu.edu'),
(105, 'ssarkar@bu.edu'),
(203, 'ssarkar@bu.edu'),
(206, 'ssarkar@bu.edu');

-- --------------------------------------------------------

--
-- Table structure for table `Location`
--

CREATE TABLE `Location` (
  `mpid` int(11) NOT NULL,
  `zip` int(11) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Location`
--

INSERT INTO `Location` (`mpid`, `zip`, `city`, `country`) VALUES
(101, 2135, 'Boston', 'USA'),
(201, 99999, 'San Jose', 'USA');

-- --------------------------------------------------------

--
-- Table structure for table `MotionPicture`
--

CREATE TABLE `MotionPicture` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `rating` float DEFAULT NULL,
  `production` varchar(200) DEFAULT NULL,
  `budget` bigint(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `MotionPicture`
--

INSERT INTO `MotionPicture` (`id`, `name`, `rating`, `production`, `budget`) VALUES
(101, 'Breaking Bad', 9.1, 'High Bridge Productions', 195000000),
(102, 'Band of Brothers', 9.5, 'DreamWorks', 125000000),
(103, 'Game of Thrones', 8.9, 'HBO', 480000000),
(104, 'Rick and Morty', 8.2, 'Green Portal Productions', 52000000),
(105, 'Sherlock', 9, 'BBC', 13000000),
(106, 'Fullmetal Alchemist: Brotherhood', 7.9, 'Bones', 5500000),
(107, 'Ted Lasso', 6.9, 'Universal Television', 120000000),
(108, 'Fleabag', 8, 'Two Brothers Pictures', 20000000),
(109, 'The Simpsons', 8.1, 'Gracie Films', 3650000000),
(110, 'Sacred Games', 7.1, 'Netflix', 18000000),
(111, 'Agents of Shield', 6, 'Marvel', 200000000),
(201, 'Iron Man', 9, 'Marvel', 200000000),
(202, 'Daredevil', 2, 'Marvel', 50000000),
(203, 'Doctor Strange', 8, 'Marvel', 300000000),
(204, 'Batman vs Superman', 3, 'Warner Bros', 300000000),
(205, 'Batman: The dark knight', 8, 'Warner Bros', 150000000),
(206, 'Pretty Woman', 6, 'Touchstone Pictures', 10000000),
(207, 'The Notebook ', 7, 'Gran Via', 30000000),
(208, 'The Matrix', 9, 'Warner Bros', 20000000),
(209, 'John Wick', 8, 'Summit Entertainment', 70000000),
(210, 'London has Fallen', 8, 'Grammercy Pictures', 60000000);

-- --------------------------------------------------------

--
-- Table structure for table `Movie`
--

CREATE TABLE `Movie` (
  `mpid` int(11) NOT NULL,
  `boxoffice_collection` bigint(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Movie`
--

INSERT INTO `Movie` (`mpid`, `boxoffice_collection`) VALUES
(201, 500000000),
(202, 60000000),
(203, 300000000),
(204, 200000000),
(205, 300000000),
(206, 50000000),
(207, 55000000),
(208, 80000000),
(209, 150000000),
(210, 206000000);

-- --------------------------------------------------------

--
-- Table structure for table `People`
--

CREATE TABLE `People` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `nationality` varchar(100) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `People`
--

INSERT INTO `People` (`id`, `name`, `nationality`, `dob`, `gender`) VALUES
(1, 'Brian Cranston', 'USA', '1956-12-12', 'M'),
(2, 'Aaron Paul', 'USA', '1982-01-12', 'M'),
(3, 'Vince Gillian', 'USA', '1976-03-03', 'M'),
(4, 'Melissa Burns', 'USA', '1986-04-21', 'F'),
(5, 'Robert Downey Jr.', 'USA', '1970-08-17', 'M'),
(6, 'Jon Favreau', 'France', '1960-10-10', 'M'),
(7, 'Gwyneth Paltrow', 'USA', '1980-11-30', 'F'),
(8, 'Benedict Cumberbatch', 'USA', '1980-05-03', 'M'),
(9, 'Keanu Reaves', 'USA', '1978-03-22', 'M'),
(10, 'Ben Affleck ', 'USA', '1965-02-11', 'M'),
(11, 'Henry Cavill', 'France', '1970-10-26', 'M'),
(12, 'Christian Bale', 'France', '1971-01-05', 'M'),
(13, 'Morgan Freeman', 'France', '1972-08-11', 'M'),
(14, 'Gerard Butler ', 'France', '1973-09-21', 'M'),
(15, 'Aaron Eckhart', 'France', '1973-11-26', 'M'),
(16, 'Michael Nyqvist', 'France', '1974-10-22', 'M'),
(17, 'Chad Stahelski', 'Germany', '1975-08-29', 'M'),
(18, 'Babak Najafi', 'Germany', '1976-02-20', 'M'),
(19, 'The Wachowskis', 'Germany', '1977-04-26', 'M'),
(20, 'Carrie-Anne Moss', 'Germany', '1978-06-21', 'M'),
(21, 'Laurence Fishburne', 'India', '1978-09-05', 'M'),
(22, 'Ryan Gosling', 'India', '1979-02-13', 'M'),
(23, 'Nick Cassavetes', 'UK', '1979-02-26', 'M'),
(24, 'Rachel McAdams', 'UK', '1979-04-10', 'F'),
(25, 'Mark Johnson', 'UK', '1980-03-07', 'M'),
(26, 'Amon Milchan', 'UK', '1981-06-29', 'M'),
(27, 'Richard Gere', 'UK', '1981-08-13', 'M'),
(28, 'Julia Roberts', 'USA', '1982-02-01', 'F'),
(29, 'Jennifer Garner', 'Canada', '1983-05-24', 'F'),
(30, 'Zack Snyder', 'Canada', '1983-06-06', 'M'),
(31, 'Christopher Nolan', 'USA', '1985-08-14', 'M'),
(32, 'Amy Adams', 'USA', '1985-08-30', 'F'),
(33, 'Gal Gadot', 'USA', '1986-01-29', 'F'),
(34, 'Deborah Snyder', 'UK', '1987-08-17', 'F'),
(35, 'Gary Oldman', 'UK', '1988-01-29', 'M'),
(36, 'Michael Caine', 'Finland', '1986-01-29', 'M'),
(37, 'Jeremy Luke', 'Canada', '1982-02-01', 'M'),
(38, 'Walter Lewis', 'USA', '1960-01-31', 'M'),
(39, 'Ben White', 'Mexico', '2002-02-02', 'M'),
(40, 'Giovanni Nedved', 'Italy', '1959-01-09', 'M'),
(41, 'Robin Williams', 'Poland', '1987-09-12', 'F'),
(42, 'John Cena', 'USA', '1989-11-04', 'M'),
(43, 'Jacob Bournemouth', 'Ierland', '1976-10-01', 'M'),
(44, 'Kevin Stu', 'UK', '1965-09-02', 'M'),
(45, 'Larissa Mond', 'USA', '2006-06-06', 'F'),
(46, 'Niu Li', 'South Korea', '1973-09-04', 'F'),
(47, 'Ashraf Gul', 'Iran', '1971-03-03', 'M'),
(48, 'Naomi Zen', 'Taiwan', '1993-01-10', 'F'),
(49, 'Jane Na', 'China', '1961-11-12', 'F'),
(50, 'Cole Sim', 'Germany', '1957-09-04', 'M'),
(51, 'Noah Ashley', 'UK', '2010-02-09', 'F'),
(52, 'Gokul Parag', 'Bangladesh', '2009-01-02', 'M'),
(53, 'Sachin Riol', 'India', '1964-10-05', 'M'),
(54, 'Lewis Saka', 'USA', '1981-05-06', 'M');

-- --------------------------------------------------------

--
-- Table structure for table `Registered_User`
--

CREATE TABLE `Registered_User` (
  `email` varchar(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `age` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Registered_User`
--

INSERT INTO `Registered_User` (`email`, `name`, `age`) VALUES
('aneeshr@bu.edu', 'Raman Aneesh', 25),
('azhu@gmail.com', 'Ani Zhu', 59),
('jamiel@gmail.com', 'Jamie Vardy', 29),
('jkumar@gmail.com', 'Kumar Jaya', 23),
('lsararh@gmail.com', 'Limon Sarah', 32),
('natashar@gmail.com', 'Natasha Roy', 39),
('poly@gmail.com', 'Poly Das', 55),
('ssarkar@bu.edu', 'Simone Sarkar', 23),
('wasaya@yahoo.com', 'Wasay Ahmeed', 41),
('wildy@fb.com', 'Wlide Oscar', 56);

-- --------------------------------------------------------

--
-- Table structure for table `Role`
--

CREATE TABLE `Role` (
  `mpid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `role_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Role`
--

INSERT INTO `Role` (`mpid`, `pid`, `role_name`) VALUES
(101, 37, 'Actor'),
(101, 38, 'Actor'),
(101, 39, 'Actor'),
(101, 40, 'Director'),
(102, 37, 'Actor'),
(102, 38, 'Actor'),
(102, 39, 'Actor'),
(102, 40, 'Director'),
(102, 41, 'Producer'),
(103, 39, 'Actor'),
(103, 42, 'Actor'),
(103, 43, 'Actor'),
(103, 44, 'Actor'),
(103, 45, 'Director'),
(104, 40, 'Director'),
(105, 41, 'Producer'),
(105, 46, 'Actor'),
(105, 47, 'Actor'),
(105, 48, 'Director'),
(106, 38, 'Producer'),
(106, 49, 'Director'),
(107, 40, 'Actor'),
(107, 50, 'Director'),
(107, 51, 'Producer'),
(108, 38, 'Actor'),
(108, 52, 'Director'),
(108, 53, 'Producer'),
(109, 46, 'Producer'),
(109, 53, 'Director'),
(110, 43, 'Actor'),
(110, 52, 'Director'),
(110, 54, 'Producer'),
(111, 53, 'Director'),
(111, 54, 'Producer'),
(201, 5, 'Actor'),
(201, 6, 'Actor'),
(201, 7, 'Producer'),
(202, 6, 'Actor'),
(202, 10, 'Actor'),
(202, 29, 'Actor'),
(203, 8, 'Actor'),
(203, 24, 'Actor'),
(204, 10, 'Actor'),
(204, 11, 'Actor'),
(204, 30, 'Director'),
(204, 32, 'Actor'),
(204, 33, 'Actor'),
(204, 34, 'Producer'),
(205, 12, 'Actor'),
(205, 13, 'Actor'),
(205, 31, 'Producer'),
(206, 26, 'Producer'),
(206, 27, 'Actor'),
(206, 28, 'Actor'),
(207, 22, 'Actor'),
(207, 23, 'Director'),
(207, 24, 'Actor'),
(207, 25, 'Producer'),
(208, 9, 'Actor'),
(208, 19, 'Director'),
(208, 20, 'Actor'),
(208, 21, 'Actor'),
(209, 9, 'Actor'),
(209, 16, 'Actor'),
(209, 17, 'Director'),
(210, 13, 'Actor'),
(210, 14, 'Producer'),
(210, 18, 'Director');

-- --------------------------------------------------------

--
-- Table structure for table `Series`
--

CREATE TABLE `Series` (
  `mpid` int(11) NOT NULL,
  `season_count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Series`
--

INSERT INTO `Series` (`mpid`, `season_count`) VALUES
(101, 5),
(102, 1),
(103, 8),
(104, 5),
(105, 4),
(106, 1),
(107, 2),
(108, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Award`
--
ALTER TABLE `Award`
  ADD PRIMARY KEY (`mpid`,`pid`,`award_name`,`award_year`),
  ADD KEY `pid` (`pid`);

--
-- Indexes for table `Genre`
--
ALTER TABLE `Genre`
  ADD PRIMARY KEY (`mpid`);

--
-- Indexes for table `Likes`
--
ALTER TABLE `Likes`
  ADD PRIMARY KEY (`uemail`,`mpid`),
  ADD KEY `mpid` (`mpid`);

--
-- Indexes for table `Location`
--
ALTER TABLE `Location`
  ADD PRIMARY KEY (`mpid`);
ALTER TABLE `Location` ADD FULLTEXT KEY `city` (`city`);

--
-- Indexes for table `MotionPicture`
--
ALTER TABLE `MotionPicture`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `MotionPicture` ADD FULLTEXT KEY `name` (`name`,`production`);
ALTER TABLE `MotionPicture` ADD FULLTEXT KEY `name_2` (`name`,`production`);
ALTER TABLE `MotionPicture` ADD FULLTEXT KEY `name_3` (`name`);

--
-- Indexes for table `Movie`
--
ALTER TABLE `Movie`
  ADD PRIMARY KEY (`mpid`);

--
-- Indexes for table `People`
--
ALTER TABLE `People`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Registered_User`
--
ALTER TABLE `Registered_User`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `Role`
--
ALTER TABLE `Role`
  ADD PRIMARY KEY (`mpid`,`pid`),
  ADD KEY `pid` (`pid`);

--
-- Indexes for table `Series`
--
ALTER TABLE `Series`
  ADD PRIMARY KEY (`mpid`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Award`
--
ALTER TABLE `Award`
  ADD CONSTRAINT `award_ibfk_1` FOREIGN KEY (`mpid`) REFERENCES `MotionPicture` (`id`),
  ADD CONSTRAINT `award_ibfk_2` FOREIGN KEY (`pid`) REFERENCES `People` (`id`);

--
-- Constraints for table `Genre`
--
ALTER TABLE `Genre`
  ADD CONSTRAINT `genre_ibfk_1` FOREIGN KEY (`mpid`) REFERENCES `MotionPicture` (`id`);

--
-- Constraints for table `Likes`
--
ALTER TABLE `Likes`
  ADD CONSTRAINT `likes_ibfk_1` FOREIGN KEY (`uemail`) REFERENCES `Registered_User` (`email`),
  ADD CONSTRAINT `likes_ibfk_2` FOREIGN KEY (`mpid`) REFERENCES `MotionPicture` (`id`);

--
-- Constraints for table `Location`
--
ALTER TABLE `Location`
  ADD CONSTRAINT `location_ibfk_1` FOREIGN KEY (`mpid`) REFERENCES `MotionPicture` (`id`);

--
-- Constraints for table `Movie`
--
ALTER TABLE `Movie`
  ADD CONSTRAINT `movie_ibfk_1` FOREIGN KEY (`mpid`) REFERENCES `MotionPicture` (`id`);

--
-- Constraints for table `Role`
--
ALTER TABLE `Role`
  ADD CONSTRAINT `role_ibfk_1` FOREIGN KEY (`mpid`) REFERENCES `MotionPicture` (`id`),
  ADD CONSTRAINT `role_ibfk_2` FOREIGN KEY (`pid`) REFERENCES `People` (`id`);

--
-- Constraints for table `Series`
--
ALTER TABLE `Series`
  ADD CONSTRAINT `series_ibfk_1` FOREIGN KEY (`mpid`) REFERENCES `MotionPicture` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
