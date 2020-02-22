-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 22, 2020 at 10:39 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `muncakbareng`
--

-- --------------------------------------------------------

--
-- Table structure for table `d_user`
--

CREATE TABLE `d_user` (
  `Id` int(11) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `image` varchar(150) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL,
  `date_update` int(11) DEFAULT NULL,
  `user_id_created` int(11) DEFAULT NULL,
  `user_id_update` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `d_user`
--

INSERT INTO `d_user` (`Id`, `nama`, `email`, `image`, `password`, `role_id`, `is_active`, `date_created`, `date_update`, `user_id_created`, `user_id_update`) VALUES
(7, 'Yonathan Rizky Nathanael', 'jrizky.jonathan@gmail.com', 'P_20171019_104324_1.jpg', '$2y$10$mNxuahweilflZfgZiIK0gu0V7R2NenmeJU1wV8EoCeZrK9hmPyt22', 1, 1, 1555122623, 1582364215, NULL, 7),
(8, 'M Rojul Dwi Rizky Akbar', 'rojul@rojul.com', 'iherb2.JPG', '$2y$10$7hXTdUL69BhNQBsbEMZq1eXfPmFX5qX39NLs/7SYrPmZgHjqh1sBC', 2, 0, 1555771922, 1574867964, NULL, 7),
(10, 'Nur Kholis', 'kholis@maj.com', 'default.jpg', '$2y$10$utNSNhzDOyDIksoWEVk9UOlHB9iSAf2gQWcDGWqK2NtKHi5xrPp5a', 2, 0, 1557583528, 1574262624, NULL, NULL),
(11, 'Yusuf', 'ucup@gmail.com', 'default.jpg', '$2y$10$jDzWgFM6cU1a4HF7qBliietW4MOuPTIRxbvovIWZBrQ5FIdU4afzC', 5, 0, 1561696589, 0, NULL, NULL),
(12, 'Yonathan Rizky Nathanael', 'yonathan@yonathanrizky.com', 'default.jpg', '$2y$10$.R8M9C5jqwMkf22Zr2pTp.Qys6vSfyYAy1qy025Mc/9SONPzrzdPW', 2, 0, 1562768693, 0, NULL, NULL),
(13, 'User UAT', 'info@yonathanrizky.com', 'default.jpg', '$2y$10$Hum6hHE/rnGOSk7P4/jAjeYMHQyfD2bGOSidEaBq/fCxK8DKyKQry', 2, 0, 1573988652, 1582364182, 1, 7),
(14, 'UAT1', 'uptprokeswankecmoyohulu@gmail.com', 'default.jpg', '$2y$10$UloT5fAm7liI7yJn8ohBTOaCHBvjpqeRD2EBFVm0LWGb81XONqTN2', 3, 0, 1573989024, 1582364189, NULL, 7),
(15, 'Yonathan Rizky Nathanael', 'jon@gmail.com', 'default.jpg', '$2y$10$D5THJ/hdxNgcEK8TIBIv1OECnjznDN31os1/wO/zBJ.YuQcqN36gK', 1, 0, 1573989654, 1582364198, NULL, 7);

-- --------------------------------------------------------

--
-- Table structure for table `d_user_access_menu`
--

CREATE TABLE `d_user_access_menu` (
  `Id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `date_created` date DEFAULT NULL,
  `user_id_created` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `d_user_access_menu`
--

INSERT INTO `d_user_access_menu` (`Id`, `role_id`, `menu_id`, `date_created`, `user_id_created`) VALUES
(1, 1, 1, NULL, NULL),
(2, 1, 2, NULL, NULL),
(3, 2, 2, NULL, NULL),
(4, 1, 3, NULL, NULL),
(7, 1, 10, NULL, NULL),
(8, 2, 10, NULL, NULL),
(9, 1, 11, NULL, NULL),
(11, 1, 12, NULL, NULL),
(12, 2, 12, NULL, NULL),
(13, 2, 13, NULL, NULL),
(14, 1, 13, NULL, NULL),
(16, 1, 14, NULL, NULL),
(17, 5, 2, NULL, NULL),
(18, 5, 10, NULL, NULL),
(19, 5, 11, NULL, NULL),
(20, 5, 12, NULL, NULL),
(21, 5, 14, NULL, NULL),
(22, 5, 13, NULL, NULL),
(23, 1, 16, NULL, NULL),
(24, 2, 16, NULL, NULL),
(25, 1, 17, NULL, NULL),
(26, 5, 17, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `d_user_menu`
--

CREATE TABLE `d_user_menu` (
  `Id` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL,
  `date_created` date DEFAULT NULL,
  `date_updated` date DEFAULT NULL,
  `user_id_created` int(11) DEFAULT NULL,
  `user_id_updated` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `d_user_menu`
--

INSERT INTO `d_user_menu` (`Id`, `menu`, `date_created`, `date_updated`, `user_id_created`, `user_id_updated`) VALUES
(1, 'Admin', NULL, NULL, NULL, NULL),
(2, 'User', NULL, NULL, NULL, NULL),
(3, 'Menu', NULL, NULL, NULL, NULL),
(16, 'Dashboard', NULL, NULL, NULL, NULL),
(17, 'Master', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `d_user_role`
--

CREATE TABLE `d_user_role` (
  `Id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL,
  `date_created` date DEFAULT NULL,
  `date_updated` date DEFAULT NULL,
  `user_id_created` int(11) DEFAULT NULL,
  `user_id_updated` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `d_user_role`
--

INSERT INTO `d_user_role` (`Id`, `role`, `date_created`, `date_updated`, `user_id_created`, `user_id_updated`) VALUES
(1, 'Administrator', NULL, NULL, NULL, NULL),
(2, 'Staff', NULL, NULL, NULL, NULL),
(5, 'Direktur', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `d_user_sub_menu`
--

CREATE TABLE `d_user_sub_menu` (
  `Id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `user_id_created` int(11) NOT NULL DEFAULT 0,
  `user_id_updated` int(11) NOT NULL DEFAULT 0,
  `date_created` date NOT NULL,
  `date_update` date NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `d_user_sub_menu`
--

INSERT INTO `d_user_sub_menu` (`Id`, `menu_id`, `title`, `url`, `icon`, `user_id_created`, `user_id_updated`, `date_created`, `date_update`, `is_active`) VALUES
(2, 2, 'My Profile', 'user', 'fas fa-fw fa-user', 0, 0, '0000-00-00', '0000-00-00', 1),
(3, 2, 'Edit Profile', 'user/edit', 'fas fa-fw fa-user-edit', 0, 0, '0000-00-00', '0000-00-00', 1),
(4, 3, 'Menu Management', 'menu', 'fas fa-fw fa-folder', 0, 0, '0000-00-00', '0000-00-00', 1),
(5, 3, 'SubMenu Management', 'menu/submenu', 'fas fa-fw fa-folder-open', 0, 0, '0000-00-00', '0000-00-00', 1),
(6, 1, 'Hak Akses Menu', 'admin/role', 'fas fa-fw fa-user-tie', 0, 0, '0000-00-00', '0000-00-00', 1),
(12, 17, 'Valas', 'master/valas', 'fas fa-money-check-alt', 0, 0, '0000-00-00', '0000-00-00', 1),
(13, 10, 'Transaksi Penjualan', 'transaksi/penjualan', 'fas fa-money-bill-alt', 0, 0, '0000-00-00', '0000-00-00', 1),
(14, 10, 'Transaksi Pembelian', 'transaksi/pembelian', 'fas fa-money-check-alt', 0, 0, '0000-00-00', '0000-00-00', 1),
(15, 1, 'All User', 'admin/user', 'fas fa-fw fa-user-tie', 0, 0, '0000-00-00', '0000-00-00', 1),
(16, 17, 'Stock', 'master/stock', 'fas fa-fw fa-wallet', 0, 0, '0000-00-00', '0000-00-00', 1),
(17, 11, 'Rate', 'rate', 'fas fa-donate', 0, 0, '0000-00-00', '0000-00-00', 1),
(18, 12, 'Laba Rugi', 'laporan/labarugi', 'fas fa-file-alt', 0, 0, '0000-00-00', '0000-00-00', 1),
(19, 13, 'Customer', 'customer', 'fas fa-users', 0, 0, '0000-00-00', '0000-00-00', 1),
(20, 12, 'Laporan Penjualan', 'laporan/penjualan', 'fas fa-file-alt', 0, 0, '0000-00-00', '0000-00-00', 1),
(21, 12, 'Laporan Pembelian', 'laporan/pembelian', 'fas fa-file-alt', 0, 0, '0000-00-00', '0000-00-00', 1),
(22, 14, 'Void Transaksi Penjualan', 'void/penjualan', 'fas fa-money-check-alt', 0, 0, '0000-00-00', '0000-00-00', 1),
(23, 14, 'Void Transaksi Pembelian', 'void/pembelian', 'fas fa-money-check-alt', 0, 0, '0000-00-00', '0000-00-00', 1),
(24, 2, 'Ganti Password', 'user/changepassword', 'fas fa-fw fa-key', 0, 0, '0000-00-00', '0000-00-00', 1),
(28, 16, 'Dashboard', 'dashboard', 'fas fa-fw fa-tachometer-alt', 0, 0, '0000-00-00', '0000-00-00', 1),
(29, 22, 'test123', 'test', '', 7, 7, '2019-11-27', '2019-11-27', 1),
(30, 12, 'Sipesat', 'laporan/sipesat', 'fas fa-file-alt', 7, 7, '2020-01-26', '2020-01-26', 1);

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
(1, '2020_01_09_033748_create_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Thaddeus D\'Amore', 'elenor70@mcclure.com', '$2y$10$NgNR4mhz.mLNSb4XTNeIvOkY2RFYzKib.5mJ.InEOL03719vvId7O', '2020-02-22 09:00:09', '2020-02-22 09:00:09'),
(2, 'Dr. Brown Mohr', 'houston.west@hotmail.com', '$2y$10$rtmOggJxbu.RVju06Qyp1uHJiUbt0.DCzia0zOBINKPE/LhLmUnqO', '2020-02-22 09:00:09', '2020-02-22 09:00:09'),
(3, 'Dr. Estevan Renner III', 'hudson.mathias@hotmail.com', '$2y$10$zw6wuJHXioparZnJHmD3SetQyOHVEuBxoQN5r88WDOfUfdr3likDi', '2020-02-22 09:00:09', '2020-02-22 09:00:09'),
(4, 'Anderson Christiansen', 'jaime.little@sawayn.com', '$2y$10$uq1jvlrYIL074HLyQu6..edc.wB7lXpJJuHrNJo5.ZIbGtcfpxT8u', '2020-02-22 09:00:09', '2020-02-22 09:00:09'),
(5, 'Jaylin Bayer', 'jordyn.okon@gmail.com', '$2y$10$wojGJ4dqXNE9tP7JY5lMauGixMnBc2GVt.OoEKYY03gQOvEvQn/d6', '2020-02-22 09:00:09', '2020-02-22 09:00:09'),
(6, 'Conner Grimes', 'prohaska.sharon@yahoo.com', '$2y$10$DRSxHMx2/whg4EeolEuEhuOMcC4FlQMsigFF7YGNZywhgDYCLG.Ce', '2020-02-22 09:00:09', '2020-02-22 09:00:09'),
(7, 'Clemmie Rolfson', 'crooks.christian@gmail.com', '$2y$10$RSDIyGMXT0U863dVz0AulukSTavfat7s9kd8fAPVsBgQBgiyjW5p2', '2020-02-22 09:00:09', '2020-02-22 09:00:09'),
(8, 'Liana Skiles', 'wleannon@kozey.net', '$2y$10$TJTtNfazENy725dqPowOcOiq4mZR3KmUbWA1j2/SRgm.XVORvK5Fa', '2020-02-22 09:00:09', '2020-02-22 09:00:09'),
(9, 'Prof. Oswald Rempel V', 'qkrajcik@corkery.org', '$2y$10$CSgT0qBwuaTGBS3TlIRrCe0oTHGTZ2Kl7eXp1wfE3gcb9kRx7k4Y6', '2020-02-22 09:00:09', '2020-02-22 09:00:09'),
(10, 'Nash Runte', 'moses.dach@yahoo.com', '$2y$10$c.Xyi3.XOek9yU1THGzhkOQgZoltvxFwAq72w2AXiscpNxVeSnEAK', '2020-02-22 09:00:09', '2020-02-22 09:00:09'),
(11, 'Prof. Guido Hagenes Jr.', 'ludwig75@baumbach.com', '$2y$10$Ps2kng9bE3N0glBEI0I/bO6Wq0LLRzQjdpoMT9BT/xMHSXgk5kgC2', '2020-02-22 09:00:09', '2020-02-22 09:00:09'),
(12, 'Garfield Bernhard', 'fernando14@ebert.com', '$2y$10$WrTql0fF.ke2twh1f.gt3u4/IK04g/VYT8.KCAphSs4n1dUQby/ru', '2020-02-22 09:00:09', '2020-02-22 09:00:09'),
(13, 'Mrs. Tressa Orn DVM', 'vada38@oreilly.biz', '$2y$10$9jMpEMPyUudxphKpZo6Flu7Jd0hm02.LfVZzJBqgF9jhh215Mm91K', '2020-02-22 09:00:09', '2020-02-22 09:00:09'),
(14, 'Delta Morissette', 'pokuneva@bauch.com', '$2y$10$M2AQmKDqKMib3asH2xCUg.z5IyEg0ymwflycmSZCHPLOYxmG78IHG', '2020-02-22 09:00:09', '2020-02-22 09:00:09'),
(15, 'Dr. Frank Volkman', 'hauck.melvin@bergstrom.com', '$2y$10$Xit4LkB1/5Dg.pHF91MIh.y.lCNZzZJdHKDb7bU7R3cn43wYwrIPy', '2020-02-22 09:00:09', '2020-02-22 09:00:09'),
(16, 'Monroe Christiansen', 'allison.rau@yahoo.com', '$2y$10$PqqmlJm6K0NwZeJ1Lmo9XOcbn762HOkh9mkzQAai8xh6yTU1p5y9K', '2020-02-22 09:00:09', '2020-02-22 09:00:09'),
(17, 'Rosalyn Dickinson', 'bfeeney@yahoo.com', '$2y$10$riHzB0t9oAqgYAv0KszRvuMlmIYYb1LlSCvmjCDlBsd9hCs35BtGq', '2020-02-22 09:00:09', '2020-02-22 09:00:09'),
(18, 'Prof. Cullen McCullough Jr.', 'jacey28@welch.com', '$2y$10$.w1KV5osseLvGY9zyh1aL.R08a.qY7O6YWHzgKXzdnwYH4HKabsx2', '2020-02-22 09:00:09', '2020-02-22 09:00:09'),
(19, 'Vince Jacobi', 'hirthe.jordi@yahoo.com', '$2y$10$0ojn00An.gjGqMotqJMOfeAbhcymDZHsCTJbu9FSKOooSWM0cNTT2', '2020-02-22 09:00:09', '2020-02-22 09:00:09'),
(20, 'Alexandre Hammes', 'green.laurence@torp.com', '$2y$10$FDSJTBwYQMGdS74Op04O6uO9jljgglQYfFjgb3mpySF1YN.ZxbXLW', '2020-02-22 09:00:09', '2020-02-22 09:00:09'),
(21, 'Jazmin Welch', 'vince.tromp@lindgren.com', '$2y$10$c2gquw6.2oHco/guHji5lOrB5vz7xq2jitQSDG1GAZKgg8arTFuhS', '2020-02-22 09:00:09', '2020-02-22 09:00:09'),
(22, 'Pansy Russel', 'pietro.bailey@gmail.com', '$2y$10$iRjCaKGLrX7RUrMftTEAfOu0aGserUXMKNaxw6A9MmsESZJ6MuDbO', '2020-02-22 09:00:09', '2020-02-22 09:00:09'),
(23, 'Trenton Mosciski', 'heidenreich.finn@kunde.biz', '$2y$10$DUypdsKpUYfJbv21NbnUSehEPXBzRhI2XPbbqPurFXipx1i7Obmh.', '2020-02-22 09:00:09', '2020-02-22 09:00:09'),
(24, 'Erica Stanton', 'crist.quinton@gmail.com', '$2y$10$/4nOYxyj/Km1FLo7z0NT0.RCW.RAof5JHv2LBpic1PqZ.HDFL/pAu', '2020-02-22 09:00:09', '2020-02-22 09:00:09'),
(25, 'Jordan Lind IV', 'yschumm@hotmail.com', '$2y$10$lLQCg9ApxpAYjtSw7PaBaeAvZsFw6JICbGxbVix8YkGc1JQOwEiOy', '2020-02-22 09:00:09', '2020-02-22 09:00:09'),
(26, 'Jade Schoen', 'annamarie23@hotmail.com', '$2y$10$aPXKwDWzPHUCHpKC33ZIcOkF/vIxuad5.TkX3/KeFFgpKSO0csy6S', '2020-02-22 09:00:09', '2020-02-22 09:00:09'),
(27, 'Mr. Osborne Schuster DVM', 'oma.smitham@gmail.com', '$2y$10$dW0on.VA58VrKUNdKCJDuetpiYswg.uDnr6O/EIHQcIsdmsVCD6OG', '2020-02-22 09:00:09', '2020-02-22 09:00:09'),
(28, 'Patricia Kub', 'mferry@hotmail.com', '$2y$10$AubPyZiVLBn/bv9xS7vUn./H1z/QUzFjbHBWxmAqqH8wk0wm0IUmy', '2020-02-22 09:00:09', '2020-02-22 09:00:09'),
(29, 'Ms. Emilie Klocko', 'udibbert@yahoo.com', '$2y$10$xpVKl5IOYLfJbU0nXGr7GugzMfzk/Ikkq07tocOzOnxpuGg6Em1RW', '2020-02-22 09:00:09', '2020-02-22 09:00:09'),
(30, 'Kaela Schamberger', 'bailey.fannie@gmail.com', '$2y$10$1i9qwerdMGD8khxHfhPJG.YKorh0DvmfY0lmdfm/9AKo6gKhnBk1i', '2020-02-22 09:00:09', '2020-02-22 09:00:09'),
(31, 'Janessa Hill', 'lavinia.crist@pfannerstill.com', '$2y$10$HOjQ49ZxPYWnwRYXYJ1ZZ.wn7IdAp9vWFwepIEz.hzk1C2onzUqCy', '2020-02-22 09:00:09', '2020-02-22 09:00:09'),
(32, 'Rita Botsford', 'hbashirian@reinger.com', '$2y$10$h4Z5t/8/2HJTajoBM.xxIe4tX..M.LyTBKvteFYqAjdt.jyayQZ3K', '2020-02-22 09:00:09', '2020-02-22 09:00:09'),
(33, 'Gerhard Price', 'brennan.wiegand@okuneva.com', '$2y$10$B.zyGAg0z.vYWqBpUeXhCOkA5JLH8LM8fiZdjdHdn/K0/.nKqjcRm', '2020-02-22 09:00:09', '2020-02-22 09:00:09'),
(34, 'Mrs. Kaylie Nader Sr.', 'lilian99@marvin.com', '$2y$10$HcpPFxA8g4PTZlKSr0.TFuE.AsWuIq46RBw.qVNdEd90WntHhFe7C', '2020-02-22 09:00:09', '2020-02-22 09:00:09'),
(35, 'Angelo Ratke', 'yasmin63@boehm.net', '$2y$10$Mgf2nsUHy3GbSHPam2IeHOEr/bN4vguWZiUTlq3.Ha8YK/R0534UO', '2020-02-22 09:00:09', '2020-02-22 09:00:09'),
(36, 'Hallie Mertz', 'josiah52@bosco.com', '$2y$10$ozx3h43hjkkybSObWn6/Q.SdsTZjo12B0SwFY0dIH1w22TJjUq/8.', '2020-02-22 09:00:09', '2020-02-22 09:00:09'),
(37, 'Fermin Waters', 'karen.cole@yahoo.com', '$2y$10$6ZFJ/XCUO7PoY286cH0i7e7fjbZR6dOYN5XRRDcK/f07pQLfJYHhi', '2020-02-22 09:00:09', '2020-02-22 09:00:09'),
(38, 'Miss Vida Rau PhD', 'alfredo.lubowitz@kilback.com', '$2y$10$feFNFrkIuBwbt6RjljEfkOfBSDFHGlysFN/..EfDbeIi1rH96l1dm', '2020-02-22 09:00:09', '2020-02-22 09:00:09'),
(39, 'Mohamed Mayer', 'emmanuel.rice@hammes.net', '$2y$10$T9NN45pgXZd.qFimqdIuJO950CcnNvJbbinla4KjJRxcbnrg6qTmS', '2020-02-22 09:00:09', '2020-02-22 09:00:09'),
(40, 'Anabel Hauck DVM', 'rohan.leo@yahoo.com', '$2y$10$XSFIRN8ty3sXcIIzbAnuiuCLXgCQrQu1s8zQqcoPM8n/Ay15TRyd.', '2020-02-22 09:00:09', '2020-02-22 09:00:09'),
(41, 'Elsie Littel', 'violette.weissnat@kreiger.com', '$2y$10$ofb0DntxwmKImKkTNTlEreEIaNJ4A6ktpPZjpRcaTRBzKJgYGjBna', '2020-02-22 09:00:09', '2020-02-22 09:00:09'),
(42, 'Bianka Gleichner', 'dcrooks@gorczany.net', '$2y$10$okRpMDH3xsc.BslrO1.WYOpphDmd99FUVlh2bMwhS7C5cVpcMyz7u', '2020-02-22 09:00:09', '2020-02-22 09:00:09'),
(43, 'Ross Ondricka', 'kylie03@yahoo.com', '$2y$10$XqZ.lc3wP1i53K62MJ.YSuA8naJHPYh9.RfFhpyqHh8tYNJAmRaaq', '2020-02-22 09:00:09', '2020-02-22 09:00:09'),
(44, 'Jennyfer Kuhlman', 'christophe07@gerlach.org', '$2y$10$x4azc9QYyi0L1ZpYNdbXl.aCXhr878jLPwJYStLliUqn20WqBP9Ke', '2020-02-22 09:00:09', '2020-02-22 09:00:09'),
(45, 'Antwan DuBuque', 'ben74@predovic.com', '$2y$10$K8xGqiMJlVNJcozn.ABFXOBUMwEQio4zN4tYiW8jxX9fvPMi7nD7K', '2020-02-22 09:00:09', '2020-02-22 09:00:09'),
(46, 'Pamela Kreiger', 'wgleichner@gorczany.biz', '$2y$10$0qZwvQRIza66A17WvSgcA.r0HNTreciBkj6vD8ZS.DYcLq06vIINq', '2020-02-22 09:00:09', '2020-02-22 09:00:09'),
(47, 'Bailee Gutkowski', 'bud.fisher@homenick.com', '$2y$10$51iqr038nlz8UcfSOU.Okeb4OrXjqyz1ojvc1stc6EisfFlchfEwa', '2020-02-22 09:00:09', '2020-02-22 09:00:09'),
(48, 'Bernadette Howe V', 'kosinski@satterfield.com', '$2y$10$08E7mK.PkjFnpHMZ29QXcOUL78hFVggBbv0NjNL9Y2i19RvijDJ.K', '2020-02-22 09:00:09', '2020-02-22 09:00:09'),
(49, 'Justus Hessel', 'heaney.thurman@yahoo.com', '$2y$10$yTdFDuWwjAvhRuX5mCvAQOG87qDDco5JTJl6FpwtRno.buJzvJmda', '2020-02-22 09:00:09', '2020-02-22 09:00:09'),
(50, 'Agustina Blick', 'emmy.mann@hand.info', '$2y$10$po9rd/QpuQf5o6lQORVMcuPzFZjkY9DAyVG3YakUK3dhpzv7O0NSm', '2020-02-22 09:00:09', '2020-02-22 09:00:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `d_user`
--
ALTER TABLE `d_user`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `d_user_access_menu`
--
ALTER TABLE `d_user_access_menu`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `d_user_menu`
--
ALTER TABLE `d_user_menu`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `d_user_role`
--
ALTER TABLE `d_user_role`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `d_user_sub_menu`
--
ALTER TABLE `d_user_sub_menu`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`) USING HASH;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `d_user`
--
ALTER TABLE `d_user`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `d_user_access_menu`
--
ALTER TABLE `d_user_access_menu`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `d_user_menu`
--
ALTER TABLE `d_user_menu`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `d_user_role`
--
ALTER TABLE `d_user_role`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `d_user_sub_menu`
--
ALTER TABLE `d_user_sub_menu`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
