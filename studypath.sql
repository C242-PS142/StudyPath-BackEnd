-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 02, 2024 at 06:55 AM
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
(2558, 'EXT2', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 2, '2024-12-01 18:03:11'),
(2559, 'EXT3', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 1, '2024-12-01 18:03:11'),
(2560, 'EXT4', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 4, '2024-12-01 18:03:11'),
(2561, 'EXT5', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 4, '2024-12-01 18:03:11'),
(2562, 'EXT6', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 5, '2024-12-01 18:03:11'),
(2563, 'EXT7', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 5, '2024-12-01 18:03:11'),
(2564, 'EXT8', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 1, '2024-12-01 18:03:11'),
(2565, 'EXT9', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 5, '2024-12-01 18:03:11'),
(2566, 'EXT10', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 3, '2024-12-01 18:03:11'),
(2567, 'EST1', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 4, '2024-12-01 18:03:11'),
(2568, 'EST2', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 3, '2024-12-01 18:03:11'),
(2569, 'EST3', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 5, '2024-12-01 18:03:11'),
(2570, 'EST4', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 1, '2024-12-01 18:03:11'),
(2571, 'EST5', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 4, '2024-12-01 18:03:11'),
(2572, 'EST6', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 3, '2024-12-01 18:03:11'),
(2573, 'EST7', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 5, '2024-12-01 18:03:11'),
(2574, 'EST8', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 4, '2024-12-01 18:03:11'),
(2575, 'EST9', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 5, '2024-12-01 18:03:11'),
(2576, 'EST10', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 3, '2024-12-01 18:03:11'),
(2577, 'AGR1', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 1, '2024-12-01 18:03:11'),
(2578, 'AGR2', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 5, '2024-12-01 18:03:11'),
(2579, 'AGR3', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 2, '2024-12-01 18:03:11'),
(2580, 'AGR4', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 5, '2024-12-01 18:03:11'),
(2581, 'AGR5', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 1, '2024-12-01 18:03:11'),
(2582, 'AGR6', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 5, '2024-12-01 18:03:11'),
(2583, 'AGR7', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 2, '2024-12-01 18:03:11'),
(2584, 'AGR8', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 5, '2024-12-01 18:03:11'),
(2585, 'AGR9', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 5, '2024-12-01 18:03:11'),
(2586, 'AGR10', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 4, '2024-12-01 18:03:11'),
(2587, 'CSN1', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 5, '2024-12-01 18:03:11'),
(2588, 'CSN2', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 2, '2024-12-01 18:03:11'),
(2589, 'CSN3', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 5, '2024-12-01 18:03:11'),
(2590, 'CSN4', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 1, '2024-12-01 18:03:11'),
(2591, 'CSN5', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 5, '2024-12-01 18:03:11'),
(2592, 'CSN6', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 2, '2024-12-01 18:03:11'),
(2593, 'CSN7', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 5, '2024-12-01 18:03:11'),
(2594, 'CSN8', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 1, '2024-12-01 18:03:11'),
(2595, 'CSN9', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 5, '2024-12-01 18:03:11'),
(2596, 'CSN10', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 4, '2024-12-01 18:03:11'),
(2597, 'OPN1', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 5, '2024-12-01 18:03:11'),
(2598, 'OPN2', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 2, '2024-12-01 18:03:11'),
(2599, 'OPN3', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 5, '2024-12-01 18:03:11'),
(2600, 'OPN4', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 1, '2024-12-01 18:03:11'),
(2601, 'OPN5', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 5, '2024-12-01 18:03:11'),
(2602, 'OPN6', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 2, '2024-12-01 18:03:11'),
(2603, 'OPN7', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 5, '2024-12-01 18:03:11'),
(2604, 'OPN8', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 4, '2024-12-01 18:03:11'),
(2605, 'OPN9', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 5, '2024-12-01 18:03:11'),
(2606, 'OPN10', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 5, '2024-12-01 18:03:11'),
(2607, 'EXT1', '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 3, '2024-12-01 18:20:15');

-- --------------------------------------------------------

--
-- Table structure for table `personalities`
--

CREATE TABLE `personalities` (
  `id` int NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `extroversion` float NOT NULL,
  `neuroticism` float NOT NULL,
  `agreeableness` float NOT NULL,
  `conscientiousness` float NOT NULL,
  `openness` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `personalities`
--

INSERT INTO `personalities` (`id`, `user_id`, `extroversion`, `neuroticism`, `agreeableness`, `conscientiousness`, `openness`) VALUES
(1, '8kYIPrLrwwNWAZRG3JagvAMxoZI2', 0.550533, 0.280397, 0.778527, 0.79683, 0.662541);

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
-- Table structure for table `recommendations`
--

CREATE TABLE `recommendations` (
  `id` int NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `extroversion` json NOT NULL,
  `neuroticism` json NOT NULL,
  `agreeableness` json NOT NULL,
  `conscientiousness` json NOT NULL,
  `openness` json NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recommendations`
--

INSERT INTO `recommendations` (`id`, `user_id`, `extroversion`, `neuroticism`, `agreeableness`, `conscientiousness`, `openness`) VALUES
(9, '8kYIPrLrwwNWAZRG3JagvAMxoZI2', '{\"skor\": 55, \"judul\": \"Keterbukaan Sosial, Energi, dan Antusiasme\", \"deskripsi\": \"Anda cukup sosial dan antusias, meskipun tidak selalu mencari banyak interaksi.\", \"rekomendasi\": \"Manfaatkan kelompok belajar kecil atau diskusi online. Anda bisa lebih efektif belajar dalam situasi yang tidak terlalu ramai. Cobalah mengajar teman sebaya—ini bisa memperkuat pemahaman Anda dan tetap memberi interaksi sosial.\"}', '{\"skor\": 28, \"judul\": \"Kestabilan Emosi\", \"deskripsi\": \"Skor ini menunjukkan bahwa Anda mungkin lebih sensitif terhadap tekanan atau stres, dan mudah terpengaruh oleh suasana hati.\", \"rekomendasi\": \"Ciptakan rutinitas belajar yang terstruktur untuk mengurangi kecemasan. Gunakan teknik seperti meditasi ringan atau olahraga untuk menjaga keseimbangan emosi. Fokus pada satu tugas dalam satu waktu untuk menghindari perasaan kewalahan.  Prioritaskan istirahat yang cukup.\"}', '{\"skor\": 78, \"judul\": \"Kesepakatan\", \"deskripsi\": \"Anda cenderung kooperatif, peduli, dan mudah berempati terhadap orang lain.\", \"rekomendasi\": \"Pertimbangkan untuk bergabung dalam proyek kelompok yang mendorong kerja sama, seperti kegiatan sosial atau penelitian bersama. Anda juga bisa menjadi mentor bagi teman yang membutuhkan bantuan.\"}', '{\"skor\": 80, \"judul\": \"Ketelitian\", \"deskripsi\": \"Ini menunjukkan bahwa Anda adalah orang yang terorganisir dan bertanggung jawab.\", \"rekomendasi\": \"Manfaatkan keterampilan ini dengan membuat jadwal belajar yang jelas dan daftar tugas harian. Pilih mata pelajaran yang memerlukan fokus dan perhatian terhadap detail, seperti matematika atau pemrograman.\"}', '{\"skor\": 66, \"judul\": \"Keterbukaan Terhadap Pengalaman\", \"deskripsi\": \"Anda cukup terbuka terhadap pengalaman baru dan ide-ide kreatif. Ini berarti Anda mungkin menikmati pembelajaran yang melibatkan eksplorasi dan inovasi.\", \"rekomendasi\": \"Cobalah pelajaran yang melibatkan kreativitas, seperti seni, sastra, atau eksperimen sains. Ikuti klub atau kegiatan yang mendorong pemikiran kritis dan imajinasi, seperti coding atau debat.\"}');

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
('8kYIPrLrwwNWAZRG3JagvAMxoZI2', 'nickyssss', 'nicky@gmail.com', '2024-11-21', 'L', 'https://storage.googleapis.com/study-path-bucket/StudyPath 2.png', '2024-11-28 13:58:44'),
('ZO70g9Es06R3PCNgovuiwDEMI2w1', 'nicky', 'asd@gmail.com', '2024-11-21', 'L', 'https://storage.googleapis.com/study-path-bucket/StudyPath 2.png', '2024-11-28 14:57:33');

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
-- Indexes for table `personalities`
--
ALTER TABLE `personalities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `question_code` (`question_code`);

--
-- Indexes for table `recommendations`
--
ALTER TABLE `recommendations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

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
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4508;

--
-- AUTO_INCREMENT for table `personalities`
--
ALTER TABLE `personalities`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `recommendations`
--
ALTER TABLE `recommendations`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `answers_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `answers_ibfk_2` FOREIGN KEY (`question_code`) REFERENCES `questions` (`question_code`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `personalities`
--
ALTER TABLE `personalities`
  ADD CONSTRAINT `personalities_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `recommendations`
--
ALTER TABLE `recommendations`
  ADD CONSTRAINT `recommendations_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
