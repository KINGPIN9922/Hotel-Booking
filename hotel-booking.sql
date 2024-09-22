-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 22, 2024 at 04:23 PM
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
-- Database: `hotel-booking`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) NOT NULL,
  `adminname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `mypassword` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `adminname`, `email`, `mypassword`, `created_at`) VALUES
(1, 'admin1', 'admin1@gmail.com', '$2y$10$vVZ3qLw6h0qurKJo5yQ2KOS9rojkr33VgTKcev0vrgFiewFfzBvRC', '2024-09-22 08:56:09');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(5) NOT NULL,
  `check_in` varchar(200) NOT NULL,
  `check_out` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone_number` int(40) NOT NULL,
  `full_name` varchar(200) NOT NULL,
  `hotel_name` varchar(200) NOT NULL,
  `room_name` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `payment` int(10) NOT NULL,
  `user_id` int(5) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `check_in`, `check_out`, `email`, `phone_number`, `full_name`, `hotel_name`, `room_name`, `status`, `payment`, `user_id`, `created_at`) VALUES
(1, '9/30/2024', '10/1/2024', 'user1@gmail.com', 2147483647, 'user1', 'Sheraton', 'Suite Room', 'Pending', 150, 1, '2024-09-21 17:10:23');

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

CREATE TABLE `hotels` (
  `id` int(5) NOT NULL,
  `name` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `location` varchar(200) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`id`, `name`, `image`, `description`, `location`, `status`, `created_at`) VALUES
(1, 'Sheraton', 'services-1.jpg', 'Experience a luxurious escape in the heart of the city, where elegance meets comfort. This stunning hotel offers beautifully designed rooms featuring modern amenities and plush bedding, ensuring a restful retreat after a day of exploration.', 'New York ', 1, '2024-09-20 15:56:10'),
(2, 'The Plaza Hotel', 'image_4.jpg', 'Indulge in exquisite dining at the rooftop restaurant, where seasonal dishes are crafted with the finest local ingredients. Sip on a carefully curated cocktail at the chic bar while enjoying panoramic views of the skyline.', 'New York ', 1, '2024-09-20 15:56:10'),
(3, 'The Ritz', 'image_4.jpg', 'Unwind at the state-of-the-art spa, offering a range of rejuvenating treatments to refresh your mind and body. For adventure seekers, the concierge is ready to assist with tailored experiences, from guided tours to outdoor excursions.', 'New York ', 1, '2024-09-20 15:56:10');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(5) NOT NULL,
  `name` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `price` int(10) NOT NULL,
  `num_persons` int(5) NOT NULL,
  `size` int(5) NOT NULL,
  `view` varchar(200) NOT NULL,
  `num_beds` int(5) NOT NULL,
  `hotel_id` int(5) NOT NULL,
  `hotel_name` varchar(200) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `name`, `image`, `price`, `num_persons`, `size`, `view`, `num_beds`, `hotel_id`, `hotel_name`, `status`, `created_at`) VALUES
(1, 'Suite Room', 'room-1.jpg', 150, 4, 100, 'Sea view', 4, 1, 'Sheraton', 1, '2024-09-20 16:41:01'),
(2, 'Standard Room', 'room-2.jpg', 100, 2, 50, 'Skyline View', 1, 2, 'The Plaza Hotel', 1, '2024-09-20 16:41:01'),
(3, 'Family Room', 'room-3.jpg', 300, 5, 100, 'Harbor View', 5, 3, 'The Ritz', 1, '2024-09-20 16:41:01'),
(4, 'Deluxe Room', 'room-4.jpg', 200, 2, 75, 'Garden View', 2, 1, 'Sheraton', 1, '2024-09-20 16:41:01'),
(5, 'Standard Room', 'room-2.jpg', 100, 2, 50, 'Skyline View', 1, 1, 'Sheraton', 1, '2024-09-22 08:10:42'),
(6, 'Family Room', 'room-3.jpg', 300, 5, 100, 'Harbor View', 5, 1, 'Sheraton', 1, '2024-09-22 08:10:42'),
(7, 'Suite Room', 'room-1.jpg', 150, 4, 100, 'Sea View', 4, 2, 'The Plaza Hotel', 1, '2024-09-22 08:10:42'),
(8, 'Family Room', 'room-3.jpg', 300, 5, 100, 'Harbor View', 5, 2, 'The Plaza Hotel', 1, '2024-09-22 08:10:42'),
(9, 'Deluxe Room', 'room-4.jpg', 200, 2, 75, 'Garden View', 2, 2, 'The Plaza Hotel', 1, '2024-09-22 08:10:42'),
(10, 'Suite Room', 'room-1.jpg', 150, 4, 100, 'Sea view', 4, 3, 'The Ritz', 1, '2024-09-22 08:10:42'),
(11, 'Standard Room', 'room-2.jpg', 100, 2, 50, 'Skyline View', 1, 3, 'The Ritz', 1, '2024-09-22 08:10:42'),
(12, 'Deluxe Room', 'room-4.jpg', 200, 2, 75, 'Garden View', 2, 3, 'The Ritz', 1, '2024-09-22 08:10:42');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(5) NOT NULL,
  `username` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `mypassword` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `mypassword`, `created_at`) VALUES
(1, 'user1', 'user1@gmail.com', '$2y$10$vVZ3qLw6h0qurKJo5yQ2KOS9rojkr33VgTKcev0vrgFiewFfzBvRC', '2024-09-20 17:41:26');

-- --------------------------------------------------------

--
-- Table structure for table `utilities`
--

CREATE TABLE `utilities` (
  `id` int(5) NOT NULL,
  `name` varchar(200) NOT NULL,
  `icon` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `room_id` int(5) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `utilities`
--

INSERT INTO `utilities` (`id`, `name`, `icon`, `description`, `room_id`, `created_at`) VALUES
(1, 'Tea Coffee', 'flaticon-diet', 'Enjoy a selection of premium tea and coffee available 24/7 in the lounge, perfect for a refreshing break or a cozy moment.\r\n\r\n\r\n\r\n', 1, '2024-09-20 17:20:42'),
(2, 'Tea Coffee', 'flaticon-diet', 'Enjoy a selection of premium tea and coffee available 24/7 in the lounge, perfect for a refreshing break or a cozy moment.\r\n', 2, '2024-09-20 17:20:42'),
(3, 'Tea Coffee', 'flaticon-diet', 'Enjoy a selection of premium tea and coffee available 24/7 in the lounge, perfect for a refreshing break or a cozy moment.\r\n', 3, '2024-09-20 17:20:42'),
(4, 'Tea Coffee', 'flaticon-diet', 'Enjoy a selection of premium tea and coffee available 24/7 in the lounge, perfect for a refreshing break or a cozy moment.\r\n', 4, '2024-09-20 17:20:42'),
(5, 'Hot Showers', 'flaticon-workout', 'Enjoy the perfect temperature and refreshing water flow for a relaxing start or end to your day.', 1, '2024-09-20 17:20:42'),
(6, 'Hot Showers', 'flaticon-workout', 'Enjoy the perfect temperature and refreshing water flow for a relaxing start or end to your day.', 2, '2024-09-20 17:20:42'),
(7, 'Hot Showers', 'flaticon-workout', 'Enjoy the perfect temperature and refreshing water flow for a relaxing start or end to your day.', 3, '2024-09-20 17:20:42'),
(8, 'Hot Showers', 'flaticon-workout', 'Enjoy the perfect temperature and refreshing water flow for a relaxing start or end to your day.', 4, '2024-09-20 17:20:42'),
(9, 'Free Wifi', 'flaticon-first', 'High-speed Wi-Fi available throughout the hotel for seamless browsing and connectivity.', 1, '2024-09-20 17:20:42'),
(10, 'Free Wifi', 'flaticon-first', 'High-speed Wi-Fi available throughout the hotel for seamless browsing and connectivity.', 2, '2024-09-20 17:20:42'),
(11, 'Free Wifi', 'flaticon-first', 'High-speed Wi-Fi available throughout the hotel for seamless browsing and connectivity.', 3, '2024-09-20 17:20:42'),
(12, 'Free Wifi', 'flaticon-first', 'High-speed Wi-Fi available throughout the hotel for seamless browsing and connectivity.', 4, '2024-09-20 17:20:42'),
(13, 'Air Conditioning', 'flaticon-diet-1', 'Climate-controlled air conditioning to ensure a comfortable stay year-round.', 1, '2024-09-20 17:20:42'),
(14, 'Air Conditioning', 'flaticon-diet-1', 'Climate-controlled air conditioning to ensure a comfortable stay year-round.', 2, '2024-09-20 17:20:42'),
(15, 'Air Conditioning', 'flaticon-diet-1', 'Climate-controlled air conditioning to ensure a comfortable stay year-round.', 3, '2024-09-20 17:20:42'),
(16, 'Air Conditioning', 'flaticon-diet-1', 'Climate-controlled air conditioning to ensure a comfortable stay year-round.', 4, '2024-09-20 17:20:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `utilities`
--
ALTER TABLE `utilities`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hotels`
--
ALTER TABLE `hotels`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `utilities`
--
ALTER TABLE `utilities`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
