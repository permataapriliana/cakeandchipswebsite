-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 18, 2021 at 12:48 PM
-- Server version: 8.0.25-0ubuntu0.20.04.1
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES latin1 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `connection` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `queue` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `payload` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `exception` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_07_03_092754_create_produks_table', 2),
(5, '2021_01_13_175023_create_transaksis_table', 1),
(6, '2021_01_13_175052_create_transaksi_details_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `token` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `produks`
--

CREATE TABLE `produks` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `harga` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `deskripsi` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `category_id` int UNSIGNED NOT NULL,
  `image` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `produks`
--

INSERT INTO `produks` (`id`, `name`, `harga`, `deskripsi`, `category_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Krupuk Udang Pedas', '5000', 'enak, gurih, pedas nampollll', 1, 'IMG-20210618-WA0016.jpg', '2021-07-03 03:25:30', '2021-07-03 03:25:30'),
(2, 'Krupuk Bawang Pedas', '5000', 'enak pedas nampolll', 1, 'IMG-20210618-WA0014.jpg', '2021-07-03 04:04:01', '2021-07-03 04:04:01');

-- --------------------------------------------------------

--
-- Table structure for table `transaksis`
--

CREATE TABLE `transaksis` (
  `id` bigint NOT NULL,
  `user_id` int NOT NULL,
  `kode_payment` varchar(255) NOT NULL,
  `kode_trx` varchar(255) NOT NULL,
  `total_item` int NOT NULL,
  `total_harga` bigint NOT NULL,
  `kode_unik` int NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `jasa_pengiriaman` varchar(255) DEFAULT NULL,
  `kurir` varchar(255) DEFAULT NULL,
  `ongkir` int NOT NULL,
  `total_transfer` int NOT NULL,
  `bank` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `detail_lokasi` varchar(255) DEFAULT NULL,
  `deskripsi` varchar(255) DEFAULT NULL,
  `metode` varchar(255) DEFAULT NULL,
  `expired_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `transaksis`
--

INSERT INTO `transaksis` (`id`, `user_id`, `kode_payment`, `kode_trx`, `total_item`, `total_harga`, `kode_unik`, `status`, `jasa_pengiriaman`, `kurir`, `ongkir`, `total_transfer`, `bank`, `name`, `phone`, `detail_lokasi`, `deskripsi`, `metode`, `expired_at`, `updated_at`, `created_at`) VALUES
(4, 3, 'INV/PYM/2021-07-16/136', 'INV/PYM/2021-07-16/567', 6, 200000, 315, 'SELESAI', 'COD', NULL, 100000, 1000000, 'BRI', 'Lia', '081232390234', NULL, NULL, NULL, '2021-07-17 05:49:37', '2021-07-16 05:53:47', '2021-07-16 05:49:37'),
(5, 3, 'INV/PYM/2021-07-16/648', 'INV/PYM/2021-07-16/264', 6, 200000, 618, 'MENUNGGU', NULL, NULL, 100000, 1000000, 'BRI', 'Lia', '081232390234', NULL, NULL, NULL, '2021-07-17 06:21:10', '2021-07-16 06:21:10', '2021-07-16 06:21:10'),
(6, 3, 'INV/PYM/2021-07-16/276', 'INV/PYM/2021-07-16/566', 6, 200000, 186, 'MENUNGGU', NULL, NULL, 100000, 1000000, 'BRI', 'Lia', '081232390234', NULL, NULL, NULL, '2021-07-17 06:23:45', '2021-07-16 06:23:45', '2021-07-16 06:23:45'),
(7, 3, 'INV/PYM/2021-07-16/877', 'INV/PYM/2021-07-16/414', 6, 200000, 717, 'MENUNGGU', 'COD jnt', NULL, 100000, 1000000, 'BRI', 'Lia', '081232390234', NULL, NULL, NULL, '2021-07-17 06:24:51', '2021-07-16 06:24:51', '2021-07-16 06:24:51'),
(8, 4, 'INV/PYM/2021-07-17/678', 'INV/PYM/2021-07-17/524', 2, 10000, 833, 'SELESAI', 'REG', 'JNE', 16000, 26000, 'BRI', 'ksjadklasjd', '90809809', 'sjdakljadslk, Probolinggo, 67293, (sakdjlkajsdlk)', NULL, NULL, '2021-07-18 07:23:21', '2021-07-17 07:23:21', '2021-07-17 07:23:21');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_details`
--

CREATE TABLE `transaksi_details` (
  `id` bigint NOT NULL,
  `transaksi_id` int NOT NULL,
  `produk_id` int NOT NULL,
  `total_item` int NOT NULL,
  `catatan` text NOT NULL,
  `total_harga` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `transaksi_details`
--

INSERT INTO `transaksi_details` (`id`, `transaksi_id`, `produk_id`, `total_item`, `catatan`, `total_harga`, `created_at`, `updated_at`) VALUES
(1, 4, 1, 6, 'Catatan 1', 200000, '2021-07-16 05:49:37', '2021-07-16 05:49:37'),
(2, 4, 2, 10, 'Catatan 2', 300000, '2021-07-16 05:49:37', '2021-07-16 05:49:37'),
(3, 5, 1, 6, 'Catatan 1', 200000, '2021-07-16 06:21:10', '2021-07-16 06:21:10'),
(4, 5, 2, 10, 'Catatan 2', 300000, '2021-07-16 06:21:10', '2021-07-16 06:21:10'),
(5, 6, 1, 6, 'Catatan 1', 200000, '2021-07-16 06:23:45', '2021-07-16 06:23:45'),
(6, 6, 2, 10, 'Catatan 2', 300000, '2021-07-16 06:23:45', '2021-07-16 06:23:45'),
(7, 7, 1, 6, 'Catatan 1', 200000, '2021-07-16 06:24:51', '2021-07-16 06:24:51'),
(8, 7, 2, 10, 'Catatan 2', 300000, '2021-07-16 06:24:51', '2021-07-16 06:24:51'),
(9, 8, 1, 1, 'catatan baru', 5000, '2021-07-17 07:23:21', '2021-07-17 07:23:21'),
(10, 8, 2, 1, 'catatan baru', 5000, '2021-07-17 07:23:21', '2021-07-17 07:23:21');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `phone` varchar(20) COLLATE latin1_swedish_ci NOT NULL,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '', 'admin@gmail.com', NULL, '$2y$10$KAMFkdkvOhloBQ2kBxdByOZh3efhP6ID90XU1TTAa5n3jyGQXd2Sy', NULL, '2021-07-02 01:53:46', '2021-07-02 01:53:46'),
(2, 'admin', '', 'admin1@gmail.com', NULL, '$2y$10$N0JXC6FR7Ho1kifbC/nZn.K5qBRqgjXA59jVMe6gBQNSD7fhX.1Lu', NULL, '2021-07-02 06:31:44', '2021-07-02 06:31:44'),
(3, 'Lia', '', 'liaaaa@gmail.com', NULL, '$2y$10$QyjzSaXkieH5iZ9CCkpm3uyfawMp64ps30CTUC3tI3TqAc39eWxFm', NULL, '2021-07-12 07:10:06', '2021-07-12 07:10:06'),
(7, 'wildan2', '9453265427355', 'wildan2@gmail.com', NULL, '$2y$10$keXdjDlhcICAbU/NLvc1peiw46HFScpm6hcE4Z9TDZD0AY8qTeoRa', NULL, '2021-07-17 07:45:53', '2021-07-17 07:45:53'),
(9, 'wildandawambash', '0897867986', 'wildandawambash@gmail.com', NULL, '$2y$10$yPknsCLbfsyQ/RIZ64pPc.RaXQyYJYrGCDuT1FXjCGqDF/PLQ3e.e', NULL, '2021-07-17 12:22:56', '2021-07-17 12:22:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `produks`
--
ALTER TABLE `produks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksis`
--
ALTER TABLE `transaksis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksi_details`
--
ALTER TABLE `transaksi_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `produks`
--
ALTER TABLE `produks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transaksis`
--
ALTER TABLE `transaksis`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `transaksi_details`
--
ALTER TABLE `transaksi_details`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
