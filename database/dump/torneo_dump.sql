-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-05-2019 a las 03:35:14
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
-- Base de datos: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

--
-- Volcado de datos para la tabla `pma__bookmark`
--

INSERT INTO `pma__bookmark` (`id`, `dbase`, `user`, `label`, `query`) VALUES
(1, 'torneo', 'root', 'temporal', 'select * from `inscripcion_jugador` where `inscripcion_jugador`.`inscripcion_equipo_id` = 8 and `inscripcion_jugador`.`inscripcion_equipo_id` is not null and `inscripcion_jugador`.`deleted_at` is null limit 10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Volcado de datos para la tabla `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"relation_lines\":\"true\",\"snap_to_grid\":\"off\",\"angular_direct\":\"direct\"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Volcado de datos para la tabla `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"torneo\",\"table\":\"enfrentamiento\"},{\"db\":\"torneo\",\"table\":\"calendario\"},{\"db\":\"torneo\",\"table\":\"inscripcion_jugador\"},{\"db\":\"torneo\",\"table\":\"inscripcion_equipo\"},{\"db\":\"torneo\",\"table\":\"equipo\"},{\"db\":\"torneo\",\"table\":\"fase\"},{\"db\":\"torneo\",\"table\":\"jugador\"},{\"db\":\"torneo\",\"table\":\"torneo\"},{\"db\":\"torneo\",\"table\":\"colores\"},{\"db\":\"torneo\",\"table\":\"resultado\"}]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Volcado de datos para la tabla `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'running', 'meta_mensual', '{\"sorted_col\":\"`meta_mensual`.`user_id` ASC\"}', '2019-04-20 01:33:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Volcado de datos para la tabla `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2019-05-19 01:34:55', '{\"lang\":\"es\",\"Console\\/Mode\":\"show\",\"ThemeDefault\":\"fallen\",\"Console\\/Height\":246.983}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indices de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indices de la tabla `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indices de la tabla `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indices de la tabla `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indices de la tabla `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indices de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indices de la tabla `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indices de la tabla `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indices de la tabla `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indices de la tabla `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indices de la tabla `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Base de datos: `running`
--
CREATE DATABASE IF NOT EXISTS `running` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `running`;

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
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', '', '', 1, 0, NULL, '2019-04-20 05:48:39', '2019-04-20 05:48:39'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2019-04-20 05:48:39', '2019-04-20 05:48:39'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2019-04-20 05:48:39', '2019-04-20 05:48:39');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entrenamiento`
--

CREATE TABLE `entrenamiento` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'Entrenamiento    ',
  `fecha` date DEFAULT '2019-04-20',
  `hora` time DEFAULT NULL,
  `distancia` double(5,3) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `entrenamiento`
--

INSERT INTO `entrenamiento` (`id`, `nombre`, `fecha`, `hora`, `distancia`, `user_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Jamarcus Nolan', '2019-02-12', '10:56:15', 37.994, 1, NULL, '2019-04-20 05:49:16', '2019-04-20 05:49:16'),
(2, 'Karen Schoen', '2019-02-05', '23:42:39', 2.313, 1, NULL, '2019-04-20 05:49:16', '2019-04-20 05:49:16'),
(3, 'Tina Denesik', '2019-07-02', '22:30:18', 29.678, 1, NULL, '2019-04-20 05:49:16', '2019-04-20 05:49:16'),
(4, 'Kristofer Simonis', '2019-06-07', '01:17:21', 12.705, 1, NULL, '2019-04-20 05:49:17', '2019-04-20 05:49:17'),
(5, 'Dr. Jerod Morissette', '2019-04-05', '14:18:08', 2.846, 1, NULL, '2019-04-20 05:49:17', '2019-04-20 05:49:17'),
(6, 'Dr. Viviane Gleason', '2019-11-05', '05:22:11', 43.429, 1, NULL, '2019-04-20 05:49:17', '2019-04-20 05:49:17'),
(7, 'Hans Koelpin', '2019-02-20', '11:06:37', 9.545, 1, NULL, '2019-04-20 05:49:17', '2019-04-20 05:49:17'),
(8, 'Dejuan Nitzsche', '2019-11-10', '00:55:02', 14.738, 1, NULL, '2019-04-20 05:49:17', '2019-04-20 05:49:17'),
(9, 'Juliana Connelly', '2019-10-31', '23:40:49', 40.919, 1, NULL, '2019-04-20 05:49:18', '2019-04-20 05:49:18'),
(10, 'Suzanne Thiel', '2019-06-14', '13:52:29', 31.640, 1, NULL, '2019-04-20 05:49:18', '2019-04-20 05:49:18'),
(11, 'Lester Renner', '2019-04-12', '21:05:58', 16.232, 1, NULL, '2019-04-20 05:49:18', '2019-04-20 05:49:18'),
(12, 'Dr. Randal Feil', '2019-09-18', '00:55:45', 6.767, 1, NULL, '2019-04-20 05:49:18', '2019-04-20 05:49:18'),
(13, 'Jennings Ward', '2019-06-23', '02:33:38', 38.903, 1, NULL, '2019-04-20 05:49:18', '2019-04-20 05:49:18'),
(14, 'Eladio Adams', '2019-03-04', '20:17:57', 20.655, 1, NULL, '2019-04-20 05:49:19', '2019-04-20 05:49:19'),
(15, 'Dexter Hickle', '2019-11-19', '12:54:11', 47.881, 1, NULL, '2019-04-20 05:49:19', '2019-04-20 05:49:19'),
(16, 'Estevan Will DVM', '2019-10-27', '18:29:19', 37.591, 1, NULL, '2019-04-20 05:49:19', '2019-04-20 05:49:19'),
(17, 'Dr. Juanita Corwin MD', '2019-09-04', '00:15:40', 19.143, 1, NULL, '2019-04-20 05:49:19', '2019-04-20 05:49:19'),
(18, 'Cordia Fadel', '2019-11-23', '21:35:47', 27.323, 1, NULL, '2019-04-20 05:49:19', '2019-04-20 05:49:19'),
(19, 'Nat Ullrich', '2019-06-11', '05:20:41', 8.011, 1, NULL, '2019-04-20 05:49:19', '2019-04-20 05:49:19'),
(20, 'Louie Littel II', '2019-06-02', '04:01:43', 1.669, 1, NULL, '2019-04-20 05:49:19', '2019-04-20 05:49:19'),
(21, 'Prof. Geovanni Wilkinson', '2019-02-27', '04:55:48', 27.717, 1, NULL, '2019-04-20 05:56:16', '2019-04-20 05:56:16'),
(22, 'Arvid Oberbrunner', '2019-03-09', '19:05:21', 34.432, 1, NULL, '2019-04-20 05:56:16', '2019-04-20 05:56:16'),
(23, 'Dolores Goyette DDS', '2019-10-14', '08:30:37', 46.184, 1, NULL, '2019-04-20 05:56:16', '2019-04-20 05:56:16'),
(24, 'Terrance Doyle', '2019-05-28', '02:58:17', 2.204, 1, NULL, '2019-04-20 05:56:16', '2019-04-20 05:56:16'),
(25, 'Preston Gottlieb', '2019-08-17', '05:04:59', 31.716, 1, NULL, '2019-04-20 05:56:17', '2019-04-20 05:56:17'),
(26, 'Mr. Jett Ruecker Sr.', '2019-07-28', '14:39:00', 14.500, 1, NULL, '2019-04-20 05:56:17', '2019-04-20 05:56:17'),
(27, 'Mr. Hipolito Tillman IV', '2019-08-07', '06:55:50', 9.154, 1, NULL, '2019-04-20 05:56:17', '2019-04-20 05:56:17'),
(28, 'Dr. Marcel Wehner', '2019-04-01', '02:22:42', 22.518, 1, NULL, '2019-04-20 05:56:17', '2019-04-20 05:56:17'),
(29, 'Dr. Antonetta Heller V', '2019-04-11', '13:50:31', 48.405, 1, NULL, '2019-04-20 05:56:17', '2019-04-20 05:56:17'),
(30, 'Raven Crona', '2019-01-25', '16:32:59', 3.381, 1, NULL, '2019-04-20 05:56:17', '2019-04-20 05:56:17'),
(31, 'Olaf Stamm', '2019-05-09', '12:33:57', 8.136, 1, NULL, '2019-04-20 05:56:17', '2019-04-20 05:56:17'),
(32, 'Braulio Lehner', '2019-03-05', '14:03:53', 28.038, 1, NULL, '2019-04-20 05:56:17', '2019-04-20 05:56:17'),
(33, 'Prof. Brennon Bechtelar', '2019-10-20', '03:27:48', 37.764, 1, NULL, '2019-04-20 05:56:17', '2019-04-20 05:56:17'),
(34, 'Justina Gulgowski DVM', '2019-05-14', '13:10:10', 46.386, 1, NULL, '2019-04-20 05:56:17', '2019-04-20 05:56:17'),
(35, 'Miss Cora Bechtelar III', '2019-05-27', '20:15:30', 23.078, 1, NULL, '2019-04-20 05:56:17', '2019-04-20 05:56:17'),
(36, 'Delores O\'Kon II', '2019-03-23', '05:49:26', 21.526, 1, NULL, '2019-04-20 05:56:17', '2019-04-20 05:56:17'),
(37, 'Cleo Marvin', '2019-11-14', '10:10:16', 27.450, 1, NULL, '2019-04-20 05:56:17', '2019-04-20 05:56:17'),
(38, 'Mrs. Rosa Casper Jr.', '2019-11-04', '03:23:19', 44.262, 1, NULL, '2019-04-20 05:56:17', '2019-04-20 05:56:17'),
(39, 'Addie Runte', '2019-10-01', '14:20:28', 17.304, 1, NULL, '2019-04-20 05:56:17', '2019-04-20 05:56:17'),
(40, 'Prof. Americo Jast', '2019-10-17', '05:06:22', 5.030, 1, NULL, '2019-04-20 05:56:17', '2019-04-20 05:56:17');

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
(1, 'admin', '2019-04-20 05:48:47', '2019-04-20 05:48:47');

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
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2019-04-20 05:48:47', '2019-04-20 05:48:47', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2019-04-20 05:48:48', '2019-04-20 05:48:48', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2019-04-20 05:48:48', '2019-04-20 05:48:48', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2019-04-20 05:48:48', '2019-04-20 05:48:48', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2019-04-20 05:48:48', '2019-04-20 05:48:48', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 10, '2019-04-20 05:48:48', '2019-04-20 05:48:48', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 11, '2019-04-20 05:48:48', '2019-04-20 05:48:48', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 12, '2019-04-20 05:48:49', '2019-04-20 05:48:49', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 13, '2019-04-20 05:48:49', '2019-04-20 05:48:49', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2019-04-20 05:48:49', '2019-04-20 05:48:49', 'voyager.settings.index', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `meta_mensual`
--

CREATE TABLE `meta_mensual` (
  `id` int(10) UNSIGNED NOT NULL,
  `mes` tinyint(4) NOT NULL,
  `completado` tinyint(1) NOT NULL DEFAULT '0',
  `distancia_total` double(6,3) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `meta_mensual`
--

INSERT INTO `meta_mensual` (`id`, `mes`, `completado`, `distancia_total`, `user_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 12, 1, 370.533, 1, NULL, '2019-04-20 05:56:26', '2019-04-20 05:56:26'),
(2, 12, 0, 365.615, 8, NULL, '2019-04-20 05:56:26', '2019-04-20 05:56:26'),
(3, 7, 1, 355.505, 5, NULL, '2019-04-20 05:56:26', '2019-04-20 05:56:26'),
(4, 8, 1, 277.701, 17, NULL, '2019-04-20 05:56:26', '2019-04-20 05:56:26'),
(5, 3, 0, 120.182, 5, NULL, '2019-04-20 05:56:26', '2019-04-20 05:56:26'),
(6, 11, 0, 164.289, 12, NULL, '2019-04-20 05:56:26', '2019-04-20 05:56:26'),
(7, 11, 1, 89.080, 14, NULL, '2019-04-20 05:56:26', '2019-04-20 05:56:26'),
(8, 8, 0, 191.286, 14, NULL, '2019-04-20 05:56:26', '2019-04-20 05:56:26'),
(9, 12, 1, 192.843, 13, NULL, '2019-04-20 05:56:26', '2019-04-20 05:56:26'),
(10, 3, 0, 308.597, 21, NULL, '2019-04-20 05:56:26', '2019-04-20 05:56:26'),
(11, 11, 1, 343.529, 9, NULL, '2019-04-20 05:56:26', '2019-04-20 05:56:26'),
(12, 5, 0, 345.959, 18, NULL, '2019-04-20 05:56:26', '2019-04-20 05:56:26'),
(13, 10, 0, 148.456, 8, NULL, '2019-04-20 05:56:26', '2019-04-20 05:56:26'),
(14, 2, 1, 113.541, 11, NULL, '2019-04-20 05:56:27', '2019-04-20 05:56:27'),
(15, 12, 1, 122.200, 12, NULL, '2019-04-20 05:56:27', '2019-04-20 05:56:27'),
(16, 1, 1, 63.750, 21, NULL, '2019-04-20 05:56:27', '2019-04-20 05:56:27'),
(17, 4, 0, 107.198, 13, NULL, '2019-04-20 05:56:27', '2019-04-20 05:56:27'),
(18, 8, 0, 59.670, 18, NULL, '2019-04-20 05:56:27', '2019-04-20 05:56:27'),
(19, 10, 1, 269.407, 3, NULL, '2019-04-20 05:56:27', '2019-04-20 05:56:27'),
(20, 6, 1, 39.179, 8, NULL, '2019-04-20 05:56:27', '2019-04-20 05:56:27');

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
(28, '2014_10_12_000000_create_users_table', 1),
(29, '2014_10_12_100000_create_password_resets_table', 1),
(30, '2016_01_01_000000_add_voyager_user_fields', 1),
(31, '2016_01_01_000000_create_data_types_table', 1),
(32, '2016_05_19_173453_create_menu_table', 1),
(33, '2016_10_21_190000_create_roles_table', 1),
(34, '2016_10_21_190000_create_settings_table', 1),
(35, '2016_11_30_135954_create_permission_table', 1),
(36, '2016_11_30_141208_create_permission_role_table', 1),
(37, '2016_12_26_201236_data_types__add__server_side', 1),
(38, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(39, '2017_01_14_005015_create_translations_table', 1),
(40, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(41, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(42, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(43, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(44, '2017_08_05_000000_add_group_to_settings_table', 1),
(45, '2017_11_26_013050_add_user_role_relationship', 1),
(46, '2017_11_26_015000_create_user_roles_table', 1),
(47, '2018_03_11_000000_add_user_settings', 1),
(48, '2018_03_14_000000_add_details_to_data_types_table', 1),
(49, '2018_03_16_000000_make_settings_value_nullable', 1),
(50, '2019_02_09_170349_create_persona_table', 1),
(51, '2019_02_09_201006_add_persona_id_to_users_table', 1),
(52, '2019_02_09_214953_create_entrenamiento_table', 1),
(53, '2019_03_03_183543_create_posts_table', 1),
(54, '2019_04_15_154618_create_meta_mensual_table', 1);

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
(1, 'browse_admin', NULL, '2019-04-20 05:48:50', '2019-04-20 05:48:50'),
(2, 'browse_bread', NULL, '2019-04-20 05:48:50', '2019-04-20 05:48:50'),
(3, 'browse_database', NULL, '2019-04-20 05:48:50', '2019-04-20 05:48:50'),
(4, 'browse_media', NULL, '2019-04-20 05:48:50', '2019-04-20 05:48:50'),
(5, 'browse_compass', NULL, '2019-04-20 05:48:50', '2019-04-20 05:48:50'),
(6, 'browse_menus', 'menus', '2019-04-20 05:48:51', '2019-04-20 05:48:51'),
(7, 'read_menus', 'menus', '2019-04-20 05:48:51', '2019-04-20 05:48:51'),
(8, 'edit_menus', 'menus', '2019-04-20 05:48:51', '2019-04-20 05:48:51'),
(9, 'add_menus', 'menus', '2019-04-20 05:48:51', '2019-04-20 05:48:51'),
(10, 'delete_menus', 'menus', '2019-04-20 05:48:51', '2019-04-20 05:48:51'),
(11, 'browse_roles', 'roles', '2019-04-20 05:48:51', '2019-04-20 05:48:51'),
(12, 'read_roles', 'roles', '2019-04-20 05:48:51', '2019-04-20 05:48:51'),
(13, 'edit_roles', 'roles', '2019-04-20 05:48:51', '2019-04-20 05:48:51'),
(14, 'add_roles', 'roles', '2019-04-20 05:48:52', '2019-04-20 05:48:52'),
(15, 'delete_roles', 'roles', '2019-04-20 05:48:52', '2019-04-20 05:48:52'),
(16, 'browse_users', 'users', '2019-04-20 05:48:52', '2019-04-20 05:48:52'),
(17, 'read_users', 'users', '2019-04-20 05:48:52', '2019-04-20 05:48:52'),
(18, 'edit_users', 'users', '2019-04-20 05:48:53', '2019-04-20 05:48:53'),
(19, 'add_users', 'users', '2019-04-20 05:48:53', '2019-04-20 05:48:53'),
(20, 'delete_users', 'users', '2019-04-20 05:48:53', '2019-04-20 05:48:53'),
(21, 'browse_settings', 'settings', '2019-04-20 05:48:53', '2019-04-20 05:48:53'),
(22, 'read_settings', 'settings', '2019-04-20 05:48:53', '2019-04-20 05:48:53'),
(23, 'edit_settings', 'settings', '2019-04-20 05:48:54', '2019-04-20 05:48:54'),
(24, 'add_settings', 'settings', '2019-04-20 05:48:54', '2019-04-20 05:48:54'),
(25, 'delete_settings', 'settings', '2019-04-20 05:48:54', '2019-04-20 05:48:54');

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
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `id` int(10) UNSIGNED NOT NULL,
  `tipo_sangre` enum('A+','A-','B+','B-','AB+','AB-','O-','O+','Indefinido') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Indefinido',
  `sexo` enum('Masculino','Femenino','Indefinido') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Indefinido',
  `ubicacion` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descripcion` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT 'Cuentanos un poco sobre ti',
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`id`, `tipo_sangre`, `sexo`, `ubicacion`, `descripcion`, `user_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'A+', 'Masculino', 'Colombia', 'Hola, soy el creador y actual desarrollador principal de MARUN puedes encontrar más sobre mi en @CristianMarinT', NULL, NULL, '2019-04-20 05:56:11', '2019-04-20 05:56:11'),
(2, 'B+', 'Femenino', 'Congo', 'Blanditiis officiis placeat placeat consequatur et. Unde qui est quibusdam possimus. Sapiente aperiam soluta eligendi voluptates. Sit non fugiat explicabo sint.', NULL, NULL, '2019-04-20 05:56:11', '2019-04-20 05:56:11'),
(3, 'B-', 'Femenino', 'Peru', 'Nihil adipisci cumque sapiente quaerat tempora ut. Dolorem qui tempora dignissimos qui fugit recusandae ut. Odit qui ut nemo eum earum. Sit quibusdam minima minima qui. Ut vel porro maxime dignissimos eius.', NULL, NULL, '2019-04-20 05:56:11', '2019-04-20 05:56:11'),
(4, 'AB+', 'Masculino', 'Trinidad and Tobago', 'Nemo vero porro qui. Qui consequatur repellendus eaque rem pariatur perferendis. Laboriosam accusamus magnam ut rerum quasi. Aperiam omnis delectus ad cumque sint adipisci asperiores. Vero excepturi voluptatum deserunt doloremque laborum aut occaecati.', NULL, NULL, '2019-04-20 05:56:11', '2019-04-20 05:56:11'),
(5, 'A-', 'Femenino', 'Syrian Arab Republic', 'Veritatis numquam nesciunt ea. In eum quia sit aliquam sequi quaerat. Asperiores quidem aut aut dicta dignissimos inventore provident molestiae. Assumenda eos fugit fuga doloribus sint et.', NULL, NULL, '2019-04-20 05:56:11', '2019-04-20 05:56:11'),
(6, 'B-', 'Masculino', 'Tuvalu', 'Cum autem aut velit explicabo quis. Sint rerum qui consequuntur et eius animi velit ratione. Repellat quia architecto magnam accusamus eligendi. Asperiores id quod quia aspernatur dolore. Et esse inventore molestias nemo similique.', NULL, NULL, '2019-04-20 05:56:11', '2019-04-20 05:56:11'),
(7, 'O-', 'Femenino', 'Congo', 'Iure laudantium fuga id ea necessitatibus sint dolore velit. Aut illum labore et. Aut molestiae corrupti nam quia iste.', NULL, NULL, '2019-04-20 05:56:11', '2019-04-20 05:56:11'),
(8, 'AB-', 'Femenino', 'Barbados', 'Et magnam expedita harum. Unde qui dolorem et. Id omnis quis harum quos ea sit. Quo consequatur consectetur nihil at. Ipsa esse aut qui voluptas in et illum. Sunt et nisi vitae dolorem aliquid accusamus.', NULL, NULL, '2019-04-20 05:56:11', '2019-04-20 05:56:11'),
(9, 'A-', 'Femenino', 'Saint Helena', 'Occaecati sequi distinctio reiciendis quasi ut. Molestias modi voluptatem nulla possimus ab. Velit aperiam debitis id vitae enim veniam. Eaque minima sapiente sint et facilis quidem dolores. Sed sequi laudantium optio atque et delectus laudantium. Eaque labore quia quas ut harum.', NULL, NULL, '2019-04-20 05:56:11', '2019-04-20 05:56:11'),
(10, 'A-', 'Masculino', 'Nauru', 'Autem error non numquam animi necessitatibus et eum. Rerum consectetur culpa doloremque ea voluptatum eos eligendi. Voluptates officia repudiandae voluptatem voluptatibus perferendis quis. Distinctio provident qui et maiores.', NULL, NULL, '2019-04-20 05:56:11', '2019-04-20 05:56:11'),
(11, 'O+', 'Masculino', 'Finland', 'Quidem facere quo tempore ducimus eligendi. Dignissimos deserunt eos tenetur sit. Eius magni voluptatibus voluptatibus a omnis et.', NULL, NULL, '2019-04-20 05:56:11', '2019-04-20 05:56:11'),
(12, 'B-', 'Masculino', 'Indonesia', 'Unde sequi quidem qui quo vel. Rerum consequatur fugit officiis ipsum ut doloremque cum. Magnam rerum et inventore ea eaque. Occaecati consequuntur ut aspernatur dignissimos. Quia delectus est aut voluptas porro. Accusamus perferendis eum corrupti cum dolores consequatur voluptas.', NULL, NULL, '2019-04-20 05:56:11', '2019-04-20 05:56:11'),
(13, 'B+', 'Masculino', 'Nigeria', 'Placeat ut consequatur voluptas ex quis sint tempora. Quos vitae vel est. Magnam fugit molestias consequatur. Laborum eius optio tempore fugiat.', NULL, NULL, '2019-04-20 05:56:12', '2019-04-20 05:56:12'),
(14, 'B+', 'Masculino', 'Switzerland', 'Inventore nemo adipisci explicabo velit dolor. Velit voluptas dolores architecto labore. Laborum non eius cum provident nobis officiis. Sit in quam aut reprehenderit incidunt. Suscipit ex adipisci possimus cumque cupiditate fuga consequatur. Rerum et consequuntur sed qui repellendus aspernatur.', NULL, NULL, '2019-04-20 05:56:12', '2019-04-20 05:56:12'),
(15, 'AB+', 'Masculino', 'Bhutan', 'A praesentium quidem consequatur excepturi. Rerum dolores sit qui sed expedita voluptas nihil ut. Et aut vitae rem expedita. Possimus iusto fuga qui culpa placeat veniam rerum eum.', NULL, NULL, '2019-04-20 05:56:12', '2019-04-20 05:56:12'),
(16, 'B+', 'Femenino', 'Angola', 'Et magnam similique blanditiis fuga est in fugit. Aut in necessitatibus sequi autem non ratione explicabo cumque. Et rerum est incidunt laborum aut qui. Repellendus minus illum blanditiis deleniti.', NULL, NULL, '2019-04-20 05:56:12', '2019-04-20 05:56:12'),
(17, 'B-', 'Masculino', 'Trinidad and Tobago', 'Reprehenderit pariatur earum sequi alias. Illo natus rerum voluptas dolor et veniam. Non ut consequatur ratione iure molestiae. Aliquid non commodi veritatis id voluptatem aspernatur. Sit ex et voluptas saepe laudantium qui possimus. Aliquam quis a consequatur non. Quo quis et quas quia eos.', NULL, NULL, '2019-04-20 05:56:12', '2019-04-20 05:56:12'),
(18, 'O-', 'Masculino', 'Chile', 'Impedit eligendi est esse molestiae. Autem ipsa unde consequatur officiis sapiente. Repellat veritatis et perspiciatis maiores vel odio. Fugit corrupti voluptates aut porro sed magnam. Fugit facilis cum distinctio nihil sed.', NULL, NULL, '2019-04-20 05:56:12', '2019-04-20 05:56:12'),
(19, 'A-', 'Masculino', 'Bhutan', 'Ab repellendus possimus voluptatum omnis aut beatae quo. Maiores libero perferendis necessitatibus neque architecto doloremque sunt. Accusantium eaque repellendus fugit quis.', NULL, NULL, '2019-04-20 05:56:12', '2019-04-20 05:56:12'),
(20, 'B+', 'Femenino', 'Guam', 'Dolor expedita et sit quos et beatae ea. Beatae et molestias atque dolores occaecati consequatur. Fugiat aliquam fugiat sunt ipsum voluptatum. Quod exercitationem ut aut asperiores beatae. Non at magnam commodi. Et dignissimos quidem optio quod magnam vel doloribus.', NULL, NULL, '2019-04-20 05:56:12', '2019-04-20 05:56:12'),
(21, 'B+', 'Femenino', 'United Arab Emirates', 'Veritatis aut laborum quia nulla dolorem in. Quia nisi soluta sequi. Beatae sint voluptas suscipit ea voluptas voluptas. Sequi consectetur atque totam quo repellendus a sit. Voluptates voluptas suscipit aut ab dolorem. Sunt numquam adipisci quod rem. Rerum sit sint vero tenetur odio qui.', NULL, NULL, '2019-04-20 05:56:12', '2019-04-20 05:56:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` text COLLATE utf8mb4_unicode_ci,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `picture`, `user_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Johnston Passage', 'Ut possimus officiis sint voluptates. Iure consectetur molestiae saepe occaecati. Qui dolorem est ea alias ut omnis laboriosam. Ut eos voluptas excepturi sunt aut. Quia magni ullam dolores. Delectus aut amet amet provident. Id libero inventore distinctio et.', 'storage/posts/tests/30.jpg', 18, NULL, '2019-04-20 05:56:18', '2019-04-20 05:56:18'),
(2, 'Jamir Estates', 'Adipisci sunt ipsa in. Enim commodi repellat vitae aut quia. Porro enim ullam ad enim. Molestias minus recusandae non sed consequatur. Est eum et et magnam illo laudantium. Omnis nihil et est sed est error officiis. Et et voluptatem laudantium velit. Molestiae placeat molestiae adipisci culpa.', 'storage/posts/tests/Colombia.jpg', 9, NULL, '2019-04-20 05:56:18', '2019-04-20 05:56:18'),
(3, 'Kub Square', 'Quae distinctio et quia nostrum commodi aut et. Ipsa aperiam est nisi beatae commodi. Quia at ut maiores quod consequatur a ut. Explicabo occaecati molestias mollitia excepturi. Qui ad quia est quia velit reiciendis eligendi.', 'storage/posts/tests/14.jpg', 21, NULL, '2019-04-20 05:56:18', '2019-04-20 05:56:18'),
(4, 'Wunsch Prairie', 'Est dolor eum accusamus. Excepturi a est cupiditate et hic rerum. Vel ad nostrum enim porro dolores dolor alias. Et ullam non maiores ad amet perspiciatis ipsam. Explicabo et exercitationem voluptatum perspiciatis at aut. Quia itaque praesentium veritatis soluta. Mollitia ea sint amet eos.', 'storage/posts/tests/33.jpg', 16, NULL, '2019-04-20 05:56:18', '2019-04-20 05:56:18'),
(5, 'Wolff Plaza', 'Nihil itaque delectus ex et. Sunt molestiae quam nesciunt vitae cumque. Quasi et iure est dolorem quisquam. Minus at voluptatibus voluptatem voluptatibus voluptas voluptatem. Sapiente rerum optio beatae consequatur minima. Illum sint eaque quam aut. Recusandae odio sit molestias ab.', 'storage/posts/tests/2.jpg', 20, NULL, '2019-04-20 05:56:18', '2019-04-20 05:56:18'),
(6, 'Abraham Roads', 'Nihil veniam a ut voluptatibus. Quasi doloribus alias quae et recusandae et. Quo sit impedit iste quo labore aut. Quo minima atque et.', 'storage/posts/tests/29.jpg', 7, NULL, '2019-04-20 05:56:18', '2019-04-20 05:56:18'),
(7, 'Wisozk Unions', 'A a explicabo modi id sit a et quo. Dolorem corrupti dignissimos aut voluptas. Eum dolor magnam dolor voluptas. Voluptatum est laborum minus sint et.', 'storage/posts/tests/28.jpg', 17, NULL, '2019-04-20 05:56:19', '2019-04-20 05:56:19'),
(8, 'Ewell Tunnel', 'Tenetur nihil ipsa vel. Alias placeat repudiandae fugiat suscipit. Nihil est ut optio blanditiis est eos illum. Ipsa rem numquam veritatis eum consequatur. Blanditiis commodi aliquid aut nesciunt.', 'storage/posts/tests/9.jpg', 18, NULL, '2019-04-20 05:56:19', '2019-04-20 05:56:19'),
(9, 'Towne Islands', 'Nostrum fugiat ex ut libero maxime. Ut labore praesentium fugiat. Sunt sed dolores est recusandae. Sit et dolorem voluptas ducimus molestiae odit sed.', 'storage/posts/tests/20.jpg', 12, NULL, '2019-04-20 05:56:19', '2019-04-20 05:56:19'),
(10, 'Dandre Ports', 'Nihil ea corrupti quia architecto dignissimos. Aperiam sunt et est omnis maxime. Perferendis cum quo nam illum labore.', 'storage/posts/tests/31.jpg', 16, NULL, '2019-04-20 05:56:19', '2019-04-20 05:56:19'),
(11, 'Joaquin Road', 'Deleniti placeat sed consequuntur est et incidunt. Voluptatem accusamus illum dicta est odit in voluptatibus. Hic quasi ipsum qui delectus id perferendis. Non dolorem et aut repudiandae ipsum est vel. Et exercitationem perspiciatis eaque suscipit omnis dicta.', 'storage/posts/tests/37.jpg', 11, NULL, '2019-04-20 05:56:19', '2019-04-20 05:56:19'),
(12, 'Rath Landing', 'Dolores fuga neque recusandae maiores. Dolores repudiandae odio molestias sit eaque. Et quo et excepturi blanditiis a ad nihil. Qui vero ullam sint.', 'storage/posts/tests/16.jpg', 9, NULL, '2019-04-20 05:56:19', '2019-04-20 05:56:19'),
(13, 'McCullough Rapid', 'Laboriosam numquam qui totam dolores. Eligendi voluptatem molestias hic nostrum. Id sapiente quo ea. Excepturi voluptates esse perferendis. Illo culpa soluta quia est.', 'storage/posts/tests/33.jpg', 6, NULL, '2019-04-20 05:56:19', '2019-04-20 05:56:19'),
(14, 'Howell Village', 'Et qui corrupti sint nulla consequuntur vel non corrupti. Est eveniet illo cupiditate alias est. Asperiores error iusto aperiam omnis debitis facilis aperiam. Impedit dicta est autem dicta provident est beatae. Nam quia corrupti tenetur ut.', 'storage/posts/tests/10.jpg', 13, NULL, '2019-04-20 05:56:19', '2019-04-20 05:56:19'),
(15, 'Katelin Turnpike', 'Illum id optio libero velit quis labore. Sequi laudantium ipsum a consequatur. Quia maiores aut omnis quia eos dolores. Error ab omnis quidem ipsam quasi earum. Qui occaecati molestiae totam atque nulla qui consequatur.', 'storage/posts/tests/31.jpg', 1, NULL, '2019-04-20 05:56:19', '2019-04-20 05:56:19'),
(16, 'Arlo Loaf', 'Voluptatem est quaerat architecto voluptatum. Ut totam delectus consequatur aut. Consectetur autem enim sint possimus excepturi maiores. Esse ut asperiores in natus molestias. Omnis optio eos quibusdam tenetur ex. Ipsa provident deleniti consequatur at fugit omnis maiores.', 'storage/posts/tests/30.jpg', 21, NULL, '2019-04-20 05:56:19', '2019-04-20 05:56:19'),
(17, 'Bruen Springs', 'Maxime dolorum qui deserunt ut quia vel nobis. Sunt iusto qui iste iure dicta. Omnis dolorem dolorem fuga nisi aliquam. Voluptatem dicta atque quia facilis totam. Reiciendis eum laborum sit fugit labore iure. Quia non cum aut est. Neque aliquid reprehenderit ea.', 'storage/posts/tests/4.jpg', 4, NULL, '2019-04-20 05:56:19', '2019-04-20 05:56:19'),
(18, 'Holly Glen', 'Dicta et et consequuntur consequatur laboriosam perspiciatis. Nostrum non velit quasi dolorem voluptatem sed. Sequi ut id odit ratione eligendi nobis est. Nemo dolore asperiores voluptatibus fuga. Officia voluptatibus quia rerum et nisi earum non. Sed quam atque qui.', 'storage/posts/tests/17.jpg', 11, NULL, '2019-04-20 05:56:19', '2019-04-20 05:56:19'),
(19, 'Hazle Camp', 'Tempore corrupti ut et sapiente vel. Rerum modi tenetur illum vel blanditiis. Et nam sint delectus non. Aut maxime esse est optio. Eos sunt omnis nesciunt eum. Aliquam dolorum est quis omnis possimus explicabo.', 'storage/posts/tests/11.png', 3, NULL, '2019-04-20 05:56:19', '2019-04-20 05:56:19'),
(20, 'Grady Crossroad', 'Aut velit voluptatem unde quidem consectetur adipisci et. Fuga eum quam et sapiente totam harum dolore. Doloribus vitae ratione itaque. Dolores quis enim recusandae in est. Quo veniam id iusto sed quia quis laboriosam. Doloribus omnis tempore adipisci voluptates quo.', 'storage/posts/tests/9.jpg', 20, NULL, '2019-04-20 05:56:19', '2019-04-20 05:56:19'),
(21, 'Vandervort Circle', 'Blanditiis sequi enim suscipit reiciendis repudiandae. Nisi ut quia illo dicta delectus ipsam. Et nesciunt autem eaque quaerat est. A et voluptas et. Voluptates et debitis molestiae odit ut eum qui quisquam. Dolore est non modi.', 'storage/posts/tests/18.jpg', 3, NULL, '2019-04-20 05:56:19', '2019-04-20 05:56:19'),
(22, 'Simonis Corner', 'Ea porro dolor saepe ut et. Occaecati non dolorum harum eligendi quia possimus doloremque voluptatem. Est tempora aut velit mollitia non. Aperiam voluptatem accusantium qui exercitationem.', 'storage/posts/tests/36.jpg', 9, NULL, '2019-04-20 05:56:19', '2019-04-20 05:56:19'),
(23, 'Allene Spurs', 'Consequuntur voluptatibus alias amet rerum. Sit voluptate voluptas veniam quo quas similique et. Velit esse rem aliquam doloribus debitis et necessitatibus.', 'storage/posts/tests/10.jpg', 15, NULL, '2019-04-20 05:56:19', '2019-04-20 05:56:19'),
(24, 'Haag Springs', 'Id sunt natus quo. Dolorem dolorem nihil ut temporibus cupiditate et occaecati. Vitae ipsam ipsam voluptas qui harum neque vel perferendis. Voluptatibus tempora voluptates velit perspiciatis eligendi asperiores unde.', 'storage/posts/tests/28.jpg', 10, NULL, '2019-04-20 05:56:20', '2019-04-20 05:56:20'),
(25, 'Nader Throughway', 'Exercitationem architecto placeat voluptatem quidem. Autem minus veritatis quibusdam culpa et ut. Et cum nam qui voluptatibus officiis asperiores impedit.', 'storage/posts/tests/Colombia.jpg', 12, NULL, '2019-04-20 05:56:20', '2019-04-20 05:56:20'),
(26, 'Demarco Shore', 'Commodi aut sunt modi aut. Minus enim sequi atque ullam. Id aut vero tempora error autem culpa. Illo qui rerum tempora ut. Cum suscipit sequi sunt. Tempore laboriosam sed nemo et. Sed ut vitae voluptatem voluptatum dolorem corrupti at dolorem.', 'storage/posts/tests/24.jpg', 12, NULL, '2019-04-20 05:56:20', '2019-04-20 05:56:20'),
(27, 'Jakubowski Court', 'Modi quasi aut et. Quia dignissimos provident rem. Consequatur non enim molestiae animi aut error quidem. Et repellat laborum maiores nihil aut fugiat possimus.', 'storage/posts/tests/18.jpg', 8, NULL, '2019-04-20 05:56:20', '2019-04-20 05:56:20'),
(28, 'Euna Junction', 'Sit magni deleniti in minus in. Labore ex dolores rerum unde rem aut ullam. Numquam qui voluptas voluptatem quia. Fuga dolorum magnam quidem officiis illo. Cupiditate voluptas ex fugiat autem earum omnis. Illum veniam fugiat dolorem facilis. Delectus non eum fugit.', 'storage/posts/tests/31.jpg', 1, NULL, '2019-04-20 05:56:20', '2019-04-20 05:56:20'),
(29, 'Ramiro Valleys', 'Doloribus hic nam impedit. At quidem et iste ipsam. Consequatur ea pariatur qui pariatur quae. Placeat atque praesentium natus asperiores.', 'storage/posts/tests/20.jpg', 6, NULL, '2019-04-20 05:56:20', '2019-04-20 05:56:20'),
(30, 'Collins Underpass', 'Quo deserunt inventore vero occaecati id enim rem. Aliquam illo velit eius aliquam. Quibusdam velit eaque consequatur assumenda mollitia. Est voluptas et labore.', 'storage/posts/tests/3.jpg', 8, NULL, '2019-04-20 05:56:20', '2019-04-20 05:56:20'),
(31, 'Bernadette Meadow', 'Iste vero molestiae rerum et et possimus. Ipsa pariatur ipsum vero nostrum distinctio. Aut rerum non quia perferendis qui. Sit quo ut qui sapiente. Qui vero est possimus tempora minus quisquam consequatur iure.', 'storage/posts/tests/38.jpg', 17, NULL, '2019-04-20 05:56:20', '2019-04-20 05:56:20'),
(32, 'Keshawn Path', 'Nobis aut doloremque magnam nisi commodi numquam. Quia accusamus omnis quo voluptas id et. Est libero cum consectetur quibusdam sunt dolor ut.', 'storage/posts/tests/28.jpg', 15, NULL, '2019-04-20 05:56:20', '2019-04-20 05:56:20'),
(33, 'Marcia Land', 'Voluptas ut eum qui odio. Commodi qui omnis eum dolorem. Blanditiis porro facere et id debitis illo. Dolores rerum molestiae eveniet consequatur quae qui. Eos enim ut nobis autem dicta quo. Odio quia non libero rem saepe. Autem vero in accusamus maxime quo.', 'storage/posts/tests/6.jpg', 16, NULL, '2019-04-20 05:56:20', '2019-04-20 05:56:20'),
(34, 'Preston Groves', 'Autem quia atque vero corrupti. Deserunt nisi praesentium ipsam quam explicabo enim. Est qui et maiores voluptas dolorem maxime. Voluptates magni libero quisquam dolorem qui quia accusamus.', 'storage/posts/tests/11.png', 8, NULL, '2019-04-20 05:56:20', '2019-04-20 05:56:20'),
(35, 'Floy Spring', 'Repudiandae nesciunt dolor dolorem alias et ut officiis. Eos aperiam reiciendis officiis amet quibusdam ratione. Nemo qui minima facere aspernatur. Fuga id dolores dolores at officia aspernatur. Blanditiis odit quas deleniti quasi.', 'storage/posts/tests/23.jpg', 12, NULL, '2019-04-20 05:56:20', '2019-04-20 05:56:20'),
(36, 'Aurelia Row', 'Hic esse sed reiciendis harum sed. Aliquid explicabo eos distinctio ducimus possimus. In et cum facere rerum quos facere. Non ab eius et sed eaque soluta. Ut eum nam provident aut neque. Et officiis sapiente corrupti impedit ex rerum. Voluptas et sapiente quia porro libero omnis asperiores.', 'storage/posts/tests/6.jpg', 6, NULL, '2019-04-20 05:56:21', '2019-04-20 05:56:21'),
(37, 'Torp Bridge', 'Veniam veniam excepturi iure quis doloremque. Qui eligendi nam dolores alias magnam quis. Ipsam quae eius numquam esse.', 'storage/posts/tests/30.jpg', 6, NULL, '2019-04-20 05:56:21', '2019-04-20 05:56:21'),
(38, 'Delaney Fields', 'Suscipit voluptatem nihil laboriosam blanditiis quasi. Voluptate eos odio excepturi dolor voluptatibus. Iste nisi praesentium ratione sapiente. Iste consequuntur ipsam officiis doloremque ea perspiciatis.', 'storage/posts/tests/5.jpg', 17, NULL, '2019-04-20 05:56:21', '2019-04-20 05:56:21'),
(39, 'Stephon Locks', 'Omnis sapiente voluptatibus nihil qui impedit qui alias iure. Impedit sunt eos quam facere aliquam. Assumenda fugit labore mollitia aut sed.', 'storage/posts/tests/28.jpg', 9, NULL, '2019-04-20 05:56:21', '2019-04-20 05:56:21'),
(40, 'Raynor Viaduct', 'Aspernatur impedit cumque quis facilis velit aut nihil suscipit. Totam magnam esse culpa mollitia qui. Voluptatem blanditiis molestiae numquam possimus ipsa.', 'storage/posts/tests/11.png', 7, NULL, '2019-04-20 05:56:21', '2019-04-20 05:56:21'),
(41, 'Monahan Junction', 'Laudantium molestiae ab quis incidunt similique delectus. Animi necessitatibus voluptas sapiente quidem explicabo ut cupiditate excepturi. Qui porro distinctio amet atque magni.', 'storage/posts/tests/12.jpg', 20, NULL, '2019-04-20 05:56:21', '2019-04-20 05:56:21'),
(42, 'Spinka Trail', 'Ullam dignissimos ipsum fuga laborum magnam. Odio fugit architecto eos occaecati. Qui excepturi qui et error iste nostrum tempora quia.', 'storage/posts/tests/4.jpg', 18, NULL, '2019-04-20 05:56:21', '2019-04-20 05:56:21'),
(43, 'D\'angelo Divide', 'Ad est aliquid doloremque cupiditate omnis voluptatum nisi. Enim suscipit minima ratione aliquid nostrum sint adipisci. Delectus et odit aliquid et ea provident aut. Accusamus dolorum aliquid officiis corporis. Ut omnis velit velit. Dolore magni dolor aut perspiciatis.', 'storage/posts/tests/1.png', 12, NULL, '2019-04-20 05:56:21', '2019-04-20 05:56:21'),
(44, 'Wunsch Underpass', 'Voluptas quod consectetur deleniti corporis est. Dolores in ut harum in est vero ut ratione. Voluptatum provident est dolore vitae non quae distinctio. Officia placeat quo voluptatem. Non mollitia eveniet natus. Placeat ut a quis a doloremque. Facilis velit consequatur molestiae quae ut.', 'storage/posts/tests/13.jpg', 4, NULL, '2019-04-20 05:56:21', '2019-04-20 05:56:21'),
(45, 'Huels Pine', 'Nesciunt cupiditate voluptatem omnis eum. Occaecati iste esse cumque nesciunt quia delectus. Molestias ipsum inventore eos aut. Aut quis modi iure corrupti mollitia eius ut quisquam. Error dolor nesciunt consequatur qui. Debitis nam eum officia rerum eum corporis similique quas.', 'storage/posts/tests/31.jpg', 18, NULL, '2019-04-20 05:56:21', '2019-04-20 05:56:21'),
(46, 'Boyer Springs', 'Nihil quaerat facere architecto dicta atque distinctio. Error delectus ratione sapiente sit. Rem quidem rerum esse qui. Et quia dolorem debitis a minus nostrum. Ducimus esse dolore dicta asperiores.', 'storage/posts/tests/29.jpg', 12, NULL, '2019-04-20 05:56:21', '2019-04-20 05:56:21'),
(47, 'Gerhold Pass', 'Itaque ducimus vero natus fuga asperiores tenetur. Commodi blanditiis hic a et hic. Dolor in dolor enim nemo aut ut. Beatae saepe eos commodi distinctio. Eos qui debitis distinctio distinctio sunt natus. Voluptatum architecto saepe voluptas. Cupiditate ut qui ut voluptates.', 'storage/posts/tests/10.jpg', 6, NULL, '2019-04-20 05:56:22', '2019-04-20 05:56:22'),
(48, 'Abbott Views', 'Animi dolor reiciendis dolorum. Voluptas enim earum doloremque blanditiis non non temporibus. Ipsam molestiae et magnam ea facilis inventore. Saepe eius animi hic ut reiciendis mollitia deleniti. Dicta tempore dolor autem nam iure harum consectetur. Non sed dignissimos hic saepe facere.', 'storage/posts/tests/8.jpg', 18, NULL, '2019-04-20 05:56:22', '2019-04-20 05:56:22'),
(49, 'Waters Ramp', 'Itaque doloribus voluptatibus eius provident tempora et. Unde vel nobis consequuntur ipsum atque. Sint et quo delectus sunt. Dolorem alias voluptatem ullam magnam totam consequatur aut. Et a maxime officiis reiciendis est. Corporis quo fugiat qui quibusdam accusamus.', 'storage/posts/tests/13.jpg', 4, NULL, '2019-04-20 05:56:22', '2019-04-20 05:56:22'),
(50, 'Murazik Heights', 'Et quia repudiandae nisi sunt rerum. Et et qui suscipit voluptates enim. Autem velit voluptates illo quam natus ex asperiores. Alias quia sed quis aut est. At ipsam magnam voluptas est laboriosam aut ea.', 'storage/posts/tests/24.jpg', 21, NULL, '2019-04-20 05:56:22', '2019-04-20 05:56:22'),
(51, 'Stoltenberg Loaf', 'Voluptatum vel accusamus quos optio. Culpa maxime autem expedita occaecati ut impedit.', 'storage/posts/tests/34.jpg', 8, NULL, '2019-04-20 05:56:22', '2019-04-20 05:56:22'),
(52, 'Schroeder Plains', 'Unde ut corporis quod ut. Delectus est non sequi molestiae nihil placeat vel. Aliquam nesciunt officiis ut fuga repellat. Nesciunt quis est saepe a autem. Est unde qui adipisci cumque excepturi. Quos dolor dolorem cum odit eius. Accusantium qui doloremque blanditiis et dolor debitis facere.', 'storage/posts/tests/Colombia.jpg', 9, NULL, '2019-04-20 05:56:22', '2019-04-20 05:56:22'),
(53, 'Wilkinson Orchard', 'Consequatur molestiae sed enim. Qui consequatur in suscipit dolorum quibusdam. Laudantium voluptas cupiditate nemo et molestiae sunt assumenda.', 'storage/posts/tests/23.jpg', 9, NULL, '2019-04-20 05:56:22', '2019-04-20 05:56:22'),
(54, 'Adams Flat', 'Odit beatae quo atque magnam vero. Quos illum sequi et. Ex ratione et accusantium mollitia laudantium aut eveniet expedita. Cupiditate amet nobis omnis maiores impedit placeat excepturi.', 'storage/posts/tests/15.jpg', 5, NULL, '2019-04-20 05:56:22', '2019-04-20 05:56:22'),
(55, 'Altenwerth Mountains', 'Illum eum modi totam minima eum. Alias nemo quia quia quibusdam dignissimos. Quia dolores optio culpa sunt quis. Nostrum nihil beatae officia amet incidunt.', 'storage/posts/tests/8.jpg', 8, NULL, '2019-04-20 05:56:22', '2019-04-20 05:56:22'),
(56, 'Hal Springs', 'Enim sunt totam non et voluptatibus eaque nisi. Ex ex enim aut assumenda sunt quia voluptate. Hic modi suscipit nam itaque rem dolore saepe.', 'storage/posts/tests/35.jpg', 10, NULL, '2019-04-20 05:56:22', '2019-04-20 05:56:22'),
(57, 'Daron Bridge', 'Qui fugit sit quae qui est veniam non. Aut blanditiis excepturi blanditiis tempore quia nostrum in. Quo porro libero ad consequatur enim est. Quia aliquid enim placeat totam possimus voluptas. Quas rerum ut eius dolor. Fuga ea impedit est est quos odio esse. Perspiciatis et harum qui dolor.', 'storage/posts/tests/15.jpg', 11, NULL, '2019-04-20 05:56:23', '2019-04-20 05:56:23'),
(58, 'Kayla Land', 'Et natus et illo ad vel. Maxime natus rerum dolorem quia numquam. Aut ut magni corrupti non. Quas laborum ipsum eveniet dolores. Molestiae molestiae eligendi consequatur sed vitae quae. Voluptas quis ipsum et excepturi praesentium saepe deleniti. Magnam laudantium voluptatem est.', 'storage/posts/tests/36.jpg', 6, NULL, '2019-04-20 05:56:23', '2019-04-20 05:56:23'),
(59, 'Reilly Center', 'Ipsa non quod sit fugit ipsum sunt consectetur. Earum in amet esse minus alias. Aliquam consequatur rerum eveniet. Similique distinctio explicabo nemo dolorem aliquid cupiditate est. Facere beatae qui fugiat quia. Voluptatem odit ut est repellendus neque dolor qui ullam. Rem eius corporis est aut.', 'storage/posts/tests/23.jpg', 20, NULL, '2019-04-20 05:56:23', '2019-04-20 05:56:23'),
(60, 'Valentine Rue', 'Nulla error molestiae a nulla eius. Ex repellendus aliquam harum saepe. Aut est et ab earum et voluptates corporis voluptates. Sunt sapiente voluptatem nihil. Quis nihil iure enim voluptatem deleniti ea. Quae eum nobis ut.', 'storage/posts/tests/9.jpg', 11, NULL, '2019-04-20 05:56:23', '2019-04-20 05:56:23'),
(61, 'Tianna Harbor', 'Consequatur dolores assumenda et nesciunt temporibus. Et autem explicabo soluta placeat aspernatur. Beatae excepturi perspiciatis accusamus et veritatis facere. Quo doloremque fugit alias eum esse aut voluptatem.', 'storage/posts/tests/38.jpg', 21, NULL, '2019-04-20 05:56:23', '2019-04-20 05:56:23'),
(62, 'Gislason Way', 'Iure aperiam aliquam itaque dolore voluptatum iure accusantium. Dolor quaerat blanditiis ab qui nulla ut. Minima odit est rem consequatur. Et quidem nemo aliquid qui.', 'storage/posts/tests/24.jpg', 13, NULL, '2019-04-20 05:56:23', '2019-04-20 05:56:23'),
(63, 'Marvin Avenue', 'Architecto nobis facere dolor dolores. Cupiditate dolorem et quia eum. Repellendus doloremque omnis provident temporibus voluptate id. Molestiae maiores veritatis ut.', 'storage/posts/tests/15.jpg', 14, NULL, '2019-04-20 05:56:23', '2019-04-20 05:56:23'),
(64, 'Corkery Grove', 'Eaque et rerum aliquid ullam. Quam sapiente illo quo et dicta reiciendis ducimus. Aut aspernatur corrupti minus molestias. Voluptatem autem dolor eaque possimus quam. Quas distinctio incidunt sed quos a. Sed quod quia maxime sunt mollitia. Expedita qui non magni quam alias voluptatibus.', 'storage/posts/tests/9.jpg', 13, NULL, '2019-04-20 05:56:23', '2019-04-20 05:56:23'),
(65, 'Little Way', 'Ut delectus est sed sapiente cupiditate. Quae veritatis ad reiciendis quos repellendus. Perspiciatis optio repellat officia culpa minus. Repudiandae doloremque harum nihil provident nobis.', 'storage/posts/tests/7.jpg', 15, NULL, '2019-04-20 05:56:23', '2019-04-20 05:56:23'),
(66, 'Candelario Radial', 'Enim ut eum itaque nihil rem esse impedit. Quia quae corporis sed. Ut vel ut ea repellendus placeat. Ea numquam voluptas ab nam ut quia. Expedita velit molestiae quas sunt.', 'storage/posts/tests/21.png', 1, NULL, '2019-04-20 05:56:23', '2019-04-20 05:56:23'),
(67, 'Shaina Mount', 'Adipisci beatae illum aspernatur ut deleniti. Rerum voluptatem non quia et ut. Quis eum voluptas voluptate in. Et inventore et error et aspernatur laborum praesentium.', 'storage/posts/tests/21.png', 1, NULL, '2019-04-20 05:56:24', '2019-04-20 05:56:24'),
(68, 'Gleason Pike', 'Ut ipsam officia expedita veritatis vitae eveniet quibusdam aut. Ipsam nemo eos quibusdam pariatur aut ut porro. Laboriosam possimus possimus voluptates. Ut officiis placeat ducimus voluptas facere. Ducimus ipsum nulla fugiat modi. Mollitia sapiente culpa repudiandae voluptas eos consequatur aut.', 'storage/posts/tests/29.jpg', 8, NULL, '2019-04-20 05:56:24', '2019-04-20 05:56:24'),
(69, 'Witting Squares', 'Doloribus molestiae qui dolor et iure fugiat maxime. Dolor blanditiis culpa ducimus quia. Est sequi dolor esse voluptatem. Nihil voluptas maiores consequuntur velit quaerat illum hic. Non veritatis ab ducimus eos.', 'storage/posts/tests/36.jpg', 12, NULL, '2019-04-20 05:56:24', '2019-04-20 05:56:24'),
(70, 'Rutherford Mills', 'Facilis quia adipisci voluptatem sint odio asperiores. Iure provident dolores laboriosam et minima. Sunt pariatur quidem dolores sit sunt et. Quo quaerat impedit quo rerum sint. Architecto sint eveniet sint. Dolor exercitationem quas quae reiciendis vero quos. Et quae quos et dolor.', 'storage/posts/tests/29.jpg', 12, NULL, '2019-04-20 05:56:24', '2019-04-20 05:56:24'),
(71, 'Reichert Ports', 'Deleniti delectus distinctio vero doloribus sed nulla. Qui explicabo voluptas nihil deserunt ipsam. Placeat nihil aut similique nesciunt harum eaque. Recusandae iusto aperiam repellat magnam atque modi. Omnis vero placeat et et qui in.', 'storage/posts/tests/34.jpg', 20, NULL, '2019-04-20 05:56:24', '2019-04-20 05:56:24'),
(72, 'Caitlyn Forges', 'Distinctio et ut sunt in. Veritatis inventore commodi pariatur consequuntur expedita et animi expedita. Aspernatur eveniet nihil repudiandae repellat sit.', 'storage/posts/tests/2.jpg', 17, NULL, '2019-04-20 05:56:24', '2019-04-20 05:56:24'),
(73, 'O\'Conner Mission', 'Ducimus sed animi ut quod. Quis perspiciatis voluptas iure dolore. Natus dignissimos eos laborum incidunt iusto rerum at.', 'storage/posts/tests/4.jpg', 12, NULL, '2019-04-20 05:56:24', '2019-04-20 05:56:24'),
(74, 'Mayer Row', 'Quaerat sequi nihil aut quasi et natus quia. Cupiditate similique autem sapiente officiis eius. Et aut quis est accusantium doloribus explicabo ipsum. Aut blanditiis provident nostrum quidem. Et ut ex ea pariatur. Magnam minus enim aperiam repellendus. Dolor omnis sed maiores quis voluptatibus.', 'storage/posts/tests/23.jpg', 21, NULL, '2019-04-20 05:56:24', '2019-04-20 05:56:24'),
(75, 'Drew Falls', 'Consequatur natus illum voluptatem doloribus corrupti cumque in. Sint consectetur commodi quo et architecto rerum. In nemo in impedit omnis repellendus expedita qui. Architecto voluptatum vel quod et optio voluptatibus.', 'storage/posts/tests/5.jpg', 14, NULL, '2019-04-20 05:56:24', '2019-04-20 05:56:24'),
(76, 'Kacey Locks', 'Sit amet nostrum rem corrupti enim. Expedita nihil eum temporibus est. Veritatis tempore at nihil placeat voluptatem. Et illo rem eaque.', 'storage/posts/tests/19.jpg', 9, NULL, '2019-04-20 05:56:24', '2019-04-20 05:56:24'),
(77, 'Toni Orchard', 'Praesentium nesciunt odit omnis recusandae ea ad. Ullam inventore voluptatem cum ipsa. Reiciendis numquam atque est distinctio id in beatae. Esse quas iste ratione voluptas distinctio earum.', 'storage/posts/tests/21.png', 18, NULL, '2019-04-20 05:56:24', '2019-04-20 05:56:24'),
(78, 'Farrell Bridge', 'Quam qui suscipit qui cumque molestias sequi voluptas. Hic enim officiis id non quis alias id. Nobis modi voluptates eum eligendi nihil fugit velit. Beatae provident vel architecto impedit optio iure nihil quibusdam.', 'storage/posts/tests/33.jpg', 10, NULL, '2019-04-20 05:56:24', '2019-04-20 05:56:24'),
(79, 'Hahn Squares', 'Omnis laborum porro aperiam rem. Quidem quis nisi debitis mollitia laudantium. Temporibus suscipit ipsam praesentium id enim. Cum nisi sunt id rerum aut temporibus. Dolor quas velit velit ipsa aspernatur exercitationem.', 'storage/posts/tests/5.jpg', 17, NULL, '2019-04-20 05:56:24', '2019-04-20 05:56:24'),
(80, 'Prohaska Camp', 'Omnis dolor fuga omnis amet culpa. Similique voluptas qui corporis et quas tenetur. Aut quas culpa aliquam iste quam harum. Et ipsa et quae corrupti voluptas nihil iure. Quia et voluptas iste. Id in saepe assumenda laborum.', 'storage/posts/tests/26.jpg', 3, NULL, '2019-04-20 05:56:24', '2019-04-20 05:56:24'),
(81, 'Cornelius Knoll', 'Voluptas quia ut quasi ut. Quos vero voluptas fugiat quia laborum et. Aliquid quia velit omnis. Unde tempora officia fuga quisquam.', 'storage/posts/tests/30.jpg', 14, NULL, '2019-04-20 05:56:25', '2019-04-20 05:56:25'),
(82, 'Bethany Ways', 'Modi molestiae enim ipsam aut rerum. Nesciunt et sit autem ipsum voluptatem iure est aut. Animi quaerat veniam deserunt iste ex laudantium accusantium. Natus expedita et debitis ullam error ut maxime vero.', 'storage/posts/tests/31.jpg', 2, NULL, '2019-04-20 05:56:25', '2019-04-20 05:56:25'),
(83, 'Rowe Crescent', 'Doloribus est est magni. Quasi blanditiis quia et blanditiis debitis. Recusandae nihil at quisquam excepturi enim quos. Ducimus natus repudiandae rem optio et culpa cumque. Sed illum facilis beatae saepe maxime. Voluptatum error consequatur voluptas qui. Ipsam ad ratione quia est temporibus.', 'storage/posts/tests/11.png', 14, NULL, '2019-04-20 05:56:25', '2019-04-20 05:56:25'),
(84, 'Kohler Mall', 'Quaerat fugit vitae et sed nesciunt ea. Molestiae occaecati laboriosam alias. Est et omnis aut odio repellat consectetur. Culpa veniam sunt nam facere quo.', 'storage/posts/tests/36.jpg', 11, NULL, '2019-04-20 05:56:25', '2019-04-20 05:56:25'),
(85, 'Gislason Burgs', 'Omnis non sed ut adipisci omnis qui. Soluta quia illum ullam possimus repellat est consequuntur. Labore reiciendis deleniti aut fugiat.', 'storage/posts/tests/4.jpg', 20, NULL, '2019-04-20 05:56:25', '2019-04-20 05:56:25'),
(86, 'Pattie Roads', 'Facere tempore laborum quia eligendi. Tenetur quos et sequi aut quasi totam. Reiciendis eveniet possimus non iusto enim autem in. Dolores nihil placeat corrupti deserunt eius. Dolore dignissimos deserunt sed saepe dolorem quaerat qui. Asperiores debitis omnis blanditiis et et et perferendis.', 'storage/posts/tests/29.jpg', 12, NULL, '2019-04-20 05:56:25', '2019-04-20 05:56:25'),
(87, 'Schaefer Park', 'A sit consectetur harum qui quo. Eos inventore ducimus tenetur possimus tempore dolor. Et quisquam voluptatem sit occaecati esse. Sed eveniet qui impedit debitis ipsum. Est temporibus occaecati eum sint totam optio reprehenderit.', 'storage/posts/tests/11.png', 2, NULL, '2019-04-20 05:56:25', '2019-04-20 05:56:25'),
(88, 'Barrows Plains', 'Voluptas facere numquam aut qui amet. Incidunt sed ab minima eum. Ipsa et est cum quam dignissimos et nihil. Corporis temporibus in et non. Nesciunt corrupti non repudiandae. Accusantium ea natus assumenda laboriosam sed. Occaecati non blanditiis maiores dolorem.', 'storage/posts/tests/37.jpg', 17, NULL, '2019-04-20 05:56:25', '2019-04-20 05:56:25'),
(89, 'Mohammad Port', 'Ut consequatur porro error ipsa aliquid eum aut. Veniam alias necessitatibus in. Unde quibusdam et ut dolorem dolorem excepturi. Eos ipsum doloremque nobis ut aut. Quidem asperiores illum fugit quibusdam explicabo. Et quisquam ut dolorem qui.', 'storage/posts/tests/19.jpg', 3, NULL, '2019-04-20 05:56:25', '2019-04-20 05:56:25'),
(90, 'Percival Ranch', 'Et delectus nihil officia qui inventore accusamus. Quos id rerum inventore quod. Et tempora fugiat odio ducimus.', 'storage/posts/tests/11.png', 13, NULL, '2019-04-20 05:56:25', '2019-04-20 05:56:25'),
(91, 'Nicholas Stream', 'Numquam numquam dolor illo. Vel consequatur commodi amet neque cumque. Ea perspiciatis quis velit est sed. Architecto id facere voluptatem temporibus. Praesentium eaque aut quia beatae officia quia et et.', 'storage/posts/tests/31.jpg', 4, NULL, '2019-04-20 05:56:25', '2019-04-20 05:56:25'),
(92, 'Braun Mountain', 'Est debitis excepturi quo in non rerum facere delectus. Quae voluptates ducimus sed rerum. Qui sequi nihil commodi soluta alias. Dolores enim porro itaque vel neque sint. Voluptatibus consequuntur nostrum unde est reiciendis culpa.', 'storage/posts/tests/16.jpg', 5, NULL, '2019-04-20 05:56:25', '2019-04-20 05:56:25'),
(93, 'Wolf Orchard', 'Non asperiores sint harum quis molestiae molestiae aspernatur. Distinctio debitis sequi nemo modi.', 'storage/posts/tests/8.jpg', 4, NULL, '2019-04-20 05:56:25', '2019-04-20 05:56:25'),
(94, 'Carmine Rapid', 'Reprehenderit deserunt mollitia occaecati exercitationem qui ipsam. In aut odio accusamus cum totam expedita voluptatem. Maiores ut odio qui itaque sit illum ratione. Molestiae modi aut hic similique possimus inventore adipisci nesciunt.', 'storage/posts/tests/13.jpg', 7, NULL, '2019-04-20 05:56:25', '2019-04-20 05:56:25'),
(95, 'Mckenna Hills', 'Voluptatem iusto hic sunt et aut. Id aut qui nam enim eos aut. Exercitationem odit et numquam voluptatem.', 'storage/posts/tests/33.jpg', 16, NULL, '2019-04-20 05:56:25', '2019-04-20 05:56:25'),
(96, 'Fay Orchard', 'Voluptatem laudantium corrupti minus nesciunt minus rerum est. Laboriosam assumenda rerum sequi praesentium dolor consequatur. Modi velit consequuntur optio vel sequi et.', 'storage/posts/tests/21.png', 15, NULL, '2019-04-20 05:56:25', '2019-04-20 05:56:25'),
(97, 'Nicholaus Ranch', 'Est dolores molestias rem eum. Provident quia quia nostrum quas maiores maiores. Quia deserunt deserunt eum assumenda maiores qui. Amet ut velit laboriosam omnis corrupti dolores doloribus qui.', 'storage/posts/tests/33.jpg', 3, NULL, '2019-04-20 05:56:25', '2019-04-20 05:56:25'),
(98, 'Kali Rapids', 'Laborum nulla laborum odio sed minus. Ea repellat quod in eveniet est dolores dolores. Atque voluptatem possimus nesciunt odit. Nulla placeat ducimus et expedita at aut natus. Eos autem eligendi ullam exercitationem. Nostrum perferendis tempore ipsum dolores reiciendis ducimus modi.', 'storage/posts/tests/31.jpg', 21, NULL, '2019-04-20 05:56:25', '2019-04-20 05:56:25'),
(99, 'Rollin Cape', 'Quasi ipsa asperiores qui eum adipisci itaque. Rerum culpa ut voluptatem. Quisquam sed quas quibusdam aliquam qui. Inventore in sit occaecati commodi. Iure ut nesciunt quibusdam est voluptas et fugit. Velit dolore et sint numquam et id quos. Omnis eius quisquam officia ratione praesentium.', 'storage/posts/tests/11.png', 18, NULL, '2019-04-20 05:56:25', '2019-04-20 05:56:25'),
(100, 'Watson Land', 'Tempore debitis deserunt totam repellat repudiandae iste in ab. Enim eos et aut consequatur consectetur nesciunt magnam. Cumque officia id magni beatae.', 'storage/posts/tests/38.jpg', 11, NULL, '2019-04-20 05:56:26', '2019-04-20 05:56:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2019-04-20 05:48:49', '2019-04-20 05:48:49'),
(2, 'user', 'Normal User', '2019-04-20 05:48:49', '2019-04-20 05:48:49');

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
  `persona_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `account_verified_at` timestamp NULL DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `persona_id`, `role_id`, `name`, `email`, `avatar`, `account_verified_at`, `email_verified_at`, `password`, `remember_token`, `settings`, `user_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'cristianmarint', 'cristianmarint@gmail.com', 'https://avatars1.githubusercontent.com/u/31068007?s=460&v=4', '2019-04-20 05:56:12', '2019-04-20 05:56:12', '$2y$10$0f6/54uz5FJl7r61iffcduzz2K4C.Eo7oL7PiAZ5Akb94zTPtAKfC', NULL, NULL, NULL, NULL, NULL, NULL),
(2, 1, 2, 'lrunte', 'lemuel.auer@hotmail.com', 'storage/users/default/profile/halloween_jason_friday_movie.png', NULL, '2019-04-20 05:56:12', '$2y$10$wXS2g7Sl5q4OC/aLtCmkS.S8F.tuEuDrg6Z6PJp/HpxuThz.dMwuq', 'EhRtj46Vx7', NULL, NULL, NULL, '2019-04-20 05:56:14', '2019-04-20 05:56:14'),
(3, 17, 2, 'mallory.blanda', 'bria.lehner@yahoo.com', 'storage/users/default/profile/avocado_scream_avatar_food.png', NULL, '2019-04-20 05:56:12', '$2y$10$BPJjZ45Mvq68BuHnNjfZxej1tBcqQvrdxDD1BXwvCqEc6AFNM3jjK', 'SKqRi7xtUL', NULL, NULL, NULL, '2019-04-20 05:56:14', '2019-04-20 05:56:14'),
(4, 16, 2, 'lelia07', 'tevin.witting@gmail.com', 'storage/users/default/profile/cloud_crying_rain_avatar.png', NULL, '2019-04-20 05:56:12', '$2y$10$zbO/3l8Jkx9XnjJfHyT8UO51xmqOetYAAGu72ecnZJ3sAxJLEpvlu', 'l9wRpIPxgJ', NULL, NULL, NULL, '2019-04-20 05:56:14', '2019-04-20 05:56:14'),
(5, 19, 2, 'blanche74', 'fhermiston@hotmail.com', 'storage/users/default/profile/avocado_scream_avatar_food.png', NULL, '2019-04-20 05:56:12', '$2y$10$WZjrg51eln2gbFKMikn.e.h7nldqlE./gpEgzQVSCVkpgIkb3T8wi', 'JfzXhEE1xC', NULL, NULL, NULL, '2019-04-20 05:56:14', '2019-04-20 05:56:14'),
(6, 4, 2, 'hudson.larue', 'delilah.prosacco@hotmail.com', 'storage/users/default/profile/halloween_jason_friday_movie.png', NULL, '2019-04-20 05:56:13', '$2y$10$YNt0zcXUuMrdg4WheWj04.vMEfy818ZJx0XtV.p9lu0tFYWjTAK0q', '5RWScEUCKV', NULL, NULL, NULL, '2019-04-20 05:56:14', '2019-04-20 05:56:14'),
(7, 5, 2, 'bauch.christopher', 'berneice39@yahoo.com', 'storage/users/default/profile/avocado_scream_avatar_food.png', NULL, '2019-04-20 05:56:13', '$2y$10$pTjgdXlpoX5yThpit1Nkp.2P1zQhre9e6yctq71eCnF/lwlpH2nRi', 'iK9SqZyQ9d', NULL, NULL, NULL, '2019-04-20 05:56:14', '2019-04-20 05:56:14'),
(8, 10, 2, 'hahn.talia', 'wweber@hotmail.com', 'storage/users/default/profile/coffee_zorro_avatar_cup.png', NULL, '2019-04-20 05:56:13', '$2y$10$aVMGtloCcF388t0zizTUy.obFcfGb/xsw1qcYOuUAQGjYfunGGXWu', 'a45JNPjRvq', NULL, NULL, NULL, '2019-04-20 05:56:15', '2019-04-20 05:56:15'),
(9, 1, 2, 'mohammed65', 'anastasia.volkman@yahoo.com', 'storage/users/default/profile/halloween_jason_friday_movie.png', NULL, '2019-04-20 05:56:13', '$2y$10$Yuet6QKJjlPBhwuk5o0fu.n2D5ZXjidIoT9b1GROiaPImNuE13TYe', 'q6f6BEO2o8', NULL, NULL, NULL, '2019-04-20 05:56:15', '2019-04-20 05:56:15'),
(10, 16, 2, 'charlene.vandervort', 'eryn44@gmail.com', 'storage/users/default/profile/coffee_zorro_avatar_cup.png', NULL, '2019-04-20 05:56:13', '$2y$10$0RNkfx8XmUYJOJT/1F/siOewwcf5vChEMDRA.yeclQmG0mwsbeVM6', 'lU8YGi1dnv', NULL, NULL, NULL, '2019-04-20 05:56:15', '2019-04-20 05:56:15'),
(11, 2, 2, 'wheathcote', 'tthiel@yahoo.com', 'storage/users/default/profile/halloween_jason_friday_movie.png', NULL, '2019-04-20 05:56:13', '$2y$10$q9wYYEFfyM/e1XCP4jLXX.jlNHjZQ6UXAG6ewVQKyxgYUjS9VPnP6', 'AVthyPlTu7', NULL, NULL, NULL, '2019-04-20 05:56:15', '2019-04-20 05:56:15'),
(12, 1, 2, 'maynard.feest', 'windler.marlon@yahoo.com', 'storage/users/default/profile/cactus_cacti_avatar_pirate.png', NULL, '2019-04-20 05:56:13', '$2y$10$uYEaxlUePHHjtUOxVIlS5ePZHRNII3bT0164A0OamKgpHcmUBlCM.', 'NzLklNddIW', NULL, NULL, NULL, '2019-04-20 05:56:15', '2019-04-20 05:56:15'),
(13, 18, 2, 'ricardo.emard', 'qlindgren@hotmail.com', 'storage/users/default/profile/avocado_scream_avatar_food.png', NULL, '2019-04-20 05:56:13', '$2y$10$E1CidBwqXn2NSi48tazt/epDv.yQzPXpr8WsqZSjtMvaDWr9wZEye', 'JZYjtJmNFM', NULL, NULL, NULL, '2019-04-20 05:56:15', '2019-04-20 05:56:15'),
(14, 3, 2, 'bogan.chelsie', 'tiana.gibson@gmail.com', 'storage/users/default/profile/breaking_bad_chemisrty_avatar_heisenberg.png', NULL, '2019-04-20 05:56:13', '$2y$10$4jarOrIuZW2K.9NWrArTEO3RUvmTlF4NmOV1a5JeJfKWHRFgaisQa', 'XAfRBes9wb', NULL, NULL, NULL, '2019-04-20 05:56:15', '2019-04-20 05:56:15'),
(15, 16, 2, 'sdouglas', 'hveum@hotmail.com', 'storage/users/default/profile/halloween_jason_friday_movie.png', NULL, '2019-04-20 05:56:13', '$2y$10$oJcp0FJXOeiEPEB/sD7tWeYbC6mdV6ToG6gDY5EYNcncUUy5yFGRa', 'AzHC5OEJEz', NULL, NULL, NULL, '2019-04-20 05:56:15', '2019-04-20 05:56:15'),
(16, 16, 2, 'jillian51', 'stanton.cornell@hotmail.com', 'storage/users/default/profile/cactus_cacti_avatar_pirate.png', NULL, '2019-04-20 05:56:13', '$2y$10$H9BUDCmmNHGR2ntcrE4x4.eefKMe8vwWJOAsRPlqxF7fK8cJBAf8O', 'rfIPUHIxhq', NULL, NULL, NULL, '2019-04-20 05:56:16', '2019-04-20 05:56:16'),
(17, 4, 2, 'mdare', 'hayden.paucek@yahoo.com', 'storage/users/default/profile/avocado_scream_avatar_food.png', NULL, '2019-04-20 05:56:13', '$2y$10$g4NRjSYXJL3esfkMXOcM8OM2/c4Zs1L7Nbwh8qo2LnEAqA2E5G6a.', '5sG7WwHtI2', NULL, NULL, NULL, '2019-04-20 05:56:16', '2019-04-20 05:56:16'),
(18, 18, 2, 'lyla.fay', 'bkshlerin@hotmail.com', 'storage/users/default/profile/avocado_scream_avatar_food.png', NULL, '2019-04-20 05:56:13', '$2y$10$9CFQcUYWqKpfVZLF.SUhW.iAn/qRphRiejkZxO1cWAap9j.YPDe.C', 'zzX1mkVLDg', NULL, NULL, NULL, '2019-04-20 05:56:16', '2019-04-20 05:56:16'),
(19, 9, 2, 'raegan.stroman', 'fisher.electa@hotmail.com', 'storage/users/default/profile/sloth_lazybones_sluggard_avatar.png', NULL, '2019-04-20 05:56:14', '$2y$10$ypqNzM2qNZkLiMxLrlEHh.gJpzfhWsjHLv5cEuHygfTAAz/lYfM12', '6RLG1ZQX5j', NULL, NULL, NULL, '2019-04-20 05:56:16', '2019-04-20 05:56:16'),
(20, 5, 2, 'mraz.jannie', 'zaria.willms@hotmail.com', 'storage/users/default/profile/halloween_jason_friday_movie.png', NULL, '2019-04-20 05:56:14', '$2y$10$cXZ0vR97nyV0MlikasXrFudHijYhUU9FGIYETJrex7D6r51tOswK2', 'fygi8KTg5l', NULL, NULL, NULL, '2019-04-20 05:56:16', '2019-04-20 05:56:16'),
(21, 7, 2, 'kemmer.rhoda', 'brady.daniel@yahoo.com', 'storage/users/default/profile/breaking_bad_chemisrty_avatar_heisenberg.png', NULL, '2019-04-20 05:56:14', '$2y$10$//qwKtcTJbRLbNadyeWtxO2gn/Af1dJBPIuszf.i0G94f1rXSrTba', 'ndrneTkPgj', NULL, NULL, NULL, '2019-04-20 05:56:16', '2019-04-20 05:56:16');

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
-- Indices de la tabla `entrenamiento`
--
ALTER TABLE `entrenamiento`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entrenamiento_user_id_foreign` (`user_id`);

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
-- Indices de la tabla `meta_mensual`
--
ALTER TABLE `meta_mensual`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meta_mensual_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

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
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`id`),
  ADD KEY `persona_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

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
  ADD KEY `users_user_id_foreign` (`user_id`),
  ADD KEY `users_role_id_foreign` (`role_id`),
  ADD KEY `users_persona_id_foreign` (`persona_id`);

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
-- AUTO_INCREMENT de la tabla `entrenamiento`
--
ALTER TABLE `entrenamiento`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

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
-- AUTO_INCREMENT de la tabla `meta_mensual`
--
ALTER TABLE `meta_mensual`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

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
-- AUTO_INCREMENT de la tabla `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `entrenamiento`
--
ALTER TABLE `entrenamiento`
  ADD CONSTRAINT `entrenamiento_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `meta_mensual`
--
ALTER TABLE `meta_mensual`
  ADD CONSTRAINT `meta_mensual_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `persona`
--
ALTER TABLE `persona`
  ADD CONSTRAINT `persona_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_persona_id_foreign` FOREIGN KEY (`persona_id`) REFERENCES `persona` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
--
-- Base de datos: `torneo`
--
CREATE DATABASE IF NOT EXISTS `torneo` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `torneo`;

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
(1, 'Arbitro principal', 'Arbitro #1 del encuntro', 1, NULL, '2019-05-19 01:28:58', '2019-05-19 01:28:58'),
(2, 'Arbitro secundario', 'Ayuda a tomar decisiones al arbitro principal', 1, NULL, '2019-05-19 01:28:58', '2019-05-19 01:28:58'),
(3, 'Encargado de la planilla', 'Ayuda a plasmar el enfrentamiento en los planillas', 4, NULL, '2019-05-19 01:28:58', '2019-05-19 01:28:58');

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
(1, 'Futbol-5', NULL, '2019-05-19 01:27:57', '2019-05-19 01:27:57'),
(2, 'Futbol-8', NULL, '2019-05-19 01:27:57', '2019-05-19 01:27:57'),
(3, 'Futbol-11', NULL, '2019-05-19 01:27:57', '2019-05-19 01:27:57');

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
(1, 'MediumSeaGreen', NULL, '2019-05-19 01:27:49', '2019-05-19 01:27:49'),
(2, 'DarkKhaki', NULL, '2019-05-19 01:27:49', '2019-05-19 01:27:49'),
(3, 'Pink', NULL, '2019-05-19 01:27:49', '2019-05-19 01:27:49'),
(4, 'SlateBlue', NULL, '2019-05-19 01:27:49', '2019-05-19 01:27:49'),
(5, 'Plum', NULL, '2019-05-19 01:27:49', '2019-05-19 01:27:49'),
(6, 'RosyBrown', NULL, '2019-05-19 01:27:49', '2019-05-19 01:27:49'),
(7, 'PaleGreen', NULL, '2019-05-19 01:27:49', '2019-05-19 01:27:49'),
(8, 'DarkGoldenRod', NULL, '2019-05-19 01:27:49', '2019-05-19 01:27:49'),
(9, 'Navy', NULL, '2019-05-19 01:27:49', '2019-05-19 01:27:49'),
(10, 'DarkOrchid', NULL, '2019-05-19 01:27:49', '2019-05-19 01:27:49'),
(11, 'Moccasin', NULL, '2019-05-19 01:27:49', '2019-05-19 01:27:49'),
(12, 'MediumSpringGreen', NULL, '2019-05-19 01:27:50', '2019-05-19 01:27:50'),
(13, 'DarkViolet', NULL, '2019-05-19 01:27:50', '2019-05-19 01:27:50'),
(14, 'Olive', NULL, '2019-05-19 01:27:50', '2019-05-19 01:27:50'),
(15, 'Crimson', NULL, '2019-05-19 01:27:50', '2019-05-19 01:27:50'),
(16, 'Coral', NULL, '2019-05-19 01:27:50', '2019-05-19 01:27:50'),
(17, 'PapayaWhip', NULL, '2019-05-19 01:27:50', '2019-05-19 01:27:50'),
(18, 'FireBrick', NULL, '2019-05-19 01:27:50', '2019-05-19 01:27:50'),
(19, 'LavenderBlush', NULL, '2019-05-19 01:27:50', '2019-05-19 01:27:50'),
(20, 'GhostWhite', NULL, '2019-05-19 01:27:51', '2019-05-19 01:27:51'),
(21, 'PaleTurquoise', NULL, '2019-05-19 01:27:51', '2019-05-19 01:27:51'),
(22, 'LightBlue', NULL, '2019-05-19 01:27:51', '2019-05-19 01:27:51'),
(23, 'LightSalmon', NULL, '2019-05-19 01:27:51', '2019-05-19 01:27:51'),
(24, 'Cornsilk', NULL, '2019-05-19 01:27:51', '2019-05-19 01:27:51'),
(25, 'Black', NULL, '2019-05-19 01:27:51', '2019-05-19 01:27:51'),
(26, 'LightCyan', NULL, '2019-05-19 01:27:51', '2019-05-19 01:27:51'),
(27, 'LimeGreen', NULL, '2019-05-19 01:27:52', '2019-05-19 01:27:52'),
(28, 'LightSeaGreen', NULL, '2019-05-19 01:27:52', '2019-05-19 01:27:52'),
(29, 'Gray', NULL, '2019-05-19 01:27:52', '2019-05-19 01:27:52'),
(30, 'Violet', NULL, '2019-05-19 01:27:52', '2019-05-19 01:27:52'),
(31, 'DarkRed', NULL, '2019-05-19 01:27:52', '2019-05-19 01:27:52'),
(32, 'DimGray', NULL, '2019-05-19 01:27:52', '2019-05-19 01:27:52'),
(33, 'Green', NULL, '2019-05-19 01:27:53', '2019-05-19 01:27:53'),
(34, 'WhiteSmoke', NULL, '2019-05-19 01:27:53', '2019-05-19 01:27:53'),
(35, 'Aquamarine', NULL, '2019-05-19 01:27:53', '2019-05-19 01:27:53'),
(36, 'PaleVioletRed', NULL, '2019-05-19 01:27:53', '2019-05-19 01:27:53'),
(37, 'OrangeRed', NULL, '2019-05-19 01:27:53', '2019-05-19 01:27:53'),
(38, 'Linen', NULL, '2019-05-19 01:27:53', '2019-05-19 01:27:53'),
(39, 'Azure', NULL, '2019-05-19 01:27:53', '2019-05-19 01:27:53'),
(40, 'DimGrey', NULL, '2019-05-19 01:27:53', '2019-05-19 01:27:53'),
(41, 'Thistle', NULL, '2019-05-19 01:27:53', '2019-05-19 01:27:53'),
(42, 'LightSlateGray', NULL, '2019-05-19 01:27:54', '2019-05-19 01:27:54'),
(43, 'DarkCyan', NULL, '2019-05-19 01:27:54', '2019-05-19 01:27:54'),
(44, 'Yellow', NULL, '2019-05-19 01:27:54', '2019-05-19 01:27:54'),
(45, 'Ivory', NULL, '2019-05-19 01:27:54', '2019-05-19 01:27:54'),
(46, 'Chartreuse', NULL, '2019-05-19 01:27:54', '2019-05-19 01:27:54'),
(47, 'Red', NULL, '2019-05-19 01:27:54', '2019-05-19 01:27:54'),
(48, 'PowderBlue', NULL, '2019-05-19 01:27:54', '2019-05-19 01:27:54'),
(49, 'Tomato', NULL, '2019-05-19 01:27:54', '2019-05-19 01:27:54'),
(50, 'DarkSlateGray', NULL, '2019-05-19 01:27:54', '2019-05-19 01:27:54');

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
(1, 'Puntos victoria', NULL, '2019-05-19 01:27:58', '2019-05-19 01:27:58'),
(2, 'Juego limpio', NULL, '2019-05-19 01:27:59', '2019-05-19 01:27:59');

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
(1, 1, 1, NULL, '2019-05-19 01:27:59', '2019-05-19 01:27:59');

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
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', '', '', 1, 0, NULL, '2019-05-19 01:27:15', '2019-05-19 01:27:15'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2019-05-19 01:27:15', '2019-05-19 01:27:15'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2019-05-19 01:27:15', '2019-05-19 01:27:15');

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
(1, '1112112112', 'https://scontent.feoh1-1.fna.fbcdn.net/v/t1.0-9/49172795_2032340176848073_3607797267651624960_o.jpg?_nc_cat=111&_nc_ht=scontent.feoh1-1.fna&oh=a7ece5939eec56f6a52b8fe4c6463b81&oe=5CEE3D6C', NULL, 'Cristian', 'Alexander', 'Marín', 'Aguirre', 8, 38, 1, 23, 9, 'cristianmarint@cotecnova.edu.co', NULL, NULL, '2019-05-19 01:27:44', '2019-05-19 01:27:44'),
(2, '222111222', 'storage/storage/img/datosbasicos/default.png', NULL, 'Edwin', NULL, 'Lopez', NULL, 4, 27, 1, 40, 10, 'edwin.lopezb.1297@cotecnova.edu.co', NULL, NULL, '2019-05-19 01:27:44', '2019-05-19 01:27:44'),
(3, '1128679249', 'https://loremflickr.com/400/400/face,man', 21, 'Alejandra', 'Eldora', 'Will', 'Heathcote', 8, 17, 2, 88, 10, 'keeling.oren@gmail.com', NULL, NULL, '2019-05-19 01:28:00', '2019-05-19 01:28:00'),
(4, '967671717', 'https://loremflickr.com/400/400/face,man', 23, 'Roscoe', 'Larue', 'Stehr', 'Dickinson', 5, 27, 2, 28, 2, 'hwuckert@prohaska.biz', NULL, NULL, '2019-05-19 01:28:00', '2019-05-19 01:28:00'),
(5, '1001177727', 'https://loremflickr.com/400/400/player,tennis', 25, 'Augustine', 'Shyanne', 'Beatty', 'Fritsch', 5, 23, 2, 70, 6, 'josianne.murray@goodwin.com', NULL, NULL, '2019-05-19 01:28:00', '2019-05-19 01:28:00'),
(6, '368676629', 'https://loremflickr.com/400/400/player,tennis', 27, 'Albertha', 'Brannon', 'Walker', 'Shields', 6, 39, 2, 29, 5, 'kihn.jasmin@yahoo.com', NULL, NULL, '2019-05-19 01:28:01', '2019-05-19 01:28:01'),
(7, '1169949123', 'https://loremflickr.com/400/400/player,tennis', 29, 'Toney', 'Erin', 'Skiles', 'Windler', 6, 28, 1, 27, 2, 'connelly.jessy@cruickshank.org', NULL, NULL, '2019-05-19 01:28:01', '2019-05-19 01:28:01'),
(8, '503884872', 'https://loremflickr.com/400/400/face,woman', 31, 'Madeline', 'Lera', 'Schmidt', 'O\'Keefe', 1, 2, 3, 88, 9, 'prosacco.madonna@shields.org', NULL, NULL, '2019-05-19 01:28:02', '2019-05-19 01:28:02'),
(9, '1188672732', 'https://loremflickr.com/400/400/face,man', 33, 'Araceli', 'Kacie', 'Emard', 'Larkin', 6, 42, 1, 80, 3, 'mcdermott.vidal@kovacek.com', NULL, NULL, '2019-05-19 01:28:02', '2019-05-19 01:28:02'),
(10, '513280629', 'https://loremflickr.com/400/400/face,woman', 35, 'Blanche', 'Michele', 'Rowe', 'Howell', 7, 11, 2, 62, 1, 'dlind@christiansen.net', NULL, NULL, '2019-05-19 01:28:02', '2019-05-19 01:28:02'),
(11, '178151946', 'https://loremflickr.com/400/400/player,soccer', 37, 'Kelley', 'Lee', 'Schuster', 'Schiller', 3, 43, 2, 61, 8, 'sharvey@lowe.biz', NULL, NULL, '2019-05-19 01:28:02', '2019-05-19 01:28:02'),
(12, '1201331865', 'https://loremflickr.com/400/400/player,soccer', 39, 'Maximo', 'Dovie', 'Block', 'Balistreri', 1, 42, 2, 46, 3, 'cjerde@lesch.com', NULL, NULL, '2019-05-19 01:28:03', '2019-05-19 01:28:03'),
(13, '551217324', 'https://loremflickr.com/400/400/player,sport', 41, 'Cristopher', 'Stephany', 'Rutherford', 'Lesch', 6, 30, 2, 48, 5, 'ypfeffer@yahoo.com', NULL, NULL, '2019-05-19 01:28:03', '2019-05-19 01:28:03'),
(14, '1045421836', 'https://loremflickr.com/400/400/face,woman', 43, 'Kaylee', 'Carley', 'Skiles', 'Howell', 2, 10, 2, 10, 8, 'adriel.stroman@kub.com', NULL, NULL, '2019-05-19 01:28:03', '2019-05-19 01:28:03'),
(15, '86829417', 'https://loremflickr.com/400/400/player,sport', 45, 'Melyssa', 'Lora', 'Turcotte', 'Gusikowski', 5, 13, 3, 33, 1, 'fcrooks@hotmail.com', NULL, NULL, '2019-05-19 01:28:03', '2019-05-19 01:28:03'),
(16, '413648351', 'https://loremflickr.com/400/400/player,soccer', 47, 'Wellington', 'Lucie', 'Tremblay', 'Greenfelder', 2, 41, 3, 99, 3, 'hfarrell@gerhold.com', NULL, NULL, '2019-05-19 01:28:04', '2019-05-19 01:28:04'),
(17, '1165914930', 'https://loremflickr.com/400/400/face,man', 49, 'Victoria', 'Caleigh', 'Dach', 'Gorczany', 5, 36, 2, 68, 4, 'paul96@schimmel.info', NULL, NULL, '2019-05-19 01:28:04', '2019-05-19 01:28:04'),
(18, '616433214', 'https://loremflickr.com/400/400/player,football', 51, 'Brain', 'Peyton', 'Daugherty', 'Herzog', 3, 41, 3, 22, 8, 'olson.jovan@huels.com', NULL, NULL, '2019-05-19 01:28:04', '2019-05-19 01:28:04'),
(19, '422970083', 'https://loremflickr.com/400/400/player,football', 53, 'Fredrick', 'Adrain', 'Wehner', 'Stamm', 4, 10, 3, 31, 7, 'kiana46@gmail.com', NULL, NULL, '2019-05-19 01:28:04', '2019-05-19 01:28:04'),
(20, '1314115377', 'https://loremflickr.com/400/400/player,man', 55, 'Marcia', 'Izaiah', 'Welch', 'Schimmel', 8, 29, 1, 81, 2, 'curt.mertz@boyer.info', NULL, NULL, '2019-05-19 01:28:04', '2019-05-19 01:28:04'),
(21, '93429421', 'https://loremflickr.com/400/400/player,sport', 57, 'Bianka', 'Linda', 'Hickle', 'Blanda', 4, 30, 2, 69, 8, 'deckow.dianna@gmail.com', NULL, NULL, '2019-05-19 01:28:05', '2019-05-19 01:28:05'),
(22, '1275829365', 'https://loremflickr.com/400/400/player,soccer', 59, 'Arne', 'Sunny', 'Cummerata', 'Muller', 3, 18, 2, 79, 7, 'dino.kovacek@hotmail.com', NULL, NULL, '2019-05-19 01:28:05', '2019-05-19 01:28:05'),
(23, '460745080', 'https://loremflickr.com/400/400/player,man', 61, 'Micah', 'Chad', 'Wehner', 'Gutmann', 3, 37, 1, 65, 4, 'osborne23@bogan.org', NULL, NULL, '2019-05-19 01:28:05', '2019-05-19 01:28:05'),
(24, '970458362', 'https://loremflickr.com/400/400/player,football', 63, 'Marcos', 'Hilda', 'Considine', 'Waters', 5, 10, 3, 22, 5, 'jasmin27@mclaughlin.biz', NULL, NULL, '2019-05-19 01:28:05', '2019-05-19 01:28:05'),
(25, '48171872', 'https://loremflickr.com/400/400/player,soccer', 65, 'Omer', 'Guillermo', 'Heathcote', 'Thompson', 2, 43, 1, 100, 10, 'lolita.boyer@wehner.biz', NULL, NULL, '2019-05-19 01:28:06', '2019-05-19 01:28:06'),
(26, '1480124753', 'https://loremflickr.com/400/400/player,sport', 67, 'John', 'Marcos', 'Konopelski', 'Stokes', 8, 42, 3, 70, 9, 'leannon.berry@boyer.com', NULL, NULL, '2019-05-19 01:28:06', '2019-05-19 01:28:06'),
(27, '1353148826', 'https://loremflickr.com/400/400/player,tennis', 69, 'Bryce', 'Beverly', 'Koelpin', 'Bartell', 8, 23, 1, 5, 1, 'luettgen.omari@hotmail.com', NULL, NULL, '2019-05-19 01:28:06', '2019-05-19 01:28:06'),
(28, '1476806260', 'https://loremflickr.com/400/400/face,woman', 71, 'Viviane', 'Justen', 'Dickinson', 'Hoeger', 4, 47, 2, 53, 4, 'bergstrom.augusta@doyle.net', NULL, NULL, '2019-05-19 01:28:06', '2019-05-19 01:28:06'),
(29, '419915472', 'https://loremflickr.com/400/400/player,soccer', 73, 'Trey', 'Rene', 'Waters', 'Ledner', 8, 6, 1, 75, 2, 'allene.mayer@bednar.com', NULL, NULL, '2019-05-19 01:28:06', '2019-05-19 01:28:06'),
(30, '1134804639', 'https://loremflickr.com/400/400/player,football', 75, 'Lauren', 'Tavares', 'Douglas', 'Runte', 2, 3, 3, 57, 6, 'mustafa.ohara@okon.net', NULL, NULL, '2019-05-19 01:28:07', '2019-05-19 01:28:07'),
(31, '1546346771', 'https://loremflickr.com/400/400/player,sport', 77, 'Jessika', 'Candida', 'Boyle', 'Rippin', 1, 23, 3, 32, 9, 'trowe@yahoo.com', NULL, NULL, '2019-05-19 01:28:07', '2019-05-19 01:28:07'),
(32, '1278445114', 'https://loremflickr.com/400/400/player,sport', 79, 'Dean', 'Martin', 'Moen', 'Blanda', 2, 38, 2, 33, 2, 'duane.von@mckenzie.biz', NULL, NULL, '2019-05-19 01:28:07', '2019-05-19 01:28:07'),
(33, '998846618', 'https://loremflickr.com/400/400/person', 81, 'Lilla', 'Lesly', 'Upton', 'Sauer', 6, 3, 3, 31, 4, 'okon.esteban@conroy.com', NULL, NULL, '2019-05-19 01:28:08', '2019-05-19 01:28:08'),
(34, '1389630097', 'https://loremflickr.com/400/400/face,man', 83, 'Aidan', 'Amelie', 'Bayer', 'Brakus', 3, 23, 1, 35, 2, 'estracke@wiegand.com', NULL, NULL, '2019-05-19 01:28:08', '2019-05-19 01:28:08'),
(35, '545687010', 'https://loremflickr.com/400/400/player,soccer', 85, 'Carley', 'Asia', 'Breitenberg', 'Cummings', 3, 3, 2, 32, 8, 'macejkovic.aurelia@stokes.com', NULL, NULL, '2019-05-19 01:28:08', '2019-05-19 01:28:08'),
(36, '170417022', 'https://loremflickr.com/400/400/person', 87, 'Brice', 'Hassie', 'Hoeger', 'Ortiz', 3, 36, 1, 72, 7, 'lysanne.barton@champlin.com', NULL, NULL, '2019-05-19 01:28:08', '2019-05-19 01:28:08'),
(37, '699244981', 'https://loremflickr.com/400/400/player,sport', 89, 'Karson', 'Domenico', 'Keeling', 'Borer', 8, 8, 1, 20, 3, 'jaskolski.theo@gmail.com', NULL, NULL, '2019-05-19 01:28:09', '2019-05-19 01:28:09'),
(38, '1096671734', 'https://loremflickr.com/400/400/person', 91, 'Madge', 'Maud', 'Collins', 'Considine', 5, 3, 1, 41, 5, 'hgutkowski@prohaska.com', NULL, NULL, '2019-05-19 01:28:09', '2019-05-19 01:28:09'),
(39, '1480233645', 'https://loremflickr.com/400/400/person', 93, 'Angelo', 'General', 'Walker', 'Rogahn', 2, 38, 2, 82, 1, 'hkub@hotmail.com', NULL, NULL, '2019-05-19 01:28:09', '2019-05-19 01:28:09'),
(40, '857951365', 'https://loremflickr.com/400/400/person', 95, 'Fletcher', 'Antonina', 'Prohaska', 'Baumbach', 2, 45, 2, 67, 3, 'hagenes.millie@gleason.com', NULL, NULL, '2019-05-19 01:28:09', '2019-05-19 01:28:09'),
(41, '1163029071', 'https://loremflickr.com/400/400/player,sport', 97, 'Newton', 'Brittany', 'Wolff', 'Pouros', 8, 19, 2, 39, 10, 'nya18@gmail.com', NULL, NULL, '2019-05-19 01:28:09', '2019-05-19 01:28:09'),
(42, '225437018', 'https://loremflickr.com/400/400/person', 99, 'Forest', 'Pasquale', 'Hackett', 'Koch', 3, 37, 2, 50, 4, 'oleta14@hotmail.com', NULL, NULL, '2019-05-19 01:28:10', '2019-05-19 01:28:10'),
(43, '386579112', 'https://loremflickr.com/400/400/player,tennis', 101, 'Dorothy', 'Raoul', 'Labadie', 'Grant', 8, 48, 2, 84, 10, 'howell.kieran@pfannerstill.com', NULL, NULL, '2019-05-19 01:28:10', '2019-05-19 01:28:10'),
(44, '682056088', 'https://loremflickr.com/400/400/face,woman', 103, 'Eldridge', 'Belle', 'Jaskolski', 'Lockman', 2, 34, 2, 45, 5, 'bridgette53@mcdermott.com', NULL, NULL, '2019-05-19 01:28:10', '2019-05-19 01:28:10'),
(45, '294304387', 'https://loremflickr.com/400/400/player,man', 105, 'Lafayette', 'Royce', 'Nader', 'Carroll', 2, 6, 3, 65, 1, 'ofelia74@gmail.com', NULL, NULL, '2019-05-19 01:28:11', '2019-05-19 01:28:11'),
(46, '10549237', 'https://loremflickr.com/400/400/player,soccer', 107, 'Ephraim', 'Meaghan', 'Breitenberg', 'Cremin', 3, 20, 1, 28, 7, 'rrodriguez@yahoo.com', NULL, NULL, '2019-05-19 01:28:11', '2019-05-19 01:28:11'),
(47, '1220238070', 'https://loremflickr.com/400/400/player,sport', 109, 'Gilbert', 'Marielle', 'Lesch', 'Nolan', 5, 23, 1, 44, 6, 'cristopher.senger@collier.biz', NULL, NULL, '2019-05-19 01:28:11', '2019-05-19 01:28:11'),
(48, '1123916551', 'https://loremflickr.com/400/400/player,football', 111, 'Cornelius', 'Alexzander', 'Jacobson', 'Champlin', 6, 37, 1, 1, 9, 'reta18@halvorson.com', NULL, NULL, '2019-05-19 01:28:11', '2019-05-19 01:28:11'),
(49, '1456491171', 'https://loremflickr.com/400/400/player,sport', 113, 'Guadalupe', 'Kim', 'Hegmann', 'Ankunding', 8, 28, 3, 90, 2, 'bbeahan@cartwright.com', NULL, NULL, '2019-05-19 01:28:12', '2019-05-19 01:28:12'),
(50, '780172231', 'https://loremflickr.com/400/400/player,soccer', 115, 'Eden', 'Marguerite', 'Kerluke', 'Will', 1, 3, 1, 88, 6, 'elza12@yahoo.com', NULL, NULL, '2019-05-19 01:28:12', '2019-05-19 01:28:12'),
(51, '1233234327', 'https://loremflickr.com/400/400/person', 117, 'Lonzo', 'Antonio', 'Hackett', 'Prosacco', 7, 37, 3, 58, 7, 'dcole@welch.com', NULL, NULL, '2019-05-19 01:28:12', '2019-05-19 01:28:12'),
(52, '849445891', 'https://loremflickr.com/400/400/face,woman', 119, 'Easter', 'Aida', 'Dietrich', 'Feeney', 4, 38, 1, 34, 4, 'khalid.kihn@gmail.com', NULL, NULL, '2019-05-19 01:28:12', '2019-05-19 01:28:12'),
(53, '507786009', 'https://loremflickr.com/400/400/player,tennis', 121, 'Aisha', 'Brennon', 'Nader', 'Reilly', 1, 47, 2, 85, 7, 'dylan.breitenberg@yahoo.com', NULL, NULL, '2019-05-19 01:28:12', '2019-05-19 01:28:12'),
(54, '1320585559', 'https://loremflickr.com/400/400/player,man', 123, 'Virginia', 'Cayla', 'Miller', 'Schiller', 2, 50, 1, 7, 3, 'easter62@gmail.com', NULL, NULL, '2019-05-19 01:28:13', '2019-05-19 01:28:13'),
(55, '1449548948', 'https://loremflickr.com/400/400/face,man', 125, 'Cortez', 'Angel', 'Haley', 'Bednar', 3, 36, 2, 83, 4, 'hanna.bogisich@friesen.info', NULL, NULL, '2019-05-19 01:28:13', '2019-05-19 01:28:13'),
(56, '1019666393', 'https://loremflickr.com/400/400/face,man', 127, 'Kendra', 'Trey', 'Kris', 'Cummerata', 5, 50, 1, 95, 9, 'otto13@fay.org', NULL, NULL, '2019-05-19 01:28:13', '2019-05-19 01:28:13'),
(57, '1316190203', 'https://loremflickr.com/400/400/player,soccer', 129, 'Madisen', 'Idella', 'Padberg', 'Ernser', 1, 21, 2, 57, 3, 'brandi72@yahoo.com', NULL, NULL, '2019-05-19 01:28:14', '2019-05-19 01:28:14'),
(58, '1484658930', 'https://loremflickr.com/400/400/player,sport', 131, 'Tremaine', 'Zachariah', 'Hoeger', 'Schaefer', 5, 6, 2, 81, 4, 'cruickshank.elena@prohaska.com', NULL, NULL, '2019-05-19 01:28:14', '2019-05-19 01:28:14'),
(59, '795778344', 'https://loremflickr.com/400/400/player,soccer', 133, 'Morton', 'Madeline', 'Rohan', 'Brakus', 8, 4, 2, 99, 2, 'vpaucek@effertz.com', NULL, NULL, '2019-05-19 01:28:14', '2019-05-19 01:28:14'),
(60, '1065213585', 'https://loremflickr.com/400/400/person', 135, 'Freeda', 'Tracy', 'Powlowski', 'Schroeder', 6, 47, 2, 78, 1, 'obins@yundt.com', NULL, NULL, '2019-05-19 01:28:14', '2019-05-19 01:28:14'),
(61, '1146443798', 'https://loremflickr.com/400/400/person', 137, 'Shanon', 'Jessy', 'Becker', 'Crooks', 5, 18, 1, 67, 6, 'reynolds.anjali@grady.info', NULL, NULL, '2019-05-19 01:28:14', '2019-05-19 01:28:14'),
(62, '948142276', 'https://loremflickr.com/400/400/player,sport', 139, 'Kenyatta', 'Rosalee', 'Gerlach', 'Wehner', 1, 34, 1, 75, 3, 'clare.auer@bergnaum.biz', NULL, NULL, '2019-05-19 01:28:15', '2019-05-19 01:28:15'),
(63, '1326563167', 'https://loremflickr.com/400/400/face,man', 141, 'Delilah', 'Werner', 'Lowe', 'Keebler', 5, 1, 1, 100, 3, 'torrey11@yahoo.com', NULL, NULL, '2019-05-19 01:28:15', '2019-05-19 01:28:15'),
(64, '383382374', 'https://loremflickr.com/400/400/player,sport', 143, 'Paolo', 'Nicolas', 'Deckow', 'Pacocha', 6, 48, 2, 66, 9, 'mario.nicolas@breitenberg.com', NULL, NULL, '2019-05-19 01:28:15', '2019-05-19 01:28:15'),
(65, '380849112', 'https://loremflickr.com/400/400/player,man', 145, 'Matt', 'Marianne', 'Rowe', 'Ortiz', 8, 42, 2, 27, 2, 'pink13@yahoo.com', NULL, NULL, '2019-05-19 01:28:15', '2019-05-19 01:28:15'),
(66, '849651352', 'https://loremflickr.com/400/400/player,man', 147, 'Orie', 'Jammie', 'Boyle', 'Heller', 6, 49, 1, 75, 10, 'nwolf@friesen.info', NULL, NULL, '2019-05-19 01:28:16', '2019-05-19 01:28:16'),
(67, '1040112826', 'https://loremflickr.com/400/400/person', 149, 'Zachariah', 'Linwood', 'Stehr', 'Schmitt', 7, 45, 1, 73, 6, 'jacobi.shayne@huel.com', NULL, NULL, '2019-05-19 01:28:16', '2019-05-19 01:28:16'),
(68, '305910949', 'https://loremflickr.com/400/400/player,sport', 151, 'Heaven', 'Petra', 'Little', 'Paucek', 2, 41, 3, 17, 9, 'predovic.lottie@kulas.info', NULL, NULL, '2019-05-19 01:28:16', '2019-05-19 01:28:16'),
(69, '403565508', 'https://loremflickr.com/400/400/player,tennis', 153, 'Clare', 'Ayana', 'Langosh', 'Zulauf', 3, 17, 3, 48, 5, 'ronaldo.jenkins@gmail.com', NULL, NULL, '2019-05-19 01:28:17', '2019-05-19 01:28:17'),
(70, '650881122', 'https://loremflickr.com/400/400/face,man', 155, 'Alessandra', 'Lorna', 'Wisozk', 'Kunze', 1, 32, 1, 68, 9, 'brenna19@yahoo.com', NULL, NULL, '2019-05-19 01:28:17', '2019-05-19 01:28:17'),
(71, '781829562', 'https://loremflickr.com/400/400/player,tennis', 157, 'Stephany', 'Chaya', 'Harris', 'Kris', 2, 17, 3, 89, 8, 'ayana.yost@rice.com', NULL, NULL, '2019-05-19 01:28:17', '2019-05-19 01:28:17'),
(72, '1148672330', 'https://loremflickr.com/400/400/person', 159, 'Dallin', 'Libbie', 'Rath', 'O\'Conner', 1, 10, 3, 36, 9, 'audie.bartell@sanford.com', NULL, NULL, '2019-05-19 01:28:17', '2019-05-19 01:28:17'),
(73, '577816941', 'https://loremflickr.com/400/400/player,sport', 161, 'Carole', 'Lowell', 'Bradtke', 'Greenholt', 5, 11, 3, 85, 9, 'schmeler.oda@hotmail.com', NULL, NULL, '2019-05-19 01:28:18', '2019-05-19 01:28:18'),
(74, '692842330', 'https://loremflickr.com/400/400/face,man', 163, 'Amara', 'Cole', 'Kirlin', 'Macejkovic', 3, 28, 3, 21, 2, 'jschimmel@yahoo.com', NULL, NULL, '2019-05-19 01:28:18', '2019-05-19 01:28:18'),
(75, '416624615', 'https://loremflickr.com/400/400/face,man', 165, 'Mariana', 'Monserrat', 'Senger', 'Herzog', 2, 17, 1, 38, 1, 'jlueilwitz@gmail.com', NULL, NULL, '2019-05-19 01:28:18', '2019-05-19 01:28:18'),
(76, '1146457888', 'https://loremflickr.com/400/400/person', 167, 'Cielo', 'Trinity', 'Douglas', 'Daniel', 4, 29, 3, 31, 9, 'kaleigh.kreiger@rutherford.com', NULL, NULL, '2019-05-19 01:28:18', '2019-05-19 01:28:18'),
(77, '1469742586', 'https://loremflickr.com/400/400/player,tennis', 169, 'Abdul', 'Roy', 'Barrows', 'Gottlieb', 2, 21, 1, 100, 1, 'xlynch@yahoo.com', NULL, NULL, '2019-05-19 01:28:19', '2019-05-19 01:28:19'),
(78, '396763074', 'https://loremflickr.com/400/400/player,football', 171, 'Taryn', 'Heath', 'Grimes', 'Bartell', 7, 43, 3, 30, 3, 'huel.korbin@lakin.com', NULL, NULL, '2019-05-19 01:28:19', '2019-05-19 01:28:19'),
(79, '78937104', 'https://loremflickr.com/400/400/player,football', 173, 'Theodore', 'Waylon', 'Hessel', 'Schmidt', 3, 43, 1, 94, 6, 'kassulke.audie@vandervort.com', NULL, NULL, '2019-05-19 01:28:19', '2019-05-19 01:28:19'),
(80, '1043466356', 'https://loremflickr.com/400/400/player,football', 175, 'May', 'Maximilian', 'Marvin', 'Padberg', 6, 32, 2, 51, 9, 'sadye.king@hermann.com', NULL, NULL, '2019-05-19 01:28:19', '2019-05-19 01:28:19'),
(81, '745519406', 'https://loremflickr.com/400/400/face,man', 177, 'Jettie', 'Darryl', 'Spencer', 'Leuschke', 2, 17, 3, 55, 10, 'celestine.reinger@waters.com', NULL, NULL, '2019-05-19 01:28:20', '2019-05-19 01:28:20'),
(82, '50691183', 'https://loremflickr.com/400/400/player,sport', 179, 'Nikolas', 'Heidi', 'Ratke', 'Schulist', 5, 17, 3, 30, 3, 'shields.jacky@nolan.com', NULL, NULL, '2019-05-19 01:28:20', '2019-05-19 01:28:20'),
(83, '1135819255', 'https://loremflickr.com/400/400/face,woman', 181, 'Katlynn', 'Litzy', 'Ernser', 'O\'Reilly', 5, 12, 3, 72, 1, 'oryan@gmail.com', NULL, NULL, '2019-05-19 01:28:20', '2019-05-19 01:28:20'),
(84, '1385125589', 'https://loremflickr.com/400/400/player,soccer', 183, 'Susie', 'Ernest', 'Becker', 'Kunze', 3, 1, 3, 57, 7, 'melisa97@hotmail.com', NULL, NULL, '2019-05-19 01:28:20', '2019-05-19 01:28:20'),
(85, '115841954', 'https://loremflickr.com/400/400/player,football', 185, 'Allie', 'Arielle', 'Konopelski', 'Dickens', 3, 24, 1, 30, 1, 'hauck.jovani@hotmail.com', NULL, NULL, '2019-05-19 01:28:20', '2019-05-19 01:28:20'),
(86, '845805736', 'https://loremflickr.com/400/400/person', 187, 'Connie', 'Madison', 'Thompson', 'Klein', 3, 25, 2, 91, 1, 'amalia41@berge.com', NULL, NULL, '2019-05-19 01:28:21', '2019-05-19 01:28:21'),
(87, '1144188351', 'https://loremflickr.com/400/400/player,man', 189, 'Lennie', 'Korey', 'Bogan', 'Konopelski', 6, 37, 3, 58, 10, 'shaylee00@halvorson.net', NULL, NULL, '2019-05-19 01:28:21', '2019-05-19 01:28:21'),
(88, '190126357', 'https://loremflickr.com/400/400/player,sport', 191, 'Jadon', 'Rosella', 'Hand', 'Johns', 8, 23, 1, 79, 9, 'geovany.howell@hotmail.com', NULL, NULL, '2019-05-19 01:28:22', '2019-05-19 01:28:22'),
(89, '423273665', 'https://loremflickr.com/400/400/person', 193, 'Emma', 'Victoria', 'Rogahn', 'Hettinger', 2, 29, 2, 57, 4, 'maxime31@yahoo.com', NULL, NULL, '2019-05-19 01:28:22', '2019-05-19 01:28:22'),
(90, '236946705', 'https://loremflickr.com/400/400/player,soccer', 195, 'Ova', 'Bella', 'Skiles', 'Ferry', 6, 2, 2, 80, 7, 'hermiston.jude@raynor.info', NULL, NULL, '2019-05-19 01:28:22', '2019-05-19 01:28:22'),
(91, '638872408', 'https://loremflickr.com/400/400/player,tennis', 197, 'Coy', 'Sadye', 'Champlin', 'Johnson', 3, 31, 1, 55, 6, 'prudence77@gmail.com', NULL, NULL, '2019-05-19 01:28:23', '2019-05-19 01:28:23'),
(92, '1266920288', 'https://loremflickr.com/400/400/player,tennis', 199, 'Faye', 'Tessie', 'Volkman', 'Williamson', 2, 33, 2, 97, 3, 'swest@zieme.biz', NULL, NULL, '2019-05-19 01:28:23', '2019-05-19 01:28:23'),
(93, '572780280', 'https://loremflickr.com/400/400/player,soccer', 201, 'Scot', 'Jamey', 'Boehm', 'Lueilwitz', 5, 47, 2, 76, 1, 'lizzie98@adams.info', NULL, NULL, '2019-05-19 01:28:23', '2019-05-19 01:28:23'),
(94, '997338566', 'https://loremflickr.com/400/400/face,man', 203, 'Verlie', 'Herta', 'Dach', 'Lueilwitz', 4, 34, 1, 38, 1, 'npouros@gmail.com', NULL, NULL, '2019-05-19 01:28:23', '2019-05-19 01:28:23'),
(95, '771253802', 'https://loremflickr.com/400/400/player,tennis', 205, 'Maritza', 'Jordyn', 'Konopelski', 'McLaughlin', 8, 8, 2, 94, 4, 'edwina.konopelski@yahoo.com', NULL, NULL, '2019-05-19 01:28:24', '2019-05-19 01:28:24'),
(96, '1455152701', 'https://loremflickr.com/400/400/face,man', 207, 'Carlee', 'Laurence', 'Boyle', 'Gutkowski', 2, 14, 2, 50, 4, 'hyatt.natalie@mills.com', NULL, NULL, '2019-05-19 01:28:24', '2019-05-19 01:28:24'),
(97, '549097694', 'https://loremflickr.com/400/400/face,woman', 209, 'Kristin', 'Elizabeth', 'O\'Reilly', 'Marquardt', 8, 11, 3, 60, 10, 'gladyce44@wehner.com', NULL, NULL, '2019-05-19 01:28:25', '2019-05-19 01:28:25'),
(98, '1298965191', 'https://loremflickr.com/400/400/player,football', 211, 'Murphy', 'Precious', 'Keebler', 'Cremin', 6, 20, 2, 73, 8, 'fprice@luettgen.net', NULL, NULL, '2019-05-19 01:28:25', '2019-05-19 01:28:25'),
(99, '1437397769', 'https://loremflickr.com/400/400/player,man', 213, 'Dixie', 'Trudie', 'Kassulke', 'Beer', 3, 24, 1, 40, 9, 'alvis.walker@walker.org', NULL, NULL, '2019-05-19 01:28:25', '2019-05-19 01:28:25'),
(100, '1152015336', 'https://loremflickr.com/400/400/player,tennis', 215, 'Woodrow', 'Brennon', 'Durgan', 'Abernathy', 5, 25, 2, 89, 10, 'scottie.russel@connelly.org', NULL, NULL, '2019-05-19 01:28:25', '2019-05-19 01:28:25'),
(101, '158339768', 'https://loremflickr.com/400/400/person', 217, 'Reanna', 'Hassan', 'Doyle', 'Roberts', 8, 3, 1, 54, 6, 'uhegmann@oreilly.com', NULL, NULL, '2019-05-19 01:28:26', '2019-05-19 01:28:26'),
(102, '1346900469', 'https://loremflickr.com/400/400/player,sport', 219, 'Theron', 'Joanny', 'Haag', 'Gibson', 1, 24, 1, 77, 5, 'regan55@hotmail.com', NULL, NULL, '2019-05-19 01:28:26', '2019-05-19 01:28:26'),
(103, '1287005851', 'https://loremflickr.com/400/400/player,sport', 221, 'Kiley', 'Wayne', 'Casper', 'Smitham', 1, 47, 2, 72, 5, 'tremblay.domenick@hoeger.biz', NULL, NULL, '2019-05-19 01:28:26', '2019-05-19 01:28:26'),
(104, '605729734', 'https://loremflickr.com/400/400/player,tennis', 223, 'Brandi', 'Johann', 'Reichel', 'Feil', 5, 8, 3, 38, 5, 'npollich@beer.com', NULL, NULL, '2019-05-19 01:28:26', '2019-05-19 01:28:26'),
(105, '1248542907', 'https://loremflickr.com/400/400/player,tennis', 225, 'Garrick', 'Dannie', 'Friesen', 'Daugherty', 3, 22, 3, 47, 5, 'cordie.kuvalis@jacobi.com', NULL, NULL, '2019-05-19 01:28:27', '2019-05-19 01:28:27'),
(106, '678239936', 'https://loremflickr.com/400/400/person', 227, 'Leslie', 'Estel', 'Toy', 'Ebert', 8, 35, 1, 84, 6, 'marjory56@hotmail.com', NULL, NULL, '2019-05-19 01:28:27', '2019-05-19 01:28:27'),
(107, '72049432', 'https://loremflickr.com/400/400/person', 229, 'Heather', 'Concepcion', 'Stracke', 'Williamson', 1, 28, 2, 16, 9, 'funk.brandy@yahoo.com', NULL, NULL, '2019-05-19 01:28:27', '2019-05-19 01:28:27'),
(108, '1051798081', 'https://loremflickr.com/400/400/person', 231, 'Tabitha', 'Zita', 'Sporer', 'Brakus', 3, 3, 3, 45, 3, 'barney74@hotmail.com', NULL, NULL, '2019-05-19 01:28:27', '2019-05-19 01:28:27'),
(109, '1493675519', 'https://loremflickr.com/400/400/face,man', 233, 'Clark', 'Barrett', 'Conroy', 'Feeney', 4, 8, 3, 7, 4, 'jleuschke@hotmail.com', NULL, NULL, '2019-05-19 01:28:28', '2019-05-19 01:28:28'),
(110, '25346708', 'https://loremflickr.com/400/400/player,tennis', 235, 'Rachelle', 'Marcelle', 'Koss', 'Schroeder', 5, 12, 1, 6, 9, 'graciela.russel@gmail.com', NULL, NULL, '2019-05-19 01:28:28', '2019-05-19 01:28:28'),
(111, '139304271', 'https://loremflickr.com/400/400/player,football', 237, 'Lorine', 'Tyshawn', 'Heathcote', 'Dickens', 7, 35, 2, 6, 8, 'larson.amelie@hotmail.com', NULL, NULL, '2019-05-19 01:28:28', '2019-05-19 01:28:28'),
(112, '1126576', 'https://loremflickr.com/400/400/face,man', 239, 'Verlie', 'Thea', 'Kuvalis', 'Doyle', 5, 48, 1, 21, 2, 'will.steve@yahoo.com', NULL, NULL, '2019-05-19 01:28:28', '2019-05-19 01:28:28'),
(113, '275092798', 'https://loremflickr.com/400/400/player,sport', 241, 'Cornell', 'Price', 'Hane', 'Metz', 4, 39, 1, 49, 9, 'kiehn.alda@hauck.biz', NULL, NULL, '2019-05-19 01:28:28', '2019-05-19 01:28:28'),
(114, '933391654', 'https://loremflickr.com/400/400/player,soccer', 243, 'Armand', 'Marlon', 'Hauck', 'Herman', 4, 15, 3, 3, 2, 'gulgowski.piper@gmail.com', NULL, NULL, '2019-05-19 01:28:29', '2019-05-19 01:28:29'),
(115, '1102954046', 'https://loremflickr.com/400/400/player,tennis', 245, 'Devante', 'Ralph', 'Schuster', 'King', 7, 4, 2, 28, 9, 'sfarrell@gmail.com', NULL, NULL, '2019-05-19 01:28:29', '2019-05-19 01:28:29'),
(116, '1280900131', 'https://loremflickr.com/400/400/person', 247, 'Judy', 'Isabell', 'Yost', 'Treutel', 8, 38, 1, 87, 5, 'barrows.rosendo@gmail.com', NULL, NULL, '2019-05-19 01:28:29', '2019-05-19 01:28:29'),
(117, '1515208676', 'https://loremflickr.com/400/400/player,soccer', 249, 'Bernardo', 'Marcelle', 'Dach', 'Schamberger', 3, 5, 3, 3, 9, 'hane.araceli@rolfson.com', NULL, NULL, '2019-05-19 01:28:29', '2019-05-19 01:28:29'),
(118, '715721417', 'https://loremflickr.com/400/400/player,football', 251, 'Aliyah', 'Lillie', 'King', 'Kuhic', 8, 48, 1, 10, 2, 'osmith@gmail.com', NULL, NULL, '2019-05-19 01:28:30', '2019-05-19 01:28:30'),
(119, '1170665859', 'https://loremflickr.com/400/400/face,man', 253, 'Adelbert', 'Jeff', 'Hammes', 'Greenfelder', 3, 31, 3, 32, 3, 'heather.beatty@boyle.com', NULL, NULL, '2019-05-19 01:28:30', '2019-05-19 01:28:30'),
(120, '934814750', 'https://loremflickr.com/400/400/player,football', 255, 'Cody', 'Shane', 'Vandervort', 'O\'Connell', 4, 36, 2, 5, 9, 'ledner.hayden@nicolas.com', NULL, NULL, '2019-05-19 01:28:30', '2019-05-19 01:28:30'),
(121, '1238671838', 'https://loremflickr.com/400/400/face,man', 257, 'Katelin', 'Vella', 'Kemmer', 'Considine', 6, 15, 1, 54, 4, 'berge.ruby@hodkiewicz.com', NULL, NULL, '2019-05-19 01:28:30', '2019-05-19 01:28:30'),
(122, '1541091936', 'https://loremflickr.com/400/400/person', 259, 'Cloyd', 'Uriel', 'Raynor', 'Kertzmann', 2, 34, 3, 87, 7, 'mccullough.molly@hotmail.com', NULL, NULL, '2019-05-19 01:28:30', '2019-05-19 01:28:30'),
(123, '966643277', 'https://loremflickr.com/400/400/player,soccer', 261, 'Filiberto', 'Gregory', 'Monahan', 'O\'Hara', 1, 7, 1, 80, 3, 'herbert.wolf@gmail.com', NULL, NULL, '2019-05-19 01:28:31', '2019-05-19 01:28:31'),
(124, '1454514025', 'https://loremflickr.com/400/400/face,man', 263, 'Desmond', 'Elizabeth', 'Hirthe', 'Corkery', 1, 4, 3, 39, 2, 'okulas@trantow.biz', NULL, NULL, '2019-05-19 01:28:31', '2019-05-19 01:28:31'),
(125, '1510561477', 'https://loremflickr.com/400/400/player,soccer', 265, 'Demarcus', 'Kiana', 'Kling', 'Marvin', 1, 19, 1, 9, 6, 'rdamore@stark.info', NULL, NULL, '2019-05-19 01:28:31', '2019-05-19 01:28:31'),
(126, '705742018', 'https://loremflickr.com/400/400/person', 267, 'Chester', 'Jazlyn', 'Lemke', 'Fahey', 5, 46, 2, 46, 6, 'jdaugherty@yahoo.com', NULL, NULL, '2019-05-19 01:28:31', '2019-05-19 01:28:31'),
(127, '383417146', 'https://loremflickr.com/400/400/face,man', 269, 'Caesar', 'Mercedes', 'Kuvalis', 'Daugherty', 1, 29, 3, 91, 9, 'kelsi.beier@yahoo.com', NULL, NULL, '2019-05-19 01:28:31', '2019-05-19 01:28:31'),
(128, '1063241185', 'https://loremflickr.com/400/400/player,man', 271, 'Karelle', 'Karlee', 'Murray', 'Lynch', 8, 23, 3, 31, 4, 'pollich.buster@schmitt.org', NULL, NULL, '2019-05-19 01:28:32', '2019-05-19 01:28:32'),
(129, '8695911', 'https://loremflickr.com/400/400/player,tennis', 273, 'Lia', 'Shaina', 'Hegmann', 'Sauer', 6, 39, 2, 13, 1, 'cummerata.joyce@veum.com', NULL, NULL, '2019-05-19 01:28:32', '2019-05-19 01:28:32'),
(130, '845984258', 'https://loremflickr.com/400/400/player,man', 275, 'Orie', 'Jaqueline', 'Lakin', 'Satterfield', 5, 48, 1, 31, 7, 'frederick.pollich@gusikowski.com', NULL, NULL, '2019-05-19 01:28:32', '2019-05-19 01:28:32'),
(131, '292265542', 'https://loremflickr.com/400/400/player,football', 277, 'Jaren', 'Halie', 'Gulgowski', 'Morissette', 4, 9, 1, 54, 4, 'tate27@hotmail.com', NULL, NULL, '2019-05-19 01:28:32', '2019-05-19 01:28:32'),
(132, '1534789327', 'https://loremflickr.com/400/400/face,woman', 279, 'Mackenzie', 'Jammie', 'Wehner', 'Bechtelar', 3, 46, 3, 69, 6, 'shaylee.carter@jones.com', NULL, NULL, '2019-05-19 01:28:33', '2019-05-19 01:28:33'),
(133, '45024052', 'https://loremflickr.com/400/400/person', 281, 'Easton', 'Chadd', 'Jacobs', 'Bradtke', 4, 18, 3, 63, 4, 'uzboncak@purdy.com', NULL, NULL, '2019-05-19 01:28:33', '2019-05-19 01:28:33'),
(134, '1464340865', 'https://loremflickr.com/400/400/player,soccer', 283, 'Antwon', 'Cassandre', 'Glover', 'Lindgren', 3, 26, 1, 14, 4, 'damore.norwood@kirlin.net', NULL, NULL, '2019-05-19 01:28:33', '2019-05-19 01:28:33'),
(135, '1077173272', 'https://loremflickr.com/400/400/player,football', 285, 'Jennings', 'Lew', 'Lynch', 'Crist', 2, 18, 3, 76, 8, 'nhill@yahoo.com', NULL, NULL, '2019-05-19 01:28:33', '2019-05-19 01:28:33'),
(136, '557871357', 'https://loremflickr.com/400/400/player,soccer', 287, 'Cristian', 'Roosevelt', 'Bins', 'Lindgren', 3, 30, 3, 69, 1, 'favian.cronin@hotmail.com', NULL, NULL, '2019-05-19 01:28:34', '2019-05-19 01:28:34'),
(137, '1097359629', 'https://loremflickr.com/400/400/face,woman', 289, 'Delfina', 'Tobin', 'Ruecker', 'Lesch', 6, 35, 2, 89, 7, 'norval.von@morar.com', NULL, NULL, '2019-05-19 01:28:34', '2019-05-19 01:28:34'),
(138, '113069894', 'https://loremflickr.com/400/400/player,sport', 291, 'Bradley', 'Ocie', 'Bednar', 'Abbott', 7, 13, 1, 5, 3, 'seichmann@gmail.com', NULL, NULL, '2019-05-19 01:28:34', '2019-05-19 01:28:34'),
(139, '574782013', 'https://loremflickr.com/400/400/player,sport', 293, 'Johnathan', 'Elinor', 'Rolfson', 'Douglas', 4, 3, 2, 60, 2, 'aric60@yahoo.com', NULL, NULL, '2019-05-19 01:28:34', '2019-05-19 01:28:34'),
(140, '519641318', 'https://loremflickr.com/400/400/player,football', 295, 'Tanya', 'Eric', 'Nolan', 'Langworth', 1, 42, 1, 4, 4, 'wwitting@wehner.info', NULL, NULL, '2019-05-19 01:28:34', '2019-05-19 01:28:34'),
(141, '691134412', 'https://loremflickr.com/400/400/player,tennis', 297, 'Kelley', 'Darius', 'Grant', 'Moore', 4, 17, 2, 38, 9, 'imani63@gmail.com', NULL, NULL, '2019-05-19 01:28:35', '2019-05-19 01:28:35'),
(142, '462891515', 'https://loremflickr.com/400/400/player,football', 299, 'Ebba', 'Allene', 'Gleichner', 'Keeling', 7, 19, 3, 10, 3, 'klocko.lisandro@morar.biz', NULL, NULL, '2019-05-19 01:28:35', '2019-05-19 01:28:35'),
(143, '184150530', 'https://loremflickr.com/400/400/player,football', 301, 'Petra', 'Laverne', 'Senger', 'Maggio', 2, 30, 1, 100, 5, 'shayne.lakin@collins.com', NULL, NULL, '2019-05-19 01:28:35', '2019-05-19 01:28:35'),
(144, '1109099649', 'https://loremflickr.com/400/400/face,man', 303, 'April', 'Genoveva', 'Corkery', 'Armstrong', 4, 42, 1, 97, 8, 'rory50@yahoo.com', NULL, NULL, '2019-05-19 01:28:35', '2019-05-19 01:28:35'),
(145, '733945462', 'https://loremflickr.com/400/400/player,soccer', 305, 'Freddy', 'Jeanette', 'Braun', 'Roob', 7, 47, 3, 74, 6, 'dtoy@bechtelar.com', NULL, NULL, '2019-05-19 01:28:36', '2019-05-19 01:28:36'),
(146, '161971088', 'https://loremflickr.com/400/400/player,sport', 307, 'Alexie', 'Rocio', 'Johnson', 'Ankunding', 7, 15, 2, 14, 7, 'ryley65@dooley.biz', NULL, NULL, '2019-05-19 01:28:36', '2019-05-19 01:28:36'),
(147, '36172060', 'https://loremflickr.com/400/400/face,woman', 309, 'Raleigh', 'Vincent', 'Huels', 'Terry', 4, 41, 2, 54, 10, 'zkunde@pfeffer.com', NULL, NULL, '2019-05-19 01:28:36', '2019-05-19 01:28:36'),
(148, '451966980', 'https://loremflickr.com/400/400/player,sport', 311, 'Kris', 'Geoffrey', 'Ritchie', 'Schmitt', 3, 40, 3, 87, 7, 'gennaro85@gmail.com', NULL, NULL, '2019-05-19 01:28:36', '2019-05-19 01:28:36'),
(149, '148340439', 'https://loremflickr.com/400/400/player,soccer', 313, 'Ottilie', 'Maverick', 'Romaguera', 'Pollich', 6, 13, 2, 11, 4, 'dasia95@gmail.com', NULL, NULL, '2019-05-19 01:28:36', '2019-05-19 01:28:36'),
(150, '478264484', 'https://loremflickr.com/400/400/face,woman', 315, 'Salma', 'Nicole', 'Koss', 'Marquardt', 3, 17, 3, 71, 5, 'lebsack.annette@gmail.com', NULL, NULL, '2019-05-19 01:28:37', '2019-05-19 01:28:37'),
(151, '1132182066', 'https://loremflickr.com/400/400/player,soccer', 317, 'Brenda', 'Rhett', 'Larson', 'Prosacco', 3, 27, 1, 87, 9, 'suzanne.homenick@hotmail.com', NULL, NULL, '2019-05-19 01:28:37', '2019-05-19 01:28:37'),
(152, '1448684065', 'https://loremflickr.com/400/400/player,football', 319, 'Miracle', 'Bert', 'Blanda', 'Huel', 3, 26, 1, 64, 4, 'turner.mariela@hotmail.com', NULL, NULL, '2019-05-19 01:28:37', '2019-05-19 01:28:37'),
(153, '216896396', 'https://loremflickr.com/400/400/face,woman', 321, 'Layne', 'Amely', 'Heller', 'Hane', 7, 45, 1, 75, 2, 'kgaylord@gmail.com', NULL, NULL, '2019-05-19 01:28:37', '2019-05-19 01:28:37'),
(154, '1371382959', 'https://loremflickr.com/400/400/player,tennis', 323, 'Michel', 'Kayley', 'Nienow', 'Marvin', 6, 49, 2, 7, 8, 'fprohaska@yahoo.com', NULL, NULL, '2019-05-19 01:28:37', '2019-05-19 01:28:37'),
(155, '809991775', 'https://loremflickr.com/400/400/face,woman', 325, 'Herminio', 'Lynn', 'Blick', 'Lang', 1, 27, 3, 88, 5, 'caesar98@mckenzie.com', NULL, NULL, '2019-05-19 01:28:38', '2019-05-19 01:28:38'),
(156, '944102177', 'https://loremflickr.com/400/400/face,man', 327, 'Cathrine', 'Lizzie', 'Watsica', 'Morar', 1, 49, 2, 47, 4, 'leonardo51@hotmail.com', NULL, NULL, '2019-05-19 01:28:38', '2019-05-19 01:28:38'),
(157, '672832416', 'https://loremflickr.com/400/400/face,woman', 329, 'Derrick', 'Wyatt', 'Swaniawski', 'Gleason', 6, 18, 3, 12, 6, 'brielle13@hotmail.com', NULL, NULL, '2019-05-19 01:28:38', '2019-05-19 01:28:38'),
(158, '1133069136', 'https://loremflickr.com/400/400/player,tennis', 331, 'Oran', 'Annabel', 'Zemlak', 'Collier', 4, 49, 2, 6, 6, 'phoebe18@rempel.com', NULL, NULL, '2019-05-19 01:28:39', '2019-05-19 01:28:39'),
(159, '253863407', 'https://loremflickr.com/400/400/person', 333, 'Destany', 'Candelario', 'Waters', 'Langosh', 4, 18, 2, 85, 5, 'adickinson@hotmail.com', NULL, NULL, '2019-05-19 01:28:39', '2019-05-19 01:28:39'),
(160, '359894715', 'https://loremflickr.com/400/400/player,sport', 335, 'Shanon', 'Nora', 'Paucek', 'McGlynn', 3, 43, 3, 100, 9, 'ora.luettgen@yahoo.com', NULL, NULL, '2019-05-19 01:28:39', '2019-05-19 01:28:39'),
(161, '193167136', 'https://loremflickr.com/400/400/player,soccer', 337, 'Addison', 'Laila', 'McKenzie', 'Rath', 4, 22, 2, 7, 7, 'ndonnelly@ullrich.com', NULL, NULL, '2019-05-19 01:28:39', '2019-05-19 01:28:39'),
(162, '635347880', 'https://loremflickr.com/400/400/face,man', 339, 'Jaylin', 'Candice', 'Hackett', 'Goldner', 3, 13, 2, 77, 10, 'kristopher.oreilly@will.com', NULL, NULL, '2019-05-19 01:28:39', '2019-05-19 01:28:39');

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
(1, 'Florida', NULL, '2019-05-19 01:27:28', '2019-05-19 01:27:28'),
(2, 'Delaware', NULL, '2019-05-19 01:27:28', '2019-05-19 01:27:28'),
(3, 'Arkansas', NULL, '2019-05-19 01:27:28', '2019-05-19 01:27:28'),
(4, 'Indiana', NULL, '2019-05-19 01:27:29', '2019-05-19 01:27:29'),
(5, 'West Virginia', NULL, '2019-05-19 01:27:29', '2019-05-19 01:27:29'),
(6, 'Colorado', NULL, '2019-05-19 01:27:29', '2019-05-19 01:27:29'),
(7, 'Washington', NULL, '2019-05-19 01:27:29', '2019-05-19 01:27:29'),
(8, 'Montana', NULL, '2019-05-19 01:27:29', '2019-05-19 01:27:29'),
(9, 'New York', NULL, '2019-05-19 01:27:29', '2019-05-19 01:27:29'),
(10, 'Washington', NULL, '2019-05-19 01:27:29', '2019-05-19 01:27:29'),
(11, 'Florida', NULL, '2019-05-19 01:27:29', '2019-05-19 01:27:29'),
(12, 'Texas', NULL, '2019-05-19 01:27:29', '2019-05-19 01:27:29'),
(13, 'Utah', NULL, '2019-05-19 01:27:29', '2019-05-19 01:27:29'),
(14, 'Delaware', NULL, '2019-05-19 01:27:29', '2019-05-19 01:27:29'),
(15, 'Virginia', NULL, '2019-05-19 01:27:29', '2019-05-19 01:27:29'),
(16, 'Montana', NULL, '2019-05-19 01:27:29', '2019-05-19 01:27:29'),
(17, 'Maryland', NULL, '2019-05-19 01:27:29', '2019-05-19 01:27:29'),
(18, 'Vermont', NULL, '2019-05-19 01:27:29', '2019-05-19 01:27:29'),
(19, 'Louisiana', NULL, '2019-05-19 01:27:30', '2019-05-19 01:27:30'),
(20, 'Nebraska', NULL, '2019-05-19 01:27:30', '2019-05-19 01:27:30'),
(21, 'Alabama', NULL, '2019-05-19 01:27:30', '2019-05-19 01:27:30'),
(22, 'Indiana', NULL, '2019-05-19 01:27:30', '2019-05-19 01:27:30'),
(23, 'Louisiana', NULL, '2019-05-19 01:27:30', '2019-05-19 01:27:30'),
(24, 'Wisconsin', NULL, '2019-05-19 01:27:30', '2019-05-19 01:27:30'),
(25, 'Colorado', NULL, '2019-05-19 01:27:30', '2019-05-19 01:27:30'),
(26, 'Ohio', NULL, '2019-05-19 01:27:30', '2019-05-19 01:27:30'),
(27, 'Alabama', NULL, '2019-05-19 01:27:30', '2019-05-19 01:27:30'),
(28, 'New York', NULL, '2019-05-19 01:27:30', '2019-05-19 01:27:30'),
(29, 'Idaho', NULL, '2019-05-19 01:27:30', '2019-05-19 01:27:30'),
(30, 'Texas', NULL, '2019-05-19 01:27:30', '2019-05-19 01:27:30'),
(31, 'Mississippi', NULL, '2019-05-19 01:27:30', '2019-05-19 01:27:30'),
(32, 'Iowa', NULL, '2019-05-19 01:27:30', '2019-05-19 01:27:30'),
(33, 'Kansas', NULL, '2019-05-19 01:27:30', '2019-05-19 01:27:30'),
(34, 'Maine', NULL, '2019-05-19 01:27:31', '2019-05-19 01:27:31'),
(35, 'Maine', NULL, '2019-05-19 01:27:31', '2019-05-19 01:27:31'),
(36, 'Washington', NULL, '2019-05-19 01:27:31', '2019-05-19 01:27:31'),
(37, 'Oklahoma', NULL, '2019-05-19 01:27:31', '2019-05-19 01:27:31'),
(38, 'West Virginia', NULL, '2019-05-19 01:27:31', '2019-05-19 01:27:31'),
(39, 'Arizona', NULL, '2019-05-19 01:27:31', '2019-05-19 01:27:31'),
(40, 'Virginia', NULL, '2019-05-19 01:27:31', '2019-05-19 01:27:31'),
(41, 'Washington', NULL, '2019-05-19 01:27:32', '2019-05-19 01:27:32'),
(42, 'Texas', NULL, '2019-05-19 01:27:32', '2019-05-19 01:27:32'),
(43, 'Mississippi', NULL, '2019-05-19 01:27:32', '2019-05-19 01:27:32'),
(44, 'South Dakota', NULL, '2019-05-19 01:27:32', '2019-05-19 01:27:32'),
(45, 'New Mexico', NULL, '2019-05-19 01:27:32', '2019-05-19 01:27:32'),
(46, 'Alabama', NULL, '2019-05-19 01:27:32', '2019-05-19 01:27:32'),
(47, 'Connecticut', NULL, '2019-05-19 01:27:32', '2019-05-19 01:27:32'),
(48, 'District of Columbia', NULL, '2019-05-19 01:27:32', '2019-05-19 01:27:32'),
(49, 'California', NULL, '2019-05-19 01:27:32', '2019-05-19 01:27:32'),
(50, 'California', NULL, '2019-05-19 01:27:32', '2019-05-19 01:27:32');

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
(1, 'Alivia Knolls', '13', '31', NULL, '2019-05-19 01:27:38', '2019-05-19 01:27:38'),
(2, 'Johnston Coves', '43', '33', NULL, '2019-05-19 01:27:38', '2019-05-19 01:27:38'),
(3, 'Mose Roads', '31', '16', NULL, '2019-05-19 01:27:38', '2019-05-19 01:27:38'),
(4, 'Emmerich Knoll', '29', '34', NULL, '2019-05-19 01:27:38', '2019-05-19 01:27:38'),
(5, 'Mckenzie Prairie', '35', '6', NULL, '2019-05-19 01:27:38', '2019-05-19 01:27:38'),
(6, 'Tanya Fork', '44', '33', NULL, '2019-05-19 01:27:38', '2019-05-19 01:27:38'),
(7, 'Russel Avenue', '30', '14', NULL, '2019-05-19 01:27:38', '2019-05-19 01:27:38'),
(8, 'Gulgowski Freeway', '30', '35', NULL, '2019-05-19 01:27:39', '2019-05-19 01:27:39'),
(9, 'Ebert Row', '25', '8', NULL, '2019-05-19 01:27:39', '2019-05-19 01:27:39'),
(10, 'Pagac Plaza', '1', '33', NULL, '2019-05-19 01:27:39', '2019-05-19 01:27:39'),
(11, 'Schiller Road', '25', '12', NULL, '2019-05-19 01:27:39', '2019-05-19 01:27:39'),
(12, 'Elian Vista', '19', '43', NULL, '2019-05-19 01:27:39', '2019-05-19 01:27:39'),
(13, 'Little Path', '21', '21', NULL, '2019-05-19 01:27:39', '2019-05-19 01:27:39'),
(14, 'Lubowitz Ford', '32', '47', NULL, '2019-05-19 01:27:39', '2019-05-19 01:27:39'),
(15, 'Parisian Rapid', '30', '12', NULL, '2019-05-19 01:27:39', '2019-05-19 01:27:39'),
(16, 'Hermann Crossing', '10', '21', NULL, '2019-05-19 01:27:39', '2019-05-19 01:27:39'),
(17, 'Wyman Place', '42', '32', NULL, '2019-05-19 01:27:39', '2019-05-19 01:27:39'),
(18, 'Jovany Crescent', '13', '1', NULL, '2019-05-19 01:27:39', '2019-05-19 01:27:39'),
(19, 'Frami Mission', '4', '23', NULL, '2019-05-19 01:27:39', '2019-05-19 01:27:39'),
(20, 'Jana Vista', '5', '45', NULL, '2019-05-19 01:27:39', '2019-05-19 01:27:39'),
(21, 'Lemke Route', '23', '18', NULL, '2019-05-19 01:27:39', '2019-05-19 01:27:39'),
(22, 'Dooley Row', '50', '4', NULL, '2019-05-19 01:27:39', '2019-05-19 01:27:39'),
(23, 'Berry Flat', '7', '11', NULL, '2019-05-19 01:27:39', '2019-05-19 01:27:39'),
(24, 'Terry Mission', '46', '37', NULL, '2019-05-19 01:27:39', '2019-05-19 01:27:39'),
(25, 'Bethany Divide', '39', '50', NULL, '2019-05-19 01:27:39', '2019-05-19 01:27:39'),
(26, 'Kemmer Stream', '27', '13', NULL, '2019-05-19 01:27:39', '2019-05-19 01:27:39'),
(27, 'Olson Meadow', '35', '40', NULL, '2019-05-19 01:27:39', '2019-05-19 01:27:39'),
(28, 'Norwood Haven', '6', '31', NULL, '2019-05-19 01:27:40', '2019-05-19 01:27:40'),
(29, 'Itzel Park', '32', '26', NULL, '2019-05-19 01:27:40', '2019-05-19 01:27:40'),
(30, 'Horacio Pines', '30', '45', NULL, '2019-05-19 01:27:40', '2019-05-19 01:27:40'),
(31, 'Cory Knolls', '19', '18', NULL, '2019-05-19 01:27:40', '2019-05-19 01:27:40'),
(32, 'Tianna Center', '33', '33', NULL, '2019-05-19 01:27:40', '2019-05-19 01:27:40'),
(33, 'Henderson Estate', '42', '34', NULL, '2019-05-19 01:27:40', '2019-05-19 01:27:40'),
(34, 'Sterling Mountain', '23', '39', NULL, '2019-05-19 01:27:40', '2019-05-19 01:27:40'),
(35, 'Ava Ridges', '39', '6', NULL, '2019-05-19 01:27:40', '2019-05-19 01:27:40'),
(36, 'Johnston Path', '17', '40', NULL, '2019-05-19 01:27:40', '2019-05-19 01:27:40'),
(37, 'Cronin Plains', '8', '3', NULL, '2019-05-19 01:27:40', '2019-05-19 01:27:40'),
(38, 'Rath Curve', '8', '21', NULL, '2019-05-19 01:27:40', '2019-05-19 01:27:40'),
(39, 'Nola Corner', '35', '33', NULL, '2019-05-19 01:27:40', '2019-05-19 01:27:40'),
(40, 'Alexis Mountains', '46', '13', NULL, '2019-05-19 01:27:40', '2019-05-19 01:27:40'),
(41, 'Lois Canyon', '1', '1', NULL, '2019-05-19 01:27:40', '2019-05-19 01:27:40'),
(42, 'Rau Roads', '22', '34', NULL, '2019-05-19 01:27:40', '2019-05-19 01:27:40'),
(43, 'Bechtelar Highway', '10', '44', NULL, '2019-05-19 01:27:40', '2019-05-19 01:27:40'),
(44, 'Newton Fort', '1', '6', NULL, '2019-05-19 01:27:40', '2019-05-19 01:27:40'),
(45, 'King Coves', '27', '34', NULL, '2019-05-19 01:27:40', '2019-05-19 01:27:40'),
(46, 'Trace Fields', '34', '24', NULL, '2019-05-19 01:27:41', '2019-05-19 01:27:41'),
(47, 'Harvey Squares', '32', '10', NULL, '2019-05-19 01:27:41', '2019-05-19 01:27:41'),
(48, 'Chris Manor', '4', '35', NULL, '2019-05-19 01:27:41', '2019-05-19 01:27:41'),
(49, 'Kris Extension', '41', '5', NULL, '2019-05-19 01:27:41', '2019-05-19 01:27:41'),
(50, 'Quigley Stravenue', '37', '12', NULL, '2019-05-19 01:27:41', '2019-05-19 01:27:41'),
(51, 'Odie Isle', '10', '1', NULL, '2019-05-19 01:27:41', '2019-05-19 01:27:41'),
(52, 'Wilfred Alley', '25', '6', NULL, '2019-05-19 01:27:41', '2019-05-19 01:27:41'),
(53, 'Lincoln Dale', '46', '44', NULL, '2019-05-19 01:27:41', '2019-05-19 01:27:41'),
(54, 'Vincenza Underpass', '7', '7', NULL, '2019-05-19 01:27:41', '2019-05-19 01:27:41'),
(55, 'Lawson Fork', '18', '39', NULL, '2019-05-19 01:27:41', '2019-05-19 01:27:41'),
(56, 'Bashirian Mountain', '19', '47', NULL, '2019-05-19 01:27:41', '2019-05-19 01:27:41'),
(57, 'Annie Meadows', '11', '39', NULL, '2019-05-19 01:27:41', '2019-05-19 01:27:41'),
(58, 'Alexander Bypass', '16', '15', NULL, '2019-05-19 01:27:41', '2019-05-19 01:27:41'),
(59, 'Borer Mews', '6', '3', NULL, '2019-05-19 01:27:41', '2019-05-19 01:27:41'),
(60, 'Grady Rapids', '27', '13', NULL, '2019-05-19 01:27:41', '2019-05-19 01:27:41'),
(61, 'Beier Curve', '37', '44', NULL, '2019-05-19 01:27:41', '2019-05-19 01:27:41'),
(62, 'Bettye Club', '10', '43', NULL, '2019-05-19 01:27:41', '2019-05-19 01:27:41'),
(63, 'Ahmed Harbor', '50', '2', NULL, '2019-05-19 01:27:41', '2019-05-19 01:27:41'),
(64, 'Charley Points', '38', '49', NULL, '2019-05-19 01:27:41', '2019-05-19 01:27:41'),
(65, 'Nader Valleys', '38', '14', NULL, '2019-05-19 01:27:41', '2019-05-19 01:27:41'),
(66, 'Corbin Springs', '5', '26', NULL, '2019-05-19 01:27:41', '2019-05-19 01:27:41'),
(67, 'Ava Ville', '34', '50', NULL, '2019-05-19 01:27:42', '2019-05-19 01:27:42'),
(68, 'Darby Lake', '44', '4', NULL, '2019-05-19 01:27:42', '2019-05-19 01:27:42'),
(69, 'Amie Key', '18', '43', NULL, '2019-05-19 01:27:42', '2019-05-19 01:27:42'),
(70, 'Aubrey Plains', '19', '46', NULL, '2019-05-19 01:27:42', '2019-05-19 01:27:42'),
(71, 'Runolfsdottir Rest', '42', '19', NULL, '2019-05-19 01:27:42', '2019-05-19 01:27:42'),
(72, 'Stroman Mountains', '36', '15', NULL, '2019-05-19 01:27:42', '2019-05-19 01:27:42'),
(73, 'Jermain Burg', '19', '22', NULL, '2019-05-19 01:27:42', '2019-05-19 01:27:42'),
(74, 'Sheila Canyon', '10', '44', NULL, '2019-05-19 01:27:42', '2019-05-19 01:27:42'),
(75, 'Kaylee Inlet', '4', '48', NULL, '2019-05-19 01:27:42', '2019-05-19 01:27:42'),
(76, 'Hobart Ridges', '16', '22', NULL, '2019-05-19 01:27:42', '2019-05-19 01:27:42'),
(77, 'O\'Reilly Islands', '41', '41', NULL, '2019-05-19 01:27:42', '2019-05-19 01:27:42'),
(78, 'Julio Estate', '22', '14', NULL, '2019-05-19 01:27:42', '2019-05-19 01:27:42'),
(79, 'Celestine Overpass', '24', '45', NULL, '2019-05-19 01:27:42', '2019-05-19 01:27:42'),
(80, 'Muriel Hills', '37', '30', NULL, '2019-05-19 01:27:42', '2019-05-19 01:27:42'),
(81, 'Herzog Mountain', '21', '13', NULL, '2019-05-19 01:27:42', '2019-05-19 01:27:42'),
(82, 'Prudence Centers', '49', '48', NULL, '2019-05-19 01:27:42', '2019-05-19 01:27:42'),
(83, 'Dangelo Roads', '8', '13', NULL, '2019-05-19 01:27:42', '2019-05-19 01:27:42'),
(84, 'Eve Court', '24', '3', NULL, '2019-05-19 01:27:42', '2019-05-19 01:27:42'),
(85, 'Ruecker Skyway', '2', '21', NULL, '2019-05-19 01:27:43', '2019-05-19 01:27:43'),
(86, 'Feest Road', '15', '36', NULL, '2019-05-19 01:27:43', '2019-05-19 01:27:43'),
(87, 'Alexandre Burgs', '48', '12', NULL, '2019-05-19 01:27:43', '2019-05-19 01:27:43'),
(88, 'Lenore Creek', '9', '4', NULL, '2019-05-19 01:27:43', '2019-05-19 01:27:43'),
(89, 'Abe Stravenue', '22', '46', NULL, '2019-05-19 01:27:43', '2019-05-19 01:27:43'),
(90, 'Boyle Flat', '34', '43', NULL, '2019-05-19 01:27:43', '2019-05-19 01:27:43'),
(91, 'Pedro Meadow', '38', '6', NULL, '2019-05-19 01:27:43', '2019-05-19 01:27:43'),
(92, 'Wisoky Branch', '32', '5', NULL, '2019-05-19 01:27:43', '2019-05-19 01:27:43'),
(93, 'Turner Squares', '20', '39', NULL, '2019-05-19 01:27:43', '2019-05-19 01:27:43'),
(94, 'Elmer Vista', '36', '14', NULL, '2019-05-19 01:27:43', '2019-05-19 01:27:43'),
(95, 'Raquel Inlet', '17', '27', NULL, '2019-05-19 01:27:43', '2019-05-19 01:27:43'),
(96, 'Hassie Flat', '27', '2', NULL, '2019-05-19 01:27:43', '2019-05-19 01:27:43'),
(97, 'Conn Tunnel', '10', '28', NULL, '2019-05-19 01:27:43', '2019-05-19 01:27:43'),
(98, 'Champlin Summit', '6', '7', NULL, '2019-05-19 01:27:43', '2019-05-19 01:27:43'),
(99, 'Gladyce Course', '13', '14', NULL, '2019-05-19 01:27:43', '2019-05-19 01:27:43'),
(100, 'Macie Fall', '43', '26', NULL, '2019-05-19 01:27:43', '2019-05-19 01:27:43');

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
(1, '1517426306', 'Carter and Sons', 'Group', 'PARAFISCAL', '83g - 487', NULL, '2019-05-19 01:27:37', '2019-05-19 01:27:37'),
(2, '684833409', 'Spinka PLC', 'Ltd', 'ARL', 'cwj - 690', NULL, '2019-05-19 01:27:37', '2019-05-19 01:27:37'),
(3, '1513552468', 'Mills, Ernser and D\'Amore', 'Group', 'EPS', 'mr6 - 493', NULL, '2019-05-19 01:27:37', '2019-05-19 01:27:37'),
(4, '1474373494', 'Collier, Prohaska and Bogan', 'and Sons', 'ARL', '6m6 - 126', NULL, '2019-05-19 01:27:38', '2019-05-19 01:27:38'),
(5, '1267550433', 'Emard-Kuhn', 'and Sons', 'AFP', 'a2r - 890', NULL, '2019-05-19 01:27:38', '2019-05-19 01:27:38'),
(6, '999912697', 'Mueller, Mohr and Flatley', 'Inc', 'PARAFISCAL', 'm4i - 809', NULL, '2019-05-19 01:27:38', '2019-05-19 01:27:38'),
(7, '1105947076', 'Von LLC', 'and Sons', 'PARAFISCAL', '0o3 - 431', NULL, '2019-05-19 01:27:38', '2019-05-19 01:27:38'),
(8, '122643421', 'Mayer Group', 'Group', 'EPS', 'be5 - 958', NULL, '2019-05-19 01:27:38', '2019-05-19 01:27:38'),
(9, '352118739', 'Hammes, O\'Hara and Pfeffer', 'Group', 'EPS', '7jb - 233', NULL, '2019-05-19 01:27:38', '2019-05-19 01:27:38'),
(10, '940951218', 'Hills-Beer', 'Ltd', 'PARAFISCAL', '4kv - 519', NULL, '2019-05-19 01:27:38', '2019-05-19 01:27:38');

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
(1, 'Fase de grupos', 'Todos contra todos', NULL, '2019-05-19 01:28:58', '2019-05-19 01:28:58'),
(2, 'Octavos de final', 'Ultimos 16 equipos', NULL, '2019-05-19 01:28:58', '2019-05-19 01:28:58'),
(3, 'Cuartos de final', 'Ultimos 8 equipos', NULL, '2019-05-19 01:28:58', '2019-05-19 01:28:58'),
(4, 'Semi-finales', 'Ultimos 4 equipos', NULL, '2019-05-19 01:28:58', '2019-05-19 01:28:58'),
(5, 'Pre-Final', 'Tercero Y Cuarto Puesto', NULL, '2019-05-19 01:28:58', '2019-05-19 01:28:58'),
(6, 'Final', 'Primero Y Segundo Puesto', NULL, '2019-05-19 01:28:59', '2019-05-19 01:28:59');

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
(1, 'Masculino', NULL, '2019-05-19 01:27:36', '2019-05-19 01:27:36'),
(2, 'Femenino', NULL, '2019-05-19 01:27:36', '2019-05-19 01:27:36'),
(3, 'Indefinido', NULL, '2019-05-19 01:27:37', '2019-05-19 01:27:37');

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
(1, '182768569', '1334679528', 'Barrows-Connelly', 'storage/storage/img/instituto/test/diesel.png', 9, 2, 1, 94, 1, NULL, '2019-05-19 01:27:47', '2019-05-19 01:27:47'),
(2, '326956390', '111258219', 'O\'Conner-Powlowski', 'storage/storage/img/instituto/test/Rolex.png', 39, 3, 2, 17, 2, NULL, '2019-05-19 01:27:47', '2019-05-19 01:27:47'),
(3, '1102827064', '195711683', 'Gerlach, Conroy and Weissnat', 'storage/storage/img/instituto/test/diesel.png', 4, 2, 3, 25, 2, NULL, '2019-05-19 01:27:47', '2019-05-19 01:27:47'),
(4, '617434695', '514501441', 'Roob Inc', 'storage/storage/img/instituto/test/iesmj.gif', 12, 3, 4, 77, 3, NULL, '2019-05-19 01:27:47', '2019-05-19 01:27:47'),
(5, '323442900', '1122944243', 'Ernser Group', 'storage/storage/img/instituto/test/shell.png', 4, 2, 5, 49, 4, NULL, '2019-05-19 01:27:47', '2019-05-19 01:27:47'),
(6, '131490830', '647316857', 'Kshlerin, Buckridge and Treutel', 'storage/storage/img/instituto/test/ieceim.png', 6, 1, 6, 82, 2, NULL, '2019-05-19 01:27:47', '2019-05-19 01:27:47'),
(7, '70010471', '563443536', 'Kutch Ltd', 'storage/storage/img/instituto/test/Target.png', 16, 3, 7, 26, 2, NULL, '2019-05-19 01:27:47', '2019-05-19 01:27:47'),
(8, '1367397380', '963970379', 'Goodwin-Powlowski', 'storage/storage/img/instituto/test/Beats.png', 10, 3, 8, 22, 4, NULL, '2019-05-19 01:27:47', '2019-05-19 01:27:47'),
(9, '1140000494', '12312232', 'Schowalter Ltd', 'storage/storage/img/instituto/test/ieintec.jpg', 27, 1, 9, 16, 1, NULL, '2019-05-19 01:27:47', '2019-05-19 01:27:47'),
(10, '844952595', '20917633', 'Krajcik LLC', 'storage/storage/img/instituto/test/alfaromeo.png', 46, 2, 10, 32, 3, NULL, '2019-05-19 01:27:48', '2019-05-19 01:27:48'),
(11, '599930582', '338582385', 'Dietrich, Harber and Jones', 'storage/storage/img/instituto/test/ieintec.jpg', 44, 1, 11, 73, 2, NULL, '2019-05-19 01:27:48', '2019-05-19 01:27:48'),
(12, '961097397', '665434737', 'Ondricka Ltd', 'storage/storage/img/instituto/test/comfandi.jpg', 27, 3, 12, 31, 4, NULL, '2019-05-19 01:27:48', '2019-05-19 01:27:48'),
(13, '499709304', '759249904', 'Bednar and Sons', 'storage/storage/img/instituto/test/Target.png', 37, 2, 13, 21, 2, NULL, '2019-05-19 01:27:48', '2019-05-19 01:27:48'),
(14, '928426207', '96226', 'Johnson and Sons', 'storage/storage/img/instituto/test/ieintec.jpg', 19, 1, 14, 35, 2, NULL, '2019-05-19 01:27:48', '2019-05-19 01:27:48'),
(15, '791455004', '683390368', 'Leuschke-DuBuque', 'storage/storage/img/instituto/test/ieintec.jpg', 47, 3, 15, 51, 1, NULL, '2019-05-19 01:27:48', '2019-05-19 01:27:48'),
(16, '252762993', '1021742265', 'Windler-Johnson', 'storage/storage/img/instituto/test/Mitsubishi.png', 14, 1, 16, 82, 1, NULL, '2019-05-19 01:27:48', '2019-05-19 01:27:48'),
(17, '779156140', '373404562', 'Hill, Berge and Mayert', 'storage/storage/img/instituto/test/sena.png', 23, 3, 17, 6, 2, NULL, '2019-05-19 01:27:48', '2019-05-19 01:27:48'),
(18, '337914254', '60094413', 'West Group', 'storage/storage/img/instituto/test/Beats.png', 41, 3, 18, 20, 4, NULL, '2019-05-19 01:27:48', '2019-05-19 01:27:48'),
(19, '1125407155', '666487627', 'Stokes, Mann and Buckridge', 'storage/storage/img/instituto/test/Rolex.png', 24, 3, 19, 67, 2, NULL, '2019-05-19 01:27:48', '2019-05-19 01:27:48'),
(20, '260333263', '1263602252', 'Wehner and Sons', 'storage/storage/img/instituto/test/7eleven.png', 39, 2, 20, 62, 1, NULL, '2019-05-19 01:27:49', '2019-05-19 01:27:49');

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
(1, 'Miss Bridie Nader MD', 3, 22, 4, NULL, '2019-05-19 01:28:40', '2019-05-19 01:28:40'),
(2, 'Arno Cronin', 4, 24, 4, NULL, '2019-05-19 01:28:40', '2019-05-19 01:28:40'),
(3, 'Stephanie Hodkiewicz', 5, 26, 3, NULL, '2019-05-19 01:28:40', '2019-05-19 01:28:40'),
(4, 'Buford Shanahan', 6, 28, 1, NULL, '2019-05-19 01:28:40', '2019-05-19 01:28:40'),
(5, 'Raphaelle Lang Jr.', 7, 30, 3, NULL, '2019-05-19 01:28:40', '2019-05-19 01:28:40'),
(6, 'Leone Crist', 8, 32, 2, NULL, '2019-05-19 01:28:40', '2019-05-19 01:28:40'),
(7, 'Adelle Franecki', 9, 34, 3, NULL, '2019-05-19 01:28:40', '2019-05-19 01:28:40'),
(8, 'Mariano Hickle PhD', 10, 36, 3, NULL, '2019-05-19 01:28:40', '2019-05-19 01:28:40'),
(9, 'Benjamin Davis', 11, 38, 3, NULL, '2019-05-19 01:28:41', '2019-05-19 01:28:41'),
(10, 'Alvena O\'Kon', 12, 40, 4, NULL, '2019-05-19 01:28:41', '2019-05-19 01:28:41'),
(11, 'Camilla Swift', 13, 42, 2, NULL, '2019-05-19 01:28:41', '2019-05-19 01:28:41'),
(12, 'Brittany Quigley IV', 14, 44, 3, NULL, '2019-05-19 01:28:41', '2019-05-19 01:28:41'),
(13, 'Dr. Enola Stroman', 15, 46, 2, NULL, '2019-05-19 01:28:41', '2019-05-19 01:28:41'),
(14, 'Alejandra Doyle', 16, 48, 1, NULL, '2019-05-19 01:28:41', '2019-05-19 01:28:41'),
(15, 'Aliyah Kutch', 17, 50, 4, NULL, '2019-05-19 01:28:41', '2019-05-19 01:28:41'),
(16, 'Miss Bridget Thompson DDS', 18, 52, 4, NULL, '2019-05-19 01:28:41', '2019-05-19 01:28:41'),
(17, 'Alisa Stoltenberg', 19, 54, 3, NULL, '2019-05-19 01:28:41', '2019-05-19 01:28:41'),
(18, 'Miss Sarah Runolfsson DVM', 20, 56, 3, NULL, '2019-05-19 01:28:41', '2019-05-19 01:28:41'),
(19, 'Lauryn Brekke', 21, 58, 1, NULL, '2019-05-19 01:28:41', '2019-05-19 01:28:41'),
(20, 'Hoyt Moen Jr.', 22, 60, 4, NULL, '2019-05-19 01:28:41', '2019-05-19 01:28:41'),
(21, 'Mr. Nicolas Moen', 23, 62, 4, NULL, '2019-05-19 01:28:41', '2019-05-19 01:28:41'),
(22, 'Mrs. Electa Goyette', 24, 64, 2, NULL, '2019-05-19 01:28:42', '2019-05-19 01:28:42'),
(23, 'Newton Mertz', 25, 66, 3, NULL, '2019-05-19 01:28:42', '2019-05-19 01:28:42'),
(24, 'Fatima Schimmel', 26, 68, 3, NULL, '2019-05-19 01:28:42', '2019-05-19 01:28:42'),
(25, 'Ignatius Turcotte III', 27, 70, 3, NULL, '2019-05-19 01:28:42', '2019-05-19 01:28:42'),
(26, 'Amos Sporer', 28, 72, 1, NULL, '2019-05-19 01:28:42', '2019-05-19 01:28:42'),
(27, 'Luisa Larson', 29, 74, 2, NULL, '2019-05-19 01:28:42', '2019-05-19 01:28:42'),
(28, 'Velma Botsford', 30, 76, 3, NULL, '2019-05-19 01:28:42', '2019-05-19 01:28:42'),
(29, 'Veda Wuckert', 31, 78, 3, NULL, '2019-05-19 01:28:42', '2019-05-19 01:28:42'),
(30, 'Kennedi Auer', 32, 80, 4, NULL, '2019-05-19 01:28:42', '2019-05-19 01:28:42'),
(31, 'Alva Keebler', 33, 82, 2, NULL, '2019-05-19 01:28:42', '2019-05-19 01:28:42'),
(32, 'Miss Audreanne White', 34, 84, 1, NULL, '2019-05-19 01:28:42', '2019-05-19 01:28:42'),
(33, 'Prof. Jane Ernser MD', 35, 86, 3, NULL, '2019-05-19 01:28:42', '2019-05-19 01:28:42'),
(34, 'Prof. Alysa Funk', 36, 88, 1, NULL, '2019-05-19 01:28:42', '2019-05-19 01:28:42'),
(35, 'Ivah Klocko V', 37, 90, 3, NULL, '2019-05-19 01:28:43', '2019-05-19 01:28:43'),
(36, 'Brody Koss', 38, 92, 2, NULL, '2019-05-19 01:28:43', '2019-05-19 01:28:43'),
(37, 'Aglae Hand', 39, 94, 2, NULL, '2019-05-19 01:28:43', '2019-05-19 01:28:43'),
(38, 'Ian Hoppe', 40, 96, 4, NULL, '2019-05-19 01:28:43', '2019-05-19 01:28:43'),
(39, 'Fiona Miller', 41, 98, 2, NULL, '2019-05-19 01:28:43', '2019-05-19 01:28:43'),
(40, 'Jedidiah Christiansen', 42, 100, 3, NULL, '2019-05-19 01:28:43', '2019-05-19 01:28:43'),
(41, 'Augusta Walsh', 43, 102, 3, NULL, '2019-05-19 01:28:43', '2019-05-19 01:28:43'),
(42, 'Shannon Crooks', 44, 104, 3, NULL, '2019-05-19 01:28:43', '2019-05-19 01:28:43'),
(43, 'Jarrod Bailey', 45, 106, 1, NULL, '2019-05-19 01:28:43', '2019-05-19 01:28:43'),
(44, 'Mr. Cullen Nicolas', 46, 108, 4, NULL, '2019-05-19 01:28:43', '2019-05-19 01:28:43'),
(45, 'Neoma Roberts', 47, 110, 4, NULL, '2019-05-19 01:28:43', '2019-05-19 01:28:43'),
(46, 'Jesus Zulauf DDS', 48, 112, 1, NULL, '2019-05-19 01:28:44', '2019-05-19 01:28:44'),
(47, 'Lawson Kovacek', 49, 114, 4, NULL, '2019-05-19 01:28:44', '2019-05-19 01:28:44'),
(48, 'Aurelio Barton', 50, 116, 1, NULL, '2019-05-19 01:28:44', '2019-05-19 01:28:44'),
(49, 'Marjory Crona', 51, 118, 1, NULL, '2019-05-19 01:28:44', '2019-05-19 01:28:44'),
(50, 'Stacy Lehner', 52, 120, 1, NULL, '2019-05-19 01:28:44', '2019-05-19 01:28:44'),
(51, 'Dr. Broderick Koch', 53, 122, 4, NULL, '2019-05-19 01:28:44', '2019-05-19 01:28:44'),
(52, 'Prof. Meredith Orn IV', 54, 124, 4, NULL, '2019-05-19 01:28:44', '2019-05-19 01:28:44'),
(53, 'Rasheed Ruecker', 55, 126, 1, NULL, '2019-05-19 01:28:44', '2019-05-19 01:28:44'),
(54, 'Gideon Morar', 56, 128, 4, NULL, '2019-05-19 01:28:44', '2019-05-19 01:28:44'),
(55, 'Prof. Felton Wintheiser MD', 57, 130, 3, NULL, '2019-05-19 01:28:44', '2019-05-19 01:28:44'),
(56, 'Orville Lebsack', 58, 132, 1, NULL, '2019-05-19 01:28:44', '2019-05-19 01:28:44'),
(57, 'Savannah Renner III', 59, 134, 4, NULL, '2019-05-19 01:28:44', '2019-05-19 01:28:44'),
(58, 'Dr. Cecile Schroeder II', 60, 136, 3, NULL, '2019-05-19 01:28:44', '2019-05-19 01:28:44'),
(59, 'Chanel Reynolds', 61, 138, 3, NULL, '2019-05-19 01:28:44', '2019-05-19 01:28:44'),
(60, 'Clifton Jones DVM', 62, 140, 1, NULL, '2019-05-19 01:28:44', '2019-05-19 01:28:44'),
(61, 'Miss Genoveva Nienow', 63, 142, 4, NULL, '2019-05-19 01:28:44', '2019-05-19 01:28:44'),
(62, 'Vito Nolan', 64, 144, 4, NULL, '2019-05-19 01:28:45', '2019-05-19 01:28:45'),
(63, 'Greyson Smitham', 65, 146, 2, NULL, '2019-05-19 01:28:45', '2019-05-19 01:28:45'),
(64, 'Lizeth Labadie', 66, 148, 1, NULL, '2019-05-19 01:28:45', '2019-05-19 01:28:45'),
(65, 'Prof. Ladarius Jacobs V', 67, 150, 4, NULL, '2019-05-19 01:28:45', '2019-05-19 01:28:45'),
(66, 'Dr. Orion Zemlak DVM', 68, 152, 2, NULL, '2019-05-19 01:28:45', '2019-05-19 01:28:45'),
(67, 'Nicola Stamm', 69, 154, 4, NULL, '2019-05-19 01:28:45', '2019-05-19 01:28:45'),
(68, 'Nelda Nikolaus', 70, 156, 2, NULL, '2019-05-19 01:28:45', '2019-05-19 01:28:45'),
(69, 'Solon Hane I', 71, 158, 2, NULL, '2019-05-19 01:28:45', '2019-05-19 01:28:45'),
(70, 'Mr. Miller Robel', 72, 160, 2, NULL, '2019-05-19 01:28:45', '2019-05-19 01:28:45'),
(71, 'Clifford Dietrich', 73, 162, 2, NULL, '2019-05-19 01:28:45', '2019-05-19 01:28:45'),
(72, 'Mr. Afton Franecki MD', 74, 164, 3, NULL, '2019-05-19 01:28:45', '2019-05-19 01:28:45'),
(73, 'German Schneider', 75, 166, 4, NULL, '2019-05-19 01:28:45', '2019-05-19 01:28:45'),
(74, 'Jessica Halvorson', 76, 168, 2, NULL, '2019-05-19 01:28:45', '2019-05-19 01:28:45'),
(75, 'Lulu Goodwin', 77, 170, 1, NULL, '2019-05-19 01:28:45', '2019-05-19 01:28:45'),
(76, 'Jadon Kilback', 78, 172, 4, NULL, '2019-05-19 01:28:45', '2019-05-19 01:28:45'),
(77, 'Georgianna Cormier PhD', 79, 174, 2, NULL, '2019-05-19 01:28:45', '2019-05-19 01:28:45'),
(78, 'Prof. Dianna Glover', 80, 176, 4, NULL, '2019-05-19 01:28:45', '2019-05-19 01:28:45'),
(79, 'Crystal Connelly', 81, 178, 2, NULL, '2019-05-19 01:28:45', '2019-05-19 01:28:45'),
(80, 'Lambert Buckridge', 82, 180, 1, NULL, '2019-05-19 01:28:46', '2019-05-19 01:28:46'),
(81, 'Kylee Lakin DDS', 83, 182, 2, NULL, '2019-05-19 01:28:46', '2019-05-19 01:28:46'),
(82, 'Ms. Jazmyn Miller DDS', 84, 184, 2, NULL, '2019-05-19 01:28:46', '2019-05-19 01:28:46'),
(83, 'Prof. Forest Rau DDS', 85, 186, 1, NULL, '2019-05-19 01:28:46', '2019-05-19 01:28:46'),
(84, 'Suzanne Hand', 86, 188, 3, NULL, '2019-05-19 01:28:46', '2019-05-19 01:28:46'),
(85, 'Alice McGlynn', 87, 190, 4, NULL, '2019-05-19 01:28:46', '2019-05-19 01:28:46'),
(86, 'Izabella Welch', 88, 192, 4, NULL, '2019-05-19 01:28:46', '2019-05-19 01:28:46'),
(87, 'Daren Reynolds', 89, 194, 1, NULL, '2019-05-19 01:28:46', '2019-05-19 01:28:46'),
(88, 'Maximillia Kuphal Jr.', 90, 196, 2, NULL, '2019-05-19 01:28:46', '2019-05-19 01:28:46'),
(89, 'Prof. Alessandro Hyatt', 91, 198, 1, NULL, '2019-05-19 01:28:46', '2019-05-19 01:28:46'),
(90, 'Fay O\'Hara', 92, 200, 3, NULL, '2019-05-19 01:28:46', '2019-05-19 01:28:46'),
(91, 'Aileen Pfeffer', 93, 202, 3, NULL, '2019-05-19 01:28:46', '2019-05-19 01:28:46'),
(92, 'Viviane Kiehn', 94, 204, 2, NULL, '2019-05-19 01:28:46', '2019-05-19 01:28:46'),
(93, 'Mckenzie Bednar', 95, 206, 2, NULL, '2019-05-19 01:28:46', '2019-05-19 01:28:46'),
(94, 'Ms. Kaycee Rosenbaum III', 96, 208, 4, NULL, '2019-05-19 01:28:47', '2019-05-19 01:28:47'),
(95, 'Kelley Tremblay', 97, 210, 4, NULL, '2019-05-19 01:28:47', '2019-05-19 01:28:47'),
(96, 'Duane Bode IV', 98, 212, 4, NULL, '2019-05-19 01:28:47', '2019-05-19 01:28:47'),
(97, 'Giles Heidenreich', 99, 214, 2, NULL, '2019-05-19 01:28:47', '2019-05-19 01:28:47'),
(98, 'Blake Herzog', 100, 216, 4, NULL, '2019-05-19 01:28:47', '2019-05-19 01:28:47'),
(99, 'Antonia Ratke', 101, 218, 3, NULL, '2019-05-19 01:28:47', '2019-05-19 01:28:47'),
(100, 'Casimer Ernser', 102, 220, 1, NULL, '2019-05-19 01:28:47', '2019-05-19 01:28:47'),
(101, 'Kip Crooks', 103, 222, 1, NULL, '2019-05-19 01:28:47', '2019-05-19 01:28:47'),
(102, 'Mrs. Helena Auer Sr.', 104, 224, 3, NULL, '2019-05-19 01:28:47', '2019-05-19 01:28:47'),
(103, 'Dr. Bruce Bins', 105, 226, 3, NULL, '2019-05-19 01:28:47', '2019-05-19 01:28:47'),
(104, 'Yasmeen Dare', 106, 228, 1, NULL, '2019-05-19 01:28:47', '2019-05-19 01:28:47'),
(105, 'Dannie Flatley', 107, 230, 4, NULL, '2019-05-19 01:28:47', '2019-05-19 01:28:47'),
(106, 'Prof. Dell Shanahan', 108, 232, 3, NULL, '2019-05-19 01:28:47', '2019-05-19 01:28:47'),
(107, 'Ransom Greenholt', 109, 234, 1, NULL, '2019-05-19 01:28:47', '2019-05-19 01:28:47'),
(108, 'Madison Schowalter', 110, 236, 1, NULL, '2019-05-19 01:28:47', '2019-05-19 01:28:47'),
(109, 'Maximillian Schuppe', 111, 238, 4, NULL, '2019-05-19 01:28:47', '2019-05-19 01:28:47'),
(110, 'Jadon Brakus DDS', 112, 240, 1, NULL, '2019-05-19 01:28:48', '2019-05-19 01:28:48'),
(111, 'Cydney Bartell', 113, 242, 4, NULL, '2019-05-19 01:28:48', '2019-05-19 01:28:48'),
(112, 'Haven Olson', 114, 244, 4, NULL, '2019-05-19 01:28:48', '2019-05-19 01:28:48'),
(113, 'Nico Thiel', 115, 246, 1, NULL, '2019-05-19 01:28:48', '2019-05-19 01:28:48'),
(114, 'Mr. Boris Toy PhD', 116, 248, 2, NULL, '2019-05-19 01:28:48', '2019-05-19 01:28:48'),
(115, 'Jannie Thiel', 117, 250, 3, NULL, '2019-05-19 01:28:48', '2019-05-19 01:28:48'),
(116, 'Aniyah Gibson', 118, 252, 1, NULL, '2019-05-19 01:28:48', '2019-05-19 01:28:48'),
(117, 'Natalia Padberg', 119, 254, 4, NULL, '2019-05-19 01:28:48', '2019-05-19 01:28:48'),
(118, 'Prof. Lenora Crist Jr.', 120, 256, 3, NULL, '2019-05-19 01:28:48', '2019-05-19 01:28:48'),
(119, 'Rosie O\'Connell V', 121, 258, 4, NULL, '2019-05-19 01:28:48', '2019-05-19 01:28:48'),
(120, 'Bobbie Schumm', 122, 260, 1, NULL, '2019-05-19 01:28:48', '2019-05-19 01:28:48'),
(121, 'Dr. Fabiola Stokes', 123, 262, 4, NULL, '2019-05-19 01:28:48', '2019-05-19 01:28:48'),
(122, 'Valentin Bergstrom', 124, 264, 2, NULL, '2019-05-19 01:28:48', '2019-05-19 01:28:48'),
(123, 'Dr. Hadley Volkman V', 125, 266, 4, NULL, '2019-05-19 01:28:48', '2019-05-19 01:28:48'),
(124, 'Brandon Bergstrom', 126, 268, 4, NULL, '2019-05-19 01:28:48', '2019-05-19 01:28:48'),
(125, 'Golda Kunze DDS', 127, 270, 3, NULL, '2019-05-19 01:28:49', '2019-05-19 01:28:49'),
(126, 'Lexus Dibbert', 128, 272, 4, NULL, '2019-05-19 01:28:49', '2019-05-19 01:28:49'),
(127, 'Ashlee Stroman', 129, 274, 1, NULL, '2019-05-19 01:28:49', '2019-05-19 01:28:49'),
(128, 'Chloe Weimann', 130, 276, 2, NULL, '2019-05-19 01:28:49', '2019-05-19 01:28:49'),
(129, 'Mr. Tom Boyle', 131, 278, 2, NULL, '2019-05-19 01:28:49', '2019-05-19 01:28:49'),
(130, 'Bernice Bednar', 132, 280, 3, NULL, '2019-05-19 01:28:49', '2019-05-19 01:28:49'),
(131, 'Jamey Effertz', 133, 282, 3, NULL, '2019-05-19 01:28:49', '2019-05-19 01:28:49'),
(132, 'Pink Will', 134, 284, 1, NULL, '2019-05-19 01:28:49', '2019-05-19 01:28:49'),
(133, 'Miss Glenda Balistreri', 135, 286, 2, NULL, '2019-05-19 01:28:49', '2019-05-19 01:28:49'),
(134, 'Ms. Earnestine Feest II', 136, 288, 3, NULL, '2019-05-19 01:28:49', '2019-05-19 01:28:49'),
(135, 'Orland Blanda', 137, 290, 4, NULL, '2019-05-19 01:28:49', '2019-05-19 01:28:49'),
(136, 'Prof. Orin Schoen', 138, 292, 2, NULL, '2019-05-19 01:28:49', '2019-05-19 01:28:49'),
(137, 'Miss Arielle Ondricka I', 139, 294, 4, NULL, '2019-05-19 01:28:49', '2019-05-19 01:28:49'),
(138, 'Nathanial Crona', 140, 296, 3, NULL, '2019-05-19 01:28:49', '2019-05-19 01:28:49'),
(139, 'Mr. Anderson Will', 141, 298, 3, NULL, '2019-05-19 01:28:49', '2019-05-19 01:28:49'),
(140, 'Karlee Wunsch', 142, 300, 3, NULL, '2019-05-19 01:28:50', '2019-05-19 01:28:50'),
(141, 'Kennith Bahringer MD', 143, 302, 2, NULL, '2019-05-19 01:28:50', '2019-05-19 01:28:50'),
(142, 'Miss Otha Klein', 144, 304, 3, NULL, '2019-05-19 01:28:50', '2019-05-19 01:28:50'),
(143, 'Andre Kulas', 145, 306, 4, NULL, '2019-05-19 01:28:50', '2019-05-19 01:28:50'),
(144, 'Icie Koch', 146, 308, 4, NULL, '2019-05-19 01:28:50', '2019-05-19 01:28:50'),
(145, 'Althea Kihn', 147, 310, 2, NULL, '2019-05-19 01:28:50', '2019-05-19 01:28:50'),
(146, 'Nyah Spinka DVM', 148, 312, 2, NULL, '2019-05-19 01:28:50', '2019-05-19 01:28:50'),
(147, 'Finn Stiedemann', 149, 314, 2, NULL, '2019-05-19 01:28:50', '2019-05-19 01:28:50'),
(148, 'Letha Kihn', 150, 316, 2, NULL, '2019-05-19 01:28:50', '2019-05-19 01:28:50'),
(149, 'Gaston Marvin MD', 151, 318, 2, NULL, '2019-05-19 01:28:51', '2019-05-19 01:28:51'),
(150, 'Mr. Isidro Barrows', 152, 320, 1, NULL, '2019-05-19 01:28:51', '2019-05-19 01:28:51'),
(151, 'Dr. Carlotta Watsica Sr.', 153, 322, 4, NULL, '2019-05-19 01:28:51', '2019-05-19 01:28:51'),
(152, 'Nikki Altenwerth', 154, 324, 3, NULL, '2019-05-19 01:28:51', '2019-05-19 01:28:51'),
(153, 'Betty Waelchi', 155, 326, 2, NULL, '2019-05-19 01:28:51', '2019-05-19 01:28:51'),
(154, 'Prof. Hugh Block', 156, 328, 1, NULL, '2019-05-19 01:28:51', '2019-05-19 01:28:51'),
(155, 'Miss Orpha Farrell Jr.', 157, 330, 1, NULL, '2019-05-19 01:28:51', '2019-05-19 01:28:51'),
(156, 'Armani Schumm', 158, 332, 1, NULL, '2019-05-19 01:28:51', '2019-05-19 01:28:51'),
(157, 'Keegan Schneider', 159, 334, 1, NULL, '2019-05-19 01:28:51', '2019-05-19 01:28:51'),
(158, 'Everette Lemke', 160, 336, 3, NULL, '2019-05-19 01:28:51', '2019-05-19 01:28:51'),
(159, 'Alberta Murray DVM', 161, 338, 4, NULL, '2019-05-19 01:28:52', '2019-05-19 01:28:52'),
(160, 'Ike Boyer PhD', 162, 340, 2, NULL, '2019-05-19 01:28:52', '2019-05-19 01:28:52');

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
(1, 'Spencer Meadow', 18, 33, 341, 4, NULL, '2019-05-19 01:28:56', '2019-05-19 01:28:56'),
(2, 'Dena Trafficway', 26, 15, 342, 3, NULL, '2019-05-19 01:28:56', '2019-05-19 01:28:56'),
(3, 'General Overpass', 5, 87, 343, 1, NULL, '2019-05-19 01:28:56', '2019-05-19 01:28:56'),
(4, 'Sean Manors', 30, 86, 344, 2, NULL, '2019-05-19 01:28:57', '2019-05-19 01:28:57'),
(5, 'Claire Walks', 18, 11, 345, 4, NULL, '2019-05-19 01:28:57', '2019-05-19 01:28:57'),
(6, 'Ruecker Rest', 14, 57, 346, 3, NULL, '2019-05-19 01:28:57', '2019-05-19 01:28:57'),
(7, 'Misael Drives', 28, 31, 347, 3, NULL, '2019-05-19 01:28:57', '2019-05-19 01:28:57'),
(8, 'Frami Overpass', 46, 11, 348, 3, NULL, '2019-05-19 01:28:57', '2019-05-19 01:28:57'),
(9, 'Kub Centers', 50, 39, 349, 2, NULL, '2019-05-19 01:28:57', '2019-05-19 01:28:57'),
(10, 'D\'Amore Spur', 33, 71, 350, 4, NULL, '2019-05-19 01:28:57', '2019-05-19 01:28:57'),
(11, 'Elena Parkway', 48, 15, 351, 2, NULL, '2019-05-19 01:28:57', '2019-05-19 01:28:57'),
(12, 'Ashtyn Shore', 36, 18, 352, 4, NULL, '2019-05-19 01:28:57', '2019-05-19 01:28:57'),
(13, 'Sarina Passage', 8, 28, 353, 1, NULL, '2019-05-19 01:28:57', '2019-05-19 01:28:57'),
(14, 'Auer Forges', 44, 8, 354, 2, NULL, '2019-05-19 01:28:57', '2019-05-19 01:28:57'),
(15, 'Okuneva Tunnel', 16, 71, 355, 3, NULL, '2019-05-19 01:28:57', '2019-05-19 01:28:57');

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
(1, 'admin', '2019-05-19 01:27:18', '2019-05-19 01:27:18');

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
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2019-05-19 01:27:19', '2019-05-19 01:27:19', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2019-05-19 01:27:19', '2019-05-19 01:27:19', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2019-05-19 01:27:19', '2019-05-19 01:27:19', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2019-05-19 01:27:19', '2019-05-19 01:27:19', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2019-05-19 01:27:19', '2019-05-19 01:27:19', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 10, '2019-05-19 01:27:19', '2019-05-19 01:27:19', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 11, '2019-05-19 01:27:19', '2019-05-19 01:27:19', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 12, '2019-05-19 01:27:19', '2019-05-19 01:27:19', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 13, '2019-05-19 01:27:19', '2019-05-19 01:27:19', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2019-05-19 01:27:20', '2019-05-19 01:27:20', 'voyager.settings.index', NULL);

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
(1, 'Toyberg', 1, NULL, '2019-05-19 01:27:32', '2019-05-19 01:27:32'),
(2, 'Lake Isabell', 2, NULL, '2019-05-19 01:27:32', '2019-05-19 01:27:32'),
(3, 'North Alecton', 3, NULL, '2019-05-19 01:27:33', '2019-05-19 01:27:33'),
(4, 'Port Melany', 4, NULL, '2019-05-19 01:27:33', '2019-05-19 01:27:33'),
(5, 'East Nicklauschester', 5, NULL, '2019-05-19 01:27:33', '2019-05-19 01:27:33'),
(6, 'Sipesfurt', 6, NULL, '2019-05-19 01:27:33', '2019-05-19 01:27:33'),
(7, 'North Pattie', 7, NULL, '2019-05-19 01:27:33', '2019-05-19 01:27:33'),
(8, 'Rodriguezview', 8, NULL, '2019-05-19 01:27:33', '2019-05-19 01:27:33'),
(9, 'Sydneymouth', 9, NULL, '2019-05-19 01:27:33', '2019-05-19 01:27:33'),
(10, 'North Noel', 10, NULL, '2019-05-19 01:27:33', '2019-05-19 01:27:33'),
(11, 'Goodwinville', 11, NULL, '2019-05-19 01:27:33', '2019-05-19 01:27:33'),
(12, 'Murphyport', 12, NULL, '2019-05-19 01:27:33', '2019-05-19 01:27:33'),
(13, 'New Magdalen', 13, NULL, '2019-05-19 01:27:33', '2019-05-19 01:27:33'),
(14, 'East Landen', 14, NULL, '2019-05-19 01:27:33', '2019-05-19 01:27:33'),
(15, 'Gwenmouth', 15, NULL, '2019-05-19 01:27:33', '2019-05-19 01:27:33'),
(16, 'Heidenreichside', 16, NULL, '2019-05-19 01:27:33', '2019-05-19 01:27:33'),
(17, 'West Osbaldo', 17, NULL, '2019-05-19 01:27:33', '2019-05-19 01:27:33'),
(18, 'West Jakobton', 18, NULL, '2019-05-19 01:27:33', '2019-05-19 01:27:33'),
(19, 'Kutchside', 19, NULL, '2019-05-19 01:27:33', '2019-05-19 01:27:33'),
(20, 'East Barrett', 20, NULL, '2019-05-19 01:27:34', '2019-05-19 01:27:34'),
(21, 'Jovanmouth', 21, NULL, '2019-05-19 01:27:34', '2019-05-19 01:27:34'),
(22, 'Jarretfurt', 22, NULL, '2019-05-19 01:27:34', '2019-05-19 01:27:34'),
(23, 'Aaronhaven', 23, NULL, '2019-05-19 01:27:34', '2019-05-19 01:27:34'),
(24, 'Lake Alysaside', 24, NULL, '2019-05-19 01:27:34', '2019-05-19 01:27:34'),
(25, 'Jaquelinetown', 25, NULL, '2019-05-19 01:27:34', '2019-05-19 01:27:34'),
(26, 'West Joshuahchester', 26, NULL, '2019-05-19 01:27:34', '2019-05-19 01:27:34'),
(27, 'Lake Lois', 27, NULL, '2019-05-19 01:27:34', '2019-05-19 01:27:34'),
(28, 'Pfefferville', 28, NULL, '2019-05-19 01:27:34', '2019-05-19 01:27:34'),
(29, 'Ronnyview', 29, NULL, '2019-05-19 01:27:34', '2019-05-19 01:27:34'),
(30, 'Port Kathryne', 30, NULL, '2019-05-19 01:27:34', '2019-05-19 01:27:34'),
(31, 'East Nelson', 31, NULL, '2019-05-19 01:27:34', '2019-05-19 01:27:34'),
(32, 'Stromanton', 32, NULL, '2019-05-19 01:27:34', '2019-05-19 01:27:34'),
(33, 'South Chazview', 33, NULL, '2019-05-19 01:27:34', '2019-05-19 01:27:34'),
(34, 'Stantonfort', 34, NULL, '2019-05-19 01:27:34', '2019-05-19 01:27:34'),
(35, 'East Lew', 35, NULL, '2019-05-19 01:27:34', '2019-05-19 01:27:34'),
(36, 'New Tyrellton', 36, NULL, '2019-05-19 01:27:35', '2019-05-19 01:27:35'),
(37, 'Lake Antwon', 37, NULL, '2019-05-19 01:27:35', '2019-05-19 01:27:35'),
(38, 'Cronaton', 38, NULL, '2019-05-19 01:27:35', '2019-05-19 01:27:35'),
(39, 'New Myrna', 39, NULL, '2019-05-19 01:27:35', '2019-05-19 01:27:35'),
(40, 'Heidenreichchester', 40, NULL, '2019-05-19 01:27:35', '2019-05-19 01:27:35'),
(41, 'South Danikaland', 41, NULL, '2019-05-19 01:27:35', '2019-05-19 01:27:35'),
(42, 'Port Francisshire', 42, NULL, '2019-05-19 01:27:35', '2019-05-19 01:27:35'),
(43, 'Lurachester', 43, NULL, '2019-05-19 01:27:35', '2019-05-19 01:27:35'),
(44, 'Buddyview', 44, NULL, '2019-05-19 01:27:35', '2019-05-19 01:27:35'),
(45, 'Romagueramouth', 45, NULL, '2019-05-19 01:27:35', '2019-05-19 01:27:35'),
(46, 'Spencerbury', 46, NULL, '2019-05-19 01:27:35', '2019-05-19 01:27:35'),
(47, 'North Annabell', 47, NULL, '2019-05-19 01:27:35', '2019-05-19 01:27:35'),
(48, 'New Emilieburgh', 48, NULL, '2019-05-19 01:27:35', '2019-05-19 01:27:35'),
(49, 'Macychester', 49, NULL, '2019-05-19 01:27:35', '2019-05-19 01:27:35'),
(50, 'South Osbaldoville', 50, NULL, '2019-05-19 01:27:35', '2019-05-19 01:27:35');

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
(1, 'browse_admin', NULL, '2019-05-19 01:27:20', '2019-05-19 01:27:20'),
(2, 'browse_bread', NULL, '2019-05-19 01:27:20', '2019-05-19 01:27:20'),
(3, 'browse_database', NULL, '2019-05-19 01:27:20', '2019-05-19 01:27:20'),
(4, 'browse_media', NULL, '2019-05-19 01:27:20', '2019-05-19 01:27:20'),
(5, 'browse_compass', NULL, '2019-05-19 01:27:21', '2019-05-19 01:27:21'),
(6, 'browse_menus', 'menus', '2019-05-19 01:27:21', '2019-05-19 01:27:21'),
(7, 'read_menus', 'menus', '2019-05-19 01:27:21', '2019-05-19 01:27:21'),
(8, 'edit_menus', 'menus', '2019-05-19 01:27:21', '2019-05-19 01:27:21'),
(9, 'add_menus', 'menus', '2019-05-19 01:27:21', '2019-05-19 01:27:21'),
(10, 'delete_menus', 'menus', '2019-05-19 01:27:21', '2019-05-19 01:27:21'),
(11, 'browse_roles', 'roles', '2019-05-19 01:27:21', '2019-05-19 01:27:21'),
(12, 'read_roles', 'roles', '2019-05-19 01:27:21', '2019-05-19 01:27:21'),
(13, 'edit_roles', 'roles', '2019-05-19 01:27:21', '2019-05-19 01:27:21'),
(14, 'add_roles', 'roles', '2019-05-19 01:27:21', '2019-05-19 01:27:21'),
(15, 'delete_roles', 'roles', '2019-05-19 01:27:21', '2019-05-19 01:27:21'),
(16, 'browse_users', 'users', '2019-05-19 01:27:22', '2019-05-19 01:27:22'),
(17, 'read_users', 'users', '2019-05-19 01:27:22', '2019-05-19 01:27:22'),
(18, 'edit_users', 'users', '2019-05-19 01:27:22', '2019-05-19 01:27:22'),
(19, 'add_users', 'users', '2019-05-19 01:27:22', '2019-05-19 01:27:22'),
(20, 'delete_users', 'users', '2019-05-19 01:27:22', '2019-05-19 01:27:22'),
(21, 'browse_settings', 'settings', '2019-05-19 01:27:22', '2019-05-19 01:27:22'),
(22, 'read_settings', 'settings', '2019-05-19 01:27:22', '2019-05-19 01:27:22'),
(23, 'edit_settings', 'settings', '2019-05-19 01:27:22', '2019-05-19 01:27:22'),
(24, 'add_settings', 'settings', '2019-05-19 01:27:22', '2019-05-19 01:27:22'),
(25, 'delete_settings', 'settings', '2019-05-19 01:27:22', '2019-05-19 01:27:22');

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
(1, 'Ingenieria en Sistemas', 'Ingeniera', NULL, '2019-05-19 01:28:53', '2019-05-19 01:28:53'),
(2, 'Contabilidad', 'Profesional', NULL, '2019-05-19 01:28:53', '2019-05-19 01:28:53'),
(3, 'Turismo', 'Profesional', NULL, '2019-05-19 01:28:53', '2019-05-19 01:28:53');

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
(1, 'admin', 'Administrator', '2019-05-19 01:27:20', '2019-05-19 01:27:20', NULL),
(2, 'user', 'Normal User', '2019-05-19 01:27:20', '2019-05-19 01:27:20', NULL);

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
(1, 'Amarilla', 'Tarjeta Amarilla', NULL, '2019-05-19 01:27:55', '2019-05-19 01:27:55'),
(2, 'Roja', 'Tarjeta Roja', NULL, '2019-05-19 01:27:55', '2019-05-19 01:27:55'),
(3, 'Azul', 'Tarjeta Azul', NULL, '2019-05-19 01:27:56', '2019-05-19 01:27:56');

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
(1, 1, 1, NULL, '2019-05-19 01:27:57', '2019-05-19 01:27:57'),
(2, 2, 1, NULL, '2019-05-19 01:27:57', '2019-05-19 01:27:57'),
(3, 3, 1, NULL, '2019-05-19 01:27:57', '2019-05-19 01:27:57'),
(4, 1, 2, NULL, '2019-05-19 01:27:58', '2019-05-19 01:27:58'),
(5, 2, 2, NULL, '2019-05-19 01:27:58', '2019-05-19 01:27:58'),
(6, 3, 2, NULL, '2019-05-19 01:27:58', '2019-05-19 01:27:58'),
(7, 1, 3, NULL, '2019-05-19 01:27:58', '2019-05-19 01:27:58'),
(8, 2, 3, NULL, '2019-05-19 01:27:58', '2019-05-19 01:27:58'),
(9, 3, 3, NULL, '2019-05-19 01:27:58', '2019-05-19 01:27:58');

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
(1, '275505087', 'Celular', NULL, '2019-05-19 01:27:45', '2019-05-19 01:27:45'),
(2, '170442310', 'Fijo', NULL, '2019-05-19 01:27:45', '2019-05-19 01:27:45'),
(3, '279831961', 'Celular', NULL, '2019-05-19 01:27:45', '2019-05-19 01:27:45'),
(4, '140310039', 'Celular', NULL, '2019-05-19 01:27:46', '2019-05-19 01:27:46'),
(5, '66843551', 'Fijo', NULL, '2019-05-19 01:27:46', '2019-05-19 01:27:46'),
(6, '150239883', 'Fijo', NULL, '2019-05-19 01:27:46', '2019-05-19 01:27:46'),
(7, '276288667', 'Celular', NULL, '2019-05-19 01:27:46', '2019-05-19 01:27:46'),
(8, '52631600', 'Fijo', NULL, '2019-05-19 01:27:46', '2019-05-19 01:27:46'),
(9, '247209389', 'Fijo', NULL, '2019-05-19 01:27:46', '2019-05-19 01:27:46'),
(10, '174128224', 'Celular', NULL, '2019-05-19 01:27:46', '2019-05-19 01:27:46'),
(11, '268162678', 'Fijo', NULL, '2019-05-19 01:27:46', '2019-05-19 01:27:46'),
(12, '286216147', 'Fijo', NULL, '2019-05-19 01:27:46', '2019-05-19 01:27:46'),
(13, '158310436', 'Fijo', NULL, '2019-05-19 01:27:46', '2019-05-19 01:27:46'),
(14, '307059439', 'Fijo', NULL, '2019-05-19 01:27:46', '2019-05-19 01:27:46'),
(15, '262887360', 'Fijo', NULL, '2019-05-19 01:27:46', '2019-05-19 01:27:46'),
(16, '157069399', 'Fijo', NULL, '2019-05-19 01:27:46', '2019-05-19 01:27:46'),
(17, '253404946', 'Celular', NULL, '2019-05-19 01:27:46', '2019-05-19 01:27:46'),
(18, '42571603', 'Celular', NULL, '2019-05-19 01:27:46', '2019-05-19 01:27:46'),
(19, '54991728', 'Celular', NULL, '2019-05-19 01:27:46', '2019-05-19 01:27:46'),
(20, '191213779', 'Fijo', NULL, '2019-05-19 01:27:47', '2019-05-19 01:27:47'),
(21, '171755889', 'Celular', NULL, '2019-05-19 01:28:00', '2019-05-19 01:28:00'),
(22, '75209290', 'Celular', NULL, '2019-05-19 01:28:00', '2019-05-19 01:28:00'),
(23, '90973610', 'Celular', NULL, '2019-05-19 01:28:00', '2019-05-19 01:28:00'),
(24, '221574246', 'Fijo', NULL, '2019-05-19 01:28:00', '2019-05-19 01:28:00'),
(25, '122699729', 'Celular', NULL, '2019-05-19 01:28:00', '2019-05-19 01:28:00'),
(26, '36738788', 'Fijo', NULL, '2019-05-19 01:28:01', '2019-05-19 01:28:01'),
(27, '102911048', 'Fijo', NULL, '2019-05-19 01:28:01', '2019-05-19 01:28:01'),
(28, '43377321', 'Fijo', NULL, '2019-05-19 01:28:01', '2019-05-19 01:28:01'),
(29, '148047335', 'Celular', NULL, '2019-05-19 01:28:01', '2019-05-19 01:28:01'),
(30, '218052560', 'Celular', NULL, '2019-05-19 01:28:01', '2019-05-19 01:28:01'),
(31, '109691651', 'Celular', NULL, '2019-05-19 01:28:02', '2019-05-19 01:28:02'),
(32, '94977087', 'Celular', NULL, '2019-05-19 01:28:02', '2019-05-19 01:28:02'),
(33, '297828456', 'Fijo', NULL, '2019-05-19 01:28:02', '2019-05-19 01:28:02'),
(34, '99549789', 'Celular', NULL, '2019-05-19 01:28:02', '2019-05-19 01:28:02'),
(35, '128931105', 'Celular', NULL, '2019-05-19 01:28:02', '2019-05-19 01:28:02'),
(36, '67619304', 'Fijo', NULL, '2019-05-19 01:28:02', '2019-05-19 01:28:02'),
(37, '175278176', 'Fijo', NULL, '2019-05-19 01:28:02', '2019-05-19 01:28:02'),
(38, '115338479', 'Fijo', NULL, '2019-05-19 01:28:02', '2019-05-19 01:28:02'),
(39, '172145083', 'Fijo', NULL, '2019-05-19 01:28:03', '2019-05-19 01:28:03'),
(40, '36067481', 'Celular', NULL, '2019-05-19 01:28:03', '2019-05-19 01:28:03'),
(41, '189353314', 'Celular', NULL, '2019-05-19 01:28:03', '2019-05-19 01:28:03'),
(42, '134384402', 'Fijo', NULL, '2019-05-19 01:28:03', '2019-05-19 01:28:03'),
(43, '313969788', 'Fijo', NULL, '2019-05-19 01:28:03', '2019-05-19 01:28:03'),
(44, '101398976', 'Celular', NULL, '2019-05-19 01:28:03', '2019-05-19 01:28:03'),
(45, '318940073', 'Fijo', NULL, '2019-05-19 01:28:03', '2019-05-19 01:28:03'),
(46, '32204240', 'Fijo', NULL, '2019-05-19 01:28:03', '2019-05-19 01:28:03'),
(47, '87843077', 'Fijo', NULL, '2019-05-19 01:28:03', '2019-05-19 01:28:03'),
(48, '106237666', 'Fijo', NULL, '2019-05-19 01:28:04', '2019-05-19 01:28:04'),
(49, '163732652', 'Fijo', NULL, '2019-05-19 01:28:04', '2019-05-19 01:28:04'),
(50, '172510113', 'Celular', NULL, '2019-05-19 01:28:04', '2019-05-19 01:28:04'),
(51, '147289624', 'Fijo', NULL, '2019-05-19 01:28:04', '2019-05-19 01:28:04'),
(52, '303817999', 'Fijo', NULL, '2019-05-19 01:28:04', '2019-05-19 01:28:04'),
(53, '145948112', 'Fijo', NULL, '2019-05-19 01:28:04', '2019-05-19 01:28:04'),
(54, '85140830', 'Fijo', NULL, '2019-05-19 01:28:04', '2019-05-19 01:28:04'),
(55, '203303950', 'Fijo', NULL, '2019-05-19 01:28:04', '2019-05-19 01:28:04'),
(56, '38804203', 'Fijo', NULL, '2019-05-19 01:28:05', '2019-05-19 01:28:05'),
(57, '256681950', 'Celular', NULL, '2019-05-19 01:28:05', '2019-05-19 01:28:05'),
(58, '317369445', 'Fijo', NULL, '2019-05-19 01:28:05', '2019-05-19 01:28:05'),
(59, '211819524', 'Fijo', NULL, '2019-05-19 01:28:05', '2019-05-19 01:28:05'),
(60, '147809310', 'Fijo', NULL, '2019-05-19 01:28:05', '2019-05-19 01:28:05'),
(61, '94183567', 'Celular', NULL, '2019-05-19 01:28:05', '2019-05-19 01:28:05'),
(62, '280623315', 'Celular', NULL, '2019-05-19 01:28:05', '2019-05-19 01:28:05'),
(63, '70551589', 'Celular', NULL, '2019-05-19 01:28:05', '2019-05-19 01:28:05'),
(64, '163075811', 'Celular', NULL, '2019-05-19 01:28:06', '2019-05-19 01:28:06'),
(65, '113401331', 'Fijo', NULL, '2019-05-19 01:28:06', '2019-05-19 01:28:06'),
(66, '229628573', 'Fijo', NULL, '2019-05-19 01:28:06', '2019-05-19 01:28:06'),
(67, '109545826', 'Fijo', NULL, '2019-05-19 01:28:06', '2019-05-19 01:28:06'),
(68, '167839204', 'Fijo', NULL, '2019-05-19 01:28:06', '2019-05-19 01:28:06'),
(69, '176715019', 'Celular', NULL, '2019-05-19 01:28:06', '2019-05-19 01:28:06'),
(70, '280112845', 'Celular', NULL, '2019-05-19 01:28:06', '2019-05-19 01:28:06'),
(71, '48454146', 'Celular', NULL, '2019-05-19 01:28:06', '2019-05-19 01:28:06'),
(72, '178892503', 'Fijo', NULL, '2019-05-19 01:28:06', '2019-05-19 01:28:06'),
(73, '303737876', 'Celular', NULL, '2019-05-19 01:28:06', '2019-05-19 01:28:06'),
(74, '297152599', 'Fijo', NULL, '2019-05-19 01:28:07', '2019-05-19 01:28:07'),
(75, '90822440', 'Fijo', NULL, '2019-05-19 01:28:07', '2019-05-19 01:28:07'),
(76, '160968054', 'Fijo', NULL, '2019-05-19 01:28:07', '2019-05-19 01:28:07'),
(77, '277138057', 'Fijo', NULL, '2019-05-19 01:28:07', '2019-05-19 01:28:07'),
(78, '152330062', 'Celular', NULL, '2019-05-19 01:28:07', '2019-05-19 01:28:07'),
(79, '233214114', 'Celular', NULL, '2019-05-19 01:28:07', '2019-05-19 01:28:07'),
(80, '307723834', 'Fijo', NULL, '2019-05-19 01:28:07', '2019-05-19 01:28:07'),
(81, '69151337', 'Fijo', NULL, '2019-05-19 01:28:07', '2019-05-19 01:28:07'),
(82, '140846889', 'Celular', NULL, '2019-05-19 01:28:08', '2019-05-19 01:28:08'),
(83, '74213973', 'Celular', NULL, '2019-05-19 01:28:08', '2019-05-19 01:28:08'),
(84, '268530271', 'Celular', NULL, '2019-05-19 01:28:08', '2019-05-19 01:28:08'),
(85, '41206452', 'Fijo', NULL, '2019-05-19 01:28:08', '2019-05-19 01:28:08'),
(86, '243793510', 'Fijo', NULL, '2019-05-19 01:28:08', '2019-05-19 01:28:08'),
(87, '48119398', 'Fijo', NULL, '2019-05-19 01:28:08', '2019-05-19 01:28:08'),
(88, '160386540', 'Celular', NULL, '2019-05-19 01:28:08', '2019-05-19 01:28:08'),
(89, '55808579', 'Fijo', NULL, '2019-05-19 01:28:08', '2019-05-19 01:28:08'),
(90, '222825533', 'Fijo', NULL, '2019-05-19 01:28:09', '2019-05-19 01:28:09'),
(91, '138013005', 'Fijo', NULL, '2019-05-19 01:28:09', '2019-05-19 01:28:09'),
(92, '234759695', 'Celular', NULL, '2019-05-19 01:28:09', '2019-05-19 01:28:09'),
(93, '310245715', 'Fijo', NULL, '2019-05-19 01:28:09', '2019-05-19 01:28:09'),
(94, '199313285', 'Fijo', NULL, '2019-05-19 01:28:09', '2019-05-19 01:28:09'),
(95, '83621292', 'Celular', NULL, '2019-05-19 01:28:09', '2019-05-19 01:28:09'),
(96, '255328955', 'Celular', NULL, '2019-05-19 01:28:09', '2019-05-19 01:28:09'),
(97, '267461646', 'Celular', NULL, '2019-05-19 01:28:09', '2019-05-19 01:28:09'),
(98, '204503104', 'Fijo', NULL, '2019-05-19 01:28:10', '2019-05-19 01:28:10'),
(99, '144934081', 'Celular', NULL, '2019-05-19 01:28:10', '2019-05-19 01:28:10'),
(100, '217150287', 'Fijo', NULL, '2019-05-19 01:28:10', '2019-05-19 01:28:10'),
(101, '262952046', 'Fijo', NULL, '2019-05-19 01:28:10', '2019-05-19 01:28:10'),
(102, '235671770', 'Celular', NULL, '2019-05-19 01:28:10', '2019-05-19 01:28:10'),
(103, '290152225', 'Fijo', NULL, '2019-05-19 01:28:10', '2019-05-19 01:28:10'),
(104, '123682563', 'Celular', NULL, '2019-05-19 01:28:10', '2019-05-19 01:28:10'),
(105, '170781521', 'Fijo', NULL, '2019-05-19 01:28:11', '2019-05-19 01:28:11'),
(106, '274245765', 'Fijo', NULL, '2019-05-19 01:28:11', '2019-05-19 01:28:11'),
(107, '212595819', 'Fijo', NULL, '2019-05-19 01:28:11', '2019-05-19 01:28:11'),
(108, '271553261', 'Fijo', NULL, '2019-05-19 01:28:11', '2019-05-19 01:28:11'),
(109, '297880601', 'Fijo', NULL, '2019-05-19 01:28:11', '2019-05-19 01:28:11'),
(110, '242313836', 'Fijo', NULL, '2019-05-19 01:28:11', '2019-05-19 01:28:11'),
(111, '91988966', 'Celular', NULL, '2019-05-19 01:28:11', '2019-05-19 01:28:11'),
(112, '177975781', 'Celular', NULL, '2019-05-19 01:28:12', '2019-05-19 01:28:12'),
(113, '91619943', 'Fijo', NULL, '2019-05-19 01:28:12', '2019-05-19 01:28:12'),
(114, '301251274', 'Celular', NULL, '2019-05-19 01:28:12', '2019-05-19 01:28:12'),
(115, '166453570', 'Celular', NULL, '2019-05-19 01:28:12', '2019-05-19 01:28:12'),
(116, '80907860', 'Fijo', NULL, '2019-05-19 01:28:12', '2019-05-19 01:28:12'),
(117, '152775155', 'Fijo', NULL, '2019-05-19 01:28:12', '2019-05-19 01:28:12'),
(118, '148621083', 'Celular', NULL, '2019-05-19 01:28:12', '2019-05-19 01:28:12'),
(119, '203367524', 'Celular', NULL, '2019-05-19 01:28:12', '2019-05-19 01:28:12'),
(120, '95469266', 'Celular', NULL, '2019-05-19 01:28:12', '2019-05-19 01:28:12'),
(121, '37448311', 'Celular', NULL, '2019-05-19 01:28:12', '2019-05-19 01:28:12'),
(122, '283347268', 'Celular', NULL, '2019-05-19 01:28:13', '2019-05-19 01:28:13'),
(123, '213296863', 'Fijo', NULL, '2019-05-19 01:28:13', '2019-05-19 01:28:13'),
(124, '77248328', 'Fijo', NULL, '2019-05-19 01:28:13', '2019-05-19 01:28:13'),
(125, '236833148', 'Fijo', NULL, '2019-05-19 01:28:13', '2019-05-19 01:28:13'),
(126, '135857966', 'Celular', NULL, '2019-05-19 01:28:13', '2019-05-19 01:28:13'),
(127, '162561520', 'Fijo', NULL, '2019-05-19 01:28:13', '2019-05-19 01:28:13'),
(128, '51654608', 'Celular', NULL, '2019-05-19 01:28:13', '2019-05-19 01:28:13'),
(129, '171674095', 'Fijo', NULL, '2019-05-19 01:28:13', '2019-05-19 01:28:13'),
(130, '148401308', 'Fijo', NULL, '2019-05-19 01:28:14', '2019-05-19 01:28:14'),
(131, '194703466', 'Celular', NULL, '2019-05-19 01:28:14', '2019-05-19 01:28:14'),
(132, '72541093', 'Celular', NULL, '2019-05-19 01:28:14', '2019-05-19 01:28:14'),
(133, '318402011', 'Celular', NULL, '2019-05-19 01:28:14', '2019-05-19 01:28:14'),
(134, '198827503', 'Celular', NULL, '2019-05-19 01:28:14', '2019-05-19 01:28:14'),
(135, '312673502', 'Celular', NULL, '2019-05-19 01:28:14', '2019-05-19 01:28:14'),
(136, '253376033', 'Celular', NULL, '2019-05-19 01:28:14', '2019-05-19 01:28:14'),
(137, '142010806', 'Celular', NULL, '2019-05-19 01:28:14', '2019-05-19 01:28:14'),
(138, '166144981', 'Celular', NULL, '2019-05-19 01:28:15', '2019-05-19 01:28:15'),
(139, '258113582', 'Fijo', NULL, '2019-05-19 01:28:15', '2019-05-19 01:28:15'),
(140, '95478888', 'Celular', NULL, '2019-05-19 01:28:15', '2019-05-19 01:28:15'),
(141, '231938425', 'Fijo', NULL, '2019-05-19 01:28:15', '2019-05-19 01:28:15'),
(142, '309169957', 'Fijo', NULL, '2019-05-19 01:28:15', '2019-05-19 01:28:15'),
(143, '100966437', 'Fijo', NULL, '2019-05-19 01:28:15', '2019-05-19 01:28:15'),
(144, '275689539', 'Celular', NULL, '2019-05-19 01:28:15', '2019-05-19 01:28:15'),
(145, '251617456', 'Celular', NULL, '2019-05-19 01:28:15', '2019-05-19 01:28:15'),
(146, '249502735', 'Celular', NULL, '2019-05-19 01:28:16', '2019-05-19 01:28:16'),
(147, '100900451', 'Celular', NULL, '2019-05-19 01:28:16', '2019-05-19 01:28:16'),
(148, '308132140', 'Fijo', NULL, '2019-05-19 01:28:16', '2019-05-19 01:28:16'),
(149, '196084994', 'Fijo', NULL, '2019-05-19 01:28:16', '2019-05-19 01:28:16'),
(150, '280494953', 'Fijo', NULL, '2019-05-19 01:28:16', '2019-05-19 01:28:16'),
(151, '96611662', 'Celular', NULL, '2019-05-19 01:28:16', '2019-05-19 01:28:16'),
(152, '95072147', 'Fijo', NULL, '2019-05-19 01:28:16', '2019-05-19 01:28:16'),
(153, '227566282', 'Celular', NULL, '2019-05-19 01:28:17', '2019-05-19 01:28:17'),
(154, '253686838', 'Celular', NULL, '2019-05-19 01:28:17', '2019-05-19 01:28:17'),
(155, '302453139', 'Celular', NULL, '2019-05-19 01:28:17', '2019-05-19 01:28:17'),
(156, '130401578', 'Fijo', NULL, '2019-05-19 01:28:17', '2019-05-19 01:28:17'),
(157, '96189943', 'Celular', NULL, '2019-05-19 01:28:17', '2019-05-19 01:28:17'),
(158, '251766309', 'Fijo', NULL, '2019-05-19 01:28:17', '2019-05-19 01:28:17'),
(159, '109155762', 'Fijo', NULL, '2019-05-19 01:28:17', '2019-05-19 01:28:17'),
(160, '153423765', 'Fijo', NULL, '2019-05-19 01:28:18', '2019-05-19 01:28:18'),
(161, '287103641', 'Celular', NULL, '2019-05-19 01:28:18', '2019-05-19 01:28:18'),
(162, '113737747', 'Celular', NULL, '2019-05-19 01:28:18', '2019-05-19 01:28:18'),
(163, '53802999', 'Fijo', NULL, '2019-05-19 01:28:18', '2019-05-19 01:28:18'),
(164, '96101506', 'Fijo', NULL, '2019-05-19 01:28:18', '2019-05-19 01:28:18'),
(165, '145033269', 'Celular', NULL, '2019-05-19 01:28:18', '2019-05-19 01:28:18'),
(166, '218806773', 'Fijo', NULL, '2019-05-19 01:28:18', '2019-05-19 01:28:18'),
(167, '145484418', 'Celular', NULL, '2019-05-19 01:28:18', '2019-05-19 01:28:18'),
(168, '232637076', 'Fijo', NULL, '2019-05-19 01:28:19', '2019-05-19 01:28:19'),
(169, '71939428', 'Fijo', NULL, '2019-05-19 01:28:19', '2019-05-19 01:28:19'),
(170, '70996502', 'Celular', NULL, '2019-05-19 01:28:19', '2019-05-19 01:28:19'),
(171, '128488933', 'Celular', NULL, '2019-05-19 01:28:19', '2019-05-19 01:28:19'),
(172, '121753639', 'Celular', NULL, '2019-05-19 01:28:19', '2019-05-19 01:28:19'),
(173, '198837531', 'Fijo', NULL, '2019-05-19 01:28:19', '2019-05-19 01:28:19'),
(174, '177995748', 'Celular', NULL, '2019-05-19 01:28:19', '2019-05-19 01:28:19'),
(175, '191274315', 'Fijo', NULL, '2019-05-19 01:28:19', '2019-05-19 01:28:19'),
(176, '288241542', 'Fijo', NULL, '2019-05-19 01:28:19', '2019-05-19 01:28:19'),
(177, '148412993', 'Celular', NULL, '2019-05-19 01:28:19', '2019-05-19 01:28:19'),
(178, '226843310', 'Celular', NULL, '2019-05-19 01:28:20', '2019-05-19 01:28:20'),
(179, '184280418', 'Celular', NULL, '2019-05-19 01:28:20', '2019-05-19 01:28:20'),
(180, '244696961', 'Fijo', NULL, '2019-05-19 01:28:20', '2019-05-19 01:28:20'),
(181, '116116979', 'Celular', NULL, '2019-05-19 01:28:20', '2019-05-19 01:28:20'),
(182, '134352430', 'Fijo', NULL, '2019-05-19 01:28:20', '2019-05-19 01:28:20'),
(183, '140553259', 'Fijo', NULL, '2019-05-19 01:28:20', '2019-05-19 01:28:20'),
(184, '244591442', 'Celular', NULL, '2019-05-19 01:28:20', '2019-05-19 01:28:20'),
(185, '113528684', 'Celular', NULL, '2019-05-19 01:28:20', '2019-05-19 01:28:20'),
(186, '176089880', 'Celular', NULL, '2019-05-19 01:28:20', '2019-05-19 01:28:20'),
(187, '98036984', 'Fijo', NULL, '2019-05-19 01:28:21', '2019-05-19 01:28:21'),
(188, '84334560', 'Celular', NULL, '2019-05-19 01:28:21', '2019-05-19 01:28:21'),
(189, '302896342', 'Fijo', NULL, '2019-05-19 01:28:21', '2019-05-19 01:28:21'),
(190, '184820852', 'Celular', NULL, '2019-05-19 01:28:21', '2019-05-19 01:28:21'),
(191, '302309294', 'Celular', NULL, '2019-05-19 01:28:22', '2019-05-19 01:28:22'),
(192, '121310299', 'Fijo', NULL, '2019-05-19 01:28:22', '2019-05-19 01:28:22'),
(193, '35781947', 'Celular', NULL, '2019-05-19 01:28:22', '2019-05-19 01:28:22'),
(194, '73128356', 'Fijo', NULL, '2019-05-19 01:28:22', '2019-05-19 01:28:22'),
(195, '249926004', 'Celular', NULL, '2019-05-19 01:28:22', '2019-05-19 01:28:22'),
(196, '253326407', 'Celular', NULL, '2019-05-19 01:28:23', '2019-05-19 01:28:23'),
(197, '216897305', 'Fijo', NULL, '2019-05-19 01:28:23', '2019-05-19 01:28:23'),
(198, '213030684', 'Celular', NULL, '2019-05-19 01:28:23', '2019-05-19 01:28:23'),
(199, '131389708', 'Fijo', NULL, '2019-05-19 01:28:23', '2019-05-19 01:28:23'),
(200, '232890849', 'Fijo', NULL, '2019-05-19 01:28:23', '2019-05-19 01:28:23'),
(201, '56929166', 'Fijo', NULL, '2019-05-19 01:28:23', '2019-05-19 01:28:23'),
(202, '229000552', 'Celular', NULL, '2019-05-19 01:28:23', '2019-05-19 01:28:23'),
(203, '226995434', 'Fijo', NULL, '2019-05-19 01:28:23', '2019-05-19 01:28:23'),
(204, '224079460', 'Fijo', NULL, '2019-05-19 01:28:23', '2019-05-19 01:28:23'),
(205, '262499577', 'Fijo', NULL, '2019-05-19 01:28:24', '2019-05-19 01:28:24'),
(206, '135720251', 'Celular', NULL, '2019-05-19 01:28:24', '2019-05-19 01:28:24'),
(207, '258171255', 'Celular', NULL, '2019-05-19 01:28:24', '2019-05-19 01:28:24'),
(208, '195121991', 'Fijo', NULL, '2019-05-19 01:28:24', '2019-05-19 01:28:24'),
(209, '308953048', 'Celular', NULL, '2019-05-19 01:28:25', '2019-05-19 01:28:25'),
(210, '115851815', 'Celular', NULL, '2019-05-19 01:28:25', '2019-05-19 01:28:25'),
(211, '223082414', 'Fijo', NULL, '2019-05-19 01:28:25', '2019-05-19 01:28:25'),
(212, '250895245', 'Fijo', NULL, '2019-05-19 01:28:25', '2019-05-19 01:28:25'),
(213, '48622364', 'Fijo', NULL, '2019-05-19 01:28:25', '2019-05-19 01:28:25'),
(214, '201529697', 'Fijo', NULL, '2019-05-19 01:28:25', '2019-05-19 01:28:25'),
(215, '291792291', 'Fijo', NULL, '2019-05-19 01:28:25', '2019-05-19 01:28:25'),
(216, '296436048', 'Celular', NULL, '2019-05-19 01:28:25', '2019-05-19 01:28:25'),
(217, '148416539', 'Celular', NULL, '2019-05-19 01:28:26', '2019-05-19 01:28:26'),
(218, '111602120', 'Celular', NULL, '2019-05-19 01:28:26', '2019-05-19 01:28:26'),
(219, '304825276', 'Celular', NULL, '2019-05-19 01:28:26', '2019-05-19 01:28:26'),
(220, '192151342', 'Fijo', NULL, '2019-05-19 01:28:26', '2019-05-19 01:28:26'),
(221, '184866840', 'Fijo', NULL, '2019-05-19 01:28:26', '2019-05-19 01:28:26'),
(222, '155388074', 'Celular', NULL, '2019-05-19 01:28:26', '2019-05-19 01:28:26'),
(223, '224005552', 'Fijo', NULL, '2019-05-19 01:28:26', '2019-05-19 01:28:26'),
(224, '113914877', 'Fijo', NULL, '2019-05-19 01:28:27', '2019-05-19 01:28:27'),
(225, '222434002', 'Fijo', NULL, '2019-05-19 01:28:27', '2019-05-19 01:28:27'),
(226, '216219678', 'Fijo', NULL, '2019-05-19 01:28:27', '2019-05-19 01:28:27'),
(227, '41644092', 'Fijo', NULL, '2019-05-19 01:28:27', '2019-05-19 01:28:27'),
(228, '68210839', 'Celular', NULL, '2019-05-19 01:28:27', '2019-05-19 01:28:27'),
(229, '287338359', 'Celular', NULL, '2019-05-19 01:28:27', '2019-05-19 01:28:27'),
(230, '159836535', 'Fijo', NULL, '2019-05-19 01:28:27', '2019-05-19 01:28:27'),
(231, '274075936', 'Celular', NULL, '2019-05-19 01:28:27', '2019-05-19 01:28:27'),
(232, '293277923', 'Celular', NULL, '2019-05-19 01:28:27', '2019-05-19 01:28:27'),
(233, '167468626', 'Celular', NULL, '2019-05-19 01:28:28', '2019-05-19 01:28:28'),
(234, '73301718', 'Fijo', NULL, '2019-05-19 01:28:28', '2019-05-19 01:28:28'),
(235, '157256521', 'Celular', NULL, '2019-05-19 01:28:28', '2019-05-19 01:28:28'),
(236, '283508619', 'Celular', NULL, '2019-05-19 01:28:28', '2019-05-19 01:28:28'),
(237, '276553555', 'Fijo', NULL, '2019-05-19 01:28:28', '2019-05-19 01:28:28'),
(238, '284048017', 'Celular', NULL, '2019-05-19 01:28:28', '2019-05-19 01:28:28'),
(239, '216047769', 'Celular', NULL, '2019-05-19 01:28:28', '2019-05-19 01:28:28'),
(240, '239439701', 'Celular', NULL, '2019-05-19 01:28:28', '2019-05-19 01:28:28'),
(241, '78592862', 'Fijo', NULL, '2019-05-19 01:28:28', '2019-05-19 01:28:28'),
(242, '299942164', 'Celular', NULL, '2019-05-19 01:28:28', '2019-05-19 01:28:28'),
(243, '72494711', 'Celular', NULL, '2019-05-19 01:28:29', '2019-05-19 01:28:29'),
(244, '115811454', 'Celular', NULL, '2019-05-19 01:28:29', '2019-05-19 01:28:29'),
(245, '181689483', 'Celular', NULL, '2019-05-19 01:28:29', '2019-05-19 01:28:29'),
(246, '150135540', 'Fijo', NULL, '2019-05-19 01:28:29', '2019-05-19 01:28:29'),
(247, '286478427', 'Fijo', NULL, '2019-05-19 01:28:29', '2019-05-19 01:28:29'),
(248, '226716463', 'Celular', NULL, '2019-05-19 01:28:29', '2019-05-19 01:28:29'),
(249, '292904066', 'Celular', NULL, '2019-05-19 01:28:29', '2019-05-19 01:28:29'),
(250, '262569390', 'Celular', NULL, '2019-05-19 01:28:29', '2019-05-19 01:28:29'),
(251, '70179992', 'Celular', NULL, '2019-05-19 01:28:30', '2019-05-19 01:28:30'),
(252, '287796105', 'Celular', NULL, '2019-05-19 01:28:30', '2019-05-19 01:28:30'),
(253, '41234097', 'Celular', NULL, '2019-05-19 01:28:30', '2019-05-19 01:28:30'),
(254, '249876910', 'Fijo', NULL, '2019-05-19 01:28:30', '2019-05-19 01:28:30'),
(255, '153888567', 'Fijo', NULL, '2019-05-19 01:28:30', '2019-05-19 01:28:30'),
(256, '261421392', 'Celular', NULL, '2019-05-19 01:28:30', '2019-05-19 01:28:30'),
(257, '268604464', 'Celular', NULL, '2019-05-19 01:28:30', '2019-05-19 01:28:30'),
(258, '212892677', 'Celular', NULL, '2019-05-19 01:28:30', '2019-05-19 01:28:30'),
(259, '306750358', 'Fijo', NULL, '2019-05-19 01:28:30', '2019-05-19 01:28:30'),
(260, '66993854', 'Fijo', NULL, '2019-05-19 01:28:30', '2019-05-19 01:28:30'),
(261, '39349040', 'Fijo', NULL, '2019-05-19 01:28:31', '2019-05-19 01:28:31'),
(262, '189696475', 'Celular', NULL, '2019-05-19 01:28:31', '2019-05-19 01:28:31'),
(263, '310269386', 'Fijo', NULL, '2019-05-19 01:28:31', '2019-05-19 01:28:31'),
(264, '136109533', 'Fijo', NULL, '2019-05-19 01:28:31', '2019-05-19 01:28:31'),
(265, '63914163', 'Fijo', NULL, '2019-05-19 01:28:31', '2019-05-19 01:28:31'),
(266, '289175145', 'Fijo', NULL, '2019-05-19 01:28:31', '2019-05-19 01:28:31'),
(267, '105221273', 'Celular', NULL, '2019-05-19 01:28:31', '2019-05-19 01:28:31'),
(268, '162585576', 'Fijo', NULL, '2019-05-19 01:28:31', '2019-05-19 01:28:31'),
(269, '202828991', 'Fijo', NULL, '2019-05-19 01:28:31', '2019-05-19 01:28:31'),
(270, '151290822', 'Fijo', NULL, '2019-05-19 01:28:32', '2019-05-19 01:28:32'),
(271, '297262455', 'Fijo', NULL, '2019-05-19 01:28:32', '2019-05-19 01:28:32'),
(272, '193648900', 'Fijo', NULL, '2019-05-19 01:28:32', '2019-05-19 01:28:32'),
(273, '220248041', 'Celular', NULL, '2019-05-19 01:28:32', '2019-05-19 01:28:32'),
(274, '282682782', 'Celular', NULL, '2019-05-19 01:28:32', '2019-05-19 01:28:32'),
(275, '221656141', 'Celular', NULL, '2019-05-19 01:28:32', '2019-05-19 01:28:32'),
(276, '188965948', 'Celular', NULL, '2019-05-19 01:28:32', '2019-05-19 01:28:32'),
(277, '205498218', 'Celular', NULL, '2019-05-19 01:28:32', '2019-05-19 01:28:32'),
(278, '55652908', 'Celular', NULL, '2019-05-19 01:28:32', '2019-05-19 01:28:32'),
(279, '245767276', 'Fijo', NULL, '2019-05-19 01:28:32', '2019-05-19 01:28:32'),
(280, '243212239', 'Fijo', NULL, '2019-05-19 01:28:33', '2019-05-19 01:28:33'),
(281, '292113494', 'Fijo', NULL, '2019-05-19 01:28:33', '2019-05-19 01:28:33'),
(282, '74009887', 'Fijo', NULL, '2019-05-19 01:28:33', '2019-05-19 01:28:33'),
(283, '109617005', 'Celular', NULL, '2019-05-19 01:28:33', '2019-05-19 01:28:33'),
(284, '34140138', 'Celular', NULL, '2019-05-19 01:28:33', '2019-05-19 01:28:33'),
(285, '55572055', 'Celular', NULL, '2019-05-19 01:28:33', '2019-05-19 01:28:33'),
(286, '64389847', 'Fijo', NULL, '2019-05-19 01:28:33', '2019-05-19 01:28:33'),
(287, '56481411', 'Celular', NULL, '2019-05-19 01:28:33', '2019-05-19 01:28:33'),
(288, '251848708', 'Celular', NULL, '2019-05-19 01:28:34', '2019-05-19 01:28:34'),
(289, '131947834', 'Fijo', NULL, '2019-05-19 01:28:34', '2019-05-19 01:28:34'),
(290, '156013151', 'Fijo', NULL, '2019-05-19 01:28:34', '2019-05-19 01:28:34'),
(291, '252298696', 'Celular', NULL, '2019-05-19 01:28:34', '2019-05-19 01:28:34'),
(292, '68573697', 'Celular', NULL, '2019-05-19 01:28:34', '2019-05-19 01:28:34'),
(293, '279554417', 'Fijo', NULL, '2019-05-19 01:28:34', '2019-05-19 01:28:34'),
(294, '60251390', 'Celular', NULL, '2019-05-19 01:28:34', '2019-05-19 01:28:34'),
(295, '253517289', 'Fijo', NULL, '2019-05-19 01:28:34', '2019-05-19 01:28:34'),
(296, '195369868', 'Fijo', NULL, '2019-05-19 01:28:34', '2019-05-19 01:28:34'),
(297, '169545389', 'Celular', NULL, '2019-05-19 01:28:35', '2019-05-19 01:28:35'),
(298, '161487121', 'Fijo', NULL, '2019-05-19 01:28:35', '2019-05-19 01:28:35'),
(299, '99332159', 'Fijo', NULL, '2019-05-19 01:28:35', '2019-05-19 01:28:35'),
(300, '135391725', 'Celular', NULL, '2019-05-19 01:28:35', '2019-05-19 01:28:35'),
(301, '298118608', 'Fijo', NULL, '2019-05-19 01:28:35', '2019-05-19 01:28:35'),
(302, '278607851', 'Celular', NULL, '2019-05-19 01:28:35', '2019-05-19 01:28:35'),
(303, '298005505', 'Fijo', NULL, '2019-05-19 01:28:35', '2019-05-19 01:28:35'),
(304, '278384361', 'Fijo', NULL, '2019-05-19 01:28:35', '2019-05-19 01:28:35'),
(305, '70480940', 'Celular', NULL, '2019-05-19 01:28:35', '2019-05-19 01:28:35'),
(306, '219284879', 'Celular', NULL, '2019-05-19 01:28:36', '2019-05-19 01:28:36'),
(307, '317855595', 'Celular', NULL, '2019-05-19 01:28:36', '2019-05-19 01:28:36'),
(308, '312277665', 'Fijo', NULL, '2019-05-19 01:28:36', '2019-05-19 01:28:36'),
(309, '103881393', 'Celular', NULL, '2019-05-19 01:28:36', '2019-05-19 01:28:36'),
(310, '302321882', 'Fijo', NULL, '2019-05-19 01:28:36', '2019-05-19 01:28:36'),
(311, '239217701', 'Fijo', NULL, '2019-05-19 01:28:36', '2019-05-19 01:28:36'),
(312, '92650295', 'Celular', NULL, '2019-05-19 01:28:36', '2019-05-19 01:28:36'),
(313, '136486457', 'Fijo', NULL, '2019-05-19 01:28:36', '2019-05-19 01:28:36'),
(314, '104848895', 'Fijo', NULL, '2019-05-19 01:28:37', '2019-05-19 01:28:37'),
(315, '295100605', 'Fijo', NULL, '2019-05-19 01:28:37', '2019-05-19 01:28:37'),
(316, '123719365', 'Fijo', NULL, '2019-05-19 01:28:37', '2019-05-19 01:28:37'),
(317, '210349493', 'Celular', NULL, '2019-05-19 01:28:37', '2019-05-19 01:28:37'),
(318, '32392522', 'Celular', NULL, '2019-05-19 01:28:37', '2019-05-19 01:28:37'),
(319, '302290487', 'Celular', NULL, '2019-05-19 01:28:37', '2019-05-19 01:28:37'),
(320, '180823214', 'Fijo', NULL, '2019-05-19 01:28:37', '2019-05-19 01:28:37'),
(321, '262573335', 'Fijo', NULL, '2019-05-19 01:28:37', '2019-05-19 01:28:37'),
(322, '236178487', 'Fijo', NULL, '2019-05-19 01:28:37', '2019-05-19 01:28:37'),
(323, '189488377', 'Celular', NULL, '2019-05-19 01:28:37', '2019-05-19 01:28:37'),
(324, '96830698', 'Celular', NULL, '2019-05-19 01:28:38', '2019-05-19 01:28:38'),
(325, '153653572', 'Celular', NULL, '2019-05-19 01:28:38', '2019-05-19 01:28:38'),
(326, '38168817', 'Celular', NULL, '2019-05-19 01:28:38', '2019-05-19 01:28:38'),
(327, '141557458', 'Fijo', NULL, '2019-05-19 01:28:38', '2019-05-19 01:28:38'),
(328, '200588940', 'Fijo', NULL, '2019-05-19 01:28:38', '2019-05-19 01:28:38'),
(329, '301546334', 'Celular', NULL, '2019-05-19 01:28:38', '2019-05-19 01:28:38'),
(330, '45306327', 'Fijo', NULL, '2019-05-19 01:28:38', '2019-05-19 01:28:38'),
(331, '98463113', 'Fijo', NULL, '2019-05-19 01:28:39', '2019-05-19 01:28:39'),
(332, '295639911', 'Fijo', NULL, '2019-05-19 01:28:39', '2019-05-19 01:28:39'),
(333, '67935839', 'Celular', NULL, '2019-05-19 01:28:39', '2019-05-19 01:28:39'),
(334, '42481051', 'Fijo', NULL, '2019-05-19 01:28:39', '2019-05-19 01:28:39'),
(335, '208285408', 'Celular', NULL, '2019-05-19 01:28:39', '2019-05-19 01:28:39'),
(336, '111694281', 'Celular', NULL, '2019-05-19 01:28:39', '2019-05-19 01:28:39'),
(337, '112519965', 'Celular', NULL, '2019-05-19 01:28:39', '2019-05-19 01:28:39'),
(338, '261375303', 'Celular', NULL, '2019-05-19 01:28:39', '2019-05-19 01:28:39'),
(339, '204797281', 'Fijo', NULL, '2019-05-19 01:28:39', '2019-05-19 01:28:39'),
(340, '66906002', 'Celular', NULL, '2019-05-19 01:28:40', '2019-05-19 01:28:40'),
(341, '234947392', 'Celular', NULL, '2019-05-19 01:28:55', '2019-05-19 01:28:55'),
(342, '300492455', 'Celular', NULL, '2019-05-19 01:28:55', '2019-05-19 01:28:55'),
(343, '118309324', 'Fijo', NULL, '2019-05-19 01:28:55', '2019-05-19 01:28:55'),
(344, '137769372', 'Fijo', NULL, '2019-05-19 01:28:55', '2019-05-19 01:28:55'),
(345, '239778462', 'Fijo', NULL, '2019-05-19 01:28:55', '2019-05-19 01:28:55'),
(346, '223439696', 'Celular', NULL, '2019-05-19 01:28:55', '2019-05-19 01:28:55'),
(347, '228517771', 'Fijo', NULL, '2019-05-19 01:28:55', '2019-05-19 01:28:55'),
(348, '310755882', 'Fijo', NULL, '2019-05-19 01:28:55', '2019-05-19 01:28:55'),
(349, '280784069', 'Fijo', NULL, '2019-05-19 01:28:55', '2019-05-19 01:28:55'),
(350, '291905432', 'Celular', NULL, '2019-05-19 01:28:56', '2019-05-19 01:28:56'),
(351, '263553713', 'Celular', NULL, '2019-05-19 01:28:56', '2019-05-19 01:28:56'),
(352, '191634310', 'Celular', NULL, '2019-05-19 01:28:56', '2019-05-19 01:28:56'),
(353, '291889101', 'Fijo', NULL, '2019-05-19 01:28:56', '2019-05-19 01:28:56'),
(354, '220097913', 'Celular', NULL, '2019-05-19 01:28:56', '2019-05-19 01:28:56'),
(355, '141056159', 'Celular', NULL, '2019-05-19 01:28:56', '2019-05-19 01:28:56');

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
(1, '2019-1', '2019-01-14', '2019-06-30', NULL, '2019-05-19 01:27:58', '2019-05-19 01:27:58'),
(2, '2018-2', '2018-07-04', '2019-10-03', NULL, '2019-05-19 01:27:58', '2019-05-19 01:27:58'),
(3, '2018-1', '2018-02-01', '2018-05-03', NULL, '2019-05-19 01:27:58', '2019-05-19 01:27:58');

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
(1, 'Privado', NULL, '2019-05-19 01:27:45', '2019-05-19 01:27:45'),
(2, 'Publico', NULL, '2019-05-19 01:27:45', '2019-05-19 01:27:45'),
(3, 'Otro', NULL, '2019-05-19 01:27:45', '2019-05-19 01:27:45');

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
(1, 'Estudiante', NULL, '2019-05-19 01:28:54', '2019-05-19 01:28:54'),
(2, 'Docente', NULL, '2019-05-19 01:28:54', '2019-05-19 01:28:54'),
(3, 'Administrativo', NULL, '2019-05-19 01:28:54', '2019-05-19 01:28:54');

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
(1, 'A+', NULL, '2019-05-19 01:27:36', '2019-05-19 01:27:36'),
(2, 'A-', NULL, '2019-05-19 01:27:36', '2019-05-19 01:27:36'),
(3, 'B+', NULL, '2019-05-19 01:27:36', '2019-05-19 01:27:36'),
(4, 'B-', NULL, '2019-05-19 01:27:36', '2019-05-19 01:27:36'),
(5, 'AB+', NULL, '2019-05-19 01:27:36', '2019-05-19 01:27:36'),
(6, 'AB-', NULL, '2019-05-19 01:27:36', '2019-05-19 01:27:36'),
(7, 'O+', NULL, '2019-05-19 01:27:36', '2019-05-19 01:27:36'),
(8, 'O-', NULL, '2019-05-19 01:27:36', '2019-05-19 01:27:36');

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
(1, 'Mundial 2010', 3, 3, 4, NULL, '2019-05-19 01:27:59', '2019-05-19 01:27:59'),
(2, 'Torneo Uno', 3, 1, 2, NULL, '2019-05-19 01:27:59', '2019-05-19 01:27:59'),
(3, 'Torneo Dos', 3, 2, 4, NULL, '2019-05-19 01:27:59', '2019-05-19 01:27:59');

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
(1, 1, 1, 'Cristian Marin', 'cristianmarint@cotecnova.edu.co', 'users/default.png', '2019-05-19 01:27:44', '$2y$10$8wiiQCD4HrizRVD/Yv/I8up1qn.dqz1bby37USZ7OVasuiiPSfETa', NULL, NULL, NULL, '2019-05-19 01:27:44', '2019-05-19 01:27:44'),
(2, 2, 1, 'Edwin Lopez', 'edwin.lopezb.1297@cotecnova.edu.co', 'https://dr.savee-cdn.com/things/5/9/9e4e29fcb5b21e693ba728.jpg', '2019-05-19 01:27:44', '$2y$10$KM8.jAdjmBxrCuQNWVf.P.lreA7UmIAja8iItXizRlSunVZs8OuTW', NULL, NULL, NULL, '2019-05-19 01:27:44', '2019-05-19 01:27:44'),
(3, NULL, 1, 'Andres Gaviria', 'andresgaviria2310@gmail.com', 'https://scontent.feoh3-1.fna.fbcdn.net/v/t1.0-9/56965599_2254403868004519_4069063543922622464_n.jpg?_nc_cat=109&_nc_ht=scontent.feoh3-1.fna&oh=586429e433681660367cb917ee52687c&oe=5D6BFA3D', '2019-05-19 01:27:44', '$2y$10$.UbvRGQwwfXcGaPPMmdA4euE0YOhKv1gSTtmmO62BL51tDbQKD8VC', NULL, NULL, NULL, '2019-05-19 01:27:44', '2019-05-19 01:27:44'),
(4, NULL, NULL, 'Correo Personal Cristian', 'cristianmarint@gmail.com', 'storage/img/datosbasicos/default.png', '2019-05-19 01:27:45', '$2y$10$j2ma6dHQfpLdMUUCtT2R8efrReeXDBpl3th7IfRmlo.viTAC9GWw6', NULL, NULL, NULL, '2019-05-19 01:27:45', '2019-05-19 01:27:45');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

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
