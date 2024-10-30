-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-10-2024 a las 10:05:00
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
-- Base de datos: `pos2`
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
  `documento` varchar(11) NOT NULL,
  `telefono` text NOT NULL,
  `direccion` text NOT NULL,
  `compras` int(11) NOT NULL,
  `ultima_compra` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `documento`, `telefono`, `direccion`, `compras`, `ultima_compra`, `fecha`) VALUES
(1, 'publico en general', 's/n', ' 000-00-000', 's/n', 163, '2024-10-30 04:57:55', '2024-10-30 08:57:55'),
(2, 'axel justitiano', '8485456', ' 776-34-88_', 'moscu', 32, '2024-10-29 23:22:50', '2024-10-30 03:22:50'),
(3, 'andrea pacheco', '48758897 SC', ' 776-30-477', '2do anillo', 4, '2024-10-21 21:34:36', '2024-10-22 01:34:36'),
(4, 'alexander cespedes', '98945484', ' 776-30-484', 'barrio caminero', 4, '2024-10-30 01:08:07', '2024-10-30 05:08:07'),
(5, 'china', '747484768sc', '787-84-854', 'barrio cabañas', 0, '0000-00-00 00:00:00', '2024-10-27 23:50:50');

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
(5, 10005, 400.00, 1, 1, '2024-10-26 19:12:08');

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
(5, 53, 5, 'pollo ala broaster economico', 50, 8.00, 400.00);

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
(30, 46, 19, 'vinos tinto ', 2, 45.00, 30.00, 90.00),
(31, 3, 20, 'majadito de charque', 1, 15.00, 10.00, 15.00),
(32, 41, 20, 'coca cola 2l', 1, 18.00, 12.00, 18.00),
(33, 51, 21, 'vaso de chicha', 1, 5.00, 2.00, 5.00),
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
(148, 31, 61, 'jarra de chicha entera', 2, 15.00, 10.00, 30.00);

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
(1, 1, '101', 'sopa de mani', 'vistas/img/productos/101/845.png', 6, 10, 7, 14, '2024-10-27 14:30:16'),
(2, 1, '102', 'locro de gallina', 'vistas/img/productos/102/485.png', 8, 15, 10, 12, '2024-10-27 14:30:16'),
(3, 1, '103', 'majadito de charque', 'vistas/img/productos/103/784.png', 8, 15, 10, 12, '2024-10-19 14:27:51'),
(4, 1, '104', 'majadito de pato', 'vistas/img/productos/104/370.png', 18, 15, 10, 2, '2024-10-27 14:30:16'),
(5, 1, '105', 'lomo montado', 'vistas/img/productos/105/639.png', 16, 20, 15, 4, '2024-10-27 14:30:16'),
(6, 1, '106', 'keperi', 'vistas/img/productos/106/341.png', 16, 20, 15, 4, '2024-10-27 14:30:16'),
(7, 1, '107', 'picante sencillo', 'vistas/img/productos/107/494.png', 17, 20, 15, 3, '2024-10-27 14:30:16'),
(8, 1, '108', 'milaneza de pollo', 'vistas/img/productos/108/260.png', 18, 20, 15, 2, '2024-10-27 14:30:16'),
(9, 1, '109', 'milaneza de carne', 'vistas/img/productos/109/919.png', 18, 20, 15, 2, '2024-10-27 14:30:16'),
(10, 1, '110', 'chicharron de pollo', 'vistas/img/productos/110/564.jpg', 18, 20, 15, 2, '2024-10-27 14:30:16'),
(11, 1, '111', 'picante mixto', 'vistas/img/productos/111/878.png', 16, 25, 20, 4, '2024-10-27 14:30:16'),
(12, 1, '112', 'picante de lengua', 'vistas/img/productos/112/243.png', 19, 25, 20, 1, '2024-10-27 14:30:16'),
(13, 1, '113', 'chorrellana', 'vistas/img/productos/113/676.png', 20, 25, 20, 0, '2024-09-23 04:40:58'),
(14, 1, '114', 'pique macho entero', 'vistas/img/productos/114/339.png', 18, 70, 50, 2, '2024-09-23 05:14:41'),
(15, 1, '115', 'pique macho medio', 'vistas/img/productos/115/508.png', 19, 45, 30, 1, '2024-09-24 19:44:11'),
(16, 1, '116', 'charque entero', 'vistas/img/productos/116/793.png', 20, 80, 60, 0, '2024-09-23 04:41:38'),
(17, 1, '117', 'charque medio', 'vistas/img/productos/117/857.png', 20, 45, 30, 0, '2024-09-23 04:42:02'),
(18, 1, '118', 'chicharrón de chancho entero', 'vistas/img/productos/118/617.png', 19, 70, 50, 1, '2024-09-25 02:02:23'),
(19, 1, '119', 'chicharron de chancho medio', 'vistas/img/productos/119/234.png', 19, 45, 30, 1, '2024-09-25 02:02:23'),
(20, 1, '120', 'milanesa picada de pollo', 'vistas/img/productos/120/678.png', 18, 50, 40, 2, '2024-10-18 15:23:39'),
(21, 1, '121', 'milanesa picada de carne', 'vistas/img/productos/121/837.png', 20, 50, 40, 0, '2024-09-23 16:06:45'),
(22, 1, '122', 'cola de lagarto', 'vistas/img/productos/122/741.png', 20, 50, 30, 0, '2024-09-23 04:44:48'),
(23, 1, '123', 'chicharrón de surubí', 'vistas/img/productos/123/582.png', 19, 60, 40, 1, '2024-10-30 08:57:55'),
(24, 1, '124', 'chancho a la cruz', 'vistas/img/productos/124/469.png', 19, 60, 50, 1, '2024-10-30 08:57:55'),
(25, 1, '125', 'cordero', 'vistas/img/productos/125/913.png', 18, 80, 70, 2, '2024-10-30 08:57:55'),
(26, 1, '126', 'pato entero', 'vistas/img/productos/126/898.png', 17, 160, 130, 3, '2024-10-30 08:57:55'),
(27, 1, '127', 'pato medio', 'vistas/img/productos/127/431.png', 15, 80, 50, 5, '2024-10-30 08:57:55'),
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
(38, 4, '408', 'jarra de mocochinchi media', 'vistas/img/productos/408/850.jpg', 18, 8, 4, 2, '2024-10-30 08:57:55'),
(39, 2, '201', 'agua  vital chica 600ml', 'vistas/img/productos/201/314.jpg', 19, 8, 6, 1, '2024-10-28 01:02:35'),
(40, 2, '202', 'coca cola popular', 'vistas/img/productos/202/572.jpg', 19, 10, 8, 1, '2024-10-28 01:02:35'),
(41, 2, '203', 'coca cola 2l', 'vistas/img/productos/203/922.jpg', 14, 18, 12, 6, '2024-10-28 01:02:35'),
(42, 2, '204', 'cabaña 2l', 'vistas/img/productos/204/211.jpg', 14, 18, 13, 8, '2024-10-28 01:02:35'),
(43, 2, '205', 'cerveza paceña', 'vistas/img/productos/205/918.jpg', 7, 22, 15, 13, '2024-10-28 01:02:35'),
(44, 2, '206', 'cerveza huari', 'vistas/img/productos/206/447.jpg', 11, 25, 20, 9, '2024-10-30 08:57:55'),
(45, 2, '207', 'cerveza cordillera', 'vistas/img/productos/207/655.jpg', 0, 15, 10, 20, '2024-10-22 01:32:34'),
(46, 2, '208', 'vinos tinto ', 'vistas/img/productos/208/641.jpg', 14, 45, 30, 19, '2024-10-30 08:57:55'),
(47, 2, '209', 'agua  vital sin gas  2l', 'vistas/img/productos/209/935.jpg', 0, 18, 15, 12, '2024-10-27 14:30:16'),
(48, 4, '210', 'vaso de mocochinchi', 'vistas/img/productos/210/489.jpg', 43, 5, 2, 17, '2024-10-30 08:57:55'),
(49, 4, '211', 'vaso de limonada', 'vistas/img/productos/211/142.png', 0, 5, 2, 10, '2024-10-30 05:08:07'),
(50, 4, '212', 'vaso de maracuya', 'vistas/img/productos/212/630.png', 12, 5, 2, 18, '2024-10-30 08:57:55'),
(51, 4, '213', 'vaso de chicha', 'vistas/img/productos/213/796.png', 1, 5, 2, 29, '2024-10-30 03:22:50'),
(53, 1, '131', 'pollo ala broaster economico', 'vistas/img/productos/131/417.jpg', 33, 12, 8, 17, '2024-10-30 08:57:55');

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
(2, 'juliana salvatierra', 'coca cola', '77630488', 'parque industrial', '2024-09-24 15:59:40');

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
(1, 'Maria mendoza', 'admin', '$2a$07$asxx54ahjppf45sd87a5auXBm1Vr2M1NV5t/zNQtGHGpS5fFirrbG', 'Administrador', 'vistas/img/usuarios/admin/266.jpg', 1, '2024-10-27 21:33:55', '2024-10-28 01:33:55'),
(2, 'yobana mendoza', 'yoba28', '$2a$07$asxx54ahjppf45sd87a5auGZEtGHuyZwm.Ur.FJvWLCql3nmsMbXy', 'Vendedor', 'vistas/img/usuarios/yoba28/681.jpg', 1, '2024-10-27 10:43:37', '2024-10-27 14:43:37'),
(3, 'zajir mendoza', 'zajir12', '$2a$07$asxx54ahjppf45sd87a5auGZEtGHuyZwm.Ur.FJvWLCql3nmsMbXy', 'Especial', 'vistas/img/usuarios/zajir12/199.jpg', 1, '2024-10-18 21:56:36', '2024-10-19 01:56:36');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_vendedor` int(11) NOT NULL,
  `total` float NOT NULL,
  `total_pagado` float DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `nota` varchar(300) DEFAULT NULL,
  `tipo_pago` varchar(100) DEFAULT NULL,
  `cambio` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `codigo`, `id_cliente`, `id_vendedor`, `total`, `total_pagado`, `fecha`, `nota`, `tipo_pago`, `cambio`) VALUES
(1, 10001, 1, 1, 10, NULL, '2023-10-18 15:23:15', NULL, NULL, NULL),
(2, 10002, 1, 1, 50, NULL, '2024-10-18 15:23:39', NULL, NULL, NULL),
(8, 10003, 2, 1, 5, NULL, '2024-10-18 15:45:14', NULL, NULL, NULL),
(9, 10004, 2, 1, 45, NULL, '2024-10-18 15:48:17', NULL, NULL, NULL),
(10, 10005, 1, 1, 41, NULL, '2024-10-18 15:48:34', NULL, NULL, NULL),
(11, 10006, 2, 1, 41, NULL, '2024-10-18 15:49:29', NULL, NULL, NULL),
(12, 10007, 1, 1, 135, NULL, '2024-10-18 15:52:17', NULL, NULL, NULL),
(13, 10008, 2, 1, 181, NULL, '2024-10-18 15:53:02', NULL, NULL, NULL),
(14, 10009, 2, 1, 10, NULL, '2024-10-18 16:12:14', NULL, NULL, NULL),
(15, 10010, 1, 1, 45, NULL, '2024-10-19 01:31:36', NULL, NULL, NULL),
(18, 10011, 1, 1, 33, NULL, '2024-10-19 02:01:35', NULL, NULL, NULL),
(19, 10012, 1, 1, 90, NULL, '2024-10-19 02:53:32', NULL, NULL, NULL),
(20, 10013, 2, 2, 33, NULL, '2024-10-19 03:08:08', NULL, NULL, NULL),
(21, 10014, 1, 2, 5, NULL, '2024-10-19 03:21:09', NULL, NULL, NULL),
(22, 10015, 2, 1, 30, NULL, '2024-10-19 14:25:12', NULL, NULL, NULL),
(23, 10016, 3, 1, 53, NULL, '2024-10-19 14:27:51', NULL, NULL, NULL),
(24, 10017, 1, 1, 10, NULL, '2024-10-20 01:01:35', NULL, NULL, NULL),
(25, 10018, 1, 1, 30, NULL, '2024-10-22 01:26:36', NULL, NULL, NULL),
(26, 10019, 1, 1, 15, NULL, '2024-10-22 01:27:06', NULL, NULL, NULL),
(29, 10020, 3, 1, 0, NULL, '2024-10-22 01:34:36', NULL, NULL, NULL),
(30, 10021, 1, 1, 5, NULL, '2024-10-22 01:35:07', NULL, NULL, NULL),
(31, 10022, 1, 1, 5, NULL, '2024-10-22 01:43:07', NULL, NULL, NULL),
(32, 10023, 1, 1, 50, NULL, '2024-10-24 00:02:44', NULL, NULL, NULL),
(33, 10024, 1, 1, 28, NULL, '2024-10-24 03:41:58', NULL, NULL, NULL),
(34, 10025, 1, 1, 5, NULL, '2024-10-24 03:47:57', NULL, NULL, NULL),
(35, 10026, 2, 1, 105, NULL, '2024-10-24 04:16:17', NULL, NULL, NULL),
(36, 10027, 1, 1, 15, NULL, '2024-10-24 04:25:40', NULL, NULL, NULL),
(37, 10028, 1, 1, 5, NULL, '2024-10-24 04:26:08', NULL, NULL, NULL),
(38, 10029, 1, 1, 17, NULL, '2024-10-26 19:15:42', NULL, NULL, NULL),
(39, 10030, 1, 1, 5, NULL, '2024-10-27 13:31:18', NULL, NULL, NULL),
(40, 10031, 1, 1, 5, NULL, '2024-10-27 13:33:18', NULL, NULL, NULL),
(41, 10032, 1, 1, 12, NULL, '2024-10-27 13:39:34', NULL, NULL, NULL),
(42, 10033, 1, 1, 5, NULL, '2024-10-27 14:03:24', NULL, NULL, NULL),
(43, 10034, 1, 1, 285, NULL, '2024-10-27 14:30:16', NULL, NULL, NULL),
(44, 10035, 1, 1, 32, NULL, '2024-10-27 14:30:57', NULL, NULL, NULL),
(45, 10036, 1, 1, 62, NULL, '2024-10-27 14:31:38', NULL, NULL, NULL),
(46, 10037, 1, 1, 5, NULL, '2024-10-27 14:35:54', NULL, NULL, NULL),
(47, 10038, 1, 1, 5, NULL, '2024-10-27 14:42:55', NULL, NULL, NULL),
(48, 10039, 1, 2, 5, NULL, '2024-10-27 14:44:23', NULL, NULL, NULL),
(49, 10040, 1, 2, 5, NULL, '2024-10-27 14:45:52', NULL, NULL, NULL),
(50, 10041, 1, 2, 12, NULL, '2024-10-27 14:47:36', NULL, NULL, NULL),
(51, 10042, 1, 1, 12, NULL, '2024-10-27 22:44:01', NULL, NULL, NULL),
(52, 10043, 1, 1, 12, NULL, '2024-10-27 22:51:40', NULL, NULL, NULL),
(53, 10044, 1, 1, 12, NULL, '2024-10-28 00:57:28', NULL, NULL, NULL),
(54, 10045, 1, 1, 201, NULL, '2024-10-28 01:02:35', NULL, NULL, NULL),
(55, 10046, 2, 1, 52, NULL, '2024-10-30 03:22:50', NULL, NULL, NULL),
(56, 10047, 1, 1, 24, NULL, '2024-10-30 04:04:39', 'prueba de mi nota', 'Efectivo', NULL),
(57, 10048, 1, 1, 17, NULL, '2024-10-30 04:10:28', 'purega', 'Efectivo', 3),
(58, 10049, 4, 1, 27, NULL, '2024-10-30 05:08:07', 'EL POLLO QUE SEA PRESA PECHO', 'QR', 2),
(59, 10050, 1, 1, 22, 30, '2024-10-30 07:49:39', 'hola', 'Efectivo', 8),
(60, 10051, 1, 1, 712, 789, '2024-10-30 08:13:19', 'EL POLLO QUE SEA PRESA PECHO, COCA COLA 3L, ALITAS', 'Efectivo', 77),
(61, 10052, 1, 1, 1494, 2000, '2024-10-30 09:03:35', 'TODOS LOS PEDIDOS DEBERÁN SER ENTREGADOS EN PLATOS DESECHABLES, INCLUYENDO LAS SALSAS CORRESPONDIENTES Y CUBIERTOS DESECHABLES PARA SU COMODIDAD.', 'Transferencia', 506);

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
  ADD KEY `id_cliente` (`id_cliente`),
  ADD KEY `id_vendedor` (`id_vendedor`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `compras`
--
ALTER TABLE `compras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `detalle_compra`
--
ALTER TABLE `detalle_compra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
