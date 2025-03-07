-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-03-2025 a las 23:01:29
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pos_php_nativo-main`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `arqueo_caja`
--

CREATE TABLE `arqueo_caja` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fecha_apertura` datetime DEFAULT NULL,
  `fecha_cierre` datetime DEFAULT NULL,
  `Bs200` int(11) NOT NULL DEFAULT 0,
  `Bs100` int(11) NOT NULL DEFAULT 0,
  `Bs50` int(11) NOT NULL DEFAULT 0,
  `Bs20` int(11) NOT NULL DEFAULT 0,
  `Bs10` int(11) NOT NULL DEFAULT 0,
  `Bs5` int(11) NOT NULL DEFAULT 0,
  `Bs2` int(11) NOT NULL DEFAULT 0,
  `Bs1` int(11) NOT NULL DEFAULT 0,
  `Bs050` int(11) NOT NULL DEFAULT 0,
  `Bs020` int(11) NOT NULL DEFAULT 0,
  `monto_ventas` decimal(11,2) NOT NULL DEFAULT 0.00,
  `monto_apertura` decimal(11,2) NOT NULL DEFAULT 0.00,
  `total_ingresos` decimal(11,2) NOT NULL DEFAULT 0.00,
  `gastos_operativos` decimal(11,2) NOT NULL DEFAULT 0.00,
  `monto_compras` decimal(11,2) NOT NULL DEFAULT 0.00,
  `total_egresos` decimal(11,2) NOT NULL DEFAULT 0.00,
  `resultado_neto` decimal(11,2) NOT NULL DEFAULT 0.00,
  `efectivo_en_caja` decimal(11,2) NOT NULL DEFAULT 0.00,
  `diferencia` decimal(11,2) NOT NULL DEFAULT 0.00,
  `estado` varchar(20) DEFAULT NULL,
  `nroTicket` int(8) UNSIGNED ZEROFILL NOT NULL DEFAULT 00000000,
  `tipo_cambio` decimal(11,2) DEFAULT NULL,
  `id_caja` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `arqueo_caja`
--

INSERT INTO `arqueo_caja` (`id`, `fecha_apertura`, `fecha_cierre`, `Bs200`, `Bs100`, `Bs50`, `Bs20`, `Bs10`, `Bs5`, `Bs2`, `Bs1`, `Bs050`, `Bs020`, `monto_ventas`, `monto_apertura`, `total_ingresos`, `gastos_operativos`, `monto_compras`, `total_egresos`, `resultado_neto`, `efectivo_en_caja`, `diferencia`, `estado`, `nroTicket`, `tipo_cambio`, `id_caja`, `id_usuario`) VALUES
(1, '2025-02-24 16:08:24', NULL, 1, 0, 0, 2, 0, 2, 0, 0, 0, 0, 0.00, 250.00, 250.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 'abierta', 00000001, NULL, 1, 1),
(2, '2025-02-25 12:16:14', NULL, 0, 2, 0, 3, 0, 0, 3, 3, 0, 0, 0.00, 269.00, 269.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 'cerrada', 00000002, NULL, 2, 1),
(3, '2025-02-25 15:43:30', NULL, 0, 0, 0, 0, 2, 0, 2, 0, 0, 0, 0.00, 24.00, 24.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 'abierta', 00000004, NULL, 1, 1),
(4, '2025-02-25 15:43:30', NULL, 0, 0, 0, 0, 2, 0, 2, 0, 0, 0, 0.00, 24.00, 24.00, 10.00, 0.00, 10.00, 14.00, 0.00, 0.00, 'abierta', 00000004, NULL, 1, 1),
(5, '2025-02-26 09:31:06', '2025-02-26 10:49:33', 0, 4, 0, 0, 0, 0, 2, 0, 0, 0, 0.00, 404.00, 404.00, 0.00, 0.00, 0.00, 404.00, 404.00, 0.00, 'cerrada', 00000043, NULL, 2, 1),
(6, '2025-02-26 10:54:13', '2025-02-26 11:01:21', 0, 0, 0, 0, 0, 14, 0, 75, 0, 0, 0.00, 140.00, 140.00, 0.00, 0.00, 0.00, 140.00, 145.00, -5.00, 'cerrada', 00000043, NULL, 2, 1),
(7, '2025-02-26 11:04:07', '2025-02-26 11:04:42', 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0.00, 100.00, 100.00, 0.00, 0.00, 0.00, 100.00, 85.00, 15.00, 'cerrada', 00000004, NULL, 2, 1),
(8, '2025-02-26 11:13:29', '2025-02-26 11:16:26', 0, 0, 0, 0, 2, 0, 0, 0, 1, 0, 0.00, 24.50, 24.50, 0.00, 0.00, 0.00, 24.50, 20.50, 4.00, 'cerrada', 00000008, NULL, 1, 1),
(9, '2025-02-26 11:18:40', '2025-02-26 11:19:39', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0.00, 40.50, 40.50, 0.00, 0.00, 0.00, 40.50, 20.00, 20.50, 'cerrada', 00000001, NULL, 2, 1),
(10, '2025-02-26 14:31:11', '2025-02-26 14:50:04', 0, 2, 2, 3, 0, 0, 0, 0, 0, 0, 0.00, 400.00, 400.00, 0.00, 0.00, 0.00, 400.00, 360.00, 40.00, 'cerrada', 00000008, NULL, 1, 1),
(11, '2025-02-26 14:52:53', '2025-02-26 14:55:03', 0, 2, 0, 0, 0, 2, 0, 0, 0, 0, 0.00, 642.00, 642.00, 0.00, 0.00, 0.00, 642.00, 210.00, 432.00, 'cerrada', 00000008, NULL, 2, 1),
(12, '2025-02-26 14:55:43', '2025-02-26 14:56:17', 1, 2, 0, 0, 0, 0, 4, 0, 0, 0, 0.00, 404.00, 404.00, 0.00, 0.00, 0.00, 404.00, 408.00, -4.00, 'cerrada', 00000008, NULL, 2, 1),
(13, '2025-02-26 15:08:48', '2025-02-26 15:26:59', 0, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0.00, 156.00, 156.00, 0.00, 0.00, 0.00, 156.00, 104.00, 52.00, 'cerrada', 00000001, NULL, 2, 1),
(14, '2025-02-26 15:27:49', '2025-02-26 15:29:09', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0.00, 388.70, 388.70, 0.00, 0.00, 0.00, 388.70, 388.70, 0.00, 'cerrada', 00000020, NULL, 1, 1),
(15, '2025-02-26 16:53:29', '2025-02-26 17:17:09', 0, 2, 1, 0, 0, 0, 1, 0, 0, 0, 0.00, 252.20, 252.20, 0.00, 0.00, 0.00, 252.20, 252.00, 0.20, 'cerrada', 00000012, NULL, 2, 1),
(16, '2025-02-26 17:26:35', '2025-02-26 17:31:04', 0, 1, 2, 3, 3, 0, 0, 0, 0, 0, 0.00, 242.00, 242.00, 0.00, 0.00, 0.00, 242.00, 290.00, -48.00, 'cerrada', 00000124, NULL, 2, 1),
(17, '2025-02-26 17:32:35', '2025-02-26 17:33:12', 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0.00, 24.00, 24.00, 0.00, 0.00, 0.00, 24.00, 10.00, 14.00, 'cerrada', 00000001, NULL, 1, 1),
(18, '2025-02-26 18:00:18', '2025-02-26 18:02:11', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.00, 400.00, 400.00, 0.00, 0.00, 0.00, 400.00, 400.00, 0.00, 'cerrada', 00000001, NULL, 2, 1),
(19, '2025-02-27 09:15:28', '2025-02-27 12:17:02', 0, 0, 2, 0, 0, 0, 0, 0, 1, 2, 0.00, 100.00, 100.00, 0.00, 0.00, 0.00, 100.00, 100.90, -0.90, 'cerrada', 00000001, NULL, 1, 1),
(20, '2025-02-27 10:36:35', '2025-02-27 12:10:32', 2, 2, 1, 0, 0, 0, 0, 1, 0, 0, 0.00, 651.00, 651.00, 0.00, 0.00, 0.00, 651.00, 651.00, 0.00, 'cerrada', 00000011, NULL, 1, 4),
(21, '2025-02-27 12:13:13', '2025-02-27 12:14:04', 0, 0, 1, 0, 2, 0, 3, 0, 0, 0, 0.00, 6.00, 6.00, 0.00, 0.00, 0.00, 6.00, 76.00, -70.00, 'cerrada', 00000044, NULL, 1, 4),
(22, '2025-02-27 12:51:14', '2025-02-27 14:14:39', 2, 0, 0, 0, 2, 0, 0, 4, 0, 1, 0.00, 424.40, 424.40, 0.00, 0.00, 0.00, 424.40, 424.20, 0.20, 'cerrada', 00000008, NULL, 2, 1),
(23, '2025-02-27 14:16:09', '2025-02-27 14:16:26', 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0.00, 200.00, 200.00, 0.00, 0.00, 0.00, 200.00, 200.00, 0.00, 'cerrada', 00000008, NULL, 2, 1),
(24, '2025-02-27 14:17:27', '2025-02-27 14:18:33', 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0.00, 40.00, 40.00, 0.00, 0.00, 0.00, 40.00, 40.00, 0.00, 'cerrada', 00000008, NULL, 2, 1),
(25, '2025-02-27 14:19:11', '2025-02-27 14:19:36', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0.00, 388.70, 388.70, 0.00, 0.00, 0.00, 388.70, 388.70, 0.00, 'cerrada', 00000008, NULL, 1, 1),
(26, '2025-02-27 14:21:02', '2025-02-27 14:21:23', 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 0.00, 200.50, 200.50, 0.00, 0.00, 0.00, 200.50, 488.70, -288.20, 'cerrada', 00000001, NULL, 2, 1),
(27, '2025-02-27 14:29:02', '2025-02-27 14:30:37', 2, 1, 3, 4, 3, 4, 5, 6, 22, 2, 0.00, 807.40, 807.40, 0.00, 0.00, 0.00, 807.40, 807.40, 0.00, 'cerrada', 00000001, NULL, 2, 1),
(28, '2025-02-27 14:31:03', '2025-02-27 14:31:17', 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0.00, 600.00, 600.00, 0.00, 0.00, 0.00, 600.00, 210.00, 390.00, 'cerrada', 00000011, NULL, 2, 1),
(29, '2025-02-27 14:50:09', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.00, 160.00, 160.00, 0.00, 0.00, 0.00, 160.00, 0.00, 0.00, 'abierta', 00000011, NULL, 1, 1),
(30, '2025-02-28 14:44:06', '2025-02-28 14:44:33', 0, 1, 3, 0, 0, 0, 2, 0, 0, 0, 0.00, 250.00, 250.00, 0.00, 0.00, 0.00, 250.00, 254.00, 4.00, 'cerrada', 00000001, NULL, 2, 1),
(31, '2025-03-05 09:15:45', '2025-03-05 12:07:26', 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0.00, 66.40, 66.40, 0.00, 0.00, 0.00, 66.40, 52.00, -14.40, 'cerrada', 00000001, NULL, 2, 1),
(32, '2025-03-05 12:29:51', '2025-03-05 12:32:33', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0.00, 100.00, 100.00, 0.00, 0.00, 0.00, 100.00, 100.00, 0.00, 'cerrada', 00000001, NULL, 2, 1),
(33, '2025-03-05 12:33:28', '2025-03-05 12:39:56', 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0.00, 300.00, 300.00, 0.00, 0.00, 0.00, 300.00, 300.00, 0.00, 'cerrada', 00000001, NULL, 2, 1),
(34, '2025-03-05 12:41:27', '2025-03-05 16:33:41', 3, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0.00, 605.00, 605.00, 0.00, 0.00, 0.00, 605.00, 605.00, 0.00, 'cerrada', 00000001, NULL, 1, 1),
(35, '2025-03-05 16:36:14', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.00, 170.00, 170.00, 0.00, 0.00, 0.00, 170.00, 0.00, 0.00, 'abierta', 00000011, NULL, 2, 1),
(36, '2025-03-06 09:27:36', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.00, 125.00, 125.00, 0.00, 0.00, 0.00, 125.00, 0.00, 0.00, 'abierta', 00000001, NULL, 1, 1),
(37, '2025-03-07 11:13:33', '2025-03-07 11:20:28', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0.00, 208.00, 208.00, 0.00, 0.00, 0.00, 208.00, 300.00, 92.00, 'cerrada', 00000001, NULL, 2, 1),
(38, '2025-03-07 11:20:43', '2025-03-07 11:22:00', 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0.00, 100.00, 100.00, 0.00, 0.00, 0.00, 100.00, 90.00, -10.00, 'cerrada', 00000001, NULL, 2, 1),
(39, '2025-03-07 11:22:15', '2025-03-07 11:37:40', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0.00, 100.00, 100.00, 0.00, 0.00, 0.00, 100.00, 100.00, 0.00, 'cerrada', 00000001, NULL, 2, 1),
(40, '2025-03-07 11:41:41', '2025-03-07 11:47:34', 0, 0, 1, 0, 0, 0, 3, 0, 0, 0, 0.00, 44.00, 44.00, 0.00, 0.00, 0.00, 44.00, 56.00, 12.00, 'cerrada', 00000001, NULL, 2, 1),
(41, '2025-03-07 11:41:48', '2025-03-07 11:42:20', 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0.00, 44.00, 44.00, 0.00, 0.00, 0.00, 44.00, 40.00, -4.00, 'cerrada', 00000001, NULL, 2, 1),
(42, '2025-03-07 11:48:22', '2025-03-07 11:52:01', 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0.00, 150.00, 150.00, 0.00, 0.00, 0.00, 150.00, 100.00, -50.00, 'cerrada', 00000001, NULL, 2, 1),
(43, '2025-03-07 11:52:33', '2025-03-07 11:53:08', 0, 1, 1, 2, 0, 0, 0, 0, 0, 0, 0.00, 120.00, 120.00, 0.00, 0.00, 0.00, 120.00, 190.00, 70.00, 'cerrada', 00000001, NULL, 2, 1),
(44, '2025-03-07 11:53:57', '2025-03-07 11:55:07', 0, 1, 0, 2, 0, 0, 0, 0, 0, 0, 0.00, 220.00, 220.00, 0.00, 0.00, 0.00, 220.00, 140.00, -80.00, 'cerrada', 00000001, NULL, 2, 1),
(45, '2025-03-07 11:55:18', '2025-03-07 11:56:03', 0, 1, 0, 0, 2, 0, 0, 0, 0, 0, 0.00, 120.00, 120.00, 0.00, 0.00, 0.00, 120.00, 120.00, 0.00, 'cerrada', 00000001, NULL, 2, 1),
(46, '2025-03-07 11:56:26', '2025-03-07 11:57:59', 0, 1, 0, 0, 2, 0, 0, 0, 0, 0, 0.00, 100.00, 100.00, 0.00, 0.00, 0.00, 100.00, 120.00, 20.00, 'cerrada', 00000011, NULL, 1, 1),
(47, '2025-03-07 11:58:11', '2025-03-07 11:59:23', 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0.00, 200.00, 200.00, 0.00, 0.00, 0.00, 200.00, 65.00, -135.00, 'cerrada', 00000002, NULL, 1, 1),
(48, '2025-03-07 11:58:16', '2025-03-07 11:59:06', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.00, 200.00, 200.00, 0.00, 0.00, 0.00, 200.00, 200.00, 0.00, 'cerrada', 00000002, NULL, 1, 1),
(49, '2025-03-07 11:59:39', '2025-03-07 12:00:33', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0.00, 110.00, 110.00, 0.00, 0.00, 0.00, 110.00, 100.00, -10.00, 'cerrada', 00000001, NULL, 1, 1),
(50, '2025-03-07 12:00:45', '2025-03-07 12:01:46', 0, 1, 0, 2, 0, 0, 0, 0, 0, 0, 0.00, 120.00, 120.00, 0.00, 0.00, 0.00, 120.00, 140.00, 20.00, 'cerrada', 00000001, NULL, 1, 1),
(51, '2025-03-07 12:02:01', '2025-03-07 12:19:36', 0, 0, 1, 0, 0, 14, 0, 0, 0, 0, 0.00, 124.00, 124.00, 0.00, 0.00, 0.00, 124.00, 120.00, -4.00, 'cerrada', 00000001, NULL, 2, 1),
(52, '2025-03-07 12:09:16', '2025-03-07 12:10:19', 0, 1, 1, 2, 2, 9, 0, 0, 0, 0, 0.00, 254.00, 254.00, 0.00, 0.00, 0.00, 254.00, 255.00, 1.00, 'cerrada', 00000024, NULL, 1, 4),
(53, '2025-03-07 12:24:15', '2025-03-07 12:25:26', 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0.00, 40.00, 40.00, 0.00, 0.00, 0.00, 40.00, 20.00, -20.00, 'cerrada', 00000001, NULL, 2, 1),
(54, '2025-03-07 12:26:01', '2025-03-07 12:26:11', 0, 2, 0, 0, 0, 1, 0, 0, 0, 0, 0.00, 40.00, 40.00, 0.00, 0.00, 0.00, 40.00, 205.00, 165.00, 'cerrada', 00000002, NULL, 2, 1),
(55, '2025-03-07 13:17:18', '2025-03-07 13:17:27', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0.00, 50.00, 50.00, 0.00, 0.00, 0.00, 50.00, 50.00, 0.00, 'cerrada', 00000001, NULL, 1, 1),
(56, '2025-03-07 13:26:18', '2025-03-07 13:27:36', 0, 0, 1, 2, 1, 0, 0, 0, 0, 0, 0.00, 100.00, 100.00, 0.00, 0.00, 0.00, 100.00, 100.00, 0.00, 'cerrada', 00000000, NULL, 1, 1),
(57, '2025-03-07 13:28:01', '2025-03-07 13:29:05', 1, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0.00, 240.00, 240.00, 0.00, 0.00, 0.00, 240.00, 240.00, 0.00, 'cerrada', 00000000, NULL, 2, 1),
(58, '2025-03-07 13:29:51', '2025-03-07 15:14:17', 0, 0, 1, 2, 0, 1, 0, 0, 0, 0, 0.00, 74.00, 74.00, 0.00, 0.00, 0.00, 74.00, 95.00, 21.00, 'cerrada', 00000023, NULL, 1, 1),
(59, '2025-03-07 15:15:19', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28.00, 240.00, 240.00, 0.00, 0.00, 0.00, 240.00, 0.00, 0.00, 'abierta', 00000007, NULL, 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cajas`
--

CREATE TABLE `cajas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(35) NOT NULL,
  `numero_caja` varchar(10) NOT NULL,
  `nro_ticket` int(10) UNSIGNED ZEROFILL NOT NULL,
  `estado` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `cajas`
--

INSERT INTO `cajas` (`id`, `nombre`, `numero_caja`, `nro_ticket`, `estado`) VALUES
(1, 'caja administrativa', '1', 0000000000, 1),
(2, 'caja de ventas', '2', 0000000007, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `categoria` text NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `estado` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`, `fecha`, `estado`) VALUES
(1, 'broasterd', '2025-01-05 21:42:24', 1),
(2, 'brasa', '2025-01-05 21:42:30', 1),
(3, 'sodas', '2025-01-05 21:42:42', 1),
(4, 'jugos', '2025-01-05 21:42:46', 1),
(5, 'salchipapas', '2025-01-06 01:31:55', 1),
(6, 'hamburguesa', '2025-01-05 21:43:07', 1),
(7, 'test', '2025-03-05 20:18:16', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `estado` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `fecha`, `estado`) VALUES
(1, 's/n', '2025-01-06 01:48:20', 1),
(2, 'Enrique Condori', '2025-03-06 13:39:57', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE `compras` (
  `id` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_proveedor` int(11) NOT NULL,
  `fecha_alta` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `estado` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `compras`
--

INSERT INTO `compras` (`id`, `codigo`, `total`, `id_usuario`, `id_proveedor`, `fecha_alta`, `estado`) VALUES
(1, 10001, 1.40, 1, 1, '2025-01-06 02:00:54', 1),
(2, 10002, 1870.00, 3, 2, '2025-01-07 02:39:59', 1),
(3, 10003, 4855.00, 1, 1, '2025-01-08 02:08:22', 1),
(4, 10004, 7070.00, 1, 1, '2025-01-08 02:09:18', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_compra`
--

CREATE TABLE `detalle_compra` (
  `id` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `id_compra` int(11) NOT NULL,
  `producto` varchar(200) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio_compra` decimal(10,2) NOT NULL,
  `subtotal` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle_compra`
--

INSERT INTO `detalle_compra` (`id`, `id_producto`, `id_compra`, `producto`, `cantidad`, `precio_compra`, `subtotal`) VALUES
(1, 36, 1, 'fanta naranja mini', 1, 1.00, 1.40),
(2, 18, 2, 'coca cola 3l', 50, 15.00, 750.00),
(3, 19, 2, 'coca cola 2l', 50, 11.00, 550.00),
(4, 20, 2, 'coca cola 600ml', 50, 3.00, 150.00),
(5, 21, 2, 'retornable coca cola 2.5l', 50, 7.00, 350.00),
(6, 37, 2, 'coca cola mini 190ml', 50, 1.00, 70.00),
(7, 66, 3, 'pura vida de 3l ', 50, 15.00, 750.00),
(8, 65, 3, 'tropi 600ml', 50, 3.00, 150.00),
(9, 64, 3, 'chicha 2l', 50, 9.00, 450.00),
(10, 63, 3, 'aquarios pomelo 2l', 50, 11.00, 550.00),
(11, 62, 3, 'aquarios pomelo 3l', 50, 15.00, 750.00),
(12, 61, 3, 'aquarios pera 2l', 50, 11.00, 550.00),
(13, 60, 3, 'aquarios pera 3l', 50, 15.00, 750.00),
(14, 59, 3, 'valle 3l  naranja', 50, 14.00, 725.00),
(15, 58, 3, 'pop uva 620ml', 50, 1.00, 90.00),
(16, 43, 3, 'pop guarana 620ml', 50, 1.00, 90.00),
(17, 42, 4, 'pop manzana 620ml', 50, 1.00, 90.00),
(18, 41, 4, 'pop papaya 620ml', 50, 1.00, 90.00),
(19, 40, 4, 'pop naranja 620ml', 50, 1.00, 90.00),
(20, 39, 4, 'pop piña  620ml', 50, 1.00, 90.00),
(21, 38, 4, 'pop uva 620ml', 50, 1.00, 90.00),
(22, 36, 4, 'fanta naranja mini', 50, 1.00, 70.00),
(23, 35, 4, 'mendocina papaya 1l', 50, 5.00, 250.00),
(24, 34, 4, 'pepsi 1l', 50, 3.00, 150.00),
(25, 33, 4, 'pepsi 2l', 50, 9.00, 450.00),
(26, 23, 4, 'fanta naranja 2l', 50, 11.00, 550.00),
(27, 24, 4, 'fanta naranja 600ml', 50, 3.00, 150.00),
(28, 25, 4, 'fanta papaya 3l', 50, 15.00, 750.00),
(29, 26, 4, 'fanta papaya 2l', 50, 11.00, 550.00),
(30, 27, 4, 'fanta guarana 3l', 50, 15.00, 750.00),
(31, 28, 4, 'fanta guarana 2l', 50, 11.00, 550.00),
(32, 29, 4, 'sprite 600ml', 50, 3.00, 150.00),
(33, 30, 4, 'simba manzana 2l', 50, 10.00, 500.00),
(34, 31, 4, 'simba piña 2l', 50, 10.00, 500.00),
(35, 32, 4, 'simba durazno 2l', 50, 10.00, 500.00),
(36, 22, 4, 'fanta naranja 3l', 50, 15.00, 750.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_venta`
--

CREATE TABLE `detalle_venta` (
  `id` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `id_venta` int(11) NOT NULL,
  `producto` varchar(200) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio_venta` decimal(10,2) NOT NULL,
  `precio_compra` decimal(10,2) NOT NULL,
  `subtotal` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle_venta`
--

INSERT INTO `detalle_venta` (`id`, `id_producto`, `id_venta`, `producto`, `cantidad`, `precio_venta`, `precio_compra`, `subtotal`) VALUES
(1, 36, 1, 'fanta naranja mini', 1, 2.00, 1.40, 2.00),
(2, 1, 2, 'entero', 1, 80.00, 70.00, 80.00),
(3, 19, 3, 'coca cola 2l', 1, 13.00, 11.00, 13.00),
(4, 37, 4, 'coca cola mini 190ml', 1, 2.00, 1.40, 2.00),
(5, 8, 5, 'eco contra', 1, 12.00, 10.00, 12.00),
(6, 64, 6, 'chicha 2l', 1, 12.00, 9.00, 12.00),
(7, 63, 6, 'aquarios pomelo 2l', 1, 13.00, 11.00, 13.00),
(8, 62, 6, 'aquarios pomelo 3l', 1, 17.00, 15.00, 17.00),
(9, 69, 7, 'salchipapa simple', 1, 10.00, 7.00, 10.00),
(10, 66, 7, 'pura vida de 3l ', 1, 18.00, 15.00, 18.00),
(11, 65, 7, 'tropi 600ml', 2, 6.00, 3.00, 12.00),
(12, 5, 8, 'eco pecho', 40, 12.00, 10.00, 480.00),
(13, 8, 9, 'eco contra', 27, 12.00, 10.00, 324.00),
(14, 8, 10, 'eco contra', 7, 12.00, 10.00, 84.00),
(15, 1, 10, 'entero', 2, 80.00, 70.00, 160.00),
(16, 64, 11, 'chicha 2l', 1, 12.00, 9.00, 12.00),
(17, 65, 11, 'tropi 600ml', 1, 6.00, 3.00, 6.00),
(18, 61, 12, 'aquarios pera 2l', 1, 13.00, 11.00, 13.00),
(19, 60, 12, 'aquarios pera 3l', 1, 17.00, 15.00, 17.00),
(20, 65, 13, 'tropi 600ml', 1, 6.00, 3.00, 6.00),
(21, 66, 13, 'pura vida de 3l ', 2, 18.00, 15.00, 36.00),
(22, 69, 13, 'salchipapa simple', 4, 10.00, 7.00, 40.00),
(23, 66, 14, 'pura vida de 3l ', 1, 18.00, 15.00, 18.00),
(24, 65, 14, 'tropi 600ml', 1, 6.00, 3.00, 6.00),
(25, 69, 14, 'salchipapa simple', 1, 10.00, 7.00, 10.00),
(26, 41, 15, 'pop papaya 620ml', 1, 3.00, 1.80, 3.00),
(27, 39, 15, 'pop piña  620ml', 1, 3.00, 1.80, 3.00),
(28, 61, 16, 'aquarios pera 2l', 2, 13.00, 11.00, 26.00),
(29, 60, 16, 'aquarios pera 3l', 3, 17.00, 15.00, 51.00),
(30, 66, 17, 'pura vida de 3l ', 2, 18.00, 15.00, 36.00),
(31, 65, 17, 'tropi 600ml', 2, 6.00, 3.00, 12.00),
(32, 65, 18, 'tropi 600ml', 2, 6.00, 3.00, 12.00),
(33, 64, 18, 'chicha 2l', 2, 12.00, 9.00, 24.00),
(34, 64, 19, 'chicha 2l', 1, 12.00, 9.00, 12.00),
(35, 65, 19, 'tropi 600ml', 2, 6.00, 3.00, 12.00),
(36, 5, 20, 'eco pecho', 2, 12.00, 10.00, 24.00),
(37, 65, 21, 'tropi 600ml', 1, 6.00, 3.00, 6.00),
(38, 64, 21, 'chicha 2l', 2, 12.00, 9.00, 24.00),
(39, 64, 22, 'chicha 2l', 2, 12.00, 9.00, 24.00),
(40, 65, 23, 'tropi 600ml', 1, 6.00, 3.00, 6.00),
(41, 64, 23, 'chicha 2l', 1, 12.00, 9.00, 12.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `meseros`
--

CREATE TABLE `meseros` (
  `id` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `documento` varchar(11) NOT NULL,
  `telefono` text NOT NULL,
  `direccion` text NOT NULL,
  `compras` int(11) NOT NULL,
  `ultima_compra` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `estado` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `meseros`
--

INSERT INTO `meseros` (`id`, `nombre`, `documento`, `telefono`, `direccion`, `compras`, `ultima_compra`, `fecha`, `estado`) VALUES
(1, 's/n', 'sin carnet', '000-00-000', 'sin direccion', 130, '2025-03-07 17:59:49', '2025-03-07 21:59:49', 1),
(2, 'Pablo', '14231231', '61214123', 'sin direccion', 0, '0000-00-00 00:00:00', '2025-03-07 19:39:04', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `codigo` text NOT NULL,
  `descripcion` text NOT NULL,
  `imagen` text NOT NULL,
  `stock` int(11) NOT NULL,
  `precio_venta` float NOT NULL,
  `precio_compra` float NOT NULL,
  `ventas` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `inventariable` tinyint(4) NOT NULL,
  `estado` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `id_categoria`, `codigo`, `descripcion`, `imagen`, `stock`, `precio_venta`, `precio_compra`, `ventas`, `fecha`, `inventariable`, `estado`) VALUES
(1, 1, '101', 'entero', 'vistas/img/productos/101/814.jpg', 47, 80, 70, 3, '2025-03-06 13:41:02', 0, 1),
(2, 1, '102', '1/2', 'vistas/img/productos/102/393.jpg', 50, 40, 30, 0, '2025-01-05 22:20:18', 0, 1),
(3, 1, '103', '1/4 pecho', 'vistas/img/productos/103/562.jpg', 50, 20, 18, 0, '2025-01-05 22:13:07', 0, 1),
(4, 1, '108', '1/4 pierna', 'vistas/img/productos/108/876.jpg', 50, 20, 18, 0, '2025-01-05 22:14:24', 0, 1),
(5, 1, '104', 'eco pecho', 'vistas/img/productos/104/677.jpg', 4, 12, 10, 47, '2025-03-07 21:11:06', 0, 1),
(6, 1, '105', 'eco pierna', 'vistas/img/productos/105/136.jpg', 50, 12, 10, 0, '2025-01-05 22:11:56', 0, 1),
(7, 1, '106', 'eco ala', 'vistas/img/productos/106/524.jpg', 50, 12, 10, 0, '2025-01-05 22:22:15', 0, 1),
(8, 1, '107', 'eco contra', 'vistas/img/productos/107/140.jpg', 15, 12, 10, 35, '2025-03-06 13:41:02', 0, 1),
(10, 2, '201', 'entero', 'vistas/img/productos/201/518.png', 50, 80, 70, 0, '2025-01-05 22:29:27', 0, 1),
(11, 2, '202', '1/2', 'vistas/img/productos/202/592.png', 50, 40, 30, 0, '2025-01-05 22:31:20', 0, 1),
(12, 2, '203', '1/4  pecho', 'vistas/img/productos/203/989.png', 50, 20, 18, 0, '2025-01-05 22:31:43', 0, 1),
(13, 2, '204', '1/4 pierna', 'vistas/img/productos/204/129.png', 50, 20, 18, 0, '2025-01-05 22:32:04', 0, 1),
(14, 2, '205', 'eco pecho', 'vistas/img/productos/205/937.jpg', 49, 12, 10, 1, '2025-01-06 01:48:58', 0, 1),
(15, 2, '206', 'eco pierna', 'vistas/img/productos/206/586.png', 50, 12, 10, 0, '2025-01-05 22:43:44', 0, 1),
(16, 2, '207', 'eco ala', 'vistas/img/productos/207/314.jpg', 50, 12, 10, 0, '2025-01-05 22:47:36', 0, 1),
(17, 2, '208', 'eco contra', 'vistas/img/productos/208/425.png', 50, 12, 10, 0, '2025-01-05 22:46:34', 0, 1),
(18, 3, '301', 'coca cola 3l', 'vistas/img/productos/301/316.jpg', 50, 17, 15, 0, '2025-01-07 02:39:59', 1, 1),
(19, 3, '302', 'coca cola 2l', 'vistas/img/productos/302/532.jpg', 49, 13, 11, 1, '2025-01-07 02:40:23', 1, 1),
(20, 3, '303', 'coca cola 600ml', 'vistas/img/productos/303/492.jpg', 50, 6, 3, 0, '2025-01-07 02:39:59', 1, 1),
(21, 3, '304', 'retornable coca cola 2.5l', 'vistas/img/productos/304/739.jpg', 50, 12, 7, 0, '2025-01-07 02:39:59', 1, 1),
(22, 3, '305', 'fanta naranja 3l', 'vistas/img/productos/305/781.jpg', 50, 17, 15, 0, '2025-01-08 02:09:18', 1, 1),
(23, 3, '306', 'fanta naranja 2l', 'vistas/img/productos/306/696.jpg', 50, 13, 11, 0, '2025-01-08 02:09:18', 1, 1),
(24, 3, '307', 'fanta naranja 600ml', 'vistas/img/productos/307/182.jpg', 50, 6, 3, 0, '2025-01-08 02:09:18', 1, 1),
(25, 3, '308', 'fanta papaya 3l', 'vistas/img/productos/308/584.jpg', 50, 17, 15, 0, '2025-01-08 02:09:18', 1, 1),
(26, 3, '309', 'fanta papaya 2l', 'vistas/img/productos/309/560.jpg', 50, 13, 11, 0, '2025-01-08 02:09:18', 1, 1),
(27, 3, '310', 'fanta guarana 3l', 'vistas/img/productos/310/152.jpg', 50, 17, 15, 0, '2025-01-08 02:09:18', 1, 1),
(28, 3, '311', 'fanta guarana 2l', 'vistas/img/productos/311/908.jpg', 50, 13, 11, 0, '2025-01-08 02:09:18', 1, 1),
(29, 3, '312', 'sprite 600ml', 'vistas/img/productos/312/281.jpg', 50, 6, 3, 0, '2025-01-08 02:09:18', 1, 1),
(30, 3, '313', 'simba manzana 2l', 'vistas/img/productos/313/940.jpg', 50, 12, 10, 0, '2025-01-08 02:09:18', 1, 1),
(31, 3, '314', 'simba piña 2l', 'vistas/img/productos/314/740.png', 50, 12, 10, 0, '2025-01-08 02:09:18', 1, 1),
(32, 3, '315', 'simba durazno 2l', 'vistas/img/productos/315/954.jpg', 50, 12, 10, 0, '2025-01-08 02:09:18', 1, 1),
(33, 3, '316', 'pepsi 2l', 'vistas/img/productos/316/938.jpg', 50, 10, 9, 0, '2025-01-08 02:09:18', 1, 1),
(34, 3, '317', 'pepsi 1l', 'vistas/img/productos/317/343.png', 50, 6, 3, 0, '2025-01-08 02:09:18', 1, 1),
(35, 3, '318', 'mendocina papaya 1l', 'vistas/img/productos/318/539.png', 50, 6, 5, 0, '2025-01-08 02:09:18', 1, 1),
(36, 3, '326', 'fanta naranja mini', 'vistas/img/productos/326/408.jpg', 50, 2, 1.4, 1, '2025-01-08 02:09:18', 1, 1),
(37, 3, '325', 'coca cola mini 190ml', 'vistas/img/productos/325/287.jpg', 49, 2, 1.4, 1, '2025-01-07 02:48:12', 1, 1),
(38, 3, '324', 'pop uva 620ml', 'vistas/img/productos/324/957.jpg', 50, 3, 1.8, 0, '2025-01-08 02:09:18', 1, 1),
(39, 3, '319', 'pop piña  620ml', 'vistas/img/productos/319/217.jpg', 49, 3, 1.8, 1, '2025-03-06 21:42:34', 1, 1),
(40, 3, '320', 'pop naranja 620ml', 'vistas/img/productos/320/896.jpg', 50, 3, 1.8, 0, '2025-01-08 02:09:18', 1, 1),
(41, 3, '321', 'pop papaya 620ml', 'vistas/img/productos/321/665.jpg', 49, 3, 1.8, 1, '2025-03-06 21:42:33', 1, 1),
(42, 3, '322', 'pop manzana 620ml', 'vistas/img/productos/322/283.jpg', 50, 3, 1.8, 0, '2025-01-08 02:09:18', 1, 1),
(43, 3, '323', 'pop guarana 620ml', 'vistas/img/productos/323/386.jpg', 50, 3, 1.8, 0, '2025-01-08 02:08:22', 1, 1),
(58, 3, '324', 'pop uva 620ml', 'vistas/img/productos/324/957.jpg', 50, 3, 1.8, 0, '2025-01-08 02:08:22', 1, 1),
(59, 4, '401', 'valle 3l  naranja', 'vistas/img/productos/401/147.jpg', 50, 17, 14.5, 0, '2025-01-08 02:08:22', 1, 1),
(60, 4, '402', 'aquarios pera 3l', 'vistas/img/productos/402/399.jpg', 46, 17, 15, 4, '2025-03-07 19:16:05', 1, 1),
(61, 4, '403', 'aquarios pera 2l', 'vistas/img/productos/403/956.jpg', 47, 13, 11, 3, '2025-03-07 19:16:05', 1, 1),
(62, 4, '404', 'aquarios pomelo 3l', 'vistas/img/productos/404/930.jpg', 49, 17, 15, 1, '2025-03-05 16:30:24', 1, 1),
(63, 4, '405', 'aquarios pomelo 2l', 'vistas/img/productos/405/715.png', 49, 13, 11, 1, '2025-03-05 16:30:24', 1, 1),
(64, 4, '406', 'chicha 2l', 'vistas/img/productos/406/636.png', 41, 12, 9, 11, '2025-03-07 21:59:49', 1, 1),
(65, 4, '407', 'tropi 600ml', 'vistas/img/productos/407/356.jpg', 39, 6, 3, 13, '2025-03-07 21:59:49', 1, 1),
(66, 4, '408', 'pura vida de 3l ', 'vistas/img/productos/408/764.jpg', 44, 18, 15, 6, '2025-03-07 19:20:10', 1, 1),
(69, 5, '501', 'salchipapa simple', 'vistas/img/productos/501/488.png', 43, 10, 7, 8, '2025-03-06 21:26:19', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `empresa` varchar(100) NOT NULL,
  `telefono` varchar(12) NOT NULL,
  `direccion` text NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `estado` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`id`, `nombre`, `empresa`, `telefono`, `direccion`, `fecha`, `estado`) VALUES
(1, 's/n', 'coca cola', '67709910', 'sin direccion', '2025-01-06 01:59:38', 1),
(2, 'victor hino', 'coca cola', '67709910', 'sin direccion', '2025-01-06 01:59:47', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `usuario` text NOT NULL,
  `password` text NOT NULL,
  `perfil` text NOT NULL,
  `foto` text NOT NULL,
  `estado` int(11) NOT NULL,
  `ultimo_login` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `activo` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `usuario`, `password`, `perfil`, `foto`, `estado`, `ultimo_login`, `fecha`, `activo`) VALUES
(1, 'rosmery quizpe', 'admin', '$2a$07$asxx54ahjppf45sd87a5auXBm1Vr2M1NV5t/zNQtGHGpS5fFirrbG', 'Administrador', 'vistas/img/usuarios/admin/202.png', 1, '2025-03-07 17:59:02', '2025-03-07 21:59:02', 1),
(2, 'luis hidalgo', 'luis10', '$2a$07$asxx54ahjppf45sd87a5auGZEtGHuyZwm.Ur.FJvWLCql3nmsMbXy', 'Vendedor', '', 1, '2025-01-07 22:10:53', '2025-01-08 02:10:53', 1),
(3, 'edwin yamil', 'edwin', '$2a$07$asxx54ahjppf45sd87a5auGZEtGHuyZwm.Ur.FJvWLCql3nmsMbXy', 'Especial', '', 1, '2025-01-07 12:22:36', '2025-01-07 16:22:36', 1),
(4, 'enrique', 'enrique', '$2a$07$asxx54ahjppf45sd87a5auLSGQafrhT1q/TDAijaGwwOMXE8ecr.q', 'Administrador', '', 1, '2025-03-07 12:07:11', '2025-03-07 16:07:11', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `codigo` int(8) UNSIGNED ZEROFILL NOT NULL,
  `nro_ticket` int(8) UNSIGNED ZEROFILL DEFAULT NULL,
  `total` float NOT NULL,
  `total_pagado` float DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `nota` varchar(300) DEFAULT NULL,
  `tipo_pago` varchar(100) DEFAULT NULL,
  `cambio` float DEFAULT NULL,
  `forma_atencion` varchar(200) DEFAULT NULL,
  `estado` tinyint(4) NOT NULL DEFAULT 1,
  `id_mesero` int(11) DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `id_vendedor` int(11) DEFAULT NULL,
  `id_arqueo_caja` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `codigo`, `nro_ticket`, `total`, `total_pagado`, `fecha`, `nota`, `tipo_pago`, `cambio`, `forma_atencion`, `estado`, `id_mesero`, `id_cliente`, `id_vendedor`, `id_arqueo_caja`) VALUES
(1, 00010001, NULL, 2, 2, '2025-01-06 02:01:14', '', 'Efectivo', 0, 'En Mesa', 1, 1, 1, 1, NULL),
(2, 00010002, NULL, 80, 80, '2025-01-06 16:03:01', '', 'Efectivo', 0, 'En Mesa', 1, 1, 1, 2, NULL),
(3, 00010003, NULL, 13, 13, '2025-01-07 02:40:23', '', 'Efectivo', 0, 'En Mesa', 1, 1, 1, 3, NULL),
(4, 00010004, NULL, 2, 2, '2025-01-07 02:48:12', '', 'Efectivo', 0, 'En Mesa', 1, 1, 1, 3, NULL),
(5, 00010005, NULL, 12, 12, '2025-01-07 02:50:24', '', 'Efectivo', 0, 'En Mesa', 1, 1, 1, 1, NULL),
(6, 00010006, NULL, 42, 50, '2025-03-05 16:30:25', '', 'Efectivo', 8, 'En Mesa', 1, 1, 1, 1, NULL),
(7, 00010007, NULL, 40, 50, '2025-03-05 19:08:07', '', 'Efectivo', 10, 'En Mesa', 1, 1, 1, 1, NULL),
(8, 00010008, NULL, 480, 500, '2025-03-05 21:04:35', '', 'QR', 20, 'En Mesa', 1, 1, 1, 1, NULL),
(9, 00010009, NULL, 324, 400, '2025-03-06 13:39:57', '', 'Efectivo', 76, 'En Mesa', 1, 1, 2, 1, NULL),
(10, 00010010, NULL, 244, 400, '2025-03-06 13:41:02', 'PRUEBA MESSAGE', 'Transferencia', 156, 'En Mesa', 1, 1, 1, 1, NULL),
(11, 00010011, NULL, 18, 20, '2025-03-06 20:33:21', '', 'Efectivo', 2, 'En Mesa', 1, 1, 1, 1, NULL),
(12, 00010012, NULL, 30, 50, '2025-03-06 20:44:17', 'TESTE ', 'Efectivo', 20, 'En Mesa', 1, 1, 1, 1, NULL),
(13, 00010013, NULL, 82, 100, '2025-03-06 20:44:55', '', 'Efectivo', 18, 'En Mesa', 1, 1, 1, 1, NULL),
(14, 00010014, NULL, 34, 50, '2025-03-06 21:26:19', '', 'Efectivo', 16, 'En Mesa', 1, 1, 1, 1, NULL),
(15, 00010015, NULL, 6, 20, '2025-03-06 21:42:34', '', 'Efectivo', 14, 'En Mesa', 1, 1, 1, 1, NULL),
(16, 00000001, NULL, 77, 80, '2025-03-07 19:16:05', '', 'Efectivo', 3, 'En Mesa', 1, 1, 1, 1, NULL),
(17, 00000002, NULL, 48, 50, '2025-03-07 19:20:11', '', 'Efectivo', 2, 'En Mesa', 1, 1, 1, 1, NULL),
(18, 00000003, NULL, 36, 50, '2025-03-07 19:24:24', '', 'Efectivo', 14, 'En Mesa', 1, 1, 1, 1, 59),
(19, 00000004, NULL, 24, 50, '2025-03-07 19:39:04', '', 'Efectivo', 26, 'En Mesa', 0, 2, 2, 1, 59),
(20, 00000005, NULL, 24, 28, '2025-03-07 21:11:06', '', 'Efectivo', 4, 'En Mesa', 1, 1, 1, 1, 59),
(21, 00000006, NULL, 30, 50, '2025-03-07 21:28:57', '', 'Efectivo', 20, 'En Mesa', 1, 1, 1, 1, 59),
(22, 00000007, NULL, 24, 50, '2025-03-07 21:54:18', '', 'Efectivo', 26, 'En Mesa', 1, 1, 1, 1, 59),
(23, 00000007, NULL, 18, 122, '2025-03-07 21:59:49', '', 'Efectivo', 104, 'En Mesa', 1, 1, 1, 1, 59);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `arqueo_caja`
--
ALTER TABLE `arqueo_caja`
  ADD PRIMARY KEY (`id`),
  ADD KEY `arqueo_caja_id_usuario_foreign` (`id_usuario`),
  ADD KEY `fk_arqueo_caja` (`id_caja`);

--
-- Indices de la tabla `cajas`
--
ALTER TABLE `cajas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_compra_usuario` (`id_usuario`),
  ADD KEY `fk_compra_proveedor` (`id_proveedor`);

--
-- Indices de la tabla `detalle_compra`
--
ALTER TABLE `detalle_compra`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_detalle_compra_producto` (`id_producto`),
  ADD KEY `fk_detalle_compra_compra` (`id_compra`);

--
-- Indices de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_producto` (`id_producto`),
  ADD KEY `fk_venta` (`id_venta`);

--
-- Indices de la tabla `meseros`
--
ALTER TABLE `meseros`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_mesero` (`id_mesero`),
  ADD KEY `id_cliente` (`id_cliente`),
  ADD KEY `id_vendedor` (`id_vendedor`),
  ADD KEY `id_arqueo_caja` (`id_arqueo_caja`) USING BTREE;

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `arqueo_caja`
--
ALTER TABLE `arqueo_caja`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT de la tabla `cajas`
--
ALTER TABLE `cajas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `compras`
--
ALTER TABLE `compras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `detalle_compra`
--
ALTER TABLE `detalle_compra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de la tabla `meseros`
--
ALTER TABLE `meseros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `arqueo_caja`
--
ALTER TABLE `arqueo_caja`
  ADD CONSTRAINT `arqueo_caja_id_usuario_foreign` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`),
  ADD CONSTRAINT `fk_arqueo_caja` FOREIGN KEY (`id_caja`) REFERENCES `cajas` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `compras`
--
ALTER TABLE `compras`
  ADD CONSTRAINT `fk_compra_proveedor` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedor` (`id`),
  ADD CONSTRAINT `fk_compra_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `detalle_compra`
--
ALTER TABLE `detalle_compra`
  ADD CONSTRAINT `fk_detalle_compra_compra` FOREIGN KEY (`id_compra`) REFERENCES `compras` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_detalle_compra_producto` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD CONSTRAINT `fk_producto` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_venta` FOREIGN KEY (`id_venta`) REFERENCES `ventas` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `fk_ventas_arqueo_caja` FOREIGN KEY (`id_arqueo_caja`) REFERENCES `arqueo_caja` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_ventas_clientes` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_ventas_meseros` FOREIGN KEY (`id_mesero`) REFERENCES `meseros` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_ventas_usuarios` FOREIGN KEY (`id_vendedor`) REFERENCES `usuarios` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
