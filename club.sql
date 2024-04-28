-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-04-2024 a las 22:52:26
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
-- Base de datos: `club`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrera`
--

CREATE TABLE `carrera` (
  `id` int(15) NOT NULL,
  `Nombre_Carrera` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `carrera`
--

INSERT INTO `carrera` (`id`, `Nombre_Carrera`) VALUES
(1, 'Ingeniería en Gestión empresarial'),
(2, 'Lic. Administración'),
(3, 'Ingeniería Civil'),
(4, 'Ingeniería Industrial'),
(5, 'Ingeniería en Sistemas Computacionales'),
(6, 'Ingeniería Mecatroniaca');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clubes`
--

CREATE TABLE `clubes` (
  `CLUB` int(20) NOT NULL,
  `NOMBRE_CLUB` varchar(50) NOT NULL,
  `TIPO_ACTIVIDAD` varchar(50) NOT NULL,
  `HORARIO_CLUB` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clubes`
--

INSERT INTO `clubes` (`CLUB`, `NOMBRE_CLUB`, `TIPO_ACTIVIDAD`, `HORARIO_CLUB`) VALUES
(1, 'Club de Ajedrez', 'Ajedrez', 'jueves y viernes 7:00 a 9:00'),
(2, 'Club de Danza', 'Danza', 'jueves y viernes 7:00 a 9:00'),
(3, 'Club de básquetbol', 'Básquetbol', 'jueves a Viernes 07:00 a 09:00'),
(4, 'Club de fútbol', 'Fútbol', 'jueves y viernes 7:00 a 9:00'),
(5, 'Club de Música', 'Música', 'jueves y viernes 7:00 a 9:00'),
(6, 'Club de ED canes', 'ED Canes', 'jueves y viernes 7:00 a 9:00'),
(7, 'Club de Escolta', 'Escolta', 'jueves y viernes 7:00 a 9:00'),
(8, 'Club de Banda de Guerra', 'Banda de Guerra', 'jueves y viernes 7:00 a 9:00'),
(9, 'Club de Programación', 'Programación', 'jueves y viernes 7:00 a 9:00'),
(10, 'Club de Taekwondo', 'Taekwondo', 'jueves y viernes 7:00 a 9:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `Usuario` varchar(15) NOT NULL,
  `Contraseña` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `monitor`
--

CREATE TABLE `monitor` (
  `ID_Monitor` int(15) NOT NULL,
  `Nombre_Monitor` varchar(11) NOT NULL,
  `Apellido_Monitor` varchar(11) NOT NULL,
  `Carrera` varchar(45) NOT NULL,
  `correo` varchar(35) NOT NULL,
  `N.telefono` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `monitor`
--

INSERT INTO `monitor` (`ID_Monitor`, `Nombre_Monitor`, `Apellido_Monitor`, `Carrera`, `correo`, `N.telefono`) VALUES
(21, 'Rufino', 'Mendoza', 'Ingeniería en sistemas computacionales', 'monitor1@gmail.com', 953123456),
(22, 'Martha', 'Espinoza', 'Ingeniería Civi', 'monitor2@gmail.com', 953234567),
(23, 'Diana', 'Barrios', 'Ingeniería Industrial', 'monitor3@gmail.com', 953345678),
(24, 'Manuel', 'Cruz', 'Ingeniería Mecatronica', 'monitor4@gmail.com', 953456789),
(25, 'Fernanda', 'Ortiz', 'Lic. Administración', 'monitor5@gmail.com', 953123477),
(26, 'Javier', 'Cruz', 'Ingeniería en sistemas computacionales', 'monitor6@gmail.com', 953123327),
(27, 'Adrian', 'Lopez', 'Ingeniería Gestión empresarial', 'monitor7@gmail.com', 953111456),
(28, 'Karina', 'Reyes', 'Ingeniería en sistemas computacionales', 'monitor8@gmail.com', 953123997),
(29, 'Gabriela', 'Jimenez', 'Ingeniería Industrial', 'monitor8@gmail.com', 953456689);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nombrealumno`
--

CREATE TABLE `nombrealumno` (
  `id` varchar(10) NOT NULL,
  `Nombre` varchar(15) NOT NULL,
  `Apellido` varchar(20) NOT NULL,
  `N.Control` int(10) NOT NULL,
  `Semestre` varchar(30) NOT NULL,
  `Correo` varchar(25) NOT NULL,
  `Telefono` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `nombrealumno`
--

INSERT INTO `nombrealumno` (`id`, `Nombre`, `Apellido`, `N.Control`, `Semestre`, `Correo`, `Telefono`) VALUES
('', 'Rufino', 'Mendoza Vasquez', 21620198, 'sexto', 'mendozavasquezrufino1@gma', 2147483647),
('', 'Sandra', 'Reyes Garcia', 21620198, 'sexto', 'sandrareyes1@gmail.com', 2147483647),
('', 'Karina', 'Reyes Lopez', 21620184, 'sexto', 'karinareyes1@gmail.com', 2147483647);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro`
--

CREATE TABLE `registro` (
  `id` int(11) NOT NULL,
  `Nombre` int(20) NOT NULL,
  `Apellido_Paterno` varchar(10) NOT NULL,
  `Apellido_Materno` varchar(10) NOT NULL,
  `Club` varchar(15) NOT NULL,
  `Usuario` varchar(10) NOT NULL,
  `Contraseña` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carrera`
--
ALTER TABLE `carrera`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `monitor`
--
ALTER TABLE `monitor`
  ADD PRIMARY KEY (`ID_Monitor`);

--
-- Indices de la tabla `registro`
--
ALTER TABLE `registro`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

