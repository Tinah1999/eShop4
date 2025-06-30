-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2025 at 10:47 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(30) NOT NULL,
  `client_id` int(30) NOT NULL,
  `inventory_id` int(30) NOT NULL,
  `price` double NOT NULL,
  `quantity` int(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `client_id`, `inventory_id`, `price`, `quantity`, `date_created`) VALUES
(6, 2, 19, 50000, 1, '2025-06-27 10:07:38'),
(7, 3, 10, 20000, 1, '2025-06-27 10:14:41'),
(8, 3, 17, 5000, 1, '2025-06-27 10:14:57'),
(9, 2, 20, 30000, 1, '2025-06-27 10:17:10'),
(10, 2, 21, 60000, 1, '2025-06-27 12:14:48');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(30) NOT NULL,
  `category` varchar(250) NOT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `description`, `status`, `date_created`) VALUES
(4, 'Accessories', '&lt;p&gt;Sample Category&lt;/p&gt;', 1, '2021-06-21 16:34:04'),
(6, 'Clothing brands', '&lt;p&gt;We provide all the slay and unslay fits around to your door-step on delievery.&lt;/p&gt;', 1, '2025-06-27 09:20:34');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(30) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` text NOT NULL,
  `default_delivery_address` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `firstname`, `lastname`, `gender`, `contact`, `email`, `password`, `default_delivery_address`, `date_created`) VALUES
(2, 'Nakitende', 'Christine', 'Male', '07777777', 'tinahnakitende0@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'masaka', '2025-06-20 17:32:20'),
(3, 'kibz', 'ibz', 'Female', '07777777', 'kibz2823@gmail.com', 'd93591bdf7860e1e4ee2fca799911215', 'kkpopo0p', '2025-06-27 10:14:20');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `quantity` double NOT NULL,
  `unit` varchar(100) NOT NULL,
  `price` float NOT NULL,
  `size` varchar(250) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`id`, `product_id`, `quantity`, `unit`, `price`, `size`, `date_created`, `date_updated`) VALUES
(9, 10, 4, '5', 20000, 'M', '2025-06-20 17:53:46', '2025-06-27 09:25:31'),
(10, 9, 1, '1', 20000, 'M', '2025-06-27 09:26:22', NULL),
(11, 8, 2, '2', 20000, 'S', '2025-06-27 09:26:45', NULL),
(12, 13, 3, '3', 15000, 'L', '2025-06-27 09:40:06', NULL),
(13, 14, 2, '2', 10000, 'M', '2025-06-27 09:41:24', NULL),
(14, 12, 3, '3', 15000, 'L', '2025-06-27 09:41:50', NULL),
(15, 7, 2, '1', 20000, 'M', '2025-06-27 09:42:39', NULL),
(16, 17, 1, '1', 50000, 'L', '2025-06-27 09:49:15', NULL),
(17, 11, 5, '100', 5000, 'NONE', '2025-06-27 09:49:37', NULL),
(18, 17, 5, '100', 10000, 'XL', '2025-06-27 09:50:04', NULL),
(19, 15, 2, '5', 50000, 'M', '2025-06-27 09:50:32', NULL),
(20, 18, 1, '2', 30000, 'XL', '2025-06-27 09:51:02', NULL),
(21, 19, 2, '2', 60000, 'XL', '2025-06-27 09:54:41', NULL),
(22, 20, 1, '4', 45000, 'M', '2025-06-27 09:55:09', NULL),
(23, 21, 1, '20', 8000, 'L', '2025-06-27 09:58:17', NULL),
(24, 22, 2, '5', 5000, 'L', '2025-06-27 09:58:43', NULL),
(25, 25, 1, '2', 150000, 'NONE', '2025-06-27 10:02:31', NULL),
(26, 23, 4, '1', 70000, 'S', '2025-06-27 10:02:53', NULL),
(27, 24, 2, '1', 20000, 'NONE', '2025-06-27 10:03:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(30) NOT NULL,
  `client_id` int(30) NOT NULL,
  `delivery_address` text NOT NULL,
  `payment_method` varchar(100) NOT NULL,
  `amount` double NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT 0,
  `paid` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `client_id`, `delivery_address`, `payment_method`, `amount`, `status`, `paid`, `date_created`, `date_updated`) VALUES
(4, 1, '', 'cod', 0, 0, 0, '2025-06-25 15:18:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_list`
--

CREATE TABLE `order_list` (
  `id` int(30) NOT NULL,
  `order_id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `size` varchar(20) NOT NULL,
  `unit` varchar(50) NOT NULL,
  `quantity` int(30) NOT NULL,
  `price` double NOT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_list`
--

INSERT INTO `order_list` (`id`, `order_id`, `product_id`, `size`, `unit`, `quantity`, `price`, `total`) VALUES
(1, 1, 4, 'L', 'pcs', 2, 550, 1100),
(2, 2, 3, 'M', 'pack', 5, 150, 750);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(30) NOT NULL,
  `category_id` int(30) NOT NULL,
  `sub_category_id` int(30) NOT NULL,
  `product_name` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `sub_category_id`, `product_name`, `description`, `status`, `date_created`) VALUES
(7, 4, 4, 'wireless sets', '&lt;p&gt;used for listening&lt;/p&gt;', 1, '2025-06-20 17:38:59'),
(8, 4, 7, 'second-wireless pieces', '&lt;p&gt;Listening skills&lt;/p&gt;', 1, '2025-06-27 09:22:14'),
(9, 4, 7, 'Headphones', '&lt;p&gt;Listening devices&lt;/p&gt;', 1, '2025-06-27 09:22:49'),
(10, 4, 5, 'One-sided hearing pieces', '&lt;p&gt;They are used for listening&lt;/p&gt;', 1, '2025-06-27 09:24:27'),
(11, 1, 8, 'Cake', '&lt;p&gt;Here for eating&lt;/p&gt;', 1, '2025-06-27 09:29:31'),
(12, 6, 10, 'long skirts', '', 1, '2025-06-27 09:34:15'),
(13, 6, 10, 'Skirts', '', 1, '2025-06-27 09:34:41'),
(14, 6, 10, 'Skirts 3', '', 1, '2025-06-27 09:35:09'),
(15, 6, 9, 'party dress', '', 1, '2025-06-27 09:46:55'),
(16, 6, 9, 'Home fit', '', 1, '2025-06-27 09:47:20'),
(17, 6, 9, 'Casual dress', '', 1, '2025-06-27 09:47:48'),
(18, 6, 9, 'Outside', '', 1, '2025-06-27 09:48:29'),
(19, 6, 13, 'two piece pants', '', 1, '2025-06-27 09:53:36'),
(20, 6, 13, 'Two-piece 2', '', 1, '2025-06-27 09:54:18'),
(21, 6, 11, 'Forals', '', 1, '2025-06-27 09:57:18'),
(22, 6, 11, 'sleeved shirts', '', 1, '2025-06-27 09:57:44'),
(23, 6, 12, 'heels', '', 1, '2025-06-27 10:01:24'),
(24, 6, 12, 'sandals', '', 1, '2025-06-27 10:01:47'),
(25, 6, 12, 'Boots', '', 1, '2025-06-27 10:02:09');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(30) NOT NULL,
  `order_id` int(30) NOT NULL,
  `total_amount` double NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `order_id`, `total_amount`, `date_created`) VALUES
(1, 1, 1100, '2021-06-22 13:48:54'),
(2, 2, 750, '2021-06-22 15:26:07');

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` int(30) NOT NULL,
  `size` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `size`) VALUES
(1, 'xs'),
(2, 's'),
(3, 'm'),
(4, 'l'),
(5, 'xl'),
(6, 'None');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` int(30) NOT NULL,
  `parent_id` int(30) NOT NULL,
  `sub_category` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `parent_id`, `sub_category`, `description`, `status`, `date_created`) VALUES
(5, 4, 'listening', '&lt;p&gt;Sample&lt;/p&gt;', 1, '2021-06-21 16:35:36'),
(7, 4, 'hearing pieces', '&lt;p&gt;These are devices that are going to be used for listening purposes&lt;/p&gt;', 1, '2025-06-27 09:19:30'),
(8, 1, 'Desertt', '&lt;p&gt;Eaten after eating actual food&lt;/p&gt;', 1, '2025-06-27 09:28:52'),
(9, 6, 'Dresses', '', 1, '2025-06-27 09:30:26'),
(10, 6, 'Skirts', '', 1, '2025-06-27 09:30:39'),
(11, 6, 'Shirts', '', 1, '2025-06-27 09:30:54'),
(12, 6, 'Shoes', '', 1, '2025-06-27 09:31:08'),
(13, 6, 'Two piece outfits', '', 1, '2025-06-27 09:31:40');

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'ONE GLANCE BUY'),
(6, 'short_name', 'YOURSHOP'),
(11, 'logo', 'uploads/1751007840_logo.jpg'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/1750660200_cloths.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Adminstrator', 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/1624240500_avatar.png', NULL, 1, '2021-01-20 14:02:37', '2021-06-21 09:55:07'),
(4, 'John', 'Smith', 'jsmith', '1254737c076cf867dc53d60a0364f38e', NULL, NULL, 0, '2021-06-19 08:36:09', '2021-06-19 10:53:12'),
(5, 'Claire', 'Blake', 'cblake', '4744ddea876b11dcb1d169fadf494418', NULL, NULL, 0, '2021-06-19 10:01:51', '2021-06-19 12:03:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_list`
--
ALTER TABLE `order_list`
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
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
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
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `order_list`
--
ALTER TABLE `order_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
