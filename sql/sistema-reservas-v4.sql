-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-05-2017 a las 06:54:16
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sistema-reservas-v1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido_paterno` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido_materno` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo` enum('administrador','docente','autorizado') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nombre`, `apellido_paterno`, `apellido_materno`, `email`, `username`, `password`, `tipo`, `created_at`, `updated_at`, `remember_token`, `foto`) VALUES
(1, 'Alexander', 'Reinaga', 'Lopez', 'alexsof9@gmail.com', 'alexsof', '$2y$10$fHb4L5UWbNr3cMG0MiHvT.12rrgbpsstqejxT6oygGljLFylTEGn6', 'administrador', '2017-04-29 10:35:28', '2017-04-29 10:35:28', '7dCidNQ5EIt3XTDYQSFI0OUBUroA38JBY2B3igUKnZ98Cfqrj2FrWUiao9Ox', NULL),
(6, 'Martina', 'Carrasco', 'Verduguez', 'martiv@gmail.com', 'marti78', '$2y$10$J7E4yedHtjJRhY6J/xp6d.5h1/32O63h5RPJiezLjl9aFIwa8uOF6', 'autorizado', '2017-04-29 10:35:28', '2017-04-29 10:35:28', '98cCr5okD0kY6SDwQjRNS55NGjSCr0IOL3RDkwLpxDYn67Zvt8xO60flZU2Q', NULL),
(7, 'Diego', 'Villarroel', 'Solis', 'diego.villarroel@outlook.com', 'diego.villarroel@outlook.com', '$2y$10$resr0iV.12C9lZ3hmHHg/OZEglNz78y2CsRoAD4xNNYCcnirj.QKW', 'autorizado', '2017-05-01 18:56:35', '2017-05-01 18:56:35', NULL, NULL),
(14, 'Boris', 'calancha', 'navia', 'boris@gmail.com', 'boris', '$2y$10$s/pl1zzW8wnruud9okx7IOnNeVVmq4c5IG/JYJU6yjRycUvNmcyCG', 'docente', '2017-05-02 06:26:18', '2017-05-02 06:26:18', NULL, NULL),
(15, 'Leticia', 'Blanco', 'Coca', 'leti@gmail.com', 'leticia', '$2y$10$eZn0HHJCkqtxRTnWZMjog.Ka8m.S2M8oJ/M77ZahjpMiD1X6zKJfy', 'docente', '2017-05-02 08:05:58', '2017-05-02 08:05:58', NULL, NULL),
(16, 'Patricia', 'Romero', 'Bilbao', 'patricia@gmail.com', 'patricia', '$2y$10$Ytk1GoACuvSxZE43W1yaA.Oe7uaefvtcj6vJBWx65s2b2CYC8wNZq', 'docente', '2017-05-02 08:05:59', '2017-05-02 08:05:59', NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
