-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2020 at 05:31 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_utsriska`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_album`
--

CREATE TABLE `tb_album` (
  `album_id` int(11) NOT NULL,
  `album_name` varchar(100) NOT NULL,
  `album_id_artist` tinyint(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_album`
--

INSERT INTO `tb_album` (`album_id`, `album_name`, `album_id_artist`) VALUES
(1, 'Cinta luar biasa', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tb_artist`
--

CREATE TABLE `tb_artist` (
  `artist_id` tinyint(3) NOT NULL,
  `artist_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_artist`
--

INSERT INTO `tb_artist` (`artist_id`, `artist_name`) VALUES
(1, 'Tulus'),
(2, 'admesh'),
(3, 'Judika');

-- --------------------------------------------------------

--
-- Table structure for table `tb_played`
--

CREATE TABLE `tb_played` (
  `play_id` int(11) NOT NULL,
  `play_id_track` int(11) NOT NULL,
  `play_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_track`
--

CREATE TABLE `tb_track` (
  `track_id` int(11) NOT NULL,
  `track_name` varchar(256) NOT NULL,
  `track_id_album` int(11) NOT NULL,
  `track_time` varchar(10) NOT NULL DEFAULT '00:00',
  `track_file` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_track`
--

INSERT INTO `tb_track` (`track_id`, `track_name`, `track_id_album`, `track_time`, `track_file`) VALUES
(1, 'cinta luar biasa', 1, '4:32', '7b462022aac825fcf3acd38550cbb523.mp3');

-- --------------------------------------------------------

--
-- Table structure for table `tb_users`
--

CREATE TABLE `tb_users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_password` varchar(256) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_nama_lengkap` varchar(100) NOT NULL,
  `user_role` char(2) DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_users`
--

INSERT INTO `tb_users` (`user_id`, `user_name`, `user_password`, `user_email`, `user_nama_lengkap`, `user_role`) VALUES
(1, 'riska', '$2y$12$/V4LVane0t7eqTxP4z32IeE58v0JeMXHaAUDRgYjsuEVh/WCtUTse', 'riskajuliana2707@gmail.com', 'Riska Juliana', '2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_album`
--
ALTER TABLE `tb_album`
  ADD PRIMARY KEY (`album_id`),
  ADD UNIQUE KEY `album_name` (`album_name`),
  ADD KEY `album_id_artist` (`album_id_artist`);

--
-- Indexes for table `tb_artist`
--
ALTER TABLE `tb_artist`
  ADD PRIMARY KEY (`artist_id`);

--
-- Indexes for table `tb_played`
--
ALTER TABLE `tb_played`
  ADD PRIMARY KEY (`play_id`);

--
-- Indexes for table `tb_track`
--
ALTER TABLE `tb_track`
  ADD PRIMARY KEY (`track_id`),
  ADD UNIQUE KEY `track_name` (`track_name`),
  ADD KEY `track_id_album` (`track_id_album`);

--
-- Indexes for table `tb_users`
--
ALTER TABLE `tb_users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_name` (`user_name`,`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_album`
--
ALTER TABLE `tb_album`
  MODIFY `album_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_artist`
--
ALTER TABLE `tb_artist`
  MODIFY `artist_id` tinyint(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_played`
--
ALTER TABLE `tb_played`
  MODIFY `play_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_track`
--
ALTER TABLE `tb_track`
  MODIFY `track_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_users`
--
ALTER TABLE `tb_users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_album`
--
ALTER TABLE `tb_album`
  ADD CONSTRAINT `tb_album_ibfk_1` FOREIGN KEY (`album_id_artist`) REFERENCES `tb_artist` (`artist_id`) ON DELETE CASCADE;

--
-- Constraints for table `tb_track`
--
ALTER TABLE `tb_track`
  ADD CONSTRAINT `tb_track_ibfk_1` FOREIGN KEY (`track_id_album`) REFERENCES `tb_album` (`album_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
