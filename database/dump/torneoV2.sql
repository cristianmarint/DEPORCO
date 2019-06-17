-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-06-2019 a las 18:30:04
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
(1, 'Arbitro principal', 'Arbitro #1 del encuntro', 1, NULL, '2019-05-22 01:54:33', '2019-05-22 01:54:33'),
(2, 'Arbitro secundario', 'Ayuda a tomar decisiones al arbitro principal', 2, NULL, '2019-05-22 01:54:33', '2019-05-22 01:54:33'),
(3, 'Encargado de la planilla', 'Ayuda a plasmar el enfrentamiento en los planillas', 2, NULL, '2019-05-22 01:54:33', '2019-05-22 01:54:33');

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
(1, 'Futbol-5', NULL, '2019-05-22 01:53:44', '2019-05-22 01:53:44'),
(2, 'Futbol-8', NULL, '2019-05-22 01:53:44', '2019-05-22 01:53:44'),
(3, 'Futbol-11', NULL, '2019-05-22 01:53:44', '2019-05-22 01:53:44');

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
(1, 'Olive', NULL, '2019-05-22 01:53:41', '2019-05-22 01:53:41'),
(2, 'LimeGreen', NULL, '2019-05-22 01:53:41', '2019-05-22 01:53:41'),
(3, 'PeachPuff', NULL, '2019-05-22 01:53:41', '2019-05-22 01:53:41'),
(4, 'GoldenRod', NULL, '2019-05-22 01:53:41', '2019-05-22 01:53:41'),
(5, 'DodgerBlue', NULL, '2019-05-22 01:53:41', '2019-05-22 01:53:41'),
(6, 'CadetBlue', NULL, '2019-05-22 01:53:41', '2019-05-22 01:53:41'),
(7, 'Wheat', NULL, '2019-05-22 01:53:41', '2019-05-22 01:53:41'),
(8, 'Lime', NULL, '2019-05-22 01:53:41', '2019-05-22 01:53:41'),
(9, 'DarkGoldenRod', NULL, '2019-05-22 01:53:41', '2019-05-22 01:53:41'),
(10, 'RosyBrown', NULL, '2019-05-22 01:53:41', '2019-05-22 01:53:41'),
(11, 'DarkTurquoise', NULL, '2019-05-22 01:53:41', '2019-05-22 01:53:41'),
(12, 'Coral', NULL, '2019-05-22 01:53:41', '2019-05-22 01:53:41'),
(13, 'ForestGreen', NULL, '2019-05-22 01:53:41', '2019-05-22 01:53:41'),
(14, 'CornflowerBlue', NULL, '2019-05-22 01:53:42', '2019-05-22 01:53:42'),
(15, 'Plum', NULL, '2019-05-22 01:53:42', '2019-05-22 01:53:42'),
(16, 'LightSlateGray', NULL, '2019-05-22 01:53:42', '2019-05-22 01:53:42'),
(17, 'MintCream', NULL, '2019-05-22 01:53:42', '2019-05-22 01:53:42'),
(18, 'IndianRed', NULL, '2019-05-22 01:53:42', '2019-05-22 01:53:42'),
(19, 'Moccasin', NULL, '2019-05-22 01:53:42', '2019-05-22 01:53:42'),
(20, 'SeaShell', NULL, '2019-05-22 01:53:42', '2019-05-22 01:53:42'),
(21, 'MediumVioletRed', NULL, '2019-05-22 01:53:42', '2019-05-22 01:53:42'),
(22, 'LawnGreen', NULL, '2019-05-22 01:53:42', '2019-05-22 01:53:42'),
(23, 'Cyan', NULL, '2019-05-22 01:53:42', '2019-05-22 01:53:42'),
(24, 'LightSeaGreen', NULL, '2019-05-22 01:53:42', '2019-05-22 01:53:42'),
(25, 'MediumSpringGreen', NULL, '2019-05-22 01:53:42', '2019-05-22 01:53:42'),
(26, 'Khaki', NULL, '2019-05-22 01:53:42', '2019-05-22 01:53:42'),
(27, 'Crimson', NULL, '2019-05-22 01:53:42', '2019-05-22 01:53:42'),
(28, 'GreenYellow', NULL, '2019-05-22 01:53:42', '2019-05-22 01:53:42'),
(29, 'Orange', NULL, '2019-05-22 01:53:42', '2019-05-22 01:53:42'),
(30, 'DeepPink', NULL, '2019-05-22 01:53:42', '2019-05-22 01:53:42'),
(31, 'DarkSeaGreen', NULL, '2019-05-22 01:53:42', '2019-05-22 01:53:42'),
(32, 'DarkViolet', NULL, '2019-05-22 01:53:42', '2019-05-22 01:53:42'),
(33, 'YellowGreen', NULL, '2019-05-22 01:53:42', '2019-05-22 01:53:42'),
(34, 'DarkSlateBlue', NULL, '2019-05-22 01:53:43', '2019-05-22 01:53:43'),
(35, 'AntiqueWhite', NULL, '2019-05-22 01:53:43', '2019-05-22 01:53:43'),
(36, 'Purple', NULL, '2019-05-22 01:53:43', '2019-05-22 01:53:43'),
(37, 'DarkCyan', NULL, '2019-05-22 01:53:43', '2019-05-22 01:53:43'),
(38, 'LightSteelBlue', NULL, '2019-05-22 01:53:43', '2019-05-22 01:53:43'),
(39, 'PowderBlue', NULL, '2019-05-22 01:53:43', '2019-05-22 01:53:43'),
(40, 'Tomato', NULL, '2019-05-22 01:53:43', '2019-05-22 01:53:43'),
(41, 'BlanchedAlmond', NULL, '2019-05-22 01:53:43', '2019-05-22 01:53:43'),
(42, 'BlueViolet', NULL, '2019-05-22 01:53:43', '2019-05-22 01:53:43'),
(43, 'DarkSlateGray', NULL, '2019-05-22 01:53:43', '2019-05-22 01:53:43'),
(44, 'Beige', NULL, '2019-05-22 01:53:43', '2019-05-22 01:53:43'),
(45, 'MediumBlue', NULL, '2019-05-22 01:53:43', '2019-05-22 01:53:43'),
(46, 'FireBrick', NULL, '2019-05-22 01:53:43', '2019-05-22 01:53:43'),
(47, 'MediumTurquoise', NULL, '2019-05-22 01:53:43', '2019-05-22 01:53:43'),
(48, 'Aqua', NULL, '2019-05-22 01:53:43', '2019-05-22 01:53:43'),
(49, 'Orchid', NULL, '2019-05-22 01:53:43', '2019-05-22 01:53:43'),
(50, 'BurlyWood', NULL, '2019-05-22 01:53:43', '2019-05-22 01:53:43');

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
(1, 'Puntos victoria', NULL, '2019-05-22 01:53:46', '2019-05-22 01:53:46'),
(2, 'Juego limpio', NULL, '2019-05-22 01:53:46', '2019-05-22 01:53:46');

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
(1, 1, 1, NULL, '2019-05-22 01:53:47', '2019-05-22 01:53:47');

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
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', '', '', 1, 0, NULL, '2019-05-22 01:53:09', '2019-05-22 01:53:09'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2019-05-22 01:53:09', '2019-05-22 01:53:09'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2019-05-22 01:53:10', '2019-05-22 01:53:10');

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
(1, '1112112112', 'storage/users/creators/cristian.jpg', NULL, 'Cristian', 'Alexander', 'Marín', 'Aguirre', 2, 30, 1, 85, 1, 'cristianmarint@cotecnova.edu.co', NULL, NULL, '2019-05-22 01:53:36', '2019-05-22 01:53:36'),
(2, '222111222', 'storage/users/creators/edwin.jpg', NULL, 'Edwin', NULL, 'Lopez', NULL, 1, 15, 1, 6, 7, 'edwin.lopezb.1297@cotecnova.edu.co', NULL, NULL, '2019-05-22 01:53:36', '2019-05-22 01:53:36'),
(3, '1393039030', 'https://loremflickr.com/400/400/player,sport', 21, 'Annamae', 'Nicole', 'Dach', 'Zulauf', 2, 4, 2, 5, 9, 'reilly.cynthia@hotmail.com', NULL, NULL, '2019-05-22 01:53:48', '2019-05-22 01:53:48'),
(4, '907259251', 'https://loremflickr.com/400/400/face,man', 23, 'Flavio', 'Vicente', 'Price', 'Kihn', 8, 43, 1, 59, 4, 'kris.domenica@hotmail.com', NULL, NULL, '2019-05-22 01:53:48', '2019-05-22 01:53:48'),
(5, '1227238761', 'https://loremflickr.com/400/400/face,woman', 25, 'Deondre', 'Zoie', 'Harber', 'Corkery', 2, 45, 3, 94, 4, 'tre50@treutel.com', NULL, NULL, '2019-05-22 01:53:48', '2019-05-22 01:53:48'),
(6, '1030731033', 'https://loremflickr.com/400/400/player,football', 27, 'Gardner', 'Ariane', 'Rodriguez', 'Walker', 1, 28, 2, 81, 2, 'dibbert.donny@corwin.biz', NULL, NULL, '2019-05-22 01:53:48', '2019-05-22 01:53:48'),
(7, '1082664535', 'https://loremflickr.com/400/400/player,soccer', 29, 'Angelica', 'Joey', 'Rutherford', 'Turner', 5, 22, 2, 64, 9, 'brielle.bogisich@carroll.com', NULL, NULL, '2019-05-22 01:53:49', '2019-05-22 01:53:49'),
(8, '1044818365', 'https://loremflickr.com/400/400/player,tennis', 31, 'Julio', 'Jordan', 'D\'Amore', 'Welch', 5, 3, 2, 3, 3, 'okeefe.marilou@mayer.org', NULL, NULL, '2019-05-22 01:53:49', '2019-05-22 01:53:49'),
(9, '477646487', 'https://loremflickr.com/400/400/person', 33, 'Selmer', 'Kaleb', 'Olson', 'Doyle', 7, 41, 2, 53, 2, 'labadie.payton@hotmail.com', NULL, NULL, '2019-05-22 01:53:49', '2019-05-22 01:53:49'),
(10, '595637260', 'https://loremflickr.com/400/400/face,man', 35, 'Twila', 'Stuart', 'Howell', 'Padberg', 8, 20, 1, 60, 3, 'lionel45@roob.org', NULL, NULL, '2019-05-22 01:53:49', '2019-05-22 01:53:49'),
(11, '1441591159', 'https://loremflickr.com/400/400/player,football', 37, 'Etha', 'Meta', 'Bradtke', 'Ledner', 6, 4, 3, 50, 6, 'lizeth.schulist@thiel.com', NULL, NULL, '2019-05-22 01:53:49', '2019-05-22 01:53:49'),
(12, '770594152', 'https://loremflickr.com/400/400/player,tennis', 39, 'Juliana', 'Curt', 'O\'Hara', 'Kautzer', 6, 27, 1, 22, 1, 'kaycee.zboncak@hotmail.com', NULL, NULL, '2019-05-22 01:53:49', '2019-05-22 01:53:49'),
(13, '693391955', 'https://loremflickr.com/400/400/player,football', 41, 'Herminia', 'Lydia', 'Volkman', 'Hyatt', 7, 33, 3, 64, 2, 'reynolds.rusty@blick.com', NULL, NULL, '2019-05-22 01:53:50', '2019-05-22 01:53:50'),
(14, '416264711', 'https://loremflickr.com/400/400/player,tennis', 43, 'Sallie', 'Gillian', 'Kessler', 'Rohan', 7, 10, 1, 87, 8, 'ozella40@gleichner.com', NULL, NULL, '2019-05-22 01:53:50', '2019-05-22 01:53:50'),
(15, '741635306', 'https://loremflickr.com/400/400/face,woman', 45, 'Nicholaus', 'Modesta', 'Wolff', 'Johns', 5, 47, 1, 27, 10, 'zrunte@yahoo.com', NULL, NULL, '2019-05-22 01:53:50', '2019-05-22 01:53:50'),
(16, '1487597247', 'https://loremflickr.com/400/400/player,sport', 47, 'Everette', 'Marcelina', 'McLaughlin', 'Boehm', 2, 21, 3, 55, 3, 'jessyca80@gmail.com', NULL, NULL, '2019-05-22 01:53:50', '2019-05-22 01:53:50'),
(17, '639835839', 'https://loremflickr.com/400/400/face,man', 49, 'Lindsey', 'Jeanne', 'Pagac', 'Zulauf', 5, 25, 2, 39, 10, 'macie.kassulke@gmail.com', NULL, NULL, '2019-05-22 01:53:50', '2019-05-22 01:53:50'),
(18, '108530550', 'https://loremflickr.com/400/400/face,man', 51, 'Matteo', 'Summer', 'Cartwright', 'Bergnaum', 4, 18, 2, 40, 2, 'dee.weimann@gmail.com', NULL, NULL, '2019-05-22 01:53:50', '2019-05-22 01:53:50'),
(19, '923057868', 'https://loremflickr.com/400/400/player,soccer', 53, 'Chelsey', 'Susie', 'Lubowitz', 'Beatty', 3, 49, 3, 5, 9, 'kiarra77@ohara.info', NULL, NULL, '2019-05-22 01:53:51', '2019-05-22 01:53:51'),
(20, '1336003120', 'https://loremflickr.com/400/400/player,football', 55, 'Ashton', 'Garrett', 'Harber', 'Koelpin', 5, 22, 2, 27, 5, 'katlynn.cremin@gmail.com', NULL, NULL, '2019-05-22 01:53:51', '2019-05-22 01:53:51'),
(21, '117285716', 'https://loremflickr.com/400/400/player,soccer', 57, 'Oral', 'Katarina', 'Hickle', 'Crooks', 3, 26, 3, 3, 7, 'deon95@gmail.com', NULL, NULL, '2019-05-22 01:53:51', '2019-05-22 01:53:51'),
(22, '910791489', 'https://loremflickr.com/400/400/player,man', 59, 'Makenna', 'Ellis', 'Stamm', 'Mayer', 5, 26, 2, 23, 10, 'zachary.adams@stokes.biz', NULL, NULL, '2019-05-22 01:53:51', '2019-05-22 01:53:51'),
(23, '1337349896', 'https://loremflickr.com/400/400/player,tennis', 61, 'Ellis', 'Maxie', 'Zboncak', 'Nolan', 7, 29, 1, 63, 3, 'casper.arnold@collins.com', NULL, NULL, '2019-05-22 01:53:51', '2019-05-22 01:53:51'),
(24, '775467990', 'https://loremflickr.com/400/400/face,woman', 63, 'Edyth', 'Edison', 'Murphy', 'Corwin', 3, 17, 3, 18, 7, 'blake00@yahoo.com', NULL, NULL, '2019-05-22 01:53:51', '2019-05-22 01:53:51'),
(25, '453718438', 'https://loremflickr.com/400/400/face,man', 65, 'Jonathan', 'Alvena', 'Emard', 'Mayert', 3, 5, 3, 1, 1, 'frami.jameson@yahoo.com', NULL, NULL, '2019-05-22 01:53:52', '2019-05-22 01:53:52'),
(26, '1061950626', 'https://loremflickr.com/400/400/face,woman', 67, 'Ryley', 'Khalil', 'Predovic', 'Cormier', 8, 47, 2, 52, 2, 'pharris@gislason.com', NULL, NULL, '2019-05-22 01:53:52', '2019-05-22 01:53:52'),
(27, '1378545658', 'https://loremflickr.com/400/400/player,tennis', 69, 'Chad', 'Jedidiah', 'Bergstrom', 'Witting', 3, 50, 2, 50, 7, 'fannie.bruen@harber.com', NULL, NULL, '2019-05-22 01:53:52', '2019-05-22 01:53:52'),
(28, '83158953', 'https://loremflickr.com/400/400/player,soccer', 71, 'Queen', 'Helene', 'Mohr', 'Konopelski', 6, 27, 1, 21, 1, 'jude.bruen@hotmail.com', NULL, NULL, '2019-05-22 01:53:52', '2019-05-22 01:53:52'),
(29, '466858399', 'https://loremflickr.com/400/400/face,man', 73, 'Sam', 'Alexander', 'Nikolaus', 'Bogan', 7, 25, 1, 82, 8, 'nichole.abernathy@oreilly.com', NULL, NULL, '2019-05-22 01:53:52', '2019-05-22 01:53:52'),
(30, '1139126148', 'https://loremflickr.com/400/400/face,woman', 75, 'Makenzie', 'Clemens', 'Johnston', 'Wehner', 5, 27, 3, 54, 1, 'jklocko@yahoo.com', NULL, NULL, '2019-05-22 01:53:53', '2019-05-22 01:53:53'),
(31, '997040459', 'https://loremflickr.com/400/400/person', 77, 'Bryana', 'Monique', 'Monahan', 'Renner', 8, 35, 3, 64, 7, 'feest.robb@mitchell.com', NULL, NULL, '2019-05-22 01:53:53', '2019-05-22 01:53:53'),
(32, '973381581', 'https://loremflickr.com/400/400/face,man', 79, 'Darlene', 'Lilly', 'Sanford', 'Quitzon', 8, 21, 1, 10, 3, 'okeefe.aiyana@leannon.com', NULL, NULL, '2019-05-22 01:53:53', '2019-05-22 01:53:53'),
(33, '1174174797', 'https://loremflickr.com/400/400/player,man', 81, 'German', 'Gardner', 'Cole', 'Torphy', 8, 31, 3, 17, 4, 'greenfelder.melba@auer.com', NULL, NULL, '2019-05-22 01:53:53', '2019-05-22 01:53:53'),
(34, '602942753', 'https://loremflickr.com/400/400/player,soccer', 83, 'Garnett', 'Raphaelle', 'Parker', 'McCullough', 5, 26, 1, 82, 5, 'robel.houston@hotmail.com', NULL, NULL, '2019-05-22 01:53:53', '2019-05-22 01:53:53'),
(35, '1311865176', 'https://loremflickr.com/400/400/face,man', 85, 'Giovanny', 'Bridie', 'Kuhn', 'Farrell', 8, 8, 2, 74, 8, 'bahringer.rosario@yahoo.com', NULL, NULL, '2019-05-22 01:53:54', '2019-05-22 01:53:54'),
(36, '1366577888', 'https://loremflickr.com/400/400/player,soccer', 87, 'Maurice', 'Beau', 'Thiel', 'Lubowitz', 7, 23, 1, 25, 5, 'dexter95@zemlak.net', NULL, NULL, '2019-05-22 01:53:54', '2019-05-22 01:53:54'),
(37, '573256100', 'https://loremflickr.com/400/400/player,soccer', 89, 'Devante', 'Jessie', 'Williamson', 'Botsford', 7, 44, 3, 85, 6, 'crooks.leila@hotmail.com', NULL, NULL, '2019-05-22 01:53:54', '2019-05-22 01:53:54'),
(38, '431939454', 'https://loremflickr.com/400/400/player,football', 91, 'Luis', 'Danielle', 'Mills', 'Erdman', 5, 17, 2, 71, 8, 'ahmed.steuber@hotmail.com', NULL, NULL, '2019-05-22 01:53:54', '2019-05-22 01:53:54'),
(39, '201814445', 'https://loremflickr.com/400/400/person', 93, 'Priscilla', 'Garrison', 'Stehr', 'Bruen', 5, 34, 1, 95, 2, 'audra51@sauer.com', NULL, NULL, '2019-05-22 01:53:54', '2019-05-22 01:53:54'),
(40, '139109229', 'https://loremflickr.com/400/400/player,man', 95, 'Jerrold', 'Shaniya', 'Kulas', 'VonRueden', 5, 19, 3, 13, 2, 'maritza17@waters.com', NULL, NULL, '2019-05-22 01:53:54', '2019-05-22 01:53:54'),
(41, '824694522', 'https://loremflickr.com/400/400/player,tennis', 97, 'Maybelle', 'Dustin', 'Welch', 'Wisoky', 5, 38, 1, 99, 7, 'kozey.vella@altenwerth.net', NULL, NULL, '2019-05-22 01:53:55', '2019-05-22 01:53:55'),
(42, '1200521316', 'https://loremflickr.com/400/400/player,tennis', 99, 'Albertha', 'Conner', 'Carroll', 'Feest', 5, 47, 2, 91, 8, 'connelly.harmon@yahoo.com', NULL, NULL, '2019-05-22 01:53:55', '2019-05-22 01:53:55'),
(43, '346742047', 'https://loremflickr.com/400/400/face,woman', 101, 'Cassie', 'Suzanne', 'Jacobs', 'O\'Keefe', 5, 25, 2, 24, 9, 'meghan.robel@blanda.com', NULL, NULL, '2019-05-22 01:53:55', '2019-05-22 01:53:55'),
(44, '206310391', 'https://loremflickr.com/400/400/face,man', 103, 'Heidi', 'Lenna', 'Reilly', 'Davis', 4, 10, 2, 81, 6, 'bonita.lockman@gmail.com', NULL, NULL, '2019-05-22 01:53:55', '2019-05-22 01:53:55'),
(45, '46016454', 'https://loremflickr.com/400/400/player,soccer', 105, 'Clemmie', 'Kaley', 'Schultz', 'Ondricka', 8, 30, 2, 82, 6, 'hbeatty@cummings.com', NULL, NULL, '2019-05-22 01:53:55', '2019-05-22 01:53:55'),
(46, '718689441', 'https://loremflickr.com/400/400/face,man', 107, 'Lorna', 'Khalid', 'Beatty', 'Rolfson', 7, 12, 3, 28, 3, 'cassin.harvey@hamill.com', NULL, NULL, '2019-05-22 01:53:55', '2019-05-22 01:53:55'),
(47, '890093470', 'https://loremflickr.com/400/400/face,man', 109, 'Andy', 'Gladyce', 'Wiza', 'Gleichner', 7, 37, 3, 66, 10, 'twila86@lang.com', NULL, NULL, '2019-05-22 01:53:55', '2019-05-22 01:53:55'),
(48, '401235936', 'https://loremflickr.com/400/400/player,tennis', 111, 'Alda', 'Willis', 'Volkman', 'Purdy', 7, 49, 3, 2, 3, 'moen.ward@leannon.net', NULL, NULL, '2019-05-22 01:53:56', '2019-05-22 01:53:56'),
(49, '329814210', 'https://loremflickr.com/400/400/player,man', 113, 'Tyra', 'Faye', 'Bartell', 'Kuhlman', 1, 18, 1, 70, 10, 'zkub@hotmail.com', NULL, NULL, '2019-05-22 01:53:56', '2019-05-22 01:53:56'),
(50, '952681377', 'https://loremflickr.com/400/400/person', 115, 'Lilliana', 'Adele', 'Christiansen', 'Halvorson', 2, 20, 3, 87, 8, 'hagenes.jerod@hotmail.com', NULL, NULL, '2019-05-22 01:53:56', '2019-05-22 01:53:56'),
(51, '542079571', 'https://loremflickr.com/400/400/player,soccer', 117, 'Preston', 'Kyra', 'Vandervort', 'Senger', 1, 49, 2, 55, 9, 'colt50@hotmail.com', NULL, NULL, '2019-05-22 01:53:56', '2019-05-22 01:53:56'),
(52, '1507691286', 'https://loremflickr.com/400/400/person', 119, 'Xander', 'Xavier', 'Donnelly', 'Frami', 8, 43, 1, 45, 8, 'ubechtelar@price.info', NULL, NULL, '2019-05-22 01:53:56', '2019-05-22 01:53:56'),
(53, '1379965580', 'https://loremflickr.com/400/400/player,soccer', 121, 'Celia', 'Magnolia', 'Towne', 'Pouros', 3, 19, 1, 24, 5, 'monahan.iva@gmail.com', NULL, NULL, '2019-05-22 01:53:56', '2019-05-22 01:53:56'),
(54, '32744088', 'https://loremflickr.com/400/400/player,man', 123, 'Alena', 'Marjolaine', 'Prosacco', 'DuBuque', 4, 28, 3, 13, 1, 'greyson.fisher@wyman.com', NULL, NULL, '2019-05-22 01:53:57', '2019-05-22 01:53:57'),
(55, '746422425', 'https://loremflickr.com/400/400/player,tennis', 125, 'Moses', 'Mervin', 'Blick', 'Johnson', 6, 21, 1, 59, 7, 'regan77@yahoo.com', NULL, NULL, '2019-05-22 01:53:57', '2019-05-22 01:53:57'),
(56, '1318814327', 'https://loremflickr.com/400/400/player,football', 127, 'Amber', 'Aleen', 'Jast', 'Huel', 5, 7, 2, 73, 5, 'lorine45@kunde.com', NULL, NULL, '2019-05-22 01:53:57', '2019-05-22 01:53:57'),
(57, '178388370', 'https://loremflickr.com/400/400/player,football', 129, 'Filiberto', 'Audreanne', 'VonRueden', 'Collins', 6, 1, 3, 70, 5, 'qstiedemann@vandervort.com', NULL, NULL, '2019-05-22 01:53:57', '2019-05-22 01:53:57'),
(58, '23490794', 'https://loremflickr.com/400/400/player,sport', 131, 'Addison', 'Leonel', 'Towne', 'Bergstrom', 8, 6, 3, 66, 9, 'ivory.buckridge@turcotte.biz', NULL, NULL, '2019-05-22 01:53:57', '2019-05-22 01:53:57'),
(59, '910230697', 'https://loremflickr.com/400/400/face,woman', 133, 'Davin', 'Ruthie', 'Greenholt', 'Collier', 8, 29, 3, 55, 3, 'kavon82@gmail.com', NULL, NULL, '2019-05-22 01:53:57', '2019-05-22 01:53:57'),
(60, '677224565', 'https://loremflickr.com/400/400/player,sport', 135, 'Alvis', 'Autumn', 'Schaden', 'McKenzie', 8, 35, 3, 64, 1, 'angelo.cartwright@weimann.info', NULL, NULL, '2019-05-22 01:53:57', '2019-05-22 01:53:57'),
(61, '113704069', 'https://loremflickr.com/400/400/person', 137, 'Leopoldo', 'Bria', 'Deckow', 'Block', 1, 30, 2, 85, 7, 'belle.sporer@gmail.com', NULL, NULL, '2019-05-22 01:53:58', '2019-05-22 01:53:58'),
(62, '789818873', 'https://loremflickr.com/400/400/face,man', 139, 'Hillary', 'Garnet', 'Zulauf', 'Bogisich', 6, 16, 1, 99, 3, 'darius54@yahoo.com', NULL, NULL, '2019-05-22 01:53:58', '2019-05-22 01:53:58'),
(63, '1414262002', 'https://loremflickr.com/400/400/player,soccer', 141, 'Brody', 'Sherwood', 'Hansen', 'Pfeffer', 3, 49, 2, 67, 9, 'qcarter@gmail.com', NULL, NULL, '2019-05-22 01:53:58', '2019-05-22 01:53:58'),
(64, '569176328', 'https://loremflickr.com/400/400/player,sport', 143, 'Aisha', 'Leonor', 'Schultz', 'Powlowski', 2, 49, 1, 15, 8, 'williamson.khalil@anderson.info', NULL, NULL, '2019-05-22 01:53:58', '2019-05-22 01:53:58'),
(65, '1296023945', 'https://loremflickr.com/400/400/face,man', 145, 'Onie', 'Gerda', 'Yost', 'Crist', 1, 19, 1, 13, 4, 'karson41@barrows.com', NULL, NULL, '2019-05-22 01:53:58', '2019-05-22 01:53:58'),
(66, '1091473906', 'https://loremflickr.com/400/400/player,soccer', 147, 'Magnolia', 'Anjali', 'Mitchell', 'Daugherty', 5, 20, 1, 37, 4, 'jamel45@hotmail.com', NULL, NULL, '2019-05-22 01:53:59', '2019-05-22 01:53:59'),
(67, '223506111', 'https://loremflickr.com/400/400/player,soccer', 149, 'Kassandra', 'Enrique', 'Kshlerin', 'Braun', 2, 11, 2, 53, 5, 'gladys.murphy@blick.biz', NULL, NULL, '2019-05-22 01:53:59', '2019-05-22 01:53:59'),
(68, '120555739', 'https://loremflickr.com/400/400/player,soccer', 151, 'Ernesto', 'Emmanuelle', 'Jakubowski', 'Kuhlman', 6, 36, 1, 14, 8, 'dasia49@brakus.info', NULL, NULL, '2019-05-22 01:53:59', '2019-05-22 01:53:59'),
(69, '47874850', 'https://loremflickr.com/400/400/face,man', 153, 'Nannie', 'Tabitha', 'Sauer', 'Tremblay', 2, 3, 1, 14, 4, 'irma.leffler@doyle.com', NULL, NULL, '2019-05-22 01:53:59', '2019-05-22 01:53:59'),
(70, '1239672850', 'https://loremflickr.com/400/400/face,man', 155, 'Yasmine', 'Tressie', 'Beer', 'Mills', 3, 20, 1, 48, 2, 'paucek.miles@zulauf.com', NULL, NULL, '2019-05-22 01:53:59', '2019-05-22 01:53:59'),
(71, '240048850', 'https://loremflickr.com/400/400/player,football', 157, 'Lazaro', 'Cleveland', 'Renner', 'Kuhn', 2, 30, 3, 59, 3, 'ffranecki@batz.biz', NULL, NULL, '2019-05-22 01:53:59', '2019-05-22 01:53:59'),
(72, '661877146', 'https://loremflickr.com/400/400/person', 159, 'Wilson', 'Tiara', 'Smitham', 'Dickens', 6, 23, 3, 6, 10, 'ckuvalis@hotmail.com', NULL, NULL, '2019-05-22 01:54:00', '2019-05-22 01:54:00'),
(73, '57573647', 'https://loremflickr.com/400/400/player,football', 161, 'Zetta', 'Cloyd', 'Schuster', 'Hyatt', 8, 2, 1, 83, 4, 'deja.hermiston@bashirian.com', NULL, NULL, '2019-05-22 01:54:00', '2019-05-22 01:54:00'),
(74, '414335325', 'https://loremflickr.com/400/400/player,sport', 163, 'Antoinette', 'Toby', 'Kshlerin', 'Hyatt', 6, 35, 2, 17, 7, 'amber.ratke@yahoo.com', NULL, NULL, '2019-05-22 01:54:00', '2019-05-22 01:54:00'),
(75, '1505701224', 'https://loremflickr.com/400/400/player,man', 165, 'Davion', 'Donavon', 'Cremin', 'Mayert', 4, 33, 2, 86, 8, 'bosco.wilson@gmail.com', NULL, NULL, '2019-05-22 01:54:00', '2019-05-22 01:54:00'),
(76, '355489136', 'https://loremflickr.com/400/400/player,man', 167, 'Alessia', 'Duncan', 'McLaughlin', 'Hoeger', 6, 16, 3, 7, 2, 'ellie.stroman@gmail.com', NULL, NULL, '2019-05-22 01:54:00', '2019-05-22 01:54:00'),
(77, '206228655', 'https://loremflickr.com/400/400/face,man', 169, 'Brooks', 'Sharon', 'Morissette', 'Swift', 3, 18, 1, 35, 1, 'reid21@gmail.com', NULL, NULL, '2019-05-22 01:54:00', '2019-05-22 01:54:00'),
(78, '1434140782', 'https://loremflickr.com/400/400/player,soccer', 171, 'Lafayette', 'Vallie', 'Berge', 'Spencer', 1, 4, 3, 37, 7, 'mklocko@erdman.com', NULL, NULL, '2019-05-22 01:54:00', '2019-05-22 01:54:00'),
(79, '344985721', 'https://loremflickr.com/400/400/player,soccer', 173, 'Marlon', 'Annette', 'O\'Kon', 'Turcotte', 2, 19, 3, 29, 4, 'ttorphy@oconnell.info', NULL, NULL, '2019-05-22 01:54:01', '2019-05-22 01:54:01'),
(80, '176971522', 'https://loremflickr.com/400/400/player,man', 175, 'Lauriane', 'Hannah', 'Williamson', 'Bartoletti', 7, 23, 2, 44, 5, 'crooks.justine@hotmail.com', NULL, NULL, '2019-05-22 01:54:01', '2019-05-22 01:54:01'),
(81, '1185975904', 'https://loremflickr.com/400/400/player,man', 177, 'Gunner', 'Rowena', 'Ebert', 'Reilly', 5, 22, 2, 68, 3, 'barbara.fisher@rolfson.com', NULL, NULL, '2019-05-22 01:54:01', '2019-05-22 01:54:01'),
(82, '1082805342', 'https://loremflickr.com/400/400/player,football', 179, 'Libbie', 'Andreane', 'Wilkinson', 'Wiza', 5, 5, 2, 97, 8, 'mellie36@hagenes.biz', NULL, NULL, '2019-05-22 01:54:01', '2019-05-22 01:54:01'),
(83, '1211222916', 'https://loremflickr.com/400/400/face,man', 181, 'Madelyn', 'Marion', 'Schimmel', 'Beier', 7, 1, 1, 79, 3, 'kwaelchi@gmail.com', NULL, NULL, '2019-05-22 01:54:01', '2019-05-22 01:54:01'),
(84, '411581567', 'https://loremflickr.com/400/400/player,football', 183, 'Myriam', 'Nicolas', 'Lesch', 'Olson', 7, 27, 2, 87, 5, 'volkman.earnest@yahoo.com', NULL, NULL, '2019-05-22 01:54:01', '2019-05-22 01:54:01'),
(85, '269388753', 'https://loremflickr.com/400/400/player,man', 185, 'Angela', 'Keira', 'O\'Kon', 'Schowalter', 5, 40, 3, 90, 6, 'marco59@yahoo.com', NULL, NULL, '2019-05-22 01:54:02', '2019-05-22 01:54:02'),
(86, '1162092722', 'https://loremflickr.com/400/400/player,man', 187, 'Anissa', 'Edwardo', 'Koepp', 'Sporer', 7, 6, 1, 46, 1, 'alvina.gerlach@gmail.com', NULL, NULL, '2019-05-22 01:54:02', '2019-05-22 01:54:02'),
(87, '509253056', 'https://loremflickr.com/400/400/player,soccer', 189, 'Jamarcus', 'Jermey', 'Bradtke', 'Kozey', 3, 40, 3, 70, 9, 'carissa.ruecker@gmail.com', NULL, NULL, '2019-05-22 01:54:02', '2019-05-22 01:54:02'),
(88, '492649023', 'https://loremflickr.com/400/400/player,tennis', 191, 'Mustafa', 'Filiberto', 'Kirlin', 'Bode', 5, 31, 3, 76, 4, 'lucinda.anderson@gmail.com', NULL, NULL, '2019-05-22 01:54:02', '2019-05-22 01:54:02'),
(89, '1124907043', 'https://loremflickr.com/400/400/player,tennis', 193, 'Beulah', 'Maynard', 'Larson', 'Kuphal', 3, 16, 2, 57, 2, 'lueilwitz.sofia@hotmail.com', NULL, NULL, '2019-05-22 01:54:02', '2019-05-22 01:54:02'),
(90, '878235367', 'https://loremflickr.com/400/400/player,soccer', 195, 'Ottilie', 'Andres', 'Kling', 'Monahan', 8, 48, 3, 28, 3, 'sohara@kirlin.net', NULL, NULL, '2019-05-22 01:54:02', '2019-05-22 01:54:02'),
(91, '1190876846', 'https://loremflickr.com/400/400/person', 197, 'Nolan', 'Annie', 'Herzog', 'Daugherty', 7, 24, 1, 31, 2, 'garett29@bernhard.com', NULL, NULL, '2019-05-22 01:54:02', '2019-05-22 01:54:02'),
(92, '1315319746', 'https://loremflickr.com/400/400/face,man', 199, 'Nico', 'Wilfrid', 'Powlowski', 'Murazik', 6, 37, 3, 2, 9, 'eherman@mitchell.biz', NULL, NULL, '2019-05-22 01:54:03', '2019-05-22 01:54:03'),
(93, '497716189', 'https://loremflickr.com/400/400/player,sport', 201, 'Ken', 'Aisha', 'Abbott', 'Kerluke', 2, 11, 1, 5, 4, 'rickey.emmerich@yahoo.com', NULL, NULL, '2019-05-22 01:54:03', '2019-05-22 01:54:03'),
(94, '842542202', 'https://loremflickr.com/400/400/face,woman', 203, 'Lia', 'Retha', 'Swift', 'Spinka', 2, 38, 2, 67, 3, 'kovacek.robin@lang.com', NULL, NULL, '2019-05-22 01:54:03', '2019-05-22 01:54:03'),
(95, '668054706', 'https://loremflickr.com/400/400/player,tennis', 205, 'Anibal', 'Chet', 'Daugherty', 'Littel', 5, 40, 3, 4, 8, 'conner13@hotmail.com', NULL, NULL, '2019-05-22 01:54:03', '2019-05-22 01:54:03'),
(96, '462622298', 'https://loremflickr.com/400/400/player,soccer', 207, 'Zachariah', 'Antonetta', 'Barton', 'Gusikowski', 1, 28, 2, 28, 8, 'bert34@krajcik.com', NULL, NULL, '2019-05-22 01:54:03', '2019-05-22 01:54:03'),
(97, '1049691500', 'https://loremflickr.com/400/400/face,woman', 209, 'Cristopher', 'Ashly', 'Hagenes', 'Heller', 4, 32, 2, 7, 1, 'stephen.rutherford@yahoo.com', NULL, NULL, '2019-05-22 01:54:03', '2019-05-22 01:54:03'),
(98, '220524700', 'https://loremflickr.com/400/400/person', 211, 'Dean', 'Darrel', 'Ankunding', 'Schultz', 5, 14, 2, 61, 4, 'asia16@gmail.com', NULL, NULL, '2019-05-22 01:54:03', '2019-05-22 01:54:03'),
(99, '1362117484', 'https://loremflickr.com/400/400/person', 213, 'Rocky', 'Karelle', 'Windler', 'Okuneva', 2, 12, 2, 81, 1, 'nova36@hotmail.com', NULL, NULL, '2019-05-22 01:54:04', '2019-05-22 01:54:04'),
(100, '707214457', 'https://loremflickr.com/400/400/face,woman', 215, 'Alessandro', 'Wilfred', 'Muller', 'Ferry', 8, 20, 1, 47, 8, 'kraynor@hotmail.com', NULL, NULL, '2019-05-22 01:54:04', '2019-05-22 01:54:04'),
(101, '719550155', 'https://loremflickr.com/400/400/player,soccer', 217, 'Fredy', 'Vinnie', 'Considine', 'O\'Connell', 5, 5, 1, 62, 2, 'bailey.hoeger@spencer.com', NULL, NULL, '2019-05-22 01:54:04', '2019-05-22 01:54:04'),
(102, '823087443', 'https://loremflickr.com/400/400/player,tennis', 219, 'Mayra', 'Friedrich', 'Gibson', 'Bednar', 4, 5, 3, 84, 2, 'eulalia65@hotmail.com', NULL, NULL, '2019-05-22 01:54:04', '2019-05-22 01:54:04'),
(103, '325552291', 'https://loremflickr.com/400/400/person', 221, 'Alia', 'Osborne', 'Toy', 'Collins', 4, 47, 3, 65, 9, 'billie93@hotmail.com', NULL, NULL, '2019-05-22 01:54:04', '2019-05-22 01:54:04'),
(104, '93577156', 'https://loremflickr.com/400/400/face,woman', 223, 'Helena', 'Brown', 'Bode', 'Lubowitz', 3, 1, 3, 60, 2, 'ierdman@okeefe.com', NULL, NULL, '2019-05-22 01:54:04', '2019-05-22 01:54:04'),
(105, '344293552', 'https://loremflickr.com/400/400/player,football', 225, 'Devan', 'Terry', 'Kuhlman', 'Bernier', 1, 47, 2, 37, 8, 'verner73@gmail.com', NULL, NULL, '2019-05-22 01:54:04', '2019-05-22 01:54:04'),
(106, '827803044', 'https://loremflickr.com/400/400/person', 227, 'Jennyfer', 'Delphine', 'Cummerata', 'Cronin', 8, 45, 3, 37, 9, 'lritchie@cronin.net', NULL, NULL, '2019-05-22 01:54:05', '2019-05-22 01:54:05'),
(107, '499454233', 'https://loremflickr.com/400/400/person', 229, 'Cristina', 'Iva', 'Paucek', 'Franecki', 5, 43, 1, 63, 9, 'robyn55@jacobson.com', NULL, NULL, '2019-05-22 01:54:05', '2019-05-22 01:54:05'),
(108, '446427156', 'https://loremflickr.com/400/400/player,tennis', 231, 'Darryl', 'Darion', 'Smitham', 'Larkin', 3, 23, 1, 29, 2, 'rlockman@hansen.com', NULL, NULL, '2019-05-22 01:54:05', '2019-05-22 01:54:05'),
(109, '77818543', 'https://loremflickr.com/400/400/player,soccer', 233, 'Jamie', 'Helene', 'Treutel', 'Murphy', 4, 38, 1, 51, 4, 'ullrich.americo@leannon.com', NULL, NULL, '2019-05-22 01:54:05', '2019-05-22 01:54:05'),
(110, '340044327', 'https://loremflickr.com/400/400/person', 235, 'Elisabeth', 'Annamae', 'Larson', 'Bergnaum', 6, 11, 1, 5, 3, 'lubowitz.liza@yahoo.com', NULL, NULL, '2019-05-22 01:54:05', '2019-05-22 01:54:05'),
(111, '888172566', 'https://loremflickr.com/400/400/face,woman', 237, 'Frederik', 'Al', 'O\'Conner', 'Franecki', 8, 24, 1, 94, 6, 'bconsidine@gmail.com', NULL, NULL, '2019-05-22 01:54:05', '2019-05-22 01:54:05'),
(112, '1341676245', 'https://loremflickr.com/400/400/player,sport', 239, 'Malachi', 'Maximo', 'Baumbach', 'Aufderhar', 7, 45, 3, 56, 5, 'libby.connelly@yahoo.com', NULL, NULL, '2019-05-22 01:54:05', '2019-05-22 01:54:05'),
(113, '595880299', 'https://loremflickr.com/400/400/player,football', 241, 'Orlo', 'Richmond', 'Schroeder', 'Wolf', 6, 48, 1, 66, 9, 'daniella75@hotmail.com', NULL, NULL, '2019-05-22 01:54:06', '2019-05-22 01:54:06'),
(114, '1023890631', 'https://loremflickr.com/400/400/player,man', 243, 'Demetrius', 'Kayleigh', 'Denesik', 'Wehner', 3, 1, 1, 93, 8, 'lindgren.jeromy@gmail.com', NULL, NULL, '2019-05-22 01:54:06', '2019-05-22 01:54:06'),
(115, '267835792', 'https://loremflickr.com/400/400/player,tennis', 245, 'Treva', 'Adrien', 'Price', 'Daugherty', 5, 2, 1, 75, 10, 'vernice.johns@sauer.com', NULL, NULL, '2019-05-22 01:54:06', '2019-05-22 01:54:06'),
(116, '1084279681', 'https://loremflickr.com/400/400/person', 247, 'Orpha', 'Angus', 'Wiza', 'Lubowitz', 1, 48, 1, 96, 10, 'alex.botsford@bauch.biz', NULL, NULL, '2019-05-22 01:54:06', '2019-05-22 01:54:06'),
(117, '978886252', 'https://loremflickr.com/400/400/player,football', 249, 'Kim', 'Camille', 'Wyman', 'Daugherty', 3, 25, 1, 50, 4, 'gbergnaum@sawayn.com', NULL, NULL, '2019-05-22 01:54:06', '2019-05-22 01:54:06'),
(118, '1163423673', 'https://loremflickr.com/400/400/face,woman', 251, 'Drew', 'Beatrice', 'Hintz', 'Kulas', 4, 39, 2, 7, 4, 'iward@yahoo.com', NULL, NULL, '2019-05-22 01:54:06', '2019-05-22 01:54:06'),
(119, '962792879', 'https://loremflickr.com/400/400/player,man', 253, 'Heather', 'Carrie', 'Kreiger', 'Bartoletti', 5, 33, 3, 39, 9, 'dstroman@hotmail.com', NULL, NULL, '2019-05-22 01:54:07', '2019-05-22 01:54:07'),
(120, '1104229240', 'https://loremflickr.com/400/400/player,football', 255, 'Gaylord', 'Nelle', 'Hermann', 'Herman', 5, 15, 3, 97, 5, 'dallin.kshlerin@gmail.com', NULL, NULL, '2019-05-22 01:54:07', '2019-05-22 01:54:07'),
(121, '710373531', 'https://loremflickr.com/400/400/player,sport', 257, 'Zion', 'Serena', 'Langosh', 'Emmerich', 5, 8, 3, 47, 6, 'austyn.veum@frami.org', NULL, NULL, '2019-05-22 01:54:07', '2019-05-22 01:54:07'),
(122, '910617765', 'https://loremflickr.com/400/400/face,man', 259, 'Jana', 'Antonina', 'Hand', 'Renner', 5, 36, 1, 54, 4, 'huel.jamie@gmail.com', NULL, NULL, '2019-05-22 01:54:07', '2019-05-22 01:54:07'),
(123, '91146491', 'https://loremflickr.com/400/400/person', 261, 'London', 'Hazle', 'Schuppe', 'Donnelly', 1, 44, 3, 87, 6, 'heidi.vonrueden@gmail.com', NULL, NULL, '2019-05-22 01:54:07', '2019-05-22 01:54:07'),
(124, '1105661035', 'https://loremflickr.com/400/400/player,football', 263, 'Estelle', 'Elwyn', 'Greenholt', 'Jakubowski', 8, 36, 2, 63, 10, 'oklocko@corkery.com', NULL, NULL, '2019-05-22 01:54:08', '2019-05-22 01:54:08'),
(125, '1248001064', 'https://loremflickr.com/400/400/player,sport', 265, 'Winston', 'Orville', 'Kessler', 'Spencer', 8, 38, 2, 44, 8, 'gretchen.rohan@gmail.com', NULL, NULL, '2019-05-22 01:54:08', '2019-05-22 01:54:08'),
(126, '1372649717', 'https://loremflickr.com/400/400/face,man', 267, 'Desmond', 'Judy', 'Schaefer', 'Beatty', 5, 16, 1, 17, 1, 'monahan.felipe@klocko.info', NULL, NULL, '2019-05-22 01:54:08', '2019-05-22 01:54:08'),
(127, '97166329', 'https://loremflickr.com/400/400/player,sport', 269, 'Carmen', 'Darion', 'Herman', 'Robel', 8, 29, 3, 4, 5, 'krista50@mertz.com', NULL, NULL, '2019-05-22 01:54:08', '2019-05-22 01:54:08'),
(128, '431972520', 'https://loremflickr.com/400/400/player,tennis', 271, 'Jessika', 'Quentin', 'Hodkiewicz', 'Rau', 5, 26, 1, 51, 2, 'nwhite@homenick.com', NULL, NULL, '2019-05-22 01:54:08', '2019-05-22 01:54:08'),
(129, '573948122', 'https://loremflickr.com/400/400/face,man', 273, 'Marcia', 'Amy', 'Jones', 'Fay', 4, 36, 2, 48, 1, 'dare.audreanne@kemmer.com', NULL, NULL, '2019-05-22 01:54:09', '2019-05-22 01:54:09'),
(130, '1163890356', 'https://loremflickr.com/400/400/player,football', 275, 'Catherine', 'Efrain', 'Bahringer', 'Lakin', 5, 30, 1, 57, 5, 'xvolkman@yahoo.com', NULL, NULL, '2019-05-22 01:54:09', '2019-05-22 01:54:09'),
(131, '734893686', 'https://loremflickr.com/400/400/face,woman', 277, 'Nona', 'Tremaine', 'Yundt', 'Ward', 8, 17, 2, 24, 1, 'merle21@hotmail.com', NULL, NULL, '2019-05-22 01:54:09', '2019-05-22 01:54:09'),
(132, '295334267', 'https://loremflickr.com/400/400/face,man', 279, 'Rhianna', 'Alexander', 'Kozey', 'Jacobi', 6, 20, 1, 61, 5, 'sweissnat@hotmail.com', NULL, NULL, '2019-05-22 01:54:09', '2019-05-22 01:54:09'),
(133, '21198332', 'https://loremflickr.com/400/400/player,man', 281, 'Kaela', 'Louisa', 'Wunsch', 'Carroll', 6, 4, 2, 15, 9, 'desmond49@yahoo.com', NULL, NULL, '2019-05-22 01:54:09', '2019-05-22 01:54:09'),
(134, '24458551', 'https://loremflickr.com/400/400/face,woman', 283, 'Madisyn', 'Tyrese', 'Cremin', 'Harvey', 8, 8, 2, 59, 4, 'haskell71@gmail.com', NULL, NULL, '2019-05-22 01:54:09', '2019-05-22 01:54:09'),
(135, '1331051989', 'https://loremflickr.com/400/400/face,man', 285, 'Neal', 'Lane', 'Rice', 'Carroll', 8, 35, 2, 88, 3, 'lueilwitz.shaina@hotmail.com', NULL, NULL, '2019-05-22 01:54:09', '2019-05-22 01:54:09'),
(136, '1191530035', 'https://loremflickr.com/400/400/player,football', 287, 'Kari', 'D\'angelo', 'Bashirian', 'Ledner', 5, 9, 2, 78, 2, 'ikirlin@ryan.net', NULL, NULL, '2019-05-22 01:54:10', '2019-05-22 01:54:10'),
(137, '793714269', 'https://loremflickr.com/400/400/player,football', 289, 'Vita', 'Percival', 'Williamson', 'Fahey', 4, 21, 2, 50, 1, 'dylan.dicki@yahoo.com', NULL, NULL, '2019-05-22 01:54:10', '2019-05-22 01:54:10'),
(138, '1423417603', 'https://loremflickr.com/400/400/person', 291, 'Stone', 'Glenna', 'Hirthe', 'Wiza', 1, 32, 3, 19, 5, 'dromaguera@yahoo.com', NULL, NULL, '2019-05-22 01:54:10', '2019-05-22 01:54:10'),
(139, '222710864', 'https://loremflickr.com/400/400/player,sport', 293, 'Magdalen', 'Mattie', 'Wilderman', 'Kshlerin', 4, 36, 3, 58, 1, 'jacobs.darrick@torp.org', NULL, NULL, '2019-05-22 01:54:10', '2019-05-22 01:54:10'),
(140, '740335285', 'https://loremflickr.com/400/400/player,sport', 295, 'Elise', 'Sofia', 'Botsford', 'Abshire', 8, 4, 2, 57, 10, 'haley.cecelia@ondricka.net', NULL, NULL, '2019-05-22 01:54:10', '2019-05-22 01:54:10'),
(141, '920430363', 'https://loremflickr.com/400/400/player,soccer', 297, 'Mattie', 'Alphonso', 'DuBuque', 'Grant', 5, 36, 2, 70, 6, 'vgreenfelder@gmail.com', NULL, NULL, '2019-05-22 01:54:10', '2019-05-22 01:54:10'),
(142, '441018226', 'https://loremflickr.com/400/400/face,woman', 299, 'Melisa', 'Emmet', 'Buckridge', 'Cummerata', 1, 35, 1, 32, 10, 'iwaters@hudson.com', NULL, NULL, '2019-05-22 01:54:10', '2019-05-22 01:54:10'),
(143, '1391609480', 'https://loremflickr.com/400/400/face,man', 301, 'Cindy', 'Diana', 'Kris', 'Gerlach', 6, 8, 1, 7, 4, 'zaufderhar@yahoo.com', NULL, NULL, '2019-05-22 01:54:10', '2019-05-22 01:54:10'),
(144, '1427370965', 'https://loremflickr.com/400/400/player,football', 303, 'Lauren', 'Maybelle', 'Wolf', 'Howe', 8, 19, 3, 65, 6, 'henri.hammes@gmail.com', NULL, NULL, '2019-05-22 01:54:11', '2019-05-22 01:54:11'),
(145, '131270803', 'https://loremflickr.com/400/400/face,man', 305, 'Elinore', 'Alene', 'Moen', 'Balistreri', 1, 32, 3, 33, 3, 'lzieme@rowe.com', NULL, NULL, '2019-05-22 01:54:11', '2019-05-22 01:54:11'),
(146, '1237100045', 'https://loremflickr.com/400/400/player,football', 307, 'Jaden', 'Rachelle', 'Kuhn', 'Jacobi', 4, 36, 1, 62, 9, 'gvandervort@kshlerin.com', NULL, NULL, '2019-05-22 01:54:11', '2019-05-22 01:54:11'),
(147, '919987781', 'https://loremflickr.com/400/400/player,soccer', 309, 'Emmett', 'Garnet', 'Nikolaus', 'Torp', 4, 43, 2, 69, 4, 'kimberly69@hotmail.com', NULL, NULL, '2019-05-22 01:54:11', '2019-05-22 01:54:11'),
(148, '1330115109', 'https://loremflickr.com/400/400/player,soccer', 311, 'Maximilian', 'Crystal', 'Borer', 'Heidenreich', 6, 19, 3, 76, 7, 'kgorczany@watsica.com', NULL, NULL, '2019-05-22 01:54:12', '2019-05-22 01:54:12'),
(149, '1186683342', 'https://loremflickr.com/400/400/player,tennis', 313, 'Spencer', 'Vincent', 'Schmeler', 'McDermott', 6, 37, 3, 27, 5, 'agerlach@yahoo.com', NULL, NULL, '2019-05-22 01:54:12', '2019-05-22 01:54:12'),
(150, '128573507', 'https://loremflickr.com/400/400/player,football', 315, 'Alfredo', 'Celestino', 'Dietrich', 'Kunze', 4, 15, 1, 14, 7, 'wveum@hansen.com', NULL, NULL, '2019-05-22 01:54:12', '2019-05-22 01:54:12'),
(151, '1539617560', 'https://loremflickr.com/400/400/player,tennis', 317, 'Palma', 'Ryann', 'Borer', 'Hill', 8, 5, 1, 9, 10, 'walter.rebecca@hotmail.com', NULL, NULL, '2019-05-22 01:54:12', '2019-05-22 01:54:12'),
(152, '189839058', 'https://loremflickr.com/400/400/player,football', 319, 'Junior', 'Myrtis', 'Graham', 'Moore', 7, 47, 2, 28, 6, 'vschiller@dicki.com', NULL, NULL, '2019-05-22 01:54:12', '2019-05-22 01:54:12'),
(153, '1032764899', 'https://loremflickr.com/400/400/face,woman', 321, 'Giuseppe', 'Zelda', 'Howell', 'Walker', 5, 19, 3, 41, 9, 'orlo.hoeger@yahoo.com', NULL, NULL, '2019-05-22 01:54:13', '2019-05-22 01:54:13'),
(154, '160238143', 'https://loremflickr.com/400/400/player,tennis', 323, 'Stacey', 'Wilbert', 'Paucek', 'Armstrong', 6, 17, 1, 52, 9, 'gabriella.rutherford@windler.org', NULL, NULL, '2019-05-22 01:54:13', '2019-05-22 01:54:13'),
(155, '639725009', 'https://loremflickr.com/400/400/face,man', 325, 'Linnea', 'Jailyn', 'Dach', 'Miller', 6, 22, 2, 85, 4, 'dshanahan@erdman.com', NULL, NULL, '2019-05-22 01:54:13', '2019-05-22 01:54:13'),
(156, '487320899', 'https://loremflickr.com/400/400/person', 327, 'Ayana', 'Jacinto', 'Bins', 'Padberg', 6, 25, 3, 99, 2, 'joshua.hermann@howell.com', NULL, NULL, '2019-05-22 01:54:13', '2019-05-22 01:54:13'),
(157, '378119591', 'https://loremflickr.com/400/400/player,tennis', 329, 'Simone', 'Lacy', 'Buckridge', 'Flatley', 1, 22, 3, 99, 8, 'domingo.cole@heidenreich.com', NULL, NULL, '2019-05-22 01:54:13', '2019-05-22 01:54:13'),
(158, '1344246767', 'https://loremflickr.com/400/400/player,tennis', 331, 'Wava', 'Shad', 'Schmidt', 'Becker', 3, 22, 2, 29, 10, 'bosco.randy@jacobi.net', NULL, NULL, '2019-05-22 01:54:14', '2019-05-22 01:54:14'),
(159, '345494298', 'https://loremflickr.com/400/400/player,soccer', 333, 'Imani', 'Kory', 'Veum', 'Hammes', 3, 2, 1, 61, 1, 'sabryna08@grimes.net', NULL, NULL, '2019-05-22 01:54:14', '2019-05-22 01:54:14'),
(160, '1539885449', 'https://loremflickr.com/400/400/face,man', 335, 'Erica', 'Dovie', 'Parisian', 'DuBuque', 6, 46, 2, 3, 7, 'ressie.funk@gmail.com', NULL, NULL, '2019-05-22 01:54:15', '2019-05-22 01:54:15'),
(161, '1160121274', 'https://loremflickr.com/400/400/player,sport', 337, 'Deion', 'Cullen', 'Krajcik', 'Zboncak', 6, 28, 1, 59, 4, 'malcolm.kautzer@kunze.org', NULL, NULL, '2019-05-22 01:54:15', '2019-05-22 01:54:15'),
(162, '211683575', 'https://loremflickr.com/400/400/face,woman', 339, 'Elias', 'Alberto', 'Russel', 'Sawayn', 6, 6, 1, 8, 5, 'ryley23@hotmail.com', NULL, NULL, '2019-05-22 01:54:15', '2019-05-22 01:54:15');

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
(1, 'New Hampshire', NULL, '2019-05-22 01:53:21', '2019-05-22 01:53:21'),
(2, 'West Virginia', NULL, '2019-05-22 01:53:21', '2019-05-22 01:53:21'),
(3, 'Illinois', NULL, '2019-05-22 01:53:21', '2019-05-22 01:53:21'),
(4, 'Indiana', NULL, '2019-05-22 01:53:22', '2019-05-22 01:53:22'),
(5, 'Alabama', NULL, '2019-05-22 01:53:22', '2019-05-22 01:53:22'),
(6, 'Maine', NULL, '2019-05-22 01:53:22', '2019-05-22 01:53:22'),
(7, 'Wisconsin', NULL, '2019-05-22 01:53:22', '2019-05-22 01:53:22'),
(8, 'North Carolina', NULL, '2019-05-22 01:53:22', '2019-05-22 01:53:22'),
(9, 'Tennessee', NULL, '2019-05-22 01:53:22', '2019-05-22 01:53:22'),
(10, 'California', NULL, '2019-05-22 01:53:22', '2019-05-22 01:53:22'),
(11, 'Wyoming', NULL, '2019-05-22 01:53:22', '2019-05-22 01:53:22'),
(12, 'Massachusetts', NULL, '2019-05-22 01:53:22', '2019-05-22 01:53:22'),
(13, 'Delaware', NULL, '2019-05-22 01:53:22', '2019-05-22 01:53:22'),
(14, 'New Jersey', NULL, '2019-05-22 01:53:22', '2019-05-22 01:53:22'),
(15, 'North Carolina', NULL, '2019-05-22 01:53:22', '2019-05-22 01:53:22'),
(16, 'Utah', NULL, '2019-05-22 01:53:22', '2019-05-22 01:53:22'),
(17, 'Iowa', NULL, '2019-05-22 01:53:22', '2019-05-22 01:53:22'),
(18, 'New Hampshire', NULL, '2019-05-22 01:53:22', '2019-05-22 01:53:22'),
(19, 'Montana', NULL, '2019-05-22 01:53:22', '2019-05-22 01:53:22'),
(20, 'New Hampshire', NULL, '2019-05-22 01:53:22', '2019-05-22 01:53:22'),
(21, 'Massachusetts', NULL, '2019-05-22 01:53:23', '2019-05-22 01:53:23'),
(22, 'Washington', NULL, '2019-05-22 01:53:23', '2019-05-22 01:53:23'),
(23, 'Pennsylvania', NULL, '2019-05-22 01:53:23', '2019-05-22 01:53:23'),
(24, 'Iowa', NULL, '2019-05-22 01:53:23', '2019-05-22 01:53:23'),
(25, 'Alaska', NULL, '2019-05-22 01:53:23', '2019-05-22 01:53:23'),
(26, 'Maine', NULL, '2019-05-22 01:53:23', '2019-05-22 01:53:23'),
(27, 'Florida', NULL, '2019-05-22 01:53:23', '2019-05-22 01:53:23'),
(28, 'North Carolina', NULL, '2019-05-22 01:53:23', '2019-05-22 01:53:23'),
(29, 'Arizona', NULL, '2019-05-22 01:53:23', '2019-05-22 01:53:23'),
(30, 'New Mexico', NULL, '2019-05-22 01:53:23', '2019-05-22 01:53:23'),
(31, 'Texas', NULL, '2019-05-22 01:53:23', '2019-05-22 01:53:23'),
(32, 'Nebraska', NULL, '2019-05-22 01:53:23', '2019-05-22 01:53:23'),
(33, 'Minnesota', NULL, '2019-05-22 01:53:23', '2019-05-22 01:53:23'),
(34, 'Delaware', NULL, '2019-05-22 01:53:23', '2019-05-22 01:53:23'),
(35, 'Maine', NULL, '2019-05-22 01:53:23', '2019-05-22 01:53:23'),
(36, 'New Hampshire', NULL, '2019-05-22 01:53:23', '2019-05-22 01:53:23'),
(37, 'Arizona', NULL, '2019-05-22 01:53:23', '2019-05-22 01:53:23'),
(38, 'California', NULL, '2019-05-22 01:53:23', '2019-05-22 01:53:23'),
(39, 'Maryland', NULL, '2019-05-22 01:53:23', '2019-05-22 01:53:23'),
(40, 'Minnesota', NULL, '2019-05-22 01:53:23', '2019-05-22 01:53:23'),
(41, 'New Mexico', NULL, '2019-05-22 01:53:24', '2019-05-22 01:53:24'),
(42, 'Nevada', NULL, '2019-05-22 01:53:24', '2019-05-22 01:53:24'),
(43, 'Kansas', NULL, '2019-05-22 01:53:24', '2019-05-22 01:53:24'),
(44, 'New York', NULL, '2019-05-22 01:53:24', '2019-05-22 01:53:24'),
(45, 'Utah', NULL, '2019-05-22 01:53:24', '2019-05-22 01:53:24'),
(46, 'Louisiana', NULL, '2019-05-22 01:53:24', '2019-05-22 01:53:24'),
(47, 'Pennsylvania', NULL, '2019-05-22 01:53:24', '2019-05-22 01:53:24'),
(48, 'Oregon', NULL, '2019-05-22 01:53:24', '2019-05-22 01:53:24'),
(49, 'Indiana', NULL, '2019-05-22 01:53:24', '2019-05-22 01:53:24'),
(50, 'Iowa', NULL, '2019-05-22 01:53:24', '2019-05-22 01:53:24');

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
(1, 'Labadie Place', '12', '12', NULL, '2019-05-22 01:53:30', '2019-05-22 01:53:30'),
(2, 'Satterfield Hill', '27', '48', NULL, '2019-05-22 01:53:30', '2019-05-22 01:53:30'),
(3, 'VonRueden Mount', '36', '41', NULL, '2019-05-22 01:53:31', '2019-05-22 01:53:31'),
(4, 'Mante Cape', '49', '45', NULL, '2019-05-22 01:53:31', '2019-05-22 01:53:31'),
(5, 'Shyann Tunnel', '13', '20', NULL, '2019-05-22 01:53:31', '2019-05-22 01:53:31'),
(6, 'Hessel Way', '33', '7', NULL, '2019-05-22 01:53:31', '2019-05-22 01:53:31'),
(7, 'Sanford Brooks', '9', '1', NULL, '2019-05-22 01:53:31', '2019-05-22 01:53:31'),
(8, 'Jaqueline Ford', '29', '38', NULL, '2019-05-22 01:53:31', '2019-05-22 01:53:31'),
(9, 'Ewell Forks', '43', '13', NULL, '2019-05-22 01:53:31', '2019-05-22 01:53:31'),
(10, 'Titus Lodge', '22', '46', NULL, '2019-05-22 01:53:31', '2019-05-22 01:53:31'),
(11, 'Bosco Junction', '28', '13', NULL, '2019-05-22 01:53:31', '2019-05-22 01:53:31'),
(12, 'Nolan Motorway', '12', '29', NULL, '2019-05-22 01:53:31', '2019-05-22 01:53:31'),
(13, 'Corkery Rapid', '7', '40', NULL, '2019-05-22 01:53:31', '2019-05-22 01:53:31'),
(14, 'Melissa Common', '35', '41', NULL, '2019-05-22 01:53:31', '2019-05-22 01:53:31'),
(15, 'Glover Lights', '49', '34', NULL, '2019-05-22 01:53:31', '2019-05-22 01:53:31'),
(16, 'Margaretta Stravenue', '12', '32', NULL, '2019-05-22 01:53:32', '2019-05-22 01:53:32'),
(17, 'Emory Rue', '26', '14', NULL, '2019-05-22 01:53:32', '2019-05-22 01:53:32'),
(18, 'Dimitri Fork', '49', '22', NULL, '2019-05-22 01:53:32', '2019-05-22 01:53:32'),
(19, 'Susana Expressway', '21', '28', NULL, '2019-05-22 01:53:32', '2019-05-22 01:53:32'),
(20, 'Lou Greens', '18', '19', NULL, '2019-05-22 01:53:32', '2019-05-22 01:53:32'),
(21, 'Jenkins Extensions', '15', '30', NULL, '2019-05-22 01:53:32', '2019-05-22 01:53:32'),
(22, 'Henri Rest', '30', '41', NULL, '2019-05-22 01:53:32', '2019-05-22 01:53:32'),
(23, 'Murray Extensions', '21', '44', NULL, '2019-05-22 01:53:32', '2019-05-22 01:53:32'),
(24, 'Wallace Harbors', '48', '24', NULL, '2019-05-22 01:53:32', '2019-05-22 01:53:32'),
(25, 'Herzog Mission', '13', '4', NULL, '2019-05-22 01:53:32', '2019-05-22 01:53:32'),
(26, 'Bosco Turnpike', '14', '25', NULL, '2019-05-22 01:53:32', '2019-05-22 01:53:32'),
(27, 'Schimmel Fall', '27', '7', NULL, '2019-05-22 01:53:32', '2019-05-22 01:53:32'),
(28, 'Krajcik Springs', '38', '38', NULL, '2019-05-22 01:53:32', '2019-05-22 01:53:32'),
(29, 'Mateo Brooks', '7', '11', NULL, '2019-05-22 01:53:32', '2019-05-22 01:53:32'),
(30, 'Corwin Meadows', '16', '34', NULL, '2019-05-22 01:53:32', '2019-05-22 01:53:32'),
(31, 'Von Coves', '31', '30', NULL, '2019-05-22 01:53:32', '2019-05-22 01:53:32'),
(32, 'Barrows Way', '18', '6', NULL, '2019-05-22 01:53:32', '2019-05-22 01:53:32'),
(33, 'Rippin Oval', '41', '29', NULL, '2019-05-22 01:53:32', '2019-05-22 01:53:32'),
(34, 'Wunsch Mountains', '39', '12', NULL, '2019-05-22 01:53:32', '2019-05-22 01:53:32'),
(35, 'Imogene Fork', '37', '32', NULL, '2019-05-22 01:53:32', '2019-05-22 01:53:32'),
(36, 'Leonor Well', '12', '28', NULL, '2019-05-22 01:53:33', '2019-05-22 01:53:33'),
(37, 'Leta Burgs', '47', '30', NULL, '2019-05-22 01:53:33', '2019-05-22 01:53:33'),
(38, 'Angela Junction', '16', '35', NULL, '2019-05-22 01:53:33', '2019-05-22 01:53:33'),
(39, 'Candido Well', '27', '39', NULL, '2019-05-22 01:53:33', '2019-05-22 01:53:33'),
(40, 'Brooklyn Stravenue', '24', '33', NULL, '2019-05-22 01:53:33', '2019-05-22 01:53:33'),
(41, 'Narciso Ville', '8', '39', NULL, '2019-05-22 01:53:33', '2019-05-22 01:53:33'),
(42, 'Lang Pike', '21', '47', NULL, '2019-05-22 01:53:33', '2019-05-22 01:53:33'),
(43, 'Barton Crossing', '38', '48', NULL, '2019-05-22 01:53:33', '2019-05-22 01:53:33'),
(44, 'Fay Lane', '19', '38', NULL, '2019-05-22 01:53:33', '2019-05-22 01:53:33'),
(45, 'Kali Key', '50', '22', NULL, '2019-05-22 01:53:33', '2019-05-22 01:53:33'),
(46, 'Herzog Spring', '45', '40', NULL, '2019-05-22 01:53:33', '2019-05-22 01:53:33'),
(47, 'Benedict Route', '22', '44', NULL, '2019-05-22 01:53:33', '2019-05-22 01:53:33'),
(48, 'Jakubowski Place', '47', '40', NULL, '2019-05-22 01:53:33', '2019-05-22 01:53:33'),
(49, 'Lehner Port', '41', '40', NULL, '2019-05-22 01:53:33', '2019-05-22 01:53:33'),
(50, 'Hoeger Alley', '24', '27', NULL, '2019-05-22 01:53:33', '2019-05-22 01:53:33'),
(51, 'Buckridge Harbor', '11', '21', NULL, '2019-05-22 01:53:34', '2019-05-22 01:53:34'),
(52, 'Buster Gardens', '50', '28', NULL, '2019-05-22 01:53:34', '2019-05-22 01:53:34'),
(53, 'Lyda Walk', '41', '13', NULL, '2019-05-22 01:53:34', '2019-05-22 01:53:34'),
(54, 'Donald Viaduct', '33', '30', NULL, '2019-05-22 01:53:34', '2019-05-22 01:53:34'),
(55, 'Porter Locks', '45', '20', NULL, '2019-05-22 01:53:34', '2019-05-22 01:53:34'),
(56, 'Lea Manor', '3', '11', NULL, '2019-05-22 01:53:34', '2019-05-22 01:53:34'),
(57, 'Gage Knolls', '43', '35', NULL, '2019-05-22 01:53:34', '2019-05-22 01:53:34'),
(58, 'O\'Kon Island', '31', '1', NULL, '2019-05-22 01:53:34', '2019-05-22 01:53:34'),
(59, 'Zena Roads', '24', '25', NULL, '2019-05-22 01:53:34', '2019-05-22 01:53:34'),
(60, 'Rippin Forges', '8', '25', NULL, '2019-05-22 01:53:34', '2019-05-22 01:53:34'),
(61, 'Victor Skyway', '23', '2', NULL, '2019-05-22 01:53:34', '2019-05-22 01:53:34'),
(62, 'Tina Walks', '25', '43', NULL, '2019-05-22 01:53:34', '2019-05-22 01:53:34'),
(63, 'Terry Shoal', '47', '10', NULL, '2019-05-22 01:53:34', '2019-05-22 01:53:34'),
(64, 'Jared Estates', '33', '10', NULL, '2019-05-22 01:53:34', '2019-05-22 01:53:34'),
(65, 'Boehm Knolls', '17', '16', NULL, '2019-05-22 01:53:34', '2019-05-22 01:53:34'),
(66, 'Schmitt Lakes', '47', '11', NULL, '2019-05-22 01:53:34', '2019-05-22 01:53:34'),
(67, 'Krystel Land', '4', '31', NULL, '2019-05-22 01:53:34', '2019-05-22 01:53:34'),
(68, 'Gregory Center', '6', '35', NULL, '2019-05-22 01:53:34', '2019-05-22 01:53:34'),
(69, 'Padberg Rest', '20', '41', NULL, '2019-05-22 01:53:34', '2019-05-22 01:53:34'),
(70, 'Clara Ford', '7', '39', NULL, '2019-05-22 01:53:34', '2019-05-22 01:53:34'),
(71, 'Okuneva Fork', '7', '46', NULL, '2019-05-22 01:53:35', '2019-05-22 01:53:35'),
(72, 'Bria Locks', '45', '18', NULL, '2019-05-22 01:53:35', '2019-05-22 01:53:35'),
(73, 'Coy Bypass', '14', '12', NULL, '2019-05-22 01:53:35', '2019-05-22 01:53:35'),
(74, 'Skiles Islands', '5', '41', NULL, '2019-05-22 01:53:35', '2019-05-22 01:53:35'),
(75, 'Newton Plaza', '49', '46', NULL, '2019-05-22 01:53:35', '2019-05-22 01:53:35'),
(76, 'Hunter Run', '48', '14', NULL, '2019-05-22 01:53:35', '2019-05-22 01:53:35'),
(77, 'Josianne Islands', '30', '22', NULL, '2019-05-22 01:53:35', '2019-05-22 01:53:35'),
(78, 'Wehner Lodge', '13', '32', NULL, '2019-05-22 01:53:35', '2019-05-22 01:53:35'),
(79, 'Johns Trafficway', '34', '18', NULL, '2019-05-22 01:53:35', '2019-05-22 01:53:35'),
(80, 'Billy Corners', '27', '12', NULL, '2019-05-22 01:53:35', '2019-05-22 01:53:35'),
(81, 'Estel Trail', '31', '47', NULL, '2019-05-22 01:53:35', '2019-05-22 01:53:35'),
(82, 'Doyle Fall', '37', '31', NULL, '2019-05-22 01:53:35', '2019-05-22 01:53:35'),
(83, 'Kim Mills', '50', '27', NULL, '2019-05-22 01:53:35', '2019-05-22 01:53:35'),
(84, 'Lind Unions', '24', '20', NULL, '2019-05-22 01:53:35', '2019-05-22 01:53:35'),
(85, 'Gislason Green', '40', '38', NULL, '2019-05-22 01:53:35', '2019-05-22 01:53:35'),
(86, 'Wilderman Wells', '10', '16', NULL, '2019-05-22 01:53:35', '2019-05-22 01:53:35'),
(87, 'Kertzmann Greens', '48', '20', NULL, '2019-05-22 01:53:35', '2019-05-22 01:53:35'),
(88, 'Clyde Trafficway', '7', '4', NULL, '2019-05-22 01:53:35', '2019-05-22 01:53:35'),
(89, 'Ciara Land', '47', '7', NULL, '2019-05-22 01:53:35', '2019-05-22 01:53:35'),
(90, 'Jeffry Circles', '2', '27', NULL, '2019-05-22 01:53:35', '2019-05-22 01:53:35'),
(91, 'Dangelo Canyon', '26', '36', NULL, '2019-05-22 01:53:36', '2019-05-22 01:53:36'),
(92, 'Leannon Lakes', '18', '23', NULL, '2019-05-22 01:53:36', '2019-05-22 01:53:36'),
(93, 'Sydney Street', '31', '18', NULL, '2019-05-22 01:53:36', '2019-05-22 01:53:36'),
(94, 'Paige Curve', '10', '50', NULL, '2019-05-22 01:53:36', '2019-05-22 01:53:36'),
(95, 'Jillian Squares', '45', '13', NULL, '2019-05-22 01:53:36', '2019-05-22 01:53:36'),
(96, 'Marks Overpass', '7', '38', NULL, '2019-05-22 01:53:36', '2019-05-22 01:53:36'),
(97, 'Gene Curve', '30', '46', NULL, '2019-05-22 01:53:36', '2019-05-22 01:53:36'),
(98, 'Wyman Shoal', '16', '34', NULL, '2019-05-22 01:53:36', '2019-05-22 01:53:36'),
(99, 'Herzog Greens', '4', '46', NULL, '2019-05-22 01:53:36', '2019-05-22 01:53:36'),
(100, 'Koepp Common', '26', '45', NULL, '2019-05-22 01:53:36', '2019-05-22 01:53:36');

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
(1, '502208115', 'Lebsack PLC', 'Group', 'ARL', '0c9 - 905', NULL, '2019-05-22 01:53:29', '2019-05-22 01:53:29'),
(2, '897324653', 'Beer Inc', 'Ltd', 'EPS', '2ja - 001', NULL, '2019-05-22 01:53:30', '2019-05-22 01:53:30'),
(3, '328805900', 'Rippin, Bernhard and Klocko', 'Group', 'ARL', '25c - 904', NULL, '2019-05-22 01:53:30', '2019-05-22 01:53:30'),
(4, '545986795', 'Quitzon-Flatley', 'LLC', 'ARL', '435 - 401', NULL, '2019-05-22 01:53:30', '2019-05-22 01:53:30'),
(5, '1280858689', 'Kuhlman and Sons', 'Inc', 'ARL', '9xi - 034', NULL, '2019-05-22 01:53:30', '2019-05-22 01:53:30'),
(6, '1148452355', 'Funk, Howell and Buckridge', 'and Sons', 'AFP', 'o9f - 998', NULL, '2019-05-22 01:53:30', '2019-05-22 01:53:30'),
(7, '865988702', 'Cremin Ltd', 'LLC', 'AFP', 'ghz - 160', NULL, '2019-05-22 01:53:30', '2019-05-22 01:53:30'),
(8, '828439741', 'Upton, Satterfield and Sporer', 'PLC', 'PARAFISCAL', 'n3n - 185', NULL, '2019-05-22 01:53:30', '2019-05-22 01:53:30'),
(9, '1526512381', 'Runte LLC', 'LLC', 'AFP', 'h53 - 486', NULL, '2019-05-22 01:53:30', '2019-05-22 01:53:30'),
(10, '1062560404', 'Lakin-Stiedemann', 'Group', 'AFP', '66f - 293', NULL, '2019-05-22 01:53:30', '2019-05-22 01:53:30');

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
(1, 'Fase de grupos', 'Todos contra todos', NULL, '2019-05-22 01:54:33', '2019-05-22 01:54:33'),
(2, 'Octavos de final', 'Ultimos 16 equipos', NULL, '2019-05-22 01:54:33', '2019-05-22 01:54:33'),
(3, 'Cuartos de final', 'Ultimos 8 equipos', NULL, '2019-05-22 01:54:34', '2019-05-22 01:54:34'),
(4, 'Semi-finales', 'Ultimos 4 equipos', NULL, '2019-05-22 01:54:34', '2019-05-22 01:54:34'),
(5, 'Pre-Final', 'Tercero Y Cuarto Puesto', NULL, '2019-05-22 01:54:34', '2019-05-22 01:54:34'),
(6, 'Final', 'Primero Y Segundo Puesto', NULL, '2019-05-22 01:54:34', '2019-05-22 01:54:34');

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
(1, 'Masculino', NULL, '2019-05-22 01:53:29', '2019-05-22 01:53:29'),
(2, 'Femenino', NULL, '2019-05-22 01:53:29', '2019-05-22 01:53:29'),
(3, 'Indefinido', NULL, '2019-05-22 01:53:29', '2019-05-22 01:53:29');

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
(1, '990301461', '374403472', 'Kertzmann Group', 'storage/storage/img/instituto/test/diesel.png', 46, 3, 1, 29, 1, NULL, '2019-05-22 01:53:39', '2019-05-22 01:53:39'),
(2, '462803072', '915467348', 'Baumbach, Jakubowski and Grady', 'storage/storage/img/instituto/test/iegabo.png', 13, 1, 2, 61, 1, NULL, '2019-05-22 01:53:39', '2019-05-22 01:53:39'),
(3, '1109333799', '51901955', 'West, Barton and Moen', 'storage/storage/img/instituto/test/Beats.png', 38, 1, 3, 59, 1, NULL, '2019-05-22 01:53:39', '2019-05-22 01:53:39'),
(4, '443845731', '1465685592', 'Franecki-Kirlin', 'storage/storage/img/instituto/test/ieceim.png', 28, 1, 4, 25, 4, NULL, '2019-05-22 01:53:40', '2019-05-22 01:53:40'),
(5, '221168056', '307352438', 'Runte Inc', 'storage/storage/img/instituto/test/ieceim.png', 14, 1, 5, 10, 1, NULL, '2019-05-22 01:53:40', '2019-05-22 01:53:40'),
(6, '1516173572', '1271140785', 'Hand, Considine and Paucek', 'storage/storage/img/instituto/test/ieintec.jpg', 45, 2, 6, 69, 3, NULL, '2019-05-22 01:53:40', '2019-05-22 01:53:40'),
(7, '1436168010', '1384120509', 'O\'Conner and Sons', 'storage/storage/img/instituto/test/uan.png', 23, 3, 7, 48, 1, NULL, '2019-05-22 01:53:40', '2019-05-22 01:53:40'),
(8, '1137634929', '478732911', 'Wyman, Carter and Abshire', 'storage/storage/img/instituto/test/Subway.png', 3, 1, 8, 2, 1, NULL, '2019-05-22 01:53:40', '2019-05-22 01:53:40'),
(9, '966853880', '393358158', 'Wiegand-Reichel', 'storage/storage/img/instituto/test/ieacademico.png', 16, 1, 9, 83, 2, NULL, '2019-05-22 01:53:40', '2019-05-22 01:53:40'),
(10, '848826162', '1519969125', 'Denesik and Sons', 'storage/storage/img/instituto/test/ieceim.png', 29, 2, 10, 100, 1, NULL, '2019-05-22 01:53:40', '2019-05-22 01:53:40'),
(11, '1092475147', '103878589', 'Rau, Hyatt and Reichert', 'storage/storage/img/instituto/test/ieintec.jpg', 38, 1, 11, 7, 1, NULL, '2019-05-22 01:53:40', '2019-05-22 01:53:40'),
(12, '580800263', '5675447', 'Leannon Group', 'storage/storage/img/instituto/test/carrefour.png', 49, 3, 12, 24, 3, NULL, '2019-05-22 01:53:40', '2019-05-22 01:53:40'),
(13, '589595765', '238425453', 'Rippin-Hayes', 'storage/storage/img/instituto/test/pepsi.png', 33, 2, 13, 62, 4, NULL, '2019-05-22 01:53:40', '2019-05-22 01:53:40'),
(14, '1519426878', '983448840', 'Koch Inc', 'storage/storage/img/instituto/test/Mitsubishi.png', 27, 2, 14, 58, 1, NULL, '2019-05-22 01:53:40', '2019-05-22 01:53:40'),
(15, '813867415', '1144065018', 'Kub Group', 'storage/storage/img/instituto/test/koenigsegg.png', 26, 2, 15, 34, 2, NULL, '2019-05-22 01:53:40', '2019-05-22 01:53:40'),
(16, '1202964300', '950517227', 'Dicki-Spencer', 'storage/storage/img/instituto/test/tommy.png', 33, 1, 16, 85, 1, NULL, '2019-05-22 01:53:40', '2019-05-22 01:53:40'),
(17, '1234034917', '1500306655', 'Koch Group', 'storage/storage/img/instituto/test/ieacademico.png', 32, 2, 17, 23, 1, NULL, '2019-05-22 01:53:40', '2019-05-22 01:53:40'),
(18, '491585498', '504495625', 'Larkin-Mertz', 'storage/storage/img/instituto/test/Beats.png', 20, 1, 18, 86, 2, NULL, '2019-05-22 01:53:40', '2019-05-22 01:53:40'),
(19, '333367662', '595285285', 'Gusikowski Ltd', 'storage/storage/img/instituto/test/pepsi.png', 37, 1, 19, 13, 3, NULL, '2019-05-22 01:53:40', '2019-05-22 01:53:40'),
(20, '230832484', '812885013', 'Mitchell, Flatley and D\'Amore', 'storage/storage/img/instituto/test/Rolex.png', 45, 2, 20, 96, 4, NULL, '2019-05-22 01:53:40', '2019-05-22 01:53:40');

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
(1, 'Herman Ebert', 3, 22, 1, NULL, '2019-05-22 01:54:16', '2019-05-22 01:54:16'),
(2, 'Waldo Kuhlman', 4, 24, 3, NULL, '2019-05-22 01:54:16', '2019-05-22 01:54:16'),
(3, 'Daniela Turner', 5, 26, 1, NULL, '2019-05-22 01:54:16', '2019-05-22 01:54:16'),
(4, 'Adriel O\'Keefe', 6, 28, 3, NULL, '2019-05-22 01:54:16', '2019-05-22 01:54:16'),
(5, 'Ms. Heath Corwin DVM', 7, 30, 2, NULL, '2019-05-22 01:54:17', '2019-05-22 01:54:17'),
(6, 'Viola Bradtke', 8, 32, 1, NULL, '2019-05-22 01:54:17', '2019-05-22 01:54:17'),
(7, 'Eve Kunde PhD', 9, 34, 1, NULL, '2019-05-22 01:54:17', '2019-05-22 01:54:17'),
(8, 'Prof. Trinity Bogisich DVM', 10, 36, 2, NULL, '2019-05-22 01:54:17', '2019-05-22 01:54:17'),
(9, 'Yasmin Feest', 11, 38, 4, NULL, '2019-05-22 01:54:17', '2019-05-22 01:54:17'),
(10, 'Dr. Kaya Ledner', 12, 40, 2, NULL, '2019-05-22 01:54:17', '2019-05-22 01:54:17'),
(11, 'Cordell Heaney', 13, 42, 1, NULL, '2019-05-22 01:54:17', '2019-05-22 01:54:17'),
(12, 'Imani Hudson', 14, 44, 3, NULL, '2019-05-22 01:54:17', '2019-05-22 01:54:17'),
(13, 'Mr. Deven Schneider', 15, 46, 1, NULL, '2019-05-22 01:54:17', '2019-05-22 01:54:17'),
(14, 'Mrs. Sienna Kessler MD', 16, 48, 1, NULL, '2019-05-22 01:54:17', '2019-05-22 01:54:17'),
(15, 'Evangeline Brown', 17, 50, 1, NULL, '2019-05-22 01:54:17', '2019-05-22 01:54:17'),
(16, 'Ellsworth Kautzer DDS', 18, 52, 1, NULL, '2019-05-22 01:54:17', '2019-05-22 01:54:17'),
(17, 'Tyrese Reinger', 19, 54, 2, NULL, '2019-05-22 01:54:17', '2019-05-22 01:54:17'),
(18, 'Libby D\'Amore', 20, 56, 3, NULL, '2019-05-22 01:54:18', '2019-05-22 01:54:18'),
(19, 'Dr. Isai Fritsch', 21, 58, 3, NULL, '2019-05-22 01:54:18', '2019-05-22 01:54:18'),
(20, 'Ms. Christina Kohler V', 22, 60, 2, NULL, '2019-05-22 01:54:18', '2019-05-22 01:54:18'),
(21, 'Lonny Toy', 23, 62, 3, NULL, '2019-05-22 01:54:18', '2019-05-22 01:54:18'),
(22, 'Delbert Weissnat', 24, 64, 3, NULL, '2019-05-22 01:54:18', '2019-05-22 01:54:18'),
(23, 'Chelsea Jacobson', 25, 66, 1, NULL, '2019-05-22 01:54:18', '2019-05-22 01:54:18'),
(24, 'Lloyd Johns', 26, 68, 3, NULL, '2019-05-22 01:54:18', '2019-05-22 01:54:18'),
(25, 'Jannie Kerluke', 27, 70, 3, NULL, '2019-05-22 01:54:18', '2019-05-22 01:54:18'),
(26, 'Mr. Roberto Koch', 28, 72, 2, NULL, '2019-05-22 01:54:18', '2019-05-22 01:54:18'),
(27, 'Justine Halvorson', 29, 74, 3, NULL, '2019-05-22 01:54:18', '2019-05-22 01:54:18'),
(28, 'Prof. Rhea Hansen', 30, 76, 3, NULL, '2019-05-22 01:54:18', '2019-05-22 01:54:18'),
(29, 'Clemens Heidenreich PhD', 31, 78, 1, NULL, '2019-05-22 01:54:18', '2019-05-22 01:54:18'),
(30, 'Mrs. Joanie O\'Connell', 32, 80, 3, NULL, '2019-05-22 01:54:18', '2019-05-22 01:54:18'),
(31, 'Zelma O\'Kon', 33, 82, 1, NULL, '2019-05-22 01:54:18', '2019-05-22 01:54:18'),
(32, 'Marion Jacobson', 34, 84, 3, NULL, '2019-05-22 01:54:18', '2019-05-22 01:54:18'),
(33, 'Ramona Reilly', 35, 86, 3, NULL, '2019-05-22 01:54:19', '2019-05-22 01:54:19'),
(34, 'Prof. Irving Schmitt Jr.', 36, 88, 1, NULL, '2019-05-22 01:54:19', '2019-05-22 01:54:19'),
(35, 'Braxton Hansen', 37, 90, 1, NULL, '2019-05-22 01:54:19', '2019-05-22 01:54:19'),
(36, 'Emely Gleason', 38, 92, 1, NULL, '2019-05-22 01:54:19', '2019-05-22 01:54:19'),
(37, 'Kirstin Fahey', 39, 94, 1, NULL, '2019-05-22 01:54:19', '2019-05-22 01:54:19'),
(38, 'Natasha Maggio', 40, 96, 1, NULL, '2019-05-22 01:54:19', '2019-05-22 01:54:19'),
(39, 'Bernita O\'Reilly', 41, 98, 4, NULL, '2019-05-22 01:54:19', '2019-05-22 01:54:19'),
(40, 'Roy Deckow', 42, 100, 4, NULL, '2019-05-22 01:54:19', '2019-05-22 01:54:19'),
(41, 'Mr. Geovanny Mohr I', 43, 102, 1, NULL, '2019-05-22 01:54:19', '2019-05-22 01:54:19'),
(42, 'Kane Botsford', 44, 104, 2, NULL, '2019-05-22 01:54:19', '2019-05-22 01:54:19'),
(43, 'Miss Florida Goyette II', 45, 106, 4, NULL, '2019-05-22 01:54:19', '2019-05-22 01:54:19'),
(44, 'Geovanny Barton PhD', 46, 108, 4, NULL, '2019-05-22 01:54:19', '2019-05-22 01:54:19'),
(45, 'Brigitte Harber', 47, 110, 4, NULL, '2019-05-22 01:54:20', '2019-05-22 01:54:20'),
(46, 'Dolores Treutel', 48, 112, 3, NULL, '2019-05-22 01:54:20', '2019-05-22 01:54:20'),
(47, 'Ms. Yadira Goodwin Jr.', 49, 114, 2, NULL, '2019-05-22 01:54:20', '2019-05-22 01:54:20'),
(48, 'Reese Douglas', 50, 116, 2, NULL, '2019-05-22 01:54:20', '2019-05-22 01:54:20'),
(49, 'Aryanna Graham', 51, 118, 4, NULL, '2019-05-22 01:54:20', '2019-05-22 01:54:20'),
(50, 'Tyrell Runte', 52, 120, 2, NULL, '2019-05-22 01:54:20', '2019-05-22 01:54:20'),
(51, 'Mr. Payton Stehr', 53, 122, 3, NULL, '2019-05-22 01:54:20', '2019-05-22 01:54:20'),
(52, 'Melany Schaden', 54, 124, 2, NULL, '2019-05-22 01:54:20', '2019-05-22 01:54:20'),
(53, 'Alicia Balistreri', 55, 126, 3, NULL, '2019-05-22 01:54:20', '2019-05-22 01:54:20'),
(54, 'Ms. Hettie Koch', 56, 128, 4, NULL, '2019-05-22 01:54:20', '2019-05-22 01:54:20'),
(55, 'Gina Dicki', 57, 130, 2, NULL, '2019-05-22 01:54:20', '2019-05-22 01:54:20'),
(56, 'Jayce Cronin IV', 58, 132, 3, NULL, '2019-05-22 01:54:20', '2019-05-22 01:54:20'),
(57, 'Linda Padberg', 59, 134, 1, NULL, '2019-05-22 01:54:20', '2019-05-22 01:54:20'),
(58, 'George Dietrich III', 60, 136, 2, NULL, '2019-05-22 01:54:20', '2019-05-22 01:54:20'),
(59, 'Flavie Kulas PhD', 61, 138, 1, NULL, '2019-05-22 01:54:20', '2019-05-22 01:54:20'),
(60, 'Jerrell Murray DVM', 62, 140, 1, NULL, '2019-05-22 01:54:21', '2019-05-22 01:54:21'),
(61, 'Rowland Stokes', 63, 142, 1, NULL, '2019-05-22 01:54:21', '2019-05-22 01:54:21'),
(62, 'Dr. Omer Orn', 64, 144, 2, NULL, '2019-05-22 01:54:21', '2019-05-22 01:54:21'),
(63, 'Haskell Morissette', 65, 146, 1, NULL, '2019-05-22 01:54:21', '2019-05-22 01:54:21'),
(64, 'Amya Koch', 66, 148, 4, NULL, '2019-05-22 01:54:21', '2019-05-22 01:54:21'),
(65, 'Lisette Braun', 67, 150, 1, NULL, '2019-05-22 01:54:21', '2019-05-22 01:54:21'),
(66, 'Ellie Stiedemann', 68, 152, 2, NULL, '2019-05-22 01:54:21', '2019-05-22 01:54:21'),
(67, 'Mrs. Shawna Miller III', 69, 154, 1, NULL, '2019-05-22 01:54:21', '2019-05-22 01:54:21'),
(68, 'Travis Moore', 70, 156, 2, NULL, '2019-05-22 01:54:21', '2019-05-22 01:54:21'),
(69, 'Marshall Osinski I', 71, 158, 2, NULL, '2019-05-22 01:54:21', '2019-05-22 01:54:21'),
(70, 'Katherine Hilpert', 72, 160, 3, NULL, '2019-05-22 01:54:21', '2019-05-22 01:54:21'),
(71, 'Jakob Block', 73, 162, 4, NULL, '2019-05-22 01:54:21', '2019-05-22 01:54:21'),
(72, 'Kayli Mann', 74, 164, 2, NULL, '2019-05-22 01:54:21', '2019-05-22 01:54:21'),
(73, 'Jerome Cremin', 75, 166, 4, NULL, '2019-05-22 01:54:21', '2019-05-22 01:54:21'),
(74, 'Buddy Cronin', 76, 168, 1, NULL, '2019-05-22 01:54:22', '2019-05-22 01:54:22'),
(75, 'Coby Howe', 77, 170, 1, NULL, '2019-05-22 01:54:22', '2019-05-22 01:54:22'),
(76, 'Jessica Walter', 78, 172, 1, NULL, '2019-05-22 01:54:22', '2019-05-22 01:54:22'),
(77, 'Miss Thalia Gerhold Sr.', 79, 174, 2, NULL, '2019-05-22 01:54:22', '2019-05-22 01:54:22'),
(78, 'Zion Kuvalis', 80, 176, 1, NULL, '2019-05-22 01:54:22', '2019-05-22 01:54:22'),
(79, 'Estevan Weber MD', 81, 178, 4, NULL, '2019-05-22 01:54:22', '2019-05-22 01:54:22'),
(80, 'Macey Kertzmann', 82, 180, 3, NULL, '2019-05-22 01:54:22', '2019-05-22 01:54:22'),
(81, 'Rebeca Pfeffer', 83, 182, 4, NULL, '2019-05-22 01:54:22', '2019-05-22 01:54:22'),
(82, 'Mr. Tom Hermiston II', 84, 184, 3, NULL, '2019-05-22 01:54:22', '2019-05-22 01:54:22'),
(83, 'Noel Mertz V', 85, 186, 4, NULL, '2019-05-22 01:54:22', '2019-05-22 01:54:22'),
(84, 'Veda Ward', 86, 188, 3, NULL, '2019-05-22 01:54:22', '2019-05-22 01:54:22'),
(85, 'Prof. Leda Waelchi', 87, 190, 4, NULL, '2019-05-22 01:54:22', '2019-05-22 01:54:22'),
(86, 'Mrs. Cordie Bogan Sr.', 88, 192, 2, NULL, '2019-05-22 01:54:22', '2019-05-22 01:54:22'),
(87, 'Marian Bogan', 89, 194, 4, NULL, '2019-05-22 01:54:22', '2019-05-22 01:54:22'),
(88, 'Ellsworth Lindgren', 90, 196, 4, NULL, '2019-05-22 01:54:22', '2019-05-22 01:54:22'),
(89, 'Mrs. Albertha Schultz II', 91, 198, 1, NULL, '2019-05-22 01:54:22', '2019-05-22 01:54:22'),
(90, 'Kailee Douglas', 92, 200, 3, NULL, '2019-05-22 01:54:23', '2019-05-22 01:54:23'),
(91, 'Dr. Delbert Turcotte', 93, 202, 1, NULL, '2019-05-22 01:54:23', '2019-05-22 01:54:23'),
(92, 'Monica Wunsch', 94, 204, 4, NULL, '2019-05-22 01:54:23', '2019-05-22 01:54:23'),
(93, 'Ford Gutmann PhD', 95, 206, 1, NULL, '2019-05-22 01:54:23', '2019-05-22 01:54:23'),
(94, 'Leann Koepp Sr.', 96, 208, 3, NULL, '2019-05-22 01:54:23', '2019-05-22 01:54:23'),
(95, 'Erwin Schuster DVM', 97, 210, 3, NULL, '2019-05-22 01:54:23', '2019-05-22 01:54:23'),
(96, 'Corine Wehner', 98, 212, 1, NULL, '2019-05-22 01:54:23', '2019-05-22 01:54:23'),
(97, 'Chase Nikolaus DDS', 99, 214, 4, NULL, '2019-05-22 01:54:23', '2019-05-22 01:54:23'),
(98, 'Lila Cole', 100, 216, 3, NULL, '2019-05-22 01:54:23', '2019-05-22 01:54:23'),
(99, 'Jayce Heller', 101, 218, 2, NULL, '2019-05-22 01:54:23', '2019-05-22 01:54:23'),
(100, 'Ms. Tressa Roob MD', 102, 220, 3, NULL, '2019-05-22 01:54:24', '2019-05-22 01:54:24'),
(101, 'Kirsten Breitenberg', 103, 222, 4, NULL, '2019-05-22 01:54:24', '2019-05-22 01:54:24'),
(102, 'Ms. Ashlynn Green', 104, 224, 1, NULL, '2019-05-22 01:54:24', '2019-05-22 01:54:24'),
(103, 'Prof. Jeffery Pagac', 105, 226, 3, NULL, '2019-05-22 01:54:24', '2019-05-22 01:54:24'),
(104, 'Ms. Freda Blanda II', 106, 228, 1, NULL, '2019-05-22 01:54:24', '2019-05-22 01:54:24'),
(105, 'Efren Daniel', 107, 230, 3, NULL, '2019-05-22 01:54:24', '2019-05-22 01:54:24'),
(106, 'Ms. Alaina Greenholt II', 108, 232, 4, NULL, '2019-05-22 01:54:24', '2019-05-22 01:54:24'),
(107, 'Georgiana Swift PhD', 109, 234, 3, NULL, '2019-05-22 01:54:24', '2019-05-22 01:54:24'),
(108, 'Theresa Rau', 110, 236, 1, NULL, '2019-05-22 01:54:24', '2019-05-22 01:54:24'),
(109, 'Brooks Boehm', 111, 238, 2, NULL, '2019-05-22 01:54:24', '2019-05-22 01:54:24'),
(110, 'Bud Olson', 112, 240, 3, NULL, '2019-05-22 01:54:25', '2019-05-22 01:54:25'),
(111, 'Thurman Wintheiser', 113, 242, 2, NULL, '2019-05-22 01:54:25', '2019-05-22 01:54:25'),
(112, 'Kirstin Watsica Sr.', 114, 244, 2, NULL, '2019-05-22 01:54:25', '2019-05-22 01:54:25'),
(113, 'Emile Simonis', 115, 246, 4, NULL, '2019-05-22 01:54:25', '2019-05-22 01:54:25'),
(114, 'Tyrell Hettinger', 116, 248, 1, NULL, '2019-05-22 01:54:25', '2019-05-22 01:54:25'),
(115, 'Suzanne Adams V', 117, 250, 2, NULL, '2019-05-22 01:54:25', '2019-05-22 01:54:25'),
(116, 'Calista Hayes', 118, 252, 2, NULL, '2019-05-22 01:54:25', '2019-05-22 01:54:25'),
(117, 'Prof. Armando Schumm DVM', 119, 254, 4, NULL, '2019-05-22 01:54:25', '2019-05-22 01:54:25'),
(118, 'Mr. Layne Lueilwitz V', 120, 256, 2, NULL, '2019-05-22 01:54:25', '2019-05-22 01:54:25'),
(119, 'Zita Rosenbaum MD', 121, 258, 4, NULL, '2019-05-22 01:54:25', '2019-05-22 01:54:25'),
(120, 'Sylvia Cormier', 122, 260, 3, NULL, '2019-05-22 01:54:26', '2019-05-22 01:54:26'),
(121, 'Jazmyne Homenick', 123, 262, 2, NULL, '2019-05-22 01:54:26', '2019-05-22 01:54:26'),
(122, 'Lenna Flatley Sr.', 124, 264, 1, NULL, '2019-05-22 01:54:26', '2019-05-22 01:54:26'),
(123, 'Jordi Mertz', 125, 266, 4, NULL, '2019-05-22 01:54:26', '2019-05-22 01:54:26'),
(124, 'Mr. Delmer Wiegand III', 126, 268, 2, NULL, '2019-05-22 01:54:26', '2019-05-22 01:54:26'),
(125, 'Cornelius Marvin', 127, 270, 2, NULL, '2019-05-22 01:54:26', '2019-05-22 01:54:26'),
(126, 'Maggie Wilderman', 128, 272, 2, NULL, '2019-05-22 01:54:26', '2019-05-22 01:54:26'),
(127, 'Dr. Brown Kertzmann I', 129, 274, 3, NULL, '2019-05-22 01:54:26', '2019-05-22 01:54:26'),
(128, 'Sonia O\'Keefe', 130, 276, 1, NULL, '2019-05-22 01:54:26', '2019-05-22 01:54:26'),
(129, 'Prof. Austyn Lemke', 131, 278, 1, NULL, '2019-05-22 01:54:26', '2019-05-22 01:54:26'),
(130, 'Dr. Rafaela Rippin', 132, 280, 4, NULL, '2019-05-22 01:54:26', '2019-05-22 01:54:26'),
(131, 'Landen Stoltenberg', 133, 282, 2, NULL, '2019-05-22 01:54:26', '2019-05-22 01:54:26'),
(132, 'Mr. Johan Ziemann', 134, 284, 3, NULL, '2019-05-22 01:54:27', '2019-05-22 01:54:27'),
(133, 'Kyla Harber', 135, 286, 3, NULL, '2019-05-22 01:54:27', '2019-05-22 01:54:27'),
(134, 'Marley Bahringer', 136, 288, 3, NULL, '2019-05-22 01:54:27', '2019-05-22 01:54:27'),
(135, 'Tabitha Lindgren', 137, 290, 2, NULL, '2019-05-22 01:54:27', '2019-05-22 01:54:27'),
(136, 'Mr. Terrill Grant', 138, 292, 3, NULL, '2019-05-22 01:54:27', '2019-05-22 01:54:27'),
(137, 'Dr. Selena Hartmann Sr.', 139, 294, 1, NULL, '2019-05-22 01:54:27', '2019-05-22 01:54:27'),
(138, 'Raquel O\'Reilly IV', 140, 296, 2, NULL, '2019-05-22 01:54:27', '2019-05-22 01:54:27'),
(139, 'Aliza Walker', 141, 298, 1, NULL, '2019-05-22 01:54:27', '2019-05-22 01:54:27'),
(140, 'Gus Collier', 142, 300, 4, NULL, '2019-05-22 01:54:27', '2019-05-22 01:54:27'),
(141, 'Fae Dickens', 143, 302, 1, NULL, '2019-05-22 01:54:27', '2019-05-22 01:54:27'),
(142, 'Vickie Jacobs', 144, 304, 4, NULL, '2019-05-22 01:54:27', '2019-05-22 01:54:27'),
(143, 'Lorena Cruickshank', 145, 306, 1, NULL, '2019-05-22 01:54:27', '2019-05-22 01:54:27'),
(144, 'Cleveland Carter DVM', 146, 308, 3, NULL, '2019-05-22 01:54:27', '2019-05-22 01:54:27'),
(145, 'Ana Jakubowski Sr.', 147, 310, 3, NULL, '2019-05-22 01:54:27', '2019-05-22 01:54:27'),
(146, 'Ms. Connie Mante IV', 148, 312, 4, NULL, '2019-05-22 01:54:28', '2019-05-22 01:54:28'),
(147, 'Humberto Harber', 149, 314, 1, NULL, '2019-05-22 01:54:28', '2019-05-22 01:54:28'),
(148, 'Laurianne Dickens PhD', 150, 316, 1, NULL, '2019-05-22 01:54:28', '2019-05-22 01:54:28'),
(149, 'William Trantow', 151, 318, 4, NULL, '2019-05-22 01:54:28', '2019-05-22 01:54:28'),
(150, 'Adalberto Beer DDS', 152, 320, 4, NULL, '2019-05-22 01:54:28', '2019-05-22 01:54:28'),
(151, 'Christop Roob', 153, 322, 4, NULL, '2019-05-22 01:54:28', '2019-05-22 01:54:28'),
(152, 'Larry Price II', 154, 324, 4, NULL, '2019-05-22 01:54:28', '2019-05-22 01:54:28'),
(153, 'Ismael Murray II', 155, 326, 2, NULL, '2019-05-22 01:54:28', '2019-05-22 01:54:28'),
(154, 'Ms. Eliane Beahan Sr.', 156, 328, 2, NULL, '2019-05-22 01:54:28', '2019-05-22 01:54:28'),
(155, 'Chaz Kemmer', 157, 330, 2, NULL, '2019-05-22 01:54:28', '2019-05-22 01:54:28'),
(156, 'George Dach', 158, 332, 4, NULL, '2019-05-22 01:54:28', '2019-05-22 01:54:28'),
(157, 'Mckenna Jaskolski', 159, 334, 4, NULL, '2019-05-22 01:54:28', '2019-05-22 01:54:28'),
(158, 'Loma Beatty', 160, 336, 4, NULL, '2019-05-22 01:54:28', '2019-05-22 01:54:28'),
(159, 'Walter Bernhard', 161, 338, 2, NULL, '2019-05-22 01:54:28', '2019-05-22 01:54:28'),
(160, 'Gerhard Mante', 162, 340, 1, NULL, '2019-05-22 01:54:28', '2019-05-22 01:54:28');

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
(1, 'Hoeger Islands', 12, 25, 341, 1, NULL, '2019-05-22 01:54:31', '2019-05-22 01:54:31'),
(2, 'Ari Pines', 24, 33, 342, 4, NULL, '2019-05-22 01:54:31', '2019-05-22 01:54:31'),
(3, 'Senger Pass', 21, 94, 343, 4, NULL, '2019-05-22 01:54:31', '2019-05-22 01:54:31'),
(4, 'Johnson Stravenue', 31, 10, 344, 4, NULL, '2019-05-22 01:54:31', '2019-05-22 01:54:31'),
(5, 'Haag Inlet', 19, 88, 345, 4, NULL, '2019-05-22 01:54:31', '2019-05-22 01:54:31'),
(6, 'Pfannerstill Shore', 46, 16, 346, 4, NULL, '2019-05-22 01:54:31', '2019-05-22 01:54:31'),
(7, 'Patricia Cliff', 24, 18, 347, 3, NULL, '2019-05-22 01:54:32', '2019-05-22 01:54:32'),
(8, 'Ayden Manors', 8, 18, 348, 3, NULL, '2019-05-22 01:54:32', '2019-05-22 01:54:32'),
(9, 'Easton Greens', 45, 24, 349, 4, NULL, '2019-05-22 01:54:32', '2019-05-22 01:54:32'),
(10, 'Stamm Avenue', 2, 64, 350, 1, NULL, '2019-05-22 01:54:32', '2019-05-22 01:54:32'),
(11, 'Dibbert Drive', 31, 27, 351, 2, NULL, '2019-05-22 01:54:32', '2019-05-22 01:54:32'),
(12, 'Maddison Lodge', 23, 45, 352, 2, NULL, '2019-05-22 01:54:32', '2019-05-22 01:54:32'),
(13, 'King Flat', 28, 49, 353, 3, NULL, '2019-05-22 01:54:32', '2019-05-22 01:54:32'),
(14, 'Bettye Courts', 16, 49, 354, 1, NULL, '2019-05-22 01:54:32', '2019-05-22 01:54:32'),
(15, 'Franecki Squares', 37, 80, 355, 1, NULL, '2019-05-22 01:54:32', '2019-05-22 01:54:32');

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
(1, 'admin', '2019-05-22 01:53:13', '2019-05-22 01:53:13');

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
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2019-05-22 01:53:13', '2019-05-22 01:53:13', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2019-05-22 01:53:13', '2019-05-22 01:53:13', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2019-05-22 01:53:13', '2019-05-22 01:53:13', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2019-05-22 01:53:13', '2019-05-22 01:53:13', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2019-05-22 01:53:13', '2019-05-22 01:53:13', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 10, '2019-05-22 01:53:13', '2019-05-22 01:53:13', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 11, '2019-05-22 01:53:13', '2019-05-22 01:53:13', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 12, '2019-05-22 01:53:14', '2019-05-22 01:53:14', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 13, '2019-05-22 01:53:14', '2019-05-22 01:53:14', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2019-05-22 01:53:14', '2019-05-22 01:53:14', 'voyager.settings.index', NULL);

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
(1, 'Aydenstad', 1, NULL, '2019-05-22 01:53:24', '2019-05-22 01:53:24'),
(2, 'Jerdeberg', 2, NULL, '2019-05-22 01:53:24', '2019-05-22 01:53:24'),
(3, 'East Marielle', 3, NULL, '2019-05-22 01:53:25', '2019-05-22 01:53:25'),
(4, 'Lake Dorthashire', 4, NULL, '2019-05-22 01:53:25', '2019-05-22 01:53:25'),
(5, 'East Cliftonbury', 5, NULL, '2019-05-22 01:53:25', '2019-05-22 01:53:25'),
(6, 'South Madilynborough', 6, NULL, '2019-05-22 01:53:25', '2019-05-22 01:53:25'),
(7, 'Schmelershire', 7, NULL, '2019-05-22 01:53:25', '2019-05-22 01:53:25'),
(8, 'Hughside', 8, NULL, '2019-05-22 01:53:25', '2019-05-22 01:53:25'),
(9, 'Jacynthestad', 9, NULL, '2019-05-22 01:53:25', '2019-05-22 01:53:25'),
(10, 'East Babymouth', 10, NULL, '2019-05-22 01:53:25', '2019-05-22 01:53:25'),
(11, 'East Libbiestad', 11, NULL, '2019-05-22 01:53:25', '2019-05-22 01:53:25'),
(12, 'Leannonview', 12, NULL, '2019-05-22 01:53:25', '2019-05-22 01:53:25'),
(13, 'Dorianhaven', 13, NULL, '2019-05-22 01:53:25', '2019-05-22 01:53:25'),
(14, 'Batzburgh', 14, NULL, '2019-05-22 01:53:25', '2019-05-22 01:53:25'),
(15, 'Mistyburgh', 15, NULL, '2019-05-22 01:53:25', '2019-05-22 01:53:25'),
(16, 'Chaunceyland', 16, NULL, '2019-05-22 01:53:25', '2019-05-22 01:53:25'),
(17, 'New Cullenberg', 17, NULL, '2019-05-22 01:53:26', '2019-05-22 01:53:26'),
(18, 'Rebekafurt', 18, NULL, '2019-05-22 01:53:26', '2019-05-22 01:53:26'),
(19, 'Lake Cornellbury', 19, NULL, '2019-05-22 01:53:26', '2019-05-22 01:53:26'),
(20, 'Port Lavonneborough', 20, NULL, '2019-05-22 01:53:26', '2019-05-22 01:53:26'),
(21, 'New Abdieltown', 21, NULL, '2019-05-22 01:53:26', '2019-05-22 01:53:26'),
(22, 'Lethaside', 22, NULL, '2019-05-22 01:53:26', '2019-05-22 01:53:26'),
(23, 'Destineyside', 23, NULL, '2019-05-22 01:53:26', '2019-05-22 01:53:26'),
(24, 'Port Payton', 24, NULL, '2019-05-22 01:53:27', '2019-05-22 01:53:27'),
(25, 'Murrayview', 25, NULL, '2019-05-22 01:53:27', '2019-05-22 01:53:27'),
(26, 'South Marionview', 26, NULL, '2019-05-22 01:53:27', '2019-05-22 01:53:27'),
(27, 'Lake Herbert', 27, NULL, '2019-05-22 01:53:27', '2019-05-22 01:53:27'),
(28, 'East Rosalindahaven', 28, NULL, '2019-05-22 01:53:27', '2019-05-22 01:53:27'),
(29, 'North Birdie', 29, NULL, '2019-05-22 01:53:27', '2019-05-22 01:53:27'),
(30, 'Tremblayhaven', 30, NULL, '2019-05-22 01:53:27', '2019-05-22 01:53:27'),
(31, 'South Tiannaton', 31, NULL, '2019-05-22 01:53:27', '2019-05-22 01:53:27'),
(32, 'Lake Devante', 32, NULL, '2019-05-22 01:53:27', '2019-05-22 01:53:27'),
(33, 'South Benton', 33, NULL, '2019-05-22 01:53:27', '2019-05-22 01:53:27'),
(34, 'Swaniawskiborough', 34, NULL, '2019-05-22 01:53:27', '2019-05-22 01:53:27'),
(35, 'Hillarystad', 35, NULL, '2019-05-22 01:53:27', '2019-05-22 01:53:27'),
(36, 'East Henryburgh', 36, NULL, '2019-05-22 01:53:27', '2019-05-22 01:53:27'),
(37, 'North Abnerhaven', 37, NULL, '2019-05-22 01:53:27', '2019-05-22 01:53:27'),
(38, 'North Rowenaville', 38, NULL, '2019-05-22 01:53:27', '2019-05-22 01:53:27'),
(39, 'Boehmfurt', 39, NULL, '2019-05-22 01:53:27', '2019-05-22 01:53:27'),
(40, 'Hahnfurt', 40, NULL, '2019-05-22 01:53:27', '2019-05-22 01:53:27'),
(41, 'Dibbertburgh', 41, NULL, '2019-05-22 01:53:27', '2019-05-22 01:53:27'),
(42, 'Lake Eliasborough', 42, NULL, '2019-05-22 01:53:27', '2019-05-22 01:53:27'),
(43, 'Clotildeton', 43, NULL, '2019-05-22 01:53:28', '2019-05-22 01:53:28'),
(44, 'Port Dixieborough', 44, NULL, '2019-05-22 01:53:28', '2019-05-22 01:53:28'),
(45, 'Camilaville', 45, NULL, '2019-05-22 01:53:28', '2019-05-22 01:53:28'),
(46, 'Stiedemannstad', 46, NULL, '2019-05-22 01:53:28', '2019-05-22 01:53:28'),
(47, 'Wizamouth', 47, NULL, '2019-05-22 01:53:28', '2019-05-22 01:53:28'),
(48, 'Winifredshire', 48, NULL, '2019-05-22 01:53:28', '2019-05-22 01:53:28'),
(49, 'East Presleymouth', 49, NULL, '2019-05-22 01:53:28', '2019-05-22 01:53:28'),
(50, 'South Vivianshire', 50, NULL, '2019-05-22 01:53:28', '2019-05-22 01:53:28');

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
(1, 'browse_admin', NULL, '2019-05-22 01:53:14', '2019-05-22 01:53:14'),
(2, 'browse_bread', NULL, '2019-05-22 01:53:14', '2019-05-22 01:53:14'),
(3, 'browse_database', NULL, '2019-05-22 01:53:14', '2019-05-22 01:53:14'),
(4, 'browse_media', NULL, '2019-05-22 01:53:14', '2019-05-22 01:53:14'),
(5, 'browse_compass', NULL, '2019-05-22 01:53:14', '2019-05-22 01:53:14'),
(6, 'browse_menus', 'menus', '2019-05-22 01:53:14', '2019-05-22 01:53:14'),
(7, 'read_menus', 'menus', '2019-05-22 01:53:15', '2019-05-22 01:53:15'),
(8, 'edit_menus', 'menus', '2019-05-22 01:53:15', '2019-05-22 01:53:15'),
(9, 'add_menus', 'menus', '2019-05-22 01:53:15', '2019-05-22 01:53:15'),
(10, 'delete_menus', 'menus', '2019-05-22 01:53:15', '2019-05-22 01:53:15'),
(11, 'browse_roles', 'roles', '2019-05-22 01:53:15', '2019-05-22 01:53:15'),
(12, 'read_roles', 'roles', '2019-05-22 01:53:15', '2019-05-22 01:53:15'),
(13, 'edit_roles', 'roles', '2019-05-22 01:53:15', '2019-05-22 01:53:15'),
(14, 'add_roles', 'roles', '2019-05-22 01:53:15', '2019-05-22 01:53:15'),
(15, 'delete_roles', 'roles', '2019-05-22 01:53:15', '2019-05-22 01:53:15'),
(16, 'browse_users', 'users', '2019-05-22 01:53:15', '2019-05-22 01:53:15'),
(17, 'read_users', 'users', '2019-05-22 01:53:15', '2019-05-22 01:53:15'),
(18, 'edit_users', 'users', '2019-05-22 01:53:15', '2019-05-22 01:53:15'),
(19, 'add_users', 'users', '2019-05-22 01:53:15', '2019-05-22 01:53:15'),
(20, 'delete_users', 'users', '2019-05-22 01:53:15', '2019-05-22 01:53:15'),
(21, 'browse_settings', 'settings', '2019-05-22 01:53:16', '2019-05-22 01:53:16'),
(22, 'read_settings', 'settings', '2019-05-22 01:53:16', '2019-05-22 01:53:16'),
(23, 'edit_settings', 'settings', '2019-05-22 01:53:16', '2019-05-22 01:53:16'),
(24, 'add_settings', 'settings', '2019-05-22 01:53:16', '2019-05-22 01:53:16'),
(25, 'delete_settings', 'settings', '2019-05-22 01:53:16', '2019-05-22 01:53:16');

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
(1, 'Ingenieria en Sistemas', 'Ingeniera', NULL, '2019-05-22 01:54:29', '2019-05-22 01:54:29'),
(2, 'Contabilidad', 'Profesional', NULL, '2019-05-22 01:54:29', '2019-05-22 01:54:29'),
(3, 'Turismo', 'Profesional', NULL, '2019-05-22 01:54:29', '2019-05-22 01:54:29');

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

--
-- Disparadores `resultado`
--
DELIMITER $$
CREATE TRIGGER `puntos_enfrentamiento` AFTER INSERT ON `resultado` FOR EACH ROW begin
	declare id_equipo_local int;
	declare resultado_local int;
    
	declare id_equipo_visitante int;
	declare resultado_visitante int;

-- Equipo Local
	SELECT resultado.resultado_local  INTO resultado_local FROM enfrentamiento 
    INNER JOIN resultado ON enfrentamiento.id = resultado.enfrentamiento_id  WHERE enfrentamiento.id = new.id;

	SELECT enfrentamiento.inscripcion_equipo_local_id INTO id_equipo_local FROM enfrentamiento 
    INNER JOIN resultado ON enfrentamiento.id = resultado.enfrentamiento_id  WHERE enfrentamiento.id = new.id;

-- Equipo Visitante
	SELECT resultado.resultado_visitante  INTO resultado_visitante FROM enfrentamiento 
    INNER JOIN resultado ON enfrentamiento.id = resultado.enfrentamiento_id  WHERE enfrentamiento.id = new.id;

	SELECT enfrentamiento.inscripcion_equipo_visitante_id INTO id_equipo_visitante FROM enfrentamiento 
    INNER JOIN resultado ON enfrentamiento.id = resultado.enfrentamiento_id  WHERE enfrentamiento.id = new.id;


    IF resultado_local > resultado_visitante THEN
			UPDATE inscripcion_equipo SET puntos = puntos + 3
			WHERE inscripcion_equipo.id = id_equipo_local;

			ELSEIF resultado_visitante > resultado_local THEN
				UPDATE inscripcion_equipo SET puntos = puntos + 3
				WHERE inscripcion_equipo.id = id_equipo_visitante;

				ELSEIF resultado_local = resultado_visitante THEN
					UPDATE inscripcion_equipo SET puntos = puntos + 1 WHERE inscripcion_equipo.id = id_equipo_local; 
					UPDATE inscripcion_equipo SET puntos = puntos + 1 WHERE inscripcion_equipo.id = id_equipo_visitante; 
    END IF;
end
$$
DELIMITER ;

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
(1, 'admin', 'Administrator', '2019-05-22 01:53:14', '2019-05-22 01:53:14', NULL),
(2, 'user', 'Normal User', '2019-05-22 01:53:14', '2019-05-22 01:53:14', NULL);

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
(1, 'site.title', 'Site Title', 'DEPORCO', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'DEPORCO es una plataforma para el manejo y almacenamiento de torneos deportivos al dia de hoy solo de futbol, simultaneamente se desarrolla soporte para otros deportes como balonces,voleibol y tennis.', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings\\June2019\\7UbIxXuykGISQRDw7twy.png', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'ADMISTRACIÓN DEPORCO', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Aquí podrás realizar modificaciones especificas a la plataforma.', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '50094944993-9um20hr327dr2qf07pbdmp2a0pocd7u9.apps.googleusercontent.com', '', 'text', 1, 'Admin');

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
(1, 'Amarilla', 'Tarjeta Amarilla', NULL, '2019-05-22 01:53:44', '2019-05-22 01:53:44'),
(2, 'Roja', 'Tarjeta Roja', NULL, '2019-05-22 01:53:44', '2019-05-22 01:53:44'),
(3, 'Azul', 'Tarjeta Azul', NULL, '2019-05-22 01:53:44', '2019-05-22 01:53:44');

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
(1, 1, 1, NULL, '2019-05-22 01:53:44', '2019-05-22 01:53:44'),
(2, 2, 1, NULL, '2019-05-22 01:53:44', '2019-05-22 01:53:44'),
(3, 3, 1, NULL, '2019-05-22 01:53:45', '2019-05-22 01:53:45'),
(4, 1, 2, NULL, '2019-05-22 01:53:45', '2019-05-22 01:53:45'),
(5, 2, 2, NULL, '2019-05-22 01:53:45', '2019-05-22 01:53:45'),
(6, 3, 2, NULL, '2019-05-22 01:53:45', '2019-05-22 01:53:45'),
(7, 1, 3, NULL, '2019-05-22 01:53:45', '2019-05-22 01:53:45'),
(8, 2, 3, NULL, '2019-05-22 01:53:45', '2019-05-22 01:53:45'),
(9, 3, 3, NULL, '2019-05-22 01:53:45', '2019-05-22 01:53:45');

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
(1, '217713609', 'Celular', NULL, '2019-05-22 01:53:38', '2019-05-22 01:53:38'),
(2, '242707074', 'Celular', NULL, '2019-05-22 01:53:38', '2019-05-22 01:53:38'),
(3, '48006162', 'Fijo', NULL, '2019-05-22 01:53:38', '2019-05-22 01:53:38'),
(4, '273126779', 'Fijo', NULL, '2019-05-22 01:53:38', '2019-05-22 01:53:38'),
(5, '173008740', 'Celular', NULL, '2019-05-22 01:53:38', '2019-05-22 01:53:38'),
(6, '142861230', 'Fijo', NULL, '2019-05-22 01:53:38', '2019-05-22 01:53:38'),
(7, '170583671', 'Celular', NULL, '2019-05-22 01:53:38', '2019-05-22 01:53:38'),
(8, '64713965', 'Fijo', NULL, '2019-05-22 01:53:38', '2019-05-22 01:53:38'),
(9, '85011696', 'Fijo', NULL, '2019-05-22 01:53:39', '2019-05-22 01:53:39'),
(10, '301199504', 'Celular', NULL, '2019-05-22 01:53:39', '2019-05-22 01:53:39'),
(11, '125054539', 'Fijo', NULL, '2019-05-22 01:53:39', '2019-05-22 01:53:39'),
(12, '35675616', 'Celular', NULL, '2019-05-22 01:53:39', '2019-05-22 01:53:39'),
(13, '280766587', 'Celular', NULL, '2019-05-22 01:53:39', '2019-05-22 01:53:39'),
(14, '210689866', 'Celular', NULL, '2019-05-22 01:53:39', '2019-05-22 01:53:39'),
(15, '44846119', 'Celular', NULL, '2019-05-22 01:53:39', '2019-05-22 01:53:39'),
(16, '66220778', 'Celular', NULL, '2019-05-22 01:53:39', '2019-05-22 01:53:39'),
(17, '40649440', 'Fijo', NULL, '2019-05-22 01:53:39', '2019-05-22 01:53:39'),
(18, '280176981', 'Celular', NULL, '2019-05-22 01:53:39', '2019-05-22 01:53:39'),
(19, '68080942', 'Celular', NULL, '2019-05-22 01:53:39', '2019-05-22 01:53:39'),
(20, '248182492', 'Fijo', NULL, '2019-05-22 01:53:39', '2019-05-22 01:53:39'),
(21, '99172055', 'Celular', NULL, '2019-05-22 01:53:47', '2019-05-22 01:53:47'),
(22, '134240859', 'Celular', NULL, '2019-05-22 01:53:48', '2019-05-22 01:53:48'),
(23, '228478746', 'Fijo', NULL, '2019-05-22 01:53:48', '2019-05-22 01:53:48'),
(24, '179714867', 'Fijo', NULL, '2019-05-22 01:53:48', '2019-05-22 01:53:48'),
(25, '36203638', 'Fijo', NULL, '2019-05-22 01:53:48', '2019-05-22 01:53:48'),
(26, '166199574', 'Fijo', NULL, '2019-05-22 01:53:48', '2019-05-22 01:53:48'),
(27, '202445062', 'Celular', NULL, '2019-05-22 01:53:48', '2019-05-22 01:53:48'),
(28, '99331590', 'Celular', NULL, '2019-05-22 01:53:48', '2019-05-22 01:53:48'),
(29, '286491563', 'Celular', NULL, '2019-05-22 01:53:49', '2019-05-22 01:53:49'),
(30, '277435445', 'Celular', NULL, '2019-05-22 01:53:49', '2019-05-22 01:53:49'),
(31, '297317410', 'Fijo', NULL, '2019-05-22 01:53:49', '2019-05-22 01:53:49'),
(32, '294052401', 'Celular', NULL, '2019-05-22 01:53:49', '2019-05-22 01:53:49'),
(33, '179103739', 'Celular', NULL, '2019-05-22 01:53:49', '2019-05-22 01:53:49'),
(34, '135924722', 'Celular', NULL, '2019-05-22 01:53:49', '2019-05-22 01:53:49'),
(35, '227794196', 'Fijo', NULL, '2019-05-22 01:53:49', '2019-05-22 01:53:49'),
(36, '57859096', 'Fijo', NULL, '2019-05-22 01:53:49', '2019-05-22 01:53:49'),
(37, '142779351', 'Fijo', NULL, '2019-05-22 01:53:49', '2019-05-22 01:53:49'),
(38, '293674539', 'Fijo', NULL, '2019-05-22 01:53:49', '2019-05-22 01:53:49'),
(39, '38875053', 'Fijo', NULL, '2019-05-22 01:53:49', '2019-05-22 01:53:49'),
(40, '162164540', 'Celular', NULL, '2019-05-22 01:53:49', '2019-05-22 01:53:49'),
(41, '46983369', 'Fijo', NULL, '2019-05-22 01:53:50', '2019-05-22 01:53:50'),
(42, '68687493', 'Fijo', NULL, '2019-05-22 01:53:50', '2019-05-22 01:53:50'),
(43, '221289753', 'Celular', NULL, '2019-05-22 01:53:50', '2019-05-22 01:53:50'),
(44, '228809160', 'Celular', NULL, '2019-05-22 01:53:50', '2019-05-22 01:53:50'),
(45, '81300076', 'Fijo', NULL, '2019-05-22 01:53:50', '2019-05-22 01:53:50'),
(46, '284472548', 'Fijo', NULL, '2019-05-22 01:53:50', '2019-05-22 01:53:50'),
(47, '151981147', 'Celular', NULL, '2019-05-22 01:53:50', '2019-05-22 01:53:50'),
(48, '178579525', 'Celular', NULL, '2019-05-22 01:53:50', '2019-05-22 01:53:50'),
(49, '284546101', 'Fijo', NULL, '2019-05-22 01:53:50', '2019-05-22 01:53:50'),
(50, '290810256', 'Fijo', NULL, '2019-05-22 01:53:50', '2019-05-22 01:53:50'),
(51, '176477737', 'Fijo', NULL, '2019-05-22 01:53:50', '2019-05-22 01:53:50'),
(52, '301849664', 'Celular', NULL, '2019-05-22 01:53:50', '2019-05-22 01:53:50'),
(53, '223260173', 'Celular', NULL, '2019-05-22 01:53:51', '2019-05-22 01:53:51'),
(54, '301612586', 'Fijo', NULL, '2019-05-22 01:53:51', '2019-05-22 01:53:51'),
(55, '291061069', 'Fijo', NULL, '2019-05-22 01:53:51', '2019-05-22 01:53:51'),
(56, '270671347', 'Celular', NULL, '2019-05-22 01:53:51', '2019-05-22 01:53:51'),
(57, '300192188', 'Celular', NULL, '2019-05-22 01:53:51', '2019-05-22 01:53:51'),
(58, '274574471', 'Fijo', NULL, '2019-05-22 01:53:51', '2019-05-22 01:53:51'),
(59, '177051941', 'Fijo', NULL, '2019-05-22 01:53:51', '2019-05-22 01:53:51'),
(60, '235512001', 'Celular', NULL, '2019-05-22 01:53:51', '2019-05-22 01:53:51'),
(61, '313129613', 'Fijo', NULL, '2019-05-22 01:53:51', '2019-05-22 01:53:51'),
(62, '283650153', 'Celular', NULL, '2019-05-22 01:53:51', '2019-05-22 01:53:51'),
(63, '193648667', 'Celular', NULL, '2019-05-22 01:53:51', '2019-05-22 01:53:51'),
(64, '143275870', 'Celular', NULL, '2019-05-22 01:53:51', '2019-05-22 01:53:51'),
(65, '81393322', 'Celular', NULL, '2019-05-22 01:53:52', '2019-05-22 01:53:52'),
(66, '111049714', 'Celular', NULL, '2019-05-22 01:53:52', '2019-05-22 01:53:52'),
(67, '236680807', 'Fijo', NULL, '2019-05-22 01:53:52', '2019-05-22 01:53:52'),
(68, '264912557', 'Fijo', NULL, '2019-05-22 01:53:52', '2019-05-22 01:53:52'),
(69, '116733673', 'Celular', NULL, '2019-05-22 01:53:52', '2019-05-22 01:53:52'),
(70, '181722301', 'Celular', NULL, '2019-05-22 01:53:52', '2019-05-22 01:53:52'),
(71, '207805652', 'Fijo', NULL, '2019-05-22 01:53:52', '2019-05-22 01:53:52'),
(72, '33381943', 'Celular', NULL, '2019-05-22 01:53:52', '2019-05-22 01:53:52'),
(73, '159225162', 'Celular', NULL, '2019-05-22 01:53:52', '2019-05-22 01:53:52'),
(74, '254981102', 'Celular', NULL, '2019-05-22 01:53:52', '2019-05-22 01:53:52'),
(75, '233630355', 'Celular', NULL, '2019-05-22 01:53:53', '2019-05-22 01:53:53'),
(76, '299593918', 'Celular', NULL, '2019-05-22 01:53:53', '2019-05-22 01:53:53'),
(77, '111132427', 'Celular', NULL, '2019-05-22 01:53:53', '2019-05-22 01:53:53'),
(78, '120509186', 'Fijo', NULL, '2019-05-22 01:53:53', '2019-05-22 01:53:53'),
(79, '82375663', 'Celular', NULL, '2019-05-22 01:53:53', '2019-05-22 01:53:53'),
(80, '175058570', 'Celular', NULL, '2019-05-22 01:53:53', '2019-05-22 01:53:53'),
(81, '65162654', 'Fijo', NULL, '2019-05-22 01:53:53', '2019-05-22 01:53:53'),
(82, '248477519', 'Fijo', NULL, '2019-05-22 01:53:53', '2019-05-22 01:53:53'),
(83, '272396872', 'Celular', NULL, '2019-05-22 01:53:53', '2019-05-22 01:53:53'),
(84, '222955870', 'Celular', NULL, '2019-05-22 01:53:54', '2019-05-22 01:53:54'),
(85, '140346076', 'Fijo', NULL, '2019-05-22 01:53:54', '2019-05-22 01:53:54'),
(86, '238883083', 'Fijo', NULL, '2019-05-22 01:53:54', '2019-05-22 01:53:54'),
(87, '59972410', 'Fijo', NULL, '2019-05-22 01:53:54', '2019-05-22 01:53:54'),
(88, '97330559', 'Fijo', NULL, '2019-05-22 01:53:54', '2019-05-22 01:53:54'),
(89, '67002193', 'Fijo', NULL, '2019-05-22 01:53:54', '2019-05-22 01:53:54'),
(90, '188983379', 'Fijo', NULL, '2019-05-22 01:53:54', '2019-05-22 01:53:54'),
(91, '292783894', 'Celular', NULL, '2019-05-22 01:53:54', '2019-05-22 01:53:54'),
(92, '198536274', 'Celular', NULL, '2019-05-22 01:53:54', '2019-05-22 01:53:54'),
(93, '153963496', 'Fijo', NULL, '2019-05-22 01:53:54', '2019-05-22 01:53:54'),
(94, '83435068', 'Fijo', NULL, '2019-05-22 01:53:54', '2019-05-22 01:53:54'),
(95, '43552872', 'Fijo', NULL, '2019-05-22 01:53:54', '2019-05-22 01:53:54'),
(96, '64816612', 'Celular', NULL, '2019-05-22 01:53:54', '2019-05-22 01:53:54'),
(97, '245671197', 'Fijo', NULL, '2019-05-22 01:53:55', '2019-05-22 01:53:55'),
(98, '154007894', 'Celular', NULL, '2019-05-22 01:53:55', '2019-05-22 01:53:55'),
(99, '276651681', 'Celular', NULL, '2019-05-22 01:53:55', '2019-05-22 01:53:55'),
(100, '99073654', 'Celular', NULL, '2019-05-22 01:53:55', '2019-05-22 01:53:55'),
(101, '43027368', 'Celular', NULL, '2019-05-22 01:53:55', '2019-05-22 01:53:55'),
(102, '312318849', 'Celular', NULL, '2019-05-22 01:53:55', '2019-05-22 01:53:55'),
(103, '202442318', 'Fijo', NULL, '2019-05-22 01:53:55', '2019-05-22 01:53:55'),
(104, '233408763', 'Fijo', NULL, '2019-05-22 01:53:55', '2019-05-22 01:53:55'),
(105, '293339349', 'Fijo', NULL, '2019-05-22 01:53:55', '2019-05-22 01:53:55'),
(106, '101601283', 'Celular', NULL, '2019-05-22 01:53:55', '2019-05-22 01:53:55'),
(107, '124767294', 'Celular', NULL, '2019-05-22 01:53:55', '2019-05-22 01:53:55'),
(108, '43143285', 'Celular', NULL, '2019-05-22 01:53:55', '2019-05-22 01:53:55'),
(109, '210927230', 'Fijo', NULL, '2019-05-22 01:53:55', '2019-05-22 01:53:55'),
(110, '46605964', 'Celular', NULL, '2019-05-22 01:53:55', '2019-05-22 01:53:55'),
(111, '316328849', 'Celular', NULL, '2019-05-22 01:53:56', '2019-05-22 01:53:56'),
(112, '90604187', 'Fijo', NULL, '2019-05-22 01:53:56', '2019-05-22 01:53:56'),
(113, '186901063', 'Celular', NULL, '2019-05-22 01:53:56', '2019-05-22 01:53:56'),
(114, '106554677', 'Celular', NULL, '2019-05-22 01:53:56', '2019-05-22 01:53:56'),
(115, '63841633', 'Fijo', NULL, '2019-05-22 01:53:56', '2019-05-22 01:53:56'),
(116, '49674821', 'Fijo', NULL, '2019-05-22 01:53:56', '2019-05-22 01:53:56'),
(117, '230237137', 'Fijo', NULL, '2019-05-22 01:53:56', '2019-05-22 01:53:56'),
(118, '306351941', 'Fijo', NULL, '2019-05-22 01:53:56', '2019-05-22 01:53:56'),
(119, '115520444', 'Fijo', NULL, '2019-05-22 01:53:56', '2019-05-22 01:53:56'),
(120, '263198479', 'Fijo', NULL, '2019-05-22 01:53:56', '2019-05-22 01:53:56'),
(121, '285957209', 'Fijo', NULL, '2019-05-22 01:53:56', '2019-05-22 01:53:56'),
(122, '53857585', 'Fijo', NULL, '2019-05-22 01:53:56', '2019-05-22 01:53:56'),
(123, '117064487', 'Celular', NULL, '2019-05-22 01:53:56', '2019-05-22 01:53:56'),
(124, '148103779', 'Fijo', NULL, '2019-05-22 01:53:57', '2019-05-22 01:53:57'),
(125, '258973619', 'Fijo', NULL, '2019-05-22 01:53:57', '2019-05-22 01:53:57'),
(126, '89853581', 'Celular', NULL, '2019-05-22 01:53:57', '2019-05-22 01:53:57'),
(127, '74239252', 'Celular', NULL, '2019-05-22 01:53:57', '2019-05-22 01:53:57'),
(128, '216643414', 'Celular', NULL, '2019-05-22 01:53:57', '2019-05-22 01:53:57'),
(129, '182573780', 'Celular', NULL, '2019-05-22 01:53:57', '2019-05-22 01:53:57'),
(130, '182484653', 'Fijo', NULL, '2019-05-22 01:53:57', '2019-05-22 01:53:57'),
(131, '95402192', 'Fijo', NULL, '2019-05-22 01:53:57', '2019-05-22 01:53:57'),
(132, '124962900', 'Fijo', NULL, '2019-05-22 01:53:57', '2019-05-22 01:53:57'),
(133, '263198857', 'Celular', NULL, '2019-05-22 01:53:57', '2019-05-22 01:53:57'),
(134, '173599326', 'Celular', NULL, '2019-05-22 01:53:57', '2019-05-22 01:53:57'),
(135, '70393309', 'Celular', NULL, '2019-05-22 01:53:57', '2019-05-22 01:53:57'),
(136, '80680168', 'Fijo', NULL, '2019-05-22 01:53:58', '2019-05-22 01:53:58'),
(137, '254383927', 'Fijo', NULL, '2019-05-22 01:53:58', '2019-05-22 01:53:58'),
(138, '51723342', 'Fijo', NULL, '2019-05-22 01:53:58', '2019-05-22 01:53:58'),
(139, '194971636', 'Fijo', NULL, '2019-05-22 01:53:58', '2019-05-22 01:53:58'),
(140, '317501896', 'Celular', NULL, '2019-05-22 01:53:58', '2019-05-22 01:53:58'),
(141, '152881820', 'Celular', NULL, '2019-05-22 01:53:58', '2019-05-22 01:53:58'),
(142, '141607569', 'Celular', NULL, '2019-05-22 01:53:58', '2019-05-22 01:53:58'),
(143, '34958729', 'Fijo', NULL, '2019-05-22 01:53:58', '2019-05-22 01:53:58'),
(144, '222934526', 'Celular', NULL, '2019-05-22 01:53:58', '2019-05-22 01:53:58'),
(145, '233912408', 'Fijo', NULL, '2019-05-22 01:53:58', '2019-05-22 01:53:58'),
(146, '191910115', 'Celular', NULL, '2019-05-22 01:53:58', '2019-05-22 01:53:58'),
(147, '314932395', 'Celular', NULL, '2019-05-22 01:53:59', '2019-05-22 01:53:59'),
(148, '242242419', 'Fijo', NULL, '2019-05-22 01:53:59', '2019-05-22 01:53:59'),
(149, '129096945', 'Fijo', NULL, '2019-05-22 01:53:59', '2019-05-22 01:53:59'),
(150, '176773512', 'Celular', NULL, '2019-05-22 01:53:59', '2019-05-22 01:53:59'),
(151, '63676959', 'Fijo', NULL, '2019-05-22 01:53:59', '2019-05-22 01:53:59'),
(152, '62427465', 'Celular', NULL, '2019-05-22 01:53:59', '2019-05-22 01:53:59'),
(153, '128628768', 'Celular', NULL, '2019-05-22 01:53:59', '2019-05-22 01:53:59'),
(154, '59578792', 'Celular', NULL, '2019-05-22 01:53:59', '2019-05-22 01:53:59'),
(155, '192917437', 'Fijo', NULL, '2019-05-22 01:53:59', '2019-05-22 01:53:59'),
(156, '161566796', 'Fijo', NULL, '2019-05-22 01:53:59', '2019-05-22 01:53:59'),
(157, '296975628', 'Fijo', NULL, '2019-05-22 01:53:59', '2019-05-22 01:53:59'),
(158, '113880009', 'Fijo', NULL, '2019-05-22 01:53:59', '2019-05-22 01:53:59'),
(159, '139984418', 'Fijo', NULL, '2019-05-22 01:53:59', '2019-05-22 01:53:59'),
(160, '167109450', 'Celular', NULL, '2019-05-22 01:54:00', '2019-05-22 01:54:00'),
(161, '182270150', 'Fijo', NULL, '2019-05-22 01:54:00', '2019-05-22 01:54:00'),
(162, '190673585', 'Fijo', NULL, '2019-05-22 01:54:00', '2019-05-22 01:54:00'),
(163, '198892660', 'Celular', NULL, '2019-05-22 01:54:00', '2019-05-22 01:54:00'),
(164, '255887077', 'Fijo', NULL, '2019-05-22 01:54:00', '2019-05-22 01:54:00'),
(165, '144007381', 'Fijo', NULL, '2019-05-22 01:54:00', '2019-05-22 01:54:00'),
(166, '308094396', 'Fijo', NULL, '2019-05-22 01:54:00', '2019-05-22 01:54:00'),
(167, '53337720', 'Fijo', NULL, '2019-05-22 01:54:00', '2019-05-22 01:54:00'),
(168, '314511313', 'Fijo', NULL, '2019-05-22 01:54:00', '2019-05-22 01:54:00'),
(169, '269861002', 'Fijo', NULL, '2019-05-22 01:54:00', '2019-05-22 01:54:00'),
(170, '46658926', 'Fijo', NULL, '2019-05-22 01:54:00', '2019-05-22 01:54:00'),
(171, '298240985', 'Fijo', NULL, '2019-05-22 01:54:00', '2019-05-22 01:54:00'),
(172, '307742384', 'Fijo', NULL, '2019-05-22 01:54:00', '2019-05-22 01:54:00'),
(173, '229386107', 'Celular', NULL, '2019-05-22 01:54:00', '2019-05-22 01:54:00'),
(174, '72078021', 'Fijo', NULL, '2019-05-22 01:54:01', '2019-05-22 01:54:01'),
(175, '113548370', 'Celular', NULL, '2019-05-22 01:54:01', '2019-05-22 01:54:01'),
(176, '295887442', 'Celular', NULL, '2019-05-22 01:54:01', '2019-05-22 01:54:01'),
(177, '89835077', 'Celular', NULL, '2019-05-22 01:54:01', '2019-05-22 01:54:01'),
(178, '205581345', 'Fijo', NULL, '2019-05-22 01:54:01', '2019-05-22 01:54:01'),
(179, '214928783', 'Celular', NULL, '2019-05-22 01:54:01', '2019-05-22 01:54:01'),
(180, '237177099', 'Fijo', NULL, '2019-05-22 01:54:01', '2019-05-22 01:54:01'),
(181, '290962406', 'Celular', NULL, '2019-05-22 01:54:01', '2019-05-22 01:54:01'),
(182, '120432880', 'Fijo', NULL, '2019-05-22 01:54:01', '2019-05-22 01:54:01'),
(183, '306522905', 'Fijo', NULL, '2019-05-22 01:54:01', '2019-05-22 01:54:01'),
(184, '95958415', 'Fijo', NULL, '2019-05-22 01:54:01', '2019-05-22 01:54:01'),
(185, '104431923', 'Fijo', NULL, '2019-05-22 01:54:01', '2019-05-22 01:54:01'),
(186, '217828156', 'Celular', NULL, '2019-05-22 01:54:02', '2019-05-22 01:54:02'),
(187, '170112767', 'Fijo', NULL, '2019-05-22 01:54:02', '2019-05-22 01:54:02'),
(188, '136635420', 'Celular', NULL, '2019-05-22 01:54:02', '2019-05-22 01:54:02'),
(189, '252803301', 'Celular', NULL, '2019-05-22 01:54:02', '2019-05-22 01:54:02'),
(190, '199532357', 'Fijo', NULL, '2019-05-22 01:54:02', '2019-05-22 01:54:02'),
(191, '217319130', 'Celular', NULL, '2019-05-22 01:54:02', '2019-05-22 01:54:02'),
(192, '193558873', 'Fijo', NULL, '2019-05-22 01:54:02', '2019-05-22 01:54:02'),
(193, '63445378', 'Celular', NULL, '2019-05-22 01:54:02', '2019-05-22 01:54:02'),
(194, '212553971', 'Fijo', NULL, '2019-05-22 01:54:02', '2019-05-22 01:54:02'),
(195, '58737159', 'Fijo', NULL, '2019-05-22 01:54:02', '2019-05-22 01:54:02'),
(196, '230369586', 'Fijo', NULL, '2019-05-22 01:54:02', '2019-05-22 01:54:02'),
(197, '275345621', 'Celular', NULL, '2019-05-22 01:54:02', '2019-05-22 01:54:02'),
(198, '208834122', 'Celular', NULL, '2019-05-22 01:54:02', '2019-05-22 01:54:02'),
(199, '235540604', 'Celular', NULL, '2019-05-22 01:54:03', '2019-05-22 01:54:03'),
(200, '192205004', 'Fijo', NULL, '2019-05-22 01:54:03', '2019-05-22 01:54:03'),
(201, '74585590', 'Fijo', NULL, '2019-05-22 01:54:03', '2019-05-22 01:54:03'),
(202, '300446449', 'Fijo', NULL, '2019-05-22 01:54:03', '2019-05-22 01:54:03'),
(203, '202142144', 'Fijo', NULL, '2019-05-22 01:54:03', '2019-05-22 01:54:03'),
(204, '232616388', 'Celular', NULL, '2019-05-22 01:54:03', '2019-05-22 01:54:03'),
(205, '62484023', 'Fijo', NULL, '2019-05-22 01:54:03', '2019-05-22 01:54:03'),
(206, '310483623', 'Fijo', NULL, '2019-05-22 01:54:03', '2019-05-22 01:54:03'),
(207, '194000326', 'Celular', NULL, '2019-05-22 01:54:03', '2019-05-22 01:54:03'),
(208, '36449448', 'Celular', NULL, '2019-05-22 01:54:03', '2019-05-22 01:54:03'),
(209, '154460822', 'Celular', NULL, '2019-05-22 01:54:03', '2019-05-22 01:54:03'),
(210, '69005606', 'Celular', NULL, '2019-05-22 01:54:03', '2019-05-22 01:54:03'),
(211, '94133090', 'Celular', NULL, '2019-05-22 01:54:03', '2019-05-22 01:54:03'),
(212, '127657808', 'Fijo', NULL, '2019-05-22 01:54:04', '2019-05-22 01:54:04'),
(213, '116607567', 'Fijo', NULL, '2019-05-22 01:54:04', '2019-05-22 01:54:04'),
(214, '67801929', 'Celular', NULL, '2019-05-22 01:54:04', '2019-05-22 01:54:04'),
(215, '300157559', 'Fijo', NULL, '2019-05-22 01:54:04', '2019-05-22 01:54:04'),
(216, '192949254', 'Celular', NULL, '2019-05-22 01:54:04', '2019-05-22 01:54:04'),
(217, '32135291', 'Fijo', NULL, '2019-05-22 01:54:04', '2019-05-22 01:54:04'),
(218, '271729586', 'Fijo', NULL, '2019-05-22 01:54:04', '2019-05-22 01:54:04'),
(219, '124998268', 'Fijo', NULL, '2019-05-22 01:54:04', '2019-05-22 01:54:04'),
(220, '100269962', 'Fijo', NULL, '2019-05-22 01:54:04', '2019-05-22 01:54:04'),
(221, '267093905', 'Celular', NULL, '2019-05-22 01:54:04', '2019-05-22 01:54:04'),
(222, '212217562', 'Celular', NULL, '2019-05-22 01:54:04', '2019-05-22 01:54:04'),
(223, '216774516', 'Fijo', NULL, '2019-05-22 01:54:04', '2019-05-22 01:54:04'),
(224, '31917020', 'Celular', NULL, '2019-05-22 01:54:04', '2019-05-22 01:54:04'),
(225, '234114065', 'Celular', NULL, '2019-05-22 01:54:04', '2019-05-22 01:54:04'),
(226, '159258763', 'Fijo', NULL, '2019-05-22 01:54:04', '2019-05-22 01:54:04'),
(227, '154415151', 'Fijo', NULL, '2019-05-22 01:54:04', '2019-05-22 01:54:04'),
(228, '94314182', 'Celular', NULL, '2019-05-22 01:54:05', '2019-05-22 01:54:05'),
(229, '179606781', 'Celular', NULL, '2019-05-22 01:54:05', '2019-05-22 01:54:05'),
(230, '115006988', 'Fijo', NULL, '2019-05-22 01:54:05', '2019-05-22 01:54:05'),
(231, '42327155', 'Fijo', NULL, '2019-05-22 01:54:05', '2019-05-22 01:54:05'),
(232, '250756312', 'Celular', NULL, '2019-05-22 01:54:05', '2019-05-22 01:54:05'),
(233, '287540308', 'Fijo', NULL, '2019-05-22 01:54:05', '2019-05-22 01:54:05'),
(234, '287810261', 'Celular', NULL, '2019-05-22 01:54:05', '2019-05-22 01:54:05'),
(235, '183424201', 'Celular', NULL, '2019-05-22 01:54:05', '2019-05-22 01:54:05'),
(236, '195048621', 'Celular', NULL, '2019-05-22 01:54:05', '2019-05-22 01:54:05'),
(237, '219455459', 'Fijo', NULL, '2019-05-22 01:54:05', '2019-05-22 01:54:05'),
(238, '81848601', 'Fijo', NULL, '2019-05-22 01:54:05', '2019-05-22 01:54:05'),
(239, '36887357', 'Celular', NULL, '2019-05-22 01:54:05', '2019-05-22 01:54:05'),
(240, '250046716', 'Fijo', NULL, '2019-05-22 01:54:05', '2019-05-22 01:54:05'),
(241, '97347479', 'Fijo', NULL, '2019-05-22 01:54:06', '2019-05-22 01:54:06'),
(242, '234010756', 'Fijo', NULL, '2019-05-22 01:54:06', '2019-05-22 01:54:06'),
(243, '260363897', 'Fijo', NULL, '2019-05-22 01:54:06', '2019-05-22 01:54:06'),
(244, '183927969', 'Celular', NULL, '2019-05-22 01:54:06', '2019-05-22 01:54:06'),
(245, '243857202', 'Celular', NULL, '2019-05-22 01:54:06', '2019-05-22 01:54:06'),
(246, '81373652', 'Celular', NULL, '2019-05-22 01:54:06', '2019-05-22 01:54:06'),
(247, '216601269', 'Fijo', NULL, '2019-05-22 01:54:06', '2019-05-22 01:54:06'),
(248, '187683972', 'Fijo', NULL, '2019-05-22 01:54:06', '2019-05-22 01:54:06'),
(249, '38529187', 'Celular', NULL, '2019-05-22 01:54:06', '2019-05-22 01:54:06'),
(250, '208269166', 'Fijo', NULL, '2019-05-22 01:54:06', '2019-05-22 01:54:06'),
(251, '72660520', 'Fijo', NULL, '2019-05-22 01:54:06', '2019-05-22 01:54:06'),
(252, '231800714', 'Celular', NULL, '2019-05-22 01:54:06', '2019-05-22 01:54:06'),
(253, '299757582', 'Celular', NULL, '2019-05-22 01:54:06', '2019-05-22 01:54:06'),
(254, '97643726', 'Fijo', NULL, '2019-05-22 01:54:07', '2019-05-22 01:54:07'),
(255, '203087015', 'Fijo', NULL, '2019-05-22 01:54:07', '2019-05-22 01:54:07'),
(256, '232326220', 'Celular', NULL, '2019-05-22 01:54:07', '2019-05-22 01:54:07'),
(257, '79084175', 'Fijo', NULL, '2019-05-22 01:54:07', '2019-05-22 01:54:07'),
(258, '35222666', 'Fijo', NULL, '2019-05-22 01:54:07', '2019-05-22 01:54:07'),
(259, '246319910', 'Celular', NULL, '2019-05-22 01:54:07', '2019-05-22 01:54:07'),
(260, '299198079', 'Fijo', NULL, '2019-05-22 01:54:07', '2019-05-22 01:54:07'),
(261, '269398585', 'Celular', NULL, '2019-05-22 01:54:07', '2019-05-22 01:54:07'),
(262, '172276279', 'Fijo', NULL, '2019-05-22 01:54:07', '2019-05-22 01:54:07'),
(263, '119858121', 'Fijo', NULL, '2019-05-22 01:54:08', '2019-05-22 01:54:08'),
(264, '167652700', 'Celular', NULL, '2019-05-22 01:54:08', '2019-05-22 01:54:08'),
(265, '117433044', 'Celular', NULL, '2019-05-22 01:54:08', '2019-05-22 01:54:08'),
(266, '175523258', 'Celular', NULL, '2019-05-22 01:54:08', '2019-05-22 01:54:08'),
(267, '204554560', 'Fijo', NULL, '2019-05-22 01:54:08', '2019-05-22 01:54:08'),
(268, '136039387', 'Celular', NULL, '2019-05-22 01:54:08', '2019-05-22 01:54:08'),
(269, '171750196', 'Fijo', NULL, '2019-05-22 01:54:08', '2019-05-22 01:54:08'),
(270, '58406623', 'Celular', NULL, '2019-05-22 01:54:08', '2019-05-22 01:54:08'),
(271, '31489576', 'Celular', NULL, '2019-05-22 01:54:08', '2019-05-22 01:54:08'),
(272, '190340891', 'Celular', NULL, '2019-05-22 01:54:08', '2019-05-22 01:54:08'),
(273, '260243377', 'Celular', NULL, '2019-05-22 01:54:09', '2019-05-22 01:54:09'),
(274, '227051735', 'Fijo', NULL, '2019-05-22 01:54:09', '2019-05-22 01:54:09'),
(275, '41180813', 'Fijo', NULL, '2019-05-22 01:54:09', '2019-05-22 01:54:09'),
(276, '219555396', 'Celular', NULL, '2019-05-22 01:54:09', '2019-05-22 01:54:09'),
(277, '162147400', 'Fijo', NULL, '2019-05-22 01:54:09', '2019-05-22 01:54:09'),
(278, '140640372', 'Celular', NULL, '2019-05-22 01:54:09', '2019-05-22 01:54:09'),
(279, '246582752', 'Fijo', NULL, '2019-05-22 01:54:09', '2019-05-22 01:54:09'),
(280, '100209576', 'Celular', NULL, '2019-05-22 01:54:09', '2019-05-22 01:54:09'),
(281, '236988697', 'Fijo', NULL, '2019-05-22 01:54:09', '2019-05-22 01:54:09'),
(282, '174357180', 'Fijo', NULL, '2019-05-22 01:54:09', '2019-05-22 01:54:09'),
(283, '200674731', 'Celular', NULL, '2019-05-22 01:54:09', '2019-05-22 01:54:09'),
(284, '97790494', 'Celular', NULL, '2019-05-22 01:54:09', '2019-05-22 01:54:09'),
(285, '196693672', 'Celular', NULL, '2019-05-22 01:54:09', '2019-05-22 01:54:09'),
(286, '207254809', 'Fijo', NULL, '2019-05-22 01:54:09', '2019-05-22 01:54:09'),
(287, '149886715', 'Celular', NULL, '2019-05-22 01:54:09', '2019-05-22 01:54:09'),
(288, '318323796', 'Celular', NULL, '2019-05-22 01:54:10', '2019-05-22 01:54:10'),
(289, '256279514', 'Fijo', NULL, '2019-05-22 01:54:10', '2019-05-22 01:54:10'),
(290, '109422636', 'Celular', NULL, '2019-05-22 01:54:10', '2019-05-22 01:54:10'),
(291, '285804118', 'Fijo', NULL, '2019-05-22 01:54:10', '2019-05-22 01:54:10'),
(292, '147031097', 'Fijo', NULL, '2019-05-22 01:54:10', '2019-05-22 01:54:10'),
(293, '280309659', 'Celular', NULL, '2019-05-22 01:54:10', '2019-05-22 01:54:10'),
(294, '291796702', 'Celular', NULL, '2019-05-22 01:54:10', '2019-05-22 01:54:10'),
(295, '260240416', 'Fijo', NULL, '2019-05-22 01:54:10', '2019-05-22 01:54:10'),
(296, '113877025', 'Celular', NULL, '2019-05-22 01:54:10', '2019-05-22 01:54:10'),
(297, '95704052', 'Celular', NULL, '2019-05-22 01:54:10', '2019-05-22 01:54:10'),
(298, '245231399', 'Fijo', NULL, '2019-05-22 01:54:10', '2019-05-22 01:54:10'),
(299, '201867871', 'Celular', NULL, '2019-05-22 01:54:10', '2019-05-22 01:54:10'),
(300, '203386724', 'Fijo', NULL, '2019-05-22 01:54:10', '2019-05-22 01:54:10'),
(301, '237397295', 'Fijo', NULL, '2019-05-22 01:54:10', '2019-05-22 01:54:10'),
(302, '83934981', 'Fijo', NULL, '2019-05-22 01:54:10', '2019-05-22 01:54:10'),
(303, '313064499', 'Fijo', NULL, '2019-05-22 01:54:11', '2019-05-22 01:54:11'),
(304, '239084604', 'Fijo', NULL, '2019-05-22 01:54:11', '2019-05-22 01:54:11'),
(305, '77526162', 'Celular', NULL, '2019-05-22 01:54:11', '2019-05-22 01:54:11'),
(306, '296390186', 'Celular', NULL, '2019-05-22 01:54:11', '2019-05-22 01:54:11'),
(307, '176321168', 'Celular', NULL, '2019-05-22 01:54:11', '2019-05-22 01:54:11'),
(308, '238883484', 'Celular', NULL, '2019-05-22 01:54:11', '2019-05-22 01:54:11'),
(309, '250820442', 'Fijo', NULL, '2019-05-22 01:54:11', '2019-05-22 01:54:11'),
(310, '108534284', 'Celular', NULL, '2019-05-22 01:54:11', '2019-05-22 01:54:11'),
(311, '225296524', 'Celular', NULL, '2019-05-22 01:54:12', '2019-05-22 01:54:12'),
(312, '284125437', 'Celular', NULL, '2019-05-22 01:54:12', '2019-05-22 01:54:12'),
(313, '163368516', 'Fijo', NULL, '2019-05-22 01:54:12', '2019-05-22 01:54:12'),
(314, '300349323', 'Celular', NULL, '2019-05-22 01:54:12', '2019-05-22 01:54:12'),
(315, '167350690', 'Celular', NULL, '2019-05-22 01:54:12', '2019-05-22 01:54:12'),
(316, '202592077', 'Celular', NULL, '2019-05-22 01:54:12', '2019-05-22 01:54:12'),
(317, '67863024', 'Celular', NULL, '2019-05-22 01:54:12', '2019-05-22 01:54:12'),
(318, '247219727', 'Fijo', NULL, '2019-05-22 01:54:12', '2019-05-22 01:54:12'),
(319, '41337433', 'Fijo', NULL, '2019-05-22 01:54:12', '2019-05-22 01:54:12'),
(320, '83291793', 'Fijo', NULL, '2019-05-22 01:54:12', '2019-05-22 01:54:12'),
(321, '263855914', 'Fijo', NULL, '2019-05-22 01:54:13', '2019-05-22 01:54:13'),
(322, '308995503', 'Celular', NULL, '2019-05-22 01:54:13', '2019-05-22 01:54:13'),
(323, '131285020', 'Fijo', NULL, '2019-05-22 01:54:13', '2019-05-22 01:54:13'),
(324, '174824448', 'Fijo', NULL, '2019-05-22 01:54:13', '2019-05-22 01:54:13'),
(325, '71726999', 'Fijo', NULL, '2019-05-22 01:54:13', '2019-05-22 01:54:13'),
(326, '257649706', 'Celular', NULL, '2019-05-22 01:54:13', '2019-05-22 01:54:13'),
(327, '306188210', 'Fijo', NULL, '2019-05-22 01:54:13', '2019-05-22 01:54:13'),
(328, '107290483', 'Celular', NULL, '2019-05-22 01:54:13', '2019-05-22 01:54:13'),
(329, '42919727', 'Celular', NULL, '2019-05-22 01:54:13', '2019-05-22 01:54:13'),
(330, '208352663', 'Celular', NULL, '2019-05-22 01:54:13', '2019-05-22 01:54:13'),
(331, '287280728', 'Celular', NULL, '2019-05-22 01:54:13', '2019-05-22 01:54:13'),
(332, '280312393', 'Celular', NULL, '2019-05-22 01:54:14', '2019-05-22 01:54:14'),
(333, '317038546', 'Fijo', NULL, '2019-05-22 01:54:14', '2019-05-22 01:54:14'),
(334, '250739072', 'Celular', NULL, '2019-05-22 01:54:14', '2019-05-22 01:54:14'),
(335, '151456556', 'Celular', NULL, '2019-05-22 01:54:14', '2019-05-22 01:54:14'),
(336, '279502043', 'Fijo', NULL, '2019-05-22 01:54:15', '2019-05-22 01:54:15'),
(337, '80047169', 'Celular', NULL, '2019-05-22 01:54:15', '2019-05-22 01:54:15'),
(338, '251889260', 'Celular', NULL, '2019-05-22 01:54:15', '2019-05-22 01:54:15'),
(339, '215879140', 'Fijo', NULL, '2019-05-22 01:54:15', '2019-05-22 01:54:15'),
(340, '91107655', 'Celular', NULL, '2019-05-22 01:54:16', '2019-05-22 01:54:16'),
(341, '175237448', 'Celular', NULL, '2019-05-22 01:54:30', '2019-05-22 01:54:30'),
(342, '150970489', 'Celular', NULL, '2019-05-22 01:54:30', '2019-05-22 01:54:30'),
(343, '292978294', 'Fijo', NULL, '2019-05-22 01:54:30', '2019-05-22 01:54:30'),
(344, '128198824', 'Fijo', NULL, '2019-05-22 01:54:30', '2019-05-22 01:54:30'),
(345, '55840660', 'Fijo', NULL, '2019-05-22 01:54:30', '2019-05-22 01:54:30'),
(346, '166698617', 'Fijo', NULL, '2019-05-22 01:54:30', '2019-05-22 01:54:30'),
(347, '277307373', 'Celular', NULL, '2019-05-22 01:54:30', '2019-05-22 01:54:30'),
(348, '195974429', 'Celular', NULL, '2019-05-22 01:54:30', '2019-05-22 01:54:30'),
(349, '44307029', 'Celular', NULL, '2019-05-22 01:54:30', '2019-05-22 01:54:30'),
(350, '121337493', 'Celular', NULL, '2019-05-22 01:54:30', '2019-05-22 01:54:30'),
(351, '71996838', 'Fijo', NULL, '2019-05-22 01:54:30', '2019-05-22 01:54:30'),
(352, '212036610', 'Fijo', NULL, '2019-05-22 01:54:30', '2019-05-22 01:54:30'),
(353, '227988518', 'Celular', NULL, '2019-05-22 01:54:31', '2019-05-22 01:54:31'),
(354, '188459798', 'Celular', NULL, '2019-05-22 01:54:31', '2019-05-22 01:54:31'),
(355, '151369476', 'Fijo', NULL, '2019-05-22 01:54:31', '2019-05-22 01:54:31');

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
(1, '2019-1', '2019-01-14', '2019-06-30', NULL, '2019-05-22 01:53:45', '2019-05-22 01:53:45'),
(2, '2018-2', '2018-07-04', '2019-10-03', NULL, '2019-05-22 01:53:46', '2019-05-22 01:53:46'),
(3, '2018-1', '2018-02-01', '2018-05-03', NULL, '2019-05-22 01:53:46', '2019-05-22 01:53:46');

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
(1, 'Privado', NULL, '2019-05-22 01:53:37', '2019-05-22 01:53:37'),
(2, 'Publico', NULL, '2019-05-22 01:53:37', '2019-05-22 01:53:37'),
(3, 'Otro', NULL, '2019-05-22 01:53:38', '2019-05-22 01:53:38');

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
(1, 'Estudiante', NULL, '2019-05-22 01:54:29', '2019-05-22 01:54:29'),
(2, 'Docente', NULL, '2019-05-22 01:54:29', '2019-05-22 01:54:29'),
(3, 'Administrativo', NULL, '2019-05-22 01:54:29', '2019-05-22 01:54:29');

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
(1, 'A+', NULL, '2019-05-22 01:53:28', '2019-05-22 01:53:28'),
(2, 'A-', NULL, '2019-05-22 01:53:28', '2019-05-22 01:53:28'),
(3, 'B+', NULL, '2019-05-22 01:53:28', '2019-05-22 01:53:28'),
(4, 'B-', NULL, '2019-05-22 01:53:29', '2019-05-22 01:53:29'),
(5, 'AB+', NULL, '2019-05-22 01:53:29', '2019-05-22 01:53:29'),
(6, 'AB-', NULL, '2019-05-22 01:53:29', '2019-05-22 01:53:29'),
(7, 'O+', NULL, '2019-05-22 01:53:29', '2019-05-22 01:53:29'),
(8, 'O-', NULL, '2019-05-22 01:53:29', '2019-05-22 01:53:29');

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
(1, 'Mundial 2010', 2, 1, 2, NULL, '2019-05-22 01:53:47', '2019-05-22 01:53:47'),
(2, 'Torneo Uno', 2, 1, 1, NULL, '2019-05-22 01:53:47', '2019-05-22 01:53:47'),
(3, 'Torneo Dos', 1, 2, 2, NULL, '2019-05-22 01:53:47', '2019-05-22 01:53:47');

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
(1, 1, 1, 'Cristian Marin', 'cristianmarint@cotecnova.edu.co', 'users/default.png', '2019-05-22 01:53:37', '$2y$10$7kM3sQ2NYFO/IEFrCHLgRe5j8drGlRlnkzvIT2yPix9mrrN16d4be', NULL, NULL, NULL, '2019-05-22 01:53:37', '2019-05-22 01:53:37'),
(2, 2, 1, 'Edwin Lopez', 'edwin.lopezb.1297@cotecnova.edu.co', 'users/default.png', '2019-05-22 01:53:37', '$2y$10$MlmauQHnG/Mio1.mbusMFeFsjNLa8vNm7flT7PeffpkyOx7wzAErW', NULL, NULL, NULL, '2019-05-22 01:53:37', '2019-05-22 01:53:37'),
(3, 2, 2, 'Correo Personal Edwin', 'edwin.lopezb.1297@gmail.com ', 'users/default.png', '2019-05-22 01:53:37', '$2y$10$etNdG.dcddkZbicAFE87OuV6xXdFioUblfA.9qKkGx5MKH7iGhFca', NULL, NULL, NULL, '2019-05-22 01:53:37', '2019-05-22 01:53:37'),
(4, 1, 2, 'Correo Personal Cristian', 'cristianmarint@gmail.com', 'users/default.png', '2019-05-22 01:53:37', '$2y$10$jdDplUN/qK8ZGgUkmuvf2.fRyVzIklDgrZVLPfgsSP.Vfhte9d6YK', NULL, NULL, NULL, '2019-05-22 01:53:37', '2019-05-22 01:53:37');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

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
