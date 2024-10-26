-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Oct 26, 2024 at 09:51 AM
-- Server version: 8.4.1
-- PHP Version: 8.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `music_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`, `full_name`, `created_at`) VALUES
(1, 'admin_taylor', 'adminpass1', 'Taylor Admin', '2024-10-26 09:47:57'),
(2, 'admin_ed', 'adminpass2', 'Ed Admin', '2024-10-26 09:47:57'),
(3, 'admin_bts', 'adminpass3', 'BTS Admin', '2024-10-26 09:47:57'),
(4, 'admin_adele', 'adminpass4', 'Adele Admin', '2024-10-26 09:47:57'),
(5, 'admin_drake', 'adminpass5', 'Drake Admin', '2024-10-26 09:47:57'),
(6, 'admin_billie', 'adminpass6', 'Billie Admin', '2024-10-26 09:47:57'),
(7, 'admin_weeknd', 'adminpass7', 'Weeknd Admin', '2024-10-26 09:47:57'),
(8, 'admin_ariana', 'adminpass8', 'Ariana Admin', '2024-10-26 09:47:57'),
(9, 'admin_harry', 'adminpass9', 'Harry Admin', '2024-10-26 09:47:57'),
(10, 'admin_olivia', 'adminpass10', 'Olivia Admin', '2024-10-26 09:47:57');

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `album_id` int NOT NULL,
  `album_name` varchar(100) NOT NULL,
  `album_hot` tinyint(1) DEFAULT '0',
  `artist_id` int DEFAULT NULL,
  `release_date` date DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`album_id`, `album_name`, `album_hot`, `artist_id`, `release_date`, `image_url`, `created_at`) VALUES
(1, '1989', 1, 1, '2014-10-27', 'https://link.to/1989.jpg', '2024-10-26 09:47:57'),
(2, 'Divide', 1, 2, '2017-03-03', 'https://link.to/divide.jpg', '2024-10-26 09:47:57'),
(3, 'Map of the Soul: 7', 1, 3, '2020-02-21', 'https://link.to/mapofthesoul7.jpg', '2024-10-26 09:47:57'),
(4, '25', 1, 4, '2015-11-20', 'https://link.to/25.jpg', '2024-10-26 09:47:57'),
(5, 'Scorpion', 1, 5, '2018-06-29', 'https://link.to/scorpion.jpg', '2024-10-26 09:47:57'),
(6, 'When We All Fall Asleep, Where Do We Go?', 0, 6, '2019-03-29', 'https://link.to/whenweallfall.jpg', '2024-10-26 09:47:57'),
(7, 'After Hours', 1, 7, '2020-03-20', 'https://link.to/afterhours.jpg', '2024-10-26 09:47:57'),
(8, 'Sweetener', 0, 8, '2018-08-17', 'https://link.to/sweetener.jpg', '2024-10-26 09:47:57'),
(9, 'Fine Line', 0, 9, '2019-12-13', 'https://link.to/fineline.jpg', '2024-10-26 09:47:57'),
(10, 'SOUR', 1, 10, '2021-05-21', 'https://link.to/sour.jpg', '2024-10-26 09:47:57');

-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

CREATE TABLE `artists` (
  `artist_id` int NOT NULL,
  `artist_name` varchar(100) NOT NULL,
  `artist_hot` tinyint(1) DEFAULT '0',
  `image_url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_hot`, `image_url`, `created_at`) VALUES
(1, 'Taylor Swift', 1, 'https://link.to/taylorswift.jpg', '2024-10-26 09:47:57'),
(2, 'Ed Sheeran', 1, 'https://link.to/edsheeran.jpg', '2024-10-26 09:47:57'),
(3, 'BTS', 1, 'https://link.to/bts.jpg', '2024-10-26 09:47:57'),
(4, 'Adele', 1, 'https://link.to/adele.jpg', '2024-10-26 09:47:57'),
(5, 'Drake', 1, 'https://link.to/drake.jpg', '2024-10-26 09:47:57'),
(6, 'Billie Eilish', 0, 'https://link.to/billieeilish.jpg', '2024-10-26 09:47:57'),
(7, 'The Weeknd', 1, 'https://link.to/theweeknd.jpg', '2024-10-26 09:47:57'),
(8, 'Ariana Grande', 1, 'https://link.to/arianagrande.jpg', '2024-10-26 09:47:57'),
(9, 'Harry Styles', 0, 'https://link.to/harrystyles.jpg', '2024-10-26 09:47:57'),
(10, 'Olivia Rodrigo', 1, 'https://link.to/oliviarodrigo.jpg', '2024-10-26 09:47:57');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `event_id` int NOT NULL,
  `event_name` varchar(100) DEFAULT NULL,
  `event_date` date DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`event_id`, `event_name`, `event_date`, `location`, `description`) VALUES
(1, 'Taylor Swift World Tour', '2024-12-01', 'New York', 'Taylor Swift performing live in NYC'),
(2, 'Ed Sheeran Concert', '2024-11-10', 'London', 'Ed Sheeran live in concert'),
(3, 'BTS World Tour', '2024-10-20', 'Seoul', 'BTS World Tour performance'),
(4, 'Adele Live', '2024-09-15', 'Los Angeles', 'Adele performing her biggest hits'),
(5, 'Drake Festival', '2024-08-05', 'Toronto', 'Drake hosting a music festival'),
(6, 'Billie Eilish Concert', '2024-07-30', 'San Francisco', 'Billie Eilish live in SF'),
(7, 'The Weeknd After Hours Tour', '2024-06-25', 'Miami', 'The Weeknd performing his hits'),
(8, 'Ariana Grande Sweetener Tour', '2024-05-14', 'Houston', 'Ariana Grande live in concert'),
(9, 'Harry Styles Fine Line Tour', '2024-04-18', 'Chicago', 'Harry Styles performing his latest album'),
(10, 'Olivia Rodrigo SOUR Tour', '2024-03-12', 'Nashville', 'Olivia Rodrigo performing songs from SOUR');

-- --------------------------------------------------------

--
-- Table structure for table `favorite`
--

CREATE TABLE `favorite` (
  `favorite_id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `song_id` int DEFAULT NULL,
  `favorite_name` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `favorite`
--

INSERT INTO `favorite` (`favorite_id`, `user_id`, `song_id`, `favorite_name`, `created_at`) VALUES
(1, 1, 1, 'Top Favorites', '2024-10-26 09:47:57'),
(2, 2, 2, 'Chill Vibes', '2024-10-26 09:47:57'),
(3, 3, 3, 'Workout Jams', '2024-10-26 09:47:57'),
(4, 4, 4, 'Pop Hits', '2024-10-26 09:47:57'),
(5, 5, 5, 'Hip-Hop Bangers', '2024-10-26 09:47:57'),
(6, 6, 6, 'Late Night Tunes', '2024-10-26 09:47:57'),
(7, 7, 7, 'Top 40', '2024-10-26 09:47:57'),
(8, 8, 8, 'Feel Good', '2024-10-26 09:47:57'),
(9, 9, 9, 'Mellow', '2024-10-26 09:47:57'),
(10, 10, 10, 'Heartbreak Anthems', '2024-10-26 09:47:57');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `genre_id` int NOT NULL,
  `genre_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`genre_id`, `genre_name`) VALUES
(1, 'Pop'),
(2, 'Rock'),
(3, 'Hip-Hop'),
(4, 'R&B'),
(5, 'Electronic'),
(6, 'Country'),
(7, 'Jazz'),
(8, 'Blues'),
(9, 'Classical'),
(10, 'Indie');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `history_id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `song_id` int DEFAULT NULL,
  `played_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`history_id`, `user_id`, `song_id`, `played_at`) VALUES
(1, 1, 1, '2024-10-26 09:47:57'),
(2, 2, 2, '2024-10-26 09:47:57'),
(3, 3, 3, '2024-10-26 09:47:57'),
(4, 4, 4, '2024-10-26 09:47:57'),
(5, 5, 5, '2024-10-26 09:47:57'),
(6, 6, 6, '2024-10-26 09:47:57'),
(7, 7, 7, '2024-10-26 09:47:57'),
(8, 8, 8, '2024-10-26 09:47:57'),
(9, 9, 9, '2024-10-26 09:47:57'),
(10, 10, 10, '2024-10-26 09:47:57');

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE `songs` (
  `song_id` int NOT NULL,
  `title` varchar(100) NOT NULL,
  `artist_id` int DEFAULT NULL,
  `album_id` int DEFAULT NULL,
  `genre_id` int DEFAULT NULL,
  `release_date` date DEFAULT NULL,
  `duration` time DEFAULT NULL,
  `play_count` int DEFAULT '0',
  `like_count` int DEFAULT '0',
  `trending_rank` int DEFAULT NULL,
  `song_pic` varchar(255) DEFAULT NULL,
  `song_url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`song_id`, `title`, `artist_id`, `album_id`, `genre_id`, `release_date`, `duration`, `play_count`, `like_count`, `trending_rank`, `song_pic`, `song_url`, `created_at`) VALUES
(1, 'Blank Space', 1, 1, 1, '2014-11-10', '00:03:51', 1200, 500, 1, 'https://link.to/blankspace.jpg', 'https://youtu.be/e-ORhEE9VVg', '2024-10-26 09:47:57'),
(2, 'Shape of You', 2, 2, 3, '2017-01-06', '00:03:53', 1500, 700, 2, 'https://link.to/shapeofyou.jpg', 'https://youtu.be/JGwWNGJdvx8', '2024-10-26 09:47:57'),
(3, 'Dynamite', 3, 3, 1, '2020-08-21', '00:03:19', 1700, 800, 3, 'https://link.to/dynamite.jpg', 'https://youtu.be/gdZLi9oWNZg', '2024-10-26 09:47:57'),
(4, 'Hello', 4, 4, 1, '2015-10-23', '00:04:55', 2000, 900, 4, 'https://link.to/hello.jpg', 'https://youtu.be/YQHsXMglC9A', '2024-10-26 09:47:57'),
(5, 'God\'s Plan', 5, 5, 3, '2018-01-19', '00:03:18', 2200, 1000, 5, 'https://link.to/godsplan.jpg', 'https://youtu.be/xpVfcZ0ZcFM', '2024-10-26 09:47:57'),
(6, 'Bad Guy', 6, 6, 5, '2019-03-29', '00:03:14', 1400, 600, 6, 'https://link.to/badguy.jpg', 'https://youtu.be/DyDfgMOUjCI', '2024-10-26 09:47:57'),
(7, 'Blinding Lights', 7, 7, 5, '2019-11-29', '00:03:21', 1800, 850, 7, 'https://link.to/blindinglights.jpg', 'https://youtu.be/fHI8X4OXluQ', '2024-10-26 09:47:57'),
(8, 'No Tears Left to Cry', 8, 8, 1, '2018-04-20', '00:03:26', 1300, 550, 8, 'https://link.to/notearslefttocry.jpg', 'https://youtu.be/ffxKSjUwKdU', '2024-10-26 09:47:57'),
(9, 'Adore You', 9, 9, 1, '2019-12-06', '00:03:27', 1250, 530, 9, 'https://link.to/adoreyou.jpg', 'https://youtu.be/VllcgZr8YZM', '2024-10-26 09:47:57'),
(10, 'Drivers License', 10, 10, 1, '2021-01-08', '00:04:02', 1600, 750, 10, 'https://link.to/driverslicense.jpg', 'https://youtu.be/ZmDBbnmKpqQ', '2024-10-26 09:47:57');

-- --------------------------------------------------------

--
-- Table structure for table `stats`
--

CREATE TABLE `stats` (
  `stat_id` int NOT NULL,
  `song_id` int DEFAULT NULL,
  `total_plays` int DEFAULT '0',
  `total_likes` int DEFAULT '0',
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `stats`
--

INSERT INTO `stats` (`stat_id`, `song_id`, `total_plays`, `total_likes`, `updated_at`) VALUES
(1, 1, 1200, 500, '2024-10-26 09:47:57'),
(2, 2, 1500, 700, '2024-10-26 09:47:57'),
(3, 3, 1700, 800, '2024-10-26 09:47:57'),
(4, 4, 2000, 900, '2024-10-26 09:47:57'),
(5, 5, 2200, 1000, '2024-10-26 09:47:57'),
(6, 6, 1400, 600, '2024-10-26 09:47:57'),
(7, 7, 1800, 850, '2024-10-26 09:47:57'),
(8, 8, 1300, 550, '2024-10-26 09:47:57'),
(9, 9, 1250, 530, '2024-10-26 09:47:57'),
(10, 10, 1600, 750, '2024-10-26 09:47:57');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `password`, `full_name`, `date_of_birth`, `gender`, `created_at`, `updated_at`) VALUES
(1, 'johndoe', 'johndoe@example.com', 'password123', 'John Doe', '1995-04-10', 'Male', '2024-10-26 09:47:57', '2024-10-26 09:47:57'),
(2, 'janesmith', 'janesmith@example.com', 'password456', 'Jane Smith', '1992-05-15', 'Female', '2024-10-26 09:47:57', '2024-10-26 09:47:57'),
(3, 'alicew', 'alicew@example.com', 'password789', 'Alice White', '1989-06-25', 'Female', '2024-10-26 09:47:57', '2024-10-26 09:47:57'),
(4, 'michaelb', 'michaelb@example.com', 'password321', 'Michael Brown', '1988-09-10', 'Male', '2024-10-26 09:47:57', '2024-10-26 09:47:57'),
(5, 'lauram', 'lauram@example.com', 'password654', 'Laura Miller', '1993-07-20', 'Female', '2024-10-26 09:47:57', '2024-10-26 09:47:57'),
(6, 'williamj', 'williamj@example.com', 'password987', 'William Jones', '1996-08-30', 'Male', '2024-10-26 09:47:57', '2024-10-26 09:47:57'),
(7, 'sarap', 'sarap@example.com', 'password147', 'Sara Parker', '1997-03-17', 'Female', '2024-10-26 09:47:57', '2024-10-26 09:47:57'),
(8, 'lukew', 'lukew@example.com', 'password258', 'Luke Wilson', '1990-10-15', 'Male', '2024-10-26 09:47:57', '2024-10-26 09:47:57'),
(9, 'emilyt', 'emilyt@example.com', 'password369', 'Emily Taylor', '1995-01-22', 'Female', '2024-10-26 09:47:57', '2024-10-26 09:47:57'),
(10, 'davidk', 'davidk@example.com', 'password741', 'David King', '1994-11-19', 'Male', '2024-10-26 09:47:57', '2024-10-26 09:47:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`album_id`),
  ADD KEY `artist_id` (`artist_id`);

--
-- Indexes for table `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`artist_id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `favorite`
--
ALTER TABLE `favorite`
  ADD PRIMARY KEY (`favorite_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `song_id` (`song_id`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`genre_id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`history_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `song_id` (`song_id`);

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`song_id`),
  ADD KEY `artist_id` (`artist_id`),
  ADD KEY `album_id` (`album_id`),
  ADD KEY `genre_id` (`genre_id`);

--
-- Indexes for table `stats`
--
ALTER TABLE `stats`
  ADD PRIMARY KEY (`stat_id`),
  ADD KEY `song_id` (`song_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `album_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `artists`
--
ALTER TABLE `artists`
  MODIFY `artist_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `event_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `favorite`
--
ALTER TABLE `favorite`
  MODIFY `favorite_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `genre_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `history_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `songs`
--
ALTER TABLE `songs`
  MODIFY `song_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `stats`
--
ALTER TABLE `stats`
  MODIFY `stat_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `albums`
--
ALTER TABLE `albums`
  ADD CONSTRAINT `albums_ibfk_1` FOREIGN KEY (`artist_id`) REFERENCES `artists` (`artist_id`);

--
-- Constraints for table `favorite`
--
ALTER TABLE `favorite`
  ADD CONSTRAINT `favorite_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `favorite_ibfk_2` FOREIGN KEY (`song_id`) REFERENCES `songs` (`song_id`);

--
-- Constraints for table `history`
--
ALTER TABLE `history`
  ADD CONSTRAINT `history_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `history_ibfk_2` FOREIGN KEY (`song_id`) REFERENCES `songs` (`song_id`);

--
-- Constraints for table `songs`
--
ALTER TABLE `songs`
  ADD CONSTRAINT `songs_ibfk_1` FOREIGN KEY (`artist_id`) REFERENCES `artists` (`artist_id`),
  ADD CONSTRAINT `songs_ibfk_2` FOREIGN KEY (`album_id`) REFERENCES `albums` (`album_id`),
  ADD CONSTRAINT `songs_ibfk_3` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`genre_id`);

--
-- Constraints for table `stats`
--
ALTER TABLE `stats`
  ADD CONSTRAINT `stats_ibfk_1` FOREIGN KEY (`song_id`) REFERENCES `songs` (`song_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
