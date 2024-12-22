-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-08-2024 a las 16:33:32
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
-- Base de datos: `django_ventas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add categoria', 7, 'add_categoria'),
(26, 'Can change categoria', 7, 'change_categoria'),
(27, 'Can delete categoria', 7, 'delete_categoria'),
(28, 'Can view categoria', 7, 'view_categoria'),
(29, 'Can add unidad', 8, 'add_unidad'),
(30, 'Can change unidad', 8, 'change_unidad'),
(31, 'Can delete unidad', 8, 'delete_unidad'),
(32, 'Can view unidad', 8, 'view_unidad'),
(33, 'Can add producto', 9, 'add_producto'),
(34, 'Can change producto', 9, 'change_producto'),
(35, 'Can delete producto', 9, 'delete_producto'),
(36, 'Can view producto', 9, 'view_producto'),
(37, 'Can add cliente', 10, 'add_cliente'),
(38, 'Can change cliente', 10, 'change_cliente'),
(39, 'Can delete cliente', 10, 'delete_cliente'),
(40, 'Can view cliente', 10, 'view_cliente'),
(41, 'Can add tipo_ venta', 11, 'add_tipo_venta'),
(42, 'Can change tipo_ venta', 11, 'change_tipo_venta'),
(43, 'Can delete tipo_ venta', 11, 'delete_tipo_venta'),
(44, 'Can view tipo_ venta', 11, 'view_tipo_venta'),
(45, 'Can add venta', 12, 'add_venta'),
(46, 'Can change venta', 12, 'change_venta'),
(47, 'Can delete venta', 12, 'delete_venta'),
(48, 'Can view venta', 12, 'view_venta'),
(49, 'Can add detalle_ venta', 13, 'add_detalle_venta'),
(50, 'Can change detalle_ venta', 13, 'change_detalle_venta'),
(51, 'Can delete detalle_ venta', 13, 'delete_detalle_venta'),
(52, 'Can view detalle_ venta', 13, 'view_detalle_venta');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$720000$REFQatjqJbON3Ol9TIGp5M$gW/+w/8uLkwov26z8SZg7tqbytIqUKmrBWw5hPvTmqg=', '2024-08-11 14:27:46.825468', 1, 'ivan', '', '', 'ivanfe@gmail.com', 1, 1, '2024-08-11 14:27:34.302739');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes_cliente`
--

CREATE TABLE `clientes_cliente` (
  `id` bigint(20) NOT NULL,
  `nombres` varchar(50) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `ruc_dni` varchar(11) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `email` varchar(254) NOT NULL,
  `estado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_venta_detalle_venta`
--

CREATE TABLE `detalle_venta_detalle_venta` (
  `id` bigint(20) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `producto_id` bigint(20) NOT NULL,
  `venta_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_venta_tipo_venta`
--

CREATE TABLE `detalle_venta_tipo_venta` (
  `id` bigint(20) NOT NULL,
  `descripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_venta_venta`
--

CREATE TABLE `detalle_venta_venta` (
  `id` bigint(20) NOT NULL,
  `fecha_venta` date NOT NULL,
  `nro_doc` varchar(50) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `subtotal` decimal(10,2) NOT NULL,
  `igv` decimal(10,2) NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `cliente_id` bigint(20) NOT NULL,
  `tipo_venta_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(10, 'clientes', 'cliente'),
(5, 'contenttypes', 'contenttype'),
(13, 'detalle_venta', 'detalle_venta'),
(11, 'detalle_venta', 'tipo_venta'),
(12, 'detalle_venta', 'venta'),
(9, 'productos', 'producto'),
(6, 'sessions', 'session'),
(8, 'unidades', 'unidad'),
(7, 'ventasApp', 'categoria');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-08-11 14:23:56.607279'),
(2, 'auth', '0001_initial', '2024-08-11 14:24:04.369722'),
(3, 'admin', '0001_initial', '2024-08-11 14:24:05.739452'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-08-11 14:24:05.769915'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-08-11 14:24:05.807974'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-08-11 14:24:06.255067'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-08-11 14:24:06.920007'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-08-11 14:24:07.019952'),
(9, 'auth', '0004_alter_user_username_opts', '2024-08-11 14:24:07.069801'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-08-11 14:24:07.567955'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-08-11 14:24:07.620564'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-08-11 14:24:07.709984'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-08-11 14:24:07.825845'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-08-11 14:24:07.920262'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-08-11 14:24:08.146157'),
(16, 'auth', '0011_update_proxy_permissions', '2024-08-11 14:24:08.234598'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-08-11 14:24:09.207138'),
(18, 'clientes', '0001_initial', '2024-08-11 14:24:09.337468'),
(19, 'ventasApp', '0001_initial', '2024-08-11 14:24:10.818322'),
(20, 'ventasApp', '0002_delete_producto_delete_unidad', '2024-08-11 14:24:10.969947'),
(21, 'unidades', '0001_initial', '2024-08-11 14:24:11.104454'),
(22, 'productos', '0001_initial', '2024-08-11 14:24:12.769990'),
(23, 'productos', '0002_rename_categoriaid_producto_categoria_and_more', '2024-08-11 14:24:34.644088'),
(24, 'detalle_venta', '0001_initial', '2024-08-11 14:24:40.303224'),
(25, 'sessions', '0001_initial', '2024-08-11 14:24:41.403762');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('ipq9xerjg6q04hewmdnmiu20ovcskc1p', '.eJxVjMsOwiAQRf-FtSEw1M7g0n2_gTA8pGogKe3K-O_apAvd3nPOfQnnt7W4rafFzVFchBan3419eKS6g3j39dZkaHVdZpa7Ig_a5dRiel4P9--g-F6-tcGEZIFMNpHIRNQ6W_RaaVBIMAArNMoSk2UeIqpMZwBOPNqgGEfx_gCoqjaU:1sd9Xu:FFDxCpt84PJs2Y4trBz0W1FbYVsoBEHLwX65gK4jq7E', '2024-08-25 14:27:46.857844');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_producto`
--

CREATE TABLE `productos_producto` (
  `id` bigint(20) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `precio` decimal(6,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `created` datetime(6) NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `categoria_id` bigint(20) NOT NULL,
  `unidad_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidades_unidad`
--

CREATE TABLE `unidades_unidad` (
  `id` bigint(20) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `created` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventasapp_categoria`
--

CREATE TABLE `ventasapp_categoria` (
  `id` bigint(20) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `created` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `clientes_cliente`
--
ALTER TABLE `clientes_cliente`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle_venta_detalle_venta`
--
ALTER TABLE `detalle_venta_detalle_venta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detalle_venta_detall_producto_id_2694f734_fk_productos` (`producto_id`),
  ADD KEY `detalle_venta_detall_venta_id_e51998bc_fk_detalle_v` (`venta_id`);

--
-- Indices de la tabla `detalle_venta_tipo_venta`
--
ALTER TABLE `detalle_venta_tipo_venta`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle_venta_venta`
--
ALTER TABLE `detalle_venta_venta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detalle_venta_venta_cliente_id_bf506ef2_fk_clientes_cliente_id` (`cliente_id`),
  ADD KEY `detalle_venta_venta_tipo_venta_id_2e097c50_fk_detalle_v` (`tipo_venta_id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `productos_producto`
--
ALTER TABLE `productos_producto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productos_producto_categoria_id_1fef506a_fk_ventasApp` (`categoria_id`),
  ADD KEY `productos_producto_unidad_id_acda99ea_fk_unidades_unidad_id` (`unidad_id`);

--
-- Indices de la tabla `unidades_unidad`
--
ALTER TABLE `unidades_unidad`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventasapp_categoria`
--
ALTER TABLE `ventasapp_categoria`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `clientes_cliente`
--
ALTER TABLE `clientes_cliente`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detalle_venta_detalle_venta`
--
ALTER TABLE `detalle_venta_detalle_venta`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detalle_venta_tipo_venta`
--
ALTER TABLE `detalle_venta_tipo_venta`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detalle_venta_venta`
--
ALTER TABLE `detalle_venta_venta`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `productos_producto`
--
ALTER TABLE `productos_producto`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `unidades_unidad`
--
ALTER TABLE `unidades_unidad`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ventasapp_categoria`
--
ALTER TABLE `ventasapp_categoria`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `detalle_venta_detalle_venta`
--
ALTER TABLE `detalle_venta_detalle_venta`
  ADD CONSTRAINT `detalle_venta_detall_producto_id_2694f734_fk_productos` FOREIGN KEY (`producto_id`) REFERENCES `productos_producto` (`id`),
  ADD CONSTRAINT `detalle_venta_detall_venta_id_e51998bc_fk_detalle_v` FOREIGN KEY (`venta_id`) REFERENCES `detalle_venta_venta` (`id`);

--
-- Filtros para la tabla `detalle_venta_venta`
--
ALTER TABLE `detalle_venta_venta`
  ADD CONSTRAINT `detalle_venta_venta_cliente_id_bf506ef2_fk_clientes_cliente_id` FOREIGN KEY (`cliente_id`) REFERENCES `clientes_cliente` (`id`),
  ADD CONSTRAINT `detalle_venta_venta_tipo_venta_id_2e097c50_fk_detalle_v` FOREIGN KEY (`tipo_venta_id`) REFERENCES `detalle_venta_tipo_venta` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `productos_producto`
--
ALTER TABLE `productos_producto`
  ADD CONSTRAINT `productos_producto_categoria_id_1fef506a_fk_ventasApp` FOREIGN KEY (`categoria_id`) REFERENCES `ventasapp_categoria` (`id`),
  ADD CONSTRAINT `productos_producto_unidad_id_acda99ea_fk_unidades_unidad_id` FOREIGN KEY (`unidad_id`) REFERENCES `unidades_unidad` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
