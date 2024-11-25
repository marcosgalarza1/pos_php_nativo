-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-11-2024 a las 06:13:19
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
(2, 'bebidas', '2024-11-25 04:57:48', 0),
(3, 'horneados', '2024-09-23 02:58:10', 1),
(4, 'jugos ', '2024-09-23 02:58:38', 1),
(14, 'prueba', '2024-11-23 01:00:11', 0),
(15, 'ewfewf', '2024-11-23 01:00:07', 0),
(16, 'ergrg', '2024-11-23 01:00:05', 0),
(17, 'lolo', '2024-11-23 01:23:01', 1),
(18, 'mani', '2024-11-23 01:17:25', 1),
(19, 'nuevo1', '2024-11-23 01:16:53', 1),
(20, 'prueba5', '2024-11-23 01:16:32', 1),
(21, 'pan', '2024-11-25 04:54:13', 0);

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
(26, 'pepeeeeeeeeeeeeeeeeeee1', '2024-11-19 02:38:22', 1),
(27, 'nelson cepespedes2', '2024-11-19 02:38:18', 1),
(28, 'pepe pomacusi', '2024-11-19 02:38:14', 1),
(29, 'checho', '2024-11-19 02:39:56', 1),
(30, 'humberto duran', '2024-11-20 20:31:19', 0),
(31, 'yina rivero', '2024-11-20 22:26:05', 0),
(32, 'danny sossa', '2024-11-23 02:55:03', 0),
(33, 'fernado miranda', '2024-11-23 05:04:33', 1);

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
(1, 'S/N', 's/n', ' 000-00-000', 's/n', 246, '2024-11-24 01:19:23', '2024-11-24 05:24:26', 1),
(2, 'Enrique Condori', '61335228', ' 776-34-882', 'moscú', 32, '2024-10-29 23:22:50', '2024-11-23 05:13:18', 1),
(3, 'andrea pacheco', '48758897 SC', ' 776-30-477', '2do anillo', 7, '2024-11-05 18:12:04', '2024-11-23 05:13:15', 1),
(4, 'alexander cespedes', '98945484', ' 776-30-484', 'barrio caminero', 5, '2024-11-22 22:54:22', '2024-11-23 05:13:11', 1),
(5, 'YOSELIN MAMANI QUIZPE', '747484768sc', ' 787-84-854', 'barrio cabañas', 2, '2024-11-07 00:11:38', '2024-11-23 05:13:08', 1),
(6, 'Lisbeth Heredia', '623423424', '613-35-235', 'Callle 16 de Julio', 6, '2024-11-19 00:19:53', '2024-11-23 05:13:05', 1),
(10, 'nuevo mesero', '45454545451', '752-25-555', 'el balcon', 0, '0000-00-00 00:00:00', '2024-11-23 05:13:02', 1),
(11, 'damris montalvo', '845415der', '776-30-454', 'los cusis', 2, '2024-11-20 18:13:20', '2024-11-23 05:12:58', 1),
(12, 'referf', 'referf', '787-45-415', 'refref', 0, '0000-00-00 00:00:00', '2024-11-23 05:12:55', 1),
(13, 'cesilia chore', 'ewfgfewf', '545-45-454', 'av virge de cotocoa', 1, '2024-11-22 21:50:05', '2024-11-23 05:12:52', 1);

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
(1, 1, '101', 'sopa de mani', 'vistas/img/productos/101/845.png', 100, 10, 7, 0, '2024-11-25 05:08:30', 0, 1),
(2, 1, '102', 'locro de gallina', 'vistas/img/productos/102/485.png', 5, 15, 10, 0, '2024-11-25 05:08:30', 0, 1),
(3, 1, '103', 'majadito de charque', 'vistas/img/productos/103/784.png', 6, 15, 10, 0, '2024-11-25 05:08:30', 0, 1),
(4, 1, '104', 'majadito de pato', 'vistas/img/productos/104/370.png', 18, 15, 10, 0, '2024-11-25 05:08:30', 0, 1),
(5, 1, '105', 'lomo montado', 'vistas/img/productos/105/639.png', 16, 20, 15, 0, '2024-11-25 05:08:30', 0, 1),
(6, 1, '106', 'keperi', 'vistas/img/productos/106/341.png', 16, 20, 15, 0, '2024-11-25 05:08:30', 0, 1),
(7, 1, '107', 'picante sencillo', 'vistas/img/productos/107/494.png', 17, 20, 15, 0, '2024-11-25 05:08:30', 0, 1),
(8, 1, '108', 'milaneza de pollo', 'vistas/img/productos/108/260.png', 18, 20, 15, 0, '2024-11-25 05:08:30', 0, 1),
(9, 1, '109', 'milaneza de carne', 'vistas/img/productos/109/919.png', 17, 20, 15, 0, '2024-11-25 05:08:30', 0, 1),
(10, 1, '110', 'chicharron de pollo', 'vistas/img/productos/110/564.jpg', 19, 20, 15, 0, '2024-11-25 05:08:30', 0, 1),
(11, 1, '111', 'picante mixto', 'vistas/img/productos/111/878.png', 16, 25, 20, 0, '2024-11-25 05:08:30', 0, 1),
(12, 1, '112', 'picante de lengua', 'vistas/img/productos/112/243.png', 18, 25, 20, 0, '2024-11-25 05:08:30', 0, 1),
(13, 1, '113', 'chorrellana', 'vistas/img/productos/113/676.png', 20, 25, 20, 0, '2024-11-24 21:36:20', 0, 1),
(14, 1, '114', 'pique macho entero', 'vistas/img/productos/114/339.png', 18, 70, 50, 0, '2024-11-25 05:08:30', 0, 1),
(15, 1, '115', 'pique macho medio', 'vistas/img/productos/115/508.png', 19, 45, 30, 0, '2024-11-25 05:08:30', 0, 1),
(16, 1, '116', 'charque entero', 'vistas/img/productos/116/793.png', 20, 80, 60, 0, '2024-11-24 21:36:20', 0, 1),
(17, 1, '117', 'charque medio', 'vistas/img/productos/117/857.png', 20, 45, 30, 0, '2024-11-24 21:36:20', 0, 1),
(18, 1, '118', 'chicharrón de chancho entero', 'vistas/img/productos/118/617.png', 19, 70, 50, 0, '2024-11-25 05:08:30', 0, 1),
(19, 1, '119', 'chicharron de chancho medio', 'vistas/img/productos/119/234.png', 19, 45, 30, 0, '2024-11-25 05:08:30', 0, 1),
(20, 1, '120', 'milanesa picada de pollo', 'vistas/img/productos/120/678.png', 17, 50, 40, 0, '2024-11-25 05:08:30', 0, 1),
(21, 1, '121', 'milanesa picada de carne', 'vistas/img/productos/121/837.png', 19, 50, 40, 0, '2024-11-25 05:08:30', 0, 1),
(22, 1, '122', 'cola de lagarto', 'vistas/img/productos/122/741.png', 20, 50, 30, 0, '2024-11-24 21:36:20', 0, 1),
(23, 1, '123', 'chicharrón de surubí', 'vistas/img/productos/123/582.png', 19, 60, 40, 0, '2024-11-25 05:08:30', 0, 1),
(24, 1, '124', 'chancho a la cruz', 'vistas/img/productos/124/469.png', 19, 60, 50, 0, '2024-11-25 05:08:30', 0, 1),
(25, 1, '125', 'cordero', 'vistas/img/productos/125/913.png', 18, 80, 70, 0, '2024-11-25 05:08:30', 0, 1),
(26, 1, '126', 'pato entero', 'vistas/img/productos/126/898.png', 17, 160, 130, 0, '2024-11-25 05:08:30', 0, 1),
(27, 1, '127', 'pato medio', 'vistas/img/productos/127/431.png', 15, 80, 50, 0, '2024-11-25 05:08:30', 0, 1),
(28, 1, '128', 'pacumuto', 'vistas/img/productos/128/234.png', 17, 80, 50, 0, '2024-11-25 05:08:30', 0, 1),
(29, 1, '129', 'costilla de cordero', 'vistas/img/productos/129/255.png', 17, 80, 50, 0, '2024-11-25 05:08:30', 0, 1),
(30, 1, '130', 'planchita', 'vistas/img/productos/130/499.png', 16, 100, 80, 0, '2024-11-25 05:08:30', 0, 1),
(31, 4, '401', 'jarra de chicha entera', 'vistas/img/productos/401/240.png', 17, 15, 10, 0, '2024-11-25 05:08:30', 0, 1),
(32, 4, '402', 'jarra de chicha media', 'vistas/img/productos/402/880.png', 20, 8, 4, 0, '2024-11-24 21:40:38', 0, 1),
(33, 4, '403', 'jarra de maracuyá entera', 'vistas/img/productos/403/800.png', 19, 15, 10, 0, '2024-11-25 05:08:30', 0, 1),
(34, 4, '404', 'jarra de maracuya media', 'vistas/img/productos/404/275.png', 15, 8, 4, 0, '2024-11-25 05:08:30', 0, 1),
(35, 4, '405', 'jarra de limonada entera', 'vistas/img/productos/405/460.png', 15, 15, 10, 0, '2024-11-25 05:08:30', 0, 1),
(36, 4, '406', 'jarra de limonada media', 'vistas/img/productos/406/864.png', 17, 8, 4, 0, '2024-11-25 05:08:30', 0, 1),
(37, 4, '407', 'jarra de mocochinchi entera', 'vistas/img/productos/407/988.jpg', 15, 15, 10, 0, '2024-11-25 05:08:30', 0, 1),
(38, 4, '408', 'jarra de mocochinchi media', 'vistas/img/productos/408/742.jpg', 17, 8, 4, 0, '2024-11-25 05:08:30', 0, 1),
(39, 2, '201', 'agua  vital chica 600ml', 'vistas/img/productos/201/314.jpg', 0, 8, 6, 0, '2024-11-25 05:08:30', 1, 1),
(40, 2, '202', 'coca cola popular', 'vistas/img/productos/202/572.jpg', 0, 10, 8, 0, '2024-11-25 05:08:30', 1, 1),
(41, 2, '203', 'coca cola 2l', 'vistas/img/productos/203/922.jpg', 0, 18, 12, 0, '2024-11-25 05:08:30', 1, 1),
(42, 2, '204', 'cabaña 2l', 'vistas/img/productos/204/211.jpg', 0, 18, 13, 0, '2024-11-25 05:08:30', 1, 1),
(43, 2, '205', 'cerveza paceña', 'vistas/img/productos/205/918.jpg', 0, 22, 15, 0, '2024-11-25 05:08:30', 1, 1),
(44, 2, '206', 'cerveza huari', 'vistas/img/productos/206/447.jpg', 0, 25, 20, 0, '2024-11-25 05:08:30', 1, 1),
(45, 2, '207', 'cerveza cordillera', 'vistas/img/productos/207/655.jpg', 0, 15, 10, 0, '2024-11-25 05:08:30', 1, 1),
(46, 2, '208', 'vinos tinto ', 'vistas/img/productos/208/641.jpg', 0, 45, 30, 0, '2024-11-25 05:08:30', 1, 1),
(47, 2, '209', 'agua  vital sin gas  2l', 'vistas/img/productos/209/935.jpg', 0, 18, 15, 0, '2024-11-25 05:08:30', 1, 1),
(48, 4, '210', 'vaso de mocochinchi', 'vistas/img/productos/210/489.jpg', 30, 5, 2, 0, '2024-11-25 05:08:30', 0, 1),
(49, 4, '211', 'vaso de limonada', 'vistas/img/productos/211/142.png', 20, 5, 2, 0, '2024-11-25 05:08:30', 0, 1),
(50, 4, '212', 'vaso de maracuya', 'vistas/img/productos/212/630.png', 30, 5, 2, 0, '2024-11-25 05:08:30', 0, 1),
(51, 4, '213', 'vaso de chicha', 'vistas/img/productos/213/237.png', 18, 5, 2, 0, '2024-11-25 05:08:30', 0, 1),
(53, 1, '131', 'pollo ala broaster economicos', 'vistas/img/productos/131/798.jpg', -100, 13, 8, 0, '2024-11-25 05:08:30', 0, 0),
(64, 18, '1801', 'po', 'vistas/img/productos/default/anonymous.png', 0, 12, 10, 0, '2024-11-25 05:08:30', 1, 0),
(66, 1, '131', 'hamburge triple', 'vistas/img/productos/default/anonymous.png', 0, 25, 18, 0, '2024-11-24 21:36:20', 0, 1),
(67, 1, '132', 'MILANESA DE CARNE 2', 'vistas/img/productos/default/anonymous.png', 50, 17.68, 12, 0, '2024-11-24 21:18:27', 0, 1);

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
(3, 'julian peres', 'cervecería boliviana Nacional sa', '75028564', 'parque industrial', '2024-11-07 00:14:20', 1),
(4, 'ferf', 'fref', '45454545', 'jebwfewf', '2024-11-23 05:08:53', 1),
(5, 'fewrfewrf', 'erferf', '78689689', 'rgerg', '2024-11-23 05:08:50', 1),
(6, 'nuevo proveedor', 'empresanueva', '75028845', 'efwerwfg', '2024-11-21 01:07:03', 1),
(7, 'E nrique', 'Digicert', '23423523', 'Sin direccion', '2024-11-25 04:51:01', 0);

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
(1, 'Maria mendoza', 'admin', '$2a$07$asxx54ahjppf45sd87a5auXBm1Vr2M1NV5t/zNQtGHGpS5fFirrbG', 'Administrador', 'vistas/img/usuarios/admin/266.jpg', 1, '2024-11-24 23:30:43', '2024-11-25 03:30:43', 1),
(2, 'yobana mendoza', 'yoba28', '$2a$07$asxx54ahjppf45sd87a5auGZEtGHuyZwm.Ur.FJvWLCql3nmsMbXy', 'Vendedor', 'vistas/img/usuarios/yoba28/681.jpg', 1, '2024-11-07 07:11:07', '2024-11-07 11:11:07', 1),
(3, 'zajir mendoza', 'zajir12', '$2a$07$asxx54ahjppf45sd87a5auGZEtGHuyZwm.Ur.FJvWLCql3nmsMbXy', 'Especial', 'vistas/img/usuarios/zajir12/199.jpg', 1, '2024-11-06 23:19:05', '2024-11-13 02:50:28', 1),
(15, 'enrique', 'enrique', '$2a$07$asxx54ahjppf45sd87a5auGZEtGHuyZwm.Ur.FJvWLCql3nmsMbXy', 'Administrador', '', 1, '0000-00-00 00:00:00', '2024-11-13 02:56:53', 1),
(18, 'vfrgvtrg', 'regvrtgv', '$2a$07$asxx54ahjppf45sd87a5aur9zsgQ/3vwR/ayhoPAxu.jTBJJcVfM.', 'Administrador', '', 0, '0000-00-00 00:00:00', '2024-11-13 01:10:59', 1),
(19, 'erfer', 'ferfrf', '$2a$07$asxx54ahjppf45sd87a5au/JtQTHjN2zVDzVwAMKwgt8iHv4qCIMe', 'Administrador', '', 1, '0000-00-00 00:00:00', '2024-11-13 02:56:50', 1),
(20, 'ewfwef', 'erfer', '$2a$07$asxx54ahjppf45sd87a5au.jIl/rmHmiCOm.KpamoMwU2HpHd4ica', 'Administrador', '', 1, '0000-00-00 00:00:00', '2024-11-13 02:56:46', 1),
(21, 'marcos galarza', 'marquito', '$2a$07$asxx54ahjppf45sd87a5auGZEtGHuyZwm.Ur.FJvWLCql3nmsMbXy', 'Administrador', 'vistas/img/usuarios/marquito/455.jpg', 1, '0000-00-00 00:00:00', '2024-11-13 03:10:38', 1),
(22, 'pepe galarza', '12dre', '$2a$07$asxx54ahjppf45sd87a5auGZEtGHuyZwm.Ur.FJvWLCql3nmsMbXy', 'Administrador', '', 0, '0000-00-00 00:00:00', '2024-11-13 03:04:17', 1),
(23, 'mario ', 'mario', '$2a$07$asxx54ahjppf45sd87a5auGZEtGHuyZwm.Ur.FJvWLCql3nmsMbXy', 'Administrador', '', 1, '2024-11-12 22:15:06', '2024-11-13 03:12:27', 0),
(24, 'roberto bolañosSSSSS', 'rober', '$2a$07$asxx54ahjppf45sd87a5au1gjqdU.ybWXdMxoN7YGHb9SmYjSf9na', 'Administrador', 'vistas/img/usuarios/rober/578.png', 0, '0000-00-00 00:00:00', '2024-11-17 22:56:38', 1),
(25, 'damaris montalvo', 'dama', '$2a$07$asxx54ahjppf45sd87a5auGZEtGHuyZwm.Ur.FJvWLCql3nmsMbXy', 'Administrador', '', 1, '2024-11-22 20:45:01', '2024-11-23 01:46:30', 0);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `compras`
--
ALTER TABLE `compras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detalle_compra`
--
ALTER TABLE `detalle_compra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `meseros`
--
ALTER TABLE `meseros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
