-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-05-2019 a las 04:42:45
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `torneo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `arbitro`
--

CREATE TABLE `arbitro` (
  `id` int(10) UNSIGNED NOT NULL,
  `datos_basicos_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `arbitro_puesto`
--

CREATE TABLE `arbitro_puesto` (
  `id` int(10) UNSIGNED NOT NULL,
  `puesto` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `arbitro_puesto`
--

INSERT INTO `arbitro_puesto` (`id`, `puesto`, `descripcion`, `user_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Arbitro principal', 'Arbitro #1 del encuntro', 1, NULL, '2019-05-19 02:09:59', '2019-05-19 02:09:59'),
(2, 'Arbitro secundario', 'Ayuda a tomar decisiones al arbitro principal', 1, NULL, '2019-05-19 02:09:59', '2019-05-19 02:09:59'),
(3, 'Encargado de la planilla', 'Ayuda a plasmar el enfrentamiento en los planillas', 2, NULL, '2019-05-19 02:09:59', '2019-05-19 02:09:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calendario`
--

CREATE TABLE `calendario` (
  `id` int(10) UNSIGNED NOT NULL,
  `jornada` smallint(6) NOT NULL,
  `fecha` date NOT NULL,
  `torneo_id` int(10) UNSIGNED NOT NULL,
  `fase_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `calendario`
--

INSERT INTO `calendario` (`id`, `jornada`, `fecha`, `torneo_id`, `fase_id`, `user_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, '2019-04-30', 1, 2, 1, NULL, '2019-05-19 00:33:54', '2019-05-19 00:33:54'),
(2, 2, '2019-05-02', 1, 2, 1, NULL, '2019-05-19 00:34:14', '2019-05-19 00:34:14'),
(3, 3, '2019-05-07', 1, 2, 1, NULL, '2019-05-19 00:35:31', '2019-05-19 00:35:31'),
(4, 4, '2019-05-09', 1, 2, 1, NULL, '2019-05-19 00:35:55', '2019-05-19 00:35:55'),
(5, 5, '2019-05-14', 1, 2, 1, NULL, '2019-05-19 00:36:12', '2019-05-19 00:36:12'),
(6, 6, '2019-05-16', 1, 2, 1, NULL, '2019-05-19 00:36:35', '2019-05-19 00:36:35'),
(7, 7, '2019-05-23', 1, 2, 1, NULL, '2019-05-19 00:36:57', '2019-05-19 00:36:57'),
(8, 8, '2019-05-28', 1, 2, 1, NULL, '2019-05-19 00:37:22', '2019-05-19 00:37:22'),
(9, 9, '2019-05-30', 1, 3, 1, NULL, '2019-05-19 00:38:02', '2019-05-19 00:38:02'),
(10, 10, '2019-06-04', 1, 3, 1, NULL, '2019-05-19 00:38:22', '2019-05-19 00:38:22'),
(11, 11, '2019-06-06', 1, 3, 1, NULL, '2019-05-19 00:39:08', '2019-05-19 00:39:08'),
(12, 12, '2019-06-11', 1, 3, 1, NULL, '2019-05-19 00:39:23', '2019-05-19 00:39:23'),
(13, 13, '2019-06-06', 1, 4, 1, NULL, '2019-05-19 00:40:18', '2019-05-19 00:40:18'),
(14, 14, '2019-06-13', 1, 4, 1, NULL, '2019-05-19 00:40:51', '2019-05-19 00:40:51'),
(15, 15, '2019-06-01', 1, 5, 1, NULL, '2019-05-19 00:42:31', '2019-05-19 00:42:31'),
(16, 16, '2019-06-02', 1, 6, 1, NULL, '2019-05-19 00:42:48', '2019-05-19 00:42:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id` int(10) UNSIGNED NOT NULL,
  `descripcion` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id`, `descripcion`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Futbol-5', NULL, '2019-05-19 02:09:17', '2019-05-19 02:09:17'),
(2, 'Futbol-8', NULL, '2019-05-19 02:09:17', '2019-05-19 02:09:17'),
(3, 'Futbol-11', NULL, '2019-05-19 02:09:17', '2019-05-19 02:09:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colores`
--

CREATE TABLE `colores` (
  `id` int(10) UNSIGNED NOT NULL,
  `color` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `colores`
--

INSERT INTO `colores` (`id`, `color`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'LightSteelBlue', NULL, '2019-05-19 02:09:13', '2019-05-19 02:09:13'),
(2, 'DodgerBlue', NULL, '2019-05-19 02:09:13', '2019-05-19 02:09:13'),
(3, 'Fuchsia', NULL, '2019-05-19 02:09:13', '2019-05-19 02:09:13'),
(4, 'DarkOrchid', NULL, '2019-05-19 02:09:14', '2019-05-19 02:09:14'),
(5, 'AliceBlue', NULL, '2019-05-19 02:09:14', '2019-05-19 02:09:14'),
(6, 'Sienna', NULL, '2019-05-19 02:09:14', '2019-05-19 02:09:14'),
(7, 'Silver', NULL, '2019-05-19 02:09:14', '2019-05-19 02:09:14'),
(8, 'PaleGoldenRod', NULL, '2019-05-19 02:09:14', '2019-05-19 02:09:14'),
(9, 'LightGoldenRodYellow', NULL, '2019-05-19 02:09:14', '2019-05-19 02:09:14'),
(10, 'Chartreuse', NULL, '2019-05-19 02:09:14', '2019-05-19 02:09:14'),
(11, 'MistyRose', NULL, '2019-05-19 02:09:14', '2019-05-19 02:09:14'),
(12, 'AntiqueWhite', NULL, '2019-05-19 02:09:14', '2019-05-19 02:09:14'),
(13, 'OrangeRed', NULL, '2019-05-19 02:09:14', '2019-05-19 02:09:14'),
(14, 'DarkGreen', NULL, '2019-05-19 02:09:14', '2019-05-19 02:09:14'),
(15, 'Beige', NULL, '2019-05-19 02:09:14', '2019-05-19 02:09:14'),
(16, 'MediumOrchid', NULL, '2019-05-19 02:09:14', '2019-05-19 02:09:14'),
(17, 'BlanchedAlmond', NULL, '2019-05-19 02:09:14', '2019-05-19 02:09:14'),
(18, 'ForestGreen', NULL, '2019-05-19 02:09:14', '2019-05-19 02:09:14'),
(19, 'LightGreen', NULL, '2019-05-19 02:09:14', '2019-05-19 02:09:14'),
(20, 'Khaki', NULL, '2019-05-19 02:09:14', '2019-05-19 02:09:14'),
(21, 'Green', NULL, '2019-05-19 02:09:14', '2019-05-19 02:09:14'),
(22, 'Moccasin', NULL, '2019-05-19 02:09:14', '2019-05-19 02:09:14'),
(23, 'PapayaWhip', NULL, '2019-05-19 02:09:15', '2019-05-19 02:09:15'),
(24, 'DarkSalmon', NULL, '2019-05-19 02:09:15', '2019-05-19 02:09:15'),
(25, 'PaleGreen', NULL, '2019-05-19 02:09:15', '2019-05-19 02:09:15'),
(26, 'Purple', NULL, '2019-05-19 02:09:15', '2019-05-19 02:09:15'),
(27, 'SteelBlue', NULL, '2019-05-19 02:09:15', '2019-05-19 02:09:15'),
(28, 'Cornsilk', NULL, '2019-05-19 02:09:15', '2019-05-19 02:09:15'),
(29, 'Salmon', NULL, '2019-05-19 02:09:15', '2019-05-19 02:09:15'),
(30, 'Orchid', NULL, '2019-05-19 02:09:15', '2019-05-19 02:09:15'),
(31, 'MediumSpringGreen', NULL, '2019-05-19 02:09:15', '2019-05-19 02:09:15'),
(32, 'NavajoWhite', NULL, '2019-05-19 02:09:15', '2019-05-19 02:09:15'),
(33, 'Yellow', NULL, '2019-05-19 02:09:15', '2019-05-19 02:09:15'),
(34, 'Orange', NULL, '2019-05-19 02:09:15', '2019-05-19 02:09:15'),
(35, 'LightSkyBlue', NULL, '2019-05-19 02:09:15', '2019-05-19 02:09:15'),
(36, 'LightYellow', NULL, '2019-05-19 02:09:15', '2019-05-19 02:09:15'),
(37, 'Maroon', NULL, '2019-05-19 02:09:15', '2019-05-19 02:09:15'),
(38, 'DarkViolet', NULL, '2019-05-19 02:09:15', '2019-05-19 02:09:15'),
(39, 'OldLace', NULL, '2019-05-19 02:09:15', '2019-05-19 02:09:15'),
(40, 'DarkOliveGreen', NULL, '2019-05-19 02:09:15', '2019-05-19 02:09:15'),
(41, 'DimGrey', NULL, '2019-05-19 02:09:15', '2019-05-19 02:09:15'),
(42, 'BurlyWood', NULL, '2019-05-19 02:09:15', '2019-05-19 02:09:15'),
(43, 'DarkSeaGreen', NULL, '2019-05-19 02:09:16', '2019-05-19 02:09:16'),
(44, 'LightCyan', NULL, '2019-05-19 02:09:16', '2019-05-19 02:09:16'),
(45, 'PeachPuff', NULL, '2019-05-19 02:09:16', '2019-05-19 02:09:16'),
(46, 'PaleVioletRed', NULL, '2019-05-19 02:09:16', '2019-05-19 02:09:16'),
(47, 'BlueViolet', NULL, '2019-05-19 02:09:16', '2019-05-19 02:09:16'),
(48, 'Ivory', NULL, '2019-05-19 02:09:16', '2019-05-19 02:09:16'),
(49, 'DarkGray', NULL, '2019-05-19 02:09:16', '2019-05-19 02:09:16'),
(50, 'SeaShell', NULL, '2019-05-19 02:09:16', '2019-05-19 02:09:16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `criterio`
--

CREATE TABLE `criterio` (
  `id` int(10) UNSIGNED NOT NULL,
  `descripcion` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `criterio`
--

INSERT INTO `criterio` (`id`, `descripcion`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Puntos victoria', NULL, '2019-05-19 02:09:18', '2019-05-19 02:09:18'),
(2, 'Juego limpio', NULL, '2019-05-19 02:09:18', '2019-05-19 02:09:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `criterio_torneo`
--

CREATE TABLE `criterio_torneo` (
  `id` int(10) UNSIGNED NOT NULL,
  `criterio_id` int(10) UNSIGNED NOT NULL,
  `torneo_id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `criterio_torneo`
--

INSERT INTO `criterio_torneo` (`id`, `criterio_id`, `torneo_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, '2019-05-19 02:09:19', '2019-05-19 02:09:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'locale', 'text', 'Locale', 0, 1, 1, 1, 1, 0, NULL, 12),
(12, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(13, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(14, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(15, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(16, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(17, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(18, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(19, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(20, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(21, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(22, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', '', '', 1, 0, NULL, '2019-05-19 02:08:43', '2019-05-19 02:08:43'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2019-05-19 02:08:43', '2019-05-19 02:08:43'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2019-05-19 02:08:43', '2019-05-19 02:08:43');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_basicos`
--

CREATE TABLE `datos_basicos` (
  `id` int(10) UNSIGNED NOT NULL,
  `cedula` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT 'storage/storage/img/datosbasicos/default.png',
  `telefono_id` int(10) UNSIGNED DEFAULT NULL,
  `primer_nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `segundo_nombre` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `primer_apellido` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `segundo_apellido` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tipo_sangre_id` int(10) UNSIGNED NOT NULL,
  `municipio_id` int(10) UNSIGNED NOT NULL,
  `genero_id` int(10) UNSIGNED NOT NULL,
  `direccion_id` int(10) UNSIGNED NOT NULL,
  `eps_id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `datos_basicos`
--

INSERT INTO `datos_basicos` (`id`, `cedula`, `foto`, `telefono_id`, `primer_nombre`, `segundo_nombre`, `primer_apellido`, `segundo_apellido`, `tipo_sangre_id`, `municipio_id`, `genero_id`, `direccion_id`, `eps_id`, `email`, `user_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '1112112112', 'https://scontent.feoh1-1.fna.fbcdn.net/v/t1.0-9/49172795_2032340176848073_3607797267651624960_o.jpg?_nc_cat=111&_nc_ht=scontent.feoh1-1.fna&oh=a7ece5939eec56f6a52b8fe4c6463b81&oe=5CEE3D6C', NULL, 'Cristian', 'Alexander', 'Marín', 'Aguirre', 6, 24, 1, 77, 9, 'cristianmarint@cotecnova.edu.co', NULL, NULL, '2019-05-19 02:09:08', '2019-05-19 02:09:08'),
(2, '222111222', 'storage/storage/img/datosbasicos/default.png', NULL, 'Edwin', NULL, 'Lopez', NULL, 3, 28, 1, 62, 10, 'edwin.lopezb.1297@cotecnova.edu.co', NULL, NULL, '2019-05-19 02:09:08', '2019-05-19 02:09:08'),
(3, '55818074', 'https://loremflickr.com/400/400/face,woman', 21, 'Kaylee', 'Enrique', 'Stanton', 'Kreiger', 4, 45, 1, 55, 4, 'denesik.maudie@gmail.com', NULL, NULL, '2019-05-19 02:09:19', '2019-05-19 02:09:19'),
(4, '766253000', 'https://loremflickr.com/400/400/face,man', 23, 'Gracie', 'Vincenzo', 'Durgan', 'Tromp', 3, 33, 2, 83, 10, 'klein.barrett@mertz.net', NULL, NULL, '2019-05-19 02:09:19', '2019-05-19 02:09:19'),
(5, '462708389', 'https://loremflickr.com/400/400/face,woman', 25, 'Daphne', 'Myah', 'Ullrich', 'Howe', 1, 37, 2, 29, 8, 'borer.rocky@dietrich.com', NULL, NULL, '2019-05-19 02:09:20', '2019-05-19 02:09:20'),
(6, '310899880', 'https://loremflickr.com/400/400/person', 27, 'Florine', 'Kyler', 'Gaylord', 'Koelpin', 6, 22, 3, 73, 4, 'ohudson@jast.com', NULL, NULL, '2019-05-19 02:09:20', '2019-05-19 02:09:20'),
(7, '1218087100', 'https://loremflickr.com/400/400/face,woman', 29, 'Cayla', 'Haleigh', 'Sporer', 'Lakin', 1, 33, 3, 51, 10, 'vwalker@gmail.com', NULL, NULL, '2019-05-19 02:09:20', '2019-05-19 02:09:20'),
(8, '1306009653', 'https://loremflickr.com/400/400/face,man', 31, 'Brionna', 'Francis', 'Kling', 'Jones', 3, 18, 1, 67, 6, 'emily.kirlin@bins.com', NULL, NULL, '2019-05-19 02:09:20', '2019-05-19 02:09:20'),
(9, '183400658', 'https://loremflickr.com/400/400/player,tennis', 33, 'Diego', 'Jimmy', 'Dach', 'Steuber', 6, 5, 2, 92, 2, 'reynolds.jerry@harber.com', NULL, NULL, '2019-05-19 02:09:20', '2019-05-19 02:09:20'),
(10, '954106364', 'https://loremflickr.com/400/400/face,man', 35, 'Nat', 'Bryon', 'Steuber', 'Beahan', 8, 46, 1, 90, 8, 'jerod.metz@beahan.com', NULL, NULL, '2019-05-19 02:09:21', '2019-05-19 02:09:21'),
(11, '335030212', 'https://loremflickr.com/400/400/player,man', 37, 'Eleazar', 'Christ', 'Mills', 'Howell', 6, 19, 3, 20, 2, 'cmonahan@ortiz.com', NULL, NULL, '2019-05-19 02:09:21', '2019-05-19 02:09:21'),
(12, '1230731457', 'https://loremflickr.com/400/400/face,woman', 39, 'Adrain', 'Eldridge', 'Flatley', 'Hills', 6, 34, 1, 14, 8, 'pwiegand@mcdermott.com', NULL, NULL, '2019-05-19 02:09:21', '2019-05-19 02:09:21'),
(13, '728436752', 'https://loremflickr.com/400/400/player,tennis', 41, 'Karine', 'Johnson', 'Stroman', 'Simonis', 6, 42, 3, 72, 9, 'udach@yahoo.com', NULL, NULL, '2019-05-19 02:09:21', '2019-05-19 02:09:21'),
(14, '551653859', 'https://loremflickr.com/400/400/player,soccer', 43, 'Wilton', 'Kira', 'West', 'Nolan', 7, 36, 1, 35, 4, 'calista.prohaska@wisoky.com', NULL, NULL, '2019-05-19 02:09:21', '2019-05-19 02:09:21'),
(15, '377560549', 'https://loremflickr.com/400/400/player,tennis', 45, 'Mafalda', 'Yvonne', 'Wiegand', 'Wiegand', 6, 50, 3, 80, 2, 'mann.kirsten@oreilly.net', NULL, NULL, '2019-05-19 02:09:21', '2019-05-19 02:09:21'),
(16, '1151118272', 'https://loremflickr.com/400/400/player,tennis', 47, 'Tabitha', 'Alec', 'Ward', 'Bailey', 5, 11, 3, 96, 1, 'ricardo.franecki@breitenberg.net', NULL, NULL, '2019-05-19 02:09:22', '2019-05-19 02:09:22'),
(17, '623066753', 'https://loremflickr.com/400/400/player,sport', 49, 'Adriana', 'Aylin', 'Bogisich', 'Ullrich', 6, 24, 3, 61, 5, 'ray41@yahoo.com', NULL, NULL, '2019-05-19 02:09:22', '2019-05-19 02:09:22'),
(18, '607766504', 'https://loremflickr.com/400/400/face,man', 51, 'Dino', 'Crystel', 'Altenwerth', 'Ward', 1, 24, 3, 67, 8, 'gerard.friesen@yahoo.com', NULL, NULL, '2019-05-19 02:09:22', '2019-05-19 02:09:22'),
(19, '285515628', 'https://loremflickr.com/400/400/player,sport', 53, 'Gussie', 'Ernie', 'Conn', 'Schimmel', 1, 16, 3, 86, 10, 'swehner@hotmail.com', NULL, NULL, '2019-05-19 02:09:22', '2019-05-19 02:09:22'),
(20, '605725255', 'https://loremflickr.com/400/400/player,sport', 55, 'Makenna', 'Eriberto', 'Lueilwitz', 'Harber', 4, 5, 3, 34, 9, 'alexys.kris@hotmail.com', NULL, NULL, '2019-05-19 02:09:22', '2019-05-19 02:09:22'),
(21, '1537695132', 'https://loremflickr.com/400/400/player,soccer', 57, 'Heloise', 'Salvatore', 'Hintz', 'Runte', 4, 27, 1, 24, 4, 'kozey.kyla@yahoo.com', NULL, NULL, '2019-05-19 02:09:22', '2019-05-19 02:09:22'),
(22, '1521537002', 'https://loremflickr.com/400/400/player,tennis', 59, 'Elliot', 'Norwood', 'Satterfield', 'Dibbert', 5, 39, 1, 86, 8, 'mandy26@bins.com', NULL, NULL, '2019-05-19 02:09:22', '2019-05-19 02:09:22'),
(23, '702546556', 'https://loremflickr.com/400/400/player,football', 61, 'Beau', 'Stephany', 'Wyman', 'Maggio', 4, 34, 2, 58, 4, 'walsh.melba@lesch.info', NULL, NULL, '2019-05-19 02:09:23', '2019-05-19 02:09:23'),
(24, '1047021417', 'https://loremflickr.com/400/400/player,tennis', 63, 'Daphne', 'Shad', 'Zieme', 'Swift', 4, 32, 1, 67, 7, 'maggio.heath@yahoo.com', NULL, NULL, '2019-05-19 02:09:23', '2019-05-19 02:09:23'),
(25, '612683866', 'https://loremflickr.com/400/400/face,woman', 65, 'Tamara', 'Jaida', 'Leuschke', 'Metz', 7, 27, 2, 90, 7, 'beer.katheryn@huel.com', NULL, NULL, '2019-05-19 02:09:23', '2019-05-19 02:09:23'),
(26, '160628176', 'https://loremflickr.com/400/400/player,sport', 67, 'Katlynn', 'Toby', 'Thiel', 'Blick', 6, 48, 1, 16, 5, 'virginia.kunde@yahoo.com', NULL, NULL, '2019-05-19 02:09:23', '2019-05-19 02:09:23'),
(27, '301732', 'https://loremflickr.com/400/400/player,soccer', 69, 'Eudora', 'Allen', 'Price', 'Kilback', 4, 36, 1, 25, 6, 'xblick@christiansen.com', NULL, NULL, '2019-05-19 02:09:23', '2019-05-19 02:09:23'),
(28, '328317509', 'https://loremflickr.com/400/400/player,soccer', 71, 'Margaretta', 'Alford', 'Howe', 'Ortiz', 1, 36, 1, 67, 8, 'auer.bryana@gmail.com', NULL, NULL, '2019-05-19 02:09:24', '2019-05-19 02:09:24'),
(29, '381619949', 'https://loremflickr.com/400/400/player,tennis', 73, 'Jerome', 'Lonnie', 'Heathcote', 'Considine', 5, 5, 2, 37, 7, 'will.mozell@jakubowski.info', NULL, NULL, '2019-05-19 02:09:24', '2019-05-19 02:09:24'),
(30, '164941792', 'https://loremflickr.com/400/400/player,football', 75, 'Dulce', 'Greta', 'Pouros', 'O\'Keefe', 3, 49, 1, 50, 7, 'kschoen@walker.org', NULL, NULL, '2019-05-19 02:09:24', '2019-05-19 02:09:24'),
(31, '1527324922', 'https://loremflickr.com/400/400/player,soccer', 77, 'Emmitt', 'Hellen', 'Rowe', 'Borer', 6, 2, 1, 96, 4, 'lavada55@monahan.com', NULL, NULL, '2019-05-19 02:09:24', '2019-05-19 02:09:24'),
(32, '534126976', 'https://loremflickr.com/400/400/face,man', 79, 'Jackie', 'Krista', 'Kerluke', 'Raynor', 4, 7, 1, 68, 10, 'hauck.reece@johnston.biz', NULL, NULL, '2019-05-19 02:09:24', '2019-05-19 02:09:24'),
(33, '1100213709', 'https://loremflickr.com/400/400/face,man', 81, 'Icie', 'Odie', 'Torp', 'Shanahan', 8, 2, 1, 62, 6, 'funk.morris@yahoo.com', NULL, NULL, '2019-05-19 02:09:24', '2019-05-19 02:09:24'),
(34, '627509908', 'https://loremflickr.com/400/400/player,man', 83, 'Friedrich', 'Josiane', 'Wolff', 'Braun', 3, 44, 2, 82, 8, 'ramona.schowalter@jacobson.com', NULL, NULL, '2019-05-19 02:09:25', '2019-05-19 02:09:25'),
(35, '1539217486', 'https://loremflickr.com/400/400/player,football', 85, 'Deja', 'Sheldon', 'Kris', 'Waelchi', 1, 45, 1, 92, 5, 'kluettgen@zulauf.com', NULL, NULL, '2019-05-19 02:09:25', '2019-05-19 02:09:25'),
(36, '1082294468', 'https://loremflickr.com/400/400/face,man', 87, 'Jabari', 'Garett', 'Johnston', 'Hagenes', 6, 5, 2, 32, 4, 'gulgowski.jude@gmail.com', NULL, NULL, '2019-05-19 02:09:25', '2019-05-19 02:09:25'),
(37, '219864235', 'https://loremflickr.com/400/400/face,man', 89, 'Madaline', 'Madisyn', 'Sauer', 'Terry', 6, 47, 3, 86, 9, 'reilly.kellie@gmail.com', NULL, NULL, '2019-05-19 02:09:25', '2019-05-19 02:09:25'),
(38, '731856404', 'https://loremflickr.com/400/400/player,sport', 91, 'Roy', 'Luella', 'Auer', 'Thompson', 6, 26, 3, 82, 4, 'rwalsh@yahoo.com', NULL, NULL, '2019-05-19 02:09:25', '2019-05-19 02:09:25'),
(39, '1379129169', 'https://loremflickr.com/400/400/player,tennis', 93, 'Camren', 'Eugene', 'Cartwright', 'Zieme', 4, 1, 2, 51, 7, 'stewart.feil@hotmail.com', NULL, NULL, '2019-05-19 02:09:25', '2019-05-19 02:09:25'),
(40, '338292128', 'https://loremflickr.com/400/400/face,man', 95, 'Bria', 'Mozell', 'Hills', 'Torphy', 3, 36, 2, 59, 10, 'qemard@crona.com', NULL, NULL, '2019-05-19 02:09:25', '2019-05-19 02:09:25'),
(41, '1171808251', 'https://loremflickr.com/400/400/face,man', 97, 'Jeromy', 'Florencio', 'Rempel', 'Kertzmann', 7, 10, 2, 97, 8, 'grant.lamont@gmail.com', NULL, NULL, '2019-05-19 02:09:26', '2019-05-19 02:09:26'),
(42, '1180098075', 'https://loremflickr.com/400/400/player,soccer', 99, 'Monte', 'Verlie', 'Gottlieb', 'Bailey', 6, 24, 3, 71, 3, 'amina.adams@prosacco.biz', NULL, NULL, '2019-05-19 02:09:26', '2019-05-19 02:09:26'),
(43, '387231457', 'https://loremflickr.com/400/400/player,sport', 101, 'Afton', 'Francesco', 'Reichert', 'Kohler', 3, 10, 2, 54, 7, 'little.zena@kautzer.biz', NULL, NULL, '2019-05-19 02:09:26', '2019-05-19 02:09:26'),
(44, '1194436370', 'https://loremflickr.com/400/400/player,football', 103, 'Lewis', 'Lauryn', 'Cummerata', 'Pfannerstill', 6, 3, 1, 9, 6, 'mwhite@yahoo.com', NULL, NULL, '2019-05-19 02:09:26', '2019-05-19 02:09:26'),
(45, '525588056', 'https://loremflickr.com/400/400/face,woman', 105, 'Lilian', 'Carli', 'Tremblay', 'Christiansen', 1, 28, 2, 52, 3, 'deangelo.grimes@wisozk.com', NULL, NULL, '2019-05-19 02:09:26', '2019-05-19 02:09:26'),
(46, '687844518', 'https://loremflickr.com/400/400/player,sport', 107, 'Noemi', 'Graciela', 'King', 'Lubowitz', 5, 15, 1, 8, 4, 'mraz.toby@gmail.com', NULL, NULL, '2019-05-19 02:09:26', '2019-05-19 02:09:26'),
(47, '495369278', 'https://loremflickr.com/400/400/player,soccer', 109, 'Willow', 'Bettye', 'Schoen', 'Bogisich', 2, 22, 3, 19, 9, 'heaven69@hotmail.com', NULL, NULL, '2019-05-19 02:09:26', '2019-05-19 02:09:26'),
(48, '1402254994', 'https://loremflickr.com/400/400/player,sport', 111, 'Janae', 'Kole', 'Olson', 'Schumm', 3, 27, 1, 63, 6, 'geovanny54@rempel.com', NULL, NULL, '2019-05-19 02:09:27', '2019-05-19 02:09:27'),
(49, '1095357399', 'https://loremflickr.com/400/400/person', 113, 'Charley', 'Odell', 'Runolfsdottir', 'Goodwin', 8, 10, 1, 4, 9, 'blarson@hane.com', NULL, NULL, '2019-05-19 02:09:27', '2019-05-19 02:09:27'),
(50, '26542938', 'https://loremflickr.com/400/400/player,soccer', 115, 'Rebekah', 'Ona', 'Koepp', 'Kirlin', 1, 2, 1, 32, 3, 'veda.cummerata@gmail.com', NULL, NULL, '2019-05-19 02:09:27', '2019-05-19 02:09:27'),
(51, '1420532452', 'https://loremflickr.com/400/400/person', 117, 'Dudley', 'Lera', 'Abshire', 'Zulauf', 7, 5, 2, 66, 2, 'dangelo.lehner@cummerata.org', NULL, NULL, '2019-05-19 02:09:27', '2019-05-19 02:09:27'),
(52, '912252228', 'https://loremflickr.com/400/400/face,man', 119, 'Winnifred', 'Tyra', 'Carroll', 'Dare', 8, 28, 3, 38, 2, 'karolann.botsford@grimes.org', NULL, NULL, '2019-05-19 02:09:27', '2019-05-19 02:09:27'),
(53, '293089254', 'https://loremflickr.com/400/400/player,soccer', 121, 'Akeem', 'Meghan', 'Hoppe', 'Hayes', 7, 42, 2, 46, 6, 'bryan@yahoo.com', NULL, NULL, '2019-05-19 02:09:27', '2019-05-19 02:09:27'),
(54, '200976646', 'https://loremflickr.com/400/400/face,woman', 123, 'Lorenza', 'Ivy', 'Hyatt', 'Ryan', 5, 34, 2, 98, 6, 'emmitt.quitzon@dooley.com', NULL, NULL, '2019-05-19 02:09:28', '2019-05-19 02:09:28'),
(55, '1303925389', 'https://loremflickr.com/400/400/player,man', 125, 'Adeline', 'Monserrat', 'Batz', 'Champlin', 8, 13, 2, 30, 10, 'yfriesen@bailey.net', NULL, NULL, '2019-05-19 02:09:28', '2019-05-19 02:09:28'),
(56, '1041691376', 'https://loremflickr.com/400/400/player,tennis', 127, 'Brayan', 'Josefa', 'Blanda', 'Mosciski', 3, 11, 3, 78, 8, 'bashirian.miles@gmail.com', NULL, NULL, '2019-05-19 02:09:28', '2019-05-19 02:09:28'),
(57, '825287352', 'https://loremflickr.com/400/400/player,sport', 129, 'Hassie', 'Germaine', 'Labadie', 'Rath', 6, 19, 1, 41, 4, 'slang@labadie.com', NULL, NULL, '2019-05-19 02:09:28', '2019-05-19 02:09:28'),
(58, '240476339', 'https://loremflickr.com/400/400/person', 131, 'Celestine', 'Allen', 'Konopelski', 'Littel', 4, 2, 2, 57, 4, 'zechariah65@simonis.biz', NULL, NULL, '2019-05-19 02:09:28', '2019-05-19 02:09:28'),
(59, '125010203', 'https://loremflickr.com/400/400/player,football', 133, 'Uriel', 'Kathleen', 'McCullough', 'Schuppe', 8, 22, 2, 80, 9, 'jkertzmann@waters.com', NULL, NULL, '2019-05-19 02:09:28', '2019-05-19 02:09:28'),
(60, '580918220', 'https://loremflickr.com/400/400/face,man', 135, 'Dolly', 'Oceane', 'Hagenes', 'Jacobi', 8, 18, 1, 78, 2, 'dane.wunsch@gmail.com', NULL, NULL, '2019-05-19 02:09:29', '2019-05-19 02:09:29'),
(61, '812286138', 'https://loremflickr.com/400/400/player,sport', 137, 'Wilber', 'Earnestine', 'Braun', 'Hill', 2, 33, 1, 63, 9, 'sipes.danyka@prosacco.com', NULL, NULL, '2019-05-19 02:09:29', '2019-05-19 02:09:29'),
(62, '274377455', 'https://loremflickr.com/400/400/player,football', 139, 'Alva', 'Terrence', 'Daugherty', 'Hilpert', 2, 4, 2, 79, 1, 'predovic.marilou@gorczany.com', NULL, NULL, '2019-05-19 02:09:29', '2019-05-19 02:09:29'),
(63, '1461370948', 'https://loremflickr.com/400/400/person', 141, 'Jaiden', 'Betty', 'Braun', 'Orn', 1, 12, 2, 54, 7, 'reta.lueilwitz@waelchi.net', NULL, NULL, '2019-05-19 02:09:29', '2019-05-19 02:09:29'),
(64, '509800410', 'https://loremflickr.com/400/400/face,woman', 143, 'Kristin', 'Caleigh', 'Simonis', 'Bins', 1, 9, 1, 57, 1, 'beier.agustin@gmail.com', NULL, NULL, '2019-05-19 02:09:29', '2019-05-19 02:09:29'),
(65, '1478898671', 'https://loremflickr.com/400/400/player,soccer', 145, 'Otis', 'Alessia', 'Schmitt', 'Schuster', 1, 2, 2, 35, 9, 'keira71@fay.com', NULL, NULL, '2019-05-19 02:09:29', '2019-05-19 02:09:29'),
(66, '297107915', 'https://loremflickr.com/400/400/player,sport', 147, 'Aliya', 'Hayden', 'McLaughlin', 'Weissnat', 6, 19, 1, 84, 9, 'julian.thiel@aufderhar.info', NULL, NULL, '2019-05-19 02:09:30', '2019-05-19 02:09:30'),
(67, '1137941353', 'https://loremflickr.com/400/400/player,soccer', 149, 'Edgardo', 'Colin', 'Heaney', 'Runolfsson', 4, 38, 1, 80, 4, 'pfannerstill.ellis@gmail.com', NULL, NULL, '2019-05-19 02:09:30', '2019-05-19 02:09:30'),
(68, '1074051384', 'https://loremflickr.com/400/400/player,sport', 151, 'Jordy', 'Amelie', 'VonRueden', 'Schoen', 5, 5, 3, 60, 4, 'rogelio39@rempel.biz', NULL, NULL, '2019-05-19 02:09:30', '2019-05-19 02:09:30'),
(69, '714199780', 'https://loremflickr.com/400/400/player,man', 153, 'Micah', 'Reinhold', 'Hirthe', 'Howell', 6, 27, 1, 54, 4, 'price91@gerlach.com', NULL, NULL, '2019-05-19 02:09:30', '2019-05-19 02:09:30'),
(70, '1284789463', 'https://loremflickr.com/400/400/person', 155, 'Myrtle', 'Ike', 'Bogan', 'Nolan', 7, 32, 2, 24, 3, 'leopoldo.murray@yahoo.com', NULL, NULL, '2019-05-19 02:09:30', '2019-05-19 02:09:30'),
(71, '136027515', 'https://loremflickr.com/400/400/player,soccer', 157, 'Beth', 'Alexane', 'Hettinger', 'McDermott', 7, 27, 3, 10, 4, 'mraz.idella@hotmail.com', NULL, NULL, '2019-05-19 02:09:30', '2019-05-19 02:09:30'),
(72, '478512170', 'https://loremflickr.com/400/400/player,tennis', 159, 'Conrad', 'Orval', 'Schinner', 'Simonis', 8, 8, 1, 34, 5, 'vtoy@hotmail.com', NULL, NULL, '2019-05-19 02:09:31', '2019-05-19 02:09:31'),
(73, '148854916', 'https://loremflickr.com/400/400/face,woman', 161, 'Nora', 'Odell', 'Harber', 'Weimann', 7, 16, 2, 3, 4, 'keebler.vida@hotmail.com', NULL, NULL, '2019-05-19 02:09:31', '2019-05-19 02:09:31'),
(74, '273866844', 'https://loremflickr.com/400/400/player,football', 163, 'Arnulfo', 'Terence', 'Runolfsson', 'Mayert', 2, 2, 2, 37, 7, 'flatley.jayden@kshlerin.biz', NULL, NULL, '2019-05-19 02:09:31', '2019-05-19 02:09:31'),
(75, '656507705', 'https://loremflickr.com/400/400/player,man', 165, 'Tad', 'Elian', 'Dicki', 'Lind', 8, 47, 2, 13, 7, 'ukihn@klocko.com', NULL, NULL, '2019-05-19 02:09:31', '2019-05-19 02:09:31'),
(76, '714337529', 'https://loremflickr.com/400/400/face,man', 167, 'Eileen', 'Amos', 'Pollich', 'Mills', 5, 34, 1, 67, 9, 'wferry@gmail.com', NULL, NULL, '2019-05-19 02:09:31', '2019-05-19 02:09:31'),
(77, '947465025', 'https://loremflickr.com/400/400/player,soccer', 169, 'Lisette', 'Ervin', 'Feeney', 'Volkman', 8, 7, 1, 28, 10, 'marlene42@gmail.com', NULL, NULL, '2019-05-19 02:09:31', '2019-05-19 02:09:31'),
(78, '1501980874', 'https://loremflickr.com/400/400/player,man', 171, 'Leonardo', 'Viva', 'Klocko', 'Kemmer', 3, 46, 3, 89, 7, 'randal.bechtelar@hotmail.com', NULL, NULL, '2019-05-19 02:09:31', '2019-05-19 02:09:31'),
(79, '989968343', 'https://loremflickr.com/400/400/player,soccer', 173, 'Mariah', 'Alek', 'Rempel', 'Leuschke', 4, 33, 3, 79, 8, 'bstoltenberg@larkin.org', NULL, NULL, '2019-05-19 02:09:32', '2019-05-19 02:09:32'),
(80, '1373428534', 'https://loremflickr.com/400/400/player,soccer', 175, 'Rico', 'Shyanne', 'Schiller', 'Lebsack', 8, 41, 1, 44, 8, 'egleason@hotmail.com', NULL, NULL, '2019-05-19 02:09:32', '2019-05-19 02:09:32'),
(81, '1064757196', 'https://loremflickr.com/400/400/face,man', 177, 'Millie', 'Macy', 'Larson', 'Feeney', 4, 31, 2, 22, 2, 'cullen.monahan@hotmail.com', NULL, NULL, '2019-05-19 02:09:32', '2019-05-19 02:09:32'),
(82, '674855807', 'https://loremflickr.com/400/400/player,man', 179, 'Mara', 'Harold', 'Stokes', 'Heathcote', 6, 5, 1, 25, 1, 'jacobs.beatrice@gmail.com', NULL, NULL, '2019-05-19 02:09:32', '2019-05-19 02:09:32'),
(83, '1330251691', 'https://loremflickr.com/400/400/player,football', 181, 'Cooper', 'Gloria', 'Windler', 'Herzog', 2, 4, 3, 7, 4, 'zberge@boyer.org', NULL, NULL, '2019-05-19 02:09:32', '2019-05-19 02:09:32'),
(84, '1061050907', 'https://loremflickr.com/400/400/player,sport', 183, 'Hershel', 'Gwendolyn', 'McKenzie', 'Gleason', 8, 18, 1, 27, 3, 'bradtke.neal@hotmail.com', NULL, NULL, '2019-05-19 02:09:32', '2019-05-19 02:09:32'),
(85, '1500238090', 'https://loremflickr.com/400/400/player,soccer', 185, 'Nathanial', 'Newell', 'Lehner', 'Haag', 2, 20, 1, 88, 6, 'ahansen@gmail.com', NULL, NULL, '2019-05-19 02:09:33', '2019-05-19 02:09:33'),
(86, '1152452532', 'https://loremflickr.com/400/400/player,soccer', 187, 'Clinton', 'Bill', 'Muller', 'Bosco', 8, 30, 3, 93, 9, 'bayer.marcos@abbott.com', NULL, NULL, '2019-05-19 02:09:33', '2019-05-19 02:09:33'),
(87, '449540515', 'https://loremflickr.com/400/400/player,football', 189, 'Catherine', 'Pamela', 'Pouros', 'Goyette', 1, 47, 3, 17, 5, 'juston60@yahoo.com', NULL, NULL, '2019-05-19 02:09:33', '2019-05-19 02:09:33'),
(88, '1104036289', 'https://loremflickr.com/400/400/player,sport', 191, 'Alessandra', 'Edna', 'Lemke', 'Heller', 6, 4, 2, 52, 9, 'iva.buckridge@hotmail.com', NULL, NULL, '2019-05-19 02:09:34', '2019-05-19 02:09:34'),
(89, '1144401507', 'https://loremflickr.com/400/400/player,tennis', 193, 'Amelia', 'Pascale', 'Hintz', 'Watsica', 7, 23, 1, 53, 5, 'fabiola59@gmail.com', NULL, NULL, '2019-05-19 02:09:34', '2019-05-19 02:09:34'),
(90, '1328064246', 'https://loremflickr.com/400/400/player,tennis', 195, 'Brandt', 'Clare', 'Marvin', 'Cremin', 2, 47, 2, 6, 3, 'uritchie@hotmail.com', NULL, NULL, '2019-05-19 02:09:34', '2019-05-19 02:09:34'),
(91, '1221884266', 'https://loremflickr.com/400/400/face,man', 197, 'Elnora', 'Gay', 'Goyette', 'Bartell', 6, 32, 3, 12, 8, 'carroll.adolf@mraz.org', NULL, NULL, '2019-05-19 02:09:34', '2019-05-19 02:09:34'),
(92, '1273233576', 'https://loremflickr.com/400/400/player,football', 199, 'Rylee', 'Freida', 'Feest', 'Glover', 8, 30, 2, 42, 9, 'damore.hal@gmail.com', NULL, NULL, '2019-05-19 02:09:35', '2019-05-19 02:09:35'),
(93, '773783539', 'https://loremflickr.com/400/400/player,man', 201, 'Rylee', 'Brendan', 'Goldner', 'Kovacek', 1, 35, 1, 3, 2, 'nelle.daugherty@hotmail.com', NULL, NULL, '2019-05-19 02:09:35', '2019-05-19 02:09:35'),
(94, '128040759', 'https://loremflickr.com/400/400/player,soccer', 203, 'Fredrick', 'Anya', 'Larkin', 'Block', 2, 28, 2, 71, 8, 'rreichel@yahoo.com', NULL, NULL, '2019-05-19 02:09:35', '2019-05-19 02:09:35'),
(95, '1473288127', 'https://loremflickr.com/400/400/player,sport', 205, 'Keegan', 'Devan', 'Eichmann', 'Goodwin', 7, 2, 1, 25, 8, 'wyman.jaydon@denesik.com', NULL, NULL, '2019-05-19 02:09:35', '2019-05-19 02:09:35'),
(96, '424799840', 'https://loremflickr.com/400/400/player,football', 207, 'Rusty', 'Rebeca', 'Murray', 'Blick', 7, 17, 2, 5, 8, 'craig.luettgen@mitchell.com', NULL, NULL, '2019-05-19 02:09:35', '2019-05-19 02:09:35'),
(97, '186189801', 'https://loremflickr.com/400/400/player,soccer', 209, 'Cassandre', 'Cassandra', 'Anderson', 'Carter', 1, 40, 2, 69, 8, 'jgreenholt@kohler.biz', NULL, NULL, '2019-05-19 02:09:36', '2019-05-19 02:09:36'),
(98, '811470969', 'https://loremflickr.com/400/400/player,man', 211, 'Jannie', 'Tamia', 'Heaney', 'Grimes', 1, 28, 3, 4, 8, 'orosenbaum@yahoo.com', NULL, NULL, '2019-05-19 02:09:36', '2019-05-19 02:09:36'),
(99, '1448675682', 'https://loremflickr.com/400/400/face,man', 213, 'Nova', 'Ivy', 'Beatty', 'Littel', 1, 33, 3, 34, 8, 'pjerde@yahoo.com', NULL, NULL, '2019-05-19 02:09:36', '2019-05-19 02:09:36'),
(100, '641567541', 'https://loremflickr.com/400/400/face,man', 215, 'Jensen', 'Ethel', 'Kulas', 'White', 1, 40, 3, 54, 10, 'emelia83@herzog.com', NULL, NULL, '2019-05-19 02:09:36', '2019-05-19 02:09:36'),
(101, '1176944928', 'https://loremflickr.com/400/400/face,woman', 217, 'Kiel', 'Jacques', 'Wisoky', 'Ernser', 7, 8, 2, 58, 7, 'francesca59@barrows.com', NULL, NULL, '2019-05-19 02:09:36', '2019-05-19 02:09:36'),
(102, '446865438', 'https://loremflickr.com/400/400/player,soccer', 219, 'Manuel', 'Zane', 'Kerluke', 'Leannon', 3, 16, 2, 19, 9, 'osporer@hotmail.com', NULL, NULL, '2019-05-19 02:09:36', '2019-05-19 02:09:36'),
(103, '570569405', 'https://loremflickr.com/400/400/face,man', 221, 'Giuseppe', 'Saige', 'Hirthe', 'Kerluke', 1, 18, 2, 72, 1, 'gmann@yahoo.com', NULL, NULL, '2019-05-19 02:09:37', '2019-05-19 02:09:37'),
(104, '1093665554', 'https://loremflickr.com/400/400/player,sport', 223, 'Velma', 'Kadin', 'Wyman', 'Powlowski', 3, 1, 1, 18, 5, 'xdicki@gmail.com', NULL, NULL, '2019-05-19 02:09:37', '2019-05-19 02:09:37'),
(105, '1346870739', 'https://loremflickr.com/400/400/player,tennis', 225, 'Deshaun', 'Nolan', 'Cremin', 'Ankunding', 4, 27, 2, 80, 10, 'savanna40@hahn.com', NULL, NULL, '2019-05-19 02:09:37', '2019-05-19 02:09:37'),
(106, '1106036013', 'https://loremflickr.com/400/400/face,woman', 227, 'Rasheed', 'Alexanne', 'Wintheiser', 'Abbott', 4, 48, 2, 85, 1, 'magdalen76@yahoo.com', NULL, NULL, '2019-05-19 02:09:37', '2019-05-19 02:09:37'),
(107, '1524422315', 'https://loremflickr.com/400/400/player,tennis', 229, 'Elisabeth', 'Marjorie', 'Jakubowski', 'Runte', 6, 6, 3, 11, 6, 'ihettinger@braun.net', NULL, NULL, '2019-05-19 02:09:37', '2019-05-19 02:09:37'),
(108, '1530917425', 'https://loremflickr.com/400/400/player,sport', 231, 'Nicolas', 'Price', 'Fadel', 'O\'Keefe', 2, 38, 3, 2, 10, 'thea.koch@yahoo.com', NULL, NULL, '2019-05-19 02:09:38', '2019-05-19 02:09:38'),
(109, '70431264', 'https://loremflickr.com/400/400/player,sport', 233, 'Nellie', 'Randall', 'Goldner', 'Durgan', 3, 21, 3, 61, 5, 'gleichner.dewayne@lueilwitz.net', NULL, NULL, '2019-05-19 02:09:38', '2019-05-19 02:09:38'),
(110, '972410207', 'https://loremflickr.com/400/400/person', 235, 'Myra', 'Suzanne', 'Marquardt', 'Crist', 1, 42, 3, 68, 3, 'oconner.gretchen@doyle.com', NULL, NULL, '2019-05-19 02:09:38', '2019-05-19 02:09:38'),
(111, '358418231', 'https://loremflickr.com/400/400/player,soccer', 237, 'Reynold', 'Ila', 'Thiel', 'Kuphal', 6, 20, 2, 98, 10, 'brendan35@yahoo.com', NULL, NULL, '2019-05-19 02:09:38', '2019-05-19 02:09:38'),
(112, '18987409', 'https://loremflickr.com/400/400/player,tennis', 239, 'Missouri', 'Cicero', 'Carter', 'O\'Hara', 3, 7, 3, 12, 9, 'neha.eichmann@gmail.com', NULL, NULL, '2019-05-19 02:09:38', '2019-05-19 02:09:38'),
(113, '451092074', 'https://loremflickr.com/400/400/person', 241, 'Naomi', 'Chyna', 'Huels', 'Kuvalis', 7, 25, 2, 24, 2, 'liliane75@thiel.org', NULL, NULL, '2019-05-19 02:09:38', '2019-05-19 02:09:38'),
(114, '44642895', 'https://loremflickr.com/400/400/player,tennis', 243, 'Arthur', 'Felton', 'Murray', 'Yost', 2, 18, 1, 26, 4, 'clemke@rolfson.org', NULL, NULL, '2019-05-19 02:09:39', '2019-05-19 02:09:39'),
(115, '297877692', 'https://loremflickr.com/400/400/face,woman', 245, 'Dalton', 'Elda', 'Rice', 'Feeney', 6, 36, 1, 9, 9, 'abernathy.aaron@west.biz', NULL, NULL, '2019-05-19 02:09:39', '2019-05-19 02:09:39'),
(116, '1301233559', 'https://loremflickr.com/400/400/player,soccer', 247, 'Lowell', 'Stephania', 'Bogan', 'Waters', 8, 46, 1, 23, 2, 'cynthia88@yahoo.com', NULL, NULL, '2019-05-19 02:09:39', '2019-05-19 02:09:39'),
(117, '596714162', 'https://loremflickr.com/400/400/player,sport', 249, 'Caleigh', 'Antonetta', 'Ruecker', 'Thompson', 5, 29, 2, 91, 6, 'destany90@yahoo.com', NULL, NULL, '2019-05-19 02:09:39', '2019-05-19 02:09:39'),
(118, '1001230967', 'https://loremflickr.com/400/400/person', 251, 'Kendrick', 'Lue', 'Kuhn', 'Heathcote', 1, 37, 2, 3, 10, 'yhirthe@mosciski.org', NULL, NULL, '2019-05-19 02:09:39', '2019-05-19 02:09:39'),
(119, '391547769', 'https://loremflickr.com/400/400/player,sport', 253, 'Stephon', 'Elroy', 'Conn', 'Kris', 3, 47, 1, 19, 4, 'runolfsdottir.dovie@okeefe.com', NULL, NULL, '2019-05-19 02:09:39', '2019-05-19 02:09:39'),
(120, '931339691', 'https://loremflickr.com/400/400/player,man', 255, 'Kacey', 'Dolores', 'Harvey', 'Macejkovic', 3, 10, 1, 66, 6, 'aberge@hotmail.com', NULL, NULL, '2019-05-19 02:09:40', '2019-05-19 02:09:40'),
(121, '1179289561', 'https://loremflickr.com/400/400/player,football', 257, 'Kamren', 'Dewitt', 'Cassin', 'Mosciski', 4, 35, 3, 12, 3, 'powlowski.sierra@friesen.com', NULL, NULL, '2019-05-19 02:09:40', '2019-05-19 02:09:40'),
(122, '496996575', 'https://loremflickr.com/400/400/face,man', 259, 'Allison', 'Carol', 'Walter', 'Bartoletti', 3, 4, 1, 60, 7, 'sporer.madeline@gmail.com', NULL, NULL, '2019-05-19 02:09:40', '2019-05-19 02:09:40'),
(123, '1125107544', 'https://loremflickr.com/400/400/face,man', 261, 'Philip', 'Rosendo', 'Rath', 'Swift', 7, 23, 3, 81, 6, 'moore.serenity@yahoo.com', NULL, NULL, '2019-05-19 02:09:40', '2019-05-19 02:09:40'),
(124, '278837196', 'https://loremflickr.com/400/400/person', 263, 'Eli', 'Keith', 'Thiel', 'Quitzon', 4, 17, 1, 38, 6, 'sdickens@hotmail.com', NULL, NULL, '2019-05-19 02:09:41', '2019-05-19 02:09:41'),
(125, '1375636661', 'https://loremflickr.com/400/400/player,soccer', 265, 'Germaine', 'August', 'Ortiz', 'Rutherford', 4, 11, 3, 9, 10, 'jalon47@gmail.com', NULL, NULL, '2019-05-19 02:09:41', '2019-05-19 02:09:41'),
(126, '1267073785', 'https://loremflickr.com/400/400/player,tennis', 267, 'Violette', 'Breana', 'VonRueden', 'Weissnat', 1, 18, 1, 90, 4, 'helmer.wintheiser@gmail.com', NULL, NULL, '2019-05-19 02:09:41', '2019-05-19 02:09:41'),
(127, '1045328635', 'https://loremflickr.com/400/400/person', 269, 'Cloyd', 'Dean', 'Jacobs', 'Howell', 5, 46, 2, 63, 9, 'thiel.selena@kuhn.org', NULL, NULL, '2019-05-19 02:09:41', '2019-05-19 02:09:41'),
(128, '335959644', 'https://loremflickr.com/400/400/face,man', 271, 'Shemar', 'Kathryn', 'Dach', 'Cummerata', 6, 35, 3, 62, 2, 'browe@hotmail.com', NULL, NULL, '2019-05-19 02:09:41', '2019-05-19 02:09:41'),
(129, '442435617', 'https://loremflickr.com/400/400/face,woman', 273, 'Brandon', 'Joany', 'Mraz', 'Sipes', 6, 31, 1, 64, 8, 'cbradtke@hotmail.com', NULL, NULL, '2019-05-19 02:09:42', '2019-05-19 02:09:42'),
(130, '441127138', 'https://loremflickr.com/400/400/player,man', 275, 'Virginie', 'Janice', 'Howe', 'Gutkowski', 3, 3, 2, 88, 9, 'zjacobson@yahoo.com', NULL, NULL, '2019-05-19 02:09:42', '2019-05-19 02:09:42'),
(131, '111348997', 'https://loremflickr.com/400/400/player,sport', 277, 'Bradford', 'Ricky', 'Langworth', 'Mosciski', 7, 38, 1, 98, 5, 'gerardo88@yahoo.com', NULL, NULL, '2019-05-19 02:09:42', '2019-05-19 02:09:42'),
(132, '616076948', 'https://loremflickr.com/400/400/face,woman', 279, 'Jesse', 'Chyna', 'Schaefer', 'Mills', 1, 35, 2, 28, 4, 'urosenbaum@gmail.com', NULL, NULL, '2019-05-19 02:09:42', '2019-05-19 02:09:42'),
(133, '1174803603', 'https://loremflickr.com/400/400/player,tennis', 281, 'Simone', 'Berta', 'Moore', 'Powlowski', 4, 47, 3, 51, 10, 'abdullah.mayert@hotmail.com', NULL, NULL, '2019-05-19 02:09:42', '2019-05-19 02:09:42'),
(134, '723181570', 'https://loremflickr.com/400/400/face,woman', 283, 'Dax', 'Imelda', 'Conroy', 'Halvorson', 1, 5, 1, 16, 6, 'hwhite@cassin.biz', NULL, NULL, '2019-05-19 02:09:42', '2019-05-19 02:09:42'),
(135, '1465075562', 'https://loremflickr.com/400/400/player,tennis', 285, 'Catharine', 'Marcellus', 'Hilpert', 'Kessler', 8, 19, 1, 43, 10, 'mann.quinten@hotmail.com', NULL, NULL, '2019-05-19 02:09:43', '2019-05-19 02:09:43'),
(136, '433534589', 'https://loremflickr.com/400/400/face,man', 287, 'Rod', 'Domenico', 'Baumbach', 'Parisian', 2, 43, 2, 86, 7, 'easter69@hotmail.com', NULL, NULL, '2019-05-19 02:09:43', '2019-05-19 02:09:43'),
(137, '445608573', 'https://loremflickr.com/400/400/player,man', 289, 'Brenda', 'Ignacio', 'Metz', 'Schaefer', 1, 44, 1, 12, 8, 'manley87@kshlerin.info', NULL, NULL, '2019-05-19 02:09:43', '2019-05-19 02:09:43'),
(138, '39875739', 'https://loremflickr.com/400/400/player,sport', 291, 'Denis', 'Jadon', 'Hodkiewicz', 'Grimes', 1, 20, 1, 91, 1, 'damaris.tillman@gmail.com', NULL, NULL, '2019-05-19 02:09:43', '2019-05-19 02:09:43'),
(139, '308998901', 'https://loremflickr.com/400/400/player,football', 293, 'Price', 'Elouise', 'Krajcik', 'Kerluke', 6, 24, 1, 98, 5, 'weissnat.estell@goodwin.com', NULL, NULL, '2019-05-19 02:09:43', '2019-05-19 02:09:43'),
(140, '737418887', 'https://loremflickr.com/400/400/player,man', 295, 'Rickey', 'Lilian', 'Dickens', 'Swaniawski', 7, 40, 3, 76, 8, 'barbara64@schulist.com', NULL, NULL, '2019-05-19 02:09:44', '2019-05-19 02:09:44'),
(141, '799918085', 'https://loremflickr.com/400/400/face,man', 297, 'Domenico', 'Hertha', 'Marquardt', 'Stokes', 4, 46, 2, 30, 3, 'colin64@marquardt.org', NULL, NULL, '2019-05-19 02:09:44', '2019-05-19 02:09:44'),
(142, '501312537', 'https://loremflickr.com/400/400/player,sport', 299, 'Nella', 'Sigurd', 'Wuckert', 'Nolan', 1, 7, 2, 94, 3, 'fernando49@yahoo.com', NULL, NULL, '2019-05-19 02:09:44', '2019-05-19 02:09:44'),
(143, '1545023994', 'https://loremflickr.com/400/400/player,man', 301, 'Fredy', 'Savion', 'O\'Kon', 'Kris', 6, 29, 2, 51, 6, 'pietro66@yahoo.com', NULL, NULL, '2019-05-19 02:09:44', '2019-05-19 02:09:44'),
(144, '292940127', 'https://loremflickr.com/400/400/player,football', 303, 'Tristin', 'Samantha', 'Bauch', 'Cruickshank', 8, 14, 3, 65, 1, 'brown28@armstrong.com', NULL, NULL, '2019-05-19 02:09:44', '2019-05-19 02:09:44'),
(145, '1282876690', 'https://loremflickr.com/400/400/face,woman', 305, 'Bessie', 'Judge', 'Streich', 'O\'Conner', 3, 46, 1, 65, 7, 'schaden.mortimer@zemlak.com', NULL, NULL, '2019-05-19 02:09:44', '2019-05-19 02:09:44'),
(146, '656683188', 'https://loremflickr.com/400/400/player,sport', 307, 'Dennis', 'Jeromy', 'Fisher', 'Langworth', 2, 43, 3, 10, 3, 'vlueilwitz@oconnell.org', NULL, NULL, '2019-05-19 02:09:45', '2019-05-19 02:09:45'),
(147, '272970116', 'https://loremflickr.com/400/400/player,soccer', 309, 'Sibyl', 'Keeley', 'Hegmann', 'O\'Reilly', 8, 21, 1, 15, 4, 'cordelia.pollich@conroy.org', NULL, NULL, '2019-05-19 02:09:45', '2019-05-19 02:09:45'),
(148, '224609681', 'https://loremflickr.com/400/400/player,sport', 311, 'Precious', 'Liliana', 'Effertz', 'Armstrong', 4, 34, 1, 29, 6, 'llueilwitz@hotmail.com', NULL, NULL, '2019-05-19 02:09:45', '2019-05-19 02:09:45'),
(149, '933823567', 'https://loremflickr.com/400/400/player,sport', 313, 'Devan', 'Ruben', 'Lakin', 'Kertzmann', 6, 36, 1, 60, 7, 'leffler.levi@gmail.com', NULL, NULL, '2019-05-19 02:09:45', '2019-05-19 02:09:45'),
(150, '534070835', 'https://loremflickr.com/400/400/face,man', 315, 'Noelia', 'Savannah', 'Prohaska', 'Beatty', 3, 32, 3, 32, 7, 'theresia65@gmail.com', NULL, NULL, '2019-05-19 02:09:45', '2019-05-19 02:09:45'),
(151, '76955494', 'https://loremflickr.com/400/400/face,man', 317, 'Barney', 'Chesley', 'O\'Reilly', 'Gutkowski', 2, 24, 2, 91, 5, 'jhermann@predovic.biz', NULL, NULL, '2019-05-19 02:09:45', '2019-05-19 02:09:45'),
(152, '425822813', 'https://loremflickr.com/400/400/player,tennis', 319, 'Bradly', 'Mathias', 'Kirlin', 'Block', 1, 44, 1, 81, 4, 'leora.romaguera@yahoo.com', NULL, NULL, '2019-05-19 02:09:46', '2019-05-19 02:09:46'),
(153, '133151280', 'https://loremflickr.com/400/400/face,woman', 321, 'Eldridge', 'Isabelle', 'Bernier', 'Blick', 7, 1, 1, 48, 10, 'octavia56@yahoo.com', NULL, NULL, '2019-05-19 02:09:46', '2019-05-19 02:09:46'),
(154, '554358353', 'https://loremflickr.com/400/400/player,tennis', 323, 'Jamey', 'Retha', 'Kautzer', 'Kutch', 6, 44, 3, 64, 9, 'mertz.jamey@steuber.com', NULL, NULL, '2019-05-19 02:09:46', '2019-05-19 02:09:46'),
(155, '286843511', 'https://loremflickr.com/400/400/face,man', 325, 'Bennie', 'Isadore', 'Wiza', 'Bergnaum', 1, 6, 3, 23, 2, 'greenholt.thad@ryan.com', NULL, NULL, '2019-05-19 02:09:46', '2019-05-19 02:09:46'),
(156, '979132352', 'https://loremflickr.com/400/400/person', 327, 'Osbaldo', 'Darby', 'Langosh', 'Robel', 1, 47, 2, 4, 1, 'miller.emmie@yahoo.com', NULL, NULL, '2019-05-19 02:09:46', '2019-05-19 02:09:46'),
(157, '335520228', 'https://loremflickr.com/400/400/player,sport', 329, 'Brooklyn', 'Jakayla', 'Hudson', 'Jenkins', 2, 43, 2, 54, 8, 'jennyfer.cummings@gmail.com', NULL, NULL, '2019-05-19 02:09:46', '2019-05-19 02:09:46'),
(158, '458977836', 'https://loremflickr.com/400/400/player,man', 331, 'Bailee', 'Raphaelle', 'Brakus', 'Kuvalis', 5, 48, 3, 1, 2, 'ruecker.antwon@murphy.org', NULL, NULL, '2019-05-19 02:09:47', '2019-05-19 02:09:47'),
(159, '234369732', 'https://loremflickr.com/400/400/person', 333, 'Magdalena', 'Lela', 'Ferry', 'Batz', 6, 10, 3, 27, 5, 'kenton83@bechtelar.biz', NULL, NULL, '2019-05-19 02:09:47', '2019-05-19 02:09:47'),
(160, '870153421', 'https://loremflickr.com/400/400/player,sport', 335, 'Warren', 'Mia', 'Kuhlman', 'Christiansen', 3, 41, 1, 80, 1, 'hamill.antwon@hotmail.com', NULL, NULL, '2019-05-19 02:09:47', '2019-05-19 02:09:47'),
(161, '902817995', 'https://loremflickr.com/400/400/player,tennis', 337, 'George', 'Leslie', 'Will', 'Fahey', 5, 19, 2, 44, 10, 'kuhic.jeff@windler.net', NULL, NULL, '2019-05-19 02:09:47', '2019-05-19 02:09:47'),
(162, '627760887', 'https://loremflickr.com/400/400/player,man', 339, 'Jazmin', 'Herminio', 'Rohan', 'Corkery', 5, 27, 3, 72, 3, 'hermina.ondricka@yahoo.com', NULL, NULL, '2019-05-19 02:09:47', '2019-05-19 02:09:47');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `departamento`
--

INSERT INTO `departamento` (`id`, `nombre`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'New Mexico', NULL, '2019-05-19 02:08:54', '2019-05-19 02:08:54'),
(2, 'Nebraska', NULL, '2019-05-19 02:08:54', '2019-05-19 02:08:54'),
(3, 'Colorado', NULL, '2019-05-19 02:08:54', '2019-05-19 02:08:54'),
(4, 'Alabama', NULL, '2019-05-19 02:08:54', '2019-05-19 02:08:54'),
(5, 'Wisconsin', NULL, '2019-05-19 02:08:54', '2019-05-19 02:08:54'),
(6, 'Delaware', NULL, '2019-05-19 02:08:54', '2019-05-19 02:08:54'),
(7, 'Michigan', NULL, '2019-05-19 02:08:54', '2019-05-19 02:08:54'),
(8, 'North Dakota', NULL, '2019-05-19 02:08:54', '2019-05-19 02:08:54'),
(9, 'Pennsylvania', NULL, '2019-05-19 02:08:54', '2019-05-19 02:08:54'),
(10, 'New York', NULL, '2019-05-19 02:08:55', '2019-05-19 02:08:55'),
(11, 'Hawaii', NULL, '2019-05-19 02:08:55', '2019-05-19 02:08:55'),
(12, 'Kentucky', NULL, '2019-05-19 02:08:55', '2019-05-19 02:08:55'),
(13, 'New Jersey', NULL, '2019-05-19 02:08:55', '2019-05-19 02:08:55'),
(14, 'Iowa', NULL, '2019-05-19 02:08:55', '2019-05-19 02:08:55'),
(15, 'Wisconsin', NULL, '2019-05-19 02:08:55', '2019-05-19 02:08:55'),
(16, 'New Hampshire', NULL, '2019-05-19 02:08:55', '2019-05-19 02:08:55'),
(17, 'Iowa', NULL, '2019-05-19 02:08:55', '2019-05-19 02:08:55'),
(18, 'Indiana', NULL, '2019-05-19 02:08:55', '2019-05-19 02:08:55'),
(19, 'Michigan', NULL, '2019-05-19 02:08:55', '2019-05-19 02:08:55'),
(20, 'North Dakota', NULL, '2019-05-19 02:08:55', '2019-05-19 02:08:55'),
(21, 'Maine', NULL, '2019-05-19 02:08:55', '2019-05-19 02:08:55'),
(22, 'New Jersey', NULL, '2019-05-19 02:08:55', '2019-05-19 02:08:55'),
(23, 'Tennessee', NULL, '2019-05-19 02:08:55', '2019-05-19 02:08:55'),
(24, 'Maryland', NULL, '2019-05-19 02:08:55', '2019-05-19 02:08:55'),
(25, 'North Dakota', NULL, '2019-05-19 02:08:55', '2019-05-19 02:08:55'),
(26, 'Louisiana', NULL, '2019-05-19 02:08:55', '2019-05-19 02:08:55'),
(27, 'Missouri', NULL, '2019-05-19 02:08:55', '2019-05-19 02:08:55'),
(28, 'Louisiana', NULL, '2019-05-19 02:08:55', '2019-05-19 02:08:55'),
(29, 'Wyoming', NULL, '2019-05-19 02:08:55', '2019-05-19 02:08:55'),
(30, 'South Dakota', NULL, '2019-05-19 02:08:55', '2019-05-19 02:08:55'),
(31, 'Virginia', NULL, '2019-05-19 02:08:55', '2019-05-19 02:08:55'),
(32, 'California', NULL, '2019-05-19 02:08:55', '2019-05-19 02:08:55'),
(33, 'Delaware', NULL, '2019-05-19 02:08:55', '2019-05-19 02:08:55'),
(34, 'Texas', NULL, '2019-05-19 02:08:55', '2019-05-19 02:08:55'),
(35, 'Connecticut', NULL, '2019-05-19 02:08:55', '2019-05-19 02:08:55'),
(36, 'Colorado', NULL, '2019-05-19 02:08:55', '2019-05-19 02:08:55'),
(37, 'Minnesota', NULL, '2019-05-19 02:08:55', '2019-05-19 02:08:55'),
(38, 'North Dakota', NULL, '2019-05-19 02:08:56', '2019-05-19 02:08:56'),
(39, 'Tennessee', NULL, '2019-05-19 02:08:56', '2019-05-19 02:08:56'),
(40, 'Rhode Island', NULL, '2019-05-19 02:08:56', '2019-05-19 02:08:56'),
(41, 'South Dakota', NULL, '2019-05-19 02:08:56', '2019-05-19 02:08:56'),
(42, 'Nevada', NULL, '2019-05-19 02:08:56', '2019-05-19 02:08:56'),
(43, 'Tennessee', NULL, '2019-05-19 02:08:56', '2019-05-19 02:08:56'),
(44, 'North Dakota', NULL, '2019-05-19 02:08:56', '2019-05-19 02:08:56'),
(45, 'Pennsylvania', NULL, '2019-05-19 02:08:56', '2019-05-19 02:08:56'),
(46, 'Minnesota', NULL, '2019-05-19 02:08:56', '2019-05-19 02:08:56'),
(47, 'Illinois', NULL, '2019-05-19 02:08:56', '2019-05-19 02:08:56'),
(48, 'Idaho', NULL, '2019-05-19 02:08:56', '2019-05-19 02:08:56'),
(49, 'Nebraska', NULL, '2019-05-19 02:08:56', '2019-05-19 02:08:56'),
(50, 'Kentucky', NULL, '2019-05-19 02:08:56', '2019-05-19 02:08:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `direccion`
--

CREATE TABLE `direccion` (
  `id` int(10) UNSIGNED NOT NULL,
  `calle` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `carrera` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numero` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `direccion`
--

INSERT INTO `direccion` (`id`, `calle`, `carrera`, `numero`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Buster Lake', '20', '12', NULL, '2019-05-19 02:09:02', '2019-05-19 02:09:02'),
(2, 'Hillard Drives', '49', '15', NULL, '2019-05-19 02:09:02', '2019-05-19 02:09:02'),
(3, 'Tyrese Rue', '29', '3', NULL, '2019-05-19 02:09:02', '2019-05-19 02:09:02'),
(4, 'Maybelle Creek', '36', '1', NULL, '2019-05-19 02:09:02', '2019-05-19 02:09:02'),
(5, 'Jacobi Springs', '39', '48', NULL, '2019-05-19 02:09:03', '2019-05-19 02:09:03'),
(6, 'Beulah Avenue', '45', '14', NULL, '2019-05-19 02:09:03', '2019-05-19 02:09:03'),
(7, 'Paucek Mills', '41', '19', NULL, '2019-05-19 02:09:03', '2019-05-19 02:09:03'),
(8, 'Myles Burg', '9', '4', NULL, '2019-05-19 02:09:03', '2019-05-19 02:09:03'),
(9, 'Treutel Falls', '44', '6', NULL, '2019-05-19 02:09:03', '2019-05-19 02:09:03'),
(10, 'Linnie Grove', '11', '28', NULL, '2019-05-19 02:09:03', '2019-05-19 02:09:03'),
(11, 'Hane Islands', '42', '32', NULL, '2019-05-19 02:09:03', '2019-05-19 02:09:03'),
(12, 'Eloy Flat', '19', '35', NULL, '2019-05-19 02:09:03', '2019-05-19 02:09:03'),
(13, 'Garnett Haven', '30', '21', NULL, '2019-05-19 02:09:03', '2019-05-19 02:09:03'),
(14, 'Adams Creek', '39', '5', NULL, '2019-05-19 02:09:03', '2019-05-19 02:09:03'),
(15, 'Kulas Islands', '29', '38', NULL, '2019-05-19 02:09:03', '2019-05-19 02:09:03'),
(16, 'Gulgowski Street', '48', '32', NULL, '2019-05-19 02:09:03', '2019-05-19 02:09:03'),
(17, 'Kuvalis Mountain', '37', '21', NULL, '2019-05-19 02:09:03', '2019-05-19 02:09:03'),
(18, 'Howell Crossroad', '35', '14', NULL, '2019-05-19 02:09:03', '2019-05-19 02:09:03'),
(19, 'Ken Circle', '34', '40', NULL, '2019-05-19 02:09:03', '2019-05-19 02:09:03'),
(20, 'Carlee Fields', '11', '1', NULL, '2019-05-19 02:09:03', '2019-05-19 02:09:03'),
(21, 'Senger Ridge', '3', '41', NULL, '2019-05-19 02:09:03', '2019-05-19 02:09:03'),
(22, 'Norene Parkways', '1', '3', NULL, '2019-05-19 02:09:03', '2019-05-19 02:09:03'),
(23, 'Tremblay Turnpike', '15', '29', NULL, '2019-05-19 02:09:03', '2019-05-19 02:09:03'),
(24, 'Fay Ports', '50', '22', NULL, '2019-05-19 02:09:03', '2019-05-19 02:09:03'),
(25, 'Samanta Fords', '20', '12', NULL, '2019-05-19 02:09:03', '2019-05-19 02:09:03'),
(26, 'Frieda Square', '43', '25', NULL, '2019-05-19 02:09:04', '2019-05-19 02:09:04'),
(27, 'Grant Burgs', '42', '20', NULL, '2019-05-19 02:09:04', '2019-05-19 02:09:04'),
(28, 'White Crossing', '36', '3', NULL, '2019-05-19 02:09:04', '2019-05-19 02:09:04'),
(29, 'Dickinson Spring', '29', '2', NULL, '2019-05-19 02:09:04', '2019-05-19 02:09:04'),
(30, 'Rowan Roads', '44', '26', NULL, '2019-05-19 02:09:04', '2019-05-19 02:09:04'),
(31, 'Madeline Terrace', '10', '4', NULL, '2019-05-19 02:09:04', '2019-05-19 02:09:04'),
(32, 'Schuppe Inlet', '22', '39', NULL, '2019-05-19 02:09:04', '2019-05-19 02:09:04'),
(33, 'Hill Summit', '30', '31', NULL, '2019-05-19 02:09:04', '2019-05-19 02:09:04'),
(34, 'Hirthe Meadows', '34', '50', NULL, '2019-05-19 02:09:04', '2019-05-19 02:09:04'),
(35, 'Estella Manors', '23', '40', NULL, '2019-05-19 02:09:04', '2019-05-19 02:09:04'),
(36, 'Ramona Stravenue', '36', '27', NULL, '2019-05-19 02:09:04', '2019-05-19 02:09:04'),
(37, 'Brakus Throughway', '33', '48', NULL, '2019-05-19 02:09:04', '2019-05-19 02:09:04'),
(38, 'Nader Isle', '10', '2', NULL, '2019-05-19 02:09:04', '2019-05-19 02:09:04'),
(39, 'Oberbrunner Parkway', '40', '9', NULL, '2019-05-19 02:09:04', '2019-05-19 02:09:04'),
(40, 'Hermiston Skyway', '30', '48', NULL, '2019-05-19 02:09:04', '2019-05-19 02:09:04'),
(41, 'Waters Light', '6', '20', NULL, '2019-05-19 02:09:04', '2019-05-19 02:09:04'),
(42, 'Stroman Squares', '2', '34', NULL, '2019-05-19 02:09:04', '2019-05-19 02:09:04'),
(43, 'Feeney Key', '32', '20', NULL, '2019-05-19 02:09:04', '2019-05-19 02:09:04'),
(44, 'Randall Junction', '25', '20', NULL, '2019-05-19 02:09:05', '2019-05-19 02:09:05'),
(45, 'Maryse Cape', '31', '48', NULL, '2019-05-19 02:09:05', '2019-05-19 02:09:05'),
(46, 'Ebert Walk', '24', '8', NULL, '2019-05-19 02:09:05', '2019-05-19 02:09:05'),
(47, 'Spencer Springs', '19', '30', NULL, '2019-05-19 02:09:05', '2019-05-19 02:09:05'),
(48, 'Jailyn Crest', '45', '18', NULL, '2019-05-19 02:09:05', '2019-05-19 02:09:05'),
(49, 'Blake Haven', '22', '18', NULL, '2019-05-19 02:09:05', '2019-05-19 02:09:05'),
(50, 'Daphne Knolls', '32', '22', NULL, '2019-05-19 02:09:05', '2019-05-19 02:09:05'),
(51, 'Swaniawski Fords', '37', '43', NULL, '2019-05-19 02:09:05', '2019-05-19 02:09:05'),
(52, 'Osvaldo Ford', '5', '23', NULL, '2019-05-19 02:09:05', '2019-05-19 02:09:05'),
(53, 'Schumm Mountain', '29', '21', NULL, '2019-05-19 02:09:05', '2019-05-19 02:09:05'),
(54, 'Lesch Inlet', '46', '38', NULL, '2019-05-19 02:09:05', '2019-05-19 02:09:05'),
(55, 'Haley Hill', '30', '1', NULL, '2019-05-19 02:09:05', '2019-05-19 02:09:05'),
(56, 'Kenna Burg', '46', '33', NULL, '2019-05-19 02:09:05', '2019-05-19 02:09:05'),
(57, 'Macejkovic Circle', '47', '11', NULL, '2019-05-19 02:09:05', '2019-05-19 02:09:05'),
(58, 'Lea Forest', '26', '16', NULL, '2019-05-19 02:09:05', '2019-05-19 02:09:05'),
(59, 'Janie Plains', '31', '50', NULL, '2019-05-19 02:09:05', '2019-05-19 02:09:05'),
(60, 'Clarissa Springs', '33', '12', NULL, '2019-05-19 02:09:05', '2019-05-19 02:09:05'),
(61, 'Terrence Vista', '29', '13', NULL, '2019-05-19 02:09:06', '2019-05-19 02:09:06'),
(62, 'Burley Roads', '16', '10', NULL, '2019-05-19 02:09:06', '2019-05-19 02:09:06'),
(63, 'Nitzsche Light', '34', '19', NULL, '2019-05-19 02:09:06', '2019-05-19 02:09:06'),
(64, 'Noelia Inlet', '18', '28', NULL, '2019-05-19 02:09:06', '2019-05-19 02:09:06'),
(65, 'Denesik Path', '33', '8', NULL, '2019-05-19 02:09:06', '2019-05-19 02:09:06'),
(66, 'Melisa Extensions', '26', '36', NULL, '2019-05-19 02:09:06', '2019-05-19 02:09:06'),
(67, 'Bins Unions', '6', '15', NULL, '2019-05-19 02:09:06', '2019-05-19 02:09:06'),
(68, 'Anderson Vista', '18', '35', NULL, '2019-05-19 02:09:06', '2019-05-19 02:09:06'),
(69, 'Aufderhar Via', '26', '38', NULL, '2019-05-19 02:09:06', '2019-05-19 02:09:06'),
(70, 'Estell Mission', '46', '42', NULL, '2019-05-19 02:09:06', '2019-05-19 02:09:06'),
(71, 'Roderick Locks', '38', '47', NULL, '2019-05-19 02:09:06', '2019-05-19 02:09:06'),
(72, 'Schroeder Path', '8', '24', NULL, '2019-05-19 02:09:06', '2019-05-19 02:09:06'),
(73, 'Bertrand Points', '29', '21', NULL, '2019-05-19 02:09:06', '2019-05-19 02:09:06'),
(74, 'Kshlerin Springs', '10', '7', NULL, '2019-05-19 02:09:06', '2019-05-19 02:09:06'),
(75, 'Morris Point', '36', '13', NULL, '2019-05-19 02:09:06', '2019-05-19 02:09:06'),
(76, 'Wisozk Springs', '23', '40', NULL, '2019-05-19 02:09:06', '2019-05-19 02:09:06'),
(77, 'Murray Causeway', '4', '2', NULL, '2019-05-19 02:09:06', '2019-05-19 02:09:06'),
(78, 'Hane Lane', '18', '44', NULL, '2019-05-19 02:09:07', '2019-05-19 02:09:07'),
(79, 'Llewellyn Circle', '33', '4', NULL, '2019-05-19 02:09:07', '2019-05-19 02:09:07'),
(80, 'Prosacco Lights', '5', '40', NULL, '2019-05-19 02:09:07', '2019-05-19 02:09:07'),
(81, 'Boyle Cliff', '40', '28', NULL, '2019-05-19 02:09:07', '2019-05-19 02:09:07'),
(82, 'Lillian Forks', '30', '12', NULL, '2019-05-19 02:09:07', '2019-05-19 02:09:07'),
(83, 'Paris Brooks', '15', '31', NULL, '2019-05-19 02:09:07', '2019-05-19 02:09:07'),
(84, 'Becker Radial', '31', '16', NULL, '2019-05-19 02:09:07', '2019-05-19 02:09:07'),
(85, 'Aimee Forest', '21', '37', NULL, '2019-05-19 02:09:07', '2019-05-19 02:09:07'),
(86, 'Shakira Street', '6', '4', NULL, '2019-05-19 02:09:07', '2019-05-19 02:09:07'),
(87, 'Wilfred Trail', '12', '26', NULL, '2019-05-19 02:09:07', '2019-05-19 02:09:07'),
(88, 'Felipe Wells', '18', '4', NULL, '2019-05-19 02:09:07', '2019-05-19 02:09:07'),
(89, 'Camilla Islands', '28', '33', NULL, '2019-05-19 02:09:08', '2019-05-19 02:09:08'),
(90, 'Schneider Burgs', '5', '10', NULL, '2019-05-19 02:09:08', '2019-05-19 02:09:08'),
(91, 'Rice Stravenue', '41', '39', NULL, '2019-05-19 02:09:08', '2019-05-19 02:09:08'),
(92, 'Romaguera Freeway', '35', '35', NULL, '2019-05-19 02:09:08', '2019-05-19 02:09:08'),
(93, 'Ullrich Bypass', '44', '9', NULL, '2019-05-19 02:09:08', '2019-05-19 02:09:08'),
(94, 'Jeff Ford', '15', '2', NULL, '2019-05-19 02:09:08', '2019-05-19 02:09:08'),
(95, 'Laurence Loop', '45', '43', NULL, '2019-05-19 02:09:08', '2019-05-19 02:09:08'),
(96, 'Rogahn Inlet', '47', '16', NULL, '2019-05-19 02:09:08', '2019-05-19 02:09:08'),
(97, 'Loyce Loaf', '34', '22', NULL, '2019-05-19 02:09:08', '2019-05-19 02:09:08'),
(98, 'Sipes Rapids', '29', '43', NULL, '2019-05-19 02:09:08', '2019-05-19 02:09:08'),
(99, 'Alivia Mission', '49', '36', NULL, '2019-05-19 02:09:08', '2019-05-19 02:09:08'),
(100, 'Reichel Plains', '22', '2', NULL, '2019-05-19 02:09:08', '2019-05-19 02:09:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `enfrentamiento`
--

CREATE TABLE `enfrentamiento` (
  `id` int(10) UNSIGNED NOT NULL,
  `calendario_id` int(10) UNSIGNED NOT NULL,
  `inscripcion_equipo_visitante_id` int(10) UNSIGNED NOT NULL,
  `inscripcion_equipo_local_id` int(10) UNSIGNED NOT NULL,
  `lugar_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `enfrentamiento`
--

INSERT INTO `enfrentamiento` (`id`, `calendario_id`, `inscripcion_equipo_visitante_id`, `inscripcion_equipo_local_id`, `lugar_id`, `user_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 1, 2, 1, NULL, '2019-05-19 00:53:18', '2019-05-19 00:53:18'),
(2, 2, 4, 3, 1, 1, NULL, '2019-05-19 00:54:36', '2019-05-19 00:54:36'),
(3, 3, 6, 5, 7, 1, NULL, '2019-05-19 00:55:24', '2019-05-19 00:55:24'),
(4, 4, 16, 7, 11, 1, NULL, '2019-05-19 00:57:43', '2019-05-19 00:58:27'),
(5, 5, 9, 8, 14, 1, NULL, '2019-05-19 00:59:11', '2019-05-19 00:59:11'),
(6, 6, 11, 10, 11, 1, NULL, '2019-05-19 00:59:37', '2019-05-19 00:59:37'),
(7, 7, 13, 12, 3, 1, NULL, '2019-05-19 01:00:33', '2019-05-19 01:00:33'),
(8, 8, 15, 14, 11, 1, NULL, '2019-05-19 01:01:02', '2019-05-19 01:01:02'),
(9, 9, 4, 1, 15, 1, NULL, '2019-05-19 01:03:58', '2019-05-19 01:03:58'),
(10, 10, 7, 5, 8, 1, NULL, '2019-05-19 01:04:23', '2019-05-19 01:04:23'),
(11, 11, 10, 8, 5, 1, NULL, '2019-05-19 01:06:46', '2019-05-19 01:06:46'),
(12, 12, 14, 12, 10, 1, NULL, '2019-05-19 01:07:06', '2019-05-19 01:07:06'),
(13, 13, 5, 1, 10, 1, NULL, '2019-05-19 01:07:40', '2019-05-19 01:07:40'),
(14, 14, 14, 10, 15, 1, NULL, '2019-05-19 01:08:12', '2019-05-19 01:08:12'),
(15, 15, 10, 1, 15, 1, NULL, '2019-05-19 01:09:08', '2019-05-19 01:09:08'),
(16, 16, 14, 5, 3, 1, NULL, '2019-05-19 01:09:31', '2019-05-19 01:09:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `enfrentamiento_arbitro`
--

CREATE TABLE `enfrentamiento_arbitro` (
  `id` int(10) UNSIGNED NOT NULL,
  `arbitro_id` int(10) UNSIGNED NOT NULL,
  `arbitro_puesto_id` int(10) UNSIGNED NOT NULL,
  `enfrentamiento_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eps`
--

CREATE TABLE `eps` (
  `id` int(10) UNSIGNED NOT NULL,
  `nit` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `administradora` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo` enum('ARL','AFP','EPS','PARAFISCAL') COLLATE utf8mb4_unicode_ci NOT NULL,
  `codigo` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `eps`
--

INSERT INTO `eps` (`id`, `nit`, `nombre`, `administradora`, `tipo`, `codigo`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '813836170', 'Sawayn-Koelpin', 'Ltd', 'ARL', 'v0m - 566', NULL, '2019-05-19 02:09:01', '2019-05-19 02:09:01'),
(2, '1540756632', 'Purdy, Powlowski and Hackett', 'PLC', 'ARL', '8mk - 193', NULL, '2019-05-19 02:09:01', '2019-05-19 02:09:01'),
(3, '1312962857', 'Cremin Ltd', 'LLC', 'PARAFISCAL', '5w8 - 626', NULL, '2019-05-19 02:09:01', '2019-05-19 02:09:01'),
(4, '541565305', 'Thompson LLC', 'Group', 'EPS', 'noz - 756', NULL, '2019-05-19 02:09:01', '2019-05-19 02:09:01'),
(5, '9462570', 'Reinger-Schultz', 'LLC', 'EPS', '2xy - 758', NULL, '2019-05-19 02:09:02', '2019-05-19 02:09:02'),
(6, '952725582', 'Smitham-Cartwright', 'PLC', 'ARL', 'za0 - 885', NULL, '2019-05-19 02:09:02', '2019-05-19 02:09:02'),
(7, '1521982134', 'Jaskolski Inc', 'and Sons', 'ARL', '66t - 108', NULL, '2019-05-19 02:09:02', '2019-05-19 02:09:02'),
(8, '1480224477', 'Jerde, Jacobi and Dooley', 'PLC', 'PARAFISCAL', 'q4k - 465', NULL, '2019-05-19 02:09:02', '2019-05-19 02:09:02'),
(9, '388361203', 'Casper-Fisher', 'Ltd', 'PARAFISCAL', '315 - 255', NULL, '2019-05-19 02:09:02', '2019-05-19 02:09:02'),
(10, '1483119008', 'Schoen Ltd', 'PLC', 'EPS', '1a0 - 810', NULL, '2019-05-19 02:09:02', '2019-05-19 02:09:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipo`
--

CREATE TABLE `equipo` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'storage/storage/img/equipo/default.png',
  `instituto_id` int(10) UNSIGNED NOT NULL,
  `colores_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `equipo`
--

INSERT INTO `equipo` (`id`, `nombre`, `logo`, `instituto_id`, `colores_id`, `user_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Uruguay', 'storage/storage/img/equipo/test/uruaguay.png', 6, 39, 1, NULL, '2019-05-18 22:50:35', '2019-05-18 22:50:35'),
(2, 'Corea Del Sur', 'storage/storage/img/equipo/test/koreadelsur.png', 20, 3, 1, NULL, '2019-05-18 22:51:27', '2019-05-18 22:51:41'),
(3, 'Estados Unidos De America', 'storage/storage/img/equipo/test/usa.png', 4, 20, 1, NULL, '2019-05-18 22:52:10', '2019-05-18 22:52:10'),
(4, 'Ghana', 'storage/storage/img/equipo/test/nigeria.png', 18, 11, 1, NULL, '2019-05-18 22:52:37', '2019-05-18 22:52:37'),
(5, 'Holanda', 'storage/storage/img/equipo/test/holanda.png', 16, 48, 1, NULL, '2019-05-18 22:53:33', '2019-05-18 22:53:33'),
(6, 'Slovakia', 'storage/storage/img/equipo/test/eslovakia.png', 16, 24, 1, NULL, '2019-05-18 22:54:09', '2019-05-18 22:54:09'),
(7, 'Brasil', 'storage/storage/img/equipo/test/brasil.png', 3, 40, 1, NULL, '2019-05-18 22:54:31', '2019-05-18 22:54:31'),
(8, 'Argentina', 'storage/storage/img/equipo/test/argentina.png', 1, 13, 1, NULL, '2019-05-18 22:54:48', '2019-05-18 22:54:48'),
(9, 'Mexico', 'storage/storage/img/equipo/test/mexico.png', 13, 21, 1, NULL, '2019-05-18 22:55:16', '2019-05-18 22:55:16'),
(10, 'Alemania', 'storage/storage/img/equipo/test/alemania.png', 4, 3, 1, NULL, '2019-05-18 22:55:41', '2019-05-18 22:55:41'),
(11, 'Inglaterra', 'storage/storage/img/equipo/test/inglaterra.png', 20, 46, 1, NULL, '2019-05-18 22:56:27', '2019-05-18 22:56:27'),
(12, 'Paraguay', 'storage/storage/img/equipo/test/paraguay.png', 15, 17, 1, NULL, '2019-05-18 22:56:52', '2019-05-18 22:56:52'),
(13, 'Japon', 'storage/storage/img/equipo/test/japon.png', 17, 26, 1, NULL, '2019-05-18 22:57:24', '2019-05-18 22:57:24'),
(14, 'España', 'storage/storage/img/equipo/test/espana.png', 6, 3, 1, NULL, '2019-05-18 22:57:37', '2019-05-18 22:57:37'),
(15, 'Portugal', 'storage/storage/img/equipo/test/portugal.png', 11, 28, 1, NULL, '2019-05-18 22:58:04', '2019-05-18 22:58:04'),
(16, 'Chile', 'storage/storage/img/equipo/test/chile.png', 11, 28, 1, NULL, '2019-05-18 22:58:04', '2019-05-18 22:58:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estadisticas`
--

CREATE TABLE `estadisticas` (
  `id` int(10) UNSIGNED NOT NULL,
  `inscripcion_equipo_id` int(10) UNSIGNED NOT NULL,
  `inscripcion_jugador_id` int(10) UNSIGNED NOT NULL,
  `enfrentamiento_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `faltas`
--

CREATE TABLE `faltas` (
  `id` int(10) UNSIGNED NOT NULL,
  `estadisticas_id` int(10) UNSIGNED NOT NULL,
  `total` smallint(6) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `faltas_tarjeta`
--

CREATE TABLE `faltas_tarjeta` (
  `id` int(10) UNSIGNED NOT NULL,
  `faltas_id` int(10) UNSIGNED NOT NULL,
  `tarjetas_id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fase`
--

CREATE TABLE `fase` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `fase`
--

INSERT INTO `fase` (`id`, `nombre`, `descripcion`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Fase de grupos', 'Todos contra todos', NULL, '2019-05-19 02:09:59', '2019-05-19 02:09:59'),
(2, 'Octavos de final', 'Ultimos 16 equipos', NULL, '2019-05-19 02:10:00', '2019-05-19 02:10:00'),
(3, 'Cuartos de final', 'Ultimos 8 equipos', NULL, '2019-05-19 02:10:00', '2019-05-19 02:10:00'),
(4, 'Semi-finales', 'Ultimos 4 equipos', NULL, '2019-05-19 02:10:00', '2019-05-19 02:10:00'),
(5, 'Pre-Final', 'Tercero Y Cuarto Puesto', NULL, '2019-05-19 02:10:00', '2019-05-19 02:10:00'),
(6, 'Final', 'Primero Y Segundo Puesto', NULL, '2019-05-19 02:10:00', '2019-05-19 02:10:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `id` int(10) UNSIGNED NOT NULL,
  `genero` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `genero`
--

INSERT INTO `genero` (`id`, `genero`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Masculino', NULL, '2019-05-19 02:09:01', '2019-05-19 02:09:01'),
(2, 'Femenino', NULL, '2019-05-19 02:09:01', '2019-05-19 02:09:01'),
(3, 'Indefinido', NULL, '2019-05-19 02:09:01', '2019-05-19 02:09:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inscripcion_equipo`
--

CREATE TABLE `inscripcion_equipo` (
  `id` int(10) UNSIGNED NOT NULL,
  `equipo_id` int(10) UNSIGNED NOT NULL,
  `torneo_id` int(10) UNSIGNED NOT NULL,
  `puntos` smallint(6) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `inscripcion_equipo`
--

INSERT INTO `inscripcion_equipo` (`id`, `equipo_id`, `torneo_id`, `puntos`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 0, NULL, '0000-00-00 00:00:00', NULL),
(2, 2, 1, 0, NULL, '0000-00-00 00:00:00', NULL),
(3, 3, 1, 0, NULL, '0000-00-00 00:00:00', NULL),
(4, 4, 1, 0, NULL, '0000-00-00 00:00:00', NULL),
(5, 5, 1, 0, NULL, '0000-00-00 00:00:00', NULL),
(6, 6, 1, 0, NULL, '0000-00-00 00:00:00', NULL),
(7, 7, 1, 0, NULL, '0000-00-00 00:00:00', NULL),
(8, 8, 1, 0, NULL, '0000-00-00 00:00:00', NULL),
(9, 9, 1, 0, NULL, '0000-00-00 00:00:00', NULL),
(10, 10, 1, 0, NULL, '0000-00-00 00:00:00', NULL),
(11, 11, 1, 0, NULL, '0000-00-00 00:00:00', NULL),
(12, 12, 1, 0, NULL, '0000-00-00 00:00:00', NULL),
(13, 13, 1, 0, NULL, '0000-00-00 00:00:00', NULL),
(14, 14, 1, 0, NULL, '0000-00-00 00:00:00', NULL),
(15, 15, 1, 0, NULL, '0000-00-00 00:00:00', NULL),
(16, 16, 1, 0, NULL, '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inscripcion_jugador`
--

CREATE TABLE `inscripcion_jugador` (
  `id` int(10) UNSIGNED NOT NULL,
  `capitan` tinyint(1) NOT NULL DEFAULT '0',
  `jugador_id` int(10) UNSIGNED NOT NULL,
  `inscripcion_equipo_id` int(10) UNSIGNED NOT NULL,
  `programa_id` int(10) UNSIGNED NOT NULL,
  `tipo_jugador_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `inscripcion_jugador`
--

INSERT INTO `inscripcion_jugador` (`id`, `capitan`, `jugador_id`, `inscripcion_equipo_id`, `programa_id`, `tipo_jugador_id`, `user_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 1, 3, 3, 3, NULL, '0000-00-00 00:00:00', NULL),
(2, 0, 2, 1, 1, 2, 2, NULL, '0000-00-00 00:00:00', NULL),
(3, 0, 3, 1, 2, 2, 4, NULL, '0000-00-00 00:00:00', NULL),
(4, 0, 4, 1, 1, 1, 3, NULL, '0000-00-00 00:00:00', NULL),
(5, 0, 5, 1, 2, 1, 1, NULL, '0000-00-00 00:00:00', NULL),
(6, 0, 6, 1, 3, 1, 3, NULL, '0000-00-00 00:00:00', NULL),
(7, 0, 7, 1, 2, 3, 4, NULL, '0000-00-00 00:00:00', NULL),
(8, 0, 8, 1, 2, 2, 3, NULL, '0000-00-00 00:00:00', NULL),
(9, 0, 9, 1, 1, 1, 1, NULL, '0000-00-00 00:00:00', NULL),
(10, 0, 10, 1, 3, 1, 4, NULL, '0000-00-00 00:00:00', NULL),
(11, 0, 11, 2, 2, 1, 2, NULL, '0000-00-00 00:00:00', NULL),
(12, 0, 12, 2, 3, 1, 4, NULL, '0000-00-00 00:00:00', NULL),
(13, 0, 13, 2, 3, 1, 3, NULL, '0000-00-00 00:00:00', NULL),
(14, 0, 14, 2, 3, 2, 4, NULL, '0000-00-00 00:00:00', NULL),
(15, 0, 15, 2, 3, 1, 1, NULL, '0000-00-00 00:00:00', NULL),
(16, 0, 16, 2, 2, 3, 3, NULL, '0000-00-00 00:00:00', NULL),
(17, 0, 17, 2, 2, 1, 3, NULL, '0000-00-00 00:00:00', NULL),
(18, 0, 18, 2, 3, 1, 3, NULL, '0000-00-00 00:00:00', NULL),
(19, 0, 19, 2, 1, 2, 1, NULL, '0000-00-00 00:00:00', NULL),
(20, 0, 20, 2, 2, 3, 4, NULL, '0000-00-00 00:00:00', NULL),
(21, 0, 21, 3, 2, 1, 2, NULL, '0000-00-00 00:00:00', NULL),
(22, 0, 22, 3, 1, 3, 3, NULL, '0000-00-00 00:00:00', NULL),
(23, 0, 23, 3, 2, 3, 4, NULL, '0000-00-00 00:00:00', NULL),
(24, 0, 24, 3, 1, 1, 1, NULL, '0000-00-00 00:00:00', NULL),
(25, 0, 25, 3, 3, 2, 4, NULL, '0000-00-00 00:00:00', NULL),
(26, 0, 26, 3, 2, 3, 1, NULL, '0000-00-00 00:00:00', NULL),
(27, 0, 27, 3, 1, 3, 2, NULL, '0000-00-00 00:00:00', NULL),
(28, 0, 28, 3, 1, 2, 1, NULL, '0000-00-00 00:00:00', NULL),
(29, 0, 29, 3, 3, 3, 2, NULL, '0000-00-00 00:00:00', NULL),
(30, 0, 30, 3, 2, 3, 4, NULL, '0000-00-00 00:00:00', NULL),
(31, 0, 31, 4, 1, 3, 1, NULL, '0000-00-00 00:00:00', NULL),
(32, 0, 32, 4, 1, 1, 4, NULL, '0000-00-00 00:00:00', NULL),
(33, 0, 33, 4, 1, 2, 3, NULL, '0000-00-00 00:00:00', NULL),
(34, 0, 34, 4, 2, 2, 4, NULL, '0000-00-00 00:00:00', NULL),
(35, 0, 35, 4, 2, 3, 2, NULL, '0000-00-00 00:00:00', NULL),
(36, 0, 36, 4, 1, 3, 4, NULL, '0000-00-00 00:00:00', NULL),
(37, 0, 37, 4, 3, 1, 1, NULL, '0000-00-00 00:00:00', NULL),
(38, 0, 38, 4, 3, 3, 1, NULL, '0000-00-00 00:00:00', NULL),
(39, 0, 39, 4, 3, 1, 1, NULL, '0000-00-00 00:00:00', NULL),
(40, 0, 40, 4, 1, 3, 3, NULL, '0000-00-00 00:00:00', NULL),
(41, 0, 41, 5, 1, 1, 2, NULL, '0000-00-00 00:00:00', NULL),
(42, 0, 42, 5, 3, 3, 3, NULL, '0000-00-00 00:00:00', NULL),
(43, 0, 43, 5, 3, 3, 4, NULL, '0000-00-00 00:00:00', NULL),
(44, 0, 44, 5, 3, 1, 4, NULL, '0000-00-00 00:00:00', NULL),
(45, 0, 45, 5, 2, 3, 3, NULL, '0000-00-00 00:00:00', NULL),
(46, 0, 46, 5, 2, 3, 1, NULL, '0000-00-00 00:00:00', NULL),
(47, 0, 47, 5, 1, 2, 3, NULL, '0000-00-00 00:00:00', NULL),
(48, 0, 48, 5, 1, 1, 2, NULL, '0000-00-00 00:00:00', NULL),
(49, 0, 49, 5, 3, 3, 1, NULL, '0000-00-00 00:00:00', NULL),
(50, 0, 50, 5, 2, 3, 4, NULL, '0000-00-00 00:00:00', NULL),
(51, 0, 51, 6, 3, 3, 2, NULL, '0000-00-00 00:00:00', NULL),
(52, 0, 52, 6, 2, 1, 4, NULL, '0000-00-00 00:00:00', NULL),
(53, 0, 53, 6, 3, 2, 3, NULL, '0000-00-00 00:00:00', NULL),
(54, 0, 54, 6, 3, 3, 3, NULL, '0000-00-00 00:00:00', NULL),
(55, 0, 55, 6, 2, 1, 3, NULL, '0000-00-00 00:00:00', NULL),
(56, 0, 56, 6, 3, 1, 1, NULL, '0000-00-00 00:00:00', NULL),
(57, 0, 57, 6, 1, 1, 2, NULL, '0000-00-00 00:00:00', NULL),
(58, 0, 58, 6, 1, 2, 2, NULL, '0000-00-00 00:00:00', NULL),
(59, 0, 59, 6, 2, 2, 4, NULL, '0000-00-00 00:00:00', NULL),
(60, 0, 60, 6, 3, 2, 1, NULL, '0000-00-00 00:00:00', NULL),
(61, 0, 61, 7, 1, 3, 4, NULL, '0000-00-00 00:00:00', NULL),
(62, 0, 62, 7, 3, 3, 2, NULL, '0000-00-00 00:00:00', NULL),
(63, 0, 63, 7, 1, 3, 3, NULL, '0000-00-00 00:00:00', NULL),
(64, 0, 64, 7, 1, 1, 1, NULL, '0000-00-00 00:00:00', NULL),
(65, 0, 65, 7, 1, 2, 4, NULL, '0000-00-00 00:00:00', NULL),
(66, 0, 66, 7, 3, 3, 4, NULL, '0000-00-00 00:00:00', NULL),
(67, 0, 67, 7, 3, 2, 4, NULL, '0000-00-00 00:00:00', NULL),
(68, 0, 68, 7, 1, 2, 3, NULL, '0000-00-00 00:00:00', NULL),
(69, 0, 69, 7, 1, 1, 2, NULL, '0000-00-00 00:00:00', NULL),
(70, 0, 70, 7, 3, 1, 1, NULL, '0000-00-00 00:00:00', NULL),
(71, 0, 71, 8, 3, 2, 1, NULL, '0000-00-00 00:00:00', NULL),
(72, 0, 72, 8, 1, 2, 2, NULL, '0000-00-00 00:00:00', NULL),
(73, 0, 73, 8, 1, 1, 3, NULL, '0000-00-00 00:00:00', NULL),
(74, 0, 74, 8, 1, 3, 1, NULL, '0000-00-00 00:00:00', NULL),
(75, 0, 75, 8, 1, 2, 1, NULL, '0000-00-00 00:00:00', NULL),
(76, 0, 76, 8, 3, 2, 2, NULL, '0000-00-00 00:00:00', NULL),
(77, 0, 77, 8, 3, 3, 4, NULL, '0000-00-00 00:00:00', NULL),
(78, 0, 78, 8, 3, 2, 3, NULL, '0000-00-00 00:00:00', NULL),
(79, 0, 79, 8, 2, 1, 3, NULL, '0000-00-00 00:00:00', NULL),
(80, 0, 80, 8, 2, 3, 3, NULL, '0000-00-00 00:00:00', NULL),
(81, 0, 81, 9, 2, 1, 3, NULL, '0000-00-00 00:00:00', NULL),
(82, 0, 82, 9, 2, 3, 3, NULL, '0000-00-00 00:00:00', NULL),
(83, 0, 83, 9, 3, 3, 1, NULL, '0000-00-00 00:00:00', NULL),
(84, 0, 84, 9, 3, 2, 4, NULL, '0000-00-00 00:00:00', NULL),
(85, 0, 85, 9, 1, 1, 3, NULL, '0000-00-00 00:00:00', NULL),
(86, 0, 86, 9, 1, 1, 1, NULL, '0000-00-00 00:00:00', NULL),
(87, 0, 87, 9, 3, 3, 4, NULL, '0000-00-00 00:00:00', NULL),
(88, 0, 88, 9, 2, 3, 2, NULL, '0000-00-00 00:00:00', NULL),
(89, 0, 89, 9, 2, 1, 4, NULL, '0000-00-00 00:00:00', NULL),
(90, 0, 90, 9, 2, 1, 3, NULL, '0000-00-00 00:00:00', NULL),
(91, 0, 91, 10, 2, 1, 2, NULL, '0000-00-00 00:00:00', NULL),
(92, 0, 92, 10, 2, 2, 4, NULL, '0000-00-00 00:00:00', NULL),
(93, 0, 93, 10, 3, 3, 4, NULL, '0000-00-00 00:00:00', NULL),
(94, 0, 94, 10, 2, 3, 2, NULL, '0000-00-00 00:00:00', NULL),
(95, 0, 95, 10, 3, 1, 1, NULL, '0000-00-00 00:00:00', NULL),
(96, 0, 96, 10, 1, 1, 4, NULL, '0000-00-00 00:00:00', NULL),
(97, 0, 97, 10, 2, 1, 3, NULL, '0000-00-00 00:00:00', NULL),
(98, 0, 98, 10, 1, 3, 3, NULL, '0000-00-00 00:00:00', NULL),
(99, 0, 99, 10, 1, 1, 3, NULL, '0000-00-00 00:00:00', NULL),
(100, 0, 100, 10, 3, 3, 3, NULL, '0000-00-00 00:00:00', NULL),
(101, 0, 101, 11, 3, 2, 2, NULL, '0000-00-00 00:00:00', NULL),
(102, 0, 102, 11, 2, 2, 1, NULL, '0000-00-00 00:00:00', NULL),
(103, 0, 103, 11, 3, 2, 4, NULL, '0000-00-00 00:00:00', NULL),
(104, 0, 104, 11, 1, 3, 1, NULL, '0000-00-00 00:00:00', NULL),
(105, 0, 105, 11, 2, 2, 3, NULL, '0000-00-00 00:00:00', NULL),
(106, 0, 106, 11, 1, 1, 4, NULL, '0000-00-00 00:00:00', NULL),
(107, 0, 107, 11, 3, 3, 2, NULL, '0000-00-00 00:00:00', NULL),
(108, 0, 108, 11, 2, 3, 4, NULL, '0000-00-00 00:00:00', NULL),
(109, 0, 109, 11, 1, 2, 2, NULL, '0000-00-00 00:00:00', NULL),
(110, 0, 110, 11, 3, 3, 4, NULL, '0000-00-00 00:00:00', NULL),
(111, 0, 111, 12, 1, 2, 3, NULL, '0000-00-00 00:00:00', NULL),
(112, 0, 112, 12, 2, 2, 2, NULL, '0000-00-00 00:00:00', NULL),
(113, 0, 113, 12, 2, 2, 3, NULL, '0000-00-00 00:00:00', NULL),
(114, 0, 114, 12, 2, 1, 1, NULL, '0000-00-00 00:00:00', NULL),
(115, 0, 115, 12, 2, 2, 3, NULL, '0000-00-00 00:00:00', NULL),
(116, 0, 116, 12, 3, 3, 1, NULL, '0000-00-00 00:00:00', NULL),
(117, 0, 117, 12, 1, 2, 3, NULL, '0000-00-00 00:00:00', NULL),
(118, 0, 118, 12, 2, 3, 4, NULL, '0000-00-00 00:00:00', NULL),
(119, 0, 119, 12, 1, 1, 1, NULL, '0000-00-00 00:00:00', NULL),
(120, 0, 120, 12, 2, 1, 2, NULL, '0000-00-00 00:00:00', NULL),
(121, 0, 121, 13, 3, 2, 2, NULL, '0000-00-00 00:00:00', NULL),
(122, 0, 122, 13, 1, 2, 3, NULL, '0000-00-00 00:00:00', NULL),
(123, 0, 123, 13, 2, 2, 4, NULL, '0000-00-00 00:00:00', NULL),
(124, 0, 124, 13, 1, 3, 3, NULL, '0000-00-00 00:00:00', NULL),
(125, 0, 125, 13, 1, 2, 3, NULL, '0000-00-00 00:00:00', NULL),
(126, 0, 126, 13, 3, 2, 3, NULL, '0000-00-00 00:00:00', NULL),
(127, 0, 127, 13, 2, 2, 4, NULL, '0000-00-00 00:00:00', NULL),
(128, 0, 128, 13, 2, 3, 1, NULL, '0000-00-00 00:00:00', NULL),
(129, 0, 129, 13, 3, 1, 2, NULL, '0000-00-00 00:00:00', NULL),
(130, 0, 130, 13, 1, 1, 2, NULL, '0000-00-00 00:00:00', NULL),
(131, 0, 131, 14, 2, 2, 2, NULL, '0000-00-00 00:00:00', NULL),
(132, 0, 132, 14, 2, 3, 2, NULL, '0000-00-00 00:00:00', NULL),
(133, 0, 133, 14, 1, 2, 2, NULL, '0000-00-00 00:00:00', NULL),
(134, 0, 134, 14, 2, 3, 4, NULL, '0000-00-00 00:00:00', NULL),
(135, 0, 135, 14, 2, 2, 2, NULL, '0000-00-00 00:00:00', NULL),
(136, 0, 136, 14, 3, 3, 2, NULL, '0000-00-00 00:00:00', NULL),
(137, 0, 137, 14, 3, 1, 3, NULL, '0000-00-00 00:00:00', NULL),
(138, 0, 138, 14, 2, 1, 4, NULL, '0000-00-00 00:00:00', NULL),
(139, 0, 139, 14, 2, 1, 1, NULL, '0000-00-00 00:00:00', NULL),
(140, 0, 140, 14, 2, 3, 2, NULL, '0000-00-00 00:00:00', NULL),
(141, 0, 141, 15, 3, 2, 3, NULL, '0000-00-00 00:00:00', NULL),
(142, 0, 142, 15, 1, 1, 4, NULL, '0000-00-00 00:00:00', NULL),
(143, 0, 143, 15, 3, 1, 2, NULL, '0000-00-00 00:00:00', NULL),
(144, 0, 144, 15, 1, 1, 1, NULL, '0000-00-00 00:00:00', NULL),
(145, 0, 145, 15, 1, 1, 3, NULL, '0000-00-00 00:00:00', NULL),
(146, 0, 146, 15, 1, 2, 2, NULL, '0000-00-00 00:00:00', NULL),
(147, 0, 147, 15, 2, 3, 2, NULL, '0000-00-00 00:00:00', NULL),
(148, 0, 148, 15, 2, 2, 1, NULL, '0000-00-00 00:00:00', NULL),
(149, 0, 149, 15, 3, 3, 3, NULL, '0000-00-00 00:00:00', NULL),
(150, 0, 150, 15, 3, 2, 4, NULL, '0000-00-00 00:00:00', NULL),
(151, 0, 151, 16, 2, 1, 3, NULL, '0000-00-00 00:00:00', NULL),
(152, 0, 152, 16, 2, 2, 3, NULL, '0000-00-00 00:00:00', NULL),
(153, 0, 153, 16, 1, 1, 3, NULL, '0000-00-00 00:00:00', NULL),
(154, 0, 154, 16, 1, 1, 2, NULL, '0000-00-00 00:00:00', NULL),
(155, 0, 155, 16, 2, 2, 4, NULL, '0000-00-00 00:00:00', NULL),
(156, 0, 156, 16, 3, 2, 4, NULL, '0000-00-00 00:00:00', NULL),
(157, 0, 157, 16, 3, 2, 2, NULL, '0000-00-00 00:00:00', NULL),
(158, 0, 158, 16, 2, 1, 1, NULL, '0000-00-00 00:00:00', NULL),
(159, 0, 159, 16, 1, 1, 2, NULL, '0000-00-00 00:00:00', NULL),
(160, 0, 160, 16, 3, 2, 2, NULL, '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `instituto`
--

CREATE TABLE `instituto` (
  `id` int(10) UNSIGNED NOT NULL,
  `codigo_dane` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nit` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'storage/storage/img/instituto/default.png',
  `municipio_id` int(10) UNSIGNED NOT NULL,
  `tipo_educacion_id` int(10) UNSIGNED NOT NULL,
  `telefono_id` int(10) UNSIGNED NOT NULL,
  `direccion_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `instituto`
--

INSERT INTO `instituto` (`id`, `codigo_dane`, `nit`, `nombre`, `logo`, `municipio_id`, `tipo_educacion_id`, `telefono_id`, `direccion_id`, `user_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '748938336', '1411605627', 'Stark-Spencer', 'storage/storage/img/instituto/test/tommy.png', 28, 1, 1, 63, 4, NULL, '2019-05-19 02:09:11', '2019-05-19 02:09:11'),
(2, '916923707', '543131078', 'Kozey, Stanton and Crooks', 'storage/storage/img/instituto/test/Mitsubishi.png', 21, 1, 2, 89, 3, NULL, '2019-05-19 02:09:12', '2019-05-19 02:09:12'),
(3, '440311485', '1527302608', 'Weimann-Lockman', 'storage/storage/img/instituto/test/ieintec.jpg', 22, 3, 3, 90, 1, NULL, '2019-05-19 02:09:12', '2019-05-19 02:09:12'),
(4, '876170150', '94724820', 'Christiansen and Sons', 'storage/storage/img/instituto/test/tommy.png', 22, 2, 4, 69, 3, NULL, '2019-05-19 02:09:12', '2019-05-19 02:09:12'),
(5, '516550979', '614044246', 'Hermiston Group', 'storage/storage/img/instituto/test/comfandi.jpg', 43, 2, 5, 53, 2, NULL, '2019-05-19 02:09:12', '2019-05-19 02:09:12'),
(6, '447063679', '43971657', 'Klein Ltd', 'storage/storage/img/instituto/test/ieintec.jpg', 44, 3, 6, 3, 1, NULL, '2019-05-19 02:09:12', '2019-05-19 02:09:12'),
(7, '1238714483', '292445439', 'Cummings and Sons', 'storage/storage/img/instituto/test/Target.png', 30, 1, 7, 9, 3, NULL, '2019-05-19 02:09:12', '2019-05-19 02:09:12'),
(8, '1090727615', '1463469155', 'Hermann, Wyman and Wisoky', 'storage/storage/img/instituto/test/ieacademico.png', 44, 1, 8, 40, 2, NULL, '2019-05-19 02:09:12', '2019-05-19 02:09:12'),
(9, '1385735437', '119601008', 'Jacobs-Greenfelder', 'storage/storage/img/instituto/test/uan.png', 7, 3, 9, 66, 2, NULL, '2019-05-19 02:09:12', '2019-05-19 02:09:12'),
(10, '816373647', '433591465', 'Bednar, Cormier and Bayer', 'storage/storage/img/instituto/test/Rolex.png', 9, 2, 10, 67, 4, NULL, '2019-05-19 02:09:12', '2019-05-19 02:09:12'),
(11, '60096156', '1369090804', 'O\'Reilly-Legros', 'storage/storage/img/instituto/test/Target.png', 29, 1, 11, 7, 1, NULL, '2019-05-19 02:09:12', '2019-05-19 02:09:12'),
(12, '1102773233', '107612349', 'Hartmann-Metz', 'storage/storage/img/instituto/test/Apple.png', 38, 3, 12, 84, 4, NULL, '2019-05-19 02:09:12', '2019-05-19 02:09:12'),
(13, '105921004', '179301457', 'Schuster Inc', 'storage/storage/img/instituto/test/Mitsubishi.png', 18, 3, 13, 42, 1, NULL, '2019-05-19 02:09:12', '2019-05-19 02:09:12'),
(14, '552193216', '449655153', 'Bosco-Wunsch', 'storage/storage/img/instituto/test/shell.png', 19, 2, 14, 44, 2, NULL, '2019-05-19 02:09:12', '2019-05-19 02:09:12'),
(15, '764810102', '1077965451', 'Olson, Turcotte and Kling', 'storage/storage/img/instituto/test/Target.png', 9, 2, 15, 90, 4, NULL, '2019-05-19 02:09:13', '2019-05-19 02:09:13'),
(16, '385871000', '536892343', 'Ondricka, Wisozk and Gleichner', 'storage/storage/img/instituto/test/ucdc.png', 25, 3, 16, 66, 2, NULL, '2019-05-19 02:09:13', '2019-05-19 02:09:13'),
(17, '414895291', '1461866082', 'Von-Wisozk', 'storage/storage/img/instituto/test/tommy.png', 13, 3, 17, 46, 3, NULL, '2019-05-19 02:09:13', '2019-05-19 02:09:13'),
(18, '56408267', '820530616', 'Durgan-Nader', 'storage/storage/img/instituto/test/diesel.png', 7, 1, 18, 74, 3, NULL, '2019-05-19 02:09:13', '2019-05-19 02:09:13'),
(19, '501191375', '995891656', 'Thompson Ltd', 'storage/storage/img/instituto/test/Target.png', 37, 2, 19, 53, 4, NULL, '2019-05-19 02:09:13', '2019-05-19 02:09:13'),
(20, '969678458', '143479007', 'Hettinger Inc', 'storage/storage/img/instituto/test/Rolex.png', 49, 1, 20, 20, 4, NULL, '2019-05-19 02:09:13', '2019-05-19 02:09:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jugador`
--

CREATE TABLE `jugador` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre_acudiente` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `datos_basicos_id` int(10) UNSIGNED NOT NULL,
  `telefono_acudiente_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `jugador`
--

INSERT INTO `jugador` (`id`, `nombre_acudiente`, `datos_basicos_id`, `telefono_acudiente_id`, `user_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Myrtie Dietrich', 3, 22, 1, NULL, '2019-05-19 02:09:47', '2019-05-19 02:09:47'),
(2, 'Dr. Leilani Batz DVM', 4, 24, 3, NULL, '2019-05-19 02:09:47', '2019-05-19 02:09:47'),
(3, 'Howell Predovic', 5, 26, 2, NULL, '2019-05-19 02:09:47', '2019-05-19 02:09:47'),
(4, 'Zion Prohaska', 6, 28, 4, NULL, '2019-05-19 02:09:47', '2019-05-19 02:09:47'),
(5, 'Freddie Tillman', 7, 30, 1, NULL, '2019-05-19 02:09:47', '2019-05-19 02:09:47'),
(6, 'Audrey Dicki', 8, 32, 3, NULL, '2019-05-19 02:09:48', '2019-05-19 02:09:48'),
(7, 'Pietro Morissette', 9, 34, 4, NULL, '2019-05-19 02:09:48', '2019-05-19 02:09:48'),
(8, 'Dr. Mustafa Runte Jr.', 10, 36, 4, NULL, '2019-05-19 02:09:48', '2019-05-19 02:09:48'),
(9, 'Sophia Conroy V', 11, 38, 2, NULL, '2019-05-19 02:09:48', '2019-05-19 02:09:48'),
(10, 'Mr. Carey Nitzsche', 12, 40, 4, NULL, '2019-05-19 02:09:48', '2019-05-19 02:09:48'),
(11, 'Rhiannon Hansen', 13, 42, 1, NULL, '2019-05-19 02:09:48', '2019-05-19 02:09:48'),
(12, 'Crawford Weimann', 14, 44, 3, NULL, '2019-05-19 02:09:48', '2019-05-19 02:09:48'),
(13, 'Prof. Mason Lowe', 15, 46, 4, NULL, '2019-05-19 02:09:48', '2019-05-19 02:09:48'),
(14, 'Arvilla Batz', 16, 48, 3, NULL, '2019-05-19 02:09:48', '2019-05-19 02:09:48'),
(15, 'Edison Donnelly', 17, 50, 3, NULL, '2019-05-19 02:09:48', '2019-05-19 02:09:48'),
(16, 'Kathleen Beer', 18, 52, 4, NULL, '2019-05-19 02:09:48', '2019-05-19 02:09:48'),
(17, 'Prof. Dusty Lowe PhD', 19, 54, 1, NULL, '2019-05-19 02:09:48', '2019-05-19 02:09:48'),
(18, 'Ms. Bulah Crona DDS', 20, 56, 1, NULL, '2019-05-19 02:09:48', '2019-05-19 02:09:48'),
(19, 'Prof. Monserrat Klocko', 21, 58, 3, NULL, '2019-05-19 02:09:48', '2019-05-19 02:09:48'),
(20, 'Lenore Cronin I', 22, 60, 3, NULL, '2019-05-19 02:09:48', '2019-05-19 02:09:48'),
(21, 'Jana Willms', 23, 62, 2, NULL, '2019-05-19 02:09:48', '2019-05-19 02:09:48'),
(22, 'Prof. Estel Toy', 24, 64, 3, NULL, '2019-05-19 02:09:48', '2019-05-19 02:09:48'),
(23, 'Alisha Stracke II', 25, 66, 1, NULL, '2019-05-19 02:09:48', '2019-05-19 02:09:48'),
(24, 'Dr. Joany Grant', 26, 68, 1, NULL, '2019-05-19 02:09:49', '2019-05-19 02:09:49'),
(25, 'Joel Crooks', 27, 70, 4, NULL, '2019-05-19 02:09:49', '2019-05-19 02:09:49'),
(26, 'Genesis Orn', 28, 72, 3, NULL, '2019-05-19 02:09:49', '2019-05-19 02:09:49'),
(27, 'Dr. Akeem Bernier', 29, 74, 2, NULL, '2019-05-19 02:09:49', '2019-05-19 02:09:49'),
(28, 'Sarina Hansen', 30, 76, 1, NULL, '2019-05-19 02:09:49', '2019-05-19 02:09:49'),
(29, 'Reagan Fay', 31, 78, 3, NULL, '2019-05-19 02:09:49', '2019-05-19 02:09:49'),
(30, 'Clyde Sipes', 32, 80, 4, NULL, '2019-05-19 02:09:49', '2019-05-19 02:09:49'),
(31, 'Pat Dach', 33, 82, 2, NULL, '2019-05-19 02:09:49', '2019-05-19 02:09:49'),
(32, 'Miss Rebeka Lebsack', 34, 84, 4, NULL, '2019-05-19 02:09:49', '2019-05-19 02:09:49'),
(33, 'Quentin Bergstrom', 35, 86, 4, NULL, '2019-05-19 02:09:49', '2019-05-19 02:09:49'),
(34, 'Tomasa Hyatt', 36, 88, 1, NULL, '2019-05-19 02:09:49', '2019-05-19 02:09:49'),
(35, 'Kaycee Prosacco', 37, 90, 3, NULL, '2019-05-19 02:09:49', '2019-05-19 02:09:49'),
(36, 'Ms. Jazlyn Christiansen DVM', 38, 92, 3, NULL, '2019-05-19 02:09:49', '2019-05-19 02:09:49'),
(37, 'Flossie Dach III', 39, 94, 1, NULL, '2019-05-19 02:09:49', '2019-05-19 02:09:49'),
(38, 'Kaden Schoen', 40, 96, 3, NULL, '2019-05-19 02:09:49', '2019-05-19 02:09:49'),
(39, 'Beulah Gutmann', 41, 98, 1, NULL, '2019-05-19 02:09:50', '2019-05-19 02:09:50'),
(40, 'Dr. Cathryn Jakubowski', 42, 100, 4, NULL, '2019-05-19 02:09:50', '2019-05-19 02:09:50'),
(41, 'Dr. Tyrese Pagac V', 43, 102, 1, NULL, '2019-05-19 02:09:50', '2019-05-19 02:09:50'),
(42, 'Treva Beahan I', 44, 104, 4, NULL, '2019-05-19 02:09:50', '2019-05-19 02:09:50'),
(43, 'Prof. Bettie Gislason IV', 45, 106, 1, NULL, '2019-05-19 02:09:50', '2019-05-19 02:09:50'),
(44, 'Kristina Kilback', 46, 108, 2, NULL, '2019-05-19 02:09:50', '2019-05-19 02:09:50'),
(45, 'Phyllis Champlin', 47, 110, 3, NULL, '2019-05-19 02:09:50', '2019-05-19 02:09:50'),
(46, 'Freida Larkin', 48, 112, 1, NULL, '2019-05-19 02:09:50', '2019-05-19 02:09:50'),
(47, 'Aliya Klein PhD', 49, 114, 4, NULL, '2019-05-19 02:09:50', '2019-05-19 02:09:50'),
(48, 'Mrs. Nya Connelly', 50, 116, 1, NULL, '2019-05-19 02:09:50', '2019-05-19 02:09:50'),
(49, 'Jazlyn Schmitt', 51, 118, 3, NULL, '2019-05-19 02:09:50', '2019-05-19 02:09:50'),
(50, 'Prof. Lorenz Mayert Sr.', 52, 120, 2, NULL, '2019-05-19 02:09:50', '2019-05-19 02:09:50'),
(51, 'Elmore Spinka', 53, 122, 3, NULL, '2019-05-19 02:09:50', '2019-05-19 02:09:50'),
(52, 'Donna Wiza PhD', 54, 124, 3, NULL, '2019-05-19 02:09:50', '2019-05-19 02:09:50'),
(53, 'Ayden Buckridge', 55, 126, 3, NULL, '2019-05-19 02:09:50', '2019-05-19 02:09:50'),
(54, 'Mr. Kellen Haley II', 56, 128, 4, NULL, '2019-05-19 02:09:50', '2019-05-19 02:09:50'),
(55, 'Mrs. Marian Tremblay', 57, 130, 2, NULL, '2019-05-19 02:09:51', '2019-05-19 02:09:51'),
(56, 'Marjory Littel', 58, 132, 3, NULL, '2019-05-19 02:09:51', '2019-05-19 02:09:51'),
(57, 'Eileen Walker', 59, 134, 2, NULL, '2019-05-19 02:09:51', '2019-05-19 02:09:51'),
(58, 'Mr. Kip Gibson I', 60, 136, 2, NULL, '2019-05-19 02:09:51', '2019-05-19 02:09:51'),
(59, 'Antonetta Bayer', 61, 138, 4, NULL, '2019-05-19 02:09:51', '2019-05-19 02:09:51'),
(60, 'Karelle Thompson', 62, 140, 3, NULL, '2019-05-19 02:09:51', '2019-05-19 02:09:51'),
(61, 'Prof. Emmanuelle Windler', 63, 142, 2, NULL, '2019-05-19 02:09:51', '2019-05-19 02:09:51'),
(62, 'Jaydon Abshire', 64, 144, 2, NULL, '2019-05-19 02:09:51', '2019-05-19 02:09:51'),
(63, 'Trey Towne', 65, 146, 2, NULL, '2019-05-19 02:09:51', '2019-05-19 02:09:51'),
(64, 'Mr. Keaton Cruickshank I', 66, 148, 2, NULL, '2019-05-19 02:09:51', '2019-05-19 02:09:51'),
(65, 'Orval Grady', 67, 150, 4, NULL, '2019-05-19 02:09:51', '2019-05-19 02:09:51'),
(66, 'Andreanne Durgan', 68, 152, 2, NULL, '2019-05-19 02:09:51', '2019-05-19 02:09:51'),
(67, 'Miss Shemar Steuber MD', 69, 154, 3, NULL, '2019-05-19 02:09:51', '2019-05-19 02:09:51'),
(68, 'Mr. Sedrick O\'Connell IV', 70, 156, 4, NULL, '2019-05-19 02:09:51', '2019-05-19 02:09:51'),
(69, 'Jody Stark', 71, 158, 2, NULL, '2019-05-19 02:09:51', '2019-05-19 02:09:51'),
(70, 'Blanche Donnelly', 72, 160, 2, NULL, '2019-05-19 02:09:51', '2019-05-19 02:09:51'),
(71, 'Norbert Baumbach', 73, 162, 1, NULL, '2019-05-19 02:09:52', '2019-05-19 02:09:52'),
(72, 'Mitchel Kuhic', 74, 164, 3, NULL, '2019-05-19 02:09:52', '2019-05-19 02:09:52'),
(73, 'Owen Crona', 75, 166, 3, NULL, '2019-05-19 02:09:52', '2019-05-19 02:09:52'),
(74, 'Prof. Vince Volkman', 76, 168, 4, NULL, '2019-05-19 02:09:52', '2019-05-19 02:09:52'),
(75, 'Dina Goldner', 77, 170, 4, NULL, '2019-05-19 02:09:52', '2019-05-19 02:09:52'),
(76, 'Kenyon Grady', 78, 172, 2, NULL, '2019-05-19 02:09:52', '2019-05-19 02:09:52'),
(77, 'Vern Dare', 79, 174, 3, NULL, '2019-05-19 02:09:52', '2019-05-19 02:09:52'),
(78, 'Robert Feeney', 80, 176, 2, NULL, '2019-05-19 02:09:52', '2019-05-19 02:09:52'),
(79, 'Mr. Jamey Collins', 81, 178, 2, NULL, '2019-05-19 02:09:52', '2019-05-19 02:09:52'),
(80, 'Dianna Tromp I', 82, 180, 1, NULL, '2019-05-19 02:09:52', '2019-05-19 02:09:52'),
(81, 'Dr. Chaz Weimann IV', 83, 182, 3, NULL, '2019-05-19 02:09:52', '2019-05-19 02:09:52'),
(82, 'Conner Schneider', 84, 184, 3, NULL, '2019-05-19 02:09:52', '2019-05-19 02:09:52'),
(83, 'Spencer Gleason DVM', 85, 186, 3, NULL, '2019-05-19 02:09:52', '2019-05-19 02:09:52'),
(84, 'Amari Rogahn', 86, 188, 3, NULL, '2019-05-19 02:09:52', '2019-05-19 02:09:52'),
(85, 'May Rau', 87, 190, 3, NULL, '2019-05-19 02:09:52', '2019-05-19 02:09:52'),
(86, 'Irving Krajcik', 88, 192, 3, NULL, '2019-05-19 02:09:52', '2019-05-19 02:09:52'),
(87, 'Fernando Schowalter', 89, 194, 3, NULL, '2019-05-19 02:09:52', '2019-05-19 02:09:52'),
(88, 'Jocelyn Pollich', 90, 196, 2, NULL, '2019-05-19 02:09:52', '2019-05-19 02:09:52'),
(89, 'Dr. Ricardo Spencer PhD', 91, 198, 2, NULL, '2019-05-19 02:09:52', '2019-05-19 02:09:52'),
(90, 'Michaela Schowalter V', 92, 200, 3, NULL, '2019-05-19 02:09:52', '2019-05-19 02:09:52'),
(91, 'Keshaun Graham', 93, 202, 3, NULL, '2019-05-19 02:09:52', '2019-05-19 02:09:52'),
(92, 'Haleigh Schowalter', 94, 204, 4, NULL, '2019-05-19 02:09:52', '2019-05-19 02:09:52'),
(93, 'Mrs. Lexie Koepp', 95, 206, 3, NULL, '2019-05-19 02:09:52', '2019-05-19 02:09:52'),
(94, 'Gerardo Altenwerth', 96, 208, 1, NULL, '2019-05-19 02:09:52', '2019-05-19 02:09:52'),
(95, 'Rodolfo Ruecker', 97, 210, 2, NULL, '2019-05-19 02:09:52', '2019-05-19 02:09:52'),
(96, 'Lupe Ruecker', 98, 212, 2, NULL, '2019-05-19 02:09:53', '2019-05-19 02:09:53'),
(97, 'Prof. Tyler Bernhard MD', 99, 214, 2, NULL, '2019-05-19 02:09:53', '2019-05-19 02:09:53'),
(98, 'Elise Lindgren', 100, 216, 3, NULL, '2019-05-19 02:09:53', '2019-05-19 02:09:53'),
(99, 'Briana Smitham', 101, 218, 1, NULL, '2019-05-19 02:09:53', '2019-05-19 02:09:53'),
(100, 'Harry Corkery', 102, 220, 4, NULL, '2019-05-19 02:09:53', '2019-05-19 02:09:53'),
(101, 'Miss Brenda Koch', 103, 222, 3, NULL, '2019-05-19 02:09:53', '2019-05-19 02:09:53'),
(102, 'Mr. Ronaldo Klocko', 104, 224, 4, NULL, '2019-05-19 02:09:53', '2019-05-19 02:09:53'),
(103, 'Keon Breitenberg', 105, 226, 2, NULL, '2019-05-19 02:09:53', '2019-05-19 02:09:53'),
(104, 'Marianne Hills', 106, 228, 2, NULL, '2019-05-19 02:09:53', '2019-05-19 02:09:53'),
(105, 'Isac Abernathy', 107, 230, 2, NULL, '2019-05-19 02:09:53', '2019-05-19 02:09:53'),
(106, 'Prof. Damon Koepp DVM', 108, 232, 1, NULL, '2019-05-19 02:09:53', '2019-05-19 02:09:53'),
(107, 'Adah Rosenbaum III', 109, 234, 1, NULL, '2019-05-19 02:09:53', '2019-05-19 02:09:53'),
(108, 'Corbin McLaughlin', 110, 236, 1, NULL, '2019-05-19 02:09:53', '2019-05-19 02:09:53'),
(109, 'Miss Mayra Brekke', 111, 238, 4, NULL, '2019-05-19 02:09:53', '2019-05-19 02:09:53'),
(110, 'Dr. Oda Bartoletti I', 112, 240, 4, NULL, '2019-05-19 02:09:53', '2019-05-19 02:09:53'),
(111, 'Maeve Friesen', 113, 242, 2, NULL, '2019-05-19 02:09:53', '2019-05-19 02:09:53'),
(112, 'Urban O\'Connell', 114, 244, 2, NULL, '2019-05-19 02:09:53', '2019-05-19 02:09:53'),
(113, 'Prof. Federico Nader', 115, 246, 3, NULL, '2019-05-19 02:09:53', '2019-05-19 02:09:53'),
(114, 'Fabiola Mraz', 116, 248, 1, NULL, '2019-05-19 02:09:53', '2019-05-19 02:09:53'),
(115, 'Prof. Larue Satterfield Sr.', 117, 250, 1, NULL, '2019-05-19 02:09:53', '2019-05-19 02:09:53'),
(116, 'Cayla O\'Reilly III', 118, 252, 3, NULL, '2019-05-19 02:09:53', '2019-05-19 02:09:53'),
(117, 'Prof. Matteo Glover', 119, 254, 1, NULL, '2019-05-19 02:09:53', '2019-05-19 02:09:53'),
(118, 'Isabell Bednar', 120, 256, 1, NULL, '2019-05-19 02:09:53', '2019-05-19 02:09:53'),
(119, 'Kaela Kirlin', 121, 258, 3, NULL, '2019-05-19 02:09:54', '2019-05-19 02:09:54'),
(120, 'Vena Pacocha', 122, 260, 2, NULL, '2019-05-19 02:09:54', '2019-05-19 02:09:54'),
(121, 'Miss Vivianne Wolf', 123, 262, 3, NULL, '2019-05-19 02:09:54', '2019-05-19 02:09:54'),
(122, 'Brendon Lind', 124, 264, 3, NULL, '2019-05-19 02:09:54', '2019-05-19 02:09:54'),
(123, 'Isaias Zulauf', 125, 266, 3, NULL, '2019-05-19 02:09:54', '2019-05-19 02:09:54'),
(124, 'Adriel Funk', 126, 268, 1, NULL, '2019-05-19 02:09:54', '2019-05-19 02:09:54'),
(125, 'Kim Glover', 127, 270, 4, NULL, '2019-05-19 02:09:54', '2019-05-19 02:09:54'),
(126, 'Maxime Yost', 128, 272, 4, NULL, '2019-05-19 02:09:54', '2019-05-19 02:09:54'),
(127, 'Prof. Abe Friesen III', 129, 274, 4, NULL, '2019-05-19 02:09:54', '2019-05-19 02:09:54'),
(128, 'Laverna Durgan', 130, 276, 1, NULL, '2019-05-19 02:09:54', '2019-05-19 02:09:54'),
(129, 'Reynold Jacobson', 131, 278, 3, NULL, '2019-05-19 02:09:54', '2019-05-19 02:09:54'),
(130, 'Prof. Hulda Sawayn Jr.', 132, 280, 2, NULL, '2019-05-19 02:09:54', '2019-05-19 02:09:54'),
(131, 'Alysson Cassin V', 133, 282, 3, NULL, '2019-05-19 02:09:54', '2019-05-19 02:09:54'),
(132, 'Jaida McLaughlin', 134, 284, 1, NULL, '2019-05-19 02:09:54', '2019-05-19 02:09:54'),
(133, 'Audrey O\'Hara', 135, 286, 3, NULL, '2019-05-19 02:09:54', '2019-05-19 02:09:54'),
(134, 'Laurianne Rippin', 136, 288, 1, NULL, '2019-05-19 02:09:54', '2019-05-19 02:09:54'),
(135, 'Therese Braun', 137, 290, 1, NULL, '2019-05-19 02:09:54', '2019-05-19 02:09:54'),
(136, 'Dennis Pagac', 138, 292, 4, NULL, '2019-05-19 02:09:54', '2019-05-19 02:09:54'),
(137, 'Addison Littel', 139, 294, 4, NULL, '2019-05-19 02:09:54', '2019-05-19 02:09:54'),
(138, 'Noble Dicki', 140, 296, 2, NULL, '2019-05-19 02:09:54', '2019-05-19 02:09:54'),
(139, 'Mrs. Hailee Rau DDS', 141, 298, 1, NULL, '2019-05-19 02:09:54', '2019-05-19 02:09:54'),
(140, 'Greg Brekke', 142, 300, 2, NULL, '2019-05-19 02:09:54', '2019-05-19 02:09:54'),
(141, 'Johathan Buckridge', 143, 302, 2, NULL, '2019-05-19 02:09:54', '2019-05-19 02:09:54'),
(142, 'Laury Jerde', 144, 304, 4, NULL, '2019-05-19 02:09:55', '2019-05-19 02:09:55'),
(143, 'Prof. Hilma Reynolds DVM', 145, 306, 3, NULL, '2019-05-19 02:09:55', '2019-05-19 02:09:55'),
(144, 'Bernadine Barrows', 146, 308, 2, NULL, '2019-05-19 02:09:55', '2019-05-19 02:09:55'),
(145, 'Adam Gutmann II', 147, 310, 4, NULL, '2019-05-19 02:09:55', '2019-05-19 02:09:55'),
(146, 'Fay Tillman', 148, 312, 1, NULL, '2019-05-19 02:09:55', '2019-05-19 02:09:55'),
(147, 'Penelope Mosciski', 149, 314, 1, NULL, '2019-05-19 02:09:55', '2019-05-19 02:09:55'),
(148, 'Quentin Becker', 150, 316, 2, NULL, '2019-05-19 02:09:55', '2019-05-19 02:09:55'),
(149, 'Kylie Strosin', 151, 318, 1, NULL, '2019-05-19 02:09:55', '2019-05-19 02:09:55'),
(150, 'Rosalia Von', 152, 320, 2, NULL, '2019-05-19 02:09:55', '2019-05-19 02:09:55'),
(151, 'Velva Berge', 153, 322, 1, NULL, '2019-05-19 02:09:55', '2019-05-19 02:09:55'),
(152, 'Dr. Howard West', 154, 324, 1, NULL, '2019-05-19 02:09:55', '2019-05-19 02:09:55'),
(153, 'Samir Murazik DDS', 155, 326, 3, NULL, '2019-05-19 02:09:55', '2019-05-19 02:09:55'),
(154, 'Lester O\'Kon', 156, 328, 1, NULL, '2019-05-19 02:09:55', '2019-05-19 02:09:55'),
(155, 'Otha Bradtke Sr.', 157, 330, 1, NULL, '2019-05-19 02:09:55', '2019-05-19 02:09:55'),
(156, 'Emanuel Bechtelar', 158, 332, 2, NULL, '2019-05-19 02:09:55', '2019-05-19 02:09:55'),
(157, 'Ramon Hammes', 159, 334, 2, NULL, '2019-05-19 02:09:55', '2019-05-19 02:09:55'),
(158, 'Precious Jacobi', 160, 336, 4, NULL, '2019-05-19 02:09:55', '2019-05-19 02:09:55'),
(159, 'Claud Johnston', 161, 338, 1, NULL, '2019-05-19 02:09:55', '2019-05-19 02:09:55'),
(160, 'Dorcas Fay', 162, 340, 1, NULL, '2019-05-19 02:09:55', '2019-05-19 02:09:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lugar`
--

CREATE TABLE `lugar` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `municipio_id` int(10) UNSIGNED NOT NULL,
  `direccion_id` int(10) UNSIGNED NOT NULL,
  `telefono_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `lugar`
--

INSERT INTO `lugar` (`id`, `nombre`, `municipio_id`, `direccion_id`, `telefono_id`, `user_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Ursula Trafficway', 11, 32, 341, 1, NULL, '2019-05-19 02:09:58', '2019-05-19 02:09:58'),
(2, 'Cleo Station', 4, 2, 342, 2, NULL, '2019-05-19 02:09:58', '2019-05-19 02:09:58'),
(3, 'Cruz Prairie', 5, 83, 343, 2, NULL, '2019-05-19 02:09:58', '2019-05-19 02:09:58'),
(4, 'Daniel Knolls', 47, 38, 344, 3, NULL, '2019-05-19 02:09:58', '2019-05-19 02:09:58'),
(5, 'Emmerich Common', 35, 58, 345, 2, NULL, '2019-05-19 02:09:58', '2019-05-19 02:09:58'),
(6, 'Johnston Square', 2, 57, 346, 3, NULL, '2019-05-19 02:09:58', '2019-05-19 02:09:58'),
(7, 'Gregoria Village', 34, 78, 347, 3, NULL, '2019-05-19 02:09:58', '2019-05-19 02:09:58'),
(8, 'Monique Estates', 9, 94, 348, 1, NULL, '2019-05-19 02:09:59', '2019-05-19 02:09:59'),
(9, 'Vivian Green', 34, 5, 349, 4, NULL, '2019-05-19 02:09:59', '2019-05-19 02:09:59'),
(10, 'Monahan Rue', 24, 65, 350, 1, NULL, '2019-05-19 02:09:59', '2019-05-19 02:09:59'),
(11, 'Wehner Fort', 33, 27, 351, 1, NULL, '2019-05-19 02:09:59', '2019-05-19 02:09:59'),
(12, 'Hartmann Street', 8, 89, 352, 3, NULL, '2019-05-19 02:09:59', '2019-05-19 02:09:59'),
(13, 'Becker Island', 6, 51, 353, 4, NULL, '2019-05-19 02:09:59', '2019-05-19 02:09:59'),
(14, 'Eichmann Skyway', 23, 8, 354, 3, NULL, '2019-05-19 02:09:59', '2019-05-19 02:09:59'),
(15, 'Chaz Ridge', 11, 26, 355, 4, NULL, '2019-05-19 02:09:59', '2019-05-19 02:09:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2019-05-19 02:08:45', '2019-05-19 02:08:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2019-05-19 02:08:46', '2019-05-19 02:08:46', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2019-05-19 02:08:46', '2019-05-19 02:08:46', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2019-05-19 02:08:46', '2019-05-19 02:08:46', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2019-05-19 02:08:46', '2019-05-19 02:08:46', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2019-05-19 02:08:46', '2019-05-19 02:08:46', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 10, '2019-05-19 02:08:46', '2019-05-19 02:08:46', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 11, '2019-05-19 02:08:46', '2019-05-19 02:08:46', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 12, '2019-05-19 02:08:46', '2019-05-19 02:08:46', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 13, '2019-05-19 02:08:46', '2019-05-19 02:08:46', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2019-05-19 02:08:46', '2019-05-19 02:08:46', 'voyager.settings.index', NULL);

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
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_01_03_203753_create_tipo_sangre_table', 1),
(24, '2019_01_03_204355_create_genero_table', 1),
(25, '2019_01_03_205333_create_eps_table', 1),
(26, '2019_01_03_205725_create_telefono_table', 1),
(27, '2019_01_03_210021_create_direccion_table', 1),
(28, '2019_01_03_210352_create_departamento_table', 1),
(29, '2019_01_03_210515_create_municipio_table', 1),
(30, '2019_01_03_213304_create_datos_basicos_table', 1),
(31, '2019_01_05_221821_add_datos_basicos_id_to_users_table', 1),
(32, '2019_01_05_222412_create_tipo_educacion_table', 1),
(33, '2019_01_05_222641_create_instituto_table', 1),
(34, '2019_01_07_111551_create_colores_table', 1),
(35, '2019_01_07_111807_create_equipo_table', 1),
(36, '2019_01_07_124924_create_tarjetas_table', 1),
(37, '2019_01_07_125707_create_categoria_table', 1),
(38, '2019_01_07_125936_create_tarjetas_categoria_table', 1),
(39, '2019_01_07_130449_create_temporada_table', 1),
(40, '2019_01_07_130952_create_criterio_table', 1),
(41, '2019_01_07_180128_create_torneo_table', 1),
(42, '2019_01_07_180532_create_criterio_torneo_table', 1),
(43, '2019_01_07_181117_create_inscripcion_equipo_table', 1),
(44, '2019_01_07_181628_create_fase_table', 1),
(45, '2019_01_07_181828_create_calendario_table', 1),
(46, '2019_01_07_190058_create_jugador_table', 1),
(47, '2019_01_07_191406_create_programa_table', 1),
(48, '2019_01_07_191744_create_tipo_jugador_table', 1),
(49, '2019_01_07_194323_create_inscripcion_jugador_table', 1),
(50, '2019_01_07_223045_create_arbitro_table', 1),
(51, '2019_01_07_225014_create_arbitro_puesto_table', 1),
(52, '2019_01_07_225642_create_lugar_table', 1),
(53, '2019_01_07_232612_create_enfrentamiento_table', 1),
(54, '2019_01_07_233536_create_enfrentamiento_arbitro_table', 1),
(55, '2019_01_18_165941_create_tiempo_enfrentamiento_table', 1),
(56, '2019_01_18_172623_create_resultado_table', 1),
(57, '2019_01_18_181503_create_estadisticas_table', 1),
(58, '2019_01_18_181929_create_tantos_table', 1),
(59, '2019_01_18_182153_create_faltas_table', 1),
(60, '2019_01_18_182502_create_faltas_tarjeta_table', 1),
(61, '2019_02_18_194506_create_social_accounts_table', 1),
(62, '2019_02_19_021940_add_default_role_table', 1),
(63, '2019_02_19_174751_add_softdelete_to_roles', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipio`
--

CREATE TABLE `municipio` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `departamento_id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `municipio`
--

INSERT INTO `municipio` (`id`, `nombre`, `departamento_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Thoraview', 1, NULL, '2019-05-19 02:08:56', '2019-05-19 02:08:56'),
(2, 'Spinkatown', 2, NULL, '2019-05-19 02:08:56', '2019-05-19 02:08:56'),
(3, 'Fadelland', 3, NULL, '2019-05-19 02:08:56', '2019-05-19 02:08:56'),
(4, 'West Flavio', 4, NULL, '2019-05-19 02:08:56', '2019-05-19 02:08:56'),
(5, 'Jeanieport', 5, NULL, '2019-05-19 02:08:56', '2019-05-19 02:08:56'),
(6, 'New Keatonmouth', 6, NULL, '2019-05-19 02:08:56', '2019-05-19 02:08:56'),
(7, 'Jaskolskiview', 7, NULL, '2019-05-19 02:08:57', '2019-05-19 02:08:57'),
(8, 'Anahimouth', 8, NULL, '2019-05-19 02:08:57', '2019-05-19 02:08:57'),
(9, 'Leonfurt', 9, NULL, '2019-05-19 02:08:57', '2019-05-19 02:08:57'),
(10, 'Hillsborough', 10, NULL, '2019-05-19 02:08:57', '2019-05-19 02:08:57'),
(11, 'Ruthiestad', 11, NULL, '2019-05-19 02:08:57', '2019-05-19 02:08:57'),
(12, 'Hermannburgh', 12, NULL, '2019-05-19 02:08:57', '2019-05-19 02:08:57'),
(13, 'Magnusland', 13, NULL, '2019-05-19 02:08:57', '2019-05-19 02:08:57'),
(14, 'Clarkport', 14, NULL, '2019-05-19 02:08:57', '2019-05-19 02:08:57'),
(15, 'South Jaeden', 15, NULL, '2019-05-19 02:08:57', '2019-05-19 02:08:57'),
(16, 'Rathfurt', 16, NULL, '2019-05-19 02:08:57', '2019-05-19 02:08:57'),
(17, 'New Jewel', 17, NULL, '2019-05-19 02:08:57', '2019-05-19 02:08:57'),
(18, 'North Carloberg', 18, NULL, '2019-05-19 02:08:57', '2019-05-19 02:08:57'),
(19, 'Balistreribury', 19, NULL, '2019-05-19 02:08:57', '2019-05-19 02:08:57'),
(20, 'Kuhicfurt', 20, NULL, '2019-05-19 02:08:57', '2019-05-19 02:08:57'),
(21, 'Bernhardfort', 21, NULL, '2019-05-19 02:08:57', '2019-05-19 02:08:57'),
(22, 'Helenahaven', 22, NULL, '2019-05-19 02:08:57', '2019-05-19 02:08:57'),
(23, 'Gaylordland', 23, NULL, '2019-05-19 02:08:58', '2019-05-19 02:08:58'),
(24, 'Lake Bradlystad', 24, NULL, '2019-05-19 02:08:58', '2019-05-19 02:08:58'),
(25, 'Charleyfurt', 25, NULL, '2019-05-19 02:08:58', '2019-05-19 02:08:58'),
(26, 'Gleichnerside', 26, NULL, '2019-05-19 02:08:58', '2019-05-19 02:08:58'),
(27, 'Cruzberg', 27, NULL, '2019-05-19 02:08:58', '2019-05-19 02:08:58'),
(28, 'New June', 28, NULL, '2019-05-19 02:08:58', '2019-05-19 02:08:58'),
(29, 'South Fay', 29, NULL, '2019-05-19 02:08:58', '2019-05-19 02:08:58'),
(30, 'West Alejandrin', 30, NULL, '2019-05-19 02:08:58', '2019-05-19 02:08:58'),
(31, 'Dellchester', 31, NULL, '2019-05-19 02:08:58', '2019-05-19 02:08:58'),
(32, 'Huldaburgh', 32, NULL, '2019-05-19 02:08:58', '2019-05-19 02:08:58'),
(33, 'South Garthberg', 33, NULL, '2019-05-19 02:08:58', '2019-05-19 02:08:58'),
(34, 'Predovicmouth', 34, NULL, '2019-05-19 02:08:58', '2019-05-19 02:08:58'),
(35, 'Wittingview', 35, NULL, '2019-05-19 02:08:58', '2019-05-19 02:08:58'),
(36, 'West Kennedy', 36, NULL, '2019-05-19 02:08:58', '2019-05-19 02:08:58'),
(37, 'West Arianemouth', 37, NULL, '2019-05-19 02:08:58', '2019-05-19 02:08:58'),
(38, 'Shayleeton', 38, NULL, '2019-05-19 02:08:58', '2019-05-19 02:08:58'),
(39, 'Mitchellside', 39, NULL, '2019-05-19 02:08:59', '2019-05-19 02:08:59'),
(40, 'Jamarborough', 40, NULL, '2019-05-19 02:08:59', '2019-05-19 02:08:59'),
(41, 'Zboncakbury', 41, NULL, '2019-05-19 02:08:59', '2019-05-19 02:08:59'),
(42, 'New Vanceside', 42, NULL, '2019-05-19 02:08:59', '2019-05-19 02:08:59'),
(43, 'Volkmanton', 43, NULL, '2019-05-19 02:08:59', '2019-05-19 02:08:59'),
(44, 'Wintheiserport', 44, NULL, '2019-05-19 02:08:59', '2019-05-19 02:08:59'),
(45, 'West Rose', 45, NULL, '2019-05-19 02:08:59', '2019-05-19 02:08:59'),
(46, 'Riceside', 46, NULL, '2019-05-19 02:08:59', '2019-05-19 02:08:59'),
(47, 'Hattiebury', 47, NULL, '2019-05-19 02:08:59', '2019-05-19 02:08:59'),
(48, 'Abetown', 48, NULL, '2019-05-19 02:08:59', '2019-05-19 02:08:59'),
(49, 'Kuvalisborough', 49, NULL, '2019-05-19 02:08:59', '2019-05-19 02:08:59'),
(50, 'Hoythaven', 50, NULL, '2019-05-19 02:08:59', '2019-05-19 02:08:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2019-05-19 02:08:47', '2019-05-19 02:08:47'),
(2, 'browse_bread', NULL, '2019-05-19 02:08:47', '2019-05-19 02:08:47'),
(3, 'browse_database', NULL, '2019-05-19 02:08:47', '2019-05-19 02:08:47'),
(4, 'browse_media', NULL, '2019-05-19 02:08:47', '2019-05-19 02:08:47'),
(5, 'browse_compass', NULL, '2019-05-19 02:08:47', '2019-05-19 02:08:47'),
(6, 'browse_menus', 'menus', '2019-05-19 02:08:47', '2019-05-19 02:08:47'),
(7, 'read_menus', 'menus', '2019-05-19 02:08:47', '2019-05-19 02:08:47'),
(8, 'edit_menus', 'menus', '2019-05-19 02:08:47', '2019-05-19 02:08:47'),
(9, 'add_menus', 'menus', '2019-05-19 02:08:47', '2019-05-19 02:08:47'),
(10, 'delete_menus', 'menus', '2019-05-19 02:08:48', '2019-05-19 02:08:48'),
(11, 'browse_roles', 'roles', '2019-05-19 02:08:48', '2019-05-19 02:08:48'),
(12, 'read_roles', 'roles', '2019-05-19 02:08:48', '2019-05-19 02:08:48'),
(13, 'edit_roles', 'roles', '2019-05-19 02:08:48', '2019-05-19 02:08:48'),
(14, 'add_roles', 'roles', '2019-05-19 02:08:48', '2019-05-19 02:08:48'),
(15, 'delete_roles', 'roles', '2019-05-19 02:08:48', '2019-05-19 02:08:48'),
(16, 'browse_users', 'users', '2019-05-19 02:08:48', '2019-05-19 02:08:48'),
(17, 'read_users', 'users', '2019-05-19 02:08:48', '2019-05-19 02:08:48'),
(18, 'edit_users', 'users', '2019-05-19 02:08:48', '2019-05-19 02:08:48'),
(19, 'add_users', 'users', '2019-05-19 02:08:48', '2019-05-19 02:08:48'),
(20, 'delete_users', 'users', '2019-05-19 02:08:48', '2019-05-19 02:08:48'),
(21, 'browse_settings', 'settings', '2019-05-19 02:08:48', '2019-05-19 02:08:48'),
(22, 'read_settings', 'settings', '2019-05-19 02:08:48', '2019-05-19 02:08:48'),
(23, 'edit_settings', 'settings', '2019-05-19 02:08:48', '2019-05-19 02:08:48'),
(24, 'add_settings', 'settings', '2019-05-19 02:08:48', '2019-05-19 02:08:48'),
(25, 'delete_settings', 'settings', '2019-05-19 02:08:49', '2019-05-19 02:08:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `programa`
--

CREATE TABLE `programa` (
  `id` int(10) UNSIGNED NOT NULL,
  `programa` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `programa`
--

INSERT INTO `programa` (`id`, `programa`, `descripcion`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Ingenieria en Sistemas', 'Ingeniera', NULL, '2019-05-19 02:09:56', '2019-05-19 02:09:56'),
(2, 'Contabilidad', 'Profesional', NULL, '2019-05-19 02:09:56', '2019-05-19 02:09:56'),
(3, 'Turismo', 'Profesional', NULL, '2019-05-19 02:09:56', '2019-05-19 02:09:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resultado`
--

CREATE TABLE `resultado` (
  `id` int(10) UNSIGNED NOT NULL,
  `enfrentamiento_id` int(10) UNSIGNED NOT NULL,
  `resultado_local` smallint(6) DEFAULT '0',
  `resultado_visitante` smallint(6) DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `resultado`
--

INSERT INTO `resultado` (`id`, `enfrentamiento_id`, `resultado_local`, `resultado_visitante`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 1, NULL, NULL, NULL),
(2, 2, 1, 2, NULL, NULL, NULL),
(3, 3, 2, 1, NULL, NULL, NULL),
(4, 4, 3, 0, NULL, NULL, NULL),
(5, 5, 3, 1, NULL, NULL, NULL),
(6, 6, 4, 1, NULL, NULL, NULL),
(7, 7, 5, 3, NULL, NULL, NULL),
(8, 8, 1, 0, NULL, NULL, NULL),
(9, 9, 4, 2, NULL, NULL, NULL),
(10, 10, 2, 1, NULL, NULL, NULL),
(11, 11, 0, 4, NULL, NULL, NULL),
(12, 12, 0, 1, NULL, NULL, NULL),
(13, 13, 2, 3, NULL, NULL, NULL),
(14, 14, 0, 1, NULL, NULL, NULL),
(15, 15, 2, 3, NULL, NULL, NULL),
(16, 16, 0, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'admin', 'Administrator', '2019-05-19 02:08:47', '2019-05-19 02:08:47', NULL),
(2, 'user', 'Normal User', '2019-05-19 02:08:47', '2019-05-19 02:08:47', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `social_accounts`
--

CREATE TABLE `social_accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `provider_user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tantos`
--

CREATE TABLE `tantos` (
  `id` int(10) UNSIGNED NOT NULL,
  `estadisticas_id` int(10) UNSIGNED NOT NULL,
  `tiempo_enfrentamiento_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `minuto` time NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarjetas`
--

CREATE TABLE `tarjetas` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tarjetas`
--

INSERT INTO `tarjetas` (`id`, `nombre`, `descripcion`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Amarilla', 'Tarjeta Amarilla', NULL, '2019-05-19 02:09:16', '2019-05-19 02:09:16'),
(2, 'Roja', 'Tarjeta Roja', NULL, '2019-05-19 02:09:16', '2019-05-19 02:09:16'),
(3, 'Azul', 'Tarjeta Azul', NULL, '2019-05-19 02:09:16', '2019-05-19 02:09:16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarjetas_categoria`
--

CREATE TABLE `tarjetas_categoria` (
  `id` int(10) UNSIGNED NOT NULL,
  `tarjeta_id` int(10) UNSIGNED NOT NULL,
  `categoria_id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tarjetas_categoria`
--

INSERT INTO `tarjetas_categoria` (`id`, `tarjeta_id`, `categoria_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, '2019-05-19 02:09:17', '2019-05-19 02:09:17'),
(2, 2, 1, NULL, '2019-05-19 02:09:17', '2019-05-19 02:09:17'),
(3, 3, 1, NULL, '2019-05-19 02:09:17', '2019-05-19 02:09:17'),
(4, 1, 2, NULL, '2019-05-19 02:09:17', '2019-05-19 02:09:17'),
(5, 2, 2, NULL, '2019-05-19 02:09:17', '2019-05-19 02:09:17'),
(6, 3, 2, NULL, '2019-05-19 02:09:17', '2019-05-19 02:09:17'),
(7, 1, 3, NULL, '2019-05-19 02:09:17', '2019-05-19 02:09:17'),
(8, 2, 3, NULL, '2019-05-19 02:09:18', '2019-05-19 02:09:18'),
(9, 3, 3, NULL, '2019-05-19 02:09:18', '2019-05-19 02:09:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `telefono`
--

CREATE TABLE `telefono` (
  `id` int(10) UNSIGNED NOT NULL,
  `numero` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0000000000',
  `tipo` enum('Celular','Fijo') COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `telefono`
--

INSERT INTO `telefono` (`id`, `numero`, `tipo`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '71917533', 'Celular', NULL, '2019-05-19 02:09:10', '2019-05-19 02:09:10'),
(2, '87153796', 'Celular', NULL, '2019-05-19 02:09:10', '2019-05-19 02:09:10'),
(3, '197037208', 'Fijo', NULL, '2019-05-19 02:09:10', '2019-05-19 02:09:10'),
(4, '68248938', 'Fijo', NULL, '2019-05-19 02:09:10', '2019-05-19 02:09:10'),
(5, '311987138', 'Celular', NULL, '2019-05-19 02:09:10', '2019-05-19 02:09:10'),
(6, '43185967', 'Fijo', NULL, '2019-05-19 02:09:11', '2019-05-19 02:09:11'),
(7, '259385382', 'Celular', NULL, '2019-05-19 02:09:11', '2019-05-19 02:09:11'),
(8, '139934618', 'Celular', NULL, '2019-05-19 02:09:11', '2019-05-19 02:09:11'),
(9, '103755794', 'Fijo', NULL, '2019-05-19 02:09:11', '2019-05-19 02:09:11'),
(10, '153924137', 'Fijo', NULL, '2019-05-19 02:09:11', '2019-05-19 02:09:11'),
(11, '89296763', 'Fijo', NULL, '2019-05-19 02:09:11', '2019-05-19 02:09:11'),
(12, '203791208', 'Fijo', NULL, '2019-05-19 02:09:11', '2019-05-19 02:09:11'),
(13, '280507557', 'Celular', NULL, '2019-05-19 02:09:11', '2019-05-19 02:09:11'),
(14, '142187583', 'Celular', NULL, '2019-05-19 02:09:11', '2019-05-19 02:09:11'),
(15, '83930585', 'Fijo', NULL, '2019-05-19 02:09:11', '2019-05-19 02:09:11'),
(16, '311214485', 'Fijo', NULL, '2019-05-19 02:09:11', '2019-05-19 02:09:11'),
(17, '159336332', 'Celular', NULL, '2019-05-19 02:09:11', '2019-05-19 02:09:11'),
(18, '117380141', 'Fijo', NULL, '2019-05-19 02:09:11', '2019-05-19 02:09:11'),
(19, '144401521', 'Celular', NULL, '2019-05-19 02:09:11', '2019-05-19 02:09:11'),
(20, '179248018', 'Fijo', NULL, '2019-05-19 02:09:11', '2019-05-19 02:09:11'),
(21, '56596882', 'Celular', NULL, '2019-05-19 02:09:19', '2019-05-19 02:09:19'),
(22, '137641950', 'Celular', NULL, '2019-05-19 02:09:19', '2019-05-19 02:09:19'),
(23, '218039953', 'Fijo', NULL, '2019-05-19 02:09:19', '2019-05-19 02:09:19'),
(24, '185974064', 'Fijo', NULL, '2019-05-19 02:09:19', '2019-05-19 02:09:19'),
(25, '223906571', 'Fijo', NULL, '2019-05-19 02:09:20', '2019-05-19 02:09:20'),
(26, '194430643', 'Fijo', NULL, '2019-05-19 02:09:20', '2019-05-19 02:09:20'),
(27, '236360394', 'Fijo', NULL, '2019-05-19 02:09:20', '2019-05-19 02:09:20'),
(28, '57447745', 'Celular', NULL, '2019-05-19 02:09:20', '2019-05-19 02:09:20'),
(29, '72787151', 'Celular', NULL, '2019-05-19 02:09:20', '2019-05-19 02:09:20'),
(30, '46214321', 'Celular', NULL, '2019-05-19 02:09:20', '2019-05-19 02:09:20'),
(31, '129262618', 'Celular', NULL, '2019-05-19 02:09:20', '2019-05-19 02:09:20'),
(32, '254889710', 'Celular', NULL, '2019-05-19 02:09:20', '2019-05-19 02:09:20'),
(33, '290552508', 'Celular', NULL, '2019-05-19 02:09:20', '2019-05-19 02:09:20'),
(34, '43367108', 'Fijo', NULL, '2019-05-19 02:09:20', '2019-05-19 02:09:20'),
(35, '72289881', 'Fijo', NULL, '2019-05-19 02:09:20', '2019-05-19 02:09:20'),
(36, '200817553', 'Fijo', NULL, '2019-05-19 02:09:21', '2019-05-19 02:09:21'),
(37, '269021563', 'Celular', NULL, '2019-05-19 02:09:21', '2019-05-19 02:09:21'),
(38, '89604896', 'Celular', NULL, '2019-05-19 02:09:21', '2019-05-19 02:09:21'),
(39, '245742522', 'Fijo', NULL, '2019-05-19 02:09:21', '2019-05-19 02:09:21'),
(40, '109899077', 'Celular', NULL, '2019-05-19 02:09:21', '2019-05-19 02:09:21'),
(41, '311962325', 'Fijo', NULL, '2019-05-19 02:09:21', '2019-05-19 02:09:21'),
(42, '114821231', 'Fijo', NULL, '2019-05-19 02:09:21', '2019-05-19 02:09:21'),
(43, '44843849', 'Celular', NULL, '2019-05-19 02:09:21', '2019-05-19 02:09:21'),
(44, '80046991', 'Celular', NULL, '2019-05-19 02:09:21', '2019-05-19 02:09:21'),
(45, '318344110', 'Fijo', NULL, '2019-05-19 02:09:21', '2019-05-19 02:09:21'),
(46, '216075401', 'Fijo', NULL, '2019-05-19 02:09:21', '2019-05-19 02:09:21'),
(47, '46910778', 'Fijo', NULL, '2019-05-19 02:09:22', '2019-05-19 02:09:22'),
(48, '42005601', 'Celular', NULL, '2019-05-19 02:09:22', '2019-05-19 02:09:22'),
(49, '223350721', 'Fijo', NULL, '2019-05-19 02:09:22', '2019-05-19 02:09:22'),
(50, '101651563', 'Fijo', NULL, '2019-05-19 02:09:22', '2019-05-19 02:09:22'),
(51, '52480293', 'Fijo', NULL, '2019-05-19 02:09:22', '2019-05-19 02:09:22'),
(52, '293076737', 'Celular', NULL, '2019-05-19 02:09:22', '2019-05-19 02:09:22'),
(53, '272054447', 'Celular', NULL, '2019-05-19 02:09:22', '2019-05-19 02:09:22'),
(54, '71927172', 'Fijo', NULL, '2019-05-19 02:09:22', '2019-05-19 02:09:22'),
(55, '227980498', 'Fijo', NULL, '2019-05-19 02:09:22', '2019-05-19 02:09:22'),
(56, '152802867', 'Fijo', NULL, '2019-05-19 02:09:22', '2019-05-19 02:09:22'),
(57, '78897799', 'Celular', NULL, '2019-05-19 02:09:22', '2019-05-19 02:09:22'),
(58, '232447865', 'Celular', NULL, '2019-05-19 02:09:22', '2019-05-19 02:09:22'),
(59, '129148592', 'Fijo', NULL, '2019-05-19 02:09:22', '2019-05-19 02:09:22'),
(60, '231054768', 'Celular', NULL, '2019-05-19 02:09:22', '2019-05-19 02:09:22'),
(61, '158111018', 'Fijo', NULL, '2019-05-19 02:09:23', '2019-05-19 02:09:23'),
(62, '245270256', 'Celular', NULL, '2019-05-19 02:09:23', '2019-05-19 02:09:23'),
(63, '246527706', 'Celular', NULL, '2019-05-19 02:09:23', '2019-05-19 02:09:23'),
(64, '82755950', 'Celular', NULL, '2019-05-19 02:09:23', '2019-05-19 02:09:23'),
(65, '105503558', 'Fijo', NULL, '2019-05-19 02:09:23', '2019-05-19 02:09:23'),
(66, '265839218', 'Celular', NULL, '2019-05-19 02:09:23', '2019-05-19 02:09:23'),
(67, '76834924', 'Fijo', NULL, '2019-05-19 02:09:23', '2019-05-19 02:09:23'),
(68, '242246149', 'Fijo', NULL, '2019-05-19 02:09:23', '2019-05-19 02:09:23'),
(69, '131344594', 'Celular', NULL, '2019-05-19 02:09:23', '2019-05-19 02:09:23'),
(70, '202436470', 'Fijo', NULL, '2019-05-19 02:09:23', '2019-05-19 02:09:23'),
(71, '67322133', 'Fijo', NULL, '2019-05-19 02:09:23', '2019-05-19 02:09:23'),
(72, '61123878', 'Fijo', NULL, '2019-05-19 02:09:24', '2019-05-19 02:09:24'),
(73, '205727315', 'Fijo', NULL, '2019-05-19 02:09:24', '2019-05-19 02:09:24'),
(74, '263231347', 'Celular', NULL, '2019-05-19 02:09:24', '2019-05-19 02:09:24'),
(75, '85603675', 'Fijo', NULL, '2019-05-19 02:09:24', '2019-05-19 02:09:24'),
(76, '35440799', 'Fijo', NULL, '2019-05-19 02:09:24', '2019-05-19 02:09:24'),
(77, '121708299', 'Celular', NULL, '2019-05-19 02:09:24', '2019-05-19 02:09:24'),
(78, '258119167', 'Celular', NULL, '2019-05-19 02:09:24', '2019-05-19 02:09:24'),
(79, '218150377', 'Fijo', NULL, '2019-05-19 02:09:24', '2019-05-19 02:09:24'),
(80, '97093486', 'Celular', NULL, '2019-05-19 02:09:24', '2019-05-19 02:09:24'),
(81, '153306146', 'Celular', NULL, '2019-05-19 02:09:24', '2019-05-19 02:09:24'),
(82, '307249882', 'Celular', NULL, '2019-05-19 02:09:24', '2019-05-19 02:09:24'),
(83, '191965998', 'Celular', NULL, '2019-05-19 02:09:24', '2019-05-19 02:09:24'),
(84, '182461539', 'Celular', NULL, '2019-05-19 02:09:25', '2019-05-19 02:09:25'),
(85, '123577406', 'Fijo', NULL, '2019-05-19 02:09:25', '2019-05-19 02:09:25'),
(86, '101068674', 'Celular', NULL, '2019-05-19 02:09:25', '2019-05-19 02:09:25'),
(87, '102033795', 'Celular', NULL, '2019-05-19 02:09:25', '2019-05-19 02:09:25'),
(88, '123408003', 'Celular', NULL, '2019-05-19 02:09:25', '2019-05-19 02:09:25'),
(89, '105076151', 'Fijo', NULL, '2019-05-19 02:09:25', '2019-05-19 02:09:25'),
(90, '40402251', 'Fijo', NULL, '2019-05-19 02:09:25', '2019-05-19 02:09:25'),
(91, '68008680', 'Fijo', NULL, '2019-05-19 02:09:25', '2019-05-19 02:09:25'),
(92, '162511728', 'Fijo', NULL, '2019-05-19 02:09:25', '2019-05-19 02:09:25'),
(93, '91982615', 'Celular', NULL, '2019-05-19 02:09:25', '2019-05-19 02:09:25'),
(94, '171317132', 'Celular', NULL, '2019-05-19 02:09:25', '2019-05-19 02:09:25'),
(95, '208819015', 'Celular', NULL, '2019-05-19 02:09:25', '2019-05-19 02:09:25'),
(96, '66652493', 'Celular', NULL, '2019-05-19 02:09:25', '2019-05-19 02:09:25'),
(97, '32853118', 'Fijo', NULL, '2019-05-19 02:09:25', '2019-05-19 02:09:25'),
(98, '103050230', 'Celular', NULL, '2019-05-19 02:09:26', '2019-05-19 02:09:26'),
(99, '251538848', 'Celular', NULL, '2019-05-19 02:09:26', '2019-05-19 02:09:26'),
(100, '121571089', 'Fijo', NULL, '2019-05-19 02:09:26', '2019-05-19 02:09:26'),
(101, '215515631', 'Celular', NULL, '2019-05-19 02:09:26', '2019-05-19 02:09:26'),
(102, '117757731', 'Celular', NULL, '2019-05-19 02:09:26', '2019-05-19 02:09:26'),
(103, '82608756', 'Fijo', NULL, '2019-05-19 02:09:26', '2019-05-19 02:09:26'),
(104, '158259595', 'Fijo', NULL, '2019-05-19 02:09:26', '2019-05-19 02:09:26'),
(105, '298608048', 'Celular', NULL, '2019-05-19 02:09:26', '2019-05-19 02:09:26'),
(106, '92464445', 'Celular', NULL, '2019-05-19 02:09:26', '2019-05-19 02:09:26'),
(107, '297532042', 'Celular', NULL, '2019-05-19 02:09:26', '2019-05-19 02:09:26'),
(108, '264757274', 'Fijo', NULL, '2019-05-19 02:09:26', '2019-05-19 02:09:26'),
(109, '76978247', 'Celular', NULL, '2019-05-19 02:09:26', '2019-05-19 02:09:26'),
(110, '243284765', 'Celular', NULL, '2019-05-19 02:09:27', '2019-05-19 02:09:27'),
(111, '43277967', 'Celular', NULL, '2019-05-19 02:09:27', '2019-05-19 02:09:27'),
(112, '87847453', 'Celular', NULL, '2019-05-19 02:09:27', '2019-05-19 02:09:27'),
(113, '57337806', 'Celular', NULL, '2019-05-19 02:09:27', '2019-05-19 02:09:27'),
(114, '95236585', 'Celular', NULL, '2019-05-19 02:09:27', '2019-05-19 02:09:27'),
(115, '204610435', 'Celular', NULL, '2019-05-19 02:09:27', '2019-05-19 02:09:27'),
(116, '170870796', 'Fijo', NULL, '2019-05-19 02:09:27', '2019-05-19 02:09:27'),
(117, '253038170', 'Fijo', NULL, '2019-05-19 02:09:27', '2019-05-19 02:09:27'),
(118, '80981792', 'Fijo', NULL, '2019-05-19 02:09:27', '2019-05-19 02:09:27'),
(119, '309760723', 'Celular', NULL, '2019-05-19 02:09:27', '2019-05-19 02:09:27'),
(120, '157855218', 'Fijo', NULL, '2019-05-19 02:09:27', '2019-05-19 02:09:27'),
(121, '143954927', 'Fijo', NULL, '2019-05-19 02:09:27', '2019-05-19 02:09:27'),
(122, '47297739', 'Fijo', NULL, '2019-05-19 02:09:28', '2019-05-19 02:09:28'),
(123, '107827216', 'Fijo', NULL, '2019-05-19 02:09:28', '2019-05-19 02:09:28'),
(124, '105163474', 'Fijo', NULL, '2019-05-19 02:09:28', '2019-05-19 02:09:28'),
(125, '60591804', 'Fijo', NULL, '2019-05-19 02:09:28', '2019-05-19 02:09:28'),
(126, '289036555', 'Fijo', NULL, '2019-05-19 02:09:28', '2019-05-19 02:09:28'),
(127, '81184933', 'Fijo', NULL, '2019-05-19 02:09:28', '2019-05-19 02:09:28'),
(128, '145218678', 'Fijo', NULL, '2019-05-19 02:09:28', '2019-05-19 02:09:28'),
(129, '103853863', 'Fijo', NULL, '2019-05-19 02:09:28', '2019-05-19 02:09:28'),
(130, '116429791', 'Celular', NULL, '2019-05-19 02:09:28', '2019-05-19 02:09:28'),
(131, '33127943', 'Celular', NULL, '2019-05-19 02:09:28', '2019-05-19 02:09:28'),
(132, '115059942', 'Celular', NULL, '2019-05-19 02:09:28', '2019-05-19 02:09:28'),
(133, '207560087', 'Celular', NULL, '2019-05-19 02:09:28', '2019-05-19 02:09:28'),
(134, '68933205', 'Celular', NULL, '2019-05-19 02:09:28', '2019-05-19 02:09:28'),
(135, '110656816', 'Fijo', NULL, '2019-05-19 02:09:29', '2019-05-19 02:09:29'),
(136, '256813017', 'Celular', NULL, '2019-05-19 02:09:29', '2019-05-19 02:09:29'),
(137, '280469362', 'Fijo', NULL, '2019-05-19 02:09:29', '2019-05-19 02:09:29'),
(138, '130187345', 'Fijo', NULL, '2019-05-19 02:09:29', '2019-05-19 02:09:29'),
(139, '264714586', 'Celular', NULL, '2019-05-19 02:09:29', '2019-05-19 02:09:29'),
(140, '166321537', 'Fijo', NULL, '2019-05-19 02:09:29', '2019-05-19 02:09:29'),
(141, '300940922', 'Celular', NULL, '2019-05-19 02:09:29', '2019-05-19 02:09:29'),
(142, '167905668', 'Fijo', NULL, '2019-05-19 02:09:29', '2019-05-19 02:09:29'),
(143, '273451617', 'Fijo', NULL, '2019-05-19 02:09:29', '2019-05-19 02:09:29'),
(144, '78257079', 'Celular', NULL, '2019-05-19 02:09:29', '2019-05-19 02:09:29'),
(145, '69056000', 'Fijo', NULL, '2019-05-19 02:09:29', '2019-05-19 02:09:29'),
(146, '181698605', 'Fijo', NULL, '2019-05-19 02:09:29', '2019-05-19 02:09:29'),
(147, '106721936', 'Celular', NULL, '2019-05-19 02:09:29', '2019-05-19 02:09:29'),
(148, '150218401', 'Fijo', NULL, '2019-05-19 02:09:30', '2019-05-19 02:09:30'),
(149, '217535237', 'Celular', NULL, '2019-05-19 02:09:30', '2019-05-19 02:09:30'),
(150, '195654759', 'Fijo', NULL, '2019-05-19 02:09:30', '2019-05-19 02:09:30'),
(151, '115378712', 'Celular', NULL, '2019-05-19 02:09:30', '2019-05-19 02:09:30'),
(152, '122061806', 'Fijo', NULL, '2019-05-19 02:09:30', '2019-05-19 02:09:30'),
(153, '202298480', 'Celular', NULL, '2019-05-19 02:09:30', '2019-05-19 02:09:30'),
(154, '167897892', 'Fijo', NULL, '2019-05-19 02:09:30', '2019-05-19 02:09:30'),
(155, '161333104', 'Fijo', NULL, '2019-05-19 02:09:30', '2019-05-19 02:09:30'),
(156, '238001580', 'Celular', NULL, '2019-05-19 02:09:30', '2019-05-19 02:09:30'),
(157, '121907664', 'Celular', NULL, '2019-05-19 02:09:30', '2019-05-19 02:09:30'),
(158, '307633870', 'Celular', NULL, '2019-05-19 02:09:30', '2019-05-19 02:09:30'),
(159, '214717290', 'Celular', NULL, '2019-05-19 02:09:31', '2019-05-19 02:09:31'),
(160, '261442530', 'Fijo', NULL, '2019-05-19 02:09:31', '2019-05-19 02:09:31'),
(161, '160797064', 'Fijo', NULL, '2019-05-19 02:09:31', '2019-05-19 02:09:31'),
(162, '73989284', 'Celular', NULL, '2019-05-19 02:09:31', '2019-05-19 02:09:31'),
(163, '185738059', 'Celular', NULL, '2019-05-19 02:09:31', '2019-05-19 02:09:31'),
(164, '87773379', 'Fijo', NULL, '2019-05-19 02:09:31', '2019-05-19 02:09:31'),
(165, '240200877', 'Fijo', NULL, '2019-05-19 02:09:31', '2019-05-19 02:09:31'),
(166, '155370350', 'Celular', NULL, '2019-05-19 02:09:31', '2019-05-19 02:09:31'),
(167, '136153599', 'Fijo', NULL, '2019-05-19 02:09:31', '2019-05-19 02:09:31'),
(168, '149788075', 'Celular', NULL, '2019-05-19 02:09:31', '2019-05-19 02:09:31'),
(169, '160161195', 'Fijo', NULL, '2019-05-19 02:09:31', '2019-05-19 02:09:31'),
(170, '109743210', 'Fijo', NULL, '2019-05-19 02:09:31', '2019-05-19 02:09:31'),
(171, '290289806', 'Fijo', NULL, '2019-05-19 02:09:31', '2019-05-19 02:09:31'),
(172, '284432171', 'Fijo', NULL, '2019-05-19 02:09:31', '2019-05-19 02:09:31'),
(173, '257906408', 'Celular', NULL, '2019-05-19 02:09:31', '2019-05-19 02:09:31'),
(174, '288592099', 'Celular', NULL, '2019-05-19 02:09:32', '2019-05-19 02:09:32'),
(175, '201006359', 'Celular', NULL, '2019-05-19 02:09:32', '2019-05-19 02:09:32'),
(176, '133349991', 'Fijo', NULL, '2019-05-19 02:09:32', '2019-05-19 02:09:32'),
(177, '199333711', 'Celular', NULL, '2019-05-19 02:09:32', '2019-05-19 02:09:32'),
(178, '175596270', 'Fijo', NULL, '2019-05-19 02:09:32', '2019-05-19 02:09:32'),
(179, '168616686', 'Fijo', NULL, '2019-05-19 02:09:32', '2019-05-19 02:09:32'),
(180, '86673539', 'Celular', NULL, '2019-05-19 02:09:32', '2019-05-19 02:09:32'),
(181, '224411105', 'Celular', NULL, '2019-05-19 02:09:32', '2019-05-19 02:09:32'),
(182, '139295025', 'Celular', NULL, '2019-05-19 02:09:32', '2019-05-19 02:09:32'),
(183, '145551572', 'Fijo', NULL, '2019-05-19 02:09:32', '2019-05-19 02:09:32'),
(184, '289035367', 'Fijo', NULL, '2019-05-19 02:09:32', '2019-05-19 02:09:32'),
(185, '277481452', 'Fijo', NULL, '2019-05-19 02:09:32', '2019-05-19 02:09:32'),
(186, '220090599', 'Fijo', NULL, '2019-05-19 02:09:33', '2019-05-19 02:09:33'),
(187, '206056109', 'Fijo', NULL, '2019-05-19 02:09:33', '2019-05-19 02:09:33'),
(188, '216810409', 'Fijo', NULL, '2019-05-19 02:09:33', '2019-05-19 02:09:33'),
(189, '222962162', 'Fijo', NULL, '2019-05-19 02:09:33', '2019-05-19 02:09:33'),
(190, '248733387', 'Celular', NULL, '2019-05-19 02:09:33', '2019-05-19 02:09:33'),
(191, '179233974', 'Celular', NULL, '2019-05-19 02:09:34', '2019-05-19 02:09:34'),
(192, '57015479', 'Celular', NULL, '2019-05-19 02:09:34', '2019-05-19 02:09:34'),
(193, '211779522', 'Fijo', NULL, '2019-05-19 02:09:34', '2019-05-19 02:09:34'),
(194, '253998025', 'Celular', NULL, '2019-05-19 02:09:34', '2019-05-19 02:09:34'),
(195, '261180238', 'Celular', NULL, '2019-05-19 02:09:34', '2019-05-19 02:09:34'),
(196, '282172113', 'Celular', NULL, '2019-05-19 02:09:34', '2019-05-19 02:09:34'),
(197, '50781697', 'Fijo', NULL, '2019-05-19 02:09:34', '2019-05-19 02:09:34'),
(198, '102128342', 'Celular', NULL, '2019-05-19 02:09:35', '2019-05-19 02:09:35'),
(199, '184843272', 'Fijo', NULL, '2019-05-19 02:09:35', '2019-05-19 02:09:35'),
(200, '163406484', 'Fijo', NULL, '2019-05-19 02:09:35', '2019-05-19 02:09:35'),
(201, '314582825', 'Celular', NULL, '2019-05-19 02:09:35', '2019-05-19 02:09:35'),
(202, '235645873', 'Fijo', NULL, '2019-05-19 02:09:35', '2019-05-19 02:09:35'),
(203, '198302773', 'Fijo', NULL, '2019-05-19 02:09:35', '2019-05-19 02:09:35'),
(204, '153177337', 'Fijo', NULL, '2019-05-19 02:09:35', '2019-05-19 02:09:35'),
(205, '136556282', 'Celular', NULL, '2019-05-19 02:09:35', '2019-05-19 02:09:35'),
(206, '182636760', 'Fijo', NULL, '2019-05-19 02:09:35', '2019-05-19 02:09:35'),
(207, '128851037', 'Fijo', NULL, '2019-05-19 02:09:35', '2019-05-19 02:09:35'),
(208, '164448455', 'Celular', NULL, '2019-05-19 02:09:36', '2019-05-19 02:09:36'),
(209, '264430383', 'Celular', NULL, '2019-05-19 02:09:36', '2019-05-19 02:09:36'),
(210, '233349702', 'Fijo', NULL, '2019-05-19 02:09:36', '2019-05-19 02:09:36'),
(211, '163121868', 'Celular', NULL, '2019-05-19 02:09:36', '2019-05-19 02:09:36'),
(212, '293350404', 'Celular', NULL, '2019-05-19 02:09:36', '2019-05-19 02:09:36'),
(213, '168403020', 'Fijo', NULL, '2019-05-19 02:09:36', '2019-05-19 02:09:36'),
(214, '173848288', 'Fijo', NULL, '2019-05-19 02:09:36', '2019-05-19 02:09:36'),
(215, '195621888', 'Celular', NULL, '2019-05-19 02:09:36', '2019-05-19 02:09:36'),
(216, '95944718', 'Fijo', NULL, '2019-05-19 02:09:36', '2019-05-19 02:09:36'),
(217, '201781373', 'Fijo', NULL, '2019-05-19 02:09:36', '2019-05-19 02:09:36'),
(218, '152132389', 'Celular', NULL, '2019-05-19 02:09:36', '2019-05-19 02:09:36'),
(219, '187704520', 'Celular', NULL, '2019-05-19 02:09:36', '2019-05-19 02:09:36'),
(220, '289939310', 'Fijo', NULL, '2019-05-19 02:09:37', '2019-05-19 02:09:37'),
(221, '209764943', 'Fijo', NULL, '2019-05-19 02:09:37', '2019-05-19 02:09:37'),
(222, '222340281', 'Fijo', NULL, '2019-05-19 02:09:37', '2019-05-19 02:09:37'),
(223, '98649014', 'Celular', NULL, '2019-05-19 02:09:37', '2019-05-19 02:09:37'),
(224, '143121641', 'Fijo', NULL, '2019-05-19 02:09:37', '2019-05-19 02:09:37'),
(225, '217429509', 'Celular', NULL, '2019-05-19 02:09:37', '2019-05-19 02:09:37'),
(226, '36484957', 'Celular', NULL, '2019-05-19 02:09:37', '2019-05-19 02:09:37'),
(227, '282414985', 'Celular', NULL, '2019-05-19 02:09:37', '2019-05-19 02:09:37'),
(228, '233564073', 'Celular', NULL, '2019-05-19 02:09:37', '2019-05-19 02:09:37'),
(229, '296757698', 'Fijo', NULL, '2019-05-19 02:09:37', '2019-05-19 02:09:37'),
(230, '252625512', 'Fijo', NULL, '2019-05-19 02:09:37', '2019-05-19 02:09:37'),
(231, '142836548', 'Fijo', NULL, '2019-05-19 02:09:37', '2019-05-19 02:09:37'),
(232, '106979939', 'Celular', NULL, '2019-05-19 02:09:38', '2019-05-19 02:09:38'),
(233, '226968817', 'Celular', NULL, '2019-05-19 02:09:38', '2019-05-19 02:09:38'),
(234, '96888238', 'Celular', NULL, '2019-05-19 02:09:38', '2019-05-19 02:09:38'),
(235, '306795106', 'Celular', NULL, '2019-05-19 02:09:38', '2019-05-19 02:09:38'),
(236, '51497731', 'Fijo', NULL, '2019-05-19 02:09:38', '2019-05-19 02:09:38'),
(237, '291517330', 'Celular', NULL, '2019-05-19 02:09:38', '2019-05-19 02:09:38'),
(238, '229567130', 'Celular', NULL, '2019-05-19 02:09:38', '2019-05-19 02:09:38'),
(239, '293859106', 'Fijo', NULL, '2019-05-19 02:09:38', '2019-05-19 02:09:38'),
(240, '139358295', 'Fijo', NULL, '2019-05-19 02:09:38', '2019-05-19 02:09:38'),
(241, '206416253', 'Fijo', NULL, '2019-05-19 02:09:38', '2019-05-19 02:09:38'),
(242, '196819812', 'Celular', NULL, '2019-05-19 02:09:38', '2019-05-19 02:09:38'),
(243, '241083274', 'Celular', NULL, '2019-05-19 02:09:38', '2019-05-19 02:09:38'),
(244, '231087552', 'Fijo', NULL, '2019-05-19 02:09:39', '2019-05-19 02:09:39'),
(245, '88981028', 'Fijo', NULL, '2019-05-19 02:09:39', '2019-05-19 02:09:39'),
(246, '311386409', 'Celular', NULL, '2019-05-19 02:09:39', '2019-05-19 02:09:39'),
(247, '106008237', 'Fijo', NULL, '2019-05-19 02:09:39', '2019-05-19 02:09:39'),
(248, '212958437', 'Fijo', NULL, '2019-05-19 02:09:39', '2019-05-19 02:09:39'),
(249, '312176335', 'Fijo', NULL, '2019-05-19 02:09:39', '2019-05-19 02:09:39'),
(250, '108647115', 'Celular', NULL, '2019-05-19 02:09:39', '2019-05-19 02:09:39'),
(251, '120268925', 'Fijo', NULL, '2019-05-19 02:09:39', '2019-05-19 02:09:39'),
(252, '154124040', 'Fijo', NULL, '2019-05-19 02:09:39', '2019-05-19 02:09:39'),
(253, '256585947', 'Fijo', NULL, '2019-05-19 02:09:39', '2019-05-19 02:09:39'),
(254, '158723799', 'Celular', NULL, '2019-05-19 02:09:39', '2019-05-19 02:09:39'),
(255, '36043881', 'Celular', NULL, '2019-05-19 02:09:39', '2019-05-19 02:09:39'),
(256, '100304581', 'Fijo', NULL, '2019-05-19 02:09:40', '2019-05-19 02:09:40'),
(257, '98557114', 'Fijo', NULL, '2019-05-19 02:09:40', '2019-05-19 02:09:40'),
(258, '145236074', 'Fijo', NULL, '2019-05-19 02:09:40', '2019-05-19 02:09:40'),
(259, '147211558', 'Fijo', NULL, '2019-05-19 02:09:40', '2019-05-19 02:09:40'),
(260, '286863582', 'Fijo', NULL, '2019-05-19 02:09:40', '2019-05-19 02:09:40'),
(261, '258046315', 'Celular', NULL, '2019-05-19 02:09:40', '2019-05-19 02:09:40'),
(262, '193248485', 'Celular', NULL, '2019-05-19 02:09:40', '2019-05-19 02:09:40'),
(263, '71339182', 'Fijo', NULL, '2019-05-19 02:09:40', '2019-05-19 02:09:40'),
(264, '171693723', 'Fijo', NULL, '2019-05-19 02:09:41', '2019-05-19 02:09:41'),
(265, '248402094', 'Celular', NULL, '2019-05-19 02:09:41', '2019-05-19 02:09:41'),
(266, '188532985', 'Celular', NULL, '2019-05-19 02:09:41', '2019-05-19 02:09:41'),
(267, '77315428', 'Celular', NULL, '2019-05-19 02:09:41', '2019-05-19 02:09:41'),
(268, '196747707', 'Fijo', NULL, '2019-05-19 02:09:41', '2019-05-19 02:09:41'),
(269, '76270352', 'Celular', NULL, '2019-05-19 02:09:41', '2019-05-19 02:09:41'),
(270, '213861435', 'Celular', NULL, '2019-05-19 02:09:41', '2019-05-19 02:09:41'),
(271, '73012172', 'Fijo', NULL, '2019-05-19 02:09:41', '2019-05-19 02:09:41'),
(272, '180010325', 'Fijo', NULL, '2019-05-19 02:09:41', '2019-05-19 02:09:41'),
(273, '119213251', 'Fijo', NULL, '2019-05-19 02:09:41', '2019-05-19 02:09:41'),
(274, '132533151', 'Fijo', NULL, '2019-05-19 02:09:42', '2019-05-19 02:09:42'),
(275, '220785159', 'Celular', NULL, '2019-05-19 02:09:42', '2019-05-19 02:09:42'),
(276, '302861318', 'Celular', NULL, '2019-05-19 02:09:42', '2019-05-19 02:09:42'),
(277, '227339095', 'Fijo', NULL, '2019-05-19 02:09:42', '2019-05-19 02:09:42'),
(278, '251233605', 'Fijo', NULL, '2019-05-19 02:09:42', '2019-05-19 02:09:42'),
(279, '316670531', 'Celular', NULL, '2019-05-19 02:09:42', '2019-05-19 02:09:42'),
(280, '188412480', 'Celular', NULL, '2019-05-19 02:09:42', '2019-05-19 02:09:42'),
(281, '150256756', 'Fijo', NULL, '2019-05-19 02:09:42', '2019-05-19 02:09:42'),
(282, '94542140', 'Celular', NULL, '2019-05-19 02:09:42', '2019-05-19 02:09:42'),
(283, '145343930', 'Fijo', NULL, '2019-05-19 02:09:42', '2019-05-19 02:09:42'),
(284, '154113347', 'Fijo', NULL, '2019-05-19 02:09:42', '2019-05-19 02:09:42'),
(285, '282378025', 'Celular', NULL, '2019-05-19 02:09:43', '2019-05-19 02:09:43'),
(286, '300099142', 'Fijo', NULL, '2019-05-19 02:09:43', '2019-05-19 02:09:43'),
(287, '45244488', 'Celular', NULL, '2019-05-19 02:09:43', '2019-05-19 02:09:43'),
(288, '102316001', 'Celular', NULL, '2019-05-19 02:09:43', '2019-05-19 02:09:43'),
(289, '101810917', 'Celular', NULL, '2019-05-19 02:09:43', '2019-05-19 02:09:43'),
(290, '67458233', 'Celular', NULL, '2019-05-19 02:09:43', '2019-05-19 02:09:43'),
(291, '244592426', 'Celular', NULL, '2019-05-19 02:09:43', '2019-05-19 02:09:43'),
(292, '208168824', 'Celular', NULL, '2019-05-19 02:09:43', '2019-05-19 02:09:43'),
(293, '58585074', 'Fijo', NULL, '2019-05-19 02:09:43', '2019-05-19 02:09:43'),
(294, '69099408', 'Celular', NULL, '2019-05-19 02:09:43', '2019-05-19 02:09:43'),
(295, '117237380', 'Celular', NULL, '2019-05-19 02:09:44', '2019-05-19 02:09:44'),
(296, '135895134', 'Fijo', NULL, '2019-05-19 02:09:44', '2019-05-19 02:09:44'),
(297, '267600067', 'Celular', NULL, '2019-05-19 02:09:44', '2019-05-19 02:09:44'),
(298, '288086484', 'Fijo', NULL, '2019-05-19 02:09:44', '2019-05-19 02:09:44'),
(299, '42072145', 'Fijo', NULL, '2019-05-19 02:09:44', '2019-05-19 02:09:44'),
(300, '36519137', 'Fijo', NULL, '2019-05-19 02:09:44', '2019-05-19 02:09:44'),
(301, '232546754', 'Fijo', NULL, '2019-05-19 02:09:44', '2019-05-19 02:09:44'),
(302, '269996555', 'Celular', NULL, '2019-05-19 02:09:44', '2019-05-19 02:09:44'),
(303, '78134105', 'Fijo', NULL, '2019-05-19 02:09:44', '2019-05-19 02:09:44'),
(304, '241145403', 'Celular', NULL, '2019-05-19 02:09:44', '2019-05-19 02:09:44'),
(305, '237159865', 'Fijo', NULL, '2019-05-19 02:09:44', '2019-05-19 02:09:44'),
(306, '305301917', 'Celular', NULL, '2019-05-19 02:09:44', '2019-05-19 02:09:44'),
(307, '37919352', 'Fijo', NULL, '2019-05-19 02:09:45', '2019-05-19 02:09:45'),
(308, '271071865', 'Fijo', NULL, '2019-05-19 02:09:45', '2019-05-19 02:09:45'),
(309, '181564273', 'Celular', NULL, '2019-05-19 02:09:45', '2019-05-19 02:09:45'),
(310, '88623769', 'Fijo', NULL, '2019-05-19 02:09:45', '2019-05-19 02:09:45'),
(311, '83004629', 'Fijo', NULL, '2019-05-19 02:09:45', '2019-05-19 02:09:45'),
(312, '85509014', 'Celular', NULL, '2019-05-19 02:09:45', '2019-05-19 02:09:45'),
(313, '318862415', 'Celular', NULL, '2019-05-19 02:09:45', '2019-05-19 02:09:45'),
(314, '133849711', 'Celular', NULL, '2019-05-19 02:09:45', '2019-05-19 02:09:45'),
(315, '234254480', 'Celular', NULL, '2019-05-19 02:09:45', '2019-05-19 02:09:45'),
(316, '33771998', 'Fijo', NULL, '2019-05-19 02:09:45', '2019-05-19 02:09:45'),
(317, '100255952', 'Fijo', NULL, '2019-05-19 02:09:45', '2019-05-19 02:09:45'),
(318, '49143201', 'Fijo', NULL, '2019-05-19 02:09:45', '2019-05-19 02:09:45'),
(319, '58907560', 'Fijo', NULL, '2019-05-19 02:09:45', '2019-05-19 02:09:45'),
(320, '160359793', 'Fijo', NULL, '2019-05-19 02:09:46', '2019-05-19 02:09:46'),
(321, '138434510', 'Celular', NULL, '2019-05-19 02:09:46', '2019-05-19 02:09:46'),
(322, '207016289', 'Fijo', NULL, '2019-05-19 02:09:46', '2019-05-19 02:09:46'),
(323, '264213920', 'Celular', NULL, '2019-05-19 02:09:46', '2019-05-19 02:09:46'),
(324, '254941867', 'Fijo', NULL, '2019-05-19 02:09:46', '2019-05-19 02:09:46'),
(325, '188514188', 'Celular', NULL, '2019-05-19 02:09:46', '2019-05-19 02:09:46'),
(326, '211921138', 'Fijo', NULL, '2019-05-19 02:09:46', '2019-05-19 02:09:46'),
(327, '242113753', 'Celular', NULL, '2019-05-19 02:09:46', '2019-05-19 02:09:46'),
(328, '209750149', 'Celular', NULL, '2019-05-19 02:09:46', '2019-05-19 02:09:46'),
(329, '202558678', 'Fijo', NULL, '2019-05-19 02:09:46', '2019-05-19 02:09:46'),
(330, '310387143', 'Fijo', NULL, '2019-05-19 02:09:46', '2019-05-19 02:09:46'),
(331, '305232312', 'Celular', NULL, '2019-05-19 02:09:46', '2019-05-19 02:09:46'),
(332, '168214573', 'Fijo', NULL, '2019-05-19 02:09:47', '2019-05-19 02:09:47'),
(333, '90924761', 'Fijo', NULL, '2019-05-19 02:09:47', '2019-05-19 02:09:47'),
(334, '63520379', 'Celular', NULL, '2019-05-19 02:09:47', '2019-05-19 02:09:47'),
(335, '276522713', 'Celular', NULL, '2019-05-19 02:09:47', '2019-05-19 02:09:47'),
(336, '202204816', 'Fijo', NULL, '2019-05-19 02:09:47', '2019-05-19 02:09:47'),
(337, '244740200', 'Fijo', NULL, '2019-05-19 02:09:47', '2019-05-19 02:09:47'),
(338, '89402642', 'Fijo', NULL, '2019-05-19 02:09:47', '2019-05-19 02:09:47'),
(339, '273471049', 'Fijo', NULL, '2019-05-19 02:09:47', '2019-05-19 02:09:47'),
(340, '254470633', 'Celular', NULL, '2019-05-19 02:09:47', '2019-05-19 02:09:47'),
(341, '69348622', 'Fijo', NULL, '2019-05-19 02:09:57', '2019-05-19 02:09:57'),
(342, '57718410', 'Celular', NULL, '2019-05-19 02:09:57', '2019-05-19 02:09:57'),
(343, '130011336', 'Celular', NULL, '2019-05-19 02:09:57', '2019-05-19 02:09:57'),
(344, '201232824', 'Celular', NULL, '2019-05-19 02:09:57', '2019-05-19 02:09:57'),
(345, '177701171', 'Fijo', NULL, '2019-05-19 02:09:57', '2019-05-19 02:09:57'),
(346, '67789324', 'Fijo', NULL, '2019-05-19 02:09:57', '2019-05-19 02:09:57'),
(347, '122619286', 'Celular', NULL, '2019-05-19 02:09:58', '2019-05-19 02:09:58'),
(348, '263715857', 'Fijo', NULL, '2019-05-19 02:09:58', '2019-05-19 02:09:58'),
(349, '304608412', 'Celular', NULL, '2019-05-19 02:09:58', '2019-05-19 02:09:58'),
(350, '81132944', 'Fijo', NULL, '2019-05-19 02:09:58', '2019-05-19 02:09:58'),
(351, '294428646', 'Celular', NULL, '2019-05-19 02:09:58', '2019-05-19 02:09:58'),
(352, '277509263', 'Fijo', NULL, '2019-05-19 02:09:58', '2019-05-19 02:09:58'),
(353, '317487288', 'Fijo', NULL, '2019-05-19 02:09:58', '2019-05-19 02:09:58'),
(354, '239862299', 'Celular', NULL, '2019-05-19 02:09:58', '2019-05-19 02:09:58'),
(355, '123571579', 'Fijo', NULL, '2019-05-19 02:09:58', '2019-05-19 02:09:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `temporada`
--

CREATE TABLE `temporada` (
  `id` int(10) UNSIGNED NOT NULL,
  `descripcion` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `temporada`
--

INSERT INTO `temporada` (`id`, `descripcion`, `fecha_inicio`, `fecha_fin`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '2019-1', '2019-01-14', '2019-06-30', NULL, '2019-05-19 02:09:18', '2019-05-19 02:09:18'),
(2, '2018-2', '2018-07-04', '2019-10-03', NULL, '2019-05-19 02:09:18', '2019-05-19 02:09:18'),
(3, '2018-1', '2018-02-01', '2018-05-03', NULL, '2019-05-19 02:09:18', '2019-05-19 02:09:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiempo_enfrentamiento`
--

CREATE TABLE `tiempo_enfrentamiento` (
  `id` int(10) UNSIGNED NOT NULL,
  `tiempo` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_educacion`
--

CREATE TABLE `tipo_educacion` (
  `id` int(10) UNSIGNED NOT NULL,
  `tipo` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tipo_educacion`
--

INSERT INTO `tipo_educacion` (`id`, `tipo`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Privado', NULL, '2019-05-19 02:09:09', '2019-05-19 02:09:09'),
(2, 'Publico', NULL, '2019-05-19 02:09:10', '2019-05-19 02:09:10'),
(3, 'Otro', NULL, '2019-05-19 02:09:10', '2019-05-19 02:09:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_jugador`
--

CREATE TABLE `tipo_jugador` (
  `id` int(10) UNSIGNED NOT NULL,
  `cargo` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tipo_jugador`
--

INSERT INTO `tipo_jugador` (`id`, `cargo`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Estudiante', NULL, '2019-05-19 02:09:56', '2019-05-19 02:09:56'),
(2, 'Docente', NULL, '2019-05-19 02:09:56', '2019-05-19 02:09:56'),
(3, 'Administrativo', NULL, '2019-05-19 02:09:57', '2019-05-19 02:09:57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_sangre`
--

CREATE TABLE `tipo_sangre` (
  `id` int(10) UNSIGNED NOT NULL,
  `tipo` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tipo_sangre`
--

INSERT INTO `tipo_sangre` (`id`, `tipo`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'A+', NULL, '2019-05-19 02:09:00', '2019-05-19 02:09:00'),
(2, 'A-', NULL, '2019-05-19 02:09:00', '2019-05-19 02:09:00'),
(3, 'B+', NULL, '2019-05-19 02:09:00', '2019-05-19 02:09:00'),
(4, 'B-', NULL, '2019-05-19 02:09:00', '2019-05-19 02:09:00'),
(5, 'AB+', NULL, '2019-05-19 02:09:00', '2019-05-19 02:09:00'),
(6, 'AB-', NULL, '2019-05-19 02:09:00', '2019-05-19 02:09:00'),
(7, 'O+', NULL, '2019-05-19 02:09:00', '2019-05-19 02:09:00'),
(8, 'O-', NULL, '2019-05-19 02:09:01', '2019-05-19 02:09:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `torneo`
--

CREATE TABLE `torneo` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `temporada_id` int(10) UNSIGNED NOT NULL,
  `categoria_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `torneo`
--

INSERT INTO `torneo` (`id`, `nombre`, `temporada_id`, `categoria_id`, `user_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Mundial 2010', 3, 1, 4, NULL, '2019-05-19 02:09:18', '2019-05-19 02:09:18'),
(2, 'Torneo Uno', 2, 2, 3, NULL, '2019-05-19 02:09:19', '2019-05-19 02:09:19'),
(3, 'Torneo Dos', 2, 2, 1, NULL, '2019-05-19 02:09:19', '2019-05-19 02:09:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `datos_basicos_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `datos_basicos_id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Cristian Marin', 'cristianmarint@cotecnova.edu.co', 'users/default.png', '2019-05-19 02:09:09', '$2y$10$TCcGfa9oLUVuOMiiVoq/fOj.eXTR8RbtlwDKS1m1p5n423HJB2kxS', NULL, NULL, NULL, '2019-05-19 02:09:09', '2019-05-19 02:09:09'),
(2, 2, 1, 'Edwin Lopez', 'edwin.lopezb.1297@cotecnova.edu.co', 'https://dr.savee-cdn.com/things/5/9/9e4e29fcb5b21e693ba728.jpg', '2019-05-19 02:09:09', '$2y$10$3P8IrIfY8nYd2Io/xFNWoe0fInqFdl8aGtASabRta/UfL34tPZZwa', NULL, NULL, NULL, '2019-05-19 02:09:09', '2019-05-19 02:09:09'),
(3, NULL, 1, 'Andres Gaviria', 'andresgaviria2310@gmail.com', 'https://scontent.feoh3-1.fna.fbcdn.net/v/t1.0-9/56965599_2254403868004519_4069063543922622464_n.jpg?_nc_cat=109&_nc_ht=scontent.feoh3-1.fna&oh=586429e433681660367cb917ee52687c&oe=5D6BFA3D', '2019-05-19 02:09:09', '$2y$10$xKKPXzOKOQVKngLxuYT4W.BMZWrvr6EaTLvdSiz24NRI7V5awivta', NULL, NULL, NULL, '2019-05-19 02:09:09', '2019-05-19 02:09:09'),
(4, NULL, NULL, 'Correo Personal Cristian', 'cristianmarint@gmail.com', 'storage/img/datosbasicos/default.png', '2019-05-19 02:09:09', '$2y$10$p0Op9uWfDRAqzMmeXtx2FeqbDe8c88WkhU6N4hmvlOrq5ehMoVILG', NULL, NULL, NULL, '2019-05-19 02:09:09', '2019-05-19 02:09:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `arbitro`
--
ALTER TABLE `arbitro`
  ADD PRIMARY KEY (`id`),
  ADD KEY `arbitro_datos_basicos_id_foreign` (`datos_basicos_id`),
  ADD KEY `arbitro_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `arbitro_puesto`
--
ALTER TABLE `arbitro_puesto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `arbitro_puesto_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `calendario`
--
ALTER TABLE `calendario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `calendario_torneo_id_foreign` (`torneo_id`),
  ADD KEY `calendario_fase_id_foreign` (`fase_id`),
  ADD KEY `calendario_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `colores`
--
ALTER TABLE `colores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `criterio`
--
ALTER TABLE `criterio`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `criterio_torneo`
--
ALTER TABLE `criterio_torneo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `criterio_torneo_criterio_id_foreign` (`criterio_id`),
  ADD KEY `criterio_torneo_torneo_id_foreign` (`torneo_id`);

--
-- Indices de la tabla `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indices de la tabla `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indices de la tabla `datos_basicos`
--
ALTER TABLE `datos_basicos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `datos_basicos_email_unique` (`email`),
  ADD KEY `datos_basicos_telefono_id_foreign` (`telefono_id`),
  ADD KEY `datos_basicos_tipo_sangre_id_foreign` (`tipo_sangre_id`),
  ADD KEY `datos_basicos_municipio_id_foreign` (`municipio_id`),
  ADD KEY `datos_basicos_genero_id_foreign` (`genero_id`),
  ADD KEY `datos_basicos_direccion_id_foreign` (`direccion_id`),
  ADD KEY `datos_basicos_eps_id_foreign` (`eps_id`),
  ADD KEY `datos_basicos_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `direccion`
--
ALTER TABLE `direccion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `enfrentamiento`
--
ALTER TABLE `enfrentamiento`
  ADD PRIMARY KEY (`id`),
  ADD KEY `enfrentamiento_calendario_id_foreign` (`calendario_id`),
  ADD KEY `enfrentamiento_inscripcion_equipo_visitante_id_foreign` (`inscripcion_equipo_visitante_id`),
  ADD KEY `enfrentamiento_inscripcion_equipo_local_id_foreign` (`inscripcion_equipo_local_id`),
  ADD KEY `enfrentamiento_lugar_id_foreign` (`lugar_id`),
  ADD KEY `enfrentamiento_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `enfrentamiento_arbitro`
--
ALTER TABLE `enfrentamiento_arbitro`
  ADD PRIMARY KEY (`id`),
  ADD KEY `enfrentamiento_arbitro_arbitro_id_foreign` (`arbitro_id`),
  ADD KEY `enfrentamiento_arbitro_arbitro_puesto_id_foreign` (`arbitro_puesto_id`),
  ADD KEY `enfrentamiento_arbitro_enfrentamiento_id_foreign` (`enfrentamiento_id`),
  ADD KEY `enfrentamiento_arbitro_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `eps`
--
ALTER TABLE `eps`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `equipo`
--
ALTER TABLE `equipo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `equipo_instituto_id_foreign` (`instituto_id`),
  ADD KEY `equipo_colores_id_foreign` (`colores_id`),
  ADD KEY `equipo_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `estadisticas`
--
ALTER TABLE `estadisticas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `estadisticas_inscripcion_equipo_id_foreign` (`inscripcion_equipo_id`),
  ADD KEY `estadisticas_inscripcion_jugador_id_foreign` (`inscripcion_jugador_id`),
  ADD KEY `estadisticas_enfrentamiento_id_foreign` (`enfrentamiento_id`),
  ADD KEY `estadisticas_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `faltas`
--
ALTER TABLE `faltas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `faltas_estadisticas_id_foreign` (`estadisticas_id`);

--
-- Indices de la tabla `faltas_tarjeta`
--
ALTER TABLE `faltas_tarjeta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `faltas_tarjeta_faltas_id_foreign` (`faltas_id`),
  ADD KEY `faltas_tarjeta_tarjetas_id_foreign` (`tarjetas_id`);

--
-- Indices de la tabla `fase`
--
ALTER TABLE `fase`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `inscripcion_equipo`
--
ALTER TABLE `inscripcion_equipo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inscripcion_equipo_equipo_id_foreign` (`equipo_id`),
  ADD KEY `inscripcion_equipo_torneo_id_foreign` (`torneo_id`);

--
-- Indices de la tabla `inscripcion_jugador`
--
ALTER TABLE `inscripcion_jugador`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inscripcion_jugador_jugador_id_foreign` (`jugador_id`),
  ADD KEY `inscripcion_jugador_inscripcion_equipo_id_foreign` (`inscripcion_equipo_id`),
  ADD KEY `inscripcion_jugador_programa_id_foreign` (`programa_id`),
  ADD KEY `inscripcion_jugador_tipo_jugador_id_foreign` (`tipo_jugador_id`),
  ADD KEY `inscripcion_jugador_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `instituto`
--
ALTER TABLE `instituto`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `instituto_codigo_dane_unique` (`codigo_dane`),
  ADD UNIQUE KEY `instituto_nit_unique` (`nit`),
  ADD KEY `instituto_municipio_id_foreign` (`municipio_id`),
  ADD KEY `instituto_tipo_educacion_id_foreign` (`tipo_educacion_id`),
  ADD KEY `instituto_telefono_id_foreign` (`telefono_id`),
  ADD KEY `instituto_direccion_id_foreign` (`direccion_id`),
  ADD KEY `instituto_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `jugador`
--
ALTER TABLE `jugador`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jugador_datos_basicos_id_foreign` (`datos_basicos_id`),
  ADD KEY `jugador_telefono_acudiente_id_foreign` (`telefono_acudiente_id`),
  ADD KEY `jugador_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `lugar`
--
ALTER TABLE `lugar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lugar_municipio_id_foreign` (`municipio_id`),
  ADD KEY `lugar_direccion_id_foreign` (`direccion_id`),
  ADD KEY `lugar_telefono_id_foreign` (`telefono_id`),
  ADD KEY `lugar_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indices de la tabla `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `municipio`
--
ALTER TABLE `municipio`
  ADD PRIMARY KEY (`id`),
  ADD KEY `municipio_departamento_id_foreign` (`departamento_id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indices de la tabla `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indices de la tabla `programa`
--
ALTER TABLE `programa`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `resultado`
--
ALTER TABLE `resultado`
  ADD PRIMARY KEY (`id`),
  ADD KEY `resultado_enfrentamiento_id_foreign` (`enfrentamiento_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indices de la tabla `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indices de la tabla `social_accounts`
--
ALTER TABLE `social_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_accounts_provider_user_id_provider_unique` (`provider_user_id`,`provider`),
  ADD KEY `social_accounts_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `tantos`
--
ALTER TABLE `tantos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tantos_estadisticas_id_foreign` (`estadisticas_id`),
  ADD KEY `tantos_tiempo_enfrentamiento_id_foreign` (`tiempo_enfrentamiento_id`),
  ADD KEY `tantos_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `tarjetas`
--
ALTER TABLE `tarjetas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tarjetas_categoria`
--
ALTER TABLE `tarjetas_categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `telefono`
--
ALTER TABLE `telefono`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `temporada`
--
ALTER TABLE `temporada`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tiempo_enfrentamiento`
--
ALTER TABLE `tiempo_enfrentamiento`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipo_educacion`
--
ALTER TABLE `tipo_educacion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipo_jugador`
--
ALTER TABLE `tipo_jugador`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipo_sangre`
--
ALTER TABLE `tipo_sangre`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `torneo`
--
ALTER TABLE `torneo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `torneo_temporada_id_foreign` (`temporada_id`),
  ADD KEY `torneo_categoria_id_foreign` (`categoria_id`),
  ADD KEY `torneo_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_datos_basicos_id_foreign` (`datos_basicos_id`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indices de la tabla `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `arbitro`
--
ALTER TABLE `arbitro`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `arbitro_puesto`
--
ALTER TABLE `arbitro_puesto`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `calendario`
--
ALTER TABLE `calendario`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `colores`
--
ALTER TABLE `colores`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `criterio`
--
ALTER TABLE `criterio`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `criterio_torneo`
--
ALTER TABLE `criterio_torneo`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `datos_basicos`
--
ALTER TABLE `datos_basicos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT de la tabla `departamento`
--
ALTER TABLE `departamento`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `direccion`
--
ALTER TABLE `direccion`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `enfrentamiento`
--
ALTER TABLE `enfrentamiento`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `enfrentamiento_arbitro`
--
ALTER TABLE `enfrentamiento_arbitro`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `eps`
--
ALTER TABLE `eps`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `equipo`
--
ALTER TABLE `equipo`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `estadisticas`
--
ALTER TABLE `estadisticas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `faltas`
--
ALTER TABLE `faltas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `faltas_tarjeta`
--
ALTER TABLE `faltas_tarjeta`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `fase`
--
ALTER TABLE `fase`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `genero`
--
ALTER TABLE `genero`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `inscripcion_equipo`
--
ALTER TABLE `inscripcion_equipo`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `inscripcion_jugador`
--
ALTER TABLE `inscripcion_jugador`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT de la tabla `instituto`
--
ALTER TABLE `instituto`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `jugador`
--
ALTER TABLE `jugador`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT de la tabla `lugar`
--
ALTER TABLE `lugar`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT de la tabla `municipio`
--
ALTER TABLE `municipio`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `programa`
--
ALTER TABLE `programa`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `resultado`
--
ALTER TABLE `resultado`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `social_accounts`
--
ALTER TABLE `social_accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tantos`
--
ALTER TABLE `tantos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tarjetas`
--
ALTER TABLE `tarjetas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tarjetas_categoria`
--
ALTER TABLE `tarjetas_categoria`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `telefono`
--
ALTER TABLE `telefono`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=356;

--
-- AUTO_INCREMENT de la tabla `temporada`
--
ALTER TABLE `temporada`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tiempo_enfrentamiento`
--
ALTER TABLE `tiempo_enfrentamiento`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo_educacion`
--
ALTER TABLE `tipo_educacion`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tipo_jugador`
--
ALTER TABLE `tipo_jugador`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tipo_sangre`
--
ALTER TABLE `tipo_sangre`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `torneo`
--
ALTER TABLE `torneo`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `arbitro`
--
ALTER TABLE `arbitro`
  ADD CONSTRAINT `arbitro_datos_basicos_id_foreign` FOREIGN KEY (`datos_basicos_id`) REFERENCES `datos_basicos` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `arbitro_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `arbitro_puesto`
--
ALTER TABLE `arbitro_puesto`
  ADD CONSTRAINT `arbitro_puesto_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `calendario`
--
ALTER TABLE `calendario`
  ADD CONSTRAINT `calendario_fase_id_foreign` FOREIGN KEY (`fase_id`) REFERENCES `fase` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `calendario_torneo_id_foreign` FOREIGN KEY (`torneo_id`) REFERENCES `torneo` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `calendario_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `criterio_torneo`
--
ALTER TABLE `criterio_torneo`
  ADD CONSTRAINT `criterio_torneo_criterio_id_foreign` FOREIGN KEY (`criterio_id`) REFERENCES `criterio` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `criterio_torneo_torneo_id_foreign` FOREIGN KEY (`torneo_id`) REFERENCES `torneo` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `datos_basicos`
--
ALTER TABLE `datos_basicos`
  ADD CONSTRAINT `datos_basicos_direccion_id_foreign` FOREIGN KEY (`direccion_id`) REFERENCES `direccion` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `datos_basicos_eps_id_foreign` FOREIGN KEY (`eps_id`) REFERENCES `eps` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `datos_basicos_genero_id_foreign` FOREIGN KEY (`genero_id`) REFERENCES `genero` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `datos_basicos_municipio_id_foreign` FOREIGN KEY (`municipio_id`) REFERENCES `municipio` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `datos_basicos_telefono_id_foreign` FOREIGN KEY (`telefono_id`) REFERENCES `telefono` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `datos_basicos_tipo_sangre_id_foreign` FOREIGN KEY (`tipo_sangre_id`) REFERENCES `tipo_sangre` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `datos_basicos_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `enfrentamiento`
--
ALTER TABLE `enfrentamiento`
  ADD CONSTRAINT `enfrentamiento_calendario_id_foreign` FOREIGN KEY (`calendario_id`) REFERENCES `calendario` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `enfrentamiento_inscripcion_equipo_local_id_foreign` FOREIGN KEY (`inscripcion_equipo_local_id`) REFERENCES `inscripcion_equipo` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `enfrentamiento_inscripcion_equipo_visitante_id_foreign` FOREIGN KEY (`inscripcion_equipo_visitante_id`) REFERENCES `inscripcion_equipo` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `enfrentamiento_lugar_id_foreign` FOREIGN KEY (`lugar_id`) REFERENCES `lugar` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `enfrentamiento_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `enfrentamiento_arbitro`
--
ALTER TABLE `enfrentamiento_arbitro`
  ADD CONSTRAINT `enfrentamiento_arbitro_arbitro_id_foreign` FOREIGN KEY (`arbitro_id`) REFERENCES `arbitro` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `enfrentamiento_arbitro_arbitro_puesto_id_foreign` FOREIGN KEY (`arbitro_puesto_id`) REFERENCES `arbitro_puesto` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `enfrentamiento_arbitro_enfrentamiento_id_foreign` FOREIGN KEY (`enfrentamiento_id`) REFERENCES `enfrentamiento` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `enfrentamiento_arbitro_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `equipo`
--
ALTER TABLE `equipo`
  ADD CONSTRAINT `equipo_colores_id_foreign` FOREIGN KEY (`colores_id`) REFERENCES `colores` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `equipo_instituto_id_foreign` FOREIGN KEY (`instituto_id`) REFERENCES `instituto` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `equipo_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `estadisticas`
--
ALTER TABLE `estadisticas`
  ADD CONSTRAINT `estadisticas_enfrentamiento_id_foreign` FOREIGN KEY (`enfrentamiento_id`) REFERENCES `enfrentamiento` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `estadisticas_inscripcion_equipo_id_foreign` FOREIGN KEY (`inscripcion_equipo_id`) REFERENCES `inscripcion_equipo` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `estadisticas_inscripcion_jugador_id_foreign` FOREIGN KEY (`inscripcion_jugador_id`) REFERENCES `inscripcion_jugador` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `estadisticas_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `faltas`
--
ALTER TABLE `faltas`
  ADD CONSTRAINT `faltas_estadisticas_id_foreign` FOREIGN KEY (`estadisticas_id`) REFERENCES `estadisticas` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `faltas_tarjeta`
--
ALTER TABLE `faltas_tarjeta`
  ADD CONSTRAINT `faltas_tarjeta_faltas_id_foreign` FOREIGN KEY (`faltas_id`) REFERENCES `faltas` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `faltas_tarjeta_tarjetas_id_foreign` FOREIGN KEY (`tarjetas_id`) REFERENCES `tarjetas` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `inscripcion_equipo`
--
ALTER TABLE `inscripcion_equipo`
  ADD CONSTRAINT `inscripcion_equipo_equipo_id_foreign` FOREIGN KEY (`equipo_id`) REFERENCES `equipo` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `inscripcion_equipo_torneo_id_foreign` FOREIGN KEY (`torneo_id`) REFERENCES `torneo` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `inscripcion_jugador`
--
ALTER TABLE `inscripcion_jugador`
  ADD CONSTRAINT `inscripcion_jugador_inscripcion_equipo_id_foreign` FOREIGN KEY (`inscripcion_equipo_id`) REFERENCES `inscripcion_equipo` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `inscripcion_jugador_jugador_id_foreign` FOREIGN KEY (`jugador_id`) REFERENCES `jugador` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `inscripcion_jugador_programa_id_foreign` FOREIGN KEY (`programa_id`) REFERENCES `programa` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `inscripcion_jugador_tipo_jugador_id_foreign` FOREIGN KEY (`tipo_jugador_id`) REFERENCES `tipo_jugador` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `inscripcion_jugador_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `instituto`
--
ALTER TABLE `instituto`
  ADD CONSTRAINT `instituto_direccion_id_foreign` FOREIGN KEY (`direccion_id`) REFERENCES `direccion` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `instituto_municipio_id_foreign` FOREIGN KEY (`municipio_id`) REFERENCES `municipio` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `instituto_telefono_id_foreign` FOREIGN KEY (`telefono_id`) REFERENCES `telefono` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `instituto_tipo_educacion_id_foreign` FOREIGN KEY (`tipo_educacion_id`) REFERENCES `tipo_educacion` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `instituto_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `jugador`
--
ALTER TABLE `jugador`
  ADD CONSTRAINT `jugador_datos_basicos_id_foreign` FOREIGN KEY (`datos_basicos_id`) REFERENCES `datos_basicos` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `jugador_telefono_acudiente_id_foreign` FOREIGN KEY (`telefono_acudiente_id`) REFERENCES `telefono` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `jugador_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `lugar`
--
ALTER TABLE `lugar`
  ADD CONSTRAINT `lugar_direccion_id_foreign` FOREIGN KEY (`direccion_id`) REFERENCES `direccion` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `lugar_municipio_id_foreign` FOREIGN KEY (`municipio_id`) REFERENCES `municipio` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `lugar_telefono_id_foreign` FOREIGN KEY (`telefono_id`) REFERENCES `telefono` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `lugar_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `municipio`
--
ALTER TABLE `municipio`
  ADD CONSTRAINT `municipio_departamento_id_foreign` FOREIGN KEY (`departamento_id`) REFERENCES `departamento` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `resultado`
--
ALTER TABLE `resultado`
  ADD CONSTRAINT `resultado_enfrentamiento_id_foreign` FOREIGN KEY (`enfrentamiento_id`) REFERENCES `enfrentamiento` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `social_accounts`
--
ALTER TABLE `social_accounts`
  ADD CONSTRAINT `social_accounts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `tantos`
--
ALTER TABLE `tantos`
  ADD CONSTRAINT `tantos_estadisticas_id_foreign` FOREIGN KEY (`estadisticas_id`) REFERENCES `estadisticas` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tantos_tiempo_enfrentamiento_id_foreign` FOREIGN KEY (`tiempo_enfrentamiento_id`) REFERENCES `tiempo_enfrentamiento` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tantos_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `torneo`
--
ALTER TABLE `torneo`
  ADD CONSTRAINT `torneo_categoria_id_foreign` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `torneo_temporada_id_foreign` FOREIGN KEY (`temporada_id`) REFERENCES `temporada` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `torneo_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_datos_basicos_id_foreign` FOREIGN KEY (`datos_basicos_id`) REFERENCES `datos_basicos` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Filtros para la tabla `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
