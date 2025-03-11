-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 11-03-2025 a las 16:20:05
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
-- Base de datos: `agriario`
--
CREATE DATABASE IF NOT EXISTS `agriario` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `agriario`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache`
--

DROP TABLE IF EXISTS `cache`;
CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jobs`
--

DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(8, '0001_01_01_000000_create_users_table', 1),
(9, '0001_01_01_000001_create_cache_table', 1),
(10, '0001_01_01_000002_create_jobs_table', 1),
(11, '2025_03_02_165101_create_tractores_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('J4a1mdzJzCAgVwpI5Puyye8qiZjuJsvmseatGvZe', 1, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiNjRKR1llY3ozd3VvVjUxdGs5V2RxVHJHV1VteTA4TUVaOEdGQjBibyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC90cmFjdG9yZXMiO31zOjM6InVybCI7YTowOnt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1741202234),
('KsC8L7KjsfaoyjAFyAvdbtjZqfvG1uGswJf4uHvp', 1, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiSERkT0kyWEhEQU5PbnIya3BxVWJJQjFJWTByOUhzemQ3WUFrMFY0ciI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC90cmFjdG9yZXMiO31zOjM6InVybCI7YTowOnt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1741203736);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tractores`
--

DROP TABLE IF EXISTS `tractores`;
CREATE TABLE `tractores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `anio_fabricacion` year(4) NOT NULL,
  `precio_mercado` decimal(10,2) NOT NULL,
  `potencia` int(11) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tractores`
--

INSERT INTO `tractores` (`id`, `nombre`, `anio_fabricacion`, `precio_mercado`, `potencia`, `descripcion`, `imagen`, `created_at`, `updated_at`) VALUES
(1, 'John Deere 2020', '1967', 4000.00, 60, 'John Deere 2020 fue fabricado entre 1967 y 1972, y está equipado con un motor de cuatro cilindros 4202 con una cilindrada de 3320 cm³. La potencia máxima del motor es de 60 CV a 2500 rpm, y el par motor alcanza los 194 Nm a 1500 rpm.', 'https://res.cloudinary.com/dascvtkd1/image/upload/v1740935148/b2d704c8-d678-4eb5-b2fa-d1297ee0f7ef.png', NULL, NULL),
(4, 'John Deere 2020', '1967', 4000.00, 60, 'John Deere 2020 fue fabricado entre 1967 y 1972, y está equipado con un motor de cuatro cilindros 4202 con una cilindrada de 3320 cm³. La potencia máxima del motor es de 60 CV a 2500 rpm, y el par motor alcanza los 194 Nm a 1500 rpm.', 'https://res.cloudinary.com/dascvtkd1/image/upload/v1740935148/b2d704c8-d678-4eb5-b2fa-d1297ee0f7ef.png', NULL, NULL),
(5, 'John Deere 2020', '1967', 4000.00, 60, 'John Deere 2020 fue fabricado entre 1967 y 1972, y está equipado con un motor de cuatro cilindros 4202 con una cilindrada de 3320 cm³. La potencia máxima del motor es de 60 CV a 2500 rpm, y el par motor alcanza los 194 Nm a 1500 rpm.', 'https://res.cloudinary.com/dascvtkd1/image/upload/v1740935148/b2d704c8-d678-4eb5-b2fa-d1297ee0f7ef.png', NULL, NULL),
(6, 'John Deere 2020', '1967', 4000.00, 60, 'John Deere 2020 fue fabricado entre 1967 y 1972, y está equipado con un motor de cuatro cilindros 4202 con una cilindrada de 3320 cm³. La potencia máxima del motor es de 60 CV a 2500 rpm, y el par motor alcanza los 194 Nm a 1500 rpm.', 'https://res.cloudinary.com/dascvtkd1/image/upload/v1740935148/b2d704c8-d678-4eb5-b2fa-d1297ee0f7ef.png', NULL, NULL),
(7, 'John Deere 2020', '1967', 4000.00, 60, 'John Deere 2020 fue fabricado entre 1967 y 1972, y está equipado con un motor de cuatro cilindros 4202 con una cilindrada de 3320 cm³. La potencia máxima del motor es de 60 CV a 2500 rpm, y el par motor alcanza los 194 Nm a 1500 rpm.', 'https://res.cloudinary.com/dascvtkd1/image/upload/v1740935148/b2d704c8-d678-4eb5-b2fa-d1297ee0f7ef.png', NULL, NULL),
(8, 'John Deere 2020', '1967', 4000.00, 60, 'John Deere 2020 fue fabricado entre 1967 y 1972, y está equipado con un motor de cuatro cilindros 4202 con una cilindrada de 3320 cm³. La potencia máxima del motor es de 60 CV a 2500 rpm, y el par motor alcanza los 194 Nm a 1500 rpm.', 'https://res.cloudinary.com/dascvtkd1/image/upload/v1740935148/b2d704c8-d678-4eb5-b2fa-d1297ee0f7ef.png', NULL, NULL),
(9, 'John Deere 2020', '1967', 4000.00, 60, 'John Deere 2020 fue fabricado entre 1967 y 1972, y está equipado con un motor de cuatro cilindros 4202 con una cilindrada de 3320 cm³. La potencia máxima del motor es de 60 CV a 2500 rpm, y el par motor alcanza los 194 Nm a 1500 rpm.', 'https://res.cloudinary.com/dascvtkd1/image/upload/v1740935148/b2d704c8-d678-4eb5-b2fa-d1297ee0f7ef.png', NULL, NULL),
(10, 'John Deere 2020', '1967', 4000.00, 60, 'John Deere 2020 fue fabricado entre 1967 y 1972, y está equipado con un motor de cuatro cilindros 4202 con una cilindrada de 3320 cm³. La potencia máxima del motor es de 60 CV a 2500 rpm, y el par motor alcanza los 194 Nm a 1500 rpm.', 'https://res.cloudinary.com/dascvtkd1/image/upload/v1740935148/b2d704c8-d678-4eb5-b2fa-d1297ee0f7ef.png', NULL, NULL),
(11, 'John Deere 2020', '1967', 4000.00, 60, 'John Deere 2020 fue fabricado entre 1967 y 1972, y está equipado con un motor de cuatro cilindros 4202 con una cilindrada de 3320 cm³. La potencia máxima del motor es de 60 CV a 2500 rpm, y el par motor alcanza los 194 Nm a 1500 rpm.', 'https://res.cloudinary.com/dascvtkd1/image/upload/v1740935148/b2d704c8-d678-4eb5-b2fa-d1297ee0f7ef.png', NULL, NULL),
(12, 'John Deere 2020', '1967', 4000.00, 60, 'John Deere 2020 fue fabricado entre 1967 y 1972, y está equipado con un motor de cuatro cilindros 4202 con una cilindrada de 3320 cm³. La potencia máxima del motor es de 60 CV a 2500 rpm, y el par motor alcanza los 194 Nm a 1500 rpm.', 'https://res.cloudinary.com/dascvtkd1/image/upload/v1740935148/b2d704c8-d678-4eb5-b2fa-d1297ee0f7ef.png', NULL, NULL),
(13, 'John Deere 2020', '1967', 4000.00, 60, 'John Deere 2020 fue fabricado entre 1967 y 1972, y está equipado con un motor de cuatro cilindros 4202 con una cilindrada de 3320 cm³. La potencia máxima del motor es de 60 CV a 2500 rpm, y el par motor alcanza los 194 Nm a 1500 rpm.', 'https://res.cloudinary.com/dascvtkd1/image/upload/v1740935148/b2d704c8-d678-4eb5-b2fa-d1297ee0f7ef.png', NULL, NULL),
(14, 'John Deere 2020', '1967', 4000.00, 60, 'John Deere 2020 fue fabricado entre 1967 y 1972, y está equipado con un motor de cuatro cilindros 4202 con una cilindrada de 3320 cm³. La potencia máxima del motor es de 60 CV a 2500 rpm, y el par motor alcanza los 194 Nm a 1500 rpm.', 'https://res.cloudinary.com/dascvtkd1/image/upload/v1740935148/b2d704c8-d678-4eb5-b2fa-d1297ee0f7ef.png', NULL, NULL),
(15, 'John Deere 2020', '1967', 4000.00, 60, 'John Deere 2020 fue fabricado entre 1967 y 1972, y está equipado con un motor de cuatro cilindros 4202 con una cilindrada de 3320 cm³. La potencia máxima del motor es de 60 CV a 2500 rpm, y el par motor alcanza los 194 Nm a 1500 rpm.', 'https://res.cloudinary.com/dascvtkd1/image/upload/v1740935148/b2d704c8-d678-4eb5-b2fa-d1297ee0f7ef.png', NULL, NULL),
(16, 'John Deere 2020', '1967', 4000.00, 60, 'John Deere 2020 fue fabricado entre 1967 y 1972, y está equipado con un motor de cuatro cilindros 4202 con una cilindrada de 3320 cm³. La potencia máxima del motor es de 60 CV a 2500 rpm, y el par motor alcanza los 194 Nm a 1500 rpm.', 'https://res.cloudinary.com/dascvtkd1/image/upload/v1740935148/b2d704c8-d678-4eb5-b2fa-d1297ee0f7ef.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'root', 'root@gmail.com', NULL, '$2y$12$.TqYKEpElCJctRdxQVTA4uf5nhPkwnaRapK1gdDEYyPFPKEwfjuOq', 'svh0wci47qiOSVt8yLFj1QVTXNvRCvf92ueDU9YYz3sArfz4pVNEjcPR3YeZ', '2025-03-02 16:13:51', '2025-03-02 16:13:51');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indices de la tabla `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indices de la tabla `tractores`
--
ALTER TABLE `tractores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `tractores`
--
ALTER TABLE `tractores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
