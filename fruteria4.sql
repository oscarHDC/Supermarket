-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-10-2022 a las 19:23:33
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `fruteria4`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargos`
--

CREATE TABLE `cargos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cargos`
--

INSERT INTO `cargos` (`id`, `nombre`) VALUES
(1, 'Gerente'),
(2, 'Vendedor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id`, `nombre`) VALUES
(1, 'frutas'),
(2, 'verduras'),
(3, 'cereales'),
(4, 'lacteos'),
(5, 'pescados'),
(6, 'carnes'),
(7, 'alcohol');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `tarjetaCredito` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `telefono` int(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id` int(11) NOT NULL,
  `DNI` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `clave` varchar(10) DEFAULT NULL,
  `cod_cargo` int(11) DEFAULT NULL,
  `salario` double DEFAULT NULL,
  `contratado` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id`, `DNI`, `nombre`, `clave`, `cod_cargo`, `salario`, `contratado`) VALUES
(1, '123456789Q', 'Pepe Garcia', 'fruteria', 1, 3000, 1),
(2, '987654321Q', 'Juan Rubio', 'fruteria', 1, 3000, 1),
(3, '123123123Q', 'Oscar Hernanz', 'fruteria', 2, 1500, 1),
(4, '321321321Q', 'Miguel Castro', 'fruteria', 2, 1700, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lineaticket`
--

CREATE TABLE `lineaticket` (
  `idlinea` int(11) NOT NULL,
  `idticket` int(11) DEFAULT NULL,
  `idproducto` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `precio` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `precio` float DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `iva` int(11) DEFAULT NULL,
  `cod_categoria` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id`, `nombre`, `precio`, `stock`, `iva`, `cod_categoria`) VALUES
(1, 'sandia', 1.5, 50, 4, 1),
(2, 'manzana', 1.2, 50, 4, 1),
(3, 'pera', 0.75, 50, 4, 1),
(4, 'fresa', 1.8, 50, 4, 1),
(5, 'melon', 2.5, 50, 4, 1),
(6, 'tomate', 1.5, 50, 4, 1),
(7, 'platano', 0.5, 50, 4, 1),
(8, 'coliflor', 5.5, 50, 4, 2),
(9, 'brocoli', 3.2, 50, 4, 2),
(10, 'lechuga', 0.75, 50, 4, 2),
(11, 'acelgas', 1.8, 50, 4, 2),
(12, 'espinacas', 2.25, 50, 4, 2),
(13, 'repollo', 2.5, 50, 4, 2),
(14, 'pepino', 0.5, 50, 4, 2),
(15, 'arroz', 1.5, 50, 4, 3),
(16, 'harina', 1.2, 50, 4, 3),
(17, 'levadura', 0.75, 50, 4, 3),
(18, 'pan', 1.2, 50, 4, 3),
(19, 'trigo', 2.25, 50, 4, 3),
(20, 'maiz', 1.5, 50, 4, 3),
(21, 'avena', 0.5, 50, 4, 3),
(22, 'leche', 0.75, 50, 4, 4),
(23, 'queso', 2.75, 50, 4, 4),
(24, 'yogures', 0.65, 50, 4, 4),
(25, 'mantequilla', 1.4, 50, 4, 4),
(26, 'nata', 2.75, 50, 4, 4),
(27, 'cuajada', 1.35, 50, 4, 4),
(28, 'helado', 2.5, 50, 4, 4),
(29, 'lubina', 4.75, 50, 10, 5),
(30, 'merluza', 5.75, 50, 10, 5),
(31, 'lenguadina', 3.65, 50, 10, 5),
(32, 'salmon', 6, 50, 10, 5),
(33, 'rape', 4.75, 50, 10, 5),
(34, 'pescadilla', 1.35, 50, 10, 5),
(35, 'anchoas', 2.5, 50, 10, 5),
(36, 'ternera', 4.75, 50, 10, 6),
(37, 'pollo', 3.75, 50, 10, 6),
(38, 'lomo', 3.65, 50, 10, 6),
(39, 'chorizo', 4.2, 50, 10, 6),
(40, 'jamon', 4.75, 50, 10, 6),
(41, 'bacon', 1.55, 50, 10, 6),
(42, 'buey', 15.5, 50, 10, 6),
(43, 'whisky', 10.75, 50, 21, 7),
(44, 'ron', 8.75, 50, 21, 7),
(45, 'vino', 1.65, 50, 21, 7),
(46, 'ginebra', 7.2, 50, 21, 7),
(47, 'cerveza', 0.75, 50, 21, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ticket`
--

CREATE TABLE `ticket` (
  `id` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `id_empleado` int(11) DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cargos`
--
ALTER TABLE `cargos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`tarjetaCredito`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cod_cargo` (`cod_cargo`);

--
-- Indices de la tabla `lineaticket`
--
ALTER TABLE `lineaticket`
  ADD PRIMARY KEY (`idlinea`),
  ADD KEY `idproducto` (`idproducto`),
  ADD KEY `idticket` (`idticket`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cod_categoria` (`cod_categoria`);

--
-- Indices de la tabla `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_empleado` (`id_empleado`),
  ADD KEY `id_cliente` (`id_cliente`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `lineaticket`
--
ALTER TABLE `lineaticket`
  MODIFY `idlinea` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT de la tabla `ticket`
--
ALTER TABLE `ticket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD CONSTRAINT `empleados_ibfk_1` FOREIGN KEY (`cod_cargo`) REFERENCES `cargos` (`id`);

--
-- Filtros para la tabla `lineaticket`
--
ALTER TABLE `lineaticket`
  ADD CONSTRAINT `lineaticket_ibfk_1` FOREIGN KEY (`idproducto`) REFERENCES `producto` (`id`),
  ADD CONSTRAINT `lineaticket_ibfk_2` FOREIGN KEY (`idticket`) REFERENCES `ticket` (`id`);

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`cod_categoria`) REFERENCES `categoria` (`id`);

--
-- Filtros para la tabla `ticket`
--
ALTER TABLE `ticket`
  ADD CONSTRAINT `ticket_ibfk_1` FOREIGN KEY (`id_empleado`) REFERENCES `empleados` (`id`),
  ADD CONSTRAINT `ticket_ibfk_2` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`tarjetaCredito`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
