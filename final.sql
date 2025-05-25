-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2025 at 09:59 AM
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
-- Database: `final`
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
(7, 'testtest', 'testtest', 'BIRTHDAY', '2021-11-11', '02:00-3:00pm', 'naga', 'cash', '05212563252'),
(8, 'mike', 'bustamante', 'BIRTHDAY', '2025-11-11', '1:00-2:00pm', 'naga', 'cash', '09563254521'),
(9, 'gwapo', 'clyde', 'REUNION', '2025-05-11', '12:00-4:00pm', 'naga', 'cash', '09562545212'),
(10, 'mike', 'bustamante', 'BIRTHDAY', '2025-05-04', '4:00-3:00pm', 'naga', 'cash', '09563252125'),
(11, 'johnreyy', 'cilin', 'BIRTHDAY', '2025-05-07', '4:00-12:00 am', 'mingla', 'cash', '09563252152');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `log_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `action` varchar(200) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`log_id`, `user_id`, `action`, `date`) VALUES
(4, 2, 'Created User Record with ID No. 51', '2025-05-25 14:41:51'),
(7, 2, 'Updated User Record with ID No. 48', '2025-05-25 14:51:07');

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
(38, 'jc', 'villarico', 'jc@gmail.com', 'admin', '09542522263', 'Admin', 'ky88G1YlfOhTmsJp16q0JVDaz4gY0HXwvfGZBWKq4+8=', 'ky88G1YlfOhTmsJp16q0JVDaz4gY0HXwvfGZBWKq4+8=', 'Active', 'Undecided', 'What is your favorite food?', 'wQWmjLypT69G0AT4InI0eRRxS0ltritPFV2kB+MKBos='),
(39, 'user', 'user', 'users@gmail.com', 'user2', '09545212563', 'User', 'ky88G1YlfOhTmsJp16q0JVDaz4gY0HXwvfGZBWKq4+8=', 'ky88G1YlfOhTmsJp16q0JVDaz4gY0HXwvfGZBWKq4+8=', 'Active', 'Undecided', 'What is your favorite food?', 'wQWmjLypT69G0AT4InI0eRRxS0ltritPFV2kB+MKBos='),
(40, 'dada', 'dada', 'dadadadada@gmail.com', 'dada', '23165498777', 'User', 'ky88G1YlfOhTmsJp16q0JVDaz4gY0HXwvfGZBWKq4+8=', 'ky88G1YlfOhTmsJp16q0JVDaz4gY0HXwvfGZBWKq4+8=', 'Active', '', 'What is your favorite food?', 'R8fvOc+mt70ShtnINCTzInQVSehJrRrxmoQW6GFDTaU='),
(41, 'dada', 'dada', 'jccc@gmail.com', 'jccc', '23165498777', 'User', 'ky88G1YlfOhTmsJp16q0JVDaz4gY0HXwvfGZBWKq4+8=', 'ky88G1YlfOhTmsJp16q0JVDaz4gY0HXwvfGZBWKq4+8=', 'Active', 'src/userimages/adminpp edit.png', 'What is your favorite food?', 'R8fvOc+mt70ShtnINCTzInQVSehJrRrxmoQW6GFDTaU='),
(42, 'dada', 'dada', 'dadadadadada@gmail.com', 'dadadasdasdas', '23165498777', 'User', 'ky88G1YlfOhTmsJp16q0JVDaz4gY0HXwvfGZBWKq4+8=', 'ky88G1YlfOhTmsJp16q0JVDaz4gY0HXwvfGZBWKq4+8=', 'Active', 'src/userimages/adminpp edit.png', 'What is your favorite food?', 'R8fvOc+mt70ShtnINCTzInQVSehJrRrxmoQW6GFDTaU='),
(43, 'asdasd', 'asdasd', 'adada@gmail.com', 'dasdas', '12312312312', 'Admin', 'ky88G1YlfOhTmsJp16q0JVDaz4gY0HXwvfGZBWKq4+8=', 'ky88G1YlfOhTmsJp16q0JVDaz4gY0HXwvfGZBWKq4+8=', 'Active', 'src/userimages/JCatering_logo_4x4 120.png', 'What is your favorite food?', 'QqQkNmeGSFXLWCdl09fHA+BT0fFmfTjraW+k3kPSQfk='),
(44, 'dada', 'dadada', 'dadadada@gmail.com', 'dasdada', '12345678988', 'Admin', 'QqQkNmeGSFXLWCdl09fHA+BT0fFmfTjraW+k3kPSQfk=', 'QqQkNmeGSFXLWCdl09fHA+BT0fFmfTjraW+k3kPSQfk=', 'Active', 'src/userimages/images (2).jpeg', 'What is your favorite food?', 'ruQjWztEhRd0CyRScwNXE876T3rqjJ+UshsTWAwF/74='),
(45, 'dadadadadasda', 'dasdadad', 'dasdada@gmail.com', 'dasdadas', '12312312312', 'Admin', 'ky88G1YlfOhTmsJp16q0JVDaz4gY0HXwvfGZBWKq4+8=', 'ky88G1YlfOhTmsJp16q0JVDaz4gY0HXwvfGZBWKq4+8=', 'Active', 'src/userimages/WIN_20231107_21_02_11_Pro (2).jpg', 'What is your favorite food?', 'KCX08jhpCEfC0jASJf7E5zPZxMerIN6suTwxB+EnegY='),
(46, 'dadadadaada', 'dadadadad', 'dadadadadasss@gmail.com', 'jcjcjc', '09753354555', 'Admin', 'ky88G1YlfOhTmsJp16q0JVDaz4gY0HXwvfGZBWKq4+8=', 'ky88G1YlfOhTmsJp16q0JVDaz4gY0HXwvfGZBWKq4+8=', 'Active', 'src/userimages/images.jpeg', 'What is your favorite food?', 'V5atUDwudmfNO/MTWM7ZerwkWUdLMa3R3r4WAOWL3KU='),
(47, 'adasdadas', 'dcascdascas', 'casdcas@gmail.com', 'dadasda', '12312312321', 'Admin', 'ky88G1YlfOhTmsJp16q0JVDaz4gY0HXwvfGZBWKq4+8=', 'ky88G1YlfOhTmsJp16q0JVDaz4gY0HXwvfGZBWKq4+8=', 'Active', 'src/userimages/download (2).jpeg', 'What is your favorite food?', 'KCX08jhpCEfC0jASJf7E5zPZxMerIN6suTwxB+EnegY='),
(49, 'adadad', 'asda', 'dasdasda@gmail.com', 'sdadads', '12312312312', 'Admin', 'ky88G1YlfOhTmsJp16q0JVDaz4gY0HXwvfGZBWKq4+8=', 'ky88G1YlfOhTmsJp16q0JVDaz4gY0HXwvfGZBWKq4+8=', 'Active', 'src/userimages/download.jpeg', 'What is your favorite food?', 'Lhe2wd+HTE7zopWIm6jdcXC8ViBga+m3wUGSwbPFZ6o='),
(50, 'sdasdasdda', 'asdasda', 'dadadadasd@gmail.com', 'dadadasdasd', '12312312322', 'Admin', 'NBYWrmoA/JoDM/ch9Tgq8p41ekFyon8BzFcia+U+AQc=', 'NBYWrmoA/JoDM/ch9Tgq8p41ekFyon8BzFcia+U+AQc=', 'Active', 'src/userimages/images.png', 'What is your favorite food?', '3wcBlnDw0jsLSM70CBJx719xiDV/LN089UHBCxRAblw='),
(51, 'dasda', 'dasdasdaada', 'dadasdasd@gmail.com', 'dasdasdwaasd', '12312313222', 'Admin', 'NBYWrmoA/JoDM/ch9Tgq8p41ekFyon8BzFcia+U+AQc=', 'NBYWrmoA/JoDM/ch9Tgq8p41ekFyon8BzFcia+U+AQc=', 'Active', 'src/userimages/images (1).jpeg', 'What is your favorite food?', 'KCX08jhpCEfC0jASJf7E5zPZxMerIN6suTwxB+EnegY=');

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
  ADD KEY `uid` (`user_id`);

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
  MODIFY `c_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `u_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `logs`
--
ALTER TABLE `logs`
  ADD CONSTRAINT `uid` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`u_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
