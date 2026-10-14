-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-10-2026 a las 20:21:14
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `saes`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignmat`
--

CREATE TABLE `asignmat` (
  `id_asignmat` int(11) NOT NULL,
  `id_mat` int(11) NOT NULL,
  `id_alumn` int(11) NOT NULL,
  `id_prof` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `captcal`
--

CREATE TABLE `captcal` (
  `id_captcal` int(11) NOT NULL,
  `id_alumn` int(11) NOT NULL,
  `id_mat` int(11) NOT NULL,
  `id_unidad` int(11) NOT NULL,
  `id_prof` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inscripciongrup`
--

CREATE TABLE `inscripciongrup` (
  `id_insg` int(11) NOT NULL,
  `id_grupo` int(11) NOT NULL,
  `id_alumno` int(11) NOT NULL,
  `estatus_insg` varchar(4) NOT NULL DEFAULT 'alta'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidad`
--

CREATE TABLE `unidad` (
  `id_unidad` int(11) NOT NULL,
  `descripcion_uni` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asignmat`
--
ALTER TABLE `asignmat`
  ADD PRIMARY KEY (`id_asignmat`);

--
-- Indices de la tabla `captcal`
--
ALTER TABLE `captcal`
  ADD PRIMARY KEY (`id_captcal`);

--
-- Indices de la tabla `inscripciongrup`
--
ALTER TABLE `inscripciongrup`
  ADD PRIMARY KEY (`id_insg`);

--
-- Indices de la tabla `unidad`
--
ALTER TABLE `unidad`
  ADD PRIMARY KEY (`id_unidad`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `asignmat`
--
ALTER TABLE `asignmat`
  MODIFY `id_asignmat` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `captcal`
--
ALTER TABLE `captcal`
  MODIFY `id_captcal` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `inscripciongrup`
--
ALTER TABLE `inscripciongrup`
  MODIFY `id_insg` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `unidad`
--
ALTER TABLE `unidad`
  MODIFY `id_unidad` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
