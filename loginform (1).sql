-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2021 at 02:23 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `loginform`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_authors`
--

CREATE TABLE `tbl_authors` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_authors`
--

INSERT INTO `tbl_authors` (`id`, `name`, `status`) VALUES
(1, 'Johnny Sins', 0),
(2, 'Manta Mas', 0),
(3, 'Author1dasdasdas', 0),
(4, 'Christopher', 0),
(5, 'Monster Smoosh', 0),
(6, 'Author1dasdasdas', 0),
(7, 'Author1dasdasdas', 0),
(8, 'James Gooch', 0),
(9, 'Garden Flow', 0),
(10, 'dasdasdasdas', 0),
(11, 'sam', 0),
(12, 'jagu', 0),
(13, 'jaguss', 0),
(14, 'james', 0),
(15, 'Rick Riordan', 1),
(16, 'Marie Lu', 1),
(17, 'Jennifer Niven', 1),
(18, 'Amy Zhang', 1),
(19, 'Isaac Asimov', 1),
(20, 'Jane Austen', 1),
(21, 'Pseudonymous Bosch', 1),
(22, 'Cassandra Clare', 1),
(23, 'Khaled Hosseini', 1),
(24, 'C.S. Lewis', 1),
(25, 'Leigh Bardugo', 1),
(26, 'J.K. Rowling', 1),
(27, 'Anthony Aquino', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_books`
--

CREATE TABLE `tbl_books` (
  `id` int(11) NOT NULL,
  `author` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `category` int(12) NOT NULL,
  `price` varchar(255) NOT NULL,
  `description` varchar(510) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `date_updated` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(255) NOT NULL,
  `image_id` varchar(255) NOT NULL,
  `quantity` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_books`
--

INSERT INTO `tbl_books` (`id`, `author`, `title`, `category`, `price`, `description`, `date_created`, `date_updated`, `status`, `image_id`, `quantity`) VALUES
(1, '17', 'All The Bright Places', 0, '$5', 'All the Bright Places is a young adult fiction novel by Jennifer Niven which is based on the author\'s personal story.', '2021-11-15 05:09:28', '2021-11-15 05:09:28', '1', 'book-All The Bright Places.jpg', 0),
(2, '16', 'Young Elites', 0, '$5', 'The Young Elites is a series of dystopian fantasy young Adult novels written byMarie Lu. The books take audiences to a world where certain young people have developed powers that threaten to bring civilization to its knees.', '2021-11-15 05:13:20', '2021-11-15 05:13:20', '1', 'book-Young Elites.jpg', 0),
(3, '18', 'Falling Into Place', 0, '$5', 'A moody, multi-layered debut, Falling Into Place by Amy Zhang is a complex addition to contemporary YA fiction. Only two people know that Liz Emerson was trying to die when she crashed her car on an icy turn after school.', '2021-11-15 05:35:25', '2021-11-15 05:35:25', '1', 'book-Falling Into Place.jpg', 0),
(4, '19', 'The Foundation', 0, '$5', 'The Foundation series is a science fiction book series written by American author Isaac Asimov. ', '2021-11-15 05:39:50', '2021-11-15 05:39:50', '1', 'book-The Foundation.jpg', 0),
(5, '15', 'The Lightning Thief', 0, '$5', 'The Lightning Thief is a light-hearted fantasy about a modern 12-year-old boy who learns that his true father is Poseidon, the Greek god of the sea. Percy sets out to become a hero by undertaking a quest across the United States to find the entrance to the Underworld and stop a war between the gods.', '2021-11-15 07:35:48', '2021-11-15 07:35:48', '1', 'book-The Lightning Thief.jpg', 0),
(6, '20', 'Pride and Prejudice', 0, '$5', 'Pride and Prejudice is an 1813 romantic novel of manners written by Jane Austen. The novel follows the character development of Elizabeth Bennet, the dynamic protagonist of the book who learns about the repercussions of hasty judgments and comes to appreciate the difference between superficial goodness and actual goodness.', '2021-11-15 09:05:45', '2021-11-15 09:05:45', '1', 'book-Pride and Prejudice.jpg', 0),
(7, '15', 'The Red Pyramid', 0, '$5', 'The Red Pyramid is a 2010 fantasy - adventure novel based on Egyptian mythology written by Rick Riordan. It is the first novel in The Kane Chronicles series.', '2021-11-15 09:07:01', '2021-11-15 09:07:01', '1', 'book-The Red Pyramid.jpg', 0),
(8, '21', 'The Name of This Book Is Secret', 0, '200', 'The Name of this Book is Secret is a 2007 fantasy novel for young readers by Pseudonymous Bosch. It chronicles the adventures of two children, Cass and Max-Ernest, as they investigate the mysterious death of local magician Pietro Bergamo.', '2021-11-16 10:36:15', '2021-11-16 10:36:15', '1', 'book-The Name of This Book Is Secret.jpg', 0),
(9, '23', 'The Kite Runner', 0, '$5', 'The story is set against a backdrop of tumultuous events, from the fall of Afghanistan\'s monarchy through the Soviet invasion, the exodus of refugees to Pakistan and the United States, and the rise of the Taliban regime.', '2021-11-30 06:10:13', '2021-11-30 06:10:13', '1', 'book-The Kite Runner.jpg', 0),
(10, '16', 'Warcross', 0, '$5', 'Warcross is a young adult science fiction novel by Marie Lu, which was published on September 17, 2017 by G.P. Putnam\'s Sons. Warcross is the first book in the duology of the same name.', '2021-11-30 06:11:23', '2021-11-30 06:11:23', '1', 'book-Warcross.jpg', 0),
(11, '16', 'Wildcard', 0, '$5', 'It\'s Time For Rematch', '2021-12-01 01:10:31', '2021-12-01 01:10:31', '1', 'book-Wildcard.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `id` int(12) NOT NULL,
  `uid` int(12) NOT NULL,
  `bid` int(12) NOT NULL,
  `status` int(12) NOT NULL,
  `trans_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_cart`
--

INSERT INTO `tbl_cart` (`id`, `uid`, `bid`, `status`, `trans_date`) VALUES
(25, 11, 4, 0, '2021-11-20 19:52:52'),
(26, 11, 2, 0, '2021-11-20 19:54:33'),
(27, 11, 6, 0, '2021-11-20 20:23:58'),
(28, 11, 3, 0, '2021-11-20 20:25:54');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(12) NOT NULL,
  `category` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `category`) VALUES
(1, 'romanace'),
(2, 'action');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_logs`
--

CREATE TABLE `tbl_logs` (
  `id` int(12) NOT NULL,
  `action` varchar(60) NOT NULL,
  `user` varchar(60) NOT NULL,
  `module` varchar(60) NOT NULL,
  `status` varchar(60) NOT NULL,
  `status_result` varchar(255) NOT NULL,
  `role` varchar(60) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_logs`
--

INSERT INTO `tbl_logs` (`id`, `action`, `user`, `module`, `status`, `status_result`, `role`, `date`) VALUES
(87, 'logout', 'saitama', '', 'success', 'success', 'admin', '2021-11-17 07:47:43'),
(88, 'login', 'saitama', '', 'success', 'logged in', 'admin', '2021-11-17 07:49:00'),
(89, 'create', '', '', '', '', '', '2021-11-17 08:01:53'),
(90, 'create', '', '', '', '', '', '2021-11-17 08:02:52'),
(91, 'create', 'saitama', '', '', '', 'admin', '2021-11-17 08:06:46'),
(92, 'logout', 'saitama', 'success', 'logged out', 'admin', 'Login', '2021-11-17 08:13:01'),
(93, 'login', 'saitama', 'login', 'success', 'logged in', 'admin', '2021-11-17 08:13:32'),
(94, 'logout', 'saitama', 'Login', 'success', 'logged out', 'admin', '2021-11-17 08:13:35'),
(95, 'login', 'saitama', 'login', 'success', 'logged in', 'admin', '2021-11-17 08:15:32'),
(96, 'logout', 'saitama', 'Login', 'success', 'logged out', 'admin', '2021-11-17 08:15:39'),
(97, 'login', 'saitama', 'login', 'success', 'logged in', 'admin', '2021-11-17 08:15:45'),
(98, 'create', 'saitama', 'Author', '', '', 'admin', '2021-11-17 08:16:28'),
(99, 'create', 'saitama', 'Author', '', '', 'admin', '2021-11-17 08:17:37'),
(100, 'create', 'saitama', 'Author', '', '', 'admin', '2021-11-17 08:24:02'),
(101, 'create', 'saitama', 'Author', 'failed', 'admin', 'error', '2021-11-17 08:32:16'),
(102, 'create', 'saitama', 'Author', 'success', 'true', 'admin', '2021-11-17 08:33:29'),
(103, 'logout', 'saitama', 'Login', 'success', 'logged out', 'admin', '2021-11-17 09:30:33'),
(104, 'login', 'saitama', 'login', 'success', 'logged in', 'admin', '2021-11-20 16:28:06'),
(105, 'logout', 'saitama', 'Login', 'success', 'logged out', 'admin', '2021-11-21 19:53:51'),
(106, 'login', 'saitama', 'login', 'success', 'logged in', 'admin', '2021-11-22 03:48:10'),
(107, 'login', 'ren', 'login', 'error', 'wrong password', '0', '2021-11-24 05:11:50'),
(108, 'login', 'ren', 'login', 'error', 'wrong password', '0', '2021-11-24 05:16:25'),
(109, 'login', 'asdasd', 'login', 'error', 'user not exists', '0', '2021-11-24 05:16:29'),
(110, 'login', 'reresfdsfsddasda', 'login', 'error', 'user not exists', '0', '2021-11-24 05:17:59'),
(111, 'login', '45465', 'login', 'error', 'user not exists', '0', '2021-11-24 05:19:44'),
(112, 'login', 'shelly', 'login', 'error', 'user not exists', '0', '2021-11-24 05:36:57'),
(113, 'login', 'raj', 'login', 'success', 'logged in', '', '2021-11-24 05:41:25'),
(114, 'logout', 'raj', 'Login', 'success', 'logged out', '', '2021-11-24 06:00:10'),
(115, 'login', 'admin', 'login', 'error', 'wrong password', '0', '2021-11-24 06:05:27'),
(116, 'login', 'admin', 'login', 'success', 'logged in', '', '2021-11-24 06:05:31'),
(117, 'logout', 'admin', 'Login', 'success', 'logged out', '', '2021-11-24 06:33:57'),
(118, 'login', 'admin', 'login', 'error', 'wrong password', '0', '2021-11-24 06:34:03'),
(119, 'login', 'admin', 'login', 'success', 'logged in', 'admin', '2021-11-24 06:34:07'),
(120, 'login', 'saitama', 'login', 'success', 'logged in', 'user', '2021-11-27 21:18:17'),
(121, 'logout', 'saitama', 'Login', 'success', 'logged out', 'user', '2021-11-27 21:19:02'),
(122, 'login', 'saitama', 'login', 'success', 'logged in', 'user', '2021-11-27 21:20:45'),
(123, 'logout', 'saitama', 'Login', 'success', 'logged out', 'user', '2021-11-27 21:22:23'),
(124, 'login', 'saitama', 'login', 'success', 'logged in', 'admin', '2021-11-27 21:22:29'),
(125, 'logout', 'saitama', 'Login', 'success', 'logged out', 'admin', '2021-11-27 21:26:30'),
(126, 'login', 'saitama', 'login', 'success', 'logged in', 'admin', '2021-11-27 21:33:20'),
(127, 'logout', 'saitama', 'Login', 'success', 'logged out', 'admin', '2021-11-27 21:36:28'),
(128, 'login', 'saitama', 'login', 'success', 'logged in', 'admin', '2021-11-27 23:23:26'),
(129, 'login', 'saitama', 'login', 'success', 'logged in', 'admin', '2021-11-28 08:58:06'),
(130, 'logout', 'saitama', 'Login', 'success', 'logged out', 'admin', '2021-11-28 12:32:53'),
(131, 'login', 'hanma', 'login', 'success', 'logged in', 'admin', '2021-11-28 12:33:00'),
(132, 'logout', 'hanma', 'Login', 'success', 'logged out', 'admin', '2021-11-28 12:37:55'),
(133, 'login', 'hanma', 'login', 'success', 'logged in', 'user', '2021-11-28 12:38:00'),
(134, 'logout', 'hanma', 'Login', 'success', 'logged out', 'user', '2021-11-29 00:02:20'),
(135, 'login', 'saitama', 'login', 'error', 'user not exists', '0', '2021-11-29 07:57:29'),
(136, 'login', 'hanma', 'login', 'success', 'logged in', 'user', '2021-11-29 07:57:52'),
(137, 'logout', 'hanma', 'Login', 'success', 'logged out', 'user', '2021-11-29 08:02:52'),
(138, 'login', 'janny', 'login', 'success', 'logged in', 'user', '2021-11-29 08:02:55'),
(139, 'logout', 'Janny', 'Login', 'success', 'logged out', 'user', '2021-11-29 08:05:22'),
(140, 'login', 'janny', 'login', 'success', 'logged in', 'admin', '2021-11-29 08:05:28'),
(141, 'logout', 'Janny', 'Login', 'success', 'logged out', 'admin', '2021-11-29 08:32:44'),
(142, 'login', 'administrator', 'login', 'success', 'logged in', 'user', '2021-11-29 08:33:31'),
(143, 'login', 'saitama', 'login', 'error', 'user not exists', '0', '2021-11-30 03:46:31'),
(144, 'login', 'jannel', 'login', 'error', 'wrong password', '0', '2021-11-30 03:48:55'),
(145, 'login', 'jannel', 'login', 'success', 'logged in', 'user', '2021-11-30 03:49:00'),
(146, 'logout', 'jannel', 'Login', 'success', 'logged out', 'user', '2021-11-30 04:11:25'),
(147, 'login', 'jannel', 'login', 'success', 'logged in', 'admin', '2021-11-30 04:11:30'),
(148, 'create', 'jannel', 'Author', 'success', 'true', 'admin', '2021-11-30 04:27:07'),
(149, 'create', 'jannel', 'Author', 'success', 'true', 'admin', '2021-11-30 04:27:16'),
(150, 'create', 'jannel', 'Author', 'success', 'true', 'admin', '2021-11-30 04:27:21'),
(151, 'create', 'jannel', 'Author', 'success', 'true', 'admin', '2021-11-30 04:28:57'),
(152, 'create', 'jannel', 'Author', 'success', 'true', 'admin', '2021-11-30 04:29:07'),
(153, 'create', 'jannel', 'Author', 'success', 'true', 'admin', '2021-11-30 04:29:17'),
(154, 'create', 'jannel', 'Author', 'success', 'true', 'admin', '2021-11-30 04:29:30'),
(155, 'create', 'jannel', 'Author', 'success', 'true', 'admin', '2021-11-30 04:29:46'),
(156, 'create', 'jannel', 'Author', 'success', 'true', 'admin', '2021-11-30 04:31:21'),
(157, 'create', 'jannel', 'Author', 'success', 'true', 'admin', '2021-11-30 04:31:51'),
(158, 'create', 'jannel', 'Author', 'success', 'true', 'admin', '2021-11-30 04:32:10'),
(159, 'logout', 'jannel', 'Login', 'success', 'logged out', 'admin', '2021-11-30 04:59:09'),
(160, 'login', 'jannel', 'login', 'success', 'logged in', 'admin', '2021-11-30 05:52:34'),
(161, 'create', 'jannel', 'Author', 'success', 'true', 'admin', '2021-11-30 06:17:40'),
(162, 'logout', 'jannel', 'Login', 'success', 'logged out', 'admin', '2021-11-30 06:17:44'),
(163, 'login', 'nanaba', 'login', 'success', 'logged in', 'user', '2021-11-30 06:34:13'),
(164, 'login', 'jannel', 'login', 'success', 'logged in', 'admin', '2021-12-01 00:35:34'),
(165, 'logout', 'jannel', 'Login', 'success', 'logged out', 'admin', '2021-12-01 00:43:19'),
(166, 'login', 'gojo', 'login', 'success', 'logged in', 'user', '2021-12-01 00:58:45'),
(167, 'logout', 'gojo', 'Login', 'success', 'logged out', 'user', '2021-12-01 01:03:50'),
(168, 'login', 'sato', 'login', 'success', 'logged in', 'admin', '2021-12-01 01:03:54'),
(169, 'create', 'sato', 'Author', 'success', 'true', 'admin', '2021-12-01 01:07:31'),
(170, 'logout', 'sato', 'Login', 'success', 'logged out', 'admin', '2021-12-01 01:11:05');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_orderdetails`
--

CREATE TABLE `tbl_orderdetails` (
  `id` int(12) NOT NULL,
  `ord_lid` int(12) NOT NULL,
  `ords_id` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_orderdetails`
--

INSERT INTO `tbl_orderdetails` (`id`, `ord_lid`, `ords_id`) VALUES
(1, 19, 1),
(2, 13, 5),
(3, 13, 7),
(7, 15, 2),
(8, 15, 1),
(9, 16, 2),
(10, 17, 2),
(11, 18, 2),
(12, 20, 1),
(13, 21, 4),
(14, 21, 3),
(15, 21, 5),
(16, 22, 5),
(17, 23, 5),
(18, 24, 3),
(19, 25, 4),
(20, 26, 4),
(21, 27, 3),
(22, 28, 1),
(23, 28, 2),
(24, 28, 4),
(25, 28, 8),
(26, 29, 5),
(27, 30, 2),
(28, 31, 1),
(29, 32, 10),
(30, 33, 3),
(31, 34, 1),
(32, 34, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_orders`
--

CREATE TABLE `tbl_orders` (
  `id` int(12) NOT NULL,
  `ord_id` varchar(255) NOT NULL,
  `ord_uid` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_orders`
--

INSERT INTO `tbl_orders` (`id`, `ord_id`, `ord_uid`, `date`) VALUES
(1, '2021112135006', '11', '2021-11-21 05:34:07'),
(2, '2021112169547', '11', '2021-11-21 06:59:50'),
(3, '2021112169547', '11', '2021-11-21 07:00:14'),
(4, '2021112169547', '12', '2021-11-21 07:00:27'),
(5, '2021112169547', '11', '2021-11-21 07:00:44'),
(6, '2021112169547', '11', '2021-11-21 07:01:07'),
(7, '2021112169547', '11', '2021-11-21 07:01:19'),
(8, '2021112169547', '11', '2021-11-21 07:01:27'),
(9, '2021112169547', '11', '2021-11-21 07:01:34'),
(10, '2021112169547', '11', '2021-11-21 07:01:54'),
(11, '2021112169547', '11', '2021-11-21 07:04:49'),
(12, '2021112169547', '12', '2021-11-21 07:05:05'),
(13, '2021112152100', '11', '2021-11-21 07:19:15'),
(14, '2021112141795', '11', '2021-11-21 07:21:18'),
(15, '2021112103982', '11', '2021-11-21 09:14:34'),
(16, '2021112129451', '11', '2021-11-21 12:39:41'),
(17, '2021112123679', '12', '2021-11-21 19:29:19'),
(18, '2021112195245', '11', '2021-11-21 19:31:39'),
(19, '2021112195245', '10', '2021-11-21 19:31:39'),
(20, '2021112126393', '10', '2021-11-21 19:32:47'),
(21, '2021112181182', '12', '2021-11-21 19:34:14'),
(22, '2021112144021', '11', '2021-11-21 19:34:39'),
(23, '2021112149867', '11', '2021-11-21 19:34:49'),
(24, '2021112241347', '10', '2021-11-22 03:48:15'),
(25, '2021112745116', '11', '2021-11-27 21:25:29'),
(26, '2021112712697', '11', '2021-11-27 21:25:37'),
(27, '2021112840410', '12', '2021-11-27 23:23:31'),
(28, '2021112983663', '11', '2021-11-29 08:11:51'),
(29, '2021112989230', '11', '2021-11-29 08:19:59'),
(30, '2021112951191', '21', '2021-11-29 08:34:14'),
(31, '<php?= $order_id ?>', '<php ?= $_SESSION[\'id\']; ?>', '2021-11-30 05:58:51'),
(32, '<php?= $order_id ?>', '<php ?= $_SESSION[\'id\']; ?>', '2021-11-30 06:40:18'),
(33, '2021120158237', '22', '2021-12-01 00:42:13'),
(34, '2021120104594', '26', '2021-12-01 01:02:02');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_roles`
--

CREATE TABLE `tbl_roles` (
  `id` int(11) NOT NULL,
  `role_level` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_roles`
--

INSERT INTO `tbl_roles` (`id`, `role_level`) VALUES
(1, 'admin'),
(2, 'user');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_status`
--

CREATE TABLE `tbl_status` (
  `id` int(12) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_status`
--

INSERT INTO `tbl_status` (`id`, `type`) VALUES
(1, 'active'),
(2, 'inactive'),
(3, 'denied'),
(4, 'review'),
(5, 'deleted'),
(6, 'out of stock'),
(7, 'borrowed');

-- --------------------------------------------------------

--
-- Table structure for table `users_login`
--

CREATE TABLE `users_login` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` int(12) NOT NULL DEFAULT 2,
  `status` int(12) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users_login`
--

INSERT INTO `users_login` (`id`, `fname`, `lname`, `email`, `dob`, `contact`, `username`, `password`, `role`, `status`, `image`) VALUES
(1, '', '', 'johncarlgabuat@yahoo.com', '', '', '', '09214554370', 2, 1, ''),
(2, '', '', 'randolfhilarbo@gmail.com', '', '', '', 'test', 2, 1, ''),
(3, '', '', 'randolfhilarbo@gmail.com', '', '', '', 'test', 1, 1, ''),
(4, '', '', 'randolfhilarbo@gmail.com', '', '', '', 'test', 1, 1, ''),
(5, '', '', 'randolfhilarbo@gmail.com', '', '', '', 'test', 1, 1, ''),
(6, '', '', 'johncarlgabuat@gmail.com', '', '', 'ren', '123456789', 1, 1, ''),
(7, '', '', 'rgabuat@ellickbposolutions.com', '', '', 'randy', '$2y$10$88Z9/YxWRolzSiINMfmHkeeGYfj4qagc3DuzAcf3AhwNZi2zKjnOa', 2, 1, ''),
(8, '', '', 'reily@gmail.com', '', '', 'rezxy', '$2y$10$q26Szjis7dn.H4gtoFhibu6DpzBfEZNFNXOokUoDN5itZm7rx2LBu', 2, 1, ''),
(18, 'Sheldon', 'Cooper', 'shelly', '123456', '1996-10-19', 'scooper@gmail.com', '$2y$10$jdhSKWptndwgsJ/m0zL.I.kaCTJNp/nFD5Fh7bD2f1i9QMD.kZ0dC', 2, 1, ''),
(19, 'raj', 'koot', 'rkoot@gmail.com', '1996-10-19', '09214554370', 'raj', '$2y$10$ci0rOvfxaSlEPngLjRaedOgZj6d9TpskRBRk4ShHF.ZxJnZ80rLy2', 2, 1, ''),
(20, 'admin', 'book', 'admin@books.com', '1996-10-19', '09563461261', 'admin', '$2y$10$1t1pQN3J3/xKMaEKfJoRS.DHrnuHQ9czlmwKoD10lnO90TlM.kIfe', 1, 1, ''),
(21, 'admin', 'istrator', 'administrator@gmail.com', '2021-11-06', '09214554370', 'administrator', '$2y$10$whSJxXzRKDcapJmQmthd.OJnEb0.NK6vxtlvd9s2oz9HeOb6V0Ue.', 2, 1, '21-67326204.jpg'),
(22, 'Jannel', 'Lacbain', 'jlacbain@ellickbposolutions.com', '2001-06-06', '09109213377', 'cerrado', '$2y$10$6jMrM8t3T76LDBW37vrYYejgM6mWQ8TLN8PGKmWxyWAQ6eNsnOLwC', 1, 0, '22-2103344178.jpg'),
(25, 'Nanaba', 'Ignacio', 'nanaba@gmail.com', '2014-02-04', '09109213376', 'nanaba', '$2y$10$BmJ3RFvcWOiiVpZ6P5rdgukmvPqAs0Q1cDZEIaGSAS1omCl8gO5x6', 2, 0, '25-918957995.jpg'),
(26, 'Gojo', 'Sato', 'gojo@gmail.com', '1998-01-01', '09109213378', 'sato', '$2y$10$BptxHvO9z6p2mnSXKSA7qeDEdb6AC9dk/Fneb0vtl7NzWAVMSIzua', 1, 0, '26-426573257.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_authors`
--
ALTER TABLE `tbl_authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_books`
--
ALTER TABLE `tbl_books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_logs`
--
ALTER TABLE `tbl_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_orderdetails`
--
ALTER TABLE `tbl_orderdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_orders`
--
ALTER TABLE `tbl_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_roles`
--
ALTER TABLE `tbl_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_status`
--
ALTER TABLE `tbl_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_login`
--
ALTER TABLE `users_login`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_authors`
--
ALTER TABLE `tbl_authors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tbl_books`
--
ALTER TABLE `tbl_books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_logs`
--
ALTER TABLE `tbl_logs`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- AUTO_INCREMENT for table `tbl_orderdetails`
--
ALTER TABLE `tbl_orderdetails`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `tbl_orders`
--
ALTER TABLE `tbl_orders`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `tbl_roles`
--
ALTER TABLE `tbl_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_status`
--
ALTER TABLE `tbl_status`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users_login`
--
ALTER TABLE `users_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
