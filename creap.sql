-- phpMyAdmin SQL Dump
-- version 4.7.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 14-08-2017 a las 17:25:09
-- Versión del servidor: 10.1.19-MariaDB
-- Versión de PHP: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `creap`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cd_electivas`
--

CREATE TABLE `cd_electivas` (
  `id_electiva` int(4) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `descripcion` varchar(30) DEFAULT NULL,
  `id_profesor` int(4) NOT NULL,
  `cupos` int(4) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cd_electivas`
--

INSERT INTO `cd_electivas` (`id_electiva`, `nombre`, `descripcion`, `id_profesor`, `cupos`, `created_at`, `updated_at`) VALUES
(1, 'elec', 'asdf', 2, 3, '2017-08-14 06:49:50', '2017-08-14 18:00:41'),
(2, 'elec2', 'otra electivas', 2, 30, '2017-08-14 07:01:25', '2017-08-14 19:00:30'),
(4, 'Otra Electiva', 'Mucho material', 1, 45, '2017-08-14 19:11:10', '2017-08-14 19:11:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cd_electiva_usuario`
--

CREATE TABLE `cd_electiva_usuario` (
  `id_user` int(4) NOT NULL,
  `id_electiva` int(4) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cd_electiva_usuario`
--

INSERT INTO `cd_electiva_usuario` (`id_user`, `id_electiva`, `created_at`, `updated_at`) VALUES
(4, 2, '2017-08-14 21:45:53', '2017-08-14 21:45:53');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cd_perfiles`
--

CREATE TABLE `cd_perfiles` (
  `id_perfil` int(4) NOT NULL,
  `perfil` varchar(15) NOT NULL,
  `created_at` datetime NOT NULL,
  `update_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cd_perfiles`
--

INSERT INTO `cd_perfiles` (`id_perfil`, `perfil`, `created_at`, `update_at`) VALUES
(1, 'administrador', '2017-08-13 00:00:00', NULL),
(2, 'estudiante', '2017-08-13 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cd_profesores`
--

CREATE TABLE `cd_profesores` (
  `id_profesor` int(4) NOT NULL,
  `nombres` varchar(20) NOT NULL,
  `apellidos` varchar(20) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cd_profesores`
--

INSERT INTO `cd_profesores` (`id_profesor`, `nombres`, `apellidos`, `created_at`, `update_at`) VALUES
(1, 'luis', 'molano', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'maria', 'nieves', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cd_usuarios`
--

CREATE TABLE `cd_usuarios` (
  `id_user` int(4) NOT NULL,
  `user` varchar(10) NOT NULL,
  `psswd` varchar(20) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellido` varchar(30) DEFAULT NULL,
  `remember_token` varchar(40) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cd_usuarios`
--

INSERT INTO `cd_usuarios` (`id_user`, `user`, `psswd`, `nombre`, `apellido`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', 'juan', 'perez', NULL, '2017-08-13 00:50:16', NULL),
(2, 'asd1', '123456', 'Lorena', 'Herrera', NULL, '2017-08-13 00:00:00', NULL),
(3, 'cxz2', '123456', 'Hugo', 'Valdez', NULL, '2017-08-13 00:00:00', NULL),
(4, 'se123', '123456', 'Lina', 'Ruiz', NULL, '2017-08-14 20:03:25', '2017-08-14 20:03:25'),
(12, 'ere3234', '123456', 'Miguel', 'Arenas', NULL, '2017-08-14 20:12:23', '2017-08-14 20:12:23'),
(13, 'qwerty123', '123456', 'Enrique', 'Muñoz', NULL, '2017-08-14 20:28:10', '2017-08-14 20:28:10'),
(14, 'qwerty1233', '123456', 'Luisa', 'Sanchez', NULL, '2017-08-14 20:29:18', '2017-08-14 20:29:18'),
(15, 'efre123', '123456', 'Franz', 'Kafka', NULL, '2017-08-14 20:31:53', '2017-08-14 20:31:53'),
(16, 'efre1232', '123456', 'Geovany', 'Quiñonez', NULL, '2017-08-14 20:32:52', '2017-08-14 20:32:52'),
(17, 'lio24', '123456', 'Maria', 'Perez', NULL, '2017-08-14 20:33:59', '2017-08-14 20:33:59'),
(18, 'as12', '123456', 'Jenry', 'Jackson', NULL, '2017-08-14 20:36:12', '2017-08-14 20:36:12'),
(19, 'as12', '123456', 'Jenry', 'Jackson', NULL, '2017-08-14 20:36:37', '2017-08-14 20:36:37'),
(20, 'w3223', '123456', 'Felipe', 'Guerra', NULL, '2017-08-14 20:37:07', '2017-08-14 20:37:07'),
(21, 'otroU123', '123456', 'Fulano', 'DeTal', NULL, '2017-08-14 20:37:55', '2017-08-14 20:37:55'),
(22, 'user1', '123456', 'Jaime', 'Agudelo', NULL, '2017-08-14 20:39:03', '2017-08-14 20:39:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cd_usuarios_perfiles`
--

CREATE TABLE `cd_usuarios_perfiles` (
  `id_user` int(4) NOT NULL,
  `id_perfil` int(4) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cd_usuarios_perfiles`
--

INSERT INTO `cd_usuarios_perfiles` (`id_user`, `id_perfil`, `created_at`, `updated_at`) VALUES
(1, 1, '2017-08-13 00:00:00', NULL),
(2, 2, '0000-00-00 00:00:00', NULL),
(3, 2, '2017-08-13 00:00:00', NULL),
(12, 1, '2017-08-14 20:26:34', '2017-08-14 20:26:34'),
(13, 2, '2017-08-14 20:28:10', '2017-08-14 20:28:10'),
(14, 2, '2017-08-14 20:29:19', '2017-08-14 20:29:19'),
(15, 2, '2017-08-14 20:31:53', '2017-08-14 20:31:53'),
(16, 2, '2017-08-14 20:32:52', '2017-08-14 20:32:52'),
(17, 2, '2017-08-14 20:33:59', '2017-08-14 20:33:59'),
(18, 2, '2017-08-14 20:36:12', '2017-08-14 20:36:12'),
(18, 2, '2017-08-14 20:36:37', '2017-08-14 20:36:37'),
(20, 2, '2017-08-14 20:37:07', '2017-08-14 20:37:07'),
(21, 2, '2017-08-14 20:37:55', '2017-08-14 20:37:55'),
(22, 2, '2017-08-14 20:39:03', '2017-08-14 20:39:03'),
(4, 2, '0000-00-00 00:00:00', NULL),
(4, 2, '2017-08-14 02:00:00', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cd_electivas`
--
ALTER TABLE `cd_electivas`
  ADD PRIMARY KEY (`id_electiva`),
  ADD KEY `const_elec_elec_profe` (`id_profesor`);

--
-- Indices de la tabla `cd_electiva_usuario`
--
ALTER TABLE `cd_electiva_usuario`
  ADD KEY `const_user_elec_usua` (`id_user`),
  ADD KEY `const_electiva_elec_usua` (`id_electiva`);

--
-- Indices de la tabla `cd_perfiles`
--
ALTER TABLE `cd_perfiles`
  ADD PRIMARY KEY (`id_perfil`);

--
-- Indices de la tabla `cd_profesores`
--
ALTER TABLE `cd_profesores`
  ADD PRIMARY KEY (`id_profesor`);

--
-- Indices de la tabla `cd_usuarios`
--
ALTER TABLE `cd_usuarios`
  ADD PRIMARY KEY (`id_user`);

--
-- Indices de la tabla `cd_usuarios_perfiles`
--
ALTER TABLE `cd_usuarios_perfiles`
  ADD KEY `const_usua_perf_usua` (`id_user`),
  ADD KEY `const_perfil_perf_usua` (`id_perfil`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cd_electivas`
--
ALTER TABLE `cd_electivas`
  MODIFY `id_electiva` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `cd_perfiles`
--
ALTER TABLE `cd_perfiles`
  MODIFY `id_perfil` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `cd_profesores`
--
ALTER TABLE `cd_profesores`
  MODIFY `id_profesor` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `cd_usuarios`
--
ALTER TABLE `cd_usuarios`
  MODIFY `id_user` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cd_electivas`
--
ALTER TABLE `cd_electivas`
  ADD CONSTRAINT `const_elec_elec_profe` FOREIGN KEY (`id_profesor`) REFERENCES `cd_profesores` (`id_profesor`);

--
-- Filtros para la tabla `cd_electiva_usuario`
--
ALTER TABLE `cd_electiva_usuario`
  ADD CONSTRAINT `const_electiva_elec_usua` FOREIGN KEY (`id_electiva`) REFERENCES `cd_electivas` (`id_electiva`),
  ADD CONSTRAINT `const_user_elec_usua` FOREIGN KEY (`id_user`) REFERENCES `cd_usuarios` (`id_user`);

--
-- Filtros para la tabla `cd_usuarios_perfiles`
--
ALTER TABLE `cd_usuarios_perfiles`
  ADD CONSTRAINT `const_perfil_perf_usua` FOREIGN KEY (`id_perfil`) REFERENCES `cd_perfiles` (`id_perfil`),
  ADD CONSTRAINT `const_usua_perf_usua` FOREIGN KEY (`id_user`) REFERENCES `cd_usuarios` (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
