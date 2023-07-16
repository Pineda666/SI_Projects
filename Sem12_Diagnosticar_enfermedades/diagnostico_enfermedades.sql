-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-06-2023 a las 18:00:58
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `diagnostico_enfermedades`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `diagnosticos`
--

CREATE TABLE `diagnosticos` (
  `id` int(11) NOT NULL,
  `nombres` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `diagnostico` varchar(100) NOT NULL DEFAULT 'Sin diagnostico'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `diagnosticos`
--

INSERT INTO `diagnosticos` (`id`, `nombres`, `apellidos`, `diagnostico`) VALUES
(1, 'Carlos Antonio', 'Pineda Urquiza', 'Diabetes'),
(2, 'Steven Jeanpaul', 'Rojas Tumayquispe', 'Hipertension'),
(3, 'Luis Santiago', 'Gayoso Florentini', 'Demencia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sintomas`
--

CREATE TABLE `sintomas` (
  `id` int(11) NOT NULL,
  `sintoma` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `sintomas`
--

INSERT INTO `sintomas` (`id`, `sintoma`) VALUES
(1, 'Sensación de sed'),
(2, 'Necesidad de orinar con más frecuencia de lo habitual'),
(3, 'visión borrosa'),
(4, 'Cansancio'),
(5, 'Perder peso sin querer'),
(6, 'Dolor intenso de cabeza'),
(7, 'Dolor en el pecho'),
(8, 'Mareos'),
(9, 'Dificultad para respirar'),
(10, 'Náuseas'),
(11, 'Vómitos'),
(12, 'Ansiedad'),
(13, 'Confusión'),
(14, 'Pitidos en los oídos'),
(15, 'Hemorragia nasal'),
(16, 'Cambios en el ritmo cardiaco'),
(17, 'Olvidar cosas o acontecimientos recientes'),
(18, 'Perder o extraviar cosas'),
(19, 'Perderse al caminar o conducir'),
(20, 'Sentirse desubicado,incluso en lugares familiares'),
(21, 'Perder la noción del tiempo'),
(22, 'Dificultades para resolver problemas o tomar decisiones'),
(23, 'Problemas para seguir conversaciones o a la hora de encontrar las palabras'),
(24, 'dificultades para realizar tareas habituales'),
(25, 'Errores de cálculo al juzgar visualmente a qué distancia se encuentran los             objetos');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `diagnosticos`
--
ALTER TABLE `diagnosticos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sintomas`
--
ALTER TABLE `sintomas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `diagnosticos`
--
ALTER TABLE `diagnosticos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `sintomas`
--
ALTER TABLE `sintomas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
