-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 17, 2023 at 11:11 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `business`
--

CREATE TABLE `business` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `business`
--

INSERT INTO `business` (`id`, `name`, `email`, `password`) VALUES
(1, 'Roshni', 'roshnisahni26@gmail.com', 'roshni');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL,
  `total` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `name`, `price`, `quantity`, `product_id`, `user`, `total`) VALUES
(1, 'Dishwasher', 7000, 1, NULL, 'Gopal', 7000),
(2, 'LG-Dishwasher', 8000, 4, NULL, 'Gopal', 32000),
(3, 'IFB-Dishwasher', 9000, 5, NULL, 'Gopal', 45000),
(4, 'Dishwasher', 7000, 1, NULL, 'Roshni', 7000),
(5, 'LG-Dishwasher', 8000, 2, NULL, 'Roshni', 16000),
(6, 'Dishwasher', 9000, 1, NULL, 'Roshni', 9000);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `message` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`name`, `email`, `message`) VALUES
('dd', 'hhh@gmail.com', 'ddd'),
('fff', 'roshan798@gmail.com', 'ww'),
('fff', 'roshan798@gmail.com', 'ww'),
('fff', 'roshan798@gmail.com', 'ww'),
('fff', 'roshan798@gmail.com', 'ww'),
('fff', 'roshan798@gmail.com', 'ww'),
('fff', 'roshan798@gmail.com', 'ww'),
('fff', 'roshan798@gmail.com', 'ww'),
('fff', 'roshan798@gmail.com', 'ww'),
('fff', 'roshan798@gmail.com', 'ww'),
('fff', 'roshan798@gmail.com', 'ww'),
('roshni sahni', 'roshnisahni26@gmail.com', 'good website'),
('roshni sahni', 'roshnisahni26@gmail.com', 'good website'),
('roshni sahni', 'roshnisahni26@gmail.com', 'good website'),
('Roshni', 'roshnisahni26@gmail.com', 'tomer Service:91 7508115758\r\n\r\nLudhiana,Punjab,IN'),
('Roshni', 'roshnisahni26@gmail.com', 'tomer Service:91 7508115758\r\n\r\nLudhiana,Punjab,IN'),
('Roshni', 'roshnisahni26@gmail.com', 'tomer Service:91 7508115758\r\n\r\nLudhiana,Punjab,IN'),
('Roshni', 'roshnisahni26@gmail.com', 'tomer Service:91 7508115758\r\n\r\nLudhiana,Punjab,IN'),
('Roshni', 'roshnisahni26@gmail.com', 'tomer Service:91 7508115758\r\n\r\nLudhiana,Punjab,IN'),
('Roshni', 'roshnisahni26@gmail.com', 'tomer Service:91 7508115758\r\n\r\nLudhiana,Punjab,IN'),
('Roshni', 'roshnisahni26@gmail.com', 'tomer Service:91 7508115758\r\n\r\nLudhiana,Punjab,IN'),
('roshnisahni26@gmail.com', 'gopal@gmail.com', 'eeee');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  `manufacturer` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `date` datetime(6) NOT NULL,
  `image` varchar(200) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `model`, `manufacturer`, `price`, `date`, `image`, `stock`, `category`) VALUES
(1, 'Dishwasher', 'Dishwasher', 'Dishwasher', 7000, '2013-06-01 08:05:32.000000', '1.jpeg', 250, 'dishwasher'),
(2, 'LG-Dishwasher', 'LG-Dishwasher', 'LG-Dishwasher', 8000, '2013-07-21 09:05:45.000000', '2.png', 150, 'dishwasher'),
(3, 'Dishwasher', 'Dishwasher', 'Dishwasher', 9000, '2013-06-01 08:05:32.000000', '12.jpg', 100, 'dishwasher'),
(4, 'IFB-Dishwasher', 'IFB-Dishwasher', 'IFB-Dishwasher', 9000, '2013-05-31 20:25:14.000000', '6.png', 100, 'dishwasher'),
(5, 'Samsung LED\r\n', 'Samsung LED\r\n', 'Samsung LED\r\n', 20000, '0000-00-00 00:00:00.000000', 'sam.png', 120, 'TVs'),
(6, 'Nikon D7000', 'Nikon D7000', 'Nikon D7000', 3000, '0000-00-00 00:00:00.000000', 'nk2.jpeg', 40, 'Camera'),
(7, 'Kodak Camera', 'Kodak Camera', 'Kodak Camera', 3500, '0000-00-00 00:00:00.000000', 'kod.jpg', 70, 'Camera'),
(8, 'Sony camcorders', 'Sony camcorders', 'Sony camcorders', 16000, '0000-00-00 00:00:00.000000', 'sony.png', 80, 'Camera'),
(9, 'Acer Monitor', 'Acer Monitor', 'Acer Monitor', 15000, '0000-00-00 00:00:00.000000', 'acer.jpg', 20, 'Monitor');

-- --------------------------------------------------------

--
-- Table structure for table `query`
--

CREATE TABLE `query` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `review` longtext NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `query`
--

INSERT INTO `query` (`id`, `name`, `email`, `review`, `rating`) VALUES
(1, 'Roshni Sahni', 'roshnisahni798@gmail.com', 'good', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `business`
--
ALTER TABLE `business`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `query`
--
ALTER TABLE `query`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `business`
--
ALTER TABLE `business`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `query`
--
ALTER TABLE `query`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
