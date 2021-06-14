-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost

-- Tiempo de generación: 11-06-2021 a las 00:29:26
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 7.4.15

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
-- Estructura de tabla para la tabla `deposito`
--

CREATE TABLE `deposito` (
  `id_deposito` int(11) NOT NULL,
  `id_recolector` int(11) NOT NULL DEFAULT 1,
  `material` varchar(256) NOT NULL,
  `fecha` varchar(11) NOT NULL,
  `peso` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `material`
--

CREATE TABLE `material` (
  `id_material` int(11) NOT NULL,
  `nombre_material` varchar(100) NOT NULL,
  `forma_entrega` varchar(512) DEFAULT NULL,
  `img_path` varchar(255) DEFAULT NULL,
  `video_link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `material`
--

INSERT INTO `material` (`id_material`, `nombre_material`, `forma_entrega`, `img_path`, `video_link`) VALUES
(1, 'Latas de aluminio', 'Secas y aplastadas', NULL, NULL),
(2, 'Cajas de cartón', 'Desarmadas y limpias', NULL, NULL),
(3, 'Envases plásticos', 'Con excepción de los de yogurt y queso blanco.', NULL, NULL);

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recolector`
--

CREATE TABLE `recolector` (
  `id_recolector` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `nro_dni` varchar(11) NOT NULL,
  `fecha_nacimiento` varchar(11) NOT NULL,
  `vehiculo` char(11) NOT NULL DEFAULT 'A'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `recolector`
--

INSERT INTO `recolector` (`id_recolector`, `nombre`, `apellido`, `nro_dni`, `fecha_nacimiento`, `vehiculo`) VALUES
(1, 'Vecino', 'Buena onda', '11111111', '01/01/1999', 'A');

--
-- Disparadores `recolector`
--
DELIMITER $$
CREATE TRIGGER `TR_RECOLECTOR_DEPOSITO` AFTER DELETE ON `recolector` FOR EACH ROW UPDATE deposito 
SET id_recolector = 1
WHERE deposito.id_recolector = OLD.id_recolector
$$
DELIMITER ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `deposito`
--
ALTER TABLE `deposito`
  ADD PRIMARY KEY (`id_deposito`),
  ADD KEY `FK_DEPOSITO_RECOLECTOR` (`id_recolector`);

--
-- Indices de la tabla `material`
--
ALTER TABLE `material`
  ADD PRIMARY KEY (`id_material`);

--
-- Indices de la tabla `pedido_recoleccion`
--
ALTER TABLE `pedido_recoleccion`
  ADD PRIMARY KEY (`id_pedido`);

--
-- Indices de la tabla `recolector`
--
ALTER TABLE `recolector`
  ADD PRIMARY KEY (`id_recolector`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `deposito`
--
ALTER TABLE `deposito`
  MODIFY `id_deposito` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pedido_recoleccion`
--
ALTER TABLE `pedido_recoleccion`
  MODIFY `id_pedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

ALTER TABLE `recolector`
  MODIFY `id_recolector` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
