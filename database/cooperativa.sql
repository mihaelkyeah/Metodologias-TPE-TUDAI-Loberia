-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 27-05-2021 a las 19:54:28
-- Versión del servidor: 10.4.19-MariaDB
-- Versión de PHP: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cooperativa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `material`
--

CREATE TABLE `material` (
  `id_material` int(11) NOT NULL,
  `nombre_material` varchar(100) NOT NULL,
  `forma_entrega` varchar(512) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `material`
--

INSERT INTO `material` (`id_material`, `nombre_material`, `forma_entrega`) VALUES
(1, 'Latas de aluminio', 'Secas y aplastadas'),
(2, 'Cajas de cartón', 'Desarmadas y limpias'),
(3, 'Envases plásticos', 'Con excepción de los de yogurt y queso blanco.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `material_pedido`
--

CREATE TABLE `material_pedido` (
  `id_pedido` int(11) NOT NULL,
  `id_material` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido_recoleccion`
--

CREATE TABLE `pedido_recoleccion` (
  `id_pedido` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `direccion` varchar(90) NOT NULL,
  `nro_telefono` int(11) NOT NULL,
  `franja_horaria` varchar(10) NOT NULL,
  `volumen` char(1) NOT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `recolectado` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pedido_recoleccion`
--

INSERT INTO `pedido_recoleccion` (`id_pedido`, `nombre`, `apellido`, `direccion`, `nro_telefono`, `franja_horaria`, `volumen`, `imagen`, `recolectado`) VALUES
(2, 'Oscar', 'Rodrigo', 'Avenida de Mayo 93114, Munro', 2147483647, '9 a 12', 'C', 'uploads/materials/60ad96572621d.jpg', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `material`
--
ALTER TABLE `material`
  ADD PRIMARY KEY (`id_material`);

--
-- Indices de la tabla `material_pedido`
--
ALTER TABLE `material_pedido`
  ADD PRIMARY KEY (`id_pedido`,`id_material`),
  ADD KEY `FK_MATERIAL_PEDIDO` (`id_material`);

--
-- Indices de la tabla `pedido_recoleccion`
--
ALTER TABLE `pedido_recoleccion`
  ADD PRIMARY KEY (`id_pedido`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pedido_recoleccion`
--
ALTER TABLE `pedido_recoleccion`
  MODIFY `id_pedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `material_pedido`
--
ALTER TABLE `material_pedido`
  ADD CONSTRAINT `FK_MATERIAL_PEDIDO` FOREIGN KEY (`id_material`) REFERENCES `material` (`id_material`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_PEDIDO_MATERIALES` FOREIGN KEY (`id_pedido`) REFERENCES `pedido_recoleccion` (`id_pedido`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
