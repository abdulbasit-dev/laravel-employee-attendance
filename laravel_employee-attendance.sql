-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2022 at 07:17 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_employee-attendance`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attendances`
--

INSERT INTO `attendances` (`id`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '2022-04-22 21:00:00', '2022-04-24 02:14:10'),
(2, 1, 0, '2022-04-21 21:00:00', '2022-04-24 02:14:10'),
(3, 1, 0, '2022-04-20 21:00:00', '2022-04-24 02:14:10'),
(4, 1, 1, '2022-04-19 21:00:00', '2022-04-24 02:14:10'),
(5, 1, 0, '2022-04-18 21:00:00', '2022-04-24 02:14:11'),
(6, 1, 2, '2022-04-17 21:00:00', '2022-04-24 02:14:11'),
(7, 1, 1, '2022-04-16 21:00:00', '2022-04-24 02:14:11'),
(8, 1, 1, '2022-04-15 21:00:00', '2022-04-24 02:14:11'),
(9, 1, 0, '2022-04-14 21:00:00', '2022-04-24 02:14:11'),
(10, 1, 2, '2022-04-13 21:00:00', '2022-04-24 02:14:11'),
(11, 1, 1, '2022-04-12 21:00:00', '2022-04-24 02:14:11'),
(12, 1, 2, '2022-04-11 21:00:00', '2022-04-24 02:14:11'),
(13, 1, 0, '2022-04-10 21:00:00', '2022-04-24 02:14:11'),
(14, 1, 0, '2022-04-09 21:00:00', '2022-04-24 02:14:11'),
(15, 1, 0, '2022-04-08 21:00:00', '2022-04-24 02:14:11'),
(16, 1, 1, '2022-04-07 21:00:00', '2022-04-24 02:14:11'),
(17, 1, 1, '2022-04-06 21:00:00', '2022-04-24 02:14:11'),
(18, 1, 2, '2022-04-05 21:00:00', '2022-04-24 02:14:11'),
(19, 1, 0, '2022-04-04 21:00:00', '2022-04-24 02:14:11'),
(20, 1, 1, '2022-04-03 21:00:00', '2022-04-24 02:14:11'),
(21, 1, 2, '2022-04-02 21:00:00', '2022-04-24 02:14:11'),
(22, 1, 1, '2022-04-01 21:00:00', '2022-04-24 02:14:11'),
(23, 1, 0, '2022-03-31 21:00:00', '2022-04-24 02:14:11'),
(24, 1, 1, '2022-03-30 21:00:00', '2022-04-24 02:14:11'),
(25, 1, 1, '2022-03-29 21:00:00', '2022-04-24 02:14:11'),
(26, 1, 1, '2022-03-28 21:00:00', '2022-04-24 02:14:11'),
(27, 1, 0, '2022-03-27 21:00:00', '2022-04-24 02:14:11'),
(28, 1, 1, '2022-03-26 21:00:00', '2022-04-24 02:14:11'),
(29, 1, 1, '2022-03-25 21:00:00', '2022-04-24 02:14:11'),
(30, 1, 0, '2022-03-24 21:00:00', '2022-04-24 02:14:11'),
(31, 2, 0, '2022-04-22 21:00:00', '2022-04-24 02:14:11'),
(32, 2, 2, '2022-04-21 21:00:00', '2022-04-24 02:14:11'),
(33, 2, 1, '2022-04-20 21:00:00', '2022-04-24 02:14:11'),
(34, 2, 2, '2022-04-19 21:00:00', '2022-04-24 02:14:11'),
(35, 2, 2, '2022-04-18 21:00:00', '2022-04-24 02:14:11'),
(36, 2, 0, '2022-04-17 21:00:00', '2022-04-24 02:14:11'),
(37, 2, 1, '2022-04-16 21:00:00', '2022-04-24 02:14:11'),
(38, 2, 0, '2022-04-15 21:00:00', '2022-04-24 02:14:11'),
(39, 2, 2, '2022-04-14 21:00:00', '2022-04-24 02:14:11'),
(40, 2, 2, '2022-04-13 21:00:00', '2022-04-24 02:14:11'),
(41, 2, 1, '2022-04-12 21:00:00', '2022-04-24 02:14:11'),
(42, 2, 0, '2022-04-11 21:00:00', '2022-04-24 02:14:11'),
(43, 2, 1, '2022-04-10 21:00:00', '2022-04-24 02:14:11'),
(44, 2, 0, '2022-04-09 21:00:00', '2022-04-24 02:14:11'),
(45, 2, 1, '2022-04-08 21:00:00', '2022-04-24 02:14:11'),
(46, 2, 0, '2022-04-07 21:00:00', '2022-04-24 02:14:11'),
(47, 2, 0, '2022-04-06 21:00:00', '2022-04-24 02:14:11'),
(48, 2, 1, '2022-04-05 21:00:00', '2022-04-24 02:14:11'),
(49, 2, 1, '2022-04-04 21:00:00', '2022-04-24 02:14:11'),
(50, 2, 2, '2022-04-03 21:00:00', '2022-04-24 02:14:11'),
(51, 2, 0, '2022-04-02 21:00:00', '2022-04-24 02:14:11'),
(52, 2, 1, '2022-04-01 21:00:00', '2022-04-24 02:14:11'),
(53, 2, 2, '2022-03-31 21:00:00', '2022-04-24 02:14:11'),
(54, 2, 2, '2022-03-30 21:00:00', '2022-04-24 02:14:11'),
(55, 2, 1, '2022-03-29 21:00:00', '2022-04-24 02:14:11'),
(56, 2, 1, '2022-03-28 21:00:00', '2022-04-24 02:14:11'),
(57, 2, 2, '2022-03-27 21:00:00', '2022-04-24 02:14:11'),
(58, 2, 1, '2022-03-26 21:00:00', '2022-04-24 02:14:11'),
(59, 2, 1, '2022-03-25 21:00:00', '2022-04-24 02:14:11'),
(60, 2, 2, '2022-03-24 21:00:00', '2022-04-24 02:14:11'),
(61, 3, 0, '2022-04-22 21:00:00', '2022-04-24 02:14:11'),
(62, 3, 2, '2022-04-21 21:00:00', '2022-04-24 02:14:11'),
(63, 3, 2, '2022-04-20 21:00:00', '2022-04-24 02:14:11'),
(64, 3, 2, '2022-04-19 21:00:00', '2022-04-24 02:14:11'),
(65, 3, 0, '2022-04-18 21:00:00', '2022-04-24 02:14:11'),
(66, 3, 0, '2022-04-17 21:00:00', '2022-04-24 02:14:11'),
(67, 3, 0, '2022-04-16 21:00:00', '2022-04-24 02:14:11'),
(68, 3, 1, '2022-04-15 21:00:00', '2022-04-24 02:14:11'),
(69, 3, 2, '2022-04-14 21:00:00', '2022-04-24 02:14:11'),
(70, 3, 1, '2022-04-13 21:00:00', '2022-04-24 02:14:11'),
(71, 3, 0, '2022-04-12 21:00:00', '2022-04-24 02:14:11'),
(72, 3, 1, '2022-04-11 21:00:00', '2022-04-24 02:14:11'),
(73, 3, 0, '2022-04-10 21:00:00', '2022-04-24 02:14:11'),
(74, 3, 0, '2022-04-09 21:00:00', '2022-04-24 02:14:11'),
(75, 3, 0, '2022-04-08 21:00:00', '2022-04-24 02:14:11'),
(76, 3, 0, '2022-04-07 21:00:00', '2022-04-24 02:14:11'),
(77, 3, 2, '2022-04-06 21:00:00', '2022-04-24 02:14:11'),
(78, 3, 0, '2022-04-05 21:00:00', '2022-04-24 02:14:11'),
(79, 3, 1, '2022-04-04 21:00:00', '2022-04-24 02:14:11'),
(80, 3, 1, '2022-04-03 21:00:00', '2022-04-24 02:14:11'),
(81, 3, 0, '2022-04-02 21:00:00', '2022-04-24 02:14:11'),
(82, 3, 1, '2022-04-01 21:00:00', '2022-04-24 02:14:11'),
(83, 3, 1, '2022-03-31 21:00:00', '2022-04-24 02:14:11'),
(84, 3, 1, '2022-03-30 21:00:00', '2022-04-24 02:14:11'),
(85, 3, 1, '2022-03-29 21:00:00', '2022-04-24 02:14:11'),
(86, 3, 1, '2022-03-28 21:00:00', '2022-04-24 02:14:11'),
(87, 3, 2, '2022-03-27 21:00:00', '2022-04-24 02:14:11'),
(88, 3, 1, '2022-03-26 21:00:00', '2022-04-24 02:14:11'),
(89, 3, 0, '2022-03-25 21:00:00', '2022-04-24 02:14:11'),
(90, 3, 1, '2022-03-24 21:00:00', '2022-04-24 02:14:11'),
(91, 4, 1, '2022-04-22 21:00:00', '2022-04-24 02:14:11'),
(92, 4, 1, '2022-04-21 21:00:00', '2022-04-24 02:14:11'),
(93, 4, 2, '2022-04-20 21:00:00', '2022-04-24 02:14:11'),
(94, 4, 2, '2022-04-19 21:00:00', '2022-04-24 02:14:11'),
(95, 4, 0, '2022-04-18 21:00:00', '2022-04-24 02:14:11'),
(96, 4, 1, '2022-04-17 21:00:00', '2022-04-24 02:14:11'),
(97, 4, 2, '2022-04-16 21:00:00', '2022-04-24 02:14:11'),
(98, 4, 2, '2022-04-15 21:00:00', '2022-04-24 02:14:11'),
(99, 4, 1, '2022-04-14 21:00:00', '2022-04-24 02:14:11'),
(100, 4, 2, '2022-04-13 21:00:00', '2022-04-24 02:14:11'),
(101, 4, 1, '2022-04-12 21:00:00', '2022-04-24 02:14:11'),
(102, 4, 1, '2022-04-11 21:00:00', '2022-04-24 02:14:11'),
(103, 4, 1, '2022-04-10 21:00:00', '2022-04-24 02:14:11'),
(104, 4, 2, '2022-04-09 21:00:00', '2022-04-24 02:14:11'),
(105, 4, 0, '2022-04-08 21:00:00', '2022-04-24 02:14:11'),
(106, 4, 0, '2022-04-07 21:00:00', '2022-04-24 02:14:11'),
(107, 4, 0, '2022-04-06 21:00:00', '2022-04-24 02:14:11'),
(108, 4, 2, '2022-04-05 21:00:00', '2022-04-24 02:14:11'),
(109, 4, 1, '2022-04-04 21:00:00', '2022-04-24 02:14:11'),
(110, 4, 2, '2022-04-03 21:00:00', '2022-04-24 02:14:11'),
(111, 4, 0, '2022-04-02 21:00:00', '2022-04-24 02:14:11'),
(112, 4, 1, '2022-04-01 21:00:00', '2022-04-24 02:14:11'),
(113, 4, 2, '2022-03-31 21:00:00', '2022-04-24 02:14:11'),
(114, 4, 0, '2022-03-30 21:00:00', '2022-04-24 02:14:11'),
(115, 4, 1, '2022-03-29 21:00:00', '2022-04-24 02:14:11'),
(116, 4, 2, '2022-03-28 21:00:00', '2022-04-24 02:14:11'),
(117, 4, 2, '2022-03-27 21:00:00', '2022-04-24 02:14:11'),
(118, 4, 0, '2022-03-26 21:00:00', '2022-04-24 02:14:11'),
(119, 4, 1, '2022-03-25 21:00:00', '2022-04-24 02:14:11'),
(120, 4, 0, '2022-03-24 21:00:00', '2022-04-24 02:14:11'),
(121, 5, 1, '2022-04-22 21:00:00', '2022-04-24 02:14:11'),
(122, 5, 2, '2022-04-21 21:00:00', '2022-04-24 02:14:11'),
(123, 5, 2, '2022-04-20 21:00:00', '2022-04-24 02:14:11'),
(124, 5, 1, '2022-04-19 21:00:00', '2022-04-24 02:14:11'),
(125, 5, 2, '2022-04-18 21:00:00', '2022-04-24 02:14:11'),
(126, 5, 0, '2022-04-17 21:00:00', '2022-04-24 02:14:11'),
(127, 5, 0, '2022-04-16 21:00:00', '2022-04-24 02:14:11'),
(128, 5, 0, '2022-04-15 21:00:00', '2022-04-24 02:14:11'),
(129, 5, 2, '2022-04-14 21:00:00', '2022-04-24 02:14:11'),
(130, 5, 1, '2022-04-13 21:00:00', '2022-04-24 02:14:11'),
(131, 5, 1, '2022-04-12 21:00:00', '2022-04-24 02:14:11'),
(132, 5, 0, '2022-04-11 21:00:00', '2022-04-24 02:14:11'),
(133, 5, 2, '2022-04-10 21:00:00', '2022-04-24 02:14:11'),
(134, 5, 2, '2022-04-09 21:00:00', '2022-04-24 02:14:11'),
(135, 5, 1, '2022-04-08 21:00:00', '2022-04-24 02:14:11'),
(136, 5, 1, '2022-04-07 21:00:00', '2022-04-24 02:14:11'),
(137, 5, 1, '2022-04-06 21:00:00', '2022-04-24 02:14:11'),
(138, 5, 2, '2022-04-05 21:00:00', '2022-04-24 02:14:11'),
(139, 5, 2, '2022-04-04 21:00:00', '2022-04-24 02:14:11'),
(140, 5, 2, '2022-04-03 21:00:00', '2022-04-24 02:14:11'),
(141, 5, 0, '2022-04-02 21:00:00', '2022-04-24 02:14:11'),
(142, 5, 0, '2022-04-01 21:00:00', '2022-04-24 02:14:11'),
(143, 5, 1, '2022-03-31 21:00:00', '2022-04-24 02:14:11'),
(144, 5, 0, '2022-03-30 21:00:00', '2022-04-24 02:14:11'),
(145, 5, 0, '2022-03-29 21:00:00', '2022-04-24 02:14:11'),
(146, 5, 0, '2022-03-28 21:00:00', '2022-04-24 02:14:11'),
(147, 5, 0, '2022-03-27 21:00:00', '2022-04-24 02:14:11'),
(148, 5, 1, '2022-03-26 21:00:00', '2022-04-24 02:14:11'),
(149, 5, 0, '2022-03-25 21:00:00', '2022-04-24 02:14:11'),
(150, 5, 1, '2022-03-24 21:00:00', '2022-04-24 02:14:11'),
(151, 6, 2, '2022-04-22 21:00:00', '2022-04-24 02:14:11'),
(152, 6, 2, '2022-04-21 21:00:00', '2022-04-24 02:14:11'),
(153, 6, 0, '2022-04-20 21:00:00', '2022-04-24 02:14:11'),
(154, 6, 1, '2022-04-19 21:00:00', '2022-04-24 02:14:11'),
(155, 6, 2, '2022-04-18 21:00:00', '2022-04-24 02:14:11'),
(156, 6, 2, '2022-04-17 21:00:00', '2022-04-24 02:14:11'),
(157, 6, 1, '2022-04-16 21:00:00', '2022-04-24 02:14:11'),
(158, 6, 2, '2022-04-15 21:00:00', '2022-04-24 02:14:11'),
(159, 6, 1, '2022-04-14 21:00:00', '2022-04-24 02:14:11'),
(160, 6, 0, '2022-04-13 21:00:00', '2022-04-24 02:14:11'),
(161, 6, 1, '2022-04-12 21:00:00', '2022-04-24 02:14:11'),
(162, 6, 2, '2022-04-11 21:00:00', '2022-04-24 02:14:11'),
(163, 6, 1, '2022-04-10 21:00:00', '2022-04-24 02:14:11'),
(164, 6, 2, '2022-04-09 21:00:00', '2022-04-24 02:14:11'),
(165, 6, 0, '2022-04-08 21:00:00', '2022-04-24 02:14:11'),
(166, 6, 0, '2022-04-07 21:00:00', '2022-04-24 02:14:11'),
(167, 6, 2, '2022-04-06 21:00:00', '2022-04-24 02:14:11'),
(168, 6, 0, '2022-04-05 21:00:00', '2022-04-24 02:14:11'),
(169, 6, 1, '2022-04-04 21:00:00', '2022-04-24 02:14:11'),
(170, 6, 2, '2022-04-03 21:00:00', '2022-04-24 02:14:11'),
(171, 6, 0, '2022-04-02 21:00:00', '2022-04-24 02:14:11'),
(172, 6, 1, '2022-04-01 21:00:00', '2022-04-24 02:14:11'),
(173, 6, 0, '2022-03-31 21:00:00', '2022-04-24 02:14:11'),
(174, 6, 1, '2022-03-30 21:00:00', '2022-04-24 02:14:11'),
(175, 6, 2, '2022-03-29 21:00:00', '2022-04-24 02:14:11'),
(176, 6, 0, '2022-03-28 21:00:00', '2022-04-24 02:14:11'),
(177, 6, 1, '2022-03-27 21:00:00', '2022-04-24 02:14:11'),
(178, 6, 2, '2022-03-26 21:00:00', '2022-04-24 02:14:11'),
(179, 6, 0, '2022-03-25 21:00:00', '2022-04-24 02:14:11'),
(180, 6, 1, '2022-03-24 21:00:00', '2022-04-24 02:14:11'),
(181, 7, 2, '2022-04-22 21:00:00', '2022-04-24 02:14:11'),
(182, 7, 1, '2022-04-21 21:00:00', '2022-04-24 02:14:11'),
(183, 7, 1, '2022-04-20 21:00:00', '2022-04-24 02:14:11'),
(184, 7, 1, '2022-04-19 21:00:00', '2022-04-24 02:14:11'),
(185, 7, 0, '2022-04-18 21:00:00', '2022-04-24 02:14:11'),
(186, 7, 2, '2022-04-17 21:00:00', '2022-04-24 02:14:11'),
(187, 7, 2, '2022-04-16 21:00:00', '2022-04-24 02:14:11'),
(188, 7, 1, '2022-04-15 21:00:00', '2022-04-24 02:14:11'),
(189, 7, 0, '2022-04-14 21:00:00', '2022-04-24 02:14:11'),
(190, 7, 2, '2022-04-13 21:00:00', '2022-04-24 02:14:11'),
(191, 7, 2, '2022-04-12 21:00:00', '2022-04-24 02:14:11'),
(192, 7, 1, '2022-04-11 21:00:00', '2022-04-24 02:14:11'),
(193, 7, 1, '2022-04-10 21:00:00', '2022-04-24 02:14:11'),
(194, 7, 0, '2022-04-09 21:00:00', '2022-04-24 02:14:11'),
(195, 7, 1, '2022-04-08 21:00:00', '2022-04-24 02:14:11'),
(196, 7, 0, '2022-04-07 21:00:00', '2022-04-24 02:14:11'),
(197, 7, 0, '2022-04-06 21:00:00', '2022-04-24 02:14:11'),
(198, 7, 1, '2022-04-05 21:00:00', '2022-04-24 02:14:11'),
(199, 7, 2, '2022-04-04 21:00:00', '2022-04-24 02:14:11'),
(200, 7, 0, '2022-04-03 21:00:00', '2022-04-24 02:14:11'),
(201, 7, 1, '2022-04-02 21:00:00', '2022-04-24 02:14:11'),
(202, 7, 0, '2022-04-01 21:00:00', '2022-04-24 02:14:11'),
(203, 7, 2, '2022-03-31 21:00:00', '2022-04-24 02:14:11'),
(204, 7, 0, '2022-03-30 21:00:00', '2022-04-24 02:14:11'),
(205, 7, 1, '2022-03-29 21:00:00', '2022-04-24 02:14:11'),
(206, 7, 1, '2022-03-28 21:00:00', '2022-04-24 02:14:11'),
(207, 7, 1, '2022-03-27 21:00:00', '2022-04-24 02:14:11'),
(208, 7, 1, '2022-03-26 21:00:00', '2022-04-24 02:14:11'),
(209, 7, 1, '2022-03-25 21:00:00', '2022-04-24 02:14:11'),
(210, 7, 1, '2022-03-24 21:00:00', '2022-04-24 02:14:11'),
(211, 8, 2, '2022-04-22 21:00:00', '2022-04-24 02:14:11'),
(212, 8, 1, '2022-04-21 21:00:00', '2022-04-24 02:14:11'),
(213, 8, 1, '2022-04-20 21:00:00', '2022-04-24 02:14:11'),
(214, 8, 2, '2022-04-19 21:00:00', '2022-04-24 02:14:11'),
(215, 8, 0, '2022-04-18 21:00:00', '2022-04-24 02:14:11'),
(216, 8, 0, '2022-04-17 21:00:00', '2022-04-24 02:14:11'),
(217, 8, 2, '2022-04-16 21:00:00', '2022-04-24 02:14:11'),
(218, 8, 2, '2022-04-15 21:00:00', '2022-04-24 02:14:11'),
(219, 8, 1, '2022-04-14 21:00:00', '2022-04-24 02:14:11'),
(220, 8, 0, '2022-04-13 21:00:00', '2022-04-24 02:14:11'),
(221, 8, 1, '2022-04-12 21:00:00', '2022-04-24 02:14:11'),
(222, 8, 0, '2022-04-11 21:00:00', '2022-04-24 02:14:11'),
(223, 8, 2, '2022-04-10 21:00:00', '2022-04-24 02:14:11'),
(224, 8, 0, '2022-04-09 21:00:00', '2022-04-24 02:14:11'),
(225, 8, 2, '2022-04-08 21:00:00', '2022-04-24 02:14:11'),
(226, 8, 2, '2022-04-07 21:00:00', '2022-04-24 02:14:11'),
(227, 8, 1, '2022-04-06 21:00:00', '2022-04-24 02:14:11'),
(228, 8, 2, '2022-04-05 21:00:00', '2022-04-24 02:14:11'),
(229, 8, 2, '2022-04-04 21:00:00', '2022-04-24 02:14:11'),
(230, 8, 0, '2022-04-03 21:00:00', '2022-04-24 02:14:11'),
(231, 8, 0, '2022-04-02 21:00:00', '2022-04-24 02:14:11'),
(232, 8, 0, '2022-04-01 21:00:00', '2022-04-24 02:14:11'),
(233, 8, 0, '2022-03-31 21:00:00', '2022-04-24 02:14:11'),
(234, 8, 0, '2022-03-30 21:00:00', '2022-04-24 02:14:11'),
(235, 8, 1, '2022-03-29 21:00:00', '2022-04-24 02:14:11'),
(236, 8, 2, '2022-03-28 21:00:00', '2022-04-24 02:14:11'),
(237, 8, 1, '2022-03-27 21:00:00', '2022-04-24 02:14:11'),
(238, 8, 2, '2022-03-26 21:00:00', '2022-04-24 02:14:11'),
(239, 8, 1, '2022-03-25 21:00:00', '2022-04-24 02:14:11'),
(240, 8, 0, '2022-03-24 21:00:00', '2022-04-24 02:14:11'),
(241, 9, 0, '2022-04-22 21:00:00', '2022-04-24 02:14:11'),
(242, 9, 0, '2022-04-21 21:00:00', '2022-04-24 02:14:11'),
(243, 9, 1, '2022-04-20 21:00:00', '2022-04-24 02:14:11'),
(244, 9, 0, '2022-04-19 21:00:00', '2022-04-24 02:14:11'),
(245, 9, 2, '2022-04-18 21:00:00', '2022-04-24 02:14:11'),
(246, 9, 2, '2022-04-17 21:00:00', '2022-04-24 02:14:11'),
(247, 9, 1, '2022-04-16 21:00:00', '2022-04-24 02:14:11'),
(248, 9, 0, '2022-04-15 21:00:00', '2022-04-24 02:14:11'),
(249, 9, 2, '2022-04-14 21:00:00', '2022-04-24 02:14:11'),
(250, 9, 2, '2022-04-13 21:00:00', '2022-04-24 02:14:11'),
(251, 9, 2, '2022-04-12 21:00:00', '2022-04-24 02:14:11'),
(252, 9, 0, '2022-04-11 21:00:00', '2022-04-24 02:14:11'),
(253, 9, 1, '2022-04-10 21:00:00', '2022-04-24 02:14:11'),
(254, 9, 0, '2022-04-09 21:00:00', '2022-04-24 02:14:11'),
(255, 9, 0, '2022-04-08 21:00:00', '2022-04-24 02:14:11'),
(256, 9, 2, '2022-04-07 21:00:00', '2022-04-24 02:14:11'),
(257, 9, 0, '2022-04-06 21:00:00', '2022-04-24 02:14:11'),
(258, 9, 1, '2022-04-05 21:00:00', '2022-04-24 02:14:11'),
(259, 9, 1, '2022-04-04 21:00:00', '2022-04-24 02:14:11'),
(260, 9, 2, '2022-04-03 21:00:00', '2022-04-24 02:14:11'),
(261, 9, 0, '2022-04-02 21:00:00', '2022-04-24 02:14:11'),
(262, 9, 0, '2022-04-01 21:00:00', '2022-04-24 02:14:11'),
(263, 9, 2, '2022-03-31 21:00:00', '2022-04-24 02:14:11'),
(264, 9, 1, '2022-03-30 21:00:00', '2022-04-24 02:14:11'),
(265, 9, 0, '2022-03-29 21:00:00', '2022-04-24 02:14:11'),
(266, 9, 1, '2022-03-28 21:00:00', '2022-04-24 02:14:11'),
(267, 9, 2, '2022-03-27 21:00:00', '2022-04-24 02:14:11'),
(268, 9, 1, '2022-03-26 21:00:00', '2022-04-24 02:14:11'),
(269, 9, 0, '2022-03-25 21:00:00', '2022-04-24 02:14:11'),
(270, 9, 2, '2022-03-24 21:00:00', '2022-04-24 02:14:11'),
(271, 10, 0, '2022-04-22 21:00:00', '2022-04-24 02:14:11'),
(272, 10, 0, '2022-04-21 21:00:00', '2022-04-24 02:14:11'),
(273, 10, 2, '2022-04-20 21:00:00', '2022-04-24 02:14:11'),
(274, 10, 2, '2022-04-19 21:00:00', '2022-04-24 02:14:11'),
(275, 10, 2, '2022-04-18 21:00:00', '2022-04-24 02:14:11'),
(276, 10, 1, '2022-04-17 21:00:00', '2022-04-24 02:14:11'),
(277, 10, 1, '2022-04-16 21:00:00', '2022-04-24 02:14:11'),
(278, 10, 1, '2022-04-15 21:00:00', '2022-04-24 02:14:11'),
(279, 10, 2, '2022-04-14 21:00:00', '2022-04-24 02:14:11'),
(280, 10, 1, '2022-04-13 21:00:00', '2022-04-24 02:14:11'),
(281, 10, 2, '2022-04-12 21:00:00', '2022-04-24 02:14:11'),
(282, 10, 1, '2022-04-11 21:00:00', '2022-04-24 02:14:11'),
(283, 10, 2, '2022-04-10 21:00:00', '2022-04-24 02:14:11'),
(284, 10, 1, '2022-04-09 21:00:00', '2022-04-24 02:14:11'),
(285, 10, 0, '2022-04-08 21:00:00', '2022-04-24 02:14:11'),
(286, 10, 1, '2022-04-07 21:00:00', '2022-04-24 02:14:11'),
(287, 10, 0, '2022-04-06 21:00:00', '2022-04-24 02:14:11'),
(288, 10, 1, '2022-04-05 21:00:00', '2022-04-24 02:14:11'),
(289, 10, 0, '2022-04-04 21:00:00', '2022-04-24 02:14:11'),
(290, 10, 1, '2022-04-03 21:00:00', '2022-04-24 02:14:11'),
(291, 10, 2, '2022-04-02 21:00:00', '2022-04-24 02:14:11'),
(292, 10, 2, '2022-04-01 21:00:00', '2022-04-24 02:14:11'),
(293, 10, 1, '2022-03-31 21:00:00', '2022-04-24 02:14:11'),
(294, 10, 1, '2022-03-30 21:00:00', '2022-04-24 02:14:11'),
(295, 10, 1, '2022-03-29 21:00:00', '2022-04-24 02:14:11'),
(296, 10, 0, '2022-03-28 21:00:00', '2022-04-24 02:14:11'),
(297, 10, 2, '2022-03-27 21:00:00', '2022-04-24 02:14:11'),
(298, 10, 1, '2022-03-26 21:00:00', '2022-04-24 02:14:11'),
(299, 10, 2, '2022-03-25 21:00:00', '2022-04-24 02:14:11'),
(300, 10, 0, '2022-03-24 21:00:00', '2022-04-24 02:14:11'),
(301, 11, 0, '2022-04-22 21:00:00', '2022-04-24 02:14:11'),
(302, 11, 2, '2022-04-21 21:00:00', '2022-04-24 02:14:11'),
(303, 11, 0, '2022-04-20 21:00:00', '2022-04-24 02:14:11'),
(304, 11, 0, '2022-04-19 21:00:00', '2022-04-24 02:14:11'),
(305, 11, 2, '2022-04-18 21:00:00', '2022-04-24 02:14:11'),
(306, 11, 2, '2022-04-17 21:00:00', '2022-04-24 02:14:11'),
(307, 11, 2, '2022-04-16 21:00:00', '2022-04-24 02:14:11'),
(308, 11, 0, '2022-04-15 21:00:00', '2022-04-24 02:14:11'),
(309, 11, 1, '2022-04-14 21:00:00', '2022-04-24 02:14:11'),
(310, 11, 2, '2022-04-13 21:00:00', '2022-04-24 02:14:11'),
(311, 11, 2, '2022-04-12 21:00:00', '2022-04-24 02:14:11'),
(312, 11, 1, '2022-04-11 21:00:00', '2022-04-24 02:14:11'),
(313, 11, 0, '2022-04-10 21:00:00', '2022-04-24 02:14:11'),
(314, 11, 1, '2022-04-09 21:00:00', '2022-04-24 02:14:11'),
(315, 11, 0, '2022-04-08 21:00:00', '2022-04-24 02:14:11'),
(316, 11, 0, '2022-04-07 21:00:00', '2022-04-24 02:14:11'),
(317, 11, 1, '2022-04-06 21:00:00', '2022-04-24 02:14:11'),
(318, 11, 1, '2022-04-05 21:00:00', '2022-04-24 02:14:11'),
(319, 11, 0, '2022-04-04 21:00:00', '2022-04-24 02:14:11'),
(320, 11, 1, '2022-04-03 21:00:00', '2022-04-24 02:14:11'),
(321, 11, 0, '2022-04-02 21:00:00', '2022-04-24 02:14:11'),
(322, 11, 0, '2022-04-01 21:00:00', '2022-04-24 02:14:11'),
(323, 11, 2, '2022-03-31 21:00:00', '2022-04-24 02:14:11'),
(324, 11, 2, '2022-03-30 21:00:00', '2022-04-24 02:14:11'),
(325, 11, 0, '2022-03-29 21:00:00', '2022-04-24 02:14:11'),
(326, 11, 2, '2022-03-28 21:00:00', '2022-04-24 02:14:11'),
(327, 11, 2, '2022-03-27 21:00:00', '2022-04-24 02:14:11'),
(328, 11, 0, '2022-03-26 21:00:00', '2022-04-24 02:14:11'),
(329, 11, 1, '2022-03-25 21:00:00', '2022-04-24 02:14:11'),
(330, 11, 1, '2022-03-24 21:00:00', '2022-04-24 02:14:11');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Recruiting and staffing', '2022-04-24 02:14:09', '2022-04-24 02:14:09'),
(2, 'Health and safety', '2022-04-24 02:14:09', '2022-04-24 02:14:09'),
(3, 'Training and development', '2022-04-24 02:14:09', '2022-04-24 02:14:09'),
(4, 'Compensation and benefits', '2022-04-24 02:14:09', '2022-04-24 02:14:09');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `department_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `department_id`, `title`, `created_at`, `updated_at`) VALUES
(1, 4, 'Cleaner', '2022-04-24 02:14:09', '2022-04-24 02:14:09'),
(2, 4, 'Back-End Devloper', '2022-04-24 02:14:09', '2022-04-24 02:14:09'),
(3, 2, 'Front-End Devaloper', '2022-04-24 02:14:09', '2022-04-24 02:14:09'),
(4, 4, 'Project Manager', '2022-04-24 02:14:09', '2022-04-24 02:14:09'),
(5, 3, 'Project Coordinator', '2022-04-24 02:14:09', '2022-04-24 02:14:09'),
(6, 1, 'IOS Devloper', '2022-04-24 02:14:09', '2022-04-24 02:14:09'),
(7, 2, 'Android Developer', '2022-04-24 02:14:09', '2022-04-24 02:14:09'),
(8, 4, 'Fluter Developer', '2022-04-24 02:14:09', '2022-04-24 02:14:09');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2022_04_11_075639_create_departments_table', 1),
(4, '2022_04_11_075740_create_jobs_table', 1),
(5, '2022_04_11_075741_create_users_table', 1),
(6, '2022_04_20_123700_create_attendances_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` tinyint(1) DEFAULT NULL,
  `sallary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `job_id`, `is_admin`, `first_name`, `last_name`, `gender`, `sallary`, `email`, `password`, `address`, `number`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'admin', 'User', 1, NULL, 'admin@test.com', '$2y$10$91cJ0w8VNkS9WCCp6D5msugV5JY6hr/p.e22opxLR9AtULzJA6FOq', 'Erbil, center', '750 425 8891', NULL, NULL, NULL, NULL),
(2, 1, 0, 'kaidan', 'jarell', 1, NULL, 'kaidan_jarell@test.com', '$2y$10$iRuCXg5g.0BunjF44pSxsOdNUDM4.ZGP7KrHq2dP2is6peiJBqQam', 'Erbil, center', '750 425 8891', NULL, NULL, '2022-04-24 02:14:10', '2022-04-24 02:14:10'),
(3, 2, 0, 'kobi', 'soham', 0, NULL, 'kobi_soham@test.com', '$2y$10$ynrwJQdQt0mFPORfB/5MmeIan19jLZACKb6b5BPUKGoP2hpnCclo2', 'Erbil, center', '750 425 8891', NULL, NULL, '2022-04-24 02:14:10', '2022-04-24 02:14:10'),
(4, 3, 0, 'ennis', 'lleyton', 1, NULL, 'ennis_lleyton@test.com', '$2y$10$.fnIiZPKV2ZP3IvMQNFRsuK4NP/UduWDFkcXverGe2M7ob19t1Zje', 'Erbil, center', '750 425 8891', NULL, NULL, '2022-04-24 02:14:10', '2022-04-24 02:14:10'),
(5, 1, 0, 'ilyas', 'malikye', 0, NULL, 'ilyas_malikye@test.com', '$2y$10$nG6Qt6TKVD2CrXH77.WeQepzfFbjrrZQpE82BS3PD.Io3IOQFnP5m', 'Erbil, center', '750 425 8891', NULL, NULL, '2022-04-24 02:14:10', '2022-04-24 02:14:10'),
(6, 8, 0, 'devlin', 'florin', 1, NULL, 'devlin_florin@test.com', '$2y$10$kyxQ3POQZC1O4ESqVxHYeOyCRWTnqRgURV.fwkJJGC.0m5szt0Xru', 'Erbil, center', '750 425 8891', NULL, NULL, '2022-04-24 02:14:10', '2022-04-24 02:14:10'),
(7, 1, 0, 'mackenzie', 'freddie', 0, NULL, 'mackenzie_freddie@test.com', '$2y$10$pp346rsP.ALW3Vh2wDw1zuUHmGLgSSJ.e1TPYyCoLoQMnJpSDIgN.', 'Erbil, center', '750 425 8891', NULL, NULL, '2022-04-24 02:14:10', '2022-04-24 02:14:10'),
(8, 8, 0, 'abdur-rahman', 'felix', 1, NULL, 'abdur-rahman_felix@test.com', '$2y$10$7W5IylgChZvZnOvto7.jcelcDldqe0DD9lbVVM9UVEybUtQj379ye', 'Erbil, center', '750 425 8891', NULL, NULL, '2022-04-24 02:14:10', '2022-04-24 02:14:10'),
(9, 3, 0, 'jaime', 'krzysiek', 0, NULL, 'jaime_krzysiek@test.com', '$2y$10$0Ea46ZyHQxR8xRCoRh0tU.GKWNwDkFtWegPr1rhFu2esPLvAJjhhu', 'Erbil, center', '750 425 8891', NULL, NULL, '2022-04-24 02:14:10', '2022-04-24 02:14:10'),
(10, 5, 0, 'coben', 'taiwo', 1, NULL, 'coben_taiwo@test.com', '$2y$10$WQnN11viNgVJud5.q1nZ9eMIPxCDpAITEK6WmsJ.QPAc5izyH8LgG', 'Erbil, center', '750 425 8891', NULL, NULL, '2022-04-24 02:14:10', '2022-04-24 02:14:10'),
(11, 1, 0, 'andrea', 'yasir', 0, NULL, 'andrea_yasir@test.com', '$2y$10$7BcY02WGxoMji1SyzZ6CgONLy55rCn/wYvnXsyWlCt565OD9ftesK', 'Erbil, center', '750 425 8891', NULL, NULL, '2022-04-24 02:14:10', '2022-04-24 02:14:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attendances_user_id_foreign` (`user_id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_department_id_foreign` (`department_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_id_unique` (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_remember_token_unique` (`remember_token`),
  ADD KEY `users_job_id_foreign` (`job_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=331;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendances`
--
ALTER TABLE `attendances`
  ADD CONSTRAINT `attendances_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `jobs`
--
ALTER TABLE `jobs`
  ADD CONSTRAINT `jobs_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;