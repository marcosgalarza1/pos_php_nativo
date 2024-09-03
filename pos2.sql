-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-09-2024 a las 06:16:26
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
(59, 'Categoría 50', '2024-08-11 04:49:00');

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
(6, 'mario terrazas moyerr', '98187102 SC', '780697572', 'mapaizo sur', 16, '2024-08-29 22:48:20', '2024-09-03 01:37:38'),
(24, 'marcos', 'th', '55', 'avmoscu', 5, '2024-08-01 15:22:51', '2024-08-11 03:28:45'),
(26, 'SEBASTIAN GONGORA', '95745545SC', '78064854', 'AV.MOSCU LOS PINOS', 11, '2024-08-28 08:27:48', '2024-08-28 12:27:48'),
(28, 'pepe aguilar', '9819076', ' 756-30-984', 'av,pamaizo', 1, '2024-08-25 22:04:37', '2024-08-26 02:04:37'),
(36, 'luis marcos galarza rivero', '9819076 sc', ' 756-20-296', 'avmoscu 7mo anillo', 2, '2024-08-29 22:40:46', '2024-09-03 01:34:12'),
(37, 'andrea pacheco', '9874555 sc', ' 785-55-852', 'av oeste', 0, '0000-00-00 00:00:00', '2024-08-30 02:52:21'),
(38, 'enri', '234324', '234324', '23sdfcsdf', 0, '0000-00-00 00:00:00', '2024-09-03 01:33:33');

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
  `estado` tinyint(4) NOT NULL DEFAULT 1,
  `fecha_alta` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `compras`
--

INSERT INTO `compras` (`id`, `codigo`, `total`, `productos`, `id_usuario`, `id_proveedor`, `estado`, `fecha_alta`) VALUES
(1, 10001, 0.00, '[{\"id\":\"57\",\"descripcion\":\"ee\",\"cantidad\":\"1\",\"stock\":\"826\",\"precio\":\"7\",\"total\":\"7\"}]', 1, 8, 1, '2024-09-02 03:37:48'),
(2, 10002, 0.00, '[{\"id\":\"56\",\"descripcion\":\"pollo\",\"cantidad\":\"1\",\"stock\":\"55\",\"precio\":\"18\",\"total\":\"18\"}]', 1, 9, 1, '2024-09-02 03:38:53'),
(3, 10003, 0.00, '[{\"id\":\"57\",\"descripcion\":\"ee\",\"cantidad\":\"1\",\"stock\":\"827\",\"precio\":\"7\",\"total\":\"7\"},{\"id\":\"56\",\"descripcion\":\"pollo\",\"cantidad\":\"1\",\"stock\":\"56\",\"precio\":\"18\",\"total\":\"18\"},{\"id\":\"1\",\"descripcion\":\"sopa de mani\",\"cantidad\":\"1\",\"stock\":\"8\",\"precio\":\"10\",\"total\":\"10\"}]', 1, 9, 1, '2024-09-02 03:49:10'),
(4, 10004, 84.00, '[{\"id\":\"56\",\"descripcion\":\"pollo\",\"cantidad\":\"3\",\"stock\":\"55\",\"precio\":\"18\",\"total\":\"54\"},{\"id\":\"1\",\"descripcion\":\"sopa de mani\",\"cantidad\":\"3\",\"stock\":\"7\",\"precio\":\"10\",\"total\":\"30\"}]', 1, 8, 1, '2024-09-02 03:54:45'),
(5, 10005, 500.00, '[{\"id\":\"16\",\"descripcion\":\"ño\",\"cantidad\":\"10\",\"stock\":\"10\",\"precio\":\"50\",\"total\":\"500\"}]', 1, 9, 1, '2024-09-02 03:55:37'),
(6, 10006, 100.00, '[{\"id\":\"16\",\"descripcion\":\"no\",\"cantidad\":\"2\",\"stock\":\"28\",\"precio\":\"50\",\"total\":\"100\"}]', 1, 8, 1, '2024-09-02 05:15:56'),
(7, 10007, 150.00, '[{\"id\":\"16\",\"descripcion\":\"ño\",\"cantidad\":\"3\",\"stock\":\"29\",\"precio\":\"50\",\"total\":\"150\"}]', 1, 9, 1, '2024-09-02 04:02:28'),
(8, 10008, 800.00, '[{\"id\":\"15\",\"descripcion\":\"pique macho\",\"cantidad\":\"10\",\"stock\":\"-6\",\"precio\":\"80\",\"total\":\"800\"}]', 1, 8, 1, '2024-09-02 04:03:55'),
(9, 10009, 18.00, '[{\"id\":\"56\",\"descripcion\":\"pollo\",\"cantidad\":\"1\",\"stock\":\"60\",\"precio\":\"18\",\"total\":\"18\"}]', 1, 8, 1, '2024-09-03 00:52:59'),
(10, 10010, 18.00, '[{\"id\":\"56\",\"descripcion\":\"pollo\",\"cantidad\":\"1\",\"stock\":\"61\",\"precio\":\"18\",\"total\":\"18\"}]', 1, 9, 1, '2024-09-03 00:53:54'),
(11, 10011, 18.00, '[{\"id\":\"56\",\"descripcion\":\"pollo\",\"cantidad\":\"1\",\"stock\":\"62\",\"precio\":\"18\",\"total\":\"18\"}]', 1, 9, 1, '2024-09-03 00:54:11'),
(12, 10012, 18.00, '[{\"id\":\"56\",\"descripcion\":\"pollo\",\"cantidad\":\"1\",\"stock\":\"63\",\"precio\":\"18\",\"total\":\"18\"}]', 1, 9, 1, '2024-09-03 00:55:49'),
(13, 10013, 393.00, '[{\"id\":\"56\",\"descripcion\":\"pollo\",\"cantidad\":\"1\",\"stock\":\"64\",\"precio\":\"18\",\"total\":\"18\"},{\"id\":\"55\",\"descripcion\":\"producto 149\",\"cantidad\":\"3\",\"stock\":\"404\",\"precio\":\"125\",\"total\":\"375\"}]', 1, 9, 1, '2024-09-03 01:06:03'),
(14, 10014, 72.00, '[{\"id\":\"56\",\"descripcion\":\"pollo\",\"cantidad\":\"4\",\"stock\":\"72\",\"precio\":\"18\",\"total\":\"72\"}]', 1, 11, 1, '2024-09-03 03:31:13');

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
  `ventas` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `id_categoria`, `codigo`, `descripcion`, `imagen`, `stock`, `precio_venta`, `ventas`, `fecha`) VALUES
(1, 1, '101', 'sopa de mani', 'vistas/img/productos/101/198.jpg', 15, 10, 8, '2024-09-03 01:37:38'),
(2, 2, '201', 'coca cola', 'vistas/img/productos/201/973.png', 47, 18, 3, '2024-08-01 18:58:12'),
(3, 2, '202', 'fanta 2l', 'vistas/img/productos/202/212.jpg', 49, 18, 1, '2024-07-18 12:11:36'),
(6, 1, '102', 'silpancho', 'vistas/img/productos/default/anonymous.png', 50, 20, 0, '2024-07-18 15:09:25'),
(8, 1, '104', 'locro', 'vistas/img/productos/default/anonymous.png', 49, 15, 1, '2024-07-19 12:34:41'),
(9, 1, '105', 'planchita', 'vistas/img/productos/default/anonymous.png', 49, 100, 1, '2024-08-10 20:34:38'),
(10, 1, '106', 'chancho a la cruz', 'vistas/img/productos/default/anonymous.png', 48, 80, 2, '2024-08-01 19:22:51'),
(11, 1, '107', 'majadito', 'vistas/img/productos/default/anonymous.png', 1, 20, 11, '2024-08-11 03:33:16'),
(14, 1, '108', 'Rapi al jugo', 'vistas/img/productos/default/anonymous.png', 52, 18, 0, '2024-08-13 03:17:01'),
(15, 1, '109', 'pique macho', 'vistas/img/productos/109/364.jpg', 14, 80, 2, '2024-09-02 04:03:55'),
(16, 1, '110', 'ño', 'vistas/img/productos/default/anonymous.png', 35, 50, 0, '2024-09-02 04:02:28'),
(17, 1, '111', 'producto 111', 'vistas/img/productos/default/anonymous.png', 30, 25, 5, '2024-08-11 14:00:00'),
(18, 2, '112', 'producto 112', 'vistas/img/productos/default/anonymous.png', 40, 30, 2, '2024-08-11 14:15:00'),
(19, 2, '113', 'producto 113', 'vistas/img/productos/default/anonymous.png', 50, 35, 1, '2024-08-11 14:30:00'),
(20, 3, '114', 'producto 114', 'vistas/img/productos/default/anonymous.png', 60, 20, 3, '2024-08-11 14:45:00'),
(21, 1, '115', 'producto 115', 'vistas/img/productos/default/anonymous.png', 70, 22, 6, '2024-08-11 15:00:00'),
(22, 2, '116', 'producto 116', 'vistas/img/productos/default/anonymous.png', 80, 27, 4, '2024-08-11 15:15:00'),
(23, 3, '117', 'producto 117', 'vistas/img/productos/default/anonymous.png', 90, 32, 7, '2024-08-11 15:30:00'),
(24, 1, '118', 'producto 118', 'vistas/img/productos/default/anonymous.png', 100, 18, 8, '2024-08-11 15:45:00'),
(25, 2, '119', 'producto 119', 'vistas/img/productos/default/anonymous.png', 109, 25, 6, '2024-09-01 23:13:23'),
(26, 3, '120', 'producto 120', 'vistas/img/productos/default/anonymous.png', 119, 30, 7, '2024-09-01 23:13:23'),
(27, 1, '121', 'producto 121', 'vistas/img/productos/default/anonymous.png', 129, 28, 5, '2024-09-01 23:13:23'),
(28, 2, '122', 'producto 122', 'vistas/img/productos/default/anonymous.png', 140, 26, 3, '2024-08-11 16:45:00'),
(29, 3, '123', 'producto 123', 'vistas/img/productos/default/anonymous.png', 150, 24, 5, '2024-08-11 17:00:00'),
(30, 1, '124', 'producto 124', 'vistas/img/productos/default/anonymous.png', 160, 22, 6, '2024-08-11 17:15:00'),
(31, 2, '125', 'producto 125', 'vistas/img/productos/default/anonymous.png', 170, 20, 7, '2024-08-11 17:30:00'),
(32, 3, '126', 'producto 126', 'vistas/img/productos/default/anonymous.png', 180, 18, 8, '2024-08-11 17:45:00'),
(33, 1, '127', 'producto 127', 'vistas/img/productos/default/anonymous.png', 190, 25, 4, '2024-08-11 18:00:00'),
(34, 2, '128', 'producto 128', 'vistas/img/productos/default/anonymous.png', 200, 22, 6, '2024-08-11 18:15:00'),
(35, 3, '129', 'producto 129', 'vistas/img/productos/default/anonymous.png', 210, 20, 5, '2024-08-11 18:30:00'),
(36, 1, '130', 'producto 130', 'vistas/img/productos/default/anonymous.png', 220, 30, 7, '2024-08-11 18:45:00'),
(37, 2, '131', 'producto 131', 'vistas/img/productos/default/anonymous.png', 230, 35, 3, '2024-08-11 19:00:00'),
(38, 3, '132', 'producto 132', 'vistas/img/productos/default/anonymous.png', 240, 40, 4, '2024-08-11 19:15:00'),
(39, 1, '133', 'producto 133', 'vistas/img/productos/default/anonymous.png', 250, 45, 5, '2024-08-11 19:30:00'),
(40, 2, '134', 'producto 134', 'vistas/img/productos/default/anonymous.png', 260, 50, 6, '2024-08-11 19:45:00'),
(41, 3, '135', 'producto 135', 'vistas/img/productos/default/anonymous.png', 270, 55, 7, '2024-08-11 20:00:00'),
(42, 1, '136', 'producto 136', 'vistas/img/productos/default/anonymous.png', 280, 60, 8, '2024-08-11 20:15:00'),
(43, 2, '137', 'producto 137', 'vistas/img/productos/default/anonymous.png', 290, 65, 9, '2024-08-11 20:30:00'),
(44, 3, '138', 'producto 138', 'vistas/img/productos/default/anonymous.png', 300, 70, 10, '2024-08-11 20:45:00'),
(45, 1, '139', 'producto 139', 'vistas/img/productos/default/anonymous.png', 310, 75, 11, '2024-08-11 21:00:00'),
(46, 2, '140', 'producto 140', 'vistas/img/productos/default/anonymous.png', 320, 80, 12, '2024-08-11 21:15:00'),
(47, 3, '141', 'producto 141', 'vistas/img/productos/default/anonymous.png', 330, 85, 13, '2024-08-11 21:30:00'),
(48, 1, '142', 'producto 142', 'vistas/img/productos/default/anonymous.png', 340, 90, 14, '2024-08-11 21:45:00'),
(49, 2, '143', 'producto 143', 'vistas/img/productos/default/anonymous.png', 350, 95, 15, '2024-08-11 22:00:00'),
(50, 3, '144', 'producto 144', 'vistas/img/productos/default/anonymous.png', 360, 100, 16, '2024-08-11 22:15:00'),
(51, 1, '145', 'producto 145', 'vistas/img/productos/default/anonymous.png', 370, 105, 17, '2024-08-11 22:30:00'),
(52, 2, '146', 'producto 146', 'vistas/img/productos/default/anonymous.png', 380, 110, 18, '2024-08-11 22:45:00'),
(53, 3, '147', 'producto 147', 'vistas/img/productos/default/anonymous.png', 390, 115, 19, '2024-08-11 23:00:00'),
(54, 1, '148', 'producto 148', 'vistas/img/productos/default/anonymous.png', 400, 120, 20, '2024-08-11 23:15:00'),
(55, 2, '149', 'producto 149', 'vistas/img/productos/default/anonymous.png', 411, 125, 24, '2024-09-03 01:34:12'),
(56, 57, '5701', 'pollo', 'vistas/img/productos/5701/866.jpg', 80, 18, 0, '2024-09-03 03:31:13'),
(57, 57, '5702', 'ee', 'vistas/img/productos/5702/573.jpg', 830, 7, 0, '2024-09-03 01:34:12');

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
(7, 'marcps', 'coca cola', '75620296', 'moscu', '2024-08-30 02:46:32'),
(8, 'alejandro montenegro', 'hauri', '77630488', 'los lotes 7mo anillo', '2024-08-30 02:47:01'),
(9, 'enrique', 'anotita', '124324324', 'qwdsada', '2024-09-01 23:02:51'),
(10, 'lisbeth', 'empres', '34234', 'sdflnsdoifnios', '2024-09-02 04:04:24'),
(11, 'PRUEBA', 'PRUEBA', '353543543', 'DFDSFS', '2024-09-03 03:30:09');

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
(1, 'admin', 'admin', '$2a$07$asxx54ahjppf45sd87a5auXBm1Vr2M1NV5t/zNQtGHGpS5fFirrbG', 'Administrador', 'vistas/img/usuarios/admin/868.jpg', 1, '2024-09-02 19:58:54', '2024-09-02 23:58:54'),
(60, 'zajir mendoza', 'pipo', '$2a$07$asxx54ahjppf45sd87a5auGZEtGHuyZwm.Ur.FJvWLCql3nmsMbXy', 'Vendedor', 'vistas/img/usuarios/pipo/437.jpg', 1, '2024-08-10 22:09:07', '2024-08-13 02:35:44'),
(61, 'Yobana Mendoza', 'david', '$2a$07$asxx54ahjppf45sd87a5auGZEtGHuyZwm.Ur.FJvWLCql3nmsMbXy', 'Vendedor', 'vistas/img/usuarios/david/501.jpg', 1, '2024-08-10 22:08:36', '2024-08-11 02:08:36'),
(62, 'EDWIN EDUARDO', 'EDWIN12', '$2a$07$asxx54ahjppf45sd87a5auGZEtGHuyZwm.Ur.FJvWLCql3nmsMbXy', 'Vendedor', 'vistas/img/usuarios/EDWIN12/449.jpg', 1, '2024-06-22 08:13:02', '2024-07-22 15:30:13'),
(89, 'Juan Perez', 'juanp', '$2a$07$examplehash1', 'Vendedor', 'vistas/img/usuarios/juanp/123.jpg', 1, '2024-08-01 10:00:00', '2024-08-12 00:30:18'),
(90, 'Ana Gómez', 'anag', '$2a$07$examplehash2', 'Especial', 'vistas/img/usuarios/anag/124.jpg', 1, '2024-08-02 11:30:00', '2024-08-02 15:30:00'),
(91, 'Carlos López', 'carlosl', '$2a$07$examplehash3', 'Vendedor', 'vistas/img/usuarios/carlosl/125.jpg', 1, '2024-08-03 09:00:00', '2024-08-03 13:00:00'),
(92, 'Marta Ruiz', 'matar', '$2a$07$examplehash4', 'Administrador', 'vistas/img/usuarios/matar/126.jpg', 1, '2024-08-04 12:15:00', '2024-08-04 16:15:00'),
(93, 'Luis Fernández', 'luisf', '$2a$07$examplehash5', 'Vendedor', 'vistas/img/usuarios/luisf/127.jpg', 1, '2024-08-05 08:30:00', '2024-08-05 12:30:00'),
(94, 'Elena Torres', 'elenat', '$2a$07$examplehash6', 'Especial', 'vistas/img/usuarios/elenat/128.jpg', 1, '2024-08-06 14:00:00', '2024-08-06 18:00:00'),
(95, 'Pedro Morales', 'pedrom', '$2a$07$examplehash7', 'Vendedor', 'vistas/img/usuarios/pedrom/129.jpg', 1, '2024-08-07 16:45:00', '2024-08-07 20:45:00'),
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
(127, 'davian peres', 'davidq', '$2a$07$asxx54ahjppf45sd87a5auGZEtGHuyZwm.Ur.FJvWLCql3nmsMbXy', 'Administrador', 'vistas/img/usuarios/davidq/172.jpg', 1, '0000-00-00 00:00:00', '2024-08-30 02:51:22');

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
  `impuesto` float NOT NULL,
  `neto` float NOT NULL,
  `total` float NOT NULL,
  `metodo_pago` text NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `codigo`, `id_cliente`, `id_vendedor`, `productos`, `impuesto`, `neto`, `total`, `metodo_pago`, `fecha`) VALUES
(27, 10001, 6, 1, '[{\"id\":\"1\",\"descripcion\":\"sopa de mani\",\"cantidad\":\"1\",\"stock\":\"51\",\"precio\":\"10\",\"total\":\"10\"},{\"id\":\"2\",\"descripcion\":\"coca cola\",\"cantidad\":\"1\",\"stock\":\"49\",\"precio\":\"18\",\"total\":\"18\"}]', 0, 28, 28, '', '2024-06-11 21:04:24'),
(29, 10003, 26, 1, '[{\"id\":\"1\",\"descripcion\":\"sopa de mani\",\"cantidad\":\"1\",\"stock\":\"48\",\"precio\":\"10\",\"total\":\"10\"},{\"id\":\"3\",\"descripcion\":\"fanta 2l\",\"cantidad\":\"1\",\"stock\":\"49\",\"precio\":\"18\",\"total\":\"18\"}]', 0, 28, 28, '', '2024-06-12 12:18:48'),
(30, 10004, 26, 1, '[{\"id\":\"1\",\"descripcion\":\"sopa de mani\",\"cantidad\":\"1\",\"stock\":\"47\",\"precio\":\"10\",\"total\":\"10\"}]', 0, 10, 10, '', '2024-06-14 12:23:55'),
(31, 10005, 24, 1, '[{\"id\":\"1\",\"descripcion\":\"sopa de mani\",\"cantidad\":\"1\",\"stock\":\"46\",\"precio\":\"10\",\"total\":\"10\"}]', 0, 10, 10, '', '2024-06-14 12:24:12'),
(32, 10002, 6, 1, '[{\"id\":\"1\",\"descripcion\":\"sopa de mani\",\"cantidad\":\"1\",\"stock\":\"45\",\"precio\":\"10\",\"total\":\"10\"}]', 0, 10, 10, '', '2024-06-14 12:25:24'),
(33, 10003, 6, 1, '[{\"id\":\"1\",\"descripcion\":\"sopa de mani\",\"cantidad\":\"1\",\"stock\":\"44\",\"precio\":\"10\",\"total\":\"10\"}]', 0, 10, 10, '', '2024-06-14 12:27:04'),
(34, 10004, 24, 1, '[{\"id\":\"1\",\"descripcion\":\"sopa de mani\",\"cantidad\":\"1\",\"stock\":\"43\",\"precio\":\"10\",\"total\":\"10\"}]', 0, 10, 10, '', '2024-06-14 12:27:17'),
(37, 10005, 26, 62, '[{\"id\":\"1\",\"descripcion\":\"sopa de mani\",\"cantidad\":\"1\",\"stock\":\"42\",\"precio\":\"10\",\"total\":\"10\"},{\"id\":\"2\",\"descripcion\":\"coca cola\",\"cantidad\":\"1\",\"stock\":\"48\",\"precio\":\"18\",\"total\":\"18\"}]', 0, 28, 28, '', '2024-06-22 12:13:24'),
(40, 10008, 6, 1, '[{\"id\":\"4\",\"descripcion\":\"cuñape\",\"cantidad\":\"1\",\"stock\":\"48\",\"precio\":\"5\",\"total\":\"5\"}]', 0, 5, 5, '', '2024-07-18 12:14:01'),
(41, 10009, 6, 1, '[{\"id\":\"11\",\"descripcion\":\"majadito\",\"cantidad\":\"1\",\"stock\":\"49\",\"precio\":\"20\",\"total\":\"20\"}]', 0, 20, 20, '', '2024-07-18 15:18:27'),
(42, 10010, 26, 1, '[{\"id\":\"11\",\"descripcion\":\"majadito\",\"cantidad\":\"1\",\"stock\":\"48\",\"precio\":\"20\",\"total\":\"20\"}]', 0, 20, 20, '', '2024-07-18 15:28:36'),
(43, 10011, 26, 1, '[{\"id\":\"11\",\"descripcion\":\"majadito\",\"cantidad\":\"1\",\"stock\":\"47\",\"precio\":\"20\",\"total\":\"20\"}]', 0, 20, 20, '', '2024-07-18 15:39:56'),
(44, 10012, 6, 1, '[{\"id\":\"10\",\"descripcion\":\"chancho a la cruz\",\"cantidad\":\"1\",\"stock\":\"49\",\"precio\":\"80\",\"total\":\"80\"}]', 0, 80, 80, '', '2024-07-18 15:46:51'),
(45, 10013, 24, 1, '[{\"id\":\"9\",\"descripcion\":\"planchita\",\"cantidad\":\"1\",\"stock\":\"49\",\"precio\":\"100\",\"total\":\"100\"}]', 0, 100, 100, '', '2024-07-18 15:47:49'),
(46, 10014, 6, 1, '[{\"id\":\"4\",\"descripcion\":\"cuñape\",\"cantidad\":\"1\",\"stock\":\"47\",\"precio\":\"5\",\"total\":\"5\"}]', 0, 5, 5, '', '2024-07-18 15:53:14'),
(48, 10015, 6, 1, '[{\"id\":\"8\",\"descripcion\":\"locro\",\"cantidad\":\"1\",\"stock\":\"49\",\"precio\":\"15\",\"total\":\"15\"}]', 0, 15, 15, '', '2024-07-19 12:34:41'),
(49, 10016, 26, 1, '[{\"id\":\"11\",\"descripcion\":\"majadito\",\"cantidad\":\"1\",\"stock\":\"46\",\"precio\":\"20\",\"total\":\"20\"}]', 0, 20, 20, '', '2024-07-19 12:48:27'),
(50, 10017, 24, 1, '[{\"id\":\"11\",\"descripcion\":\"majadito\",\"cantidad\":\"1\",\"stock\":\"45\",\"precio\":\"20\",\"total\":\"20\"}]', 0, 20, 20, '', '2024-07-19 12:49:01'),
(51, 10018, 6, 1, '[{\"id\":\"11\",\"descripcion\":\"majadito\",\"cantidad\":\"1\",\"stock\":\"44\",\"precio\":\"20\",\"total\":\"20\"}]', 0, 20, 20, '', '2024-07-19 12:53:04'),
(52, 10019, 6, 1, '[{\"id\":\"11\",\"descripcion\":\"majadito\",\"cantidad\":\"1\",\"stock\":\"43\",\"precio\":\"20\",\"total\":\"20\"}]', 0, 20, 20, '', '2024-07-19 12:54:38'),
(53, 10020, 6, 1, '[{\"id\":\"11\",\"descripcion\":\"majadito\",\"cantidad\":\"1\",\"stock\":\"42\",\"precio\":\"20\",\"total\":\"20\"}]', 0, 20, 20, '', '2024-07-19 13:13:58'),
(54, 10020, 6, 1, '[{\"id\":\"11\",\"descripcion\":\"majadito\",\"cantidad\":\"1\",\"stock\":\"41\",\"precio\":\"20\",\"total\":\"20\"}]', 0, 20, 20, '', '2024-07-19 13:14:18'),
(57, 10021, 6, 1, '[{\"id\":\"4\",\"descripcion\":\"cuñape\",\"cantidad\":\"1\",\"stock\":\"47\",\"precio\":\"5\",\"total\":\"5\"}]', 0, 5, 5, '', '2024-08-01 18:57:10'),
(58, 10022, 26, 1, '[{\"id\":\"2\",\"descripcion\":\"coca cola\",\"cantidad\":\"1\",\"stock\":\"47\",\"precio\":\"18\",\"total\":\"18\"}]', 0, 18, 18, '', '2024-08-01 18:58:12'),
(59, 10023, 24, 61, '[{\"id\":\"10\",\"descripcion\":\"chancho a la cruz\",\"cantidad\":\"1\",\"stock\":\"48\",\"precio\":\"80\",\"total\":\"80\"}]', 0, 80, 80, '', '2024-08-01 19:22:51'),
(64, 10024, 6, 1, '[{\"id\":\"11\",\"descripcion\":\"majadito\",\"cantidad\":\"1\",\"stock\":\"2\",\"precio\":\"20\",\"total\":\"20\"}]', 0, 20, 20, '', '2024-08-11 03:32:14'),
(65, 10025, 26, 1, '[{\"id\":\"11\",\"descripcion\":\"majadito\",\"cantidad\":\"1\",\"stock\":\"1\",\"precio\":\"20\",\"total\":\"20\"}]', 0, 20, 20, '', '2024-08-11 03:33:16'),
(66, 10026, 28, 1, '[{\"id\":\"55\",\"descripcion\":\"producto 149\",\"cantidad\":\"1\",\"stock\":\"409\",\"precio\":\"125\",\"total\":\"125\"}]', 0, 125, 125, '', '2024-08-26 02:04:37'),
(68, 10027, 36, 1, '[{\"id\":\"55\",\"descripcion\":\"producto 149\",\"cantidad\":\"1\",\"stock\":\"408\",\"precio\":\"125\",\"total\":\"125\"}]', 0, 125, 125, '', '2024-08-28 04:29:59'),
(69, 10028, 26, 1, '[{\"id\":\"15\",\"descripcion\":\"pique macho\",\"cantidad\":\"1\",\"stock\":\"5\",\"precio\":\"80\",\"total\":\"80\"}]', 0, 80, 80, '', '2024-08-28 12:27:48'),
(70, 10029, 36, 1, '[{\"id\":\"55\",\"descripcion\":\"producto 149\",\"cantidad\":\"1\",\"stock\":\"407\",\"precio\":\"125\",\"total\":\"125\"}]', 0, 125, 125, '', '2024-08-30 02:40:46'),
(71, 10030, 6, 1, '[{\"id\":\"15\",\"descripcion\":\"pique macho\",\"cantidad\":\"1\",\"stock\":\"4\",\"precio\":\"80\",\"total\":\"80\"}]', 0, 80, 80, '', '2024-08-30 02:48:20');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `compras`
--
ALTER TABLE `compras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

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
