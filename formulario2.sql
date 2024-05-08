-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-05-2024 a las 01:42:52
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
-- Base de datos: `formulario2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bdlogin`
--

CREATE TABLE `bdlogin` (
  `id` int(2) NOT NULL,
  `Alumno_Monitor` varchar(10) NOT NULL,
  `usuario` varchar(15) NOT NULL,
  `contraseña` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `bdlogin`
--

INSERT INTO `bdlogin` (`id`, `Alumno_Monitor`, `usuario`, `contraseña`) VALUES
(0, 'ALUMNO', 'ejemplo', '234343'),
(0, 'ALUMNO', 'ejemplo', 'Contraseña');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla_form`
--

CREATE TABLE `tabla_form` (
  `id` int(5) NOT NULL,
  `Alumno_Monitor` varchar(10) NOT NULL,
  `nombre` varchar(15) NOT NULL,
  `Ncontrol` int(15) NOT NULL,
  `club` varchar(20) NOT NULL,
  `usuario` varchar(20) NOT NULL,
  `contraseña` varchar(12) NOT NULL,
  `Apellidos` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tabla_form`
--

INSERT INTO `tabla_form` (`id`, `Alumno_Monitor`, `nombre`, `Ncontrol`, `club`, `usuario`, `contraseña`, `Apellidos`) VALUES
(37, 'MONITOR', 'Alumnoejemplo', 123455, 'BASQUETBOL', 'ejemplo', 'hghasg12', 'dcdvm'),
(38, 'ALUMNO', 'Alumno 1', 12345687, 'LECTURA', 'ejemplo', 'Contraseña', 'ejemplo'),
(39, 'ALUMNO', 'Alumno 1', 12345687, 'LECTURA', 'ejemplo', 'Contraseña', 'ejemplo'),
(40, 'ALUMNO', 'Alumno 1', 12345687, 'LECTURA', 'ejemplo', 'bhbh', 'ejemplo'),
(41, 'ALUMNO', 'Alumno 1', 12345687, 'LECTURA', 'ejemplo', 'bhbh', 'ejemplo'),
(42, 'ALUMNO', 'Alumno 1', 12345687, 'LECTURA', 'ejemplo', 'jhjh', 'ejemplo'),
(43, 'ALUMNO', 'Alumno 1', 12345687, 'BASQUETBOL', 'ejemplo', 'bhjbh', 'ejemplo');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tabla_form`
--
ALTER TABLE `tabla_form`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tabla_form`
--
ALTER TABLE `tabla_form`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
