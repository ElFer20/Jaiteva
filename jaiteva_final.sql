-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-10-2024 a las 21:48:13
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
-- Base de datos: `jaiteva final`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu`
--

CREATE TABLE `menu` (
  `idmenu` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `precio` decimal(10,2) NOT NULL,
  `condicion_alimenticia` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `menu`
--

INSERT INTO `menu` (`idmenu`, `nombre`, `descripcion`, `precio`, `condicion_alimenticia`) VALUES
(5, 'Pizza sin gluten', 'Pizza apta para celíacos', 1200.00, 'celiaco'),
(6, 'Pasta vegana', 'Pasta sin ingredientes de origen animal', 900.00, 'vegano'),
(7, 'Ensalada vegetariana', 'Ensalada con vegetales frescos', 800.00, 'vegetariano'),
(8, 'Empanadas sin gluten', 'Empanadas aptas para celíacos', 1000.00, 'celiaco'),
(9, 'Hamburguesa vegana', 'Hamburguesa de vegetales', 1100.00, 'vegano'),
(10, 'Tarta vegetariana', 'Tarta de espinaca y queso', 950.00, 'vegetariano'),
(11, 'Sándwich sin gluten', 'Sándwich sin TACC', 850.00, 'celiaco'),
(12, 'Wrap vegano', 'Wrap de vegetales y hummus', 780.00, 'vegano'),
(13, 'Omelette vegetariano', 'Omelette con queso y verduras', 920.00, 'vegetariano'),
(14, 'Baguette sin gluten', 'Baguette sin gluten', 700.00, 'celiaco'),
(15, 'Ensalada de quinoa', 'Ensalada vegana con quinoa', 890.00, 'vegano'),
(16, 'Pizza vegetariana', 'Pizza con vegetales', 1050.00, 'vegetariano'),
(17, 'Milanesa Completa', 'Milanesa de carne con papas fritas', 900.00, 'sin condicion alimenticia'),
(18, 'Spaghetti al Pesto', 'Spaghetti con salsa de pesto casero', 700.00, 'sin condicion alimenticia'),
(19, 'Ensalada Mixta', 'Ensalada fresca con vegetales variados.', 150.00, 'sin condicion alimenticia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `id_pedido` int(11) NOT NULL,
  `fecha_pedido` datetime DEFAULT current_timestamp(),
  `total` decimal(10,2) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `metodo_pago` varchar(50) NOT NULL,
  `ticket` varchar(20) NOT NULL,
  `opcion_pedido` varchar(50) DEFAULT NULL,
  `estado` enum('pendiente','confirmado','rechazado','cocinando','entregado','cancelado','completado','en reserva') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`id_pedido`, `fecha_pedido`, `total`, `idusuario`, `metodo_pago`, `ticket`, `opcion_pedido`, `estado`) VALUES
(95, '2024-10-27 21:19:10', 1200.00, 2, 'Efectivo', '61A42E7EF9EDFF833AE8', 'reservar', 'cancelado'),
(96, '2024-10-28 20:59:02', 2400.00, 5, 'Efectivo', '537D095DA7C157022E5D', 'comer_acá', 'cancelado'),
(97, '2024-10-28 21:03:46', 3600.00, 2, 'Efectivo', '5D3CC6E8D6AD81F6BA03', 'reservar', 'rechazado'),
(98, '2024-10-28 21:05:49', 1200.00, 2, 'Efectivo', '1362BB89C2C37D03C80C', 'reservar', 'cancelado'),
(99, '2024-10-28 21:07:55', 1200.00, 2, 'Efectivo', '8AA2111B50A1691DFF61', 'reservar', 'cancelado'),
(100, '2024-10-28 21:08:44', 1200.00, 2, 'Efectivo', 'B6332A26A2BADEA2CC1A', 'comer_acá', 'cancelado'),
(101, '2024-10-28 21:09:42', 1200.00, 2, 'Efectivo', '091E333106B27E69A8A2', 'comer_acá', 'cancelado'),
(102, '2024-10-28 21:10:16', 1200.00, 2, 'Efectivo', '8A69900412AD25098D16', 'comer_acá', 'entregado'),
(103, '2024-10-29 00:04:55', 900.00, 5, 'Efectivo', '4CDD331059F59DECBD2C', 'comer_acá', 'cancelado'),
(104, '2024-10-29 00:25:16', 1782.00, 2, 'Efectivo', '0245D10F39B1C812735F', 'comer_acá', 'cancelado'),
(105, '2024-10-29 00:29:42', 1782.00, 2, 'Efectivo', '5DF9A0759E010A9C46E4', 'comer_acá', 'cancelado'),
(106, '2024-10-29 00:30:11', 1782.00, 2, 'Efectivo', '84AD0BF629C36806AFBF', 'comer_acá', 'entregado'),
(107, '2024-10-29 00:34:24', 1782.00, 3, 'Efectivo', 'DC471F4F198589E6F033', 'comer_acá', 'entregado'),
(108, '2024-10-29 00:59:13', 1782.00, 3, 'Efectivo', '2033BFB9FC3F5D678835', 'comer_acá', 'entregado'),
(109, '2024-10-29 01:01:48', 1782.00, 2, 'Efectivo', '3B8B44668E7FB2AF3255', 'comer_acá', 'entregado'),
(110, '2024-10-29 01:02:33', 1782.00, 3, 'Efectivo', '0A98A8E3F89ABB975240', 'comer_acá', 'entregado'),
(111, '2024-10-29 01:09:36', 1782.00, 2, 'Efectivo', '6DDD68CB46FD0C661A80', 'comer_acá', 'entregado'),
(112, '2024-10-29 01:30:48', 3564.00, 3, 'Efectivo', '649EA56C2D0DDA2B5E0A', 'comer_acá', 'entregado'),
(113, '2024-10-29 01:33:03', 3564.00, 3, 'Efectivo', 'F8529885804A1603454C', 'comer_acá', 'entregado'),
(114, '2024-10-29 01:35:01', 3564.00, 3, 'Efectivo', '63E33CEB7BF7191AED9E', 'comer_acá', 'entregado'),
(115, '2024-10-29 01:35:09', 3564.00, 3, 'Efectivo', '1F663AD2A4276A29CB5A', 'comer_acá', 'entregado'),
(116, '2024-10-29 01:35:20', 3564.00, 3, 'Efectivo', '894BA53FEE98084D96A9', 'comer_acá', 'entregado'),
(117, '2024-10-29 01:43:48', 3564.00, 3, 'Efectivo', '643C1BDDF09DDCFB6B74', 'comer_acá', 'entregado'),
(118, '2024-10-29 01:49:45', 3564.00, 3, 'Efectivo', '5CD9FED7B02885CC2224', 'comer_acá', 'entregado'),
(119, '2024-10-29 01:57:51', 3564.00, 3, 'Efectivo', '1AF265174EC186D2C388', 'comer_acá', 'entregado'),
(120, '2024-10-29 01:58:49', 3564.00, 2, 'Efectivo', '84D912AF5D4602972651', 'comer_acá', 'entregado'),
(121, '2024-10-29 02:00:02', 3564.00, 2, 'Efectivo', 'CED1EBA2FA97FED45C0F', 'comer_acá', 'entregado'),
(122, '2024-10-29 02:03:36', 3564.00, 2, 'Efectivo', '130167D9C59577FF76F7', 'comer_acá', 'cancelado'),
(123, '2024-10-29 02:06:49', 3564.00, 2, 'Efectivo', 'CFBAFE9D9E06634ABBE5', 'comer_acá', 'cancelado'),
(124, '2024-10-29 02:10:34', 3564.00, 2, 'Efectivo', '7267F215AA6753119001', 'comer_acá', 'entregado'),
(125, '2024-10-29 02:16:28', 3564.00, 2, 'Efectivo', '8B66DBB6B0E43DB8491A', 'comer_acá', 'entregado'),
(126, '2024-10-29 16:34:43', 19791.00, 3, 'Efectivo', '59440FE6E6F7DF9F992A', 'reservar', 'pendiente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reserva`
--

CREATE TABLE `reserva` (
  `id_reserva` int(11) NOT NULL,
  `id_pedido` int(11) DEFAULT NULL,
  `fecha_reserva` date NOT NULL,
  `hora_reserva` time NOT NULL,
  `num_personas` int(11) NOT NULL CHECK (`num_personas` <= 15)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `reserva`
--

INSERT INTO `reserva` (`id_reserva`, `id_pedido`, `fecha_reserva`, `hora_reserva`, `num_personas`) VALUES
(34, 95, '2024-10-27', '21:20:00', 2),
(35, 97, '2024-10-28', '21:04:00', 2),
(36, 98, '2024-10-28', '21:06:00', 2),
(37, 99, '2024-10-28', '21:08:00', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `idrol` int(11) NOT NULL,
  `nombrerol` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`idrol`, `nombrerol`) VALUES
(1, 'Admin'),
(2, 'Usuario'),
(3, 'invitado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idusuario` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `contraseña` varchar(255) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `idrol` int(11) DEFAULT NULL,
  `puntos` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idusuario`, `nombre`, `contraseña`, `correo`, `idrol`, `puntos`) VALUES
(2, 'bautioperador', '$2y$10$YC.OA2vgtBCClnNXsZAduuREyWoRToc7M8cKrHK1zBpB1wotv8UTC', 'bautioperador@gmail.com', 1, 120),
(3, 'bauti', '$2y$10$6jtsBcyEbhAhtctKI4Mg8uM4UuHzNWxUJ/jEGzkWAX1VtIWOip.P2', 'bauti@gmail.com', 2, 261),
(5, 'cliente', 'contraseña_cliente', 'cliente@ejemplo.com', 3, 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`idmenu`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`id_pedido`);

--
-- Indices de la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD PRIMARY KEY (`id_reserva`),
  ADD KEY `id_pedido` (`id_pedido`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`idrol`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idusuario`),
  ADD KEY `idrol` (`idrol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `menu`
--
ALTER TABLE `menu`
  MODIFY `idmenu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `pedido`
--
ALTER TABLE `pedido`
  MODIFY `id_pedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT de la tabla `reserva`
--
ALTER TABLE `reserva`
  MODIFY `id_reserva` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `idrol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD CONSTRAINT `reserva_ibfk_1` FOREIGN KEY (`id_pedido`) REFERENCES `pedido` (`id_pedido`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`idrol`) REFERENCES `rol` (`idrol`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
