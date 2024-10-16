-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-09-2024 a las 04:41:35
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
(1, 'comida', '2024-05-17 00:14:16'),
(2, 'bebidas', '2024-05-17 00:14:21'),
(3, 'HORNEADOS', '2024-05-17 00:14:41'),
(6, 'VINOS', '2024-07-22 15:12:21'),
(7, 'ef', '2024-07-25 15:32:36'),
(9, 'pruebasssssssss', '2024-08-11 23:56:18'),
(10, 'Categoría 1', '2024-08-11 04:00:00'),
(11, 'Categoría 2', '2024-08-11 04:01:00'),
(12, 'Categoría 3', '2024-08-11 04:02:00'),
(13, 'Categoría 4', '2024-08-11 04:03:00'),
(14, 'Categoría 5', '2024-08-11 04:04:00'),
(15, 'Categoría 6', '2024-08-11 04:05:00'),
(16, 'Categoría 7', '2024-08-11 04:06:00'),
(17, 'Categoría 8', '2024-08-11 04:07:00'),
(18, 'Categoría 9', '2024-08-11 04:08:00'),
(19, 'Categoría 10', '2024-08-11 04:09:00'),
(20, 'Categoría 11', '2024-08-11 04:10:00'),
(21, 'Categoría 12', '2024-08-11 04:11:00'),
(22, 'Categoría 13', '2024-08-11 04:12:00'),
(23, 'Categoría 14', '2024-08-11 04:13:00'),
(24, 'Categoría 15', '2024-08-11 04:14:00'),
(25, 'Categoría 16', '2024-08-11 04:15:00'),
(26, 'Categoría 17', '2024-08-11 04:16:00'),
(27, 'Categoría 18', '2024-08-11 04:17:00'),
(28, 'Categoría 19', '2024-08-11 04:18:00'),
(29, 'Categoría 20', '2024-08-11 04:19:00'),
(30, 'Categoría 21', '2024-08-11 04:20:00'),
(31, 'Categoría 22', '2024-08-11 04:21:00'),
(32, 'Categoría 23', '2024-08-11 04:22:00'),
(33, 'Categoría 24', '2024-08-11 04:23:00'),
(34, 'Categoría 25', '2024-08-11 04:24:00'),
(35, 'Categoría 26', '2024-08-11 04:25:00'),
(36, 'Categoría 27', '2024-08-11 04:26:00'),
(37, 'Categoría 28', '2024-08-11 04:27:00'),
(38, 'Categoría 29', '2024-08-11 04:28:00'),
(39, 'Categoría 30', '2024-08-11 04:29:00'),
(40, 'Categoría 31', '2024-08-11 04:30:00'),
(41, 'Categoría 32', '2024-08-11 04:31:00'),
(42, 'Categoría 33', '2024-08-11 04:32:00'),
(43, 'Categoría 34', '2024-08-11 04:33:00'),
(44, 'Categoría 35', '2024-08-11 04:34:00'),
(45, 'Categoría 36', '2024-08-11 04:35:00'),
(46, 'Categoría 37', '2024-08-11 04:36:00'),
(47, 'Categoría 38', '2024-08-11 04:37:00'),
(48, 'Categoría 39', '2024-08-11 04:38:00'),
(49, 'Categoría 40', '2024-08-11 04:39:00'),
(50, 'Categoría 41', '2024-08-11 04:40:00'),
(51, 'Categoría 42', '2024-08-11 04:41:00'),
(52, 'Categoría 43', '2024-08-11 04:42:00'),
(53, 'Categoría 44', '2024-08-11 04:43:00'),
(54, 'Categoría 45', '2024-08-11 04:44:00'),
(55, 'Categoría 46', '2024-08-11 04:45:00'),
(56, 'Categoría 47', '2024-08-11 04:46:00'),
(57, 'Categoría 48', '2024-08-11 04:47:00'),
(58, 'Categoría 49', '2024-08-11 04:48:00'),
(59, 'Categoría 50', '2024-08-11 04:49:00'),
(60, 'pep', '2024-09-18 17:31:13'),
(61, 'pepes', '2024-09-19 04:51:24');

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
(1, 'publico en general', 's/n', '00000000', 's/n', 123, '2024-09-21 12:11:17', '2024-09-21 16:11:17'),
(6, 'mario terrazas moyerr', '98187102 SC', '780697572', 'mapaizo sur', 47, '2024-09-22 03:10:49', '2024-09-22 07:10:49'),
(24, 'marcos', 'th', '55', 'avmoscu', 108, '2024-09-20 21:11:19', '2024-09-21 01:11:19'),
(26, 'SEBASTIAN GONGORA', '95745545SC', '78064854', 'AV.MOSCU LOS PINOS', 22, '2024-09-22 02:45:47', '2024-09-22 06:45:47'),
(28, 'pepe aguilar', '9819076', ' 756-30-984', 'av,pamaizo', 69, '2024-09-22 03:21:51', '2024-09-22 07:21:51'),
(36, 'luis marcos galarza rivero', '9819076 sc', ' 756-20-296', 'avmoscu 7mo anillo', 16, '2024-09-18 11:37:08', '2024-09-18 15:37:08'),
(37, 'andrea pacheco', '9874555 sc', ' 785-55-852', 'av oeste', 4, '2024-09-16 23:06:33', '2024-09-17 03:06:33'),
(38, 'enri', '234324', '234324', '23sdfcsdf', 0, '0000-00-00 00:00:00', '2024-09-18 02:45:34'),
(39, 'julianas', '98190755', ' 777-63-048', 'radial 10', 0, '0000-00-00 00:00:00', '2024-09-19 04:51:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE `compras` (
  `id` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `productos` text NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_proveedor` int(11) NOT NULL,
  `fecha_alta` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `compras`
--

INSERT INTO `compras` (`id`, `codigo`, `total`, `productos`, `id_usuario`, `id_proveedor`, `fecha_alta`) VALUES
(1, 10001, 0.00, '[{\"id\":\"57\",\"descripcion\":\"ee\",\"cantidad\":\"1\",\"stock\":\"826\",\"precio\":\"7\",\"total\":\"7\"}]', 1, 8, '2024-09-02 03:37:48'),
(2, 10002, 0.00, '[{\"id\":\"56\",\"descripcion\":\"pollo\",\"cantidad\":\"1\",\"stock\":\"55\",\"precio\":\"18\",\"total\":\"18\"}]', 1, 9, '2024-09-02 03:38:53'),
(3, 10003, 0.00, '[{\"id\":\"57\",\"descripcion\":\"ee\",\"cantidad\":\"1\",\"stock\":\"827\",\"precio\":\"7\",\"total\":\"7\"},{\"id\":\"56\",\"descripcion\":\"pollo\",\"cantidad\":\"1\",\"stock\":\"56\",\"precio\":\"18\",\"total\":\"18\"},{\"id\":\"1\",\"descripcion\":\"sopa de mani\",\"cantidad\":\"1\",\"stock\":\"8\",\"precio\":\"10\",\"total\":\"10\"}]', 1, 9, '2024-09-02 03:49:10'),
(4, 10004, 84.00, '[{\"id\":\"56\",\"descripcion\":\"pollo\",\"cantidad\":\"3\",\"stock\":\"55\",\"precio\":\"18\",\"total\":\"54\"},{\"id\":\"1\",\"descripcion\":\"sopa de mani\",\"cantidad\":\"3\",\"stock\":\"7\",\"precio\":\"10\",\"total\":\"30\"}]', 1, 8, '2024-09-02 03:54:45'),
(5, 10005, 500.00, '[{\"id\":\"16\",\"descripcion\":\"ño\",\"cantidad\":\"10\",\"stock\":\"10\",\"precio\":\"50\",\"total\":\"500\"}]', 1, 9, '2024-09-02 03:55:37'),
(8, 10008, 800.00, '[{\"id\":\"15\",\"descripcion\":\"pique macho\",\"cantidad\":\"10\",\"stock\":\"-6\",\"precio\":\"80\",\"total\":\"800\"}]', 1, 8, '2024-09-02 04:03:55'),
(10, 10010, 18.00, '[{\"id\":\"56\",\"descripcion\":\"pollo\",\"cantidad\":\"1\",\"stock\":\"61\",\"precio\":\"18\",\"total\":\"18\"}]', 1, 9, '2024-09-03 00:53:54'),
(11, 10011, 18.00, '[{\"id\":\"56\",\"descripcion\":\"pollo\",\"cantidad\":\"1\",\"stock\":\"62\",\"precio\":\"18\",\"total\":\"18\"}]', 1, 9, '2024-09-03 00:54:11'),
(12, 10012, 18.00, '[{\"id\":\"56\",\"descripcion\":\"pollo\",\"cantidad\":\"1\",\"stock\":\"63\",\"precio\":\"18\",\"total\":\"18\"}]', 1, 9, '2024-09-03 00:55:49'),
(13, 10013, 393.00, '[{\"id\":\"56\",\"descripcion\":\"pollo\",\"cantidad\":\"1\",\"stock\":\"64\",\"precio\":\"18\",\"total\":\"18\"},{\"id\":\"55\",\"descripcion\":\"producto 149\",\"cantidad\":\"3\",\"stock\":\"404\",\"precio\":\"125\",\"total\":\"375\"}]', 1, 9, '2024-09-03 01:06:03'),
(14, 10014, 72.00, '[{\"id\":\"56\",\"descripcion\":\"pollo\",\"cantidad\":\"4\",\"stock\":\"72\",\"precio\":\"18\",\"total\":\"72\"}]', 1, 11, '2024-09-03 03:31:13'),
(15, 10015, 1000.00, '[{\"id\":\"1\",\"descripcion\":\"sopa de mani\",\"cantidad\":\"50\",\"stock\":\"-50\",\"precio\":\"20\",\"total\":\"1000\"}]', 1, 9, '2024-09-18 00:44:15'),
(16, 10016, 1000.00, '[{\"id\":\"1\",\"descripcion\":\"sopa de mani\",\"cantidad\":\"50\",\"stock\":\"0\",\"precio\":\"20\",\"total\":\"1000\"}]', 1, 7, '2024-09-18 02:24:55'),
(17, 10017, 500.00, '[{\"id\":\"2\",\"descripcion\":\"coca cola\",\"cantidad\":\"50\",\"stock\":\"-36\",\"precio\":\"10\",\"total\":\"500\"}]', 1, 10, '2024-09-18 02:25:52'),
(18, 10018, 20.00, '[{\"id\":\"1\",\"descripcion\":\"sopa de mani\",\"cantidad\":\"1\",\"stock\":\"92\",\"precio\":\"20\",\"total\":\"20\"}]', 1, 11, '2024-09-18 15:13:14'),
(19, 10019, 5000.00, '[{\"id\":\"50\",\"descripcion\":\"producto 144\",\"cantidad\":\"50\",\"stock\":\"255\",\"precio\":\"100\",\"total\":\"5000\"},{\"id\":\"\",\"descripcion\":\"Seleccione el producto\",\"cantidad\":\"1\",\"stock\":\"\",\"precio\":\"\",\"total\":\"\"}]', 1, 11, '2024-09-18 17:24:27'),
(20, 10020, 360.00, '[{\"id\":\"2\",\"descripcion\":\"coca cola\",\"cantidad\":\"20\",\"stock\":\"13\",\"precio\":\"18\",\"total\":\"360\"},{\"id\":\"\",\"descripcion\":\"Seleccione el producto\",\"cantidad\":\"1\",\"stock\":\"\",\"precio\":\"\",\"total\":\"\"}]', 1, 9, '2024-09-18 17:26:18'),
(21, 10021, 400.00, '[{\"id\":\"6\",\"descripcion\":\"silpancho\",\"cantidad\":\"20\",\"stock\":\"28\",\"precio\":\"20\",\"total\":\"400\"},{\"id\":\"\",\"descripcion\":\"Seleccione el producto\",\"cantidad\":\"1\",\"stock\":\"\",\"precio\":\"\",\"total\":\"\"}]', 1, 10, '2024-09-18 17:27:52'),
(22, 10021, 400.00, '[{\"id\":\"6\",\"descripcion\":\"silpancho\",\"cantidad\":\"20\",\"stock\":\"28\",\"precio\":\"20\",\"total\":\"400\"},{\"id\":\"\",\"descripcion\":\"Seleccione el producto\",\"cantidad\":\"1\",\"stock\":\"\",\"precio\":\"\",\"total\":\"\"}]', 1, 10, '2024-09-18 17:28:14'),
(23, 10021, 400.00, '[{\"id\":\"6\",\"descripcion\":\"silpancho\",\"cantidad\":\"20\",\"stock\":\"28\",\"precio\":\"20\",\"total\":\"400\"},{\"id\":\"\",\"descripcion\":\"Seleccione el producto\",\"cantidad\":\"1\",\"stock\":\"\",\"precio\":\"\",\"total\":\"\"}]', 1, 10, '2024-09-18 17:28:19'),
(24, 10021, 400.00, '[{\"id\":\"6\",\"descripcion\":\"silpancho\",\"cantidad\":\"20\",\"stock\":\"28\",\"precio\":\"20\",\"total\":\"400\"},{\"id\":\"\",\"descripcion\":\"Seleccione el producto\",\"cantidad\":\"1\",\"stock\":\"\",\"precio\":\"\",\"total\":\"\"}]', 1, 10, '2024-09-18 17:29:41'),
(25, 10021, 400.00, '[{\"id\":\"6\",\"descripcion\":\"silpancho\",\"cantidad\":\"20\",\"stock\":\"28\",\"precio\":\"20\",\"total\":\"400\"},{\"id\":\"\",\"descripcion\":\"Seleccione el producto\",\"cantidad\":\"1\",\"stock\":\"\",\"precio\":\"\",\"total\":\"\"}]', 1, 10, '2024-09-18 17:29:47'),
(26, 10022, 0.00, '[{\"id\":\"49\",\"descripcion\":\"producto 143\",\"cantidad\":\"20\",\"stock\":\"345\",\"precio\":\"95\",\"total\":\"95\"},{\"id\":\"\",\"descripcion\":\"Seleccione el producto\",\"cantidad\":\"1\",\"stock\":\"\",\"precio\":\"\",\"total\":\"\"}]', 1, 12, '2024-09-18 17:35:58'),
(27, 10022, 0.00, '[{\"id\":\"49\",\"descripcion\":\"producto 143\",\"cantidad\":\"20\",\"stock\":\"345\",\"precio\":\"95\",\"total\":\"95\"},{\"id\":\"\",\"descripcion\":\"Seleccione el producto\",\"cantidad\":\"1\",\"stock\":\"\",\"precio\":\"\",\"total\":\"\"}]', 1, 12, '2024-09-18 17:36:14'),
(28, 10022, 0.00, '[{\"id\":\"49\",\"descripcion\":\"producto 143\",\"cantidad\":\"20\",\"stock\":\"345\",\"precio\":\"95\",\"total\":\"95\"},{\"id\":\"\",\"descripcion\":\"Seleccione el producto\",\"cantidad\":\"1\",\"stock\":\"\",\"precio\":\"\",\"total\":\"\"}]', 1, 12, '2024-09-18 17:36:18'),
(29, 10023, 1000.00, '[{\"id\":\"1\",\"descripcion\":\"sopa de mani\",\"cantidad\":\"50\",\"stock\":\"21\",\"precio\":\"20\",\"total\":\"1000\"}]', 1, 14, '2024-09-21 00:26:43'),
(30, 10023, 1000.00, '[{\"id\":\"1\",\"descripcion\":\"sopa de mani\",\"cantidad\":\"50\",\"stock\":\"21\",\"precio\":\"20\",\"total\":\"1000\"}]', 1, 14, '2024-09-21 00:26:48'),
(32, 10024, 2500.00, '[{\"id\":\"15\",\"descripcion\":\"pique macho\",\"cantidad\":\"50\",\"stock\":\"-50\",\"precio\":\"50\",\"total\":\"2500\"}]', 1, 14, '2024-09-21 00:28:25'),
(33, 10025, 0.00, '[{\"id\":\"11\",\"descripcion\":\"majadito\",\"cantidad\":\"50\",\"stock\":\"-50\",\"precio\":\"0\",\"total\":\"0\"}]', 1, 14, '2024-09-21 00:29:15'),
(34, 10025, 0.00, '[{\"id\":\"11\",\"descripcion\":\"majadito\",\"cantidad\":\"50\",\"stock\":\"-50\",\"precio\":\"0\",\"total\":\"0\"}]', 1, 14, '2024-09-21 00:29:30'),
(35, 10026, 1000.00, '[{\"id\":\"2\",\"descripcion\":\"coca cola\",\"cantidad\":\"100\",\"stock\":\"-50\",\"precio\":\"10\",\"total\":\"1000\"}]', 1, 14, '2024-09-21 00:37:47'),
(36, 10027, 1000.00, '[{\"id\":\"1\",\"descripcion\":\"sopa de mani\",\"cantidad\":\"50\",\"stock\":\"71\",\"precio\":\"20\",\"total\":\"1000\"}]', 1, 12, '2024-09-21 00:41:10'),
(37, 10027, 1000.00, '[{\"id\":\"1\",\"descripcion\":\"sopa de mani\",\"cantidad\":\"50\",\"stock\":\"71\",\"precio\":\"20\",\"total\":\"1000\"}]', 1, 12, '2024-09-21 00:41:20'),
(38, 10028, 200.00, '[{\"id\":\"2\",\"descripcion\":\"coca cola\",\"cantidad\":\"20\",\"stock\":\"130\",\"precio\":\"10\",\"total\":\"200\"}]', 1, 12, '2024-09-21 00:42:25'),
(39, 10028, 200.00, '[{\"id\":\"2\",\"descripcion\":\"coca cola\",\"cantidad\":\"20\",\"stock\":\"130\",\"precio\":\"10\",\"total\":\"200\"}]', 1, 12, '2024-09-21 00:42:31'),
(40, 10028, 200.00, '[{\"id\":\"2\",\"descripcion\":\"coca cola\",\"cantidad\":\"20\",\"stock\":\"130\",\"precio\":\"10\",\"total\":\"200\"}]', 1, 12, '2024-09-21 00:42:36'),
(41, 10028, 200.00, '[{\"id\":\"2\",\"descripcion\":\"coca cola\",\"cantidad\":\"20\",\"stock\":\"130\",\"precio\":\"10\",\"total\":\"200\"}]', 1, 12, '2024-09-21 00:42:44'),
(42, 10028, 200.00, '[{\"id\":\"2\",\"descripcion\":\"coca cola\",\"cantidad\":\"20\",\"stock\":\"130\",\"precio\":\"10\",\"total\":\"200\"}]', 1, 12, '2024-09-21 00:43:09'),
(43, 10029, 20.00, '[{\"id\":\"1\",\"descripcion\":\"sopa de mani\",\"cantidad\":\"1\",\"stock\":\"220\",\"precio\":\"20\",\"total\":\"20\"}]', 1, 14, '2024-09-21 00:47:52'),
(44, 10029, 20.00, '[{\"id\":\"1\",\"descripcion\":\"sopa de mani\",\"cantidad\":\"1\",\"stock\":\"220\",\"precio\":\"20\",\"total\":\"20\"}]', 1, 14, '2024-09-21 00:47:57'),
(45, 10029, 20.00, '[{\"id\":\"1\",\"descripcion\":\"sopa de mani\",\"cantidad\":\"1\",\"stock\":\"220\",\"precio\":\"20\",\"total\":\"20\"}]', 1, 14, '2024-09-21 00:50:08'),
(46, 10030, 20.00, '[{\"id\":\"1\",\"descripcion\":\"sopa de mani\",\"cantidad\":\"1\",\"stock\":\"223\",\"precio\":\"20\",\"total\":\"20\"}]', 1, 14, '2024-09-21 00:50:20'),
(47, 10031, 20.00, '[{\"id\":\"1\",\"descripcion\":\"sopa de mani\",\"cantidad\":\"2\",\"stock\":\"222\",\"precio\":\"10\",\"total\":\"20\"},{\"id\":\"\",\"descripcion\":\"Seleccione el producto\",\"cantidad\":\"1\",\"stock\":\"\",\"precio\":\"\",\"total\":\"\"}]', 1, 9, '2024-09-21 00:58:06'),
(48, 10032, 18.00, '[{\"id\":\"2\",\"descripcion\":\"coca cola\",\"cantidad\":\"1\",\"stock\":\"249\",\"precio\":\"18\",\"total\":\"18\"},{\"id\":\"1\",\"descripcion\":\"sopa de mani\",\"cantidad\":\"1\",\"stock\":\"222\",\"precio\":\"10\",\"total\":\"10\"}]', 1, 10, '2024-09-21 01:05:04'),
(49, 10033, 30.00, '[{\"id\":\"1\",\"descripcion\":\"sopa de mani\",\"cantidad\":\"1\",\"stock\":\"221\",\"precio\":\"10\",\"total\":\"10\"},{\"id\":\"6\",\"descripcion\":\"silpancho\",\"cantidad\":\"1\",\"stock\":\"147\",\"precio\":\"20\",\"total\":\"20\"}]', 1, 10, '2024-09-21 01:15:56'),
(50, 10034, 100.00, '[{\"id\":\"1\",\"descripcion\":\"sopa de mani\",\"cantidad\":\"5\",\"stock\":\"218\",\"precio\":\"20\",\"total\":\"100\"}]', 1, 1, '2024-09-21 02:34:27'),
(51, 10035, 20.00, '[{\"id\":\"1\",\"descripcion\":\"sopa de mani\",\"cantidad\":\"1\",\"stock\":\"227\",\"precio\":\"20\",\"total\":\"20\"}]', 1, 1, '2024-09-21 02:34:51'),
(52, 10036, 20.00, '[{\"id\":\"1\",\"descripcion\":\"sopa de mani\",\"cantidad\":\"1\",\"stock\":\"228\",\"precio\":\"20\",\"total\":\"20\"}]', 1, 1, '2024-09-21 02:59:42');

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
(1, 1, '101', 'sopa de mani', 'vistas/img/productos/101/801.png', 226, 10, 9, 123, '2024-09-23 02:39:12'),
(2, 2, '201', 'coca cola', 'vistas/img/productos/201/215.jpg', 246, 18, 10, 79, '2024-09-23 02:39:03'),
(3, 2, '202', 'fanta 2l', 'vistas/img/productos/202/212.jpg', 47, 18, 0, 3, '2024-09-18 16:02:06'),
(6, 1, '102', 'silpancho', 'vistas/img/productos/default/anonymous.png', 149, 20, 10, 2, '2024-09-21 16:17:24'),
(8, 1, '104', 'locro', 'vistas/img/productos/default/anonymous.png', 48, 15, 0, 2, '2024-09-18 16:02:06'),
(9, 1, '105', 'planchita', 'vistas/img/productos/default/anonymous.png', 46, 100, 0, 4, '2024-09-21 01:11:19'),
(10, 1, '106', 'chancho a la cruz', 'vistas/img/productos/default/anonymous.png', 45, 80, 0, 5, '2024-09-18 16:02:06'),
(11, 1, '107', 'majadito', 'vistas/img/productos/default/anonymous.png', 100, 20, 0, 12, '2024-09-21 00:29:30'),
(14, 1, '108', 'Rapi al jugo', 'vistas/img/productos/default/anonymous.png', 49, 18, 0, 3, '2024-09-21 01:04:19'),
(15, 1, '109', 'pique macho', 'vistas/img/productos/109/364.jpg', 47, 80, 50, 19, '2024-09-21 00:32:57'),
(16, 1, '110', 'ño', 'vistas/img/productos/default/anonymous.png', 29, 50, 0, 1, '2024-09-21 02:33:58'),
(17, 1, '111', 'producto 111', 'vistas/img/productos/default/anonymous.png', 29, 25, 0, 6, '2024-09-18 16:02:06'),
(18, 2, '112', 'producto 112', 'vistas/img/productos/default/anonymous.png', 38, 30, 0, 7, '2024-09-18 16:02:06'),
(19, 2, '113', 'producto 113', 'vistas/img/productos/default/anonymous.png', 49, 35, 0, 2, '2024-09-18 16:02:06'),
(20, 3, '114', 'producto 114', 'vistas/img/productos/default/anonymous.png', 59, 20, 0, 4, '2024-09-18 16:02:06'),
(21, 1, '115', 'producto 115', 'vistas/img/productos/default/anonymous.png', 69, 22, 0, 7, '2024-09-18 16:02:06'),
(22, 2, '116', 'producto 116', 'vistas/img/productos/default/anonymous.png', 79, 27, 0, 5, '2024-09-18 16:02:06'),
(23, 3, '117', 'producto 117', 'vistas/img/productos/default/anonymous.png', 89, 32, 0, 8, '2024-09-18 16:02:06'),
(24, 1, '118', 'producto 118', 'vistas/img/productos/default/anonymous.png', 99, 18, 0, 9, '2024-09-18 16:02:06'),
(25, 2, '119', 'producto 119', 'vistas/img/productos/default/anonymous.png', 108, 25, 0, 7, '2024-09-18 16:02:06'),
(26, 3, '120', 'producto 120', 'vistas/img/productos/default/anonymous.png', 117, 30, 0, 9, '2024-09-18 16:02:06'),
(27, 1, '121', 'producto 121', 'vistas/img/productos/default/anonymous.png', 128, 28, 0, 6, '2024-09-18 16:02:06'),
(28, 2, '122', 'producto 122', 'vistas/img/productos/default/anonymous.png', 139, 26, 0, 4, '2024-09-18 16:02:06'),
(29, 3, '123', 'producto 123', 'vistas/img/productos/default/anonymous.png', 149, 24, 0, 6, '2024-09-18 16:02:06'),
(30, 1, '124', 'producto 124', 'vistas/img/productos/default/anonymous.png', 159, 22, 0, 7, '2024-09-18 16:02:06'),
(31, 2, '125', 'producto 125', 'vistas/img/productos/default/anonymous.png', 169, 20, 0, 8, '2024-09-18 16:02:06'),
(32, 3, '126', 'producto 126', 'vistas/img/productos/default/anonymous.png', 179, 18, 0, 9, '2024-09-18 16:02:06'),
(33, 1, '127', 'producto 127', 'vistas/img/productos/default/anonymous.png', 189, 25, 0, 5, '2024-09-18 16:02:06'),
(34, 2, '128', 'producto 128', 'vistas/img/productos/default/anonymous.png', 199, 22, 0, 7, '2024-09-18 16:02:06'),
(35, 3, '129', 'producto 129', 'vistas/img/productos/default/anonymous.png', 209, 20, 0, 6, '2024-09-18 16:02:06'),
(36, 1, '130', 'producto 130', 'vistas/img/productos/default/anonymous.png', 219, 30, 0, 8, '2024-09-18 16:02:06'),
(37, 2, '131', 'producto 131', 'vistas/img/productos/default/anonymous.png', 229, 35, 0, 4, '2024-09-18 16:02:06'),
(38, 3, '132', 'producto 132', 'vistas/img/productos/default/anonymous.png', 239, 40, 0, 5, '2024-09-18 16:02:06'),
(39, 1, '133', 'producto 133', 'vistas/img/productos/default/anonymous.png', 249, 45, 0, 6, '2024-09-18 16:02:06'),
(40, 2, '134', 'producto 134', 'vistas/img/productos/default/anonymous.png', 259, 50, 0, 7, '2024-09-18 16:02:06'),
(41, 3, '135', 'producto 135', 'vistas/img/productos/default/anonymous.png', 269, 55, 0, 8, '2024-09-18 16:02:06'),
(42, 1, '136', 'producto 136', 'vistas/img/productos/default/anonymous.png', 279, 60, 0, 9, '2024-09-18 16:02:06'),
(43, 2, '137', 'producto 137', 'vistas/img/productos/default/anonymous.png', 289, 65, 0, 10, '2024-09-18 16:02:06'),
(44, 3, '138', 'producto 138', 'vistas/img/productos/default/anonymous.png', 299, 70, 0, 11, '2024-09-18 16:02:06'),
(45, 1, '139', 'producto 139', 'vistas/img/productos/default/anonymous.png', 309, 75, 0, 12, '2024-09-18 16:02:06'),
(46, 2, '140', 'producto 140', 'vistas/img/productos/default/anonymous.png', 319, 80, 0, 13, '2024-09-18 16:02:06'),
(47, 3, '141', 'producto 141', 'vistas/img/productos/default/anonymous.png', 329, 85, 0, 14, '2024-09-18 16:02:06'),
(48, 1, '142', 'producto 142', 'vistas/img/productos/default/anonymous.png', 336, 90, 0, 18, '2024-09-18 17:01:49'),
(49, 2, '143', 'producto 143', 'vistas/img/productos/default/anonymous.png', 406, 95, 0, 19, '2024-09-18 17:36:18'),
(50, 3, '144', 'producto 144', 'vistas/img/productos/default/anonymous.png', 355, 100, 0, 75, '2024-09-18 17:24:26'),
(51, 1, '145', 'producto 145', 'vistas/img/productos/default/anonymous.png', 368, 105, 0, 19, '2024-09-18 16:53:12'),
(52, 2, '146', 'producto 146', 'vistas/img/productos/default/anonymous.png', 379, 110, 0, 19, '2024-09-18 16:02:06'),
(53, 3, '147', 'producto 147', 'vistas/img/productos/default/anonymous.png', 389, 115, 0, 20, '2024-09-18 16:02:06'),
(54, 1, '148', 'producto 148', 'vistas/img/productos/default/anonymous.png', 399, 120, 0, 21, '2024-09-18 16:02:06'),
(55, 2, '149', 'producto 149', 'vistas/img/productos/149/832.jpg', 409, 125, 0, 26, '2024-09-19 07:15:29'),
(56, 57, '5701', 'pollo', 'vistas/img/productos/5701/866.jpg', 72, 18, 0, 7, '2024-09-21 02:27:14'),
(57, 57, '5702', 'Masaco', 'vistas/img/productos/5702/954.png', 826, 7, 10, 4, '2024-09-21 02:18:06');

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
(7, 'marcps', 'coca cola', '75620296', 'moscu', '2024-08-30 02:46:32'),
(8, 'alejandro montenegro', 'hauri', '77630488', 'los lotes 7mo anillo', '2024-08-30 02:47:01'),
(9, 'enrique', 'anotita', '124324324', 'qwdsada', '2024-09-01 23:02:51'),
(10, 'lisbeth', 'empres', '34234', 'sdflnsdoifnios', '2024-09-02 04:04:24'),
(11, 'PRUEBA', 'PRUEBA', '353543543', 'DFDSFS', '2024-09-03 03:30:09'),
(12, 'victor zamar', 'coca cola', '75602886', 'palacio', '2024-09-18 17:33:47'),
(14, 'marcos galarza', 'cervezeria nacionals', '75620296', 'parque industrial', '2024-09-19 05:26:02'),
(16, 'jasmin galarza', 'fe y alegria', '75620296', 'av.moscu', '2024-09-21 15:56:25');

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
(1, 'admin', 'admin', '$2a$07$asxx54ahjppf45sd87a5auXBm1Vr2M1NV5t/zNQtGHGpS5fFirrbG', 'Administrador', 'vistas/img/usuarios/admin/467.png', 1, '2024-09-22 14:57:10', '2024-09-22 18:57:10'),
(60, 'zajir mendoza', 'pipo', '$2a$07$asxx54ahjppf45sd87a5auGZEtGHuyZwm.Ur.FJvWLCql3nmsMbXy', 'Vendedor', 'vistas/img/usuarios/pipo/862.jpg', 1, '2024-08-10 22:09:07', '2024-09-19 15:15:17'),
(61, 'Yobana Mendoza', 'david', '$2a$07$asxx54ahjppf45sd87a5auGZEtGHuyZwm.Ur.FJvWLCql3nmsMbXy', 'Vendedor', 'vistas/img/usuarios/david/501.jpg', 1, '2024-08-10 22:08:36', '2024-08-11 02:08:36'),
(62, 'EDWIN EDUARDO', 'EDWIN12', '$2a$07$asxx54ahjppf45sd87a5auGZEtGHuyZwm.Ur.FJvWLCql3nmsMbXy', 'Vendedor', 'vistas/img/usuarios/EDWIN12/449.jpg', 1, '2024-06-22 08:13:02', '2024-07-22 15:30:13'),
(90, 'Ana Gómez', 'anag', '$2a$07$examplehash2', 'Especial', 'vistas/img/usuarios/anag/124.jpg', 1, '2024-08-02 11:30:00', '2024-08-02 15:30:00'),
(91, 'Carlos López', 'carlosl', '$2a$07$examplehash3', 'Vendedor', 'vistas/img/usuarios/carlosl/125.jpg', 1, '2024-08-03 09:00:00', '2024-08-03 13:00:00'),
(92, 'Marta Ruiz', 'matar', '$2a$07$examplehash4', 'Administrador', 'vistas/img/usuarios/matar/126.jpg', 1, '2024-08-04 12:15:00', '2024-08-04 16:15:00'),
(93, 'Luis Fernández', 'luisf', '$2a$07$examplehash5', 'Vendedor', 'vistas/img/usuarios/luisf/127.jpg', 1, '2024-08-05 08:30:00', '2024-08-05 12:30:00'),
(94, 'Elena Torres', 'elenat', '$2a$07$examplehash6', 'Especial', 'vistas/img/usuarios/elenat/128.jpg', 1, '2024-08-06 14:00:00', '2024-08-06 18:00:00'),
(96, 'Sofia Martínez', 'sofia', '$2a$07$examplehash8', 'Administrador', 'vistas/img/usuarios/sofia/130.jpg', 1, '2024-08-08 10:00:00', '2024-08-08 14:00:00'),
(97, 'Ricardo Gómez', 'ricardog', '$2a$07$examplehash9', 'Vendedor', 'vistas/img/usuarios/ricardog/131.jpg', 1, '2024-08-09 09:30:00', '2024-08-09 13:30:00'),
(98, 'Laura López', 'laural', '$2a$07$examplehash10', 'Especial', 'vistas/img/usuarios/laural/132.jpg', 1, '2024-08-10 11:15:00', '2024-08-10 15:15:00'),
(99, 'Miguel Ángel', 'miguel', '$2a$07$examplehash11', 'Administrador', 'vistas/img/usuarios/miguel/133.jpg', 1, '2024-08-11 12:30:00', '2024-08-11 16:30:00'),
(100, 'Isabel Martínez', 'isabelm', '$2a$07$examplehash12', 'Vendedor', 'vistas/img/usuarios/isabelm/134.jpg', 1, '2024-08-12 08:45:00', '2024-08-12 12:45:00'),
(101, 'Antonio Pérez', 'antoniop', '$2a$07$examplehash13', 'Especial', 'vistas/img/usuarios/antoniop/135.jpg', 1, '2024-08-13 10:00:00', '2024-08-13 14:00:00'),
(102, 'Rosa Lopez', 'rosal', '$2a$07$examplehash14', 'Vendedor', 'vistas/img/usuarios/rosal/136.jpg', 1, '2024-08-14 09:30:00', '2024-08-12 00:53:19'),
(103, 'David González', 'davidg', '$2a$07$examplehash15', 'Administrador', 'vistas/img/usuarios/davidg/137.jpg', 1, '2024-08-15 11:00:00', '2024-08-15 15:00:00'),
(104, 'Verónica Ruiz', 'veronicar', '$2a$07$examplehash16', 'Vendedor', 'vistas/img/usuarios/veronicar/138.jpg', 1, '2024-08-16 12:15:00', '2024-08-16 16:15:00'),
(105, 'Roberto Torres', 'robertot', '$2a$07$examplehash17', 'Especial', 'vistas/img/usuarios/robertot/139.jpg', 1, '2024-08-17 08:30:00', '2024-08-17 12:30:00'),
(106, 'Patricia González', 'patriciag', '$2a$07$examplehash18', 'Vendedor', 'vistas/img/usuarios/patriciag/140.jpg', 1, '2024-08-18 09:45:00', '2024-08-18 13:45:00'),
(107, 'Javier Fernández', 'javierf', '$2a$07$examplehash19', 'Administrador', 'vistas/img/usuarios/javierf/141.jpg', 1, '2024-08-19 10:00:00', '2024-08-19 14:00:00'),
(108, 'Carmen PErez', 'carmenp', '$2a$07$examplehash20', 'Especial', 'vistas/img/usuarios/carmenp/142.jpg', 1, '2024-08-20 11:15:00', '2024-08-12 00:29:54'),
(109, 'ÑEÑE', 'RF', '$2a$07$asxx54ahjppf45sd87a5auGZEtGHuyZwm.Ur.FJvWLCql3nmsMbXy', 'Administrador', '', 1, '0000-00-00 00:00:00', '2024-08-12 02:06:27'),
(110, 'maikol terraza moye', 'maicol', '$2a$07$asxx54ahjppf45sd87a5auGZEtGHuyZwm.Ur.FJvWLCql3nmsMbXy', 'Administrador', '', 1, '0000-00-00 00:00:00', '2024-08-12 02:06:28'),
(111, 'luis marcos galrza rivero', 'luis12', '$2a$07$asxx54ahjppf45sd87a5auGZEtGHuyZwm.Ur.FJvWLCql3nmsMbXy', 'Vendedor', '', 1, '0000-00-00 00:00:00', '2024-08-12 02:06:30'),
(112, 'TGTRG', 'TRGRT', '$2a$07$asxx54ahjppf45sd87a5au.EHSjadJS4XI8CbTS4XV0WtDzTNfhkm', 'Especial', '', 0, '0000-00-00 00:00:00', '2024-08-12 02:08:12'),
(113, 'trgtrg', 'rtgtg', '$2a$07$asxx54ahjppf45sd87a5auymQ/inKifqO10KTnWNGEITMvjgHwgCK', 'Administrador', '', 0, '0000-00-00 00:00:00', '2024-08-12 02:08:17'),
(114, 'trgrtg', 'trgtrg', '$2a$07$asxx54ahjppf45sd87a5auAiT4XjjyD0IjXNnBWhc3I6raQSKm5DC', 'Vendedor', '', 0, '0000-00-00 00:00:00', '2024-08-12 02:08:23'),
(115, 'rtgtrg', 'rtgrtg', '$2a$07$asxx54ahjppf45sd87a5auuPefwr2y5r29BjcR7htNmBxos0ds4.i', 'Especial', '', 0, '0000-00-00 00:00:00', '2024-08-12 02:08:35'),
(118, 'trgtrg', 'gtrg', '$2a$07$asxx54ahjppf45sd87a5augzTCflOQle9H937z0wbdn26FbZFfVlq', 'Especial', '', 0, '0000-00-00 00:00:00', '2024-08-12 02:08:56'),
(119, 'rtgtrg', 'gbhtgb', '$2a$07$asxx54ahjppf45sd87a5auGZEtGHuyZwm.Ur.FJvWLCql3nmsMbXy', 'Administrador', '', 0, '0000-00-00 00:00:00', '2024-08-12 02:09:04'),
(120, 'trgrtg', 'trgrtg', '$2a$07$asxx54ahjppf45sd87a5aufLY.AHSKFGxF0oyGL6zWfkgzyCTtyF6', 'Especial', '', 0, '0000-00-00 00:00:00', '2024-08-12 02:09:13'),
(121, 'efwef', 'fvbfgv', '$2a$07$asxx54ahjppf45sd87a5auGZEtGHuyZwm.Ur.FJvWLCql3nmsMbXy', 'Especial', '', 0, '0000-00-00 00:00:00', '2024-08-12 02:09:22'),
(122, 'refr', '43', '$2a$07$asxx54ahjppf45sd87a5auK6HQMRfGr9./RAhHYQY5IrYKuM.t4TW', 'Administrador', '', 0, '0000-00-00 00:00:00', '2024-08-12 02:09:30'),
(123, 'ftrgvr', 'ghny', '$2a$07$asxx54ahjppf45sd87a5auPaO6RlrDzNODv7tsQTPcDgOOqpI2HAS', 'Vendedor', '', 0, '0000-00-00 00:00:00', '2024-08-12 02:09:38'),
(124, 'brtgb', 'trgb', '$2a$07$asxx54ahjppf45sd87a5auymQ/inKifqO10KTnWNGEITMvjgHwgCK', 'Administrador', '', 0, '0000-00-00 00:00:00', '2024-08-12 02:09:43'),
(125, 'trgrtg', 'olo', '$2a$07$asxx54ahjppf45sd87a5auymQ/inKifqO10KTnWNGEITMvjgHwgCK', 'Administrador', '', 1, '0000-00-00 00:00:00', '2024-08-12 03:17:07'),
(126, 'th', 'hjjhjm', '$2a$07$asxx54ahjppf45sd87a5auWamafG5HAPhd3XGGrORnDneY4c6.LBW', 'Vendedor', '', 1, '0000-00-00 00:00:00', '2024-08-12 03:17:08'),
(127, 'davian peres', 'davidq', '$2a$07$asxx54ahjppf45sd87a5auGZEtGHuyZwm.Ur.FJvWLCql3nmsMbXy', 'Administrador', 'vistas/img/usuarios/davidq/317.jpg', 1, '0000-00-00 00:00:00', '2024-09-19 07:26:26'),
(130, 'mateo fernandes', 'matias23', '$2a$07$asxx54ahjppf45sd87a5auGZEtGHuyZwm.Ur.FJvWLCql3nmsMbXy', 'Administrador', 'vistas/img/usuarios/matias23/585.jpg', 1, '2024-09-18 20:07:54', '2024-09-19 04:48:58'),
(133, 'angela aguilar', 'angelita22', '$2a$07$asxx54ahjppf45sd87a5auGZEtGHuyZwm.Ur.FJvWLCql3nmsMbXy', 'Vendedor', 'vistas/img/usuarios/angelita22/254.jpg', 1, '0000-00-00 00:00:00', '2024-09-21 02:59:31'),
(134, 'angela aguilar2', 'wd', '$2a$07$asxx54ahjppf45sd87a5auGZEtGHuyZwm.Ur.FJvWLCql3nmsMbXy', 'Administrador', 'vistas/img/usuarios/wd/656.jpg', 1, '0000-00-00 00:00:00', '2024-09-21 02:59:32'),
(135, 'angela aguilar2', 'wd', '$2a$07$asxx54ahjppf45sd87a5auGZEtGHuyZwm.Ur.FJvWLCql3nmsMbXy', 'Administrador', 'vistas/img/usuarios/wd/656.jpg', 0, '0000-00-00 00:00:00', '2024-09-19 15:37:48'),
(136, 'angela aguilar2', 'wd', '$2a$07$asxx54ahjppf45sd87a5auGZEtGHuyZwm.Ur.FJvWLCql3nmsMbXy', 'Administrador', 'vistas/img/usuarios/wd/656.jpg', 0, '0000-00-00 00:00:00', '2024-09-19 15:37:48'),
(137, 'marcos galarza rivero ', 'admi1w', '$2a$07$asxx54ahjppf45sd87a5auGZEtGHuyZwm.Ur.FJvWLCql3nmsMbXy', 'Administrador', 'vistas/img/usuarios/admi1w/967.jpg', 1, '0000-00-00 00:00:00', '2024-09-21 02:17:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_vendedor` int(11) NOT NULL,
  `productos` text NOT NULL,
  `total` float NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `codigo`, `id_cliente`, `id_vendedor`, `productos`, `total`, `fecha`) VALUES
(27, 10001, 6, 1, '[{\"id\":\"1\",\"descripcion\":\"sopa de mani\",\"cantidad\":\"1\",\"stock\":\"51\",\"precio\":\"10\",\"total\":\"10\"},{\"id\":\"2\",\"descripcion\":\"coca cola\",\"cantidad\":\"1\",\"stock\":\"49\",\"precio\":\"18\",\"total\":\"18\"}]', 28, '2024-06-11 21:04:24'),
(29, 10003, 26, 1, '[{\"id\":\"1\",\"descripcion\":\"sopa de mani\",\"cantidad\":\"1\",\"stock\":\"48\",\"precio\":\"10\",\"total\":\"10\"},{\"id\":\"3\",\"descripcion\":\"fanta 2l\",\"cantidad\":\"1\",\"stock\":\"49\",\"precio\":\"18\",\"total\":\"18\"}]', 28, '2024-06-12 12:18:48'),
(30, 10004, 26, 1, '[{\"id\":\"1\",\"descripcion\":\"sopa de mani\",\"cantidad\":\"1\",\"stock\":\"47\",\"precio\":\"10\",\"total\":\"10\"}]', 10, '2024-06-14 12:23:55'),
(31, 10005, 24, 1, '[{\"id\":\"1\",\"descripcion\":\"sopa de mani\",\"cantidad\":\"1\",\"stock\":\"46\",\"precio\":\"10\",\"total\":\"10\"}]', 10, '2024-06-14 12:24:12'),
(32, 10002, 6, 1, '[{\"id\":\"1\",\"descripcion\":\"sopa de mani\",\"cantidad\":\"1\",\"stock\":\"45\",\"precio\":\"10\",\"total\":\"10\"}]', 10, '2024-06-14 12:25:24'),
(33, 10003, 6, 1, '[{\"id\":\"1\",\"descripcion\":\"sopa de mani\",\"cantidad\":\"1\",\"stock\":\"44\",\"precio\":\"10\",\"total\":\"10\"}]', 10, '2024-06-14 12:27:04'),
(34, 10004, 24, 1, '[{\"id\":\"1\",\"descripcion\":\"sopa de mani\",\"cantidad\":\"1\",\"stock\":\"43\",\"precio\":\"10\",\"total\":\"10\"}]', 10, '2024-06-14 12:27:17'),
(37, 10005, 26, 62, '[{\"id\":\"1\",\"descripcion\":\"sopa de mani\",\"cantidad\":\"1\",\"stock\":\"42\",\"precio\":\"10\",\"total\":\"10\"},{\"id\":\"2\",\"descripcion\":\"coca cola\",\"cantidad\":\"1\",\"stock\":\"48\",\"precio\":\"18\",\"total\":\"18\"}]', 28, '2024-06-22 12:13:24'),
(40, 10008, 6, 1, '[{\"id\":\"4\",\"descripcion\":\"cuñape\",\"cantidad\":\"1\",\"stock\":\"48\",\"precio\":\"5\",\"total\":\"5\"}]', 5, '2024-07-18 12:14:01'),
(41, 10009, 6, 1, '[{\"id\":\"11\",\"descripcion\":\"majadito\",\"cantidad\":\"1\",\"stock\":\"49\",\"precio\":\"20\",\"total\":\"20\"}]', 20, '2024-07-18 15:18:27'),
(42, 10010, 26, 1, '[{\"id\":\"11\",\"descripcion\":\"majadito\",\"cantidad\":\"1\",\"stock\":\"48\",\"precio\":\"20\",\"total\":\"20\"}]', 20, '2024-07-18 15:28:36'),
(43, 10011, 26, 1, '[{\"id\":\"11\",\"descripcion\":\"majadito\",\"cantidad\":\"1\",\"stock\":\"47\",\"precio\":\"20\",\"total\":\"20\"}]', 20, '2024-07-18 15:39:56'),
(44, 10012, 6, 1, '[{\"id\":\"10\",\"descripcion\":\"chancho a la cruz\",\"cantidad\":\"1\",\"stock\":\"49\",\"precio\":\"80\",\"total\":\"80\"}]', 80, '2024-07-18 15:46:51'),
(45, 10013, 24, 1, '[{\"id\":\"9\",\"descripcion\":\"planchita\",\"cantidad\":\"1\",\"stock\":\"49\",\"precio\":\"100\",\"total\":\"100\"}]', 100, '2024-07-18 15:47:49'),
(46, 10014, 6, 1, '[{\"id\":\"4\",\"descripcion\":\"cuñape\",\"cantidad\":\"1\",\"stock\":\"47\",\"precio\":\"5\",\"total\":\"5\"}]', 5, '2024-07-18 15:53:14'),
(48, 10015, 6, 1, '[{\"id\":\"8\",\"descripcion\":\"locro\",\"cantidad\":\"1\",\"stock\":\"49\",\"precio\":\"15\",\"total\":\"15\"}]', 15, '2024-07-19 12:34:41'),
(49, 10016, 26, 1, '[{\"id\":\"11\",\"descripcion\":\"majadito\",\"cantidad\":\"1\",\"stock\":\"46\",\"precio\":\"20\",\"total\":\"20\"}]', 20, '2024-07-19 12:48:27'),
(50, 10017, 24, 1, '[{\"id\":\"11\",\"descripcion\":\"majadito\",\"cantidad\":\"1\",\"stock\":\"45\",\"precio\":\"20\",\"total\":\"20\"}]', 20, '2024-07-19 12:49:01'),
(51, 10018, 6, 1, '[{\"id\":\"11\",\"descripcion\":\"majadito\",\"cantidad\":\"1\",\"stock\":\"44\",\"precio\":\"20\",\"total\":\"20\"}]', 20, '2024-07-19 12:53:04'),
(52, 10019, 6, 1, '[{\"id\":\"11\",\"descripcion\":\"majadito\",\"cantidad\":\"1\",\"stock\":\"43\",\"precio\":\"20\",\"total\":\"20\"}]', 20, '2024-07-19 12:54:38'),
(53, 10020, 6, 1, '[{\"id\":\"11\",\"descripcion\":\"majadito\",\"cantidad\":\"1\",\"stock\":\"42\",\"precio\":\"20\",\"total\":\"20\"}]', 20, '2024-07-19 13:13:58'),
(54, 10020, 6, 1, '[{\"id\":\"11\",\"descripcion\":\"majadito\",\"cantidad\":\"1\",\"stock\":\"41\",\"precio\":\"20\",\"total\":\"20\"}]', 20, '2024-07-19 13:14:18'),
(57, 10021, 6, 1, '[{\"id\":\"4\",\"descripcion\":\"cuñape\",\"cantidad\":\"1\",\"stock\":\"47\",\"precio\":\"5\",\"total\":\"5\"}]', 5, '2024-08-01 18:57:10'),
(58, 10022, 26, 1, '[{\"id\":\"2\",\"descripcion\":\"coca cola\",\"cantidad\":\"1\",\"stock\":\"47\",\"precio\":\"18\",\"total\":\"18\"}]', 18, '2024-08-01 18:58:12'),
(59, 10023, 24, 61, '[{\"id\":\"10\",\"descripcion\":\"chancho a la cruz\",\"cantidad\":\"1\",\"stock\":\"48\",\"precio\":\"80\",\"total\":\"80\"}]', 80, '2024-08-01 19:22:51'),
(64, 10024, 6, 1, '[{\"id\":\"11\",\"descripcion\":\"majadito\",\"cantidad\":\"1\",\"stock\":\"2\",\"precio\":\"20\",\"total\":\"20\"}]', 20, '2024-08-11 03:32:14'),
(65, 10025, 26, 1, '[{\"id\":\"11\",\"descripcion\":\"majadito\",\"cantidad\":\"1\",\"stock\":\"1\",\"precio\":\"20\",\"total\":\"20\"}]', 20, '2024-08-11 03:33:16'),
(66, 10026, 28, 1, '[{\"id\":\"55\",\"descripcion\":\"producto 149\",\"cantidad\":\"1\",\"stock\":\"409\",\"precio\":\"125\",\"total\":\"125\"}]', 125, '2024-08-26 02:04:37'),
(68, 10027, 36, 1, '[{\"id\":\"55\",\"descripcion\":\"producto 149\",\"cantidad\":\"1\",\"stock\":\"408\",\"precio\":\"125\",\"total\":\"125\"}]', 125, '2024-08-28 04:29:59'),
(69, 10028, 26, 1, '[{\"id\":\"15\",\"descripcion\":\"pique macho\",\"cantidad\":\"1\",\"stock\":\"5\",\"precio\":\"80\",\"total\":\"80\"}]', 80, '2024-08-28 12:27:48'),
(70, 10029, 36, 1, '[{\"id\":\"55\",\"descripcion\":\"producto 149\",\"cantidad\":\"1\",\"stock\":\"407\",\"precio\":\"125\",\"total\":\"125\"}]', 125, '2024-08-30 02:40:46'),
(71, 10030, 6, 1, '[{\"id\":\"15\",\"descripcion\":\"pique macho\",\"cantidad\":\"1\",\"stock\":\"4\",\"precio\":\"80\",\"total\":\"80\"}]', 80, '2024-08-30 02:48:20'),
(74, 10031, 37, 1, '[{\"id\":\"56\",\"descripcion\":\"pollo\",\"cantidad\":\"1\",\"stock\":\"79\",\"precio\":\"18\",\"precioCompra\":\"undefined\",\"total\":\"18\"}]', 18, '2024-09-16 15:26:12'),
(75, 10032, 26, 1, '[{\"id\":\"1\",\"descripcion\":\"sopa de mani\",\"cantidad\":\"1\",\"stock\":\"14\",\"precio\":\"10\",\"precioCompra\":\"undefined\",\"total\":\"10\"}]', 10, '2024-09-16 15:28:59'),
(76, 10033, 36, 1, '[{\"id\":\"2\",\"descripcion\":\"coca cola\",\"cantidad\":\"1\",\"stock\":\"46\",\"precio\":\"18\",\"precioCompra\":\"undefined\",\"total\":\"18\"}]', 18, '2019-09-16 15:29:15'),
(77, 10034, 37, 1, '[{\"id\":\"1\",\"descripcion\":\"sopa de mani\",\"cantidad\":\"1\",\"stock\":\"13\",\"precio\":\"10\",\"precioCompra\":\"undefined\",\"total\":\"10\"}]', 10, '2024-09-16 15:30:04'),
(78, 10035, 6, 1, '[{\"id\":\"1\",\"descripcion\":\"sopa de mani\",\"cantidad\":\"13\",\"stock\":\"0\",\"precio\":\"10\",\"precioCompra\":\"0\",\"total\":\"130\"}]', 130, '2019-09-11 15:36:19'),
(79, 10036, 6, 1, '[{\"id\":\"15\",\"descripcion\":\"pique macho\",\"cantidad\":\"14\",\"stock\":\"0\",\"precio\":\"80\",\"precioCompra\":\"0\",\"total\":\"1120\"}]', 1120, '2015-09-09 15:47:56'),
(82, 10038, 1, 1, '[{\"id\":\"2\",\"descripcion\":\"coca cola\",\"cantidad\":\"1\",\"stock\":\"44\",\"precio\":\"18\",\"precioCompra\":\"10\",\"total\":\"18\"}]', 18, '2023-09-16 19:15:02'),
(83, 10039, 36, 1, '[{\"id\":\"3\",\"descripcion\":\"fanta 2l\",\"cantidad\":\"1\",\"stock\":\"48\",\"precio\":\"18\",\"precioCompra\":\"0\",\"total\":\"18\"}]', 18, '2023-09-16 19:16:45'),
(84, 10040, 1, 1, '[{\"id\":\"56\",\"descripcion\":\"pollo\",\"cantidad\":\"1\",\"stock\":\"77\",\"precio\":\"18\",\"precioCompra\":\"0\",\"total\":\"18\"}]', 18, '2024-09-16 23:03:28'),
(85, 10041, 37, 1, '[{\"id\":\"56\",\"descripcion\":\"pollo\",\"cantidad\":\"1\",\"stock\":\"76\",\"precio\":\"18\",\"precioCompra\":\"0\",\"total\":\"18\"}]', 18, '2024-09-17 03:06:33'),
(86, 10042, 1, 1, '[{\"id\":\"57\",\"descripcion\":\"ee\",\"cantidad\":\"1\",\"stock\":\"829\",\"precio\":\"7\",\"precioCompra\":\"0\",\"total\":\"7\"}]', 7, '2024-09-17 03:22:15'),
(87, 10043, 1, 1, '[{\"id\":\"2\",\"descripcion\":\"coca cola\",\"cantidad\":\"1\",\"stock\":\"43\",\"precio\":\"18\",\"precioCompra\":\"10\",\"total\":\"18\"}]', 18, '2024-09-17 03:24:47'),
(92, 10044, 1, 1, '[{\"id\":\"2\",\"descripcion\":\"coca cola\",\"cantidad\":\"1\",\"stock\":\"39\",\"precio\":\"18\",\"precioCompra\":\"10\",\"total\":\"18\"}]', 18, '2024-09-17 17:19:50'),
(93, 10045, 28, 1, '[{\"id\":\"2\",\"descripcion\":\"coca cola\",\"cantidad\":\"1\",\"stock\":\"38\",\"precio\":\"18\",\"precioCompra\":\"10\",\"total\":\"18\"}]', 18, '2024-09-18 00:16:07'),
(101, 10046, 28, 1, '[{\"id\":\"6\",\"descripcion\":\"silpancho\",\"cantidad\":\"1\",\"stock\":\"49\",\"precio\":\"20\",\"precioCompra\":\"0\",\"total\":\"20\"}]', 20, '2024-09-18 03:09:11'),
(102, 10047, 1, 1, '[{\"id\":\"1\",\"descripcion\":\"sopa de mani\",\"cantidad\":\"1\",\"stock\":\"99\",\"precio\":\"10\",\"precioCompra\":\"20\",\"total\":\"10\"}]', 10, '2024-09-18 14:57:31'),
(103, 10048, 1, 1, '[{\"id\":\"1\",\"descripcion\":\"sopa de mani\",\"cantidad\":\"1\",\"stock\":\"98\",\"precio\":\"10\",\"precioCompra\":\"20\",\"total\":\"10\"}]', 10, '2024-09-18 15:00:16'),
(104, 10049, 1, 1, '[{\"id\":\"48\",\"descripcion\":\"producto 142\",\"cantidad\":\"1\",\"stock\":\"339\",\"precio\":\"90\",\"precioCompra\":\"0\",\"total\":\"90\"}]', 90, '2024-09-18 15:06:37'),
(105, 10050, 1, 1, '[{\"id\":\"1\",\"descripcion\":\"sopa de mani\",\"cantidad\":\"1\",\"stock\":\"97\",\"precio\":\"10\",\"precioCompra\":\"20\",\"total\":\"10\"}]', 10, '2024-09-18 15:07:31'),
(106, 10051, 1, 1, '[{\"id\":\"1\",\"descripcion\":\"sopa de mani\",\"cantidad\":\"1\",\"stock\":\"96\",\"precio\":\"10\",\"precioCompra\":\"20\",\"total\":\"10\"}]', 10, '2024-09-18 15:08:05'),
(107, 10052, 1, 1, '[{\"id\":\"1\",\"descripcion\":\"sopa de mani\",\"cantidad\":\"1\",\"stock\":\"95\",\"precio\":\"10\",\"precioCompra\":\"20\",\"total\":\"10\"}]', 10, '2024-09-18 15:08:58'),
(108, 10053, 24, 1, '[{\"id\":\"2\",\"descripcion\":\"coca cola\",\"cantidad\":\"50\",\"stock\":\"38\",\"precio\":\"18\",\"precioCompra\":\"10\",\"total\":\"900\"}]', 900, '2024-09-18 15:09:42'),
(109, 10054, 28, 1, '[{\"id\":\"1\",\"descripcion\":\"sopa de mani\",\"cantidad\":\"1\",\"stock\":\"94\",\"precio\":\"10\",\"precioCompra\":\"20\",\"total\":\"10\"}]', 10, '2024-09-18 15:10:56'),
(110, 10055, 6, 1, '[{\"id\":\"14\",\"descripcion\":\"Rapi al jugo\",\"cantidad\":\"1\",\"stock\":\"51\",\"precio\":\"18\",\"precioCompra\":\"0\",\"total\":\"18\"}]', 18, '2024-09-18 15:11:41'),
(111, 10055, 36, 1, '[{\"id\":\"11\",\"descripcion\":\"majadito\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"20\",\"precioCompra\":\"0\",\"total\":\"20\"}]', 20, '2024-09-18 15:12:01'),
(112, 10056, 36, 1, '[{\"id\":\"1\",\"descripcion\":\"sopa de mani\",\"cantidad\":\"1\",\"stock\":\"93\",\"precio\":\"10\",\"precioCompra\":\"20\",\"total\":\"10\"}]', 10, '2024-09-18 15:12:24'),
(113, 10057, 1, 1, '[{\"id\":\"10\",\"descripcion\":\"chancho a la cruz\",\"cantidad\":\"1\",\"stock\":\"46\",\"precio\":\"80\",\"precioCompra\":\"0\",\"total\":\"80\"}]', 80, '2024-09-18 15:13:55'),
(114, 10058, 1, 1, '[{\"id\":\"1\",\"descripcion\":\"sopa de mani\",\"cantidad\":\"1\",\"stock\":\"93\",\"precio\":\"10\",\"precioCompra\":\"20\",\"total\":\"10\"}]', 10, '2024-09-18 15:15:56'),
(115, 10059, 6, 1, '[{\"id\":\"1\",\"descripcion\":\"sopa de mani\",\"cantidad\":\"1\",\"stock\":\"92\",\"precio\":\"10\",\"precioCompra\":\"20\",\"total\":\"10\"},{\"id\":\"2\",\"descripcion\":\"coca cola\",\"cantidad\":\"1\",\"stock\":\"37\",\"precio\":\"18\",\"precioCompra\":\"10\",\"total\":\"18\"}]', 28, '2024-09-18 15:18:06'),
(116, 10059, 1, 1, '[{\"id\":\"1\",\"descripcion\":\"sopa de mani\",\"cantidad\":\"1\",\"stock\":\"91\",\"precio\":\"10\",\"precioCompra\":\"20\",\"total\":\"10\"},{\"id\":\"2\",\"descripcion\":\"coca cola\",\"cantidad\":\"1\",\"stock\":\"36\",\"precio\":\"18\",\"precioCompra\":\"10\",\"total\":\"18\"}]', 28, '2024-09-18 15:18:17'),
(117, 10060, 1, 1, '[{\"id\":\"1\",\"descripcion\":\"sopa de mani\",\"cantidad\":\"1\",\"stock\":\"90\",\"precio\":\"10\",\"precioCompra\":\"20\",\"total\":\"10\"}]', 10, '2024-09-18 15:18:35'),
(118, 10060, 1, 1, '[{\"id\":\"1\",\"descripcion\":\"sopa de mani\",\"cantidad\":\"1\",\"stock\":\"90\",\"precio\":\"10\",\"precioCompra\":\"20\",\"total\":\"10\"}]', 10, '2024-09-18 15:18:49'),
(119, 10060, 1, 1, '[{\"id\":\"1\",\"descripcion\":\"sopa de mani\",\"cantidad\":\"1\",\"stock\":\"90\",\"precio\":\"10\",\"precioCompra\":\"20\",\"total\":\"10\"}]', 10, '2024-09-18 15:18:53'),
(120, 10061, 1, 1, '[{\"id\":\"1\",\"descripcion\":\"sopa de mani\",\"cantidad\":\"1\",\"stock\":\"89\",\"precio\":\"10\",\"precioCompra\":\"20\",\"total\":\"10\"}]', 10, '2024-09-18 15:19:36'),
(121, 10061, 1, 1, '[{\"id\":\"1\",\"descripcion\":\"sopa de mani\",\"cantidad\":\"1\",\"stock\":\"89\",\"precio\":\"10\",\"precioCompra\":\"20\",\"total\":\"10\"}]', 10, '2024-09-18 15:19:40'),
(122, 10061, 1, 1, '[{\"id\":\"1\",\"descripcion\":\"sopa de mani\",\"cantidad\":\"1\",\"stock\":\"89\",\"precio\":\"10\",\"precioCompra\":\"20\",\"total\":\"10\"}]', 10, '2024-09-18 15:22:31'),
(123, 10061, 1, 1, '[{\"id\":\"1\",\"descripcion\":\"sopa de mani\",\"cantidad\":\"1\",\"stock\":\"89\",\"precio\":\"10\",\"precioCompra\":\"20\",\"total\":\"10\"}]', 10, '2024-09-18 15:22:48'),
(124, 10061, 1, 1, '[{\"id\":\"1\",\"descripcion\":\"sopa de mani\",\"cantidad\":\"1\",\"stock\":\"89\",\"precio\":\"10\",\"precioCompra\":\"20\",\"total\":\"10\"}]', 10, '2024-09-18 15:22:53'),
(125, 10061, 1, 1, '[{\"id\":\"1\",\"descripcion\":\"sopa de mani\",\"cantidad\":\"1\",\"stock\":\"89\",\"precio\":\"10\",\"precioCompra\":\"20\",\"total\":\"10\"}]', 10, '2024-09-18 15:22:58'),
(126, 10061, 1, 1, '[{\"id\":\"1\",\"descripcion\":\"sopa de mani\",\"cantidad\":\"1\",\"stock\":\"89\",\"precio\":\"10\",\"precioCompra\":\"20\",\"total\":\"10\"}]', 10, '2024-09-18 15:26:03'),
(127, 10061, 1, 1, '[{\"id\":\"1\",\"descripcion\":\"sopa de mani\",\"cantidad\":\"1\",\"stock\":\"89\",\"precio\":\"10\",\"precioCompra\":\"20\",\"total\":\"10\"}]', 10, '2024-09-18 15:26:07'),
(128, 10061, 1, 1, '[{\"id\":\"1\",\"descripcion\":\"sopa de mani\",\"cantidad\":\"1\",\"stock\":\"89\",\"precio\":\"10\",\"precioCompra\":\"20\",\"total\":\"10\"}]', 10, '2024-09-18 15:28:59'),
(129, 10062, 1, 1, '[{\"id\":\"1\",\"descripcion\":\"sopa de mani\",\"cantidad\":\"1\",\"stock\":\"88\",\"precio\":\"10\",\"precioCompra\":\"20\",\"total\":\"10\"}]', 10, '2024-09-18 15:29:05'),
(130, 10063, 1, 1, '[{\"id\":\"26\",\"descripcion\":\"producto 120\",\"cantidad\":\"1\",\"stock\":\"118\",\"precio\":\"30\",\"precioCompra\":\"0\",\"total\":\"30\"}]', 30, '2024-09-18 15:30:12'),
(131, 10063, 1, 1, '[{\"id\":\"18\",\"descripcion\":\"producto 112\",\"cantidad\":\"1\",\"stock\":\"39\",\"precio\":\"30\",\"precioCompra\":\"0\",\"total\":\"30\"}]', 30, '2024-09-18 15:30:19'),
(132, 10063, 1, 1, '[{\"id\":\"18\",\"descripcion\":\"producto 112\",\"cantidad\":\"1\",\"stock\":\"39\",\"precio\":\"30\",\"precioCompra\":\"0\",\"total\":\"30\"}]', 30, '2024-09-18 15:30:23'),
(133, 10063, 1, 1, '[{\"id\":\"18\",\"descripcion\":\"producto 112\",\"cantidad\":\"1\",\"stock\":\"39\",\"precio\":\"30\",\"precioCompra\":\"0\",\"total\":\"30\"}]', 30, '2024-09-18 15:30:28'),
(134, 10063, 1, 1, '[{\"id\":\"18\",\"descripcion\":\"producto 112\",\"cantidad\":\"1\",\"stock\":\"39\",\"precio\":\"30\",\"precioCompra\":\"0\",\"total\":\"30\"}]', 30, '2024-09-18 15:31:52'),
(135, 10064, 1, 1, '[{\"id\":\"9\",\"descripcion\":\"planchita\",\"cantidad\":\"1\",\"stock\":\"48\",\"precio\":\"100\",\"precioCompra\":\"0\",\"total\":\"100\"}]', 100, '2024-09-18 15:32:04'),
(136, 10065, 26, 1, '[{\"id\":\"1\",\"descripcion\":\"sopa de mani\",\"cantidad\":\"5\",\"stock\":\"83\",\"precio\":\"10\",\"precioCompra\":\"20\",\"total\":\"50\"}]', 50, '2024-09-18 15:35:48'),
(137, 10066, 36, 1, '[{\"id\":\"1\",\"descripcion\":\"sopa de mani\",\"cantidad\":\"10\",\"stock\":\"73\",\"precio\":\"10\",\"precioCompra\":\"20\",\"total\":\"100\"}]', 100, '2024-09-18 15:37:08'),
(138, 10067, 1, 1, '[{\"id\":\"2\",\"descripcion\":\"coca cola\",\"cantidad\":\"1\",\"stock\":\"35\",\"precio\":\"18\",\"precioCompra\":\"10\",\"total\":\"18\"}]', 18, '2024-09-18 15:38:39'),
(139, 10068, 1, 1, '[{\"id\":\"55\",\"descripcion\":\"producto 149\",\"cantidad\":\"1\",\"stock\":\"410\",\"precio\":\"125\",\"precioCompra\":\"0\",\"total\":\"125\"},{\"id\":\"54\",\"descripcion\":\"producto 148\",\"cantidad\":\"1\",\"stock\":\"399\",\"precio\":\"120\",\"precioCompra\":\"0\",\"total\":\"120\"},{\"id\":\"53\",\"descripcion\":\"producto 147\",\"cantidad\":\"1\",\"stock\":\"389\",\"precio\":\"115\",\"precioCompra\":\"0\",\"total\":\"115\"},{\"id\":\"52\",\"descripcion\":\"producto 146\",\"cantidad\":\"1\",\"stock\":\"379\",\"precio\":\"110\",\"precioCompra\":\"0\",\"total\":\"110\"},{\"id\":\"51\",\"descripcion\":\"producto 145\",\"cantidad\":\"1\",\"stock\":\"369\",\"precio\":\"105\",\"precioCompra\":\"0\",\"total\":\"105\"},{\"id\":\"48\",\"descripcion\":\"producto 142\",\"cantidad\":\"1\",\"stock\":\"338\",\"precio\":\"90\",\"precioCompra\":\"0\",\"total\":\"90\"},{\"id\":\"49\",\"descripcion\":\"producto 143\",\"cantidad\":\"1\",\"stock\":\"349\",\"precio\":\"95\",\"precioCompra\":\"0\",\"total\":\"95\"},{\"id\":\"50\",\"descripcion\":\"producto 144\",\"cantidad\":\"1\",\"stock\":\"359\",\"precio\":\"100\",\"precioCompra\":\"0\",\"total\":\"100\"},{\"id\":\"56\",\"descripcion\":\"pollo\",\"cantidad\":\"1\",\"stock\":\"75\",\"precio\":\"18\",\"precioCompra\":\"0\",\"total\":\"18\"},{\"id\":\"57\",\"descripcion\":\"Masaco\",\"cantidad\":\"1\",\"stock\":\"828\",\"precio\":\"7\",\"precioCompra\":\"0\",\"total\":\"7\"},{\"id\":\"38\",\"descripcion\":\"producto 132\",\"cantidad\":\"1\",\"stock\":\"239\",\"precio\":\"40\",\"precioCompra\":\"0\",\"total\":\"40\"},{\"id\":\"39\",\"descripcion\":\"producto 133\",\"cantidad\":\"1\",\"stock\":\"249\",\"precio\":\"45\",\"precioCompra\":\"0\",\"total\":\"45\"},{\"id\":\"40\",\"descripcion\":\"producto 134\",\"cantidad\":\"1\",\"stock\":\"259\",\"precio\":\"50\",\"precioCompra\":\"0\",\"total\":\"50\"},{\"id\":\"41\",\"descripcion\":\"producto 135\",\"cantidad\":\"1\",\"stock\":\"269\",\"precio\":\"55\",\"precioCompra\":\"0\",\"total\":\"55\"},{\"id\":\"42\",\"descripcion\":\"producto 136\",\"cantidad\":\"1\",\"stock\":\"279\",\"precio\":\"60\",\"precioCompra\":\"0\",\"total\":\"60\"},{\"id\":\"43\",\"descripcion\":\"producto 137\",\"cantidad\":\"1\",\"stock\":\"289\",\"precio\":\"65\",\"precioCompra\":\"0\",\"total\":\"65\"},{\"id\":\"44\",\"descripcion\":\"producto 138\",\"cantidad\":\"1\",\"stock\":\"299\",\"precio\":\"70\",\"precioCompra\":\"0\",\"total\":\"70\"},{\"id\":\"45\",\"descripcion\":\"producto 139\",\"cantidad\":\"1\",\"stock\":\"309\",\"precio\":\"75\",\"precioCompra\":\"0\",\"total\":\"75\"},{\"id\":\"46\",\"descripcion\":\"producto 140\",\"cantidad\":\"1\",\"stock\":\"319\",\"precio\":\"80\",\"precioCompra\":\"0\",\"total\":\"80\"},{\"id\":\"47\",\"descripcion\":\"producto 141\",\"cantidad\":\"1\",\"stock\":\"329\",\"precio\":\"85\",\"precioCompra\":\"0\",\"total\":\"85\"},{\"id\":\"28\",\"descripcion\":\"producto 122\",\"cantidad\":\"1\",\"stock\":\"139\",\"precio\":\"26\",\"precioCompra\":\"0\",\"total\":\"26\"},{\"id\":\"29\",\"descripcion\":\"producto 123\",\"cantidad\":\"1\",\"stock\":\"149\",\"precio\":\"24\",\"precioCompra\":\"0\",\"total\":\"24\"},{\"id\":\"30\",\"descripcion\":\"producto 124\",\"cantidad\":\"1\",\"stock\":\"159\",\"precio\":\"22\",\"precioCompra\":\"0\",\"total\":\"22\"},{\"id\":\"31\",\"descripcion\":\"producto 125\",\"cantidad\":\"1\",\"stock\":\"169\",\"precio\":\"20\",\"precioCompra\":\"0\",\"total\":\"20\"},{\"id\":\"32\",\"descripcion\":\"producto 126\",\"cantidad\":\"1\",\"stock\":\"179\",\"precio\":\"18\",\"precioCompra\":\"0\",\"total\":\"18\"},{\"id\":\"33\",\"descripcion\":\"producto 127\",\"cantidad\":\"1\",\"stock\":\"189\",\"precio\":\"25\",\"precioCompra\":\"0\",\"total\":\"25\"},{\"id\":\"34\",\"descripcion\":\"producto 128\",\"cantidad\":\"1\",\"stock\":\"199\",\"precio\":\"22\",\"precioCompra\":\"0\",\"total\":\"22\"},{\"id\":\"35\",\"descripcion\":\"producto 129\",\"cantidad\":\"1\",\"stock\":\"209\",\"precio\":\"20\",\"precioCompra\":\"0\",\"total\":\"20\"},{\"id\":\"36\",\"descripcion\":\"producto 130\",\"cantidad\":\"1\",\"stock\":\"219\",\"precio\":\"30\",\"precioCompra\":\"0\",\"total\":\"30\"},{\"id\":\"37\",\"descripcion\":\"producto 131\",\"cantidad\":\"1\",\"stock\":\"229\",\"precio\":\"35\",\"precioCompra\":\"0\",\"total\":\"35\"},{\"id\":\"18\",\"descripcion\":\"producto 112\",\"cantidad\":\"1\",\"stock\":\"38\",\"precio\":\"30\",\"precioCompra\":\"0\",\"total\":\"30\"},{\"id\":\"19\",\"descripcion\":\"producto 113\",\"cantidad\":\"1\",\"stock\":\"49\",\"precio\":\"35\",\"precioCompra\":\"0\",\"total\":\"35\"},{\"id\":\"20\",\"descripcion\":\"producto 114\",\"cantidad\":\"1\",\"stock\":\"59\",\"precio\":\"20\",\"precioCompra\":\"0\",\"total\":\"20\"},{\"id\":\"21\",\"descripcion\":\"producto 115\",\"cantidad\":\"1\",\"stock\":\"69\",\"precio\":\"22\",\"precioCompra\":\"0\",\"total\":\"22\"},{\"id\":\"22\",\"descripcion\":\"producto 116\",\"cantidad\":\"1\",\"stock\":\"79\",\"precio\":\"27\",\"precioCompra\":\"0\",\"total\":\"27\"},{\"id\":\"23\",\"descripcion\":\"producto 117\",\"cantidad\":\"1\",\"stock\":\"89\",\"precio\":\"32\",\"precioCompra\":\"0\",\"total\":\"32\"},{\"id\":\"24\",\"descripcion\":\"producto 118\",\"cantidad\":\"1\",\"stock\":\"99\",\"precio\":\"18\",\"precioCompra\":\"0\",\"total\":\"18\"},{\"id\":\"25\",\"descripcion\":\"producto 119\",\"cantidad\":\"1\",\"stock\":\"108\",\"precio\":\"25\",\"precioCompra\":\"0\",\"total\":\"25\"},{\"id\":\"26\",\"descripcion\":\"producto 120\",\"cantidad\":\"1\",\"stock\":\"117\",\"precio\":\"30\",\"precioCompra\":\"0\",\"total\":\"30\"},{\"id\":\"27\",\"descripcion\":\"producto 121\",\"cantidad\":\"1\",\"stock\":\"128\",\"precio\":\"28\",\"precioCompra\":\"0\",\"total\":\"28\"},{\"id\":\"3\",\"descripcion\":\"fanta 2l\",\"cantidad\":\"1\",\"stock\":\"47\",\"precio\":\"18\",\"precioCompra\":\"0\",\"total\":\"18\"},{\"id\":\"6\",\"descripcion\":\"silpancho\",\"cantidad\":\"1\",\"stock\":\"48\",\"precio\":\"20\",\"precioCompra\":\"0\",\"total\":\"20\"},{\"id\":\"8\",\"descripcion\":\"locro\",\"cantidad\":\"1\",\"stock\":\"48\",\"precio\":\"15\",\"precioCompra\":\"0\",\"total\":\"15\"},{\"id\":\"9\",\"descripcion\":\"planchita\",\"cantidad\":\"1\",\"stock\":\"47\",\"precio\":\"100\",\"precioCompra\":\"0\",\"total\":\"100\"},{\"id\":\"10\",\"descripcion\":\"chancho a la cruz\",\"cantidad\":\"1\",\"stock\":\"45\",\"precio\":\"80\",\"precioCompra\":\"0\",\"total\":\"80\"},{\"id\":\"14\",\"descripcion\":\"Rapi al jugo\",\"cantidad\":\"1\",\"stock\":\"50\",\"precio\":\"18\",\"precioCompra\":\"0\",\"total\":\"18\"},{\"id\":\"16\",\"descripcion\":\"ño\",\"cantidad\":\"1\",\"stock\":\"34\",\"precio\":\"50\",\"precioCompra\":\"0\",\"total\":\"50\"},{\"id\":\"17\",\"descripcion\":\"producto 111\",\"cantidad\":\"1\",\"stock\":\"29\",\"precio\":\"25\",\"precioCompra\":\"0\",\"total\":\"25\"},{\"id\":\"1\",\"descripcion\":\"sopa de mani\",\"cantidad\":\"1\",\"stock\":\"72\",\"precio\":\"10\",\"precioCompra\":\"20\",\"total\":\"10\"},{\"id\":\"2\",\"descripcion\":\"coca cola\",\"cantidad\":\"1\",\"stock\":\"34\",\"precio\":\"18\",\"precioCompra\":\"10\",\"total\":\"18\"}]', 2373, '2024-09-18 16:02:06'),
(144, 10069, 28, 1, '[{\"id\":\"50\",\"descripcion\":\"producto 144\",\"cantidad\":\"50\",\"stock\":\"309\",\"precio\":\"100\",\"total\":\"5000\"},{\"id\":\"\",\"descripcion\":\"Seleccione el producto\",\"cantidad\":\"1\",\"stock\":\"\",\"precio\":\"\",\"total\":\"\"}]', 5000, '2024-09-18 16:49:50'),
(145, 10070, 28, 1, '[{\"id\":\"49\",\"descripcion\":\"producto 143\",\"cantidad\":\"1\",\"stock\":\"348\",\"precio\":\"95\",\"total\":\"95\"},{\"id\":\"\",\"descripcion\":\"Seleccione el producto\",\"cantidad\":\"1\",\"stock\":\"\",\"precio\":\"\",\"total\":\"\"}]', 95, '2024-09-18 16:52:46'),
(146, 10071, 1, 1, '[{\"id\":\"51\",\"descripcion\":\"producto 145\",\"cantidad\":\"1\",\"stock\":\"368\",\"precio\":\"105\",\"precioCompra\":\"0\",\"total\":\"105\"}]', 105, '2024-09-18 16:53:12'),
(147, 10072, 1, 1, '[{\"id\":\"55\",\"descripcion\":\"producto 149\",\"cantidad\":\"1\",\"stock\":\"409\",\"precio\":\"125\",\"precioCompra\":\"0\",\"total\":\"125\"}]', 125, '2024-09-18 16:53:27'),
(148, 10073, 1, 1, '[{\"id\":\"1\",\"descripcion\":\"sopa de mani\",\"cantidad\":\"1\",\"stock\":\"71\",\"precio\":\"10\",\"precioCompra\":\"20\",\"total\":\"10\"}]', 10, '2024-09-18 16:54:24'),
(149, 10074, 1, 1, '[{\"id\":\"50\",\"descripcion\":\"producto 144\",\"cantidad\":\"2\",\"stock\":\"307\",\"precio\":\"100\",\"precioCompra\":\"0\",\"total\":\"200\"},{\"id\":\"\",\"descripcion\":\"Seleccione el producto\",\"cantidad\":\"1\",\"stock\":\"\",\"precio\":\"\",\"total\":\"\"}]', 200, '2024-09-18 16:54:59'),
(150, 10075, 1, 1, '[{\"id\":\"56\",\"descripcion\":\"pollo\",\"cantidad\":\"1\",\"stock\":\"74\",\"precio\":\"18\",\"precioCompra\":\"0\",\"total\":\"18\"}]', 18, '2024-09-18 16:56:17'),
(151, 10076, 1, 1, '[{\"id\":\"49\",\"descripcion\":\"producto 143\",\"cantidad\":\"2\",\"stock\":\"346\",\"precio\":\"95\",\"precioCompra\":\"0\",\"total\":\"190\"},{\"id\":\"\",\"descripcion\":\"Seleccione el producto\",\"cantidad\":\"1\",\"stock\":\"\",\"precio\":\"\",\"total\":\"\"}]', 190, '2024-09-18 16:56:56'),
(152, 10077, 28, 1, '[{\"id\":\"48\",\"descripcion\":\"producto 142\",\"cantidad\":\"2\",\"stock\":\"336\",\"precio\":\"90\",\"total\":\"180\"},{\"id\":\"\",\"descripcion\":\"Seleccione el producto\",\"cantidad\":\"1\",\"stock\":\"\",\"precio\":\"\",\"total\":\"\"}]', 180, '2024-09-18 17:01:49'),
(153, 10078, 1, 1, '[{\"id\":\"2\",\"descripcion\":\"coca cola\",\"cantidad\":\"1\",\"stock\":\"52\",\"precio\":\"18\",\"precioCompra\":\"10\",\"total\":\"18\"}]', 18, '2024-09-18 18:13:17'),
(154, 10079, 1, 1, '[{\"id\":\"2\",\"descripcion\":\"coca cola\",\"cantidad\":\"1\",\"stock\":\"51\",\"precio\":\"18\",\"precioCompra\":\"10\",\"total\":\"18\"}]', 18, '2024-09-18 23:45:44'),
(155, 10080, 28, 1, '[{\"id\":\"2\",\"descripcion\":\"coca cola\",\"cantidad\":\"1\",\"stock\":\"50\",\"precio\":\"18\",\"precioCompra\":\"10\",\"total\":\"18\"}]', 18, '2024-09-20 02:26:30'),
(156, 10081, 1, 1, '[{\"id\":\"15\",\"descripcion\":\"pique macho\",\"cantidad\":\"1\",\"stock\":\"49\",\"precio\":\"80\",\"precioCompra\":\"50\",\"total\":\"80\"}]', 80, '2024-09-21 00:30:05'),
(157, 10082, 24, 1, '[{\"id\":\"1\",\"descripcion\":\"sopa de mani\",\"cantidad\":\"50\",\"stock\":\"121\",\"precio\":\"10\",\"precioCompra\":\"20\",\"total\":\"500\"}]', 500, '2024-09-21 00:31:36'),
(158, 10083, 26, 1, '[{\"id\":\"15\",\"descripcion\":\"pique macho\",\"cantidad\":\"1\",\"stock\":\"48\",\"precio\":\"80\",\"precioCompra\":\"50\",\"total\":\"80\"}]', 80, '2024-09-21 00:32:15'),
(159, 10084, 28, 1, '[{\"id\":\"15\",\"descripcion\":\"pique macho\",\"cantidad\":\"1\",\"stock\":\"47\",\"precio\":\"80\",\"precioCompra\":\"50\",\"total\":\"80\"}]', 80, '2024-09-21 00:32:57'),
(160, 10085, 1, 1, '[{\"id\":\"56\",\"descripcion\":\"pollo\",\"cantidad\":\"1\",\"stock\":\"73\",\"precio\":\"18\",\"precioCompra\":\"0\",\"total\":\"18\"}]', 18, '2024-09-21 00:44:17'),
(161, 10086, 26, 1, '[{\"id\":\"1\",\"descripcion\":\"sopa de mani\",\"cantidad\":\"1\",\"stock\":\"224\",\"precio\":\"10\",\"precioCompra\":\"20\",\"total\":\"10\"}]', 10, '2024-09-21 00:56:40'),
(162, 10087, 1, 1, '[{\"id\":\"1\",\"descripcion\":\"sopa de mani\",\"cantidad\":\"2\",\"stock\":\"224\",\"precio\":\"10\",\"total\":\"20\"},{\"id\":\"\",\"descripcion\":\"Seleccione el producto\",\"cantidad\":\"1\",\"stock\":\"\",\"precio\":\"\",\"total\":\"\"}]', 20, '2024-09-21 00:59:05'),
(163, 10088, 28, 1, '[{\"id\":\"1\",\"descripcion\":\"sopa de mani\",\"cantidad\":\"1\",\"stock\":\"223\",\"precio\":\"10\",\"precioCompra\":\"20\",\"total\":\"10\"},{\"id\":\"14\",\"descripcion\":\"Rapi al jugo\",\"cantidad\":\"1\",\"stock\":\"49\",\"precio\":\"18\",\"total\":\"18\"}]', 28, '2024-09-21 01:04:19'),
(164, 10089, 1, 1, '[{\"id\":\"57\",\"descripcion\":\"Masaco\",\"cantidad\":\"1\",\"stock\":\"827\",\"precio\":\"7\",\"total\":\"7\"},{\"id\":\"2\",\"descripcion\":\"coca cola\",\"cantidad\":\"1\",\"stock\":\"250\",\"precio\":\"18\",\"total\":\"18\"}]', 7, '2024-09-21 01:09:09'),
(165, 10090, 24, 1, '[{\"id\":\"2\",\"descripcion\":\"coca cola\",\"cantidad\":\"1\",\"stock\":\"249\",\"precio\":\"18\",\"total\":\"18\"},{\"id\":\"1\",\"descripcion\":\"sopa de mani\",\"cantidad\":\"1\",\"stock\":\"223\",\"precio\":\"10\",\"total\":\"10\"},{\"id\":\"9\",\"descripcion\":\"planchita\",\"cantidad\":\"1\",\"stock\":\"46\",\"precio\":\"100\",\"total\":\"100\"}]', 128, '2024-09-21 01:11:19'),
(166, 10091, 26, 1, '[{\"id\":\"1\",\"descripcion\":\"sopa de mani\",\"cantidad\":\"1\",\"stock\":\"222\",\"precio\":\"10\",\"total\":\"10\"},{\"id\":\"2\",\"descripcion\":\"coca cola\",\"cantidad\":\"1\",\"stock\":\"248\",\"precio\":\"18\",\"total\":\"18\"}]', 10, '2024-09-21 01:12:19'),
(167, 10092, 1, 1, '[{\"id\":\"57\",\"descripcion\":\"Masaco\",\"cantidad\":\"1\",\"stock\":\"826\",\"precio\":\"7\",\"precioCompra\":\"10\",\"total\":\"7\"}]', 7, '2024-09-21 02:18:06'),
(168, 10093, 1, 1, '[{\"id\":\"1\",\"descripcion\":\"sopa de mani\",\"cantidad\":\"1\",\"stock\":\"229\",\"precio\":\"10\",\"precioCompra\":\"20\",\"total\":\"10\"}]', 10, '2024-09-21 16:11:17'),
(169, 10094, 28, 1, '[{\"id\":\"1\",\"descripcion\":\"sopa de mani\",\"cantidad\":\"1\",\"stock\":\"229\",\"precio\":\"10\",\"precioCompra\":\"9\",\"total\":\"10\"}]', 10, '2024-09-21 16:21:20'),
(170, 10095, 26, 1, '[{\"id\":\"1\",\"descripcion\":\"sopa de mani\",\"cantidad\":\"1\",\"stock\":\"228\",\"precio\":\"10\",\"precioCompra\":\"9\",\"total\":\"10\"}]', 10, '2024-09-22 06:45:47'),
(171, 10096, 6, 1, '[{\"id\":\"2\",\"descripcion\":\"coca cola\",\"cantidad\":\"1\",\"stock\":\"247\",\"precio\":\"18\",\"precioCompra\":\"10\",\"total\":\"18\"}]', 18, '2024-09-22 07:10:49'),
(172, 10097, 28, 1, '[{\"id\":\"1\",\"descripcion\":\"sopa de mani\",\"cantidad\":\"1\",\"stock\":\"226\",\"precio\":\"10\",\"precioCompra\":\"9\",\"total\":\"10\"},{\"id\":\"2\",\"descripcion\":\"coca cola\",\"cantidad\":\"1\",\"stock\":\"246\",\"precio\":\"18\",\"precioCompra\":\"10\",\"total\":\"18\"}]', 28, '2024-09-22 07:21:51');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de la tabla `compras`
--
ALTER TABLE `compras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `compras`
--
ALTER TABLE `compras`
  ADD CONSTRAINT `fk_compra_proveedor` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedor` (`id`),
  ADD CONSTRAINT `fk_compra_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
