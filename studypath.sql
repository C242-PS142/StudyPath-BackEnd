-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 13, 2024 at 01:25 PM
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
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int NOT NULL,
  `question_code` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `question_text` text COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question_code`, `question_text`) VALUES
(1, 'EXT1', 'I am the life of the party.'),
(2, 'EXT2', 'I don\'t talk a lot.'),
(3, 'EXT3', 'I feel comfortable around people.'),
(4, 'EXT4', 'I keep in the background.'),
(5, 'EXT5', 'I start conversations.'),
(6, 'EXT6', 'I have little to say.'),
(7, 'EXT7', 'I talk to a lot of different people at parties.'),
(8, 'EXT8', 'I don\'t like to draw attention to myself.'),
(9, 'EXT9', 'I don\'t mind being the center of attention.'),
(10, 'EXT10', 'I am quiet around strangers.'),
(11, 'EST1', 'I get stressed out easily.'),
(12, 'EST2', 'I am relaxed most of the time.'),
(13, 'EST3', 'I worry about things.'),
(14, 'EST4', 'I seldom feel blue.'),
(15, 'EST5', 'I am easily disturbed.'),
(16, 'EST6', 'I get upset easily.'),
(17, 'EST7', 'I change my mood a lot.'),
(18, 'EST8', 'I have frequent mood swings.'),
(19, 'EST9', 'I get irritated easily.'),
(20, 'EST10', 'I often feel blue.'),
(21, 'AGR1', 'I feel little concern for others.'),
(22, 'AGR2', 'I am interested in people.'),
(23, 'AGR3', 'I insult people.'),
(24, 'AGR4', 'I sympathize with others\' feelings.'),
(25, 'AGR5', 'I am not interested in other people\'s problems.'),
(26, 'AGR6', 'I have a soft heart.'),
(27, 'AGR7', 'I am not really interested in others.'),
(28, 'AGR8', 'I take time out for others.'),
(29, 'AGR9', 'I feel others\' emotions.'),
(30, 'AGR10', 'I make people feel at ease.'),
(31, 'CSN1', 'I am always prepared.'),
(32, 'CSN2', 'I leave my belongings around.'),
(33, 'CSN3', 'I pay attention to details.'),
(34, 'CSN4', 'I make a mess of things.'),
(35, 'CSN5', 'I get chores done right away.'),
(36, 'CSN6', 'I often forget to put things back in their proper place.'),
(37, 'CSN7', 'I like order.'),
(38, 'CSN8', 'I shirk my duties.'),
(39, 'CSN9', 'I follow a schedule.'),
(40, 'CSN10', 'I am exacting in my work.'),
(41, 'OPN1', 'I have a rich vocabulary.'),
(42, 'OPN2', 'I have difficulty understanding abstract ideas.'),
(43, 'OPN3', 'I have a vivid imagination.'),
(44, 'OPN4', 'I am not interested in abstract ideas.'),
(45, 'OPN5', 'I have excellent ideas.'),
(46, 'OPN6', 'I do not have a good imagination.'),
(47, 'OPN7', 'I am quick to understand things.'),
(48, 'OPN8', 'I use difficult words.'),
(49, 'OPN9', 'I spend time reflecting on things.'),
(50, 'OPN10', 'I am full of ideas.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
