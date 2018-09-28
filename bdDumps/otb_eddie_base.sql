-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-09-2018 a las 17:03:22
-- Versión del servidor: 10.1.35-MariaDB
-- Versión de PHP: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `otb_eddie`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_09_13_160747_crear_tabla_otb_usuario_detalle', 1),
(4, '2018_09_13_160821_crear_tabla_otb_area', 1),
(5, '2018_09_13_160842_crear_tabla_otb_ciudad', 1),
(6, '2018_09_13_160900_crear_tabla_otb_cliente', 1),
(7, '2018_09_13_160915_crear_tabla_otb_estado', 1),
(8, '2018_09_13_160937_crear_tabla_otb_franja_horaria', 1),
(9, '2018_09_13_160953_crear_tabla_otb_grupo', 1),
(11, '2018_09_13_161108_crear_tabla_otb_marca', 1),
(13, '2018_09_13_161215_crear_tabla_otb_perfil', 1),
(14, '2018_09_13_161229_crear_tabla_otb_regional', 1),
(15, '2018_09_13_161251_crear_tabla_otb_subtipo_ot', 1),
(16, '2018_09_13_161311_crear_tabla_otb_tipo_ot', 1),
(17, '2018_09_24_084101_crear_tabla_otb_usuario_ot', 2),
(18, '2018_09_13_161045_crear_tabla_otb_historico_ot', 3),
(19, '2018_09_13_161158_crear_tabla_otb_orden_trabajo', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `otb_area`
--

CREATE TABLE `otb_area` (
  `id` int(10) UNSIGNED NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `nombre` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_ciudad` int(11) NOT NULL,
  `id_usuario_jefe` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `otb_area`
--

INSERT INTO `otb_area` (`id`, `fecha`, `nombre`, `id_ciudad`, `id_usuario_jefe`) VALUES
(1, '2018-09-24 12:01:29', 'Tecnologia', 1, 1),
(2, '2018-09-24 12:01:29', 'Administrativo', 1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `otb_ciudad`
--

CREATE TABLE `otb_ciudad` (
  `id` int(10) UNSIGNED NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `nombre` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_regional` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `otb_ciudad`
--

INSERT INTO `otb_ciudad` (`id`, `fecha`, `nombre`, `id_regional`) VALUES
(1, '2018-09-24 12:04:18', 'Bogotá D.C.', 1),
(2, '2018-09-24 12:04:18', 'Cartagena', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `otb_cliente`
--

CREATE TABLE `otb_cliente` (
  `id` int(10) UNSIGNED NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccion` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `correo` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `activo` tinyint(4) NOT NULL,
  `id_ciudad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `otb_cliente`
--

INSERT INTO `otb_cliente` (`id`, `fecha`, `nombre`, `direccion`, `telefono`, `correo`, `activo`, `id_ciudad`) VALUES
(1, '2018-09-24 01:43:00', 'AVIANCA', 'Carrera 15 # 25 - 23', '1234567', 'algo@algo.com', 1, 1),
(2, '2018-09-24 01:43:01', 'UNILEVER', 'Carrera 16 # 26 - 24', '1234568', 'algo1@algo1.com', 1, 2),
(3, '2018-09-24 01:43:02', 'ESPN', 'Carrera 15 # 25 - 24', '1234569', 'algo2@algo2.com', 1, 3),
(4, '2018-09-24 01:43:03', 'FNC', 'Carrera 16 # 26 - 25', '1234570', 'algo1@algo1.com', 1, 1),
(5, '2018-09-24 01:43:04', 'ALKOSTO', 'Carrera 15 # 25 - 25', '1234571', 'algo2@algo2.com', 1, 2),
(6, '2018-09-24 01:43:05', 'MERCK', 'Carrera 16 # 26 - 26', '1234572', 'algo1@algo1.com', 1, 3),
(7, '2018-09-24 01:43:06', 'KIKES', 'Carrera 15 # 25 - 26', '1234573', 'algo2@algo2.com', 1, 3),
(8, '2018-09-24 01:43:07', 'SCHNEIDER', 'Carrera 16 # 26 - 27', '1234574', 'algo1@algo1.com', 1, 2),
(9, '2018-09-24 01:43:08', 'CLARO', 'Carrera 15 # 25 - 27', '1234575', 'algo2@algo2.com', 1, 1),
(10, '2018-09-24 01:43:09', 'ESTELAR', 'Carrera 16 # 26 - 28', '1234576', 'algo1@algo1.com', 1, 1),
(11, '2018-09-24 01:43:10', 'BAVARIA', 'Carrera 15 # 25 - 28', '1234577', 'algo2@algo2.com', 1, 2),
(12, '2018-09-24 01:43:11', 'PERNOD', 'Carrera 16 # 26 - 29', '1234578', 'algo1@algo1.com', 1, 1),
(13, '2018-09-24 01:43:12', 'AVANTEL', 'Carrera 15 # 25 - 29', '1234579', 'algo2@algo2.com', 1, 3),
(14, '2018-09-24 01:43:13', 'ROLLING STONE', 'Carrera 16 # 26 - 30', '1234580', 'algo1@algo1.com', 1, 3),
(15, '2018-09-24 01:43:14', 'CITI', 'Carrera 15 # 25 - 30', '1234581', 'algo2@algo2.com', 1, 3),
(16, '2018-09-24 01:43:15', 'JUAN VALDEZ', 'Carrera 16 # 26 - 31', '1234582', 'algo1@algo1.com', 1, 2),
(17, '2018-09-24 01:43:16', 'BRM', 'Carrera 15 # 25 - 31', '1234583', 'algo2@algo2.com', 1, 2),
(18, '2018-09-24 01:43:17', 'OTROS', 'Carrera 16 # 26 - 32', '1234584', 'algo1@algo1.com', 1, 1),
(19, '2018-09-24 01:43:18', 'PREFERENTE', 'Carrera 15 # 25 - 32', '1234585', 'algo2@algo2.com', 1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `otb_estado`
--

CREATE TABLE `otb_estado` (
  `id` int(10) UNSIGNED NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `estado` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `otb_estado`
--

INSERT INTO `otb_estado` (`id`, `fecha`, `estado`, `color`) VALUES
(1, '2018-09-24 12:09:52', 'Creación', NULL),
(2, '2018-09-24 12:09:52', 'Asignado', NULL),
(3, '2018-09-24 12:09:52', 'En Proceso', NULL),
(4, '2018-09-24 12:09:52', 'Finalizado', NULL),
(5, '2018-09-24 12:09:52', 'Retrasado', NULL),
(6, '2018-09-24 12:09:52', 'Cancelado', NULL),
(7, '2018-09-24 12:09:52', 'Archivado', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `otb_franja_horaria`
--

CREATE TABLE `otb_franja_horaria` (
  `id` int(10) UNSIGNED NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `franja_horaria` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hora_inicio` time NOT NULL,
  `hora_fin` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `otb_franja_horaria`
--

INSERT INTO `otb_franja_horaria` (`id`, `fecha`, `franja_horaria`, `hora_inicio`, `hora_fin`) VALUES
(1, '2018-09-24 12:12:10', 'Diurna', '06:00:00', '14:00:00'),
(2, '2018-09-24 12:12:10', 'Tarde', '08:00:00', '18:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `otb_grupo`
--

CREATE TABLE `otb_grupo` (
  `id` int(10) UNSIGNED NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `nombre` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_area` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `otb_grupo`
--

INSERT INTO `otb_grupo` (`id`, `fecha`, `nombre`, `id_area`) VALUES
(1, '2018-09-24 12:02:48', 'Desarrollo', 1),
(2, '2018-09-24 12:02:48', 'Fabrica', 1),
(3, '2018-09-24 12:03:09', 'Gestión', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `otb_historico_ot`
--

CREATE TABLE `otb_historico_ot` (
  `id` int(10) UNSIGNED NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_estado` tinyint(4) NOT NULL,
  `comentario` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tiempo_gastado` time DEFAULT NULL,
  `url` text COLLATE utf8mb4_unicode_ci,
  `id_orden_trabajo` int(11) NOT NULL,
  `id_usuario_comenta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `otb_historico_ot`
--

INSERT INTO `otb_historico_ot` (`id`, `fecha`, `id_estado`, `comentario`, `tiempo_gastado`, `url`, `id_orden_trabajo`, `id_usuario_comenta`) VALUES
(1, '2018-09-25 14:18:48', 1, 'pruebas de OTS', NULL, NULL, 9, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `otb_marca`
--

CREATE TABLE `otb_marca` (
  `id` int(10) UNSIGNED NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccion` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `correo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `activo` tinyint(4) NOT NULL,
  `id_ciudad` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `otb_marca`
--

INSERT INTO `otb_marca` (`id`, `fecha`, `nombre`, `direccion`, `telefono`, `correo`, `activo`, `id_ciudad`, `id_cliente`) VALUES
(1, '2018-09-24 01:43:00', 'AVIANCA', 'Carrera 15 # 25 - 23', '1234567', 'algo@algo.com', 1, 1, 1),
(2, '2018-09-25 01:43:00', 'AVIANCA CARGO', 'Carrera 16 # 26 - 24', '1234568', 'algo1@algo1.com', 1, 1, 1),
(3, '2018-09-26 01:43:00', 'AVIANCA MUNDIAL', 'Carrera 15 # 25 - 24', '1234569', 'algo2@algo2.com', 1, 1, 1),
(4, '2018-09-27 01:43:00', 'AVIANCA EXPRESS', 'Carrera 16 # 26 - 25', '1234570', 'algo1@algo1.com', 1, 1, 1),
(5, '2018-09-28 01:43:00', 'DEPRISA', 'Carrera 15 # 25 - 25', '1234571', 'algo2@algo2.com', 1, 1, 1),
(6, '2018-09-29 01:43:00', 'FLYBOX', 'Carrera 16 # 26 - 26', '1234572', 'algo1@algo1.com', 1, 1, 1),
(7, '2018-09-30 01:43:00', 'PONDS', 'Carrera 15 # 25 - 26', '1234573', 'algo2@algo2.com', 1, 1, 2),
(8, '2018-10-01 01:43:00', 'CLUB PONDS', 'Carrera 16 # 26 - 27', '1234574', 'algo1@algo1.com', 1, 1, 2),
(9, '2018-10-02 01:43:00', 'KNORR', 'Carrera 15 # 25 - 27', '1234575', 'algo2@algo2.com', 1, 1, 2),
(10, '2018-10-03 01:43:00', 'TRESEMMÉ', 'Carrera 16 # 26 - 28', '1234576', 'algo1@algo1.com', 1, 1, 2),
(11, '2018-10-04 01:43:00', 'UNILEVER', 'Carrera 15 # 25 - 28', '1234577', 'algo2@algo2.com', 1, 1, 2),
(12, '2018-10-05 01:43:00', 'ESPN', 'Carrera 16 # 26 - 29', '1234578', 'algo1@algo1.com', 1, 1, 3),
(13, '2018-10-06 01:43:00', 'FNC', 'Carrera 15 # 25 - 29', '1234579', 'algo2@algo2.com', 1, 1, 4),
(14, '2018-10-07 01:43:00', 'ALKOSTO', 'Carrera 16 # 26 - 30', '1234580', 'algo1@algo1.com', 1, 1, 5),
(15, '2018-10-08 01:43:00', 'KTRONICS', 'Carrera 15 # 25 - 30', '1234581', 'algo2@algo2.com', 1, 1, 5),
(16, '2018-10-09 01:43:00', 'MERCK', 'Carrera 16 # 26 - 31', '1234582', 'algo1@algo1.com', 1, 1, 6),
(17, '2018-10-10 01:43:00', 'KIKES', 'Carrera 15 # 25 - 31', '1234583', 'algo2@algo2.com', 1, 1, 7),
(18, '2018-10-11 01:43:00', 'SCHNEIDER', 'Carrera 16 # 26 - 32', '1234584', 'algo1@algo1.com', 1, 1, 8),
(19, '2018-10-12 01:43:00', 'CLARO', 'Carrera 15 # 25 - 32', '1234585', 'algo2@algo2.com', 1, 1, 9),
(20, '2018-10-13 01:43:00', 'ESTELAR', 'Carrera 16 # 26 - 33', '1234586', 'algo1@algo1.com', 1, 1, 10),
(21, '2018-10-14 01:43:00', 'BAVARIA', 'Carrera 15 # 25 - 33', '1234587', 'algo2@algo2.com', 1, 1, 11),
(22, '2018-10-15 01:43:00', 'PERNOD', 'Carrera 16 # 26 - 34', '1234588', 'algo1@algo1.com', 1, 1, 12),
(23, '2018-10-16 01:43:00', 'AVANTEL', 'Carrera 15 # 25 - 34', '1234589', 'algo2@algo2.com', 1, 1, 13),
(24, '2018-10-17 01:43:00', 'ROLLING STONE', 'Carrera 16 # 26 - 35', '1234590', 'algo1@algo1.com', 1, 1, 14),
(25, '2018-10-18 01:43:00', 'CITI', 'Carrera 15 # 25 - 35', '1234591', 'algo2@algo2.com', 1, 1, 15),
(26, '2018-10-19 01:43:00', 'JUAN VALDEZ', 'Carrera 16 # 26 - 36', '1234592', 'algo1@algo1.com', 1, 1, 16),
(27, '2018-10-20 01:43:00', 'BRM', 'Carrera 15 # 25 - 36', '1234593', 'algo2@algo2.com', 1, 1, 17),
(28, '2018-10-21 01:43:00', 'PROPUESTAS', 'Carrera 16 # 26 - 37', '1234594', 'algo1@algo1.com', 1, 1, 18),
(29, '2018-10-22 01:43:00', 'WAYA', 'Carrera 15 # 25 - 37', '1234595', 'algo2@algo2.com', 1, 1, 19),
(30, '2018-10-23 01:43:00', 'GERMÁN VARGAS', 'Carrera 16 # 26 - 38', '1234596', 'algo1@algo1.com', 1, 1, 19);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `otb_orden_trabajo`
--

CREATE TABLE `otb_orden_trabajo` (
  `id` int(10) UNSIGNED NOT NULL,
  `identificador` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_estado` tinyint(4) NOT NULL,
  `titulo` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_marca` int(11) NOT NULL,
  `id_grupo` int(11) NOT NULL,
  `id_tipo_ot` int(11) NOT NULL,
  `tiempo_asignado` time NOT NULL,
  `id_usuario_crea` int(11) NOT NULL,
  `id_franja_horaria` int(11) NOT NULL,
  `tiempo_gastado` time DEFAULT NULL,
  `url_archivos` text COLLATE utf8mb4_unicode_ci,
  `fecha_cierre` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `otb_orden_trabajo`
--

INSERT INTO `otb_orden_trabajo` (`id`, `identificador`, `fecha`, `id_estado`, `titulo`, `descripcion`, `fecha_inicio`, `fecha_fin`, `id_cliente`, `id_marca`, `id_grupo`, `id_tipo_ot`, `tiempo_asignado`, `id_usuario_crea`, `id_franja_horaria`, `tiempo_gastado`, `url_archivos`, `fecha_cierre`) VALUES
(1, 'OT1', '2018-09-25 21:22:31', 1, 'pruebas', 'pruebas de OTS1', '2018-09-25', '2018-09-30', 3, 12, 1, 4, '02:00:00', 1, 1, NULL, NULL, NULL),
(2, 'OT1', '2018-09-25 21:22:35', 1, 'pruebas', 'pruebas de OTS2', '2018-09-25', '2018-09-30', 3, 12, 1, 4, '02:00:00', 1, 1, NULL, NULL, NULL),
(3, 'OT1', '2018-09-25 21:22:38', 1, 'pruebas', 'pruebas de OTS3', '2018-09-25', '2018-09-30', 3, 12, 1, 4, '02:00:00', 1, 1, NULL, NULL, NULL),
(4, 'OT1', '2018-09-25 21:22:42', 1, 'pruebas', 'pruebas de OTS4', '2018-09-25', '2018-09-30', 5, 14, 1, 4, '02:00:00', 1, 1, NULL, NULL, NULL),
(5, 'OT1', '2018-09-25 21:22:50', 1, 'pruebas', 'pruebas de OTS5', '2018-09-25', '2018-09-30', 5, 14, 1, 4, '02:00:00', 1, 1, NULL, NULL, NULL),
(6, 'OT1', '2018-09-25 21:22:54', 1, 'pruebas', 'pruebas de OTS6', '2018-09-25', '2018-09-30', 1, 1, 1, 4, '02:00:00', 1, 1, NULL, NULL, NULL),
(7, 'OT1', '2018-09-25 21:23:05', 1, 'pruebas', 'pruebas de OTS7', '2018-09-25', '2018-09-30', 1, 1, 1, 4, '02:00:00', 1, 1, NULL, NULL, NULL),
(8, 'OT1', '2018-09-25 21:23:10', 1, 'pruebas', 'pruebas de OTS8', '2018-09-25', '2018-09-30', 2, 7, 1, 4, '02:00:00', 1, 1, NULL, NULL, NULL),
(9, 'OT1', '2018-09-25 21:23:29', 1, 'pruebas', 'pruebas de OTS9', '2018-09-25', '2018-09-30', 1, 2, 1, 4, '02:00:00', 1, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `otb_password_resets`
--

CREATE TABLE `otb_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `otb_perfil`
--

CREATE TABLE `otb_perfil` (
  `id` int(10) UNSIGNED NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_grupo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `otb_perfil`
--

INSERT INTO `otb_perfil` (`id`, `fecha`, `nombre`, `id_grupo`) VALUES
(1, '2018-09-24 12:06:58', 'Contenido y Socialización', 2),
(2, '2018-09-24 12:06:58', 'Diseño', 2),
(3, '2018-09-24 12:06:58', 'Diseño Front', 1),
(4, '2018-09-24 12:06:58', 'Back-End', 1),
(5, '2018-09-24 12:06:58', 'Q.A.', 1),
(6, '2018-09-24 12:06:58', 'Keepers', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `otb_regional`
--

CREATE TABLE `otb_regional` (
  `id` int(10) UNSIGNED NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `nombre` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `otb_regional`
--

INSERT INTO `otb_regional` (`id`, `fecha`, `nombre`) VALUES
(1, '2018-09-24 12:03:31', 'Bogotá');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `otb_rol`
--

CREATE TABLE `otb_rol` (
  `id` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `rol` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `otb_rol`
--

INSERT INTO `otb_rol` (`id`, `fecha`, `rol`) VALUES
(1, '2018-09-25 20:45:38', 'Administrador'),
(2, '2018-09-25 20:45:38', 'PMO'),
(3, '2018-09-25 20:45:38', 'Ejecutivo'),
(4, '2018-09-25 20:45:38', 'Usuario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `otb_subtipo_ot`
--

CREATE TABLE `otb_subtipo_ot` (
  `id` int(10) UNSIGNED NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `subtipo` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_tipos_ot` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `otb_tipo_ot`
--

CREATE TABLE `otb_tipo_ot` (
  `id` int(10) UNSIGNED NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `tipo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_grupo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `otb_tipo_ot`
--

INSERT INTO `otb_tipo_ot` (`id`, `fecha`, `tipo`, `id_grupo`) VALUES
(1, '2018-09-24 04:18:25', 'CAMPAÑA', 2),
(2, '2018-09-24 04:18:24', 'PARRILLA', 2),
(3, '2018-09-24 04:18:23', 'DE BRIEF', 2),
(4, '2018-09-24 04:18:22', 'PIEZA', 2),
(5, '2018-09-24 04:18:21', 'SOCIALIZACIÓN', 2),
(6, '2018-09-24 04:18:20', 'REUNIÓN', 2),
(7, '2018-09-24 04:18:19', 'CUBRIMIENTO', 2),
(8, '2018-09-24 04:18:18', 'MAIL', 2),
(9, '2018-09-24 04:18:17', 'ACTUALIZACIÓN DE CONTENIDO EN SITIO WEB', 2),
(10, '2018-09-24 04:18:16', 'REPORTE', 2),
(11, '2018-09-24 04:18:15', 'OTROS', 2),
(12, '2018-09-24 04:18:14', 'LANDING', 1),
(13, '2018-09-24 04:18:13', 'ONE PAGE', 1),
(14, '2018-09-24 04:18:12', 'SITE', 1),
(15, '2018-09-24 04:18:11', 'PORTAL', 1),
(16, '2018-09-24 04:18:10', 'E-COMMERCE', 1),
(17, '2018-09-24 04:18:09', 'ENVÍO DE MAIL', 1),
(18, '2018-09-24 04:18:08', 'REPORTE', 1),
(19, '2018-09-24 04:18:07', 'COTIZACIÓN', 1),
(20, '2018-09-24 04:18:06', 'REUNIÓN', 1),
(21, '2018-09-24 04:18:05', 'NUEVO REQUERIMIENTO', 1),
(22, '2018-09-24 04:18:04', 'PERMISO', 3),
(23, '2018-09-24 04:18:03', 'INCAPACIDAD', 3),
(24, '2018-09-24 04:18:02', 'CUMPLEAÑOS', 3),
(25, '2018-09-24 04:18:01', 'FALLA TÉCNICA', 3),
(26, '2018-09-24 04:18:00', 'OTROS', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `otb_usuario`
--

CREATE TABLE `otb_usuario` (
  `id` int(10) UNSIGNED NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `nombre` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usuario` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contrasena` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `correo` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `priv_admin` tinyint(4) NOT NULL,
  `activo` tinyint(4) NOT NULL,
  `logueado` tinyint(1) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `otb_usuario`
--

INSERT INTO `otb_usuario` (`id`, `fecha`, `nombre`, `usuario`, `contrasena`, `correo`, `priv_admin`, `activo`, `logueado`, `remember_token`) VALUES
(1, '2018-09-27 19:55:48', 'Admin', 'Admin', '$2y$10$fdinrTZGrIsn1G7r0DdjUOsvotG17aB9WfCuzCybyDfYjoS7IhY.y', 'juan.almanza@brm.com.co', 1, 1, 0, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `otb_usuarios_ot`
--

CREATE TABLE `otb_usuarios_ot` (
  `id_orde_trabajo` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `finalizado` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `otb_usuarios_ot`
--

INSERT INTO `otb_usuarios_ot` (`id_orde_trabajo`, `id_usuario`, `finalizado`) VALUES
(7, 1, 0),
(8, 1, 0),
(9, 1, 0),
(1, 1, 0),
(2, 1, 0),
(3, 1, 0),
(4, 1, 0),
(5, 1, 0),
(6, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `otb_usuario_detalle`
--

CREATE TABLE `otb_usuario_detalle` (
  `id_usuario` int(11) NOT NULL,
  `id_rol` int(11) NOT NULL,
  `id_area` int(11) NOT NULL,
  `id_ciudad` int(11) NOT NULL,
  `id_grupo` int(11) NOT NULL,
  `id_perfil` int(11) NOT NULL,
  `id_franja_horaria` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `otb_usuario_detalle`
--

INSERT INTO `otb_usuario_detalle` (`id_usuario`, `id_rol`, `id_area`, `id_ciudad`, `id_grupo`, `id_perfil`, `id_franja_horaria`, `id_cliente`) VALUES
(23, 0, 1, 1, 1, 4, 1, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `otb_area`
--
ALTER TABLE `otb_area`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `otb_ciudad`
--
ALTER TABLE `otb_ciudad`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `otb_cliente`
--
ALTER TABLE `otb_cliente`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `otb_estado`
--
ALTER TABLE `otb_estado`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `otb_franja_horaria`
--
ALTER TABLE `otb_franja_horaria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `otb_grupo`
--
ALTER TABLE `otb_grupo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `otb_historico_ot`
--
ALTER TABLE `otb_historico_ot`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `otb_marca`
--
ALTER TABLE `otb_marca`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `otb_orden_trabajo`
--
ALTER TABLE `otb_orden_trabajo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `otb_password_resets`
--
ALTER TABLE `otb_password_resets`
  ADD KEY `otb_password_resets_email_index` (`email`);

--
-- Indices de la tabla `otb_perfil`
--
ALTER TABLE `otb_perfil`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `otb_regional`
--
ALTER TABLE `otb_regional`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `otb_rol`
--
ALTER TABLE `otb_rol`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `otb_subtipo_ot`
--
ALTER TABLE `otb_subtipo_ot`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `otb_tipo_ot`
--
ALTER TABLE `otb_tipo_ot`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `otb_usuario`
--
ALTER TABLE `otb_usuario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usuario` (`usuario`),
  ADD UNIQUE KEY `correo` (`correo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `otb_area`
--
ALTER TABLE `otb_area`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `otb_ciudad`
--
ALTER TABLE `otb_ciudad`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `otb_cliente`
--
ALTER TABLE `otb_cliente`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `otb_estado`
--
ALTER TABLE `otb_estado`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `otb_franja_horaria`
--
ALTER TABLE `otb_franja_horaria`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `otb_grupo`
--
ALTER TABLE `otb_grupo`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `otb_historico_ot`
--
ALTER TABLE `otb_historico_ot`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `otb_marca`
--
ALTER TABLE `otb_marca`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `otb_orden_trabajo`
--
ALTER TABLE `otb_orden_trabajo`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `otb_perfil`
--
ALTER TABLE `otb_perfil`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `otb_regional`
--
ALTER TABLE `otb_regional`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `otb_rol`
--
ALTER TABLE `otb_rol`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `otb_subtipo_ot`
--
ALTER TABLE `otb_subtipo_ot`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `otb_tipo_ot`
--
ALTER TABLE `otb_tipo_ot`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `otb_usuario`
--
ALTER TABLE `otb_usuario`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
