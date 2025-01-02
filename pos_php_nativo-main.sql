-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-12-2024 a las 01:53:11
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
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `estado` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`, `fecha`, `estado`) VALUES
(1, 'comidas', '2024-09-23 02:51:11', 1),
(2, 'bebidas', '2024-12-02 15:41:58', 1),
(3, 'horneados', '2024-09-23 02:58:10', 1),
(4, 'jugos ', '2024-09-23 02:58:38', 1),
(14, 'prueba', '2024-11-23 01:00:11', 0),
(15, 'ewfewf', '2024-11-23 01:00:07', 0),
(16, 'ergrg', '2024-11-23 01:00:05', 0),
(17, 'lolo', '2024-11-25 05:23:54', 0),
(18, 'mani', '2024-11-25 05:23:51', 0),
(19, 'nuevo1', '2024-11-25 05:23:49', 0),
(20, 'prueba5', '2024-11-25 05:23:46', 0),
(21, 'pan', '2024-11-25 04:54:13', 0),
(22, 'frutas', '2024-12-02 15:37:35', 1);

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
(1, 'S/N', '2024-11-07 00:55:24', 1),
(2, 'PEPE AGUILAR', '2024-11-04 04:53:46', 1),
(9, 'marcos galarza', '2024-11-23 05:00:09', 1),
(19, 'alberto fernado', '2024-11-05 04:33:40', 1),
(20, 'mario terrazas moye', '2024-11-05 04:36:54', 1),
(21, 'MARIO PERRAZAS', '2024-11-05 22:12:04', 1),
(23, 'carlos cesar', '2024-11-07 03:31:35', 1),
(24, 'pedro calama', '2024-11-13 04:29:15', 1),
(26, 'pepeeeeeeeeeeeeeeeeeee1', '2024-11-25 05:24:24', 0),
(27, 'nelson cepespedes', '2024-11-25 05:24:29', 1),
(28, 'pepe pomacusi', '2024-11-19 02:38:14', 1),
(29, 'checho miranda', '2024-11-25 05:24:43', 1),
(30, 'humberto duran', '2024-11-20 20:31:19', 0),
(31, 'yina rivero', '2024-11-20 22:26:05', 0),
(32, 'danny sossa', '2024-11-23 02:55:03', 0),
(33, 'fernado miranda', '2024-11-23 05:04:33', 1),
(34, 'marco  antonio', '2024-11-25 05:37:01', 1),
(35, 'sebastian moreno', '2024-11-25 05:41:38', 1),
(36, 'sebastian castedo', '2024-11-25 05:43:00', 1),
(37, 'lizbhet heredeia', '2024-11-25 05:43:28', 1),
(38, 'jaimez zoliz', '2024-11-25 05:43:56', 1),
(39, 'aldahir torrico chavez', '2024-11-25 05:44:44', 1),
(40, 'felipe fernandez', '2024-11-25 05:45:42', 1),
(41, 'hugo suarez', '2024-11-25 05:46:28', 1),
(42, 'sonia castedo', '2024-11-25 05:50:57', 1),
(43, 'edwin torrico', '2024-11-27 15:24:39', 1);

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
(1, 10001, 700.00, 1, 3, '2024-11-25 05:29:58', 1),
(2, 10002, 1250.00, 1, 3, '2024-11-25 05:30:09', 1),
(3, 10003, 1750.00, 1, 2, '2024-11-25 05:30:23', 1),
(4, 10004, 2000.00, 1, 2, '2024-11-25 05:32:53', 1),
(5, 10005, 750.00, 1, 3, '2024-11-25 05:33:01', 1),
(6, 10006, 15.00, 1, 3, '2024-11-25 06:01:49', 0),
(7, 10007, 30.00, 1, 1, '2024-11-25 06:02:20', 0),
(8, 10008, 600.00, 1, 3, '2024-11-25 06:02:56', 1),
(9, 10009, 110.00, 1, 2, '2024-12-02 15:43:29', 1),
(10, 10010, 350.00, 27, 3, '2024-12-08 17:03:10', 1);

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
(1, 39, 1, 'agua  vital chica 600ml', 50, 6.00, 300.00),
(2, 40, 1, 'coca cola popular', 50, 8.00, 400.00),
(3, 41, 2, 'coca cola 2l', 50, 12.00, 600.00),
(4, 42, 2, 'cabaña 2l', 50, 13.00, 650.00),
(5, 43, 3, 'cerveza paceña', 50, 15.00, 750.00),
(6, 44, 3, 'cerveza huari', 50, 20.00, 1000.00),
(7, 45, 4, 'cerveza cordillera', 50, 10.00, 500.00),
(8, 46, 4, 'vinos tinto ', 50, 30.00, 1500.00),
(9, 47, 5, 'agua  vital sin gas  2l', 50, 15.00, 750.00),
(10, 47, 6, 'agua  vital sin gas  2l', 1, 15.00, 15.00),
(11, 46, 7, 'vinos tinto ', 1, 30.00, 30.00),
(12, 41, 8, 'coca cola 2l', 50, 12.00, 600.00),
(13, 69, 9, 'un fardo de cocacola', 2, 55.00, 110.00),
(14, 41, 10, 'coca cola 2l', 50, 7.00, 350.00);

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
(1, 51, 1, 'vaso de chicha', 1, 5.00, 2.00, 5.00),
(2, 51, 2, 'vaso de chicha', 1, 5.00, 2.00, 5.00),
(3, 50, 2, 'vaso de maracuya', 1, 5.00, 2.00, 5.00),
(4, 49, 2, 'vaso de limonada', 1, 5.00, 2.00, 5.00),
(5, 42, 3, 'cabaña 2l', 1, 18.00, 13.00, 18.00),
(6, 43, 3, 'cerveza paceña', 1, 22.00, 15.00, 22.00),
(7, 2, 4, 'locro de gallina', 1, 15.00, 10.00, 15.00),
(8, 41, 4, 'coca cola 2l', 1, 18.00, 12.00, 18.00),
(9, 1, 5, 'sopa de mani', 20, 10.00, 7.00, 200.00),
(10, 3, 6, 'majadito de charque', 3, 15.00, 10.00, 45.00),
(11, 41, 6, 'coca cola 2l', 1, 18.00, 12.00, 18.00),
(12, 5, 7, 'lomo montado', 1, 20.00, 15.00, 20.00),
(13, 11, 8, 'picante mixto', 1, 25.00, 20.00, 25.00),
(14, 41, 8, 'coca cola 2l', 1, 18.00, 12.00, 18.00),
(15, 30, 9, 'planchita', 1, 100.00, 80.00, 100.00),
(16, 20, 10, 'milanesa picada de pollo', 1, 50.00, 40.00, 50.00),
(17, 21, 10, 'milanesa picada de carne', 1, 50.00, 40.00, 50.00),
(18, 19, 10, 'chicharron de chancho medio', 1, 45.00, 30.00, 45.00),
(19, 37, 10, 'jarra de mocochinchi entera', 1, 15.00, 10.00, 15.00),
(20, 30, 11, 'planchita', 1, 100.00, 80.00, 100.00),
(21, 40, 11, 'coca cola popular', 1, 10.00, 8.00, 10.00),
(22, 14, 12, 'pique macho entero', 1, 70.00, 50.00, 70.00),
(23, 6, 12, 'keperi', 1, 20.00, 15.00, 20.00),
(24, 49, 12, 'vaso de limonada', 1, 5.00, 2.00, 5.00),
(25, 6, 13, 'keperi', 1, 20.00, 15.00, 20.00),
(26, 1, 13, 'sopa de mani', 1, 10.00, 7.00, 10.00),
(27, 47, 13, 'agua  vital sin gas  2l', 1, 18.00, 15.00, 18.00),
(28, 44, 14, 'cerveza huari', 1, 25.00, 20.00, 25.00),
(29, 41, 14, 'coca cola 2l', 1, 18.00, 12.00, 18.00),
(30, 14, 15, 'pique macho entero', 1, 70.00, 50.00, 70.00),
(31, 22, 16, 'cola de lagarto', 1, 50.00, 30.00, 50.00),
(32, 41, 17, 'coca cola 2l', 1, 18.00, 12.00, 18.00),
(33, 39, 18, 'agua  vital chica 600ml', 1, 8.00, 6.00, 8.00),
(34, 41, 18, 'coca cola 2l', 1, 18.00, 12.00, 18.00),
(35, 30, 19, 'planchita', 1, 100.00, 80.00, 100.00),
(36, 18, 19, 'chicharrón de chancho entero', 1, 70.00, 50.00, 70.00),
(37, 7, 19, 'picante sencillo', 1, 20.00, 15.00, 20.00),
(38, 5, 19, 'lomo montado', 1, 20.00, 15.00, 20.00),
(39, 4, 19, 'majadito de pato', 1, 15.00, 10.00, 15.00),
(40, 10, 19, 'chicharron de pollo', 1, 20.00, 15.00, 20.00),
(41, 35, 20, 'jarra de limonada entera', 1, 15.00, 10.00, 15.00),
(42, 4, 20, 'majadito de pato', 10, 15.00, 10.00, 150.00),
(43, 51, 21, 'vaso de chicha', 1, 5.00, 2.00, 5.00),
(44, 28, 22, 'pacumuto', 1, 80.00, 50.00, 80.00),
(45, 1, 23, 'sopa de mani', 1, 10.00, 7.00, 10.00),
(46, 6, 23, 'keperi', 1, 20.00, 15.00, 20.00),
(47, 1, 24, 'sopa de mani', 1, 10.00, 7.00, 10.00),
(48, 2, 24, 'locro de gallina', 1, 15.00, 10.00, 15.00),
(49, 30, 24, 'planchita', 1, 100.00, 80.00, 100.00),
(50, 11, 25, 'picante mixto', 1, 25.00, 20.00, 25.00),
(51, 12, 25, 'picante de lengua', 1, 25.00, 20.00, 25.00),
(52, 13, 25, 'chorrellana', 1, 25.00, 20.00, 25.00),
(53, 14, 26, 'pique macho entero', 1, 70.00, 50.00, 70.00),
(54, 1, 27, 'sopa de mani', 1, 10.00, 7.00, 10.00),
(55, 2, 28, 'locro de gallina', 1, 15.00, 10.00, 15.00),
(56, 29, 29, 'costilla de cordero', 1, 80.00, 50.00, 80.00),
(57, 27, 30, 'pato medio', 1, 80.00, 50.00, 80.00),
(58, 26, 30, 'pato entero', 1, 160.00, 130.00, 160.00),
(59, 1, 31, 'sopa de mani', 1, 10.00, 7.00, 10.00),
(60, 49, 32, 'vaso de limonada', 1, 5.00, 2.00, 5.00),
(61, 8, 33, 'milaneza de pollo', 1, 20.00, 15.00, 20.00),
(62, 24, 33, 'chancho a la cruz', 1, 60.00, 50.00, 60.00),
(63, 23, 33, 'chicharrón de surubí', 1, 60.00, 40.00, 60.00),
(64, 22, 33, 'cola de lagarto', 1, 50.00, 30.00, 50.00),
(65, 22, 34, 'cola de lagarto', 1, 50.00, 30.00, 50.00),
(66, 21, 34, 'milanesa picada de carne', 1, 50.00, 40.00, 50.00),
(67, 4, 35, 'majadito de pato', 1, 15.00, 10.00, 15.00),
(68, 6, 35, 'keperi', 1, 20.00, 15.00, 20.00),
(69, 14, 36, 'pique macho entero', 1, 70.00, 50.00, 70.00),
(70, 15, 36, 'pique macho medio', 1, 45.00, 30.00, 45.00),
(71, 16, 36, 'charque entero', 1, 80.00, 60.00, 80.00),
(72, 1, 37, 'sopa de mani', 1, 10.00, 7.00, 10.00),
(73, 2, 37, 'locro de gallina', 1, 15.00, 10.00, 15.00),
(74, 15, 38, 'pique macho medio', 1, 45.00, 30.00, 45.00),
(75, 16, 39, 'charque entero', 1, 80.00, 60.00, 80.00),
(76, 4, 40, 'majadito de pato', 1, 15.00, 10.00, 15.00),
(77, 5, 40, 'lomo montado', 1, 20.00, 15.00, 20.00),
(78, 7, 41, 'picante sencillo', 1, 20.00, 15.00, 20.00),
(79, 6, 41, 'keperi', 1, 20.00, 15.00, 20.00),
(80, 7, 42, 'picante sencillo', 1, 20.00, 15.00, 20.00),
(81, 7, 43, 'picante sencillo', 1, 20.00, 15.00, 20.00),
(82, 8, 43, 'milaneza de pollo', 1, 20.00, 15.00, 20.00),
(83, 8, 44, 'milaneza de pollo', 1, 20.00, 15.00, 20.00),
(84, 8, 45, 'milaneza de pollo', 1, 20.00, 15.00, 20.00),
(85, 19, 46, 'chicharron de chancho medio', 1, 45.00, 30.00, 45.00),
(86, 9, 47, 'milaneza de carne', 1, 20.00, 15.00, 20.00),
(87, 9, 48, 'milaneza de carne', 1, 20.00, 15.00, 20.00),
(88, 9, 49, 'milaneza de carne', 1, 20.00, 15.00, 20.00),
(89, 17, 50, 'charque medio', 1, 45.00, 30.00, 45.00),
(90, 44, 51, 'cerveza huari', 49, 25.00, 20.00, 1225.00),
(91, 2, 52, 'locro de gallina', 1, 15.00, 10.00, 15.00),
(92, 46, 53, 'vinos tinto ', 50, 45.00, 30.00, 2250.00),
(93, 51, 54, 'vaso de chicha', 16, 5.00, 2.00, 80.00),
(94, 10, 55, 'chicharron de pollo', 1, 20.00, 15.00, 20.00),
(95, 50, 56, 'vaso de maracuya', 1, 5.00, 2.00, 5.00),
(96, 30, 57, 'planchita', 1, 100.00, 80.00, 100.00),
(97, 19, 58, 'chicharron de chancho medio', 1, 45.00, 30.00, 45.00),
(98, 45, 59, 'cerveza cordillera', 1, 15.00, 10.00, 15.00),
(99, 15, 60, 'pique macho medio', 1, 45.00, 30.00, 45.00),
(100, 14, 61, 'pique macho entero', 1, 70.00, 50.00, 70.00),
(101, 48, 62, 'vaso de mocochinchi', 1, 5.00, 2.00, 5.00),
(102, 48, 63, 'vaso de mocochinchi', 1, 5.00, 2.00, 5.00),
(103, 39, 64, 'agua  vital chica 600ml', 1, 8.00, 6.00, 8.00),
(104, 10, 64, 'chicharron de pollo', 1, 20.00, 15.00, 20.00),
(105, 1, 65, 'sopa de mani', 3, 10.00, 7.00, 30.00),
(106, 41, 66, 'coca cola 2l', 1, 18.00, 12.00, 18.00),
(107, 14, 67, 'pique macho entero', 1, 70.00, 50.00, 70.00),
(108, 41, 67, 'coca cola 2l', 1, 18.00, 12.00, 18.00),
(109, 1, 68, 'sopa de mani', 1, 10.00, 7.00, 10.00),
(110, 1, 69, 'sopa de mani', 1, 10.00, 7.00, 10.00),
(111, 4, 70, 'majadito de pato', 1, 15.00, 10.00, 15.00),
(112, 45, 71, 'cerveza cordillera', 1, 15.00, 10.00, 15.00),
(113, 50, 72, 'vaso de maracuya', 1, 5.00, 2.00, 5.00),
(114, 1, 73, 'sopa de mani', 1, 10.00, 7.00, 10.00),
(115, 1, 74, 'sopa de mani', 1, 10.00, 7.00, 10.00),
(116, 1, 75, 'sopa de mani', 1, 10.00, 7.00, 10.00),
(117, 8, 76, 'milaneza de pollo', 1, 20.00, 15.00, 20.00),
(118, 1, 77, 'sopa de mani', 1, 10.00, 7.00, 10.00),
(119, 70, 78, 'Eco Broster pch', 1, 12.00, 9.00, 12.00),
(120, 70, 79, 'Eco Broster pch', 1, 12.00, 9.00, 12.00),
(121, 70, 80, 'Eco Broster pch', 1, 12.00, 9.00, 12.00),
(122, 70, 81, 'Eco Broster pch', 3, 12.00, 9.00, 36.00),
(123, 41, 82, 'coca cola 2l', 1, 18.00, 12.00, 18.00),
(124, 70, 83, 'Eco Broster pch', 3, 12.00, 9.00, 36.00),
(125, 70, 84, 'Eco Broster pch', 10, 12.00, 9.00, 120.00),
(126, 70, 85, 'Eco Broster pch', 1, 12.00, 9.00, 12.00),
(127, 77, 86, '1/4 BROASTER PIERNA', 1, 18.00, 12.00, 18.00);

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
(1, 'S/N', 's/n', ' 000-00-000', 's/n', 439, '2024-12-08 12:53:01', '2024-12-22 00:48:58', 1),
(2, 'Enrique Condori', '61335228', ' 776-34-882', 'moscú', 82, '2024-11-25 02:03:47', '2024-11-25 06:03:47', 1),
(3, 'andrea pacheco', '48758897 SC', ' 776-30-477', '2do anillo', 8, '2024-11-25 02:00:16', '2024-11-25 06:00:16', 1),
(4, 'alexander cespedes', '98945484', ' 776-30-484', 'barrio caminero', 25, '2024-12-08 13:09:46', '2024-12-08 17:09:46', 1),
(5, 'YOSELIN MAMANI QUIZPE', '747484768sc', ' 787-84-854', 'barrio cabañas', 8, '2024-12-02 11:45:18', '2024-12-02 15:45:18', 1),
(6, 'Lisbeth Heredia', '623423424', '613-35-235', 'Callle 16 de Julio', 10, '2024-11-25 01:59:56', '2024-11-25 05:59:56', 1),
(10, 'nuevo mesero', '45454545451', '752-25-555', 'el balcon', 0, '0000-00-00 00:00:00', '2024-11-23 05:13:02', 1),
(11, 'damris montalvo', '845415der', '776-30-454', 'los cusis', 4, '2024-11-25 01:35:09', '2024-12-02 15:53:17', 1),
(12, 'referf', 'referf', '787-45-415', 'refref', 0, '0000-00-00 00:00:00', '2024-11-25 05:28:41', 0),
(13, 'cesilia chore', 'ewfgfewf', '545-45-454', 'av virge de cotocoa', 1, '2024-11-22 21:50:05', '2024-11-23 05:12:52', 1),
(14, 'nuevo mesero2', '44545454', '555-65-656', 'wdwed', 1, '2024-11-27 11:25:21', '2024-12-08 16:15:50', 1);

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
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `inventariable` tinyint(4) NOT NULL,
  `estado` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `id_categoria`, `codigo`, `descripcion`, `imagen`, `stock`, `precio_venta`, `precio_compra`, `ventas`, `fecha`, `inventariable`, `estado`) VALUES
(1, 1, '101', 'sopa de mani', 'vistas/img/productos/101/845.png', 65, 10, 7, 35, '2024-12-07 03:34:43', 0, 1),
(2, 1, '102', 'locro de gallina', 'vistas/img/productos/102/485.png', 0, 15, 10, 5, '2024-11-25 06:04:22', 0, 1),
(3, 1, '103', 'majadito de charque', 'vistas/img/productos/103/784.png', 3, 15, 10, 3, '2024-11-25 05:35:55', 0, 1),
(4, 1, '104', 'majadito de pato', 'vistas/img/productos/104/370.png', 4, 15, 10, 14, '2024-12-02 20:02:05', 0, 1),
(5, 1, '105', 'lomo montado', 'vistas/img/productos/105/639.png', 13, 20, 15, 3, '2024-11-25 05:58:49', 0, 1),
(6, 1, '106', 'keperi', 'vistas/img/productos/106/341.png', 11, 20, 15, 5, '2024-11-25 05:58:56', 0, 1),
(7, 1, '107', 'picante sencillo', 'vistas/img/productos/107/494.png', 13, 20, 15, 4, '2024-11-25 05:59:09', 0, 1),
(8, 1, '108', 'milaneza de pollo', 'vistas/img/productos/108/260.png', 13, 20, 15, 5, '2024-12-07 03:32:38', 0, 1),
(9, 1, '109', 'milaneza de carne', 'vistas/img/productos/109/919.png', 14, 20, 15, 3, '2024-11-25 06:00:08', 0, 1),
(10, 1, '110', 'chicharron de pollo', 'vistas/img/productos/110/564.jpg', 16, 20, 15, 3, '2024-12-02 15:30:44', 0, 1),
(11, 1, '111', 'picante mixto', 'vistas/img/productos/111/878.png', 14, 25, 20, 2, '2024-11-25 05:55:53', 0, 1),
(12, 1, '112', 'picante de lengua', 'vistas/img/productos/112/243.png', 17, 25, 20, 1, '2024-11-25 05:55:53', 0, 1),
(13, 1, '113', 'chorrellana', 'vistas/img/productos/113/676.png', 19, 25, 20, 1, '2024-11-25 05:55:53', 0, 1),
(14, 1, '114', 'pique macho entero', 'vistas/img/productos/114/339.png', 13, 70, 50, 5, '2024-12-02 15:53:17', 0, 1),
(15, 1, '115', 'pique macho medio', 'vistas/img/productos/115/508.png', 16, 45, 30, 3, '2024-11-30 01:36:48', 0, 1),
(16, 1, '116', 'charque entero', 'vistas/img/productos/116/793.png', 18, 80, 60, 2, '2024-11-25 05:58:34', 0, 1),
(17, 1, '117', 'charque medio', 'vistas/img/productos/117/857.png', 19, 45, 30, 1, '2024-11-25 06:00:16', 0, 1),
(18, 1, '118', 'chicharrón de chancho entero', 'vistas/img/productos/118/617.png', 18, 70, 50, 1, '2024-11-25 05:46:28', 0, 1),
(19, 1, '119', 'chicharron de chancho medio', 'vistas/img/productos/119/234.png', 16, 45, 30, 3, '2024-11-27 15:24:39', 0, 1),
(20, 1, '120', 'milanesa picada de pollo', 'vistas/img/productos/120/678.png', 16, 50, 40, 1, '2024-11-25 05:37:22', 0, 1),
(21, 1, '121', 'milanesa picada de carne', 'vistas/img/productos/121/837.png', 17, 50, 40, 2, '2024-11-25 05:57:28', 0, 1),
(22, 1, '122', 'cola de lagarto', 'vistas/img/productos/122/741.png', 17, 50, 30, 3, '2024-11-25 05:57:28', 0, 1),
(23, 1, '123', 'chicharrón de surubí', 'vistas/img/productos/123/582.png', 18, 60, 40, 1, '2024-11-25 05:57:21', 0, 1),
(24, 1, '124', 'chancho a la cruz', 'vistas/img/productos/124/469.png', 18, 60, 50, 1, '2024-11-25 05:57:21', 0, 1),
(25, 1, '125', 'cordero', 'vistas/img/productos/125/913.png', 18, 80, 70, 0, '2024-11-25 05:08:30', 0, 1),
(26, 1, '126', 'pato entero', 'vistas/img/productos/126/898.png', 16, 160, 130, 1, '2024-11-25 05:56:48', 0, 1),
(27, 1, '127', 'pato medio', 'vistas/img/productos/127/431.png', 19, 80, 50, 1, '2024-11-25 05:56:48', 0, 1),
(28, 1, '128', 'pacumuto', 'vistas/img/productos/128/234.png', 16, 80, 50, 1, '2024-11-25 05:55:03', 0, 1),
(29, 1, '129', 'costilla de cordero', 'vistas/img/productos/129/255.png', 16, 80, 50, 1, '2024-11-25 05:56:33', 0, 1),
(30, 1, '130', 'planchita', 'vistas/img/productos/130/499.png', 11, 100, 80, 5, '2024-11-27 15:23:24', 0, 1),
(31, 4, '401', 'jarra de chicha entera', 'vistas/img/productos/401/240.png', 17, 15, 10, 0, '2024-11-25 05:08:30', 0, 1),
(32, 4, '402', 'jarra de chicha media', 'vistas/img/productos/402/880.png', 20, 8, 4, 0, '2024-11-24 21:40:38', 0, 1),
(33, 4, '403', 'jarra de maracuyá entera', 'vistas/img/productos/403/800.png', 19, 15, 10, 0, '2024-11-25 05:08:30', 0, 1),
(34, 4, '404', 'jarra de maracuya media', 'vistas/img/productos/404/275.png', 15, 8, 4, 0, '2024-11-25 05:08:30', 0, 1),
(35, 4, '405', 'jarra de limonada entera', 'vistas/img/productos/405/460.png', 14, 15, 10, 1, '2024-11-25 05:50:57', 0, 1),
(36, 4, '406', 'jarra de limonada media', 'vistas/img/productos/406/864.png', 17, 8, 4, 0, '2024-11-25 05:08:30', 0, 1),
(37, 4, '407', 'jarra de mocochinchi entera', 'vistas/img/productos/407/988.jpg', 14, 15, 10, 1, '2024-11-25 05:37:22', 0, 1),
(38, 4, '408', 'jarra de mocochinchi media', 'vistas/img/productos/408/262.jpg', 17, 8, 4, 0, '2024-11-25 05:41:01', 0, 0),
(39, 2, '201', 'agua  vital chica 600ml', 'vistas/img/productos/201/314.jpg', 48, 8, 6, 2, '2024-12-02 15:30:44', 1, 1),
(40, 2, '202', 'coca cola popular', 'vistas/img/productos/202/572.jpg', 49, 3, 2, 1, '2024-12-08 17:06:04', 1, 1),
(41, 2, '203', 'coca cola 2l', 'vistas/img/productos/203/922.jpg', 142, 12, 7, 8, '2024-12-08 17:03:10', 1, 1),
(42, 2, '204', 'cabaña 2l', 'vistas/img/productos/204/211.jpg', 49, 18, 13, 1, '2024-11-25 05:34:35', 1, 1),
(43, 2, '205', 'cerveza paceña', 'vistas/img/productos/205/918.jpg', 49, 22, 15, 1, '2024-11-25 05:34:35', 1, 1),
(44, 2, '206', 'cerveza huari', 'vistas/img/productos/206/447.jpg', 0, 25, 20, 50, '2024-11-25 06:03:47', 1, 1),
(45, 2, '207', 'cerveza cordillera', 'vistas/img/productos/207/655.jpg', 48, 15, 10, 2, '2024-12-02 20:02:17', 1, 1),
(46, 2, '208', 'vinos tinto ', 'vistas/img/productos/208/641.jpg', 0, 45, 30, 50, '2024-11-25 06:05:34', 1, 1),
(47, 2, '209', 'agua  vital sin gas  2l', 'vistas/img/productos/209/935.jpg', 49, 18, 15, 1, '2024-11-25 06:01:49', 1, 1),
(48, 4, '210', 'vaso de mocochinchi', 'vistas/img/productos/210/489.jpg', 28, 5, 2, 2, '2024-11-30 03:31:38', 0, 1),
(49, 4, '211', 'vaso de limonada', 'vistas/img/productos/211/658.jpg', 17, 5, 2, 3, '2024-11-25 05:57:07', 0, 1),
(50, 4, '212', 'vaso de maracuya', 'vistas/img/productos/212/891.jpg', 27, 5, 2, 3, '2024-12-02 20:02:22', 0, 1),
(51, 4, '213', 'vaso de chicha', 'vistas/img/productos/213/820.png', 0, 5, 2, 18, '2024-11-25 06:06:39', 0, 1),
(53, 1, '131', 'ECO  BRASA PCH', 'vistas/img/productos/131/417.jpg', 50, 12, 10, 0, '2024-12-21 23:57:02', 0, 0),
(64, 18, '1801', 'po', 'vistas/img/productos/default/anonymous.png', 0, 12, 10, 0, '2024-11-25 05:08:30', 1, 0),
(66, 1, '131', 'ECO  BRASA PCH', 'vistas/img/productos/131/417.jpg', 50, 12, 10, 0, '2024-12-21 23:57:02', 0, 0),
(67, 1, '132', 'Eco Broster pch', 'vistas/img/productos/132/457.jpg', 50, 12, 9, 0, '2024-12-08 16:55:00', 0, 0),
(68, 1, '131', 'ECO  BRASA PCH', 'vistas/img/productos/131/417.jpg', 50, 12, 10, 0, '2024-12-21 23:57:02', 0, 1),
(69, 2, '210', 'un fardo de cocacola', 'vistas/img/productos/default/anonymous.png', 2, 60, 55, 0, '2024-12-08 16:58:51', 1, 0),
(70, 1, '132', 'Eco Broster pch', 'vistas/img/productos/132/457.jpg', 49, 12, 9, 18, '2024-12-08 17:09:46', 0, 1),
(71, 1, '133', 'ENTERO BRASA', 'vistas/img/productos/133/973.jpg', 50, 80, 70, 0, '2024-12-21 23:52:59', 0, 0),
(72, 1, '133', 'ENTERO BRASA', 'vistas/img/productos/133/973.jpg', 50, 80, 70, 0, '2024-12-21 23:51:49', 0, 1),
(73, 1, '134', 'ENTERO BROASTER', 'vistas/img/productos/134/900.jpg', 50, 80, 70, 0, '2024-12-21 23:55:50', 0, 1),
(76, 1, '135', '1/4 BRASA PIERNA', 'vistas/img/productos/135/654.jpg', 20, 18, 12, 0, '2024-12-22 00:05:03', 0, 1),
(77, 1, '136', '1/4 BROASTER PIERNA', 'vistas/img/productos/136/494.jpg', 51, 18, 12, -1, '2024-12-22 00:48:58', 0, 1),
(78, 1, '137', '1/4 BRASA PCHO', 'vistas/img/productos/137/829.jpg', 50, 18, 12, 0, '2024-12-22 00:25:09', 0, 1);

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
(1, 'Por defecto', 's/n', '00000000', 's/n', '2024-09-21 01:57:37', 1),
(2, 'juliana salvatierra', 'coca cola', '77630488', 'parque industrial', '2024-09-24 15:59:40', 1),
(3, 'julian peres', 'cerveza boliviana', '75028564', 'parque industrial', '2024-11-25 06:13:17', 1),
(4, 'ferf', 'fref', '45454545', 'jebwfewf', '2024-11-25 05:28:59', 0),
(5, 'fewrfewrf', 'erferf', '78689689', 'rgerg', '2024-11-25 05:28:56', 0),
(6, 'nuevo proveedor', 'empresanueva', '75028845', 'efwerwfg', '2024-11-25 05:29:01', 0),
(7, 'E nrique', 'Digicert', '23423523', 'Sin direccion', '2024-11-25 04:51:01', 0),
(8, 'martines', 'sin empresa', '78745454', 'moscu', '2024-12-08 17:00:54', 1);

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
(1, 'Maria mendoza', 'admin', '$2a$07$asxx54ahjppf45sd87a5auXBm1Vr2M1NV5t/zNQtGHGpS5fFirrbG', 'Administrador', 'vistas/img/usuarios/admin/266.jpg', 1, '2024-12-21 12:00:52', '2024-12-21 16:00:52', 1),
(2, 'yobana mendoza', 'yoba28', '$2a$07$asxx54ahjppf45sd87a5auGZEtGHuyZwm.Ur.FJvWLCql3nmsMbXy', 'Vendedor', 'vistas/img/usuarios/yoba28/681.jpg', 1, '2024-11-25 02:06:56', '2024-12-02 15:36:44', 1),
(3, 'zajir mendoza', 'zajir12', '$2a$07$asxx54ahjppf45sd87a5auGZEtGHuyZwm.Ur.FJvWLCql3nmsMbXy', 'Especial', 'vistas/img/usuarios/zajir12/199.jpg', 1, '2024-11-06 23:19:05', '2024-11-13 02:50:28', 1),
(15, 'enrique', 'enrique', '$2a$07$asxx54ahjppf45sd87a5auGZEtGHuyZwm.Ur.FJvWLCql3nmsMbXy', 'Administrador', '', 1, '0000-00-00 00:00:00', '2024-11-13 02:56:53', 1),
(18, 'vfrgvtrg', 'regvrtgv', '$2a$07$asxx54ahjppf45sd87a5aur9zsgQ/3vwR/ayhoPAxu.jTBJJcVfM.', 'Administrador', '', 0, '0000-00-00 00:00:00', '2024-11-25 05:29:14', 0),
(19, 'erfer', 'ferfrf', '$2a$07$asxx54ahjppf45sd87a5au/JtQTHjN2zVDzVwAMKwgt8iHv4qCIMe', 'Administrador', '', 1, '0000-00-00 00:00:00', '2024-11-25 05:29:18', 0),
(20, 'ewfwef', 'erfer', '$2a$07$asxx54ahjppf45sd87a5au.jIl/rmHmiCOm.KpamoMwU2HpHd4ica', 'Administrador', '', 1, '0000-00-00 00:00:00', '2024-11-25 05:29:22', 0),
(21, 'marcos galarza', 'marquito', '$2a$07$asxx54ahjppf45sd87a5auGZEtGHuyZwm.Ur.FJvWLCql3nmsMbXy', 'Administrador', 'vistas/img/usuarios/marquito/455.jpg', 1, '0000-00-00 00:00:00', '2024-11-13 03:10:38', 1),
(22, 'pepe galarza', '12dre', '$2a$07$asxx54ahjppf45sd87a5auGZEtGHuyZwm.Ur.FJvWLCql3nmsMbXy', 'Administrador', '', 0, '0000-00-00 00:00:00', '2024-11-13 03:04:17', 1),
(23, 'mario ', 'mario', '$2a$07$asxx54ahjppf45sd87a5auGZEtGHuyZwm.Ur.FJvWLCql3nmsMbXy', 'Administrador', '', 1, '2024-11-12 22:15:06', '2024-11-13 03:12:27', 0),
(24, 'roberto bolaños', 'rober', '$2a$07$asxx54ahjppf45sd87a5au1gjqdU.ybWXdMxoN7YGHb9SmYjSf9na', 'Administrador', 'vistas/img/usuarios/rober/578.png', 0, '0000-00-00 00:00:00', '2024-11-25 05:29:32', 1),
(25, 'damaris montalvo', 'dama', '$2a$07$asxx54ahjppf45sd87a5auGZEtGHuyZwm.Ur.FJvWLCql3nmsMbXy', 'Administrador', '', 1, '2024-11-22 20:45:01', '2024-11-23 01:46:30', 0),
(26, 'Angela Nogales', 'agelita', '$2a$07$asxx54ahjppf45sd87a5aupEWanzXNWwA0/4j9qb2ws25ruWlUff.', 'Especial', 'vistas/img/usuarios/agelita/983.jpg', 0, '0000-00-00 00:00:00', '2024-12-08 16:03:30', 1),
(27, 'edwin', 'edwin1233', '$2a$07$asxx54ahjppf45sd87a5auGZEtGHuyZwm.Ur.FJvWLCql3nmsMbXy', 'Administrador', '', 1, '2024-12-08 12:07:34', '2024-12-08 16:07:34', 1),
(28, 'yina', 'yina12', '', 'administrador', '', 1, '0000-00-00 00:00:00', '2024-12-19 20:46:12', 1);

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
  `forma_atencion` varchar(200) DEFAULT NULL,
  `estado` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `codigo`, `id_mesero`, `id_cliente`, `id_vendedor`, `total`, `total_pagado`, `fecha`, `nota`, `tipo_pago`, `cambio`, `forma_atencion`, `estado`) VALUES
(1, 10001, 1, 2, 1, 5, 5, '2022-11-25 05:34:07', '', 'Efectivo', 0, 'En Mesa', 1),
(2, 10002, 1, 1, 1, 15, 15, '2023-11-25 05:34:21', '', 'Efectivo', 0, 'En Mesa', 1),
(3, 10003, 1, 1, 1, 40, 40, '2024-10-25 05:34:35', '', 'Efectivo', 0, 'En Mesa', 1),
(4, 10004, 11, 9, 1, 33, 40, '2024-11-25 05:35:09', '', 'Efectivo', 7, 'En Mesa', 1),
(5, 10005, 1, 27, 1, 200, 300, '2024-11-25 05:35:27', '', 'Efectivo', 100, 'En Mesa', 1),
(6, 10006, 1, 1, 1, 63, 63, '2024-11-25 05:35:55', '', 'Efectivo', 0, 'En Mesa', 1),
(7, 10007, 1, 1, 1, 20, 50, '2024-11-25 05:36:12', '', 'Efectivo', 30, 'En Mesa', 1),
(8, 10008, 5, 24, 1, 43, 50, '2024-11-25 05:36:34', '', 'Efectivo', 7, 'En Mesa', 1),
(9, 10009, 2, 34, 1, 100, 100, '2024-11-25 05:37:01', '', 'Efectivo', 0, 'En Mesa', 1),
(10, 10010, 1, 24, 1, 160, 160, '2024-11-25 05:37:22', '', 'Efectivo', 0, 'En Mesa', 1),
(11, 10011, 4, 35, 1, 110, 110, '2024-11-25 05:41:38', '', 'Efectivo', 0, 'En Mesa', 1),
(12, 10012, 1, 1, 1, 95, 95, '2024-11-25 05:42:02', '', 'Efectivo', 0, 'En Mesa', 1),
(13, 10013, 1, 36, 1, 48, 100, '2024-11-25 05:43:00', '', 'Efectivo', 52, 'En Mesa', 1),
(14, 10014, 1, 37, 1, 43, 100, '2024-11-25 05:43:28', '', 'Efectivo', 57, 'En Mesa', 1),
(15, 10015, 1, 38, 1, 70, 100, '2024-11-25 05:43:56', '', 'Efectivo', 30, 'En Mesa', 1),
(16, 10016, 1, 39, 1, 50, 100, '2024-11-25 05:44:44', 'SIN LIMON', 'Efectivo', 50, 'En Mesa', 1),
(17, 10017, 1, 1, 1, 18, 20, '2024-11-25 05:45:01', '', 'Efectivo', 2, 'En Mesa', 1),
(18, 10018, 1, 40, 1, 26, 26, '2024-11-25 05:45:42', '', 'Efectivo', 0, 'En Mesa', 1),
(19, 10019, 1, 41, 1, 245, 250, '2024-11-25 05:46:28', '', 'Efectivo', 5, 'Para Llevar', 1),
(20, 10020, 1, 42, 1, 165, 200, '2024-11-25 05:50:57', '', 'Efectivo', 35, 'En Mesa', 1),
(21, 10021, 1, 1, 1, 5, 10, '2024-11-25 05:54:30', '', 'Efectivo', 5, 'En Mesa', 0),
(22, 10022, 1, 1, 1, 80, 100, '2024-11-25 05:55:03', '', 'Efectivo', 20, 'En Mesa', 1),
(23, 10023, 1, 1, 1, 30, 50, '2024-11-25 05:55:16', '', 'Efectivo', 20, 'En Mesa', 1),
(24, 10024, 1, 1, 1, 125, 200, '2024-11-25 05:55:32', '', 'Efectivo', 75, 'En Mesa', 1),
(25, 10025, 1, 1, 1, 75, 100, '2024-11-25 05:55:53', '', 'Efectivo', 25, 'En Mesa', 1),
(26, 10026, 1, 1, 1, 70, 70, '2024-11-25 05:56:01', '', 'Efectivo', 0, 'En Mesa', 1),
(27, 10027, 1, 1, 1, 10, 50, '2024-11-25 05:56:09', '', 'Efectivo', 40, 'En Mesa', 1),
(28, 10028, 1, 1, 1, 15, 20, '2024-11-25 05:56:17', '', 'Efectivo', 5, 'En Mesa', 1),
(29, 10029, 1, 1, 1, 80, 100, '2024-11-25 05:56:33', '', 'Efectivo', 20, 'En Mesa', 1),
(30, 10030, 1, 1, 1, 240, 240, '2024-11-25 05:56:48', '', 'Efectivo', 0, 'En Mesa', 1),
(31, 10031, 1, 1, 1, 10, 10, '2024-11-25 05:56:59', '', 'Efectivo', 0, 'En Mesa', 1),
(32, 10032, 1, 1, 1, 5, 5, '2024-11-25 05:57:07', '', 'Efectivo', 0, 'En Mesa', 1),
(33, 10033, 1, 1, 1, 190, 190, '2024-11-25 05:57:21', '', 'Efectivo', 0, 'En Mesa', 1),
(34, 10034, 1, 1, 1, 100, 100, '2024-11-25 05:57:29', '', 'Efectivo', 0, 'En Mesa', 1),
(35, 10035, 1, 1, 1, 35, 100, '2024-11-25 05:57:39', '', 'Efectivo', 65, 'En Mesa', 1),
(36, 10036, 1, 1, 1, 195, 200, '2024-11-25 05:57:54', '', 'Efectivo', 5, 'En Mesa', 1),
(37, 10037, 1, 1, 1, 25, 50, '2024-11-25 05:58:11', '', 'Efectivo', 25, 'Para Llevar', 1),
(38, 10038, 1, 1, 1, 45, 50, '2024-11-25 05:58:25', '', 'QR', 5, 'Para Llevar', 1),
(39, 10039, 1, 1, 1, 80, 100, '2024-11-25 05:58:34', '', 'Efectivo', 20, 'En Mesa', 1),
(40, 10040, 1, 1, 1, 35, 40, '2024-11-25 05:58:49', '', 'Efectivo', 5, 'En Mesa', 1),
(41, 10041, 1, 1, 1, 40, 50, '2024-11-25 05:58:56', '', 'Efectivo', 10, 'En Mesa', 1),
(42, 10042, 1, 1, 1, 20, 20, '2024-11-25 05:59:02', '', 'Efectivo', 0, 'En Mesa', 1),
(43, 10043, 1, 1, 1, 40, 50, '2024-11-25 05:59:09', '', 'Efectivo', 10, 'En Mesa', 1),
(44, 10044, 1, 1, 1, 20, 20, '2024-11-25 05:59:22', '', 'Efectivo', 0, 'En Mesa', 1),
(45, 10045, 6, 1, 1, 20, 50, '2024-11-25 05:59:30', '', 'Efectivo', 30, 'En Mesa', 1),
(46, 10046, 6, 1, 1, 45, 50, '2024-11-25 05:59:39', '', 'Efectivo', 5, 'En Mesa', 1),
(47, 10047, 6, 1, 1, 20, 50, '2024-11-25 05:59:48', '', 'Efectivo', 30, 'En Mesa', 1),
(48, 10048, 6, 1, 1, 20, 50, '2024-11-25 05:59:56', '', 'Efectivo', 30, 'En Mesa', 1),
(49, 10049, 5, 1, 1, 20, 100, '2024-11-25 06:00:08', '', 'Efectivo', 80, 'En Mesa', 1),
(50, 10050, 3, 1, 1, 45, 50, '2024-11-25 06:00:16', '', 'Efectivo', 5, 'En Mesa', 1),
(51, 10051, 2, 37, 1, 1225, 1225, '2024-11-25 06:03:47', '', 'Efectivo', 0, 'En Mesa', 1),
(52, 10052, 1, 1, 1, 15, 15, '2024-11-25 06:04:22', '', 'Efectivo', 0, 'En Mesa', 1),
(53, 10053, 1, 38, 1, 2250, 2250, '2024-11-25 06:05:34', '', 'Efectivo', 0, 'En Mesa', 1),
(54, 10054, 4, 1, 1, 80, 100, '2024-11-25 06:06:10', '', 'Efectivo', 20, 'En Mesa', 1),
(55, 10055, 1, 1, 1, 20, 100, '2024-11-27 15:16:45', '', 'Efectivo', 80, 'En Mesa', 1),
(56, 10056, 1, 1, 1, 5, 10, '2024-11-27 15:21:04', '', 'Efectivo', 5, 'En Mesa', 1),
(57, 10057, 1, 1, 1, 100, 100, '2024-11-27 15:23:24', '', 'Efectivo', 0, 'En Mesa', 1),
(58, 10058, 4, 43, 1, 45, 50, '2024-11-27 15:24:39', '', 'Efectivo', 5, 'En Mesa', 1),
(59, 10059, 14, 1, 1, 15, 15, '2024-11-27 15:25:21', '', 'Efectivo', 0, 'En Mesa', 1),
(60, 10060, 1, 1, 1, 45, 50, '2024-11-30 01:36:48', '', 'Efectivo', 5, 'En Mesa', 1),
(61, 10061, 1, 1, 1, 70, 70, '2024-11-30 01:38:59', '', 'Efectivo', 0, 'En Mesa', 1),
(62, 10062, 1, 1, 1, 5, 5, '2024-11-30 03:01:34', '', 'Efectivo', 0, 'En Mesa', 1),
(63, 10063, 1, 1, 1, 5, 50, '2024-11-30 03:31:38', '', 'Efectivo', 45, 'En Mesa', 1),
(64, 10064, 1, 1, 1, 28, 50, '2024-12-02 15:30:44', '', 'Efectivo', 22, 'En Mesa', 1),
(65, 10065, 5, 1, 1, 30, 50, '2024-12-02 15:45:18', 'UNA SOPA SIN PAPAS', 'Efectivo', 20, 'En Mesa', 1),
(66, 10066, 1, 1, 1, 18, 20, '2024-12-02 15:46:14', '', 'Efectivo', 2, 'En Mesa', 1),
(67, 10067, 11, 20, 1, 88, 100, '2024-12-02 15:53:17', '', 'Efectivo', 12, 'En Mesa', 0),
(68, 10068, 1, 1, 1, 10, 10, '2024-12-02 20:01:43', '', 'Efectivo', 0, 'En Mesa', 1),
(69, 10069, 1, 1, 1, 10, 50, '2024-12-02 20:01:56', '', 'Efectivo', 40, 'En Mesa', 1),
(70, 10070, 1, 1, 1, 15, 100, '2024-12-02 20:02:05', '', 'Efectivo', 85, 'En Mesa', 1),
(71, 10071, 1, 1, 1, 15, 2500, '2024-12-02 20:02:17', '', 'Efectivo', 2485, 'En Mesa', 1),
(72, 10072, 1, 1, 1, 5, 10, '2024-12-02 20:02:22', '', 'Efectivo', 5, 'En Mesa', 1),
(73, 10073, 1, 1, 1, 10, 10, '2024-12-02 20:02:37', '', 'Efectivo', 0, 'En Mesa', 1),
(74, 10074, 1, 1, 1, 10, 10, '2024-12-07 03:32:18', '', 'Efectivo', 0, 'En Mesa', 1),
(75, 10075, 1, 1, 1, 10, 10, '2024-12-07 03:32:27', '', 'Efectivo', 0, 'En Mesa', 1),
(76, 10076, 1, 1, 1, 20, 20, '2024-12-07 03:32:38', '', 'Efectivo', 0, 'En Mesa', 1),
(77, 10077, 1, 1, 1, 10, 10, '2024-12-07 03:34:43', '', 'Efectivo', 0, 'En Mesa', 1),
(78, 10078, 1, 1, 27, 12, 12, '2024-12-08 16:26:28', '', 'Efectivo', 0, 'En Mesa', 1),
(79, 10079, 1, 1, 27, 12, 12, '2024-12-08 16:30:09', '', 'QR', 0, 'En Mesa', 0),
(80, 10080, 1, 1, 27, 12, 12, '2024-12-08 16:32:27', '', 'Efectivo', 0, 'En Mesa', 0),
(81, 10081, 1, 1, 27, 36, 36, '2024-12-08 16:37:38', '', 'Efectivo', 0, 'En Mesa', 1),
(82, 10082, 1, 1, 27, 18, 20, '2024-12-08 16:39:44', '', 'Efectivo', 2, 'En Mesa', 1),
(83, 10083, 1, 1, 27, 36, 40, '2024-12-08 16:41:55', 'PARA LLEVAR 1', 'Efectivo', 4, 'En Mesa', 1),
(84, 10084, 1, 1, 27, 120, 120, '2024-12-08 16:53:01', 'SE APLICO UN DESCUENTO', 'Efectivo', 0, 'En Mesa', 1),
(85, 10085, 4, 1, 27, 12, 12, '2024-12-08 17:09:46', '', 'Efectivo', 0, 'En Mesa', 1),
(86, 10086, 1, 1, 1, 18, 20, '2024-12-22 00:48:42', '', 'Efectivo', 2, 'En Mesa', 0);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT de la tabla `compras`
--
ALTER TABLE `compras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `detalle_compra`
--
ALTER TABLE `detalle_compra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT de la tabla `meseros`
--
ALTER TABLE `meseros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

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
