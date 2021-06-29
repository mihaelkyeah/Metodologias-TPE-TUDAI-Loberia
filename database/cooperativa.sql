-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-06-2021 a las 07:06:32
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.5

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

--
-- Volcado de datos para la tabla `deposito`
--

INSERT INTO `deposito` (`id_deposito`, `id_recolector`, `material`, `fecha`, `peso`) VALUES
(1, 1, 'Tu vieja', 'no sé', 3.40282e38),
(2, 1, 'Tu vieja', 'no sé', 3.40282e38),
(3, 1, 'Tu vieja', 'no sé', 3.40282e38);

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
(1, 'Latas de aluminio', 'Secas y aplastadas', 'uploads/requests/60d54f80d753d.jpg', 'https://www.youtube.com/embed/HDaYrXtKiLM'),
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
  `nro_telefono` bigint(30) NOT NULL,
  `franja_horaria` varchar(10) NOT NULL,
  `volumen` char(1) NOT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `recolectado` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pedido_recoleccion`
--

INSERT INTO `pedido_recoleccion` (`id_pedido`, `nombre`, `apellido`, `direccion`, `nro_telefono`, `franja_horaria`, `volumen`, `imagen`, `recolectado`) VALUES
(2, 'Oscar', 'Rodrigo', 'Avenida de Mayo 93114, Munro', 2147483647, '9 a 12', 'C', 'uploads/materials/60ad96572621d.jpg', 0),
(10, 'Ruperto', 'Goñi', 'Carabobo 6543', 2147483647, '13 a 17', 'D', 'uploads/requests/60d551c41c9b4.jpg', 0),
(11, 'aaaaaaa', 'eeeeeee', 'fsafasdf', 2147483647, '9 a 12', 'B', 'uploads/requests/60d5523914810.jpg', 0);

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
  MODIFY `id_deposito` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `material`
--
ALTER TABLE `material`
  MODIFY `id_material` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `pedido_recoleccion`
--
ALTER TABLE `pedido_recoleccion`
  MODIFY `id_pedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `recolector`
--
ALTER TABLE `recolector`
  MODIFY `id_recolector` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
