-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2024 at 04:25 PM
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
-- Database: `todo_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `todos`
--

CREATE TABLE `todos` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `completed` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `todos`
--

INSERT INTO `todos` (`id`, `title`, `description`, `completed`, `created_at`) VALUES
(6, 'Matematika', 'Homework Chapter 5', 1, '2024-11-18 08:18:29'),
(7, 'Science', 'Lab Report on Photosynthesis', 0, '2024-11-18 08:44:49'),
(9, 'Matematika', 'Homework Chapter 6', 1, '2024-11-18 13:37:46'),
(10, 'History', 'Read Chapter 7', 0, '2024-11-18 13:38:53'),
(11, 'Matematika', 'Homework Chapter 7', 0, '2024-11-18 13:39:16'),
(12, 'English', ' Essay on \"The Great Gatsby\"', 1, '2024-11-18 13:46:13'),
(14, 'Physics', 'Homework on Newton\'s Laws', 1, '2024-11-21 04:44:15'),
(22, 'Chemistry', 'Lab Report on Acids and Bases', 0, '2024-11-22 00:49:33'),
(24, 'Matematika', 'Homework Chapter 8', 0, '2024-11-22 13:48:06'),
(26, 'History', 'Read Chapter 8', 1, '2024-11-22 15:03:36'),
(27, 'Biology', 'Write about the human digestive system', 1, '2024-11-22 15:04:21'),
(28, 'Matematika', 'Homework Chapter 9', 0, '2024-11-22 15:04:39'),
(29, 'History', 'Write a paper on World War 2', 0, '2024-11-22 15:05:02'),
(30, 'Science', 'Experiment on Chemical Reactions', 1, '2024-11-22 15:05:21'),
(31, 'English', 'Read Chapter 5 of \"The Great Gatsby\"', 1, '2024-11-22 15:05:54'),
(32, 'Physics', 'Physics Homework on Electricity', 0, '2024-11-22 15:06:09'),
(33, 'Matematika', 'Homework Chapter 10', 1, '2024-11-22 15:06:33'),
(34, 'History', 'Write about the French Revolution', 0, '2024-11-22 15:06:50'),
(35, 'Chemistry', 'Write a report on Chemical Bonding', 0, '2024-11-22 15:07:28'),
(36, 'English', 'Poetry Analysis Assignment', 1, '2024-11-22 15:07:44'),
(37, 'Physics', 'Study for upcoming exam', 0, '2024-11-22 15:08:10'),
(38, 'Biology', 'Research Paper on Evolution', 1, '2024-11-22 15:08:27'),
(39, 'History', 'Research Paper on the Industrial Revolution', 0, '2024-11-22 15:08:43'),
(40, 'Matematika', 'Math Project on Geometry', 1, '2024-11-22 15:08:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `todos`
--
ALTER TABLE `todos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `todos`
--
ALTER TABLE `todos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
