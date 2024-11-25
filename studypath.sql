-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 25, 2024 at 03:17 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `studypath`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` int NOT NULL,
  `question_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `answer_value` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `question_code`, `user_id`, `answer_value`, `created_at`) VALUES
(1455, 'EXT1', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 5, '2024-11-25 15:17:01'),
(1456, 'EXT2', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 5, '2024-11-25 15:17:01'),
(1457, 'EXT3', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 5, '2024-11-25 15:17:01'),
(1458, 'EXT4', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 5, '2024-11-25 15:17:01'),
(1459, 'EXT5', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 5, '2024-11-25 15:17:01'),
(1460, 'EXT6', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 5, '2024-11-25 15:17:01'),
(1461, 'EXT7', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 5, '2024-11-25 15:17:01'),
(1462, 'EXT8', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 1, '2024-11-25 15:17:01'),
(1463, 'EXT9', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 5, '2024-11-25 15:17:01'),
(1464, 'EXT10', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 3, '2024-11-25 15:17:01'),
(1465, 'EST1', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 4, '2024-11-25 15:17:01'),
(1466, 'EST2', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 3, '2024-11-25 15:17:01'),
(1467, 'EST3', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 5, '2024-11-25 15:17:01'),
(1468, 'EST4', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 1, '2024-11-25 15:17:01'),
(1469, 'EST5', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 4, '2024-11-25 15:17:01'),
(1470, 'EST6', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 3, '2024-11-25 15:17:01'),
(1471, 'EST7', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 5, '2024-11-25 15:17:01'),
(1472, 'EST8', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 4, '2024-11-25 15:17:01'),
(1473, 'EST9', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 5, '2024-11-25 15:17:01'),
(1474, 'EST10', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 3, '2024-11-25 15:17:01'),
(1475, 'AGR1', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 1, '2024-11-25 15:17:01'),
(1476, 'AGR2', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 5, '2024-11-25 15:17:01'),
(1477, 'AGR3', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 2, '2024-11-25 15:17:01'),
(1478, 'AGR4', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 5, '2024-11-25 15:17:01'),
(1479, 'AGR5', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 1, '2024-11-25 15:17:01'),
(1480, 'AGR6', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 5, '2024-11-25 15:17:01'),
(1481, 'AGR7', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 2, '2024-11-25 15:17:01'),
(1482, 'AGR8', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 5, '2024-11-25 15:17:01'),
(1483, 'AGR9', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 5, '2024-11-25 15:17:01'),
(1484, 'AGR10', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 4, '2024-11-25 15:17:01'),
(1485, 'CSN1', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 5, '2024-11-25 15:17:01'),
(1486, 'CSN2', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 2, '2024-11-25 15:17:01'),
(1487, 'CSN3', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 5, '2024-11-25 15:17:01'),
(1488, 'CSN4', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 1, '2024-11-25 15:17:01'),
(1489, 'CSN5', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 5, '2024-11-25 15:17:01'),
(1490, 'CSN6', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 2, '2024-11-25 15:17:01'),
(1491, 'CSN7', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 5, '2024-11-25 15:17:01'),
(1492, 'CSN8', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 1, '2024-11-25 15:17:01'),
(1493, 'CSN9', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 5, '2024-11-25 15:17:01'),
(1494, 'CSN10', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 4, '2024-11-25 15:17:01'),
(1495, 'OPN1', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 5, '2024-11-25 15:17:01'),
(1496, 'OPN2', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 2, '2024-11-25 15:17:01'),
(1497, 'OPN3', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 5, '2024-11-25 15:17:01'),
(1498, 'OPN4', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 1, '2024-11-25 15:17:01'),
(1499, 'OPN5', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 5, '2024-11-25 15:17:01'),
(1500, 'OPN6', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 2, '2024-11-25 15:17:01'),
(1501, 'OPN7', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 5, '2024-11-25 15:17:01'),
(1502, 'OPN8', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 4, '2024-11-25 15:17:01'),
(1503, 'OPN9', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 5, '2024-11-25 15:17:01'),
(1504, 'OPN10', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 5, '2024-11-25 15:17:01');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int NOT NULL,
  `question_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `question_text_en` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `question_text_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question_code`, `question_text_en`, `question_text_id`) VALUES
(1, 'EXT1', 'I am the life of the party.', 'Saya adalah pusat perhatian di pesta.'),
(2, 'EXT2', 'I don\'t talk a lot.', 'Saya tidak banyak bicara.'),
(3, 'EXT3', 'I feel comfortable around people.', 'Saya merasa nyaman berada di sekitar orang lain.'),
(4, 'EXT4', 'I keep in the background.', 'Saya cenderung berada di latar belakang.'),
(5, 'EXT5', 'I start conversations.', 'Saya memulai percakapan.'),
(6, 'EXT6', 'I have little to say.', 'Saya tidak banyak berbicara.'),
(7, 'EXT7', 'I talk to a lot of different people at parties.', 'Saya berbicara dengan banyak orang yang berbeda di pesta.'),
(8, 'EXT8', 'I don\'t like to draw attention to myself.', 'Saya tidak suka menarik perhatian pada diri sendiri.'),
(9, 'EXT9', 'I don\'t mind being the center of attention.', 'Saya tidak keberatan menjadi pusat perhatian.'),
(10, 'EXT10', 'I am quiet around strangers.', 'Saya pendiam di sekitar orang asing.'),
(11, 'EST1', 'I get stressed out easily.', 'Saya mudah stres.'),
(12, 'EST2', 'I am relaxed most of the time.', 'Saya santai hampir sepanjang waktu.'),
(13, 'EST3', 'I worry about things.', 'Saya khawatir tentang banyak hal.'),
(14, 'EST4', 'I seldom feel blue.', 'Saya jarang merasa sedih.'),
(15, 'EST5', 'I am easily disturbed.', 'Saya mudah terganggu.'),
(16, 'EST6', 'I get upset easily.', 'Saya mudah kesal.'),
(17, 'EST7', 'I change my mood a lot.', 'Mood saya sering berubah-ubah.'),
(18, 'EST8', 'I have frequent mood swings.', 'Saya sering mengalami perubahan suasana hati.'),
(19, 'EST9', 'I get irritated easily.', 'Saya mudah merasa kesal.'),
(20, 'EST10', 'I often feel blue.', 'Saya sering merasa sedih.'),
(21, 'AGR1', 'I feel little concern for others.', 'Saya kurang peduli dengan orang lain.'),
(22, 'AGR2', 'I am interested in people.', 'Saya tertarik pada orang lain.'),
(23, 'AGR3', 'I insult people.', 'Saya suka menghina orang.'),
(24, 'AGR4', 'I sympathize with others\' feelings.', 'Saya bersimpati dengan perasaan orang lain.'),
(25, 'AGR5', 'I am not interested in other people\'s problems.', 'Saya tidak tertarik dengan masalah orang lain.'),
(26, 'AGR6', 'I have a soft heart.', 'Saya memiliki hati yang lembut.'),
(27, 'AGR7', 'I am not really interested in others.', 'Saya tidak terlalu tertarik dengan orang lain.'),
(28, 'AGR8', 'I take time out for others.', 'Saya meluangkan waktu untuk orang lain.'),
(29, 'AGR9', 'I feel others\' emotions.', 'Saya merasakan emosi orang lain.'),
(30, 'AGR10', 'I make people feel at ease.', 'Saya membuat orang merasa nyaman.'),
(31, 'CSN1', 'I am always prepared.', 'Saya selalu siap.'),
(32, 'CSN2', 'I leave my belongings around.', 'Saya sering meletakkan barang sembarangan.'),
(33, 'CSN3', 'I pay attention to details.', 'Saya memperhatikan detail.'),
(34, 'CSN4', 'I make a mess of things.', 'Saya membuat banyak hal berantakan.'),
(35, 'CSN5', 'I get chores done right away.', 'Saya langsung menyelesaikan pekerjaan rumah.'),
(36, 'CSN6', 'I often forget to put things back in their proper place.', 'Saya sering lupa meletakkan barang di tempatnya.'),
(37, 'CSN7', 'I like order.', 'Saya menyukai keteraturan.'),
(38, 'CSN8', 'I shirk my duties.', 'Saya mengabaikan tugas saya.'),
(39, 'CSN9', 'I follow a schedule.', 'Saya mengikuti jadwal.'),
(40, 'CSN10', 'I am exacting in my work.', 'Saya teliti dalam pekerjaan saya.'),
(41, 'OPN1', 'I have a rich vocabulary.', 'Saya memiliki kosa kata yang kaya.'),
(42, 'OPN2', 'I have difficulty understanding abstract ideas.', 'Saya kesulitan memahami ide-ide abstrak.'),
(43, 'OPN3', 'I have a vivid imagination.', 'Saya memiliki imajinasi yang hidup.'),
(44, 'OPN4', 'I am not interested in abstract ideas.', 'Saya tidak tertarik pada ide-ide abstrak.'),
(45, 'OPN5', 'I have excellent ideas.', 'Saya memiliki ide-ide yang bagus.'),
(46, 'OPN6', 'I do not have a good imagination.', 'Saya tidak memiliki imajinasi yang baik.'),
(47, 'OPN7', 'I am quick to understand things.', 'Saya cepat memahami sesuatu.'),
(48, 'OPN8', 'I use difficult words.', 'Saya menggunakan kata-kata yang sulit.'),
(49, 'OPN9', 'I spend time reflecting on things.', 'Saya meluangkan waktu untuk merenungkan banyak hal.'),
(50, 'OPN10', 'I am full of ideas.', 'Saya penuh dengan ide-ide.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_birth` date NOT NULL,
  `gender` enum('L','P') COLLATE utf8mb4_general_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `date_birth`, `gender`, `avatar`, `created_at`) VALUES
('8kYIPrLrwwNWAZRG3JagvAMxoZI2', 'Nicky', 'nicky@gmail.com', '2024-11-21', 'L', 'https://storage.googleapis.com/study-path-bucket/fotoku.jpg_20241125-221506', '2024-11-25 15:15:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `question_code_2` (`question_code`,`user_id`),
  ADD KEY `question_code` (`question_code`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `question_code` (`question_code`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1505;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `answers_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `answers_ibfk_2` FOREIGN KEY (`question_code`) REFERENCES `questions` (`question_code`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
