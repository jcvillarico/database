-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2025 at 11:56 AM
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
-- Database: `2025`
--

-- --------------------------------------------------------

--
-- Table structure for table `client_book`
--

CREATE TABLE `client_book` (
  `c_id` int(50) NOT NULL,
  `c_lname` varchar(50) NOT NULL,
  `c_fname` varchar(50) NOT NULL,
  `c_event` varchar(50) NOT NULL,
  `c_date` varchar(50) NOT NULL,
  `c_time` varchar(50) NOT NULL,
  `c_place` varchar(50) NOT NULL,
  `c_payment` varchar(50) NOT NULL,
  `c_contact` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `client_book`
--

INSERT INTO `client_book` (`c_id`, `c_lname`, `c_fname`, `c_event`, `c_date`, `c_time`, `c_place`, `c_payment`, `c_contact`) VALUES
(1, 'jc', 'villarico', 'BIRTHDAY', '2025-11-11', '12:00-1:00pm', 'naga', 'cash', '09545212545'),
(2, 'james', 'villena', 'WEDDING', '2025-11-11', '12:00-3:00pm', 'naga', 'cash', '09545212563'),
(4, 'bayeut', 'bayeut', 'REUNION', '2025-11-11', '12:00-1:00pm', 'naga', 'cash', '02152125245'),
(7, 'testtest', 'testtest', 'BIRTHDAY', '2021-11-11', '02:00-3:00pm', 'naga', 'cash', '05212563252'),
(8, 'mike', 'bustamante', 'BIRTHDAY', '2025-11-11', '1:00-2:00pm', 'naga', 'cash', '09563254521'),
(9, 'gwapo', 'clyde', 'REUNION', '2025-05-11', '12:00-4:00pm', 'naga', 'cash', '09562545212'),
(10, 'mike', 'bustamante', 'BIRTHDAY', '2025-05-04', '4:00-3:00pm', 'naga', 'cash', '09563252125');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `log_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `actions` varchar(200) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `u_id` int(20) NOT NULL,
  `u_fname` varchar(50) NOT NULL,
  `u_lname` varchar(50) NOT NULL,
  `u_email` varchar(50) NOT NULL,
  `u_username` varchar(50) NOT NULL,
  `u_contact` varchar(50) NOT NULL,
  `u_type` varchar(50) NOT NULL,
  `u_password` varchar(50) NOT NULL,
  `u_cpassword` varchar(50) NOT NULL,
  `u_status` varchar(50) NOT NULL,
  `u_image` varchar(100) NOT NULL,
  `u_question` varchar(100) NOT NULL,
  `u_answer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`u_id`, `u_fname`, `u_lname`, `u_email`, `u_username`, `u_contact`, `u_type`, `u_password`, `u_cpassword`, `u_status`, `u_image`, `u_question`, `u_answer`) VALUES
(2, 'test', 'test', 'mike@gmail.com', 'test', '34535000000', 'Admin', 'ky88G1YlfOhTmsJp16q0JVDaz4gY0HXwvfGZBWKq4+8=', 'NyaDNd1pMQRb3N+SYj/4GaZCRLU9DnRtQ4eXNJ1NpXg=', 'Active', 'src/userimages/booklist icon edit.png', '', ''),
(4, 'clyde', 'villarico', 'clyde@gmail.com', 'clyde', '09545215452', 'Client', 'ky88G1YlfOhTmsJp16q0JVDaz4gY0HXwvfGZBWKq4+8=', 'hmfD7Go+m8JbK4RhyJYsj3iEWMyyRnZEmohKf5t6lYA=', 'Active', 'src/userimages/aedef123.png', '', ''),
(11, 'user', 'user', 'user@gmail.com', 'user', '09545212526', 'User', 'ky88G1YlfOhTmsJp16q0JVDaz4gY0HXwvfGZBWKq4+8=', 'ky88G1YlfOhTmsJp16q0JVDaz4gY0HXwvfGZBWKq4+8=', 'Active', 'Undecided', '', ''),
(12, 'sir', 'sir', 'sir@gmail.com', 'sir', '123123123', 'Admin', '123123123', '123123123', 'Active', '', '', ''),
(13, 'cidric', 'sanchez', 'hays@gmail.com', 'cidric', '123123123', 'Admin', '123123123', '123123123', 'Active', '', '', ''),
(18, 'jems', 'jems', 'jems@gmail.com', 'jems', '12312312312', 'Admin', 'TPjFdtSRSioqWM8jDGPQqEuRwby23sDJU3dVC3aWWEQ=', 'ky88G1YlfOhTmsJp16q0JVDaz4gY0HXwvfGZBWKq4+8=', 'Active', 'Undecided', 'What is your favorite food?', 'q61I74hjoyI7xVplzXKDQKARWI6odce9/rfsRyd5x4Q='),
(19, 'asd', 'asd', 'asd@gmail.com', 'asd', '10215245215', 'Admin', '123123123', '123123123', 'Active', 'What is your favorite food?', 'james', ''),
(20, 'dsa', 'dsa', 'dsa@gmail.com', 'dsa', '09563252125', 'Admin', 'ky88G1YlfOhTmsJp16q0JVDaz4gY0HXwvfGZBWKq4+8=', 'ky88G1YlfOhTmsJp16q0JVDaz4gY0HXwvfGZBWKq4+8=', 'Active', '', 'What is your favorite food?', 'EZya5vnKdBvQp2+H+6CyLKtUExh6+ykGqih1w44hNgM='),
(21, 'dsa', 'dsa', 'haynako@gmail.com', 'baba', '09563252125', 'Admin', 'hmfD7Go+m8JbK4RhyJYsj3iEWMyyRnZEmohKf5t6lYA=', 'ky88G1YlfOhTmsJp16q0JVDaz4gY0HXwvfGZBWKq4+8=', 'Active', 'src/userimages/reports icon.jpg', 'What is your favorite food?', 'EZya5vnKdBvQp2+H+6CyLKtUExh6+ykGqih1w44hNgM=');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `client_book`
--
ALTER TABLE `client_book`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `uid` (`u_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`u_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `client_book`
--
ALTER TABLE `client_book`
  MODIFY `c_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `u_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `logs`
--
ALTER TABLE `logs`
  ADD CONSTRAINT `logs_ibfk_1` FOREIGN KEY (`log_id`) REFERENCES `client_book` (`c_id`),
  ADD CONSTRAINT `uid` FOREIGN KEY (`u_id`) REFERENCES `tbl_user` (`u_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
