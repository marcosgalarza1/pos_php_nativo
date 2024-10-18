-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-10-2024 a las 10:23:53
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
(4, 'jugos ', '2024-09-23 02:58:38'),
(8, 'bottellas', '2024-09-25 03:32:24');

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
(1, 'publico en general', 's/n', ' 000-00-000', 's/n', 47, '2024-09-25 01:27:42', '2024-09-25 05:27:42'),
(2, 'axel justiniano', '9814785 sc', ' 778-55-454', '4to anillo', 41, '2024-09-24 22:02:48', '2024-09-25 02:02:48'),
(3, 'jhoel cortjiri lopez', '5838014 sc', ' 778-85-781', 'tres pasos al frente', 0, '0000-00-00 00:00:00', '2024-09-23 04:10:07'),
(4, 'edil gutierrez', '2858364 sc', ' 787-45-654', 'plan 3000', 0, '0000-00-00 00:00:00', '2024-09-23 04:11:19'),
(5, 'andrea pacheco', '14160832 SC', ' 776-70-470', 'av cañoto', 2, '2024-09-23 12:28:10', '2024-09-23 16:28:10'),
(6, 'carla pinto ', '13653407 sc', ' 713-10-387', 'el bation', 4, '2024-09-24 15:44:11', '2024-09-24 19:44:11'),
(7, 'anyi gongora', '14160832 SC', ' 776-70-470', 'dulce hogar', 0, '0000-00-00 00:00:00', '2024-09-23 04:14:26'),
(8, 'sebastian gongora', '13030292 SC', ' 745-11-837', 'dulce hogar', 0, '0000-00-00 00:00:00', '2024-09-23 04:15:10'),
(9, 'israel mendoza', '12503126 sc', ' 687-54-834', 'cabañas el gallito', 0, '0000-00-00 00:00:00', '2024-09-23 04:16:44'),
(10, 'rodrigo quisbert', '13030291 sc', ' 622-16-145', 'plan 3000', 0, '0000-00-00 00:00:00', '2024-09-23 04:17:46');

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
(1, 10001, 24740.00, 1, 1, '2024-09-23 04:20:51'),
(2, 10002, 230.00, 1, 1, '2024-09-23 16:27:32'),
(3, 10003, 80.00, 1, 1, '2024-09-24 22:26:23'),
(6, 10004, 6.00, 1, 1, '2024-10-18 08:22:59');

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
(1, 51, 6, 'vaso de chicha', 1, 2.00, 2.00),
(2, 50, 6, 'vaso de maracuya', 2, 2.00, 4.00);

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
(1, 1, '101', 'sopa de mani', 'vistas/img/productos/101/845.png', 14, 10, 7, 6, '2024-09-25 05:33:16'),
(2, 1, '102', 'locro de gallina', 'vistas/img/productos/102/485.png', 10, 15, 10, 10, '2024-09-23 18:53:38'),
(3, 1, '103', 'majadito de charque', 'vistas/img/productos/103/784.png', 10, 15, 10, 10, '2024-09-23 18:53:38'),
(4, 1, '104', 'majadito de pato', 'vistas/img/productos/104/370.png', 19, 15, 10, 1, '2024-09-23 18:51:16'),
(5, 1, '105', 'lomo montado', 'vistas/img/productos/105/639.png', 18, 20, 15, 2, '2024-09-23 18:51:16'),
(6, 1, '106', 'keperi', 'vistas/img/productos/106/341.png', 19, 20, 15, 1, '2024-09-23 18:51:16'),
(7, 1, '107', 'picante sencillo', 'vistas/img/productos/107/494.png', 20, 20, 15, 0, '2024-09-23 04:38:08'),
(8, 1, '108', 'milaneza de pollo', 'vistas/img/productos/108/260.png', 20, 20, 15, 0, '2024-09-23 04:38:34'),
(9, 1, '109', 'milaneza de carne', 'vistas/img/productos/109/919.png', 20, 20, 15, 0, '2024-09-23 15:56:31'),
(10, 1, '110', 'chicharron de pollo', 'vistas/img/productos/110/564.jpg', 20, 20, 15, 0, '2024-09-23 16:08:22'),
(11, 1, '111', 'picante mixto', 'vistas/img/productos/111/878.png', 18, 25, 20, 2, '2024-09-25 00:56:17'),
(12, 1, '112', 'picante de lengua', 'vistas/img/productos/112/243.png', 20, 25, 20, 0, '2024-09-23 04:40:32'),
(13, 1, '113', 'chorrellana', 'vistas/img/productos/113/676.png', 20, 25, 20, 0, '2024-09-23 04:40:58'),
(14, 1, '114', 'pique macho entero', 'vistas/img/productos/114/339.png', 18, 70, 50, 2, '2024-09-23 05:14:41'),
(15, 1, '115', 'pique macho medio', 'vistas/img/productos/115/508.png', 19, 45, 30, 1, '2024-09-24 19:44:11'),
(16, 1, '116', 'charque entero', 'vistas/img/productos/116/793.png', 20, 80, 60, 0, '2024-09-23 04:41:38'),
(17, 1, '117', 'charque medio', 'vistas/img/productos/117/857.png', 20, 45, 30, 0, '2024-09-23 04:42:02'),
(18, 1, '118', 'chicharrón de chancho entero', 'vistas/img/productos/118/617.png', 19, 70, 50, 1, '2024-09-25 02:02:23'),
(19, 1, '119', 'chicharron de chancho medio', 'vistas/img/productos/119/234.png', 19, 45, 30, 1, '2024-09-25 02:02:23'),
(20, 1, '120', 'milanesa picada de pollo', 'vistas/img/productos/120/678.png', 19, 50, 40, 1, '2024-09-25 02:02:23'),
(21, 1, '121', 'milanesa picada de carne', 'vistas/img/productos/121/837.png', 20, 50, 40, 0, '2024-09-23 16:06:45'),
(22, 1, '122', 'cola de lagarto', 'vistas/img/productos/122/741.png', 20, 50, 30, 0, '2024-09-23 04:44:48'),
(23, 1, '123', 'chicharrón de surubí', 'vistas/img/productos/123/582.png', 20, 60, 40, 0, '2024-09-23 16:12:46'),
(24, 1, '124', 'chancho a la cruz', 'vistas/img/productos/124/469.png', 20, 60, 50, 0, '2024-09-23 04:45:21'),
(25, 1, '125', 'cordero', 'vistas/img/productos/125/913.png', 19, 80, 70, 1, '2024-09-24 23:04:42'),
(26, 1, '126', 'pato entero', 'vistas/img/productos/126/898.png', 20, 160, 130, 0, '2024-09-23 15:57:54'),
(27, 1, '127', 'pato medio', 'vistas/img/productos/127/431.png', 20, 80, 50, 0, '2024-09-23 16:17:54'),
(28, 1, '128', 'pacumuto', 'vistas/img/productos/128/234.png', 20, 80, 50, 0, '2024-09-23 16:19:57'),
(29, 1, '129', 'costilla de cordero', 'vistas/img/productos/129/255.png', 20, 80, 50, 0, '2024-09-23 16:09:43'),
(30, 1, '130', 'planchita', 'vistas/img/productos/130/499.png', 20, 100, 80, 0, '2024-09-24 00:51:32'),
(31, 4, '401', 'jarra de chicha entera', 'vistas/img/productos/401/240.png', 19, 15, 10, 1, '2024-09-23 15:51:01'),
(32, 4, '402', 'jarra de chicha media', 'vistas/img/productos/402/880.png', 20, 8, 4, 0, '2024-09-23 15:53:45'),
(33, 4, '403', 'jarra de maracuyá entera', 'vistas/img/productos/403/800.png', 20, 15, 10, 0, '2024-09-23 15:45:54'),
(34, 4, '404', 'jarra de maracuya media', 'vistas/img/productos/404/275.png', 20, 8, 4, 0, '2024-09-23 15:47:57'),
(35, 4, '405', 'jarra de limonada entera', 'vistas/img/productos/405/460.png', 20, 15, 10, 0, '2024-09-23 15:40:12'),
(36, 4, '406', 'jarra de limonada media', 'vistas/img/productos/406/864.png', 20, 8, 4, 0, '2024-09-23 15:43:44'),
(37, 4, '407', 'jarra de mocochinchi entera', 'vistas/img/productos/407/988.jpg', 19, 15, 10, 1, '2024-09-23 05:14:41'),
(38, 4, '408', 'jarra de mocochinchi media', 'vistas/img/productos/408/850.jpg', 20, 8, 4, 0, '2024-09-23 05:10:42'),
(39, 2, '201', 'agua  vital chica 600ml', 'vistas/img/productos/201/314.jpg', 20, 8, 6, 0, '2024-09-23 05:03:31'),
(40, 2, '202', 'coca cola popular', 'vistas/img/productos/202/572.jpg', 20, 10, 8, 0, '2024-09-23 05:01:13'),
(41, 2, '203', 'coca cola 2l', 'vistas/img/productos/203/922.jpg', 19, 18, 12, 1, '2024-09-24 00:51:32'),
(42, 2, '204', 'cabaña 2l', 'vistas/img/productos/204/211.jpg', 19, 18, 13, 1, '2024-09-25 02:02:48'),
(43, 2, '205', 'cerveza paceña', 'vistas/img/productos/205/918.jpg', 10, 22, 15, 10, '2024-09-25 02:02:48'),
(44, 2, '206', 'cerveza huari', 'vistas/img/productos/206/447.jpg', 19, 25, 20, 1, '2024-09-25 02:02:31'),
(45, 2, '207', 'cerveza cordillera', 'vistas/img/productos/207/655.jpg', 4, 15, 10, 16, '2024-09-25 02:02:48'),
(46, 2, '208', 'vinos tinto ', 'vistas/img/productos/208/641.jpg', 19, 45, 30, 1, '2024-09-25 02:02:31'),
(47, 2, '209', 'agua  vital sin gas  2l', 'vistas/img/productos/209/935.jpg', 8, 18, 15, 2, '2024-09-25 00:56:17'),
(48, 4, '210', 'vaso de mocochinchi', 'vistas/img/productos/210/489.jpg', 4, 5, 2, 6, '2024-09-25 01:07:28'),
(49, 4, '211', 'vaso de limonada', 'vistas/img/productos/211/142.png', 7, 5, 2, 3, '2024-09-25 02:09:38'),
(50, 4, '212', 'vaso de maracuya', 'vistas/img/productos/212/630.png', 31, 5, 2, 1, '2024-10-18 08:22:59'),
(51, 4, '213', 'vaso de chicha', 'vistas/img/productos/213/796.png', 20, 5, 2, 11, '2024-10-18 08:22:59'),
(52, 8, '801', 'prueba', 'vistas/img/productos/default/anonymous.png', 0, 12, 5, 0, '2024-09-25 05:35:10');

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
(1, 'Maria mendoza', 'admin', '$2a$07$asxx54ahjppf45sd87a5auXBm1Vr2M1NV5t/zNQtGHGpS5fFirrbG', 'Administrador', 'vistas/img/usuarios/admin/660.jpg', 1, '2024-09-25 14:16:53', '2024-09-25 18:16:53'),
(2, 'yobana mendoza', 'yoba28', '$2a$07$asxx54ahjppf45sd87a5auGZEtGHuyZwm.Ur.FJvWLCql3nmsMbXy', 'Vendedor', 'vistas/img/usuarios/yoba28/681.jpg', 1, '2024-09-24 15:43:01', '2024-09-24 19:43:01'),
(3, 'zajir mendoza', 'zajir12', '$2a$07$asxx54ahjppf45sd87a5auGZEtGHuyZwm.Ur.FJvWLCql3nmsMbXy', 'Especial', 'vistas/img/usuarios/zajir12/199.jpg', 1, '2024-09-23 14:34:48', '2024-09-23 18:34:48');

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
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `codigo`, `id_cliente`, `id_vendedor`, `total`, `fecha`) VALUES
(1, 10001, 2, 2, 25, '2023-09-23 04:23:21'),
(2, 10002, 6, 2, 88, '2024-09-23 04:23:47'),
(3, 10003, 1, 1, 85, '2024-09-23 05:14:41'),
(4, 10004, 5, 1, 25, '2024-09-23 16:28:10'),
(5, 10005, 2, 1, 85, '2024-09-23 18:51:16'),
(6, 10006, 1, 1, 375, '2024-09-22 18:53:38'),
(9, 10007, 1, 1, 5, '2024-09-24 15:57:40'),
(10, 10008, 1, 1, 5, '2024-09-24 15:57:50'),
(11, 10009, 6, 2, 45, '2024-09-24 19:44:11'),
(12, 10010, 1, 1, 98, '2024-09-24 23:04:42'),
(13, 10011, 1, 1, 43, '2024-09-25 00:56:17'),
(14, 10012, 1, 1, 5, '2024-09-25 01:07:28'),
(15, 10013, 1, 1, 5, '2024-09-25 01:39:47'),
(16, 10014, 2, 1, 15, '2024-09-25 02:02:12'),
(17, 10015, 1, 1, 165, '2024-09-25 02:02:23'),
(18, 10016, 2, 1, 85, '2024-09-25 02:02:31'),
(19, 10017, 2, 1, 463, '2024-09-25 02:02:48'),
(20, 10018, 1, 1, 10, '2024-09-25 02:08:11'),
(21, 10019, 1, 1, 5, '2024-09-25 02:09:38'),
(22, 10020, 1, 1, 10, '2024-09-25 05:27:42');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `compras`
--
ALTER TABLE `compras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `detalle_compra`
--
ALTER TABLE `detalle_compra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

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
