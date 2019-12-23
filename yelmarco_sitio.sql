-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 23, 2019 at 12:38 PM
-- Server version: 5.6.41-84.1
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yelmarco_sitio`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacto`
--

CREATE TABLE `contacto` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mensaje` text COLLATE utf8mb4_unicode_ci,
  `fecha` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacto`
--

INSERT INTO `contacto` (`id`, `nombre`, `email`, `telefono`, `mensaje`, `fecha`) VALUES
(1, 'prueba', 'gabryel@gmail.com', 'prueba', 'Prueba', '2018-06-06 14:51:33');

-- --------------------------------------------------------

--
-- Table structure for table `fos_user`
--

CREATE TABLE `fos_user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `expired` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `confirmation_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `credentials_expired` tinyint(1) NOT NULL,
  `credentials_expire_at` datetime DEFAULT NULL,
  `username_canonical` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_canonical` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fos_user`
--

INSERT INTO `fos_user` (`id`, `username`, `email`, `enabled`, `salt`, `password`, `last_login`, `locked`, `expired`, `expires_at`, `confirmation_token`, `password_requested_at`, `roles`, `credentials_expired`, `credentials_expire_at`, `username_canonical`, `email_canonical`) VALUES
(1, 'admin', 'admin@example.com', 1, 'qg8sjnavsmoogo80w0ck0ooow0k8s04', '$2y$13$vYeEqbWVD4ZQG8JjLzjv/OjedUyn9n.g/eOK0WmyZDWQDrX0h45dO', '2018-06-06 15:56:27', 0, 0, NULL, NULL, NULL, 'a:1:{i:0;s:10:\"ROLE_ADMIN\";}', 0, NULL, 'admin', 'admin@example.com');

-- --------------------------------------------------------

--
-- Table structure for table `galeria`
--

CREATE TABLE `galeria` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `galeria` longtext COLLATE utf8mb4_unicode_ci COMMENT '(DC2Type:array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galeria`
--

INSERT INTO `galeria` (`id`, `nombre`, `galeria`) VALUES
(1, 'Galeria Home', 'a:26:{i:0;s:53:\"cropped/f9e207a2a3207cc55913bfa244db05e12a22cda8.jpeg\";i:1;s:53:\"cropped/ccbb21836841df3ad6bd1dc4b2a55b020746133d.jpeg\";i:2;s:53:\"cropped/c5e0bf5e0dbb879a777ec72ea816b5c0e5637618.jpeg\";i:3;s:53:\"cropped/a5a91019dd91d8143d23883cf54eb9d5152e4b1b.jpeg\";i:4;s:53:\"cropped/89a1e7b68878877b4aca3b342577ea23806dba22.jpeg\";i:5;s:53:\"cropped/6e9c5484c14043c1f9ed9f745c05a84f588592d3.jpeg\";i:6;s:53:\"cropped/9eaf87393d552976b0c2b8828c09ab4e11bf6e3c.jpeg\";i:7;s:53:\"cropped/cbed21581dfd256c25ddbc3fdaaaf34d80690416.jpeg\";i:8;s:53:\"cropped/0972f59913102258c76602f55d6978c4408e9d99.jpeg\";i:9;s:53:\"cropped/c9b241d550274143b43ca8de92ca8d22edeca826.jpeg\";i:10;s:53:\"cropped/c286fb855fec8e971cb15325a6bdf1c099b8b003.jpeg\";i:11;s:53:\"cropped/c07b6099aeddd85a5a2a9813d8873d596b9f2c93.jpeg\";i:12;s:53:\"cropped/e419417dfec643abf2c5a1a94b475aeb4ab994bf.jpeg\";i:13;s:53:\"cropped/b4dfd963e4ea7cfd36af1e512bf4649ac17cea05.jpeg\";i:14;s:53:\"cropped/40aa37159cf84599a457b494408fe7734e0c487f.jpeg\";i:15;s:53:\"cropped/ee4a8a6daf09056d5e408cde4de28622a6fd0613.jpeg\";i:16;s:53:\"cropped/be862784fb730a3f1e53df2aa4a73b4fa083f20a.jpeg\";i:17;s:53:\"cropped/b2d91ab5f40bf0d116f3267460dc8e8ecad99604.jpeg\";i:18;s:53:\"cropped/a910d57e0c50b8f61e4c4a3998e1770af69a40b5.jpeg\";i:19;s:53:\"cropped/55d81a9bbdc840cd0f8fe1fd49b5d86e92c327c2.jpeg\";i:20;s:53:\"cropped/9c6860a20cb76ad41a4a5e2049c88c00f6ce686f.jpeg\";i:21;s:53:\"cropped/db92540dbba9a5964caa307dfe1226ed88c4446d.jpeg\";i:22;s:53:\"cropped/8344789b8f34919bc3b174498e6da4fb994ab9ed.jpeg\";i:23;s:53:\"cropped/0a26546fd524e71160f7113e817cc68d90c842f5.jpeg\";i:24;s:53:\"cropped/879e48675b2750572546ed4d8f83143cfc2d181b.jpeg\";i:25;s:53:\"cropped/df0e30f22030c72a7a2ef31ce6c94d74e8530c00.jpeg\";}');

-- --------------------------------------------------------

--
-- Table structure for table `promocion`
--

CREATE TABLE `promocion` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_publicacion` date NOT NULL,
  `fecha_vencimiento` date NOT NULL,
  `generica` tinyint(1) DEFAULT NULL,
  `descripcion` longtext COLLATE utf8mb4_unicode_ci,
  `mensaje` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imagen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orden` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `promocion`
--

INSERT INTO `promocion` (`id`, `nombre`, `fecha_publicacion`, `fecha_vencimiento`, `generica`, `descripcion`, `mensaje`, `imagen`, `orden`) VALUES
(1, 'LAS HABITACIONES', '2012-01-01', '2018-01-01', 0, 'Exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in volore eu fugiat nulla pariatur.', NULL, 'cropped/de7e7f5895350928f05729fe448cbcf7464ad6ff.JPG', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacto`
--
ALTER TABLE `contacto`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fos_user`
--
ALTER TABLE `fos_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_957A647992FC23A8` (`username_canonical`),
  ADD UNIQUE KEY `UNIQ_957A6479A0D96FBF` (`email_canonical`);

--
-- Indexes for table `galeria`
--
ALTER TABLE `galeria`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promocion`
--
ALTER TABLE `promocion`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacto`
--
ALTER TABLE `contacto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fos_user`
--
ALTER TABLE `fos_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `galeria`
--
ALTER TABLE `galeria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `promocion`
--
ALTER TABLE `promocion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
