-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-11-2024 a las 12:23:42
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
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `categoria` text NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`, `fecha`) VALUES
(1, 'comidas', '2024-09-23 02:51:11'),
(2, 'bebidas', '2024-09-23 02:57:54'),
(3, 'horneados', '2024-09-23 02:58:10'),
(4, 'jugos ', '2024-09-23 02:58:38');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `fecha`) VALUES
(1, 'S/N', '2024-11-07 00:55:24'),
(2, 'PEPE AGUILAR', '2024-11-04 04:53:46'),
(9, 'marcos galarza', '2024-11-04 06:22:51'),
(19, 'alberto fernado', '2024-11-05 04:33:40'),
(20, 'mario terrazas moye', '2024-11-05 04:36:54'),
(21, 'MARIO PERRAZAS', '2024-11-05 22:12:04'),
(23, 'carlos cesar', '2024-11-07 03:31:35');

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
  `fecha_alta` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `compras`
--

INSERT INTO `compras` (`id`, `codigo`, `total`, `id_usuario`, `id_proveedor`, `fecha_alta`) VALUES
(1, 10001, 100.00, 1, 1, '2024-10-18 15:24:53'),
(2, 10002, 90.00, 1, 1, '2024-10-18 15:35:00'),
(3, 10003, 225.00, 1, 1, '2024-10-19 01:33:39'),
(4, 10004, 60.00, 1, 1, '2024-10-19 01:34:45'),
(5, 10005, 400.00, 1, 1, '2024-10-26 19:12:08'),
(6, 10006, 4.00, 2, 1, '2024-11-04 06:24:11'),
(11, 10007, 15.00, 1, 1, '2024-11-05 03:54:08'),
(13, 10008, 2.00, 1, 1, '2024-11-05 03:57:27'),
(14, 10009, 2.00, 1, 2, '2024-11-05 03:57:35'),
(15, 10010, 15.00, 1, 2, '2024-11-05 03:58:35'),
(16, 10011, 14.00, 1, 2, '2024-11-05 03:59:40'),
(19, 10012, 15900.00, 1, 1, '2024-11-07 00:12:06'),
(20, 10013, 1750.00, 1, 3, '2024-11-07 00:14:58');

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
(1, 48, 1, 'vaso de mocochinchi', 50, 2.00, 100.00),
(2, 46, 2, 'vinos tinto ', 2, 45.00, 90.00),
(3, 46, 3, 'vinos tinto ', 5, 45.00, 225.00),
(4, 46, 4, 'vinos tinto ', 2, 30.00, 60.00),
(5, 53, 5, 'pollo ala broaster economico', 50, 8.00, 400.00),
(6, 51, 6, 'vaso de chicha', 2, 2.00, 4.00),
(13, 51, 13, 'vaso de chicha', 1, 2.00, 2.00),
(14, 51, 14, 'vaso de chicha', 1, 2.00, 2.00),
(16, 4, 16, 'majadito de pato', 1, 10.00, 10.00),
(17, 38, 16, 'jarra de mocochinchi media', 1, 4.00, 4.00),
(20, 53, 19, 'pollo ala broaster economico', 100, 8.00, 800.00),
(21, 51, 19, 'vaso de chicha', 500, 2.00, 1000.00),
(22, 50, 19, 'vaso de maracuya', 100, 2.00, 200.00),
(23, 49, 19, 'vaso de limonada', 100, 2.00, 200.00),
(24, 47, 19, 'agua  vital sin gas  2l', 100, 15.00, 1500.00),
(25, 45, 19, 'cerveza cordillera', 100, 10.00, 1000.00),
(26, 44, 19, 'cerveza huari', 100, 20.00, 2000.00),
(27, 43, 19, 'cerveza paceña', 100, 15.00, 1500.00),
(28, 27, 19, 'pato medio', 100, 50.00, 5000.00),
(29, 3, 19, 'majadito de charque', 100, 10.00, 1000.00),
(30, 1, 19, 'sopa de mani', 100, 7.00, 700.00),
(31, 2, 19, 'locro de gallina', 100, 10.00, 1000.00),
(32, 44, 20, 'cerveza huari', 50, 20.00, 1000.00),
(33, 43, 20, 'cerveza paceña', 50, 15.00, 750.00);

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
(1, 1, 1, 'sopa de mani', 1, 10.00, 7.00, 10.00),
(2, 20, 2, 'milanesa picada de pollo', 1, 50.00, 40.00, 50.00),
(3, 51, 8, 'vaso de chicha', 1, 5.00, 2.00, 5.00),
(4, 46, 9, 'vinos tinto ', 1, 45.00, 30.00, 45.00),
(5, 47, 10, 'agua  vital sin gas  2l', 2, 18.00, 15.00, 36.00),
(6, 50, 10, 'vaso de maracuya', 1, 5.00, 2.00, 5.00),
(7, 47, 11, 'agua  vital sin gas  2l', 2, 18.00, 15.00, 36.00),
(8, 48, 11, 'vaso de mocochinchi', 1, 5.00, 2.00, 5.00),
(9, 1, 12, 'sopa de mani', 1, 10.00, 7.00, 10.00),
(10, 11, 12, 'picante mixto', 1, 25.00, 20.00, 25.00),
(11, 10, 12, 'chicharron de pollo', 1, 20.00, 15.00, 20.00),
(12, 9, 12, 'milaneza de carne', 1, 20.00, 15.00, 20.00),
(13, 8, 12, 'milaneza de pollo', 1, 20.00, 15.00, 20.00),
(14, 7, 12, 'picante sencillo', 2, 20.00, 15.00, 40.00),
(15, 51, 13, 'vaso de chicha', 1, 5.00, 2.00, 5.00),
(16, 50, 13, 'vaso de maracuya', 1, 5.00, 2.00, 5.00),
(17, 49, 13, 'vaso de limonada', 1, 5.00, 2.00, 5.00),
(18, 48, 13, 'vaso de mocochinchi', 1, 5.00, 2.00, 5.00),
(19, 47, 13, 'agua  vital sin gas  2l', 1, 18.00, 15.00, 18.00),
(20, 46, 13, 'vinos tinto ', 1, 45.00, 30.00, 45.00),
(21, 45, 13, 'cerveza cordillera', 1, 15.00, 10.00, 15.00),
(22, 44, 13, 'cerveza huari', 1, 25.00, 20.00, 25.00),
(23, 43, 13, 'cerveza paceña', 1, 22.00, 15.00, 22.00),
(24, 42, 13, 'cabaña 2l', 2, 18.00, 13.00, 36.00),
(25, 1, 14, 'sopa de mani', 1, 10.00, 7.00, 10.00),
(26, 46, 15, 'vinos tinto ', 1, 45.00, 30.00, 45.00),
(27, 51, 18, 'vaso de chicha', 1, 5.00, 2.00, 5.00),
(28, 1, 18, 'sopa de mani', 1, 10.00, 7.00, 10.00),
(29, 41, 18, 'coca cola 2l', 1, 18.00, 12.00, 18.00),
(34, 1, 22, 'sopa de mani', 1, 10.00, 7.00, 10.00),
(35, 5, 22, 'lomo montado', 1, 20.00, 15.00, 20.00),
(36, 3, 23, 'majadito de charque', 1, 15.00, 10.00, 15.00),
(37, 6, 23, 'keperi', 1, 20.00, 15.00, 20.00),
(38, 41, 23, 'coca cola 2l', 1, 18.00, 12.00, 18.00),
(39, 1, 24, 'sopa de mani', 1, 10.00, 7.00, 10.00),
(40, 45, 25, 'cerveza cordillera', 2, 15.00, 10.00, 30.00),
(41, 6, 26, 'keperi', 1, 20.00, 15.00, 20.00),
(44, 50, 29, 'vaso de maracuya', 1, 5.00, 2.00, 5.00),
(45, 49, 30, 'vaso de limonada', 1, 5.00, 2.00, 5.00),
(46, 51, 31, 'vaso de chicha', 1, 5.00, 2.00, 5.00),
(47, 44, 32, 'cerveza huari', 2, 25.00, 20.00, 50.00),
(48, 41, 33, 'coca cola 2l', 1, 18.00, 12.00, 18.00),
(49, 1, 33, 'sopa de mani', 1, 10.00, 7.00, 10.00),
(50, 49, 34, 'vaso de limonada', 1, 5.00, 2.00, 5.00),
(51, 30, 35, 'planchita', 1, 100.00, 80.00, 100.00),
(52, 51, 35, 'vaso de chicha', 1, 5.00, 2.00, 5.00),
(53, 2, 36, 'locro de gallina', 1, 15.00, 10.00, 15.00),
(54, 48, 37, 'vaso de mocochinchi', 1, 5.00, 2.00, 5.00),
(55, 53, 38, 'pollo ala broaster economico', 1, 12.00, 8.00, 12.00),
(56, 48, 38, 'vaso de mocochinchi', 1, 5.00, 2.00, 5.00),
(57, 51, 39, 'vaso de chicha', 1, 5.00, 2.00, 5.00),
(58, 51, 40, 'vaso de chicha', 1, 5.00, 2.00, 5.00),
(59, 53, 41, 'pollo ala broaster economico', 1, 12.00, 8.00, 12.00),
(60, 49, 42, 'vaso de limonada', 1, 5.00, 2.00, 5.00),
(61, 51, 43, 'vaso de chicha', 1, 5.00, 2.00, 5.00),
(62, 48, 43, 'vaso de mocochinchi', 1, 5.00, 2.00, 5.00),
(63, 47, 43, 'agua  vital sin gas  2l', 1, 18.00, 15.00, 18.00),
(64, 43, 43, 'cerveza paceña', 1, 22.00, 15.00, 22.00),
(65, 44, 43, 'cerveza huari', 1, 25.00, 20.00, 25.00),
(66, 4, 43, 'majadito de pato', 1, 15.00, 10.00, 15.00),
(67, 5, 43, 'lomo montado', 1, 20.00, 15.00, 20.00),
(68, 6, 43, 'keperi', 1, 20.00, 15.00, 20.00),
(69, 7, 43, 'picante sencillo', 1, 20.00, 15.00, 20.00),
(70, 10, 43, 'chicharron de pollo', 1, 20.00, 15.00, 20.00),
(71, 9, 43, 'milaneza de carne', 1, 20.00, 15.00, 20.00),
(72, 8, 43, 'milaneza de pollo', 1, 20.00, 15.00, 20.00),
(73, 12, 43, 'picante de lengua', 1, 25.00, 20.00, 25.00),
(74, 11, 43, 'picante mixto', 1, 25.00, 20.00, 25.00),
(75, 2, 43, 'locro de gallina', 1, 15.00, 10.00, 15.00),
(76, 1, 43, 'sopa de mani', 1, 10.00, 7.00, 10.00),
(77, 53, 44, 'pollo ala broaster economico', 1, 12.00, 8.00, 12.00),
(78, 50, 44, 'vaso de maracuya', 1, 5.00, 2.00, 5.00),
(79, 51, 44, 'vaso de chicha', 1, 5.00, 2.00, 5.00),
(80, 49, 44, 'vaso de limonada', 1, 5.00, 2.00, 5.00),
(81, 48, 44, 'vaso de mocochinchi', 1, 5.00, 2.00, 5.00),
(82, 53, 45, 'pollo ala broaster economico', 1, 12.00, 8.00, 12.00),
(83, 46, 45, 'vinos tinto ', 1, 45.00, 30.00, 45.00),
(84, 48, 45, 'vaso de mocochinchi', 1, 5.00, 2.00, 5.00),
(85, 51, 46, 'vaso de chicha', 1, 5.00, 2.00, 5.00),
(86, 48, 47, 'vaso de mocochinchi', 1, 5.00, 2.00, 5.00),
(87, 50, 48, 'vaso de maracuya', 1, 5.00, 2.00, 5.00),
(88, 51, 49, 'vaso de chicha', 1, 5.00, 2.00, 5.00),
(89, 53, 50, 'pollo ala broaster economico', 1, 12.00, 8.00, 12.00),
(90, 53, 51, 'pollo ala broaster economico', 1, 12.00, 8.00, 12.00),
(91, 53, 52, 'pollo ala broaster economico', 1, 12.00, 8.00, 12.00),
(92, 53, 53, 'pollo ala broaster economico', 1, 12.00, 8.00, 12.00),
(93, 53, 54, 'pollo ala broaster economico', 1, 12.00, 8.00, 12.00),
(94, 50, 54, 'vaso de maracuya', 1, 5.00, 2.00, 5.00),
(95, 51, 54, 'vaso de chicha', 1, 5.00, 2.00, 5.00),
(96, 49, 54, 'vaso de limonada', 1, 5.00, 2.00, 5.00),
(97, 48, 54, 'vaso de mocochinchi', 1, 5.00, 2.00, 5.00),
(98, 46, 54, 'vinos tinto ', 1, 45.00, 30.00, 45.00),
(99, 43, 54, 'cerveza paceña', 1, 22.00, 15.00, 22.00),
(100, 44, 54, 'cerveza huari', 1, 25.00, 20.00, 25.00),
(101, 38, 54, 'jarra de mocochinchi media', 1, 8.00, 4.00, 8.00),
(102, 37, 54, 'jarra de mocochinchi entera', 1, 15.00, 10.00, 15.00),
(103, 39, 54, 'agua  vital chica 600ml', 1, 8.00, 6.00, 8.00),
(104, 40, 54, 'coca cola popular', 1, 10.00, 8.00, 10.00),
(105, 41, 54, 'coca cola 2l', 1, 18.00, 12.00, 18.00),
(106, 42, 54, 'cabaña 2l', 1, 18.00, 13.00, 18.00),
(107, 53, 55, 'pollo ala broaster economico', 1, 12.00, 8.00, 12.00),
(108, 50, 55, 'vaso de maracuya', 4, 5.00, 2.00, 20.00),
(109, 51, 55, 'vaso de chicha', 4, 5.00, 2.00, 20.00),
(110, 53, 56, 'pollo ala broaster economico', 2, 12.00, 8.00, 24.00),
(111, 53, 57, 'pollo ala broaster economico', 1, 12.00, 8.00, 12.00),
(112, 50, 57, 'vaso de maracuya', 1, 5.00, 2.00, 5.00),
(113, 53, 58, 'pollo ala broaster economico', 1, 12.00, 8.00, 12.00),
(114, 50, 58, 'vaso de maracuya', 2, 5.00, 2.00, 10.00),
(115, 49, 58, 'vaso de limonada', 1, 5.00, 2.00, 5.00),
(116, 53, 59, 'pollo ala broaster economico', 1, 12.00, 8.00, 12.00),
(117, 50, 59, 'vaso de maracuya', 2, 5.00, 2.00, 10.00),
(118, 53, 60, 'pollo ala broaster economico', 1, 12.00, 8.00, 12.00),
(119, 50, 60, 'vaso de maracuya', 1, 5.00, 2.00, 5.00),
(120, 48, 60, 'vaso de mocochinchi', 1, 5.00, 2.00, 5.00),
(121, 46, 60, 'vinos tinto ', 1, 45.00, 30.00, 45.00),
(122, 44, 60, 'cerveza huari', 2, 25.00, 20.00, 50.00),
(123, 34, 60, 'jarra de maracuya media', 3, 8.00, 4.00, 24.00),
(124, 35, 60, 'jarra de limonada entera', 3, 15.00, 10.00, 45.00),
(125, 36, 60, 'jarra de limonada media', 2, 8.00, 4.00, 16.00),
(126, 37, 60, 'jarra de mocochinchi entera', 2, 15.00, 10.00, 30.00),
(127, 26, 60, 'pato entero', 2, 160.00, 130.00, 320.00),
(128, 27, 60, 'pato medio', 2, 80.00, 50.00, 160.00),
(129, 53, 61, 'pollo ala broaster economico', 1, 12.00, 8.00, 12.00),
(130, 50, 61, 'vaso de maracuya', 1, 5.00, 2.00, 5.00),
(131, 48, 61, 'vaso de mocochinchi', 1, 5.00, 2.00, 5.00),
(132, 44, 61, 'cerveza huari', 1, 25.00, 20.00, 25.00),
(133, 46, 61, 'vinos tinto ', 1, 45.00, 30.00, 45.00),
(134, 33, 61, 'jarra de maracuyá entera', 1, 15.00, 10.00, 15.00),
(135, 34, 61, 'jarra de maracuya media', 2, 8.00, 4.00, 16.00),
(136, 35, 61, 'jarra de limonada entera', 2, 15.00, 10.00, 30.00),
(137, 36, 61, 'jarra de limonada media', 1, 8.00, 4.00, 8.00),
(138, 37, 61, 'jarra de mocochinchi entera', 1, 15.00, 10.00, 15.00),
(139, 38, 61, 'jarra de mocochinchi media', 1, 8.00, 4.00, 8.00),
(140, 27, 61, 'pato medio', 3, 80.00, 50.00, 240.00),
(141, 26, 61, 'pato entero', 1, 160.00, 130.00, 160.00),
(142, 25, 61, 'cordero', 1, 80.00, 70.00, 80.00),
(143, 24, 61, 'chancho a la cruz', 1, 60.00, 50.00, 60.00),
(144, 23, 61, 'chicharrón de surubí', 1, 60.00, 40.00, 60.00),
(145, 28, 61, 'pacumuto', 3, 80.00, 50.00, 240.00),
(146, 29, 61, 'costilla de cordero', 3, 80.00, 50.00, 240.00),
(147, 30, 61, 'planchita', 2, 100.00, 80.00, 200.00),
(148, 31, 61, 'jarra de chicha entera', 2, 15.00, 10.00, 30.00),
(149, 51, 62, 'vaso de chicha', 1, 5.00, 2.00, 5.00),
(150, 50, 62, 'vaso de maracuya', 2, 5.00, 2.00, 10.00),
(151, 48, 63, 'vaso de mocochinchi', 1, 5.00, 2.00, 5.00),
(152, 53, 63, 'pollo ala broaster economico', 1, 12.00, 8.00, 12.00),
(153, 48, 64, 'vaso de mocochinchi', 1, 5.00, 2.00, 5.00),
(154, 53, 65, 'pollo ala broaster economico', 1, 12.00, 8.00, 12.00),
(155, 48, 65, 'vaso de mocochinchi', 1, 5.00, 2.00, 5.00),
(156, 53, 66, 'pollo ala broaster economico', 3, 12.00, 8.00, 36.00),
(157, 48, 66, 'vaso de mocochinchi', 1, 5.00, 2.00, 5.00),
(158, 53, 67, 'pollo ala broaster economico', 4, 12.00, 8.00, 48.00),
(159, 48, 67, 'vaso de mocochinchi', 5, 5.00, 2.00, 25.00),
(160, 44, 67, 'cerveza huari', 1, 25.00, 20.00, 25.00),
(161, 53, 68, 'pollo ala broaster economico', 1, 12.00, 8.00, 12.00),
(162, 53, 70, 'pollo ala broaster economico', 1, 12.00, 8.00, 12.00),
(163, 53, 71, 'pollo ala broaster economico', 1, 12.00, 8.00, 12.00),
(164, 53, 72, 'pollo ala broaster economico', 1, 12.00, 8.00, 12.00),
(165, 53, 73, 'pollo ala broaster economico', 1, 12.00, 8.00, 12.00),
(166, 21, 74, 'milanesa picada de carne', 1, 50.00, 40.00, 50.00),
(167, 53, 75, 'pollo ala broaster economico', 1, 12.00, 8.00, 12.00),
(168, 53, 76, 'pollo ala broaster economico', 1, 12.00, 8.00, 12.00),
(169, 53, 85, 'pollo ala broaster economico', 1, 12.00, 8.00, 12.00),
(170, 53, 86, 'pollo ala broaster economico', 1, 12.00, 8.00, 12.00),
(171, 51, 87, 'vaso de chicha', 1, 5.00, 2.00, 5.00),
(172, 50, 88, 'vaso de maracuya', 1, 5.00, 2.00, 5.00),
(173, 53, 89, 'pollo ala broaster economico', 1, 12.00, 8.00, 12.00),
(174, 53, 90, 'pollo ala broaster economico', 1, 12.00, 8.00, 12.00),
(175, 50, 91, 'vaso de maracuya', 1, 5.00, 2.00, 5.00),
(176, 53, 92, 'pollo ala broaster economico', 1, 12.00, 8.00, 12.00),
(177, 53, 93, 'pollo ala broaster economico', 1, 13.00, 8.00, 13.00),
(178, 50, 94, 'vaso de maracuya', 1, 5.00, 2.00, 5.00),
(179, 50, 95, 'vaso de maracuya', 1, 5.00, 2.00, 5.00),
(180, 46, 96, 'vinos tinto ', 1, 45.00, 30.00, 45.00),
(181, 51, 97, 'vaso de chicha', 1, 5.00, 2.00, 5.00),
(182, 9, 98, 'milaneza de carne', 1, 20.00, 15.00, 20.00),
(183, 46, 99, 'vinos tinto ', 1, 45.00, 30.00, 45.00),
(184, 48, 100, 'vaso de mocochinchi', 1, 5.00, 2.00, 5.00),
(185, 48, 101, 'vaso de mocochinchi', 1, 5.00, 2.00, 5.00),
(186, 3, 102, 'majadito de charque', 1, 15.00, 10.00, 15.00),
(191, 53, 106, 'pollo ala broaster economico', 1, 13.00, 8.00, 13.00),
(192, 53, 107, 'pollo ala broaster economico', 1, 13.00, 8.00, 13.00),
(193, 53, 108, 'pollo ala broaster economico', 1, 13.00, 8.00, 13.00),
(194, 53, 109, 'pollo ala broaster economico', 1, 13.00, 8.00, 13.00),
(195, 2, 110, 'locro de gallina', 1, 15.00, 10.00, 15.00),
(196, 40, 110, 'coca cola popular', 1, 10.00, 8.00, 10.00),
(197, 48, 111, 'vaso de mocochinchi', 1, 5.00, 2.00, 5.00),
(198, 53, 112, 'pollo ala broaster economico', 1, 13.00, 8.00, 13.00),
(199, 46, 113, 'vinos tinto ', 1, 45.00, 30.00, 45.00),
(200, 48, 114, 'vaso de mocochinchi', 1, 5.00, 2.00, 5.00),
(201, 45, 115, 'cerveza cordillera', 2, 15.00, 10.00, 30.00),
(202, 44, 116, 'cerveza huari', 2, 25.00, 20.00, 50.00),
(203, 53, 117, 'pollo ala broaster economico', 1, 13.00, 8.00, 13.00),
(204, 53, 118, 'pollo ala broaster economico', 1, 13.00, 8.00, 13.00),
(205, 12, 119, 'picante de lengua', 1, 25.00, 20.00, 25.00),
(206, 50, 120, 'vaso de maracuya', 1, 5.00, 2.00, 5.00),
(207, 45, 121, 'cerveza cordillera', 1, 15.00, 10.00, 15.00),
(208, 20, 122, 'milanesa picada de pollo', 1, 50.00, 40.00, 50.00),
(209, 1, 123, 'sopa de mani', 1, 10.00, 7.00, 10.00),
(210, 45, 124, 'cerveza cordillera', 1, 15.00, 10.00, 15.00),
(211, 1, 125, 'sopa de mani', 1, 10.00, 7.00, 10.00),
(212, 2, 126, 'locro de gallina', 1, 15.00, 10.00, 15.00),
(213, 1, 127, 'sopa de mani', 1, 10.00, 7.00, 10.00),
(214, 40, 127, 'coca cola popular', 1, 10.00, 8.00, 10.00),
(215, 51, 128, 'vaso de chicha', 1, 5.00, 2.00, 5.00),
(216, 1, 129, 'sopa de mani', 1, 10.00, 7.00, 10.00),
(217, 43, 130, 'cerveza paceña', 1, 22.00, 15.00, 22.00),
(218, 43, 131, 'cerveza paceña', 1, 22.00, 15.00, 22.00),
(219, 43, 132, 'cerveza paceña', 1, 22.00, 15.00, 22.00),
(220, 38, 133, 'jarra de mocochinchi media', 1, 8.00, 4.00, 8.00),
(221, 2, 134, 'locro de gallina', 1, 15.00, 10.00, 15.00),
(222, 3, 134, 'majadito de charque', 1, 15.00, 10.00, 15.00);

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
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `meseros`
--

INSERT INTO `meseros` (`id`, `nombre`, `documento`, `telefono`, `direccion`, `compras`, `ultima_compra`, `fecha`) VALUES
(1, 'S/N', 's/n', ' 000-00-000', 's/n', 242, '2024-11-07 07:21:35', '2024-11-07 11:21:35'),
(2, 'Enrique Condori', '61335228', ' 776-34-882', 'moscú', 32, '2024-10-29 23:22:50', '2024-11-03 21:25:25'),
(3, 'andrea pacheco', '48758897 SC', ' 776-30-477', '2do anillo', 7, '2024-11-05 18:12:04', '2024-11-05 22:12:04'),
(4, 'alexander cespedes', '98945484', ' 776-30-484', 'barrio caminero', 4, '2024-10-30 01:08:07', '2024-10-30 05:08:07'),
(5, 'YOSELIN MAMANI QUIZPE', '747484768sc', ' 787-84-854', 'barrio cabañas', 2, '2024-11-07 00:11:38', '2024-11-07 04:11:38'),
(6, 'Lisbeth Heredia', '623423424', '613-35-235', 'Callle 16 de Julio', 4, '2024-11-07 00:11:12', '2024-11-07 04:11:12');

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
  `precio_compra` int(11) NOT NULL,
  `ventas` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `id_categoria`, `codigo`, `descripcion`, `imagen`, `stock`, `precio_venta`, `precio_compra`, `ventas`, `fecha`) VALUES
(1, 1, '101', 'sopa de mani', 'vistas/img/productos/101/845.png', 102, 10, 7, 18, '2024-11-07 04:10:28'),
(2, 1, '102', 'locro de gallina', 'vistas/img/productos/102/485.png', 105, 15, 10, 15, '2024-11-07 11:21:35'),
(3, 1, '103', 'majadito de charque', 'vistas/img/productos/103/784.png', 106, 15, 10, 14, '2024-11-07 11:21:35'),
(4, 1, '104', 'majadito de pato', 'vistas/img/productos/104/370.png', 19, 15, 10, 2, '2024-11-05 03:59:40'),
(5, 1, '105', 'lomo montado', 'vistas/img/productos/105/639.png', 16, 20, 15, 4, '2024-10-27 14:30:16'),
(6, 1, '106', 'keperi', 'vistas/img/productos/106/341.png', 16, 20, 15, 4, '2024-10-27 14:30:16'),
(7, 1, '107', 'picante sencillo', 'vistas/img/productos/107/494.png', 17, 20, 15, 3, '2024-10-27 14:30:16'),
(8, 1, '108', 'milaneza de pollo', 'vistas/img/productos/108/260.png', 18, 20, 15, 2, '2024-10-27 14:30:16'),
(9, 1, '109', 'milaneza de carne', 'vistas/img/productos/109/919.png', 17, 20, 15, 3, '2024-11-05 01:38:27'),
(10, 1, '110', 'chicharron de pollo', 'vistas/img/productos/110/564.jpg', 18, 20, 15, 2, '2024-10-27 14:30:16'),
(11, 1, '111', 'picante mixto', 'vistas/img/productos/111/878.png', 16, 25, 20, 4, '2024-10-27 14:30:16'),
(12, 1, '112', 'picante de lengua', 'vistas/img/productos/112/243.png', 18, 25, 20, 2, '2024-11-07 00:55:01'),
(13, 1, '113', 'chorrellana', 'vistas/img/productos/113/676.png', 20, 25, 20, 0, '2024-09-23 04:40:58'),
(14, 1, '114', 'pique macho entero', 'vistas/img/productos/114/339.png', 18, 70, 50, 2, '2024-09-23 05:14:41'),
(15, 1, '115', 'pique macho medio', 'vistas/img/productos/115/508.png', 19, 45, 30, 1, '2024-09-24 19:44:11'),
(16, 1, '116', 'charque entero', 'vistas/img/productos/116/793.png', 20, 80, 60, 0, '2024-09-23 04:41:38'),
(17, 1, '117', 'charque medio', 'vistas/img/productos/117/857.png', 20, 45, 30, 0, '2024-09-23 04:42:02'),
(18, 1, '118', 'chicharrón de chancho entero', 'vistas/img/productos/118/617.png', 19, 70, 50, 1, '2024-09-25 02:02:23'),
(19, 1, '119', 'chicharron de chancho medio', 'vistas/img/productos/119/234.png', 19, 45, 30, 1, '2024-09-25 02:02:23'),
(20, 1, '120', 'milanesa picada de pollo', 'vistas/img/productos/120/678.png', 17, 50, 40, 3, '2024-11-07 00:55:56'),
(21, 1, '121', 'milanesa picada de carne', 'vistas/img/productos/121/837.png', 19, 50, 40, 1, '2024-11-04 04:38:16'),
(22, 1, '122', 'cola de lagarto', 'vistas/img/productos/122/741.png', 20, 50, 30, 0, '2024-09-23 04:44:48'),
(23, 1, '123', 'chicharrón de surubí', 'vistas/img/productos/123/582.png', 19, 60, 40, 1, '2024-10-30 08:57:55'),
(24, 1, '124', 'chancho a la cruz', 'vistas/img/productos/124/469.png', 19, 60, 50, 1, '2024-10-30 08:57:55'),
(25, 1, '125', 'cordero', 'vistas/img/productos/125/913.png', 18, 80, 70, 2, '2024-10-30 08:57:55'),
(26, 1, '126', 'pato entero', 'vistas/img/productos/126/898.png', 17, 160, 130, 3, '2024-10-30 08:57:55'),
(27, 1, '127', 'pato medio', 'vistas/img/productos/127/431.png', 115, 80, 50, 5, '2024-11-07 00:12:06'),
(28, 1, '128', 'pacumuto', 'vistas/img/productos/128/234.png', 17, 80, 50, 3, '2024-10-30 08:57:55'),
(29, 1, '129', 'costilla de cordero', 'vistas/img/productos/129/255.png', 17, 80, 50, 3, '2024-10-30 08:57:55'),
(30, 1, '130', 'planchita', 'vistas/img/productos/130/499.png', 17, 100, 80, 3, '2024-10-30 08:57:55'),
(31, 4, '401', 'jarra de chicha entera', 'vistas/img/productos/401/240.png', 17, 15, 10, 3, '2024-10-30 08:57:55'),
(32, 4, '402', 'jarra de chicha media', 'vistas/img/productos/402/880.png', 20, 8, 4, 0, '2024-09-23 15:53:45'),
(33, 4, '403', 'jarra de maracuyá entera', 'vistas/img/productos/403/800.png', 19, 15, 10, 1, '2024-10-30 08:57:55'),
(34, 4, '404', 'jarra de maracuya media', 'vistas/img/productos/404/275.png', 15, 8, 4, 5, '2024-10-30 08:57:55'),
(35, 4, '405', 'jarra de limonada entera', 'vistas/img/productos/405/460.png', 15, 15, 10, 5, '2024-10-30 08:57:55'),
(36, 4, '406', 'jarra de limonada media', 'vistas/img/productos/406/864.png', 17, 8, 4, 3, '2024-10-30 08:57:55'),
(37, 4, '407', 'jarra de mocochinchi entera', 'vistas/img/productos/407/988.jpg', 15, 15, 10, 5, '2024-10-30 08:57:55'),
(38, 4, '408', 'jarra de mocochinchi media', 'vistas/img/productos/408/850.jpg', 18, 8, 4, 3, '2024-11-07 04:11:38'),
(39, 2, '201', 'agua  vital chica 600ml', 'vistas/img/productos/201/314.jpg', 19, 8, 6, 1, '2024-10-28 01:02:35'),
(40, 2, '202', 'coca cola popular', 'vistas/img/productos/202/572.jpg', 17, 10, 8, 3, '2024-11-07 03:31:35'),
(41, 2, '203', 'coca cola 2l', 'vistas/img/productos/203/922.jpg', 14, 18, 12, 6, '2024-10-28 01:02:35'),
(42, 2, '204', 'cabaña 2l', 'vistas/img/productos/204/211.jpg', 14, 18, 13, 8, '2024-10-28 01:02:35'),
(43, 2, '205', 'cerveza paceña', 'vistas/img/productos/205/918.jpg', 154, 22, 15, 16, '2024-11-07 04:11:12'),
(44, 2, '206', 'cerveza huari', 'vistas/img/productos/206/447.jpg', 158, 25, 20, 12, '2024-11-07 00:32:26'),
(45, 2, '207', 'cerveza cordillera', 'vistas/img/productos/207/655.jpg', 96, 15, 10, 24, '2024-11-07 00:56:15'),
(46, 2, '208', 'vinos tinto ', 'vistas/img/productos/208/641.jpg', 11, 45, 30, 22, '2024-11-06 13:55:33'),
(47, 2, '209', 'agua  vital sin gas  2l', 'vistas/img/productos/209/935.jpg', 100, 18, 15, 12, '2024-11-07 00:12:06'),
(48, 4, '210', 'vaso de mocochinchi', 'vistas/img/productos/210/489.jpg', 30, 5, 2, 30, '2024-11-06 14:19:09'),
(49, 4, '211', 'vaso de limonada', 'vistas/img/productos/211/142.png', 100, 5, 2, 10, '2024-11-07 00:12:06'),
(50, 4, '212', 'vaso de maracuya', 'vistas/img/productos/212/630.png', 105, 5, 2, 25, '2024-11-07 00:55:35'),
(51, 4, '213', 'vaso de chicha', 'vistas/img/productos/213/796.png', 501, 5, 2, 33, '2024-11-07 04:01:45'),
(53, 1, '131', 'pollo ala broaster economico', 'vistas/img/productos/131/417.jpg', 98, 13, 8, 55, '2024-11-07 00:54:28');

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
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`id`, `nombre`, `empresa`, `telefono`, `direccion`, `fecha`) VALUES
(1, 'Por defecto', 's/n', '00000000', 's/n', '2024-09-21 01:57:37'),
(2, 'juliana salvatierra', 'coca cola', '77630488', 'parque industrial', '2024-09-24 15:59:40'),
(3, 'julian peres', 'cervecería boliviana Nacional sa', '75028564', 'parque industrial', '2024-11-07 00:14:20');

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
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `usuario`, `password`, `perfil`, `foto`, `estado`, `ultimo_login`, `fecha`) VALUES
(1, 'Maria mendoza', 'admin', '$2a$07$asxx54ahjppf45sd87a5auXBm1Vr2M1NV5t/zNQtGHGpS5fFirrbG', 'Administrador', 'vistas/img/usuarios/admin/266.jpg', 1, '2024-11-07 07:22:01', '2024-11-07 11:22:01'),
(2, 'yobana mendoza', 'yoba28', '$2a$07$asxx54ahjppf45sd87a5auGZEtGHuyZwm.Ur.FJvWLCql3nmsMbXy', 'Vendedor', 'vistas/img/usuarios/yoba28/681.jpg', 1, '2024-11-07 07:11:07', '2024-11-07 11:11:07'),
(3, 'zajir mendoza', 'zajir12', '$2a$07$asxx54ahjppf45sd87a5auGZEtGHuyZwm.Ur.FJvWLCql3nmsMbXy', 'Especial', 'vistas/img/usuarios/zajir12/199.jpg', 1, '2024-11-06 23:19:05', '2024-11-07 03:19:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `id_mesero` int(11) DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `id_vendedor` int(11) DEFAULT NULL,
  `total` float NOT NULL,
  `total_pagado` float DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `nota` varchar(300) DEFAULT NULL,
  `tipo_pago` varchar(100) DEFAULT NULL,
  `cambio` float DEFAULT NULL,
  `forma_atencion` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `codigo`, `id_mesero`, `id_cliente`, `id_vendedor`, `total`, `total_pagado`, `fecha`, `nota`, `tipo_pago`, `cambio`, `forma_atencion`) VALUES
(1, 10001, 1, 1, 1, 10, NULL, '2010-10-18 19:23:15', NULL, NULL, NULL, NULL),
(2, 10002, 1, 1, 1, 50, NULL, '2010-10-18 19:23:39', NULL, NULL, NULL, NULL),
(8, 10003, 2, 1, 1, 5, NULL, '2010-10-18 19:45:14', NULL, NULL, NULL, NULL),
(9, 10004, 2, 1, 1, 45, NULL, '2010-10-18 19:48:17', NULL, NULL, NULL, NULL),
(10, 10005, 1, 1, 1, 41, NULL, '2011-10-18 19:48:34', NULL, NULL, NULL, NULL),
(11, 10006, 2, 1, 1, 41, NULL, '2011-10-18 19:49:29', NULL, NULL, NULL, NULL),
(12, 10007, 1, 1, 1, 135, NULL, '2011-10-18 19:52:17', NULL, NULL, NULL, NULL),
(13, 10008, 2, 1, 1, 181, NULL, '2011-10-18 19:53:02', NULL, NULL, NULL, NULL),
(14, 10009, 2, 1, 1, 10, NULL, '2012-10-18 20:12:14', NULL, NULL, NULL, NULL),
(15, 10010, 1, 1, 1, 45, NULL, '2012-10-19 05:31:36', NULL, NULL, NULL, NULL),
(18, 10011, 1, 1, 1, 33, NULL, '2012-10-19 06:01:35', NULL, NULL, NULL, NULL),
(22, 10015, 2, 1, 1, 30, NULL, '2024-10-19 18:25:12', NULL, NULL, NULL, NULL),
(23, 10016, 3, 1, 1, 53, NULL, '2024-10-19 18:27:51', NULL, NULL, NULL, NULL),
(24, 10017, 1, 1, 1, 10, NULL, '2024-10-20 05:01:35', NULL, NULL, NULL, NULL),
(25, 10018, 1, 1, 1, 30, NULL, '2024-10-22 05:26:36', NULL, NULL, NULL, NULL),
(26, 10019, 1, 1, 1, 15, NULL, '2024-10-22 05:27:06', NULL, NULL, NULL, NULL),
(29, 10020, 3, 1, 1, 0, NULL, '2024-10-22 05:34:36', NULL, NULL, NULL, NULL),
(30, 10021, 1, 1, 1, 5, NULL, '2024-10-22 05:35:07', NULL, NULL, NULL, NULL),
(31, 10022, 1, 1, 1, 5, NULL, '2024-10-22 05:43:07', NULL, NULL, NULL, NULL),
(32, 10023, 1, 1, 1, 50, NULL, '2024-10-24 04:02:44', NULL, NULL, NULL, NULL),
(33, 10024, 1, 1, 1, 28, NULL, '2024-10-24 07:41:58', NULL, NULL, NULL, NULL),
(34, 10025, 1, 1, 1, 5, NULL, '2024-10-24 07:47:57', NULL, NULL, NULL, NULL),
(35, 10026, 2, 1, 1, 105, NULL, '2024-10-24 08:16:17', NULL, NULL, NULL, NULL),
(36, 10027, 1, 1, 1, 15, NULL, '2024-10-24 08:25:40', NULL, NULL, NULL, NULL),
(37, 10028, 1, 1, 1, 5, NULL, '2024-10-24 08:26:08', NULL, NULL, NULL, NULL),
(38, 10029, 1, 1, 1, 17, NULL, '2024-10-26 23:15:42', NULL, NULL, NULL, NULL),
(39, 10030, 1, 1, 1, 5, NULL, '2024-10-27 17:31:18', NULL, NULL, NULL, NULL),
(40, 10031, 1, 1, 1, 5, NULL, '2024-10-27 17:33:18', NULL, NULL, NULL, NULL),
(41, 10032, 1, 1, 1, 12, NULL, '2024-10-27 17:39:34', NULL, NULL, NULL, NULL),
(42, 10033, 1, 1, 1, 5, NULL, '2024-10-27 18:03:24', NULL, NULL, NULL, NULL),
(43, 10034, 1, 1, 1, 285, NULL, '2024-10-27 18:30:16', NULL, NULL, NULL, NULL),
(44, 10035, 1, 1, 1, 32, NULL, '2024-10-27 18:30:57', NULL, NULL, NULL, NULL),
(45, 10036, 1, 1, 1, 62, NULL, '2024-10-27 18:31:38', NULL, NULL, NULL, NULL),
(46, 10037, 1, 1, 1, 5, NULL, '2024-10-27 18:35:54', NULL, NULL, NULL, NULL),
(47, 10038, 1, 1, 1, 5, NULL, '2024-10-27 18:42:55', NULL, NULL, NULL, NULL),
(48, 10039, 1, 1, 2, 5, NULL, '2024-10-27 18:44:23', NULL, NULL, NULL, NULL),
(49, 10040, 1, 1, 2, 5, NULL, '2024-10-27 18:45:52', NULL, NULL, NULL, NULL),
(50, 10041, 1, 1, 2, 12, NULL, '2024-10-27 18:47:36', NULL, NULL, NULL, NULL),
(51, 10042, 1, 1, 1, 12, NULL, '2024-10-28 02:44:01', NULL, NULL, NULL, NULL),
(52, 10043, 1, 1, 1, 12, NULL, '2024-10-28 02:51:40', NULL, NULL, NULL, NULL),
(53, 10044, 1, 1, 1, 12, NULL, '2024-10-28 04:57:28', NULL, NULL, NULL, NULL),
(54, 10045, 1, 1, 1, 201, NULL, '2024-10-28 05:02:35', NULL, NULL, NULL, NULL),
(55, 10046, 2, 1, 1, 52, NULL, '2024-10-30 07:22:50', NULL, NULL, NULL, NULL),
(56, 10047, 1, 1, 1, 24, NULL, '2024-10-30 08:04:39', 'prueba de mi nota', 'Efectivo', NULL, NULL),
(57, 10048, 1, 1, 1, 17, NULL, '2024-10-30 08:10:28', 'purega', 'Efectivo', 3, NULL),
(58, 10049, 4, 1, 1, 27, NULL, '2024-10-30 09:08:07', 'EL POLLO QUE SEA PRESA PECHO', 'QR', 2, NULL),
(59, 10050, 1, 1, 1, 22, 30, '2024-10-30 11:49:39', 'hola', 'Efectivo', 8, NULL),
(60, 10051, 1, 1, 1, 712, 789, '2024-10-30 12:13:19', 'EL POLLO QUE SEA PRESA PECHO, COCA COLA 3L, ALITAS', 'Efectivo', 77, NULL),
(61, 10052, 1, 1, 1, 1494, 2000, '2024-10-30 13:03:35', 'TODOS LOS PEDIDOS DEBERÁN SER ENTREGADOS EN PLATOS DESECHABLES, INCLUYENDO LAS SALSAS CORRESPONDIENTES Y CUBIERTOS DESECHABLES PARA SU COMODIDAD.', 'Transferencia', 506, NULL),
(62, 10053, NULL, NULL, 1, 15, 20, '2024-11-03 23:01:14', 'pruebas hoy', 'QR', 5, NULL),
(63, 10054, 1, NULL, 1, 17, 20, '2024-11-03 23:52:04', 'moasd', 'QR', 3, NULL),
(64, 10055, 1, 1, 1, 5, 32, '2024-11-04 02:03:48', 'prueba', 'Efectivo', 27, 'En Mesa'),
(65, 10055, 1, 1, 1, 17, 23, '2024-11-04 02:04:24', 'sasd', 'Transferencia', 6, 'En Mesa'),
(66, 10056, 1, 1, 1, 41, 331, '2024-11-04 02:09:23', 'Con estos cambios, tu sistema debería manejar correctamente la situación en la que no se encuentran coincidencias para el autocompletado y asegurar que el ID del cliente se establezca.', 'Efectivo', 290, 'En Mesa'),
(67, 10057, 1, 1, 1, 98, 100, '2024-11-04 02:16:01', 'CON ESTOS CAMBIOS, TU SISTEMA DEBERíA MANEJAR\r\nCORRECTAMENTE LA SITUACIóN EN LA QUE NO SE\r\nENCUENTRAN COINCIDENCIAS PARA EL\r\nAUTOCOMPLETADO Y ASEGURAR QUE EL ID DEL CLIENTE\r\nSE ESTABLEZCA.', 'TRANSFERENCIA', 2, 'PARA LLEVAR'),
(68, 10058, 1, 1, 1, 12, 12, '2024-11-04 03:58:21', '', 'EFECTIVO', 0, 'EN MESA'),
(70, 10059, 1, 1, 1, 12, 12, '2024-11-04 04:01:09', '', 'EFECTIVO', 0, 'PARA LLEVAR'),
(71, 10060, 1, 1, 1, 12, 20, '2024-11-04 04:02:33', 'EL PEDIDO PONER ARROZ EN UN PLATO APARTE', 'EFECTIVO', 8, 'EN MESA'),
(72, 10061, 1, 1, 1, 12, 5, '2024-11-04 04:04:52', '', 'EFECTIVO', 0, 'EN MESA'),
(73, 10062, 1, 1, 1, 12, 20, '2024-11-04 04:06:41', '', 'EFECTIVO', 8, 'EN MESA'),
(74, 10063, 1, 1, 1, 50, 50, '2024-11-04 04:38:16', 'FDGDEG', 'EFECTIVO', 0, 'EN MESA'),
(75, 10064, 1, 1, 1, 12, 12, '2024-11-04 05:05:45', '', 'EFECTIVO', 0, 'EN MESA'),
(76, 10065, 1, 1, 1, 12, 12, '2024-11-04 05:15:45', '', 'EFECTIVO', 0, 'EN MESA'),
(85, 10066, 1, 1, 1, 12, 12, '2024-11-04 06:21:21', '', 'Efectivo', 0, 'En Mesa'),
(86, 10067, 1, 9, 1, 12, 12, '2024-11-04 06:22:51', '', 'Efectivo', 0, 'En Mesa'),
(87, 10068, 1, 1, 2, 5, 12, '2024-11-04 06:24:24', '', 'Efectivo', 7, 'En Mesa'),
(88, 10069, 1, 1, 2, 5, 21, '2024-11-04 06:24:44', '', 'Efectivo', 16, 'En Mesa'),
(89, 10070, 1, 1, NULL, 12, 12, '2024-11-04 06:25:44', '', 'Efectivo', 0, 'En Mesa'),
(90, 10071, 1, NULL, 1, 12, 12, '2024-11-04 06:55:00', '', 'Efectivo', 0, 'En Mesa'),
(91, 10072, 1, 1, 1, 5, 5, '2024-11-04 06:56:30', 'LOREM IPSUM IS SIMPLY DUMMY TEXT OF THE PRINTING AND TYPESETTING INDUSTRY. LOREM IPSUM HAS BEEN THE INDUSTRY\'S STANDARD DUMMY TEXT EVER SINCE THE 1500S, WHEN AN UNKNOWN PRINTER TOOK A GALLEY OF TYPE AND SCRAMBLED IT TO MAKE A TYPE SPECIMEN BOOK. IT HAS SURVIVED NOT ONLY FIVE CENTURIES, BUT ALSO THE ', 'Efectivo', 0, 'En Mesa'),
(92, 10073, 1, 1, 1, 12, 12, '2024-11-04 23:00:50', '', 'Efectivo', 0, 'En Mesa'),
(93, 10074, 6, 1, 1, 13, 13, '2024-11-05 01:37:14', '', 'Efectivo', 0, 'En Mesa'),
(94, 10075, 1, 1, 1, 5, 18, '2024-11-05 01:37:24', '', 'Efectivo', 13, 'En Mesa'),
(95, 10076, 1, 1, 1, 5, 23, '2024-11-05 01:37:35', '', 'QR', 18, 'Para Llevar'),
(96, 10077, 1, 1, 1, 45, 50, '2024-11-05 01:37:50', '', 'Transferencia', 5, 'Para Llevar'),
(97, 10078, 6, NULL, 1, 5, 50, '2024-11-05 01:38:16', 'RFGREG', 'Transferencia', 45, 'Para Llevar'),
(98, 10079, 6, 1, 1, 20, 50, '2024-11-05 01:38:27', '', 'Transferencia', 30, 'Para Llevar'),
(99, 10080, 3, 1, 1, 45, 50, '2024-11-05 01:38:44', '', 'QR', 5, 'Para Llevar'),
(100, 10081, NULL, 1, 1, 5, 50, '2024-11-05 01:39:38', '', 'QR', 45, 'Para Llevar'),
(101, 10082, NULL, 1, 1, 5, 50, '2024-11-05 01:39:45', '', 'Efectivo', 45, 'En Mesa'),
(102, 10083, 1, 9, 1, 15, 20, '2024-11-05 03:11:24', '', 'Efectivo', 5, 'En Mesa'),
(104, 10084, 1, 1, 1, 20, 20, '2024-11-05 04:20:35', '', 'Efectivo', 0, 'En Mesa'),
(105, 10085, 1, 1, 1, 20, 20, '2024-11-05 04:22:34', '', 'Efectivo', 0, 'En Mesa'),
(106, 10086, 1, 19, 1, 13, 13, '2024-11-05 04:33:40', '', 'Efectivo', 0, 'En Mesa'),
(107, 10087, 5, 19, 1, 13, 50, '2024-11-05 04:34:02', '', 'Efectivo', 37, 'En Mesa'),
(108, 10088, 1, 20, 1, 13, 13, '2024-11-05 04:36:54', '', 'Efectivo', 0, 'En Mesa'),
(109, 10089, 1, 1, 1, 13, 13, '2024-11-05 05:46:02', '', 'Efectivo', 0, 'En Mesa'),
(110, 10090, 3, 21, 1, 25, 25, '2024-11-05 22:12:04', '', 'Efectivo', 0, 'En Mesa'),
(111, 10091, 1, NULL, 1, 5, 32, '2024-11-06 00:20:17', '', 'Efectivo', 27, 'En Mesa'),
(112, 10092, 1, 1, 1, 0, 500, '2024-11-06 13:54:46', '', 'Efectivo', 487, 'En Mesa'),
(113, 10093, 1, 1, 1, 0, 90, '2024-11-06 13:55:33', '', 'Efectivo', 45, 'En Mesa'),
(114, 10094, 1, 1, 1, 5, 5, '2024-11-06 14:19:09', '', 'Efectivo', 0, 'En Mesa'),
(115, 10095, 1, 2, 1, 30, 30, '2024-11-07 00:31:44', '', 'Efectivo', 0, 'En Mesa'),
(116, 10096, 1, 1, 1, 50, 50, '2024-11-07 00:32:26', '', 'Efectivo', 0, 'En Mesa'),
(117, 10097, 1, 9, 2, 13, 13, '2024-11-07 00:40:24', '', 'Efectivo', 0, 'En Mesa'),
(118, 10098, 1, 1, 1, 13, 13, '2024-11-07 00:54:28', '', 'Efectivo', 0, 'En Mesa'),
(119, 10099, 1, 1, 1, 25, 25, '2024-11-07 00:55:01', '', 'Efectivo', 0, 'En Mesa'),
(120, 10100, 1, 1, 1, 5, 5, '2024-11-07 00:55:35', '', 'Efectivo', 0, 'En Mesa'),
(121, 10101, 1, 1, 1, 15, 20, '2024-11-07 00:55:42', '', 'Efectivo', 5, 'En Mesa'),
(122, 10102, 1, 1, 1, 50, 80, '2024-11-07 00:55:56', '', 'Efectivo', 30, 'En Mesa'),
(123, 10103, 1, 1, 1, 10, 10, '2024-11-07 00:56:05', '', 'Efectivo', 0, 'En Mesa'),
(124, 10104, 1, 1, 1, 15, 20, '2024-11-07 00:56:15', '', 'Efectivo', 5, 'En Mesa'),
(125, 10105, 1, 1, 1, 10, 10, '2024-11-07 00:56:26', '', 'Efectivo', 0, 'En Mesa'),
(126, 10106, 1, 1, 1, 15, 20, '2024-11-07 00:56:36', '', 'Efectivo', 5, 'En Mesa'),
(127, 10107, 1, 23, 1, 20, 50, '2024-11-07 03:31:35', 'SIN PAPAS', 'Efectivo', 30, 'En Mesa'),
(128, 10108, 1, 1, 1, 5, 5, '2024-11-07 04:01:45', '', 'Efectivo', 0, 'En Mesa'),
(129, 10109, 1, 1, 1, 10, 20, '2024-11-07 04:10:28', '', 'Efectivo', 10, 'En Mesa'),
(130, 10110, 1, 1, 1, 22, 22, '2024-11-07 04:10:39', '', 'Efectivo', 0, 'En Mesa'),
(131, 10111, 1, 1, 1, 22, 50, '2024-11-07 04:10:59', '', 'Efectivo', 28, 'En Mesa'),
(132, 10112, 6, 1, 1, 22, 50, '2024-11-07 04:11:12', '', 'Efectivo', 28, 'En Mesa'),
(133, 10113, 5, 1, 1, 8, 200, '2024-11-07 04:11:38', '', 'Efectivo', 192, 'En Mesa'),
(134, 10114, 1, 1, 2, 30, 50, '2024-11-07 11:21:35', '', 'Efectivo', 20, 'En Mesa');

--
-- Índices para tablas volcadas
--

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
  ADD KEY `id_vendedor` (`id_vendedor`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `compras`
--
ALTER TABLE `compras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `detalle_compra`
--
ALTER TABLE `detalle_compra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=223;

--
-- AUTO_INCREMENT de la tabla `meseros`
--
ALTER TABLE `meseros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- Restricciones para tablas volcadas
--

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
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `fk_ventas_clientes` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_ventas_meseros` FOREIGN KEY (`id_mesero`) REFERENCES `meseros` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_ventas_usuarios` FOREIGN KEY (`id_vendedor`) REFERENCES `usuarios` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
