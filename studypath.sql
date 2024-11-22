-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 13, 2024 at 02:55 PM
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
  `question_code` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `user_id` int NOT NULL,
  `answer_value` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `question_code` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `question_text_en` text COLLATE utf8mb4_general_ci NOT NULL
  `question_text_id` text COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`question_code`, `question_text`) VALUES
('AGR1', 'I feel little concern for others.'),
('AGR10', 'I make people feel at ease.'),
('AGR2', 'I am interested in people.'),
('AGR3', 'I insult people.'),
('AGR4', 'I sympathize with others\' feelings.'),
('AGR5', 'I am not interested in other people\'s problems.'),
('AGR6', 'I have a soft heart.'),
('AGR7', 'I am not really interested in others.'),
('AGR8', 'I take time out for others.'),
('AGR9', 'I feel others\' emotions.'),
('CSN1', 'I am always prepared.'),
('CSN10', 'I am exacting in my work.'),
('CSN2', 'I leave my belongings around.'),
('CSN3', 'I pay attention to details.'),
('CSN4', 'I make a mess of things.'),
('CSN5', 'I get chores done right away.'),
('CSN6', 'I often forget to put things back in their proper place.'),
('CSN7', 'I like order.'),
('CSN8', 'I shirk my duties.'),
('CSN9', 'I follow a schedule.'),
('EST1', 'I get stressed out easily.'),
('EST10', 'I often feel blue.'),
('EST2', 'I am relaxed most of the time.'),
('EST3', 'I worry about things.'),
('EST4', 'I seldom feel blue.'),
('EST5', 'I am easily disturbed.'),
('EST6', 'I get upset easily.'),
('EST7', 'I change my mood a lot.'),
('EST8', 'I have frequent mood swings.'),
('EST9', 'I get irritated easily.'),
('EXT1', 'I am the life of the party.'),
('EXT10', 'I am quiet around strangers.'),
('EXT2', 'I don\'t talk a lot.'),
('EXT3', 'I feel comfortable around people.'),
('EXT4', 'I keep in the background.'),
('EXT5', 'I start conversations.'),
('EXT6', 'I have little to say.'),
('EXT7', 'I talk to a lot of different people at parties.'),
('EXT8', 'I don\'t like to draw attention to myself.'),
('EXT9', 'I don\'t mind being the center of attention.'),
('OPN1', 'I have a rich vocabulary.'),
('OPN10', 'I am full of ideas.'),
('OPN2', 'I have difficulty understanding abstract ideas.'),
('OPN3', 'I have a vivid imagination.'),
('OPN4', 'I am not interested in abstract ideas.'),
('OPN5', 'I have excellent ideas.'),
('OPN6', 'I do not have a good imagination.'),
('OPN7', 'I am quick to understand things.'),
('OPN8', 'I use difficult words.'),
('OPN9', 'I spend time reflecting on things.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `created_at`) VALUES
(1, 'John Doe', 'johndoe@gmail.com', '2024-11-13 14:17:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`),
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
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=404;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `answers_ibfk_1` FOREIGN KEY (`question_code`) REFERENCES `questions` (`question_code`),
  ADD CONSTRAINT `answers_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
