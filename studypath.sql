-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 25, 2024 at 11:57 AM
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
  `user_id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `answer_value` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `question_code`, `user_id`, `answer_value`, `created_at`) VALUES
(1204, 'EXT1', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 5, '2024-11-25 11:18:21'),
(1205, 'EXT2', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 5, '2024-11-25 11:18:21'),
(1206, 'EXT3', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 5, '2024-11-25 11:18:21'),
(1207, 'EXT4', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 5, '2024-11-25 11:18:21'),
(1208, 'EXT5', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 5, '2024-11-25 11:18:21'),
(1209, 'EXT6', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 5, '2024-11-25 11:18:21'),
(1210, 'EXT7', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 5, '2024-11-25 11:18:21'),
(1211, 'EXT8', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 1, '2024-11-25 11:18:21'),
(1212, 'EXT9', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 5, '2024-11-25 11:18:21'),
(1213, 'EXT10', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 3, '2024-11-25 11:18:21'),
(1214, 'EST1', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 4, '2024-11-25 11:18:21'),
(1215, 'EST2', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 3, '2024-11-25 11:18:21'),
(1216, 'EST3', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 5, '2024-11-25 11:18:21'),
(1217, 'EST4', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 1, '2024-11-25 11:18:21'),
(1218, 'EST5', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 4, '2024-11-25 11:18:21'),
(1219, 'EST6', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 3, '2024-11-25 11:18:21'),
(1220, 'EST7', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 5, '2024-11-25 11:18:21'),
(1221, 'EST8', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 4, '2024-11-25 11:18:21'),
(1222, 'EST9', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 5, '2024-11-25 11:18:21'),
(1223, 'EST10', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 3, '2024-11-25 11:18:21'),
(1224, 'AGR1', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 1, '2024-11-25 11:18:21'),
(1225, 'AGR2', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 5, '2024-11-25 11:18:21'),
(1226, 'AGR3', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 2, '2024-11-25 11:18:21'),
(1227, 'AGR4', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 5, '2024-11-25 11:18:21'),
(1228, 'AGR5', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 1, '2024-11-25 11:18:21'),
(1229, 'AGR6', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 5, '2024-11-25 11:18:21'),
(1230, 'AGR7', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 2, '2024-11-25 11:18:21'),
(1231, 'AGR8', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 5, '2024-11-25 11:18:21'),
(1232, 'AGR9', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 5, '2024-11-25 11:18:21'),
(1233, 'AGR10', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 4, '2024-11-25 11:18:21'),
(1234, 'CSN1', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 5, '2024-11-25 11:18:21'),
(1235, 'CSN2', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 2, '2024-11-25 11:18:21'),
(1236, 'CSN3', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 5, '2024-11-25 11:18:21'),
(1237, 'CSN4', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 1, '2024-11-25 11:18:21'),
(1238, 'CSN5', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 5, '2024-11-25 11:18:21'),
(1239, 'CSN6', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 2, '2024-11-25 11:18:21'),
(1240, 'CSN7', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 5, '2024-11-25 11:18:21'),
(1241, 'CSN8', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 1, '2024-11-25 11:18:21'),
(1242, 'CSN9', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 5, '2024-11-25 11:18:21'),
(1243, 'CSN10', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 4, '2024-11-25 11:18:21'),
(1244, 'OPN1', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 5, '2024-11-25 11:18:21'),
(1245, 'OPN2', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 2, '2024-11-25 11:18:21'),
(1246, 'OPN3', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 5, '2024-11-25 11:18:21'),
(1247, 'OPN4', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 1, '2024-11-25 11:18:21'),
(1248, 'OPN5', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 5, '2024-11-25 11:18:21'),
(1249, 'OPN6', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 2, '2024-11-25 11:18:21'),
(1250, 'OPN7', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 5, '2024-11-25 11:18:21'),
(1251, 'OPN8', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 4, '2024-11-25 11:18:21'),
(1252, 'OPN9', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 5, '2024-11-25 11:18:21'),
(1253, 'OPN10', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 5, '2024-11-25 11:18:21');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `question_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `question_text_en` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `question_text_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`question_code`, `question_text_en`, `question_text_id`) VALUES
('AGR1', 'I feel little concern for others.', 'Saya kurang peduli dengan orang lain.'),
('AGR10', 'I make people feel at ease.', 'Saya membuat orang merasa nyaman.'),
('AGR2', 'I am interested in people.', 'Saya tertarik dengan orang lain.'),
('AGR3', 'I insult people.', 'Saya menghina orang lain.'),
('AGR4', 'I sympathize with others\' feelings.', 'Saya bersimpati dengan perasaan orang lain.'),
('AGR5', 'I am not interested in other people\'s problems.', 'Saya tidak tertarik dengan masalah orang lain.'),
('AGR6', 'I have a soft heart.', 'Saya memiliki hati yang lembut.'),
('AGR7', 'I am not really interested in others.', 'Saya sebenarnya tidak tertarik dengan orang lain.'),
('AGR8', 'I take time out for others.', 'Saya meluangkan waktu untuk orang lain.'),
('AGR9', 'I feel others\' emotions.', 'Saya merasakan emosi orang lain.'),
('CSN1', 'I am always prepared.', 'Saya selalu siap.'),
('CSN10', 'I am exacting in my work.', 'Saya teliti dalam pekerjaan saya.'),
('CSN2', 'I leave my belongings around.', 'Saya sering meninggalkan barang-barang saya sembarangan.'),
('CSN3', 'I pay attention to details.', 'Saya memperhatikan hal-hal kecil.'),
('CSN4', 'I make a mess of things.', 'Saya sering membuat berantakan.'),
('CSN5', 'I get chores done right away.', 'Saya segera menyelesaikan tugas-tugas.'),
('CSN6', 'I often forget to put things back in their proper place.', 'Saya sering lupa mengembalikan barang ke tempatnya.'),
('CSN7', 'I like order.', 'Saya suka keteraturan.'),
('CSN8', 'I shirk my duties.', 'Saya menghindari tugas-tugas saya.'),
('CSN9', 'I follow a schedule.', 'Saya mengikuti jadwal.'),
('EST1', 'I get stressed out easily.', 'Saya mudah stres.'),
('EST10', 'I often feel blue.', 'Saya sering merasa sedih.'),
('EST2', 'I am relaxed most of the time.', 'Saya biasanya santai.'),
('EST3', 'I worry about things.', 'Saya khawatir tentang banyak hal.'),
('EST4', 'I seldom feel blue.', 'Saya jarang merasa sedih.'),
('EST5', 'I am easily disturbed.', 'Saya mudah terganggu.'),
('EST6', 'I get upset easily.', 'Saya mudah marah.'),
('EST7', 'I change my mood a lot.', 'Saya sering berubah suasana hati.'),
('EST8', 'I have frequent mood swings.', 'Saya sering mengalami perubahan suasana hati.'),
('EST9', 'I get irritated easily.', 'Saya mudah kesal.'),
('EXT1', 'I am the life of the party.', 'Saya adalah pusat perhatian di pesta.'),
('EXT10', 'I am quiet around strangers.', 'Saya pendiam di sekitar orang asing.'),
('EXT2', 'I don\'t talk a lot.', 'Saya tidak banyak bicara.'),
('EXT3', 'I feel comfortable around people.', 'Saya merasa nyaman di sekitar orang lain.'),
('EXT4', 'I keep in the background.', 'Saya tetap di latar belakang.'),
('EXT5', 'I start conversations.', 'Saya memulai percakapan.'),
('EXT6', 'I have little to say.', 'Saya tidak banyak bicara.'),
('EXT7', 'I talk to a lot of different people at parties.', 'Saya berbicara dengan banyak orang di pesta.'),
('EXT8', 'I don\'t like to draw attention to myself.', 'Saya tidak suka menarik perhatian.'),
('EXT9', 'I don\'t mind being the center of attention.', 'Saya tidak keberatan menjadi pusat perhatian.'),
('OPN1', 'I have a rich vocabulary.', 'Saya memiliki kosakata yang kaya.'),
('OPN10', 'I am full of ideas.', 'Saya penuh dengan ide.'),
('OPN2', 'I have difficulty understanding abstract ideas.', 'Saya kesulitan memahami ide-ide abstrak.'),
('OPN3', 'I have a vivid imagination.', 'Saya memiliki imajinasi yang hidup.'),
('OPN4', 'I am not interested in abstract ideas.', 'Saya tidak tertarik dengan ide-ide abstrak.'),
('OPN5', 'I have excellent ideas.', 'Saya memiliki ide-ide bagus.'),
('OPN6', 'I do not have a good imagination.', 'Saya tidak memiliki imajinasi yang baik.'),
('OPN7', 'I am quick to understand things.', 'Saya cepat memahami sesuatu.'),
('OPN8', 'I use difficult words.', 'Saya menggunakan kata-kata yang sulit.'),
('OPN9', 'I spend time reflecting on things.', 'Saya meluangkan waktu untuk merenungkan sesuatu.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_birth` date NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `date_birth`, `avatar`, `created_at`) VALUES
('8kYIPrLrwwNWAZRG3JagvAMxoZI2', 'scriptalert(\'XSS\')/script', 'nicky@gmail.com', '2024-11-21', 'https://storage.googleapis.com/study-path-bucket/fotoku.jpg', '2024-11-25 10:33:26');

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
  ADD PRIMARY KEY (`question_code`);

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
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1354;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `answers_ibfk_1` FOREIGN KEY (`question_code`) REFERENCES `questions` (`question_code`),
  ADD CONSTRAINT `answers_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
