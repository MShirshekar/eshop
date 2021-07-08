-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2021 at 10:34 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+03:30";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecomm`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_persian_ci NOT NULL,
  `cat_slug` varchar(150) COLLATE utf8mb4_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_persian_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `cat_slug`) VALUES
(1, '<p>لپ تاپ</p>\r\n', 'laptops'),
(2, '<p>کامپیوتر</p>\r\n', 'desktop-pc'),
(3, '<p>تبلت</p>\r\n', 'tablets'),
(4, '<p>تلفن همراه</p>\r\n', '');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_persian_ci;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `sales_id`, `product_id`, `quantity`) VALUES
(14, 9, 11, 2),
(15, 9, 13, 5),
(16, 9, 3, 2),
(17, 9, 1, 3),
(18, 10, 13, 3),
(19, 10, 2, 4),
(20, 10, 19, 5);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` mediumtext COLLATE utf8mb4_persian_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_persian_ci NOT NULL,
  `slug` varchar(200) COLLATE utf8mb4_persian_ci NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(200) COLLATE utf8mb4_persian_ci NOT NULL,
  `date_view` date NOT NULL,
  `counter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_persian_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `slug`, `price`, `photo`, `date_view`, `counter`) VALUES
(1, 1, 'DELL Inspiron 15 7000 15.6', '<p> ❤توضیحات در زمان مناسب افزوده می شود. با تشکر  </p>\r\n', 'dell-inspiron-15-7000-15-6', 899, 'dell-inspiron-15-7000-15-6.jpg', '0000-00-00', 2),
(2, 1, 'MICROSOFT Surface Pro 4 & Typecover - 128 GB', '<p>❤توضیحات در زمان مناسب افزوده می شود. با تشکر</p>\r\n', 'microsoft-surface-pro-4-typecover-128-gb', 799, 'microsoft-surface-pro-4-typecover-128-gb.jpg', '0000-00-00', 3),
(3, 1, 'DELL Inspiron 15 5000 15.6', '<p>❤توضیحات در زمان مناسب افزوده می شود. با تشکر</p>\r\n', 'dell-inspiron-15-5000-15-6', 599, 'dell-inspiron-15-5000-15-6.jpg', '0000-00-00', 1),
(4, 1, 'LENOVO Ideapad 320s-14IKB 14\" Laptop - Grey', '<p>❤توضیحات در زمان مناسب افزوده می شود. با تشکر</p>\r\n', 'lenovo-ideapad-320s-14ikb-14-laptop-grey', 399, 'lenovo-ideapad-320s-14ikb-14-laptop-grey.jpg', '0000-00-00', 3),
(5, 3, 'APPLE 9.7\" iPad - 32 GB, Gold', '<p>❤توضیحات در زمان مناسب افزوده می شود. با تشکر</p>\r\n', 'apple-9-7-ipad-32-gb-gold', 339, 'apple-9-7-ipad-32-gb-gold.jpg', '0000-00-00', 3),
(6, 1, 'DELL Inspiron 15 5000 15', '<p>❤توضیحات در زمان مناسب افزوده می شود. با تشکر</p>\r\n', 'dell-inspiron-15-5000-15', 449.99, 'dell-inspiron-15-5000-15.jpg', '0000-00-00', 0),
(7, 3, 'APPLE 10.5\" iPad Pro - 64 GB, Space Grey (2017)', '<p>❤توضیحات در زمان مناسب افزوده می شود. با تشکر</p>\r\n', 'apple-10-5-ipad-pro-64-gb-space-grey-2017', 619, 'apple-10-5-ipad-pro-64-gb-space-grey-2017.jpg', '0000-00-00', 0),
(8, 1, 'ASUS Transformer Mini T102HA 10.1\" 2 in 1 - Silver', '<p>❤توضیحات در زمان مناسب افزوده می شود. با تشکر</p>\r\n', 'asus-transformer-mini-t102ha-10-1-2-1-silver', 549.99, 'asus-transformer-mini-t102ha-10-1-2-1-silver.jpg', '0000-00-00', 0),
(9, 2, 'PC SPECIALIST Vortex Core Lite Gaming PC', '<p>❤توضیحات در زمان مناسب افزوده می شود. با تشکر</p>\r\n', 'pc-specialist-vortex-core-lite-gaming-pc', 599.99, 'pc-specialist-vortex-core-lite-gaming-pc.jpg', '0000-00-00', 0),
(10, 2, 'DELL Inspiron 5675 Gaming PC - Recon Blue', '<p>❤توضیحات در زمان مناسب افزوده می شود. با تشکر</p>\r\n', 'dell-inspiron-5675-gaming-pc-recon-blue', 599.99, 'dell-inspiron-5675-gaming-pc-recon-blue.jpg', '0000-00-00', 1),
(11, 2, 'HP Barebones OMEN X 900-099nn Gaming PC', '<p>❤توضیحات در زمان مناسب افزوده می شود. با تشکر</p>\r\n', 'hp-barebones-omen-x-900-099nn-gaming-pc', 489.98, 'hp-barebones-omen-x-900-099nn-gaming-pc.jpg', '0000-00-00', 1),
(12, 2, 'ACER Aspire GX-781 Gaming PC', '<p>❤توضیحات در زمان مناسب افزوده می شود. با تشکر</p>\r\n', 'acer-aspire-gx-781-gaming-pc', 749.99, 'acer-aspire-gx-781-gaming-pc.jpg', '0000-00-00', 3),
(13, 2, 'HP Pavilion Power 580-015na Gaming PC', '<p>❤توضیحات در زمان مناسب افزوده می شود. با تشکر</p>\r\n', 'hp-pavilion-power-580-015na-gaming-pc', 799.99, 'hp-pavilion-power-580-015na-gaming-pc.jpg', '0000-00-00', 1),
(14, 2, 'LENOVO Legion Y520 Gaming PC', '<p>❤توضیحات در زمان مناسب افزوده می شود. با تشکر</p>\r\n', 'lenovo-legion-y520-gaming-pc', 899.99, 'lenovo-legion-y520-gaming-pc.jpg', '0000-00-00', 13),
(15, 2, 'PC SPECIALIST Vortex Minerva XT-R Gaming PC', '<p>❤توضیحات در زمان مناسب افزوده می شود. با تشکر</p>\r\n', 'pc-specialist-vortex-minerva-xt-r-gaming-pc', 999.99, 'pc-specialist-vortex-minerva-xt-r-gaming-pc.jpg', '0000-00-00', 1),
(16, 2, 'PC SPECIALIST Vortex Core II Gaming PC', '<p>❤توضیحات در زمان مناسب افزوده می شود. با تشکر</p>\r\n', 'pc-specialist-vortex-core-ii-gaming-pc', 649.99, 'pc-specialist-vortex-core-ii-gaming-pc.jpg', '2021-05-10', 2),
(17, 3, 'AMAZON Fire 7 Tablet with Alexa (2017) - 8 GB, Black', '<p>❤توضیحات در زمان مناسب افزوده می شود. با تشکر</p>\r\n', 'amazon-fire-7-tablet-alexa-2017-8-gb-black', 49.99, 'amazon-fire-7-tablet-alexa-2017-8-gb-black.jpg', '0000-00-00', 1),
(18, 3, 'AMAZON Fire HD 8 Tablet with Alexa (2017) - 16 GB, Black', '<p>❤توضیحات در زمان مناسب افزوده می شود. با تشکر</p>\r\n', 'amazon-fire-hd-8-tablet-alexa-2017-16-gb-black', 79.99, 'amazon-fire-hd-8-tablet-alexa-2017-16-gb-black.jpg', '0000-00-00', 2),
(19, 3, 'AMAZON Fire HD 8 Tablet with Alexa (2017) - 32 GB, Black', '<p>❤توضیحات در زمان مناسب افزوده می شود. با تشکر</p>\r\n', 'amazon-fire-hd-8-tablet-alexa-2017-32-gb-black', 99.99, 'amazon-fire-hd-8-tablet-alexa-2017-32-gb-black.jpg', '0000-00-00', 1),
(20, 3, 'APPLE 9.7\" iPad - 32 GB, Space Grey', '<p>❤توضیحات در زمان مناسب افزوده می شود. با تشکر</p>\r\n', 'apple-9-7-ipad-32-gb-space-grey', 339, 'apple-9-7-ipad-32-gb-space-grey.jpg', '0000-00-00', 1),
(27, 1, 'Dell XPS 15 9560', '<p>❤توضیحات در زمان مناسب افزوده می شود. با تشکر</p>\r\n', 'dell-xps-15-9560', 1599, 'dell-xps-15-9560.jpg', '0000-00-00', 9),
(28, 4, 'Samsung Note 8', '<p>❤توضیحات در زمان مناسب افزوده می شود. با تشکر</p>\r\n', 'samsung-note-8', 829, 'samsung-note-8.jpg', '0000-00-00', 0),
(29, 4, 'Samsung Galaxy S9+ [128 GB]', '<h2>❤توضیحات در زمان مناسب افزوده می شود. با تشکر</p>\r\n', 'samsung-galaxy-s9-128-gb', 889.99, 'samsung-galaxy-s9-128-gb.jpg', '0000-00-00', 3);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pay_id` varchar(50) COLLATE utf8mb4_persian_ci NOT NULL,
  `sales_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_persian_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `pay_id`, `sales_date`) VALUES
(9, 9, 'PAY-1RT494832H294925RLLZ7TZA', '2021-05-10'),
(10, 9, 'PAY-21700797GV667562HLLZ7ZVY', '2021-05-10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) COLLATE utf8mb4_persian_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_persian_ci NOT NULL,
  `type` int(1) NOT NULL,
  `firstname` varchar(50) COLLATE utf8mb4_persian_ci NOT NULL,
  `lastname` varchar(50) COLLATE utf8mb4_persian_ci NOT NULL,
  `address` mediumtext COLLATE utf8mb4_persian_ci NOT NULL,
  `contact_info` varchar(100) COLLATE utf8mb4_persian_ci NOT NULL,
  `photo` varchar(200) COLLATE utf8mb4_persian_ci NOT NULL,
  `status` int(1) NOT NULL,
  `activate_code` varchar(15) COLLATE utf8mb4_persian_ci NOT NULL,
  `reset_code` varchar(15) COLLATE utf8mb4_persian_ci NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_persian_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `address`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`) VALUES
(1, 'admin@admin.com', '$2y$10$0SHFfoWzz8WZpdu9Qw//E.tWamILbiNCX7bqhy3od0gvK5.kSJ8N2', 1, 'Admin', '  👨‍💻', '', '', 'thanos1.jpg', 1, '', '', '2021-05-01'),
(9, 'ali@um.com', '$2y$10$Oongyx.Rv0Y/vbHGOxywl.qf18bXFiZOcEaI4ZpRRLzFNGKAhObSC', 0, 'ali', 'aliye', 'mashdad', '09092735719', 'male2.png', 1, 'k8FBpynQfqsv', 'wzPGkX5IODlTYHg', '2021-05-09'),
(12, 'mmd@um.com', '$2y$10$ozW4c8r313YiBsf7HD7m6egZwpvoE983IHfZsPRxrO1hWXfPRpxHO', 0, 'mmd', 'mmde', 'tehran', '7542214500', 'female3.jpg', 1, '', '', '2021-07-09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
