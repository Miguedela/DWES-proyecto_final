-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 12-03-2025 a las 12:39:03
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

--
-- Volcado de datos para la tabla `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('laravel_cache_migue@gmail.com|127.0.0.1', 'i:1;', 1741779030),
('laravel_cache_migue@gmail.com|127.0.0.1:timer', 'i:1741779030;', 1741779030),
('laravel_cache_root@gmail.com|127.0.0.1', 'i:1;', 1741779004),
('laravel_cache_root@gmail.com|127.0.0.1:timer', 'i:1741779004;', 1741779004),
('laravel_cache_rootroot@gmail.com|127.0.0.1', 'i:1;', 1741778996),
('laravel_cache_rootroot@gmail.com|127.0.0.1:timer', 'i:1741778996;', 1741778996);

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
(12, '0001_01_01_000000_create_users_table', 1),
(13, '0001_01_01_000001_create_cache_table', 1),
(14, '0001_01_01_000002_create_jobs_table', 1),
(15, '2025_03_02_165101_create_tractores_table', 1);

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
('ufZOou2fcWQHkMXHstKc788wkhbkGZ0skA0rbSei', 1, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:136.0) Gecko/20100101 Firefox/136.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoieWZkc0ZydHFiUXc4dENDQWJJQ1hSSTBTNlE3d0hkZDVJWmdJeFN5cCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC90cmFjdG9yZXMiO31zOjM6InVybCI7YTowOnt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1741779507);

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
(1, 'Tractor 7R 330', '2020', 70000.00, 330, 'Tractor de alta gama con motor potente y gran capacidad de trabajo para terrenos difíciles.', 'https://res.cloudinary.com/dascvtkd1/image/upload/v1741777438/7R_330_jbxfwd.png', '2025-03-12 11:35:45', '2025-03-12 11:35:45'),
(2, 'Tractor 7R 350', '2021', 75000.00, 350, 'Tractor de última tecnología con motor ecológico y capacidad para grandes cultivos.', 'https://res.cloudinary.com/dascvtkd1/image/upload/v1741777438/7R_350_fgpxxk.png', '2025-03-12 11:35:45', '2025-03-12 11:35:45'),
(3, 'Tractor 7R 310', '2019', 68000.00, 310, 'Tractor robusto y eficiente, ideal para agricultores que buscan alto rendimiento y economía.', 'https://res.cloudinary.com/dascvtkd1/image/upload/v1741777332/7R_310_n9gqze.png', '2025-03-12 11:35:45', '2025-03-12 11:35:45'),
(4, 'Tractor 7R 290', '2018', 65000.00, 290, 'Tractor económico para pequeños y medianos cultivos, ideal para terrenos medianos.', 'https://res.cloudinary.com/dascvtkd1/image/upload/v1741777273/7R_290_yuekgj.png', '2025-03-12 11:35:45', '2025-03-12 11:35:45'),
(5, 'Tractor 7R 270', '2020', 62000.00, 270, 'Tractor de excelente relación calidad-precio, diseñado para operaciones agrícolas de tamaño medio.', 'https://res.cloudinary.com/dascvtkd1/image/upload/v1741777096/7R_270_aygt1j.png', '2025-03-12 11:35:45', '2025-03-12 11:35:45'),
(6, 'Tractor Modelo F', '2023', 55000.00, 350, 'Tractor de última tecnología con motor ecológico y alta eficiencia.', 'https://res.cloudinary.com/dascvtkd1/image/upload/v1741776408/20b7ed76-91a3-417a-b2dd-02a0b165bbf9.png', '2025-03-12 11:35:45', '2025-03-12 11:35:45'),
(7, 'Tractor Modelo G', '2020', 46000.00, 230, 'Tractor resistente, ideal para terrenos difíciles y cultivos extensivos.', 'https://res.cloudinary.com/dascvtkd1/image/upload/v1741776381/317aa5e6-8edc-42b7-b934-abd37d0b3685.png', '2025-03-12 11:35:45', '2025-03-12 11:35:45'),
(8, 'Tractor Modelo H', '2021', 47000.00, 240, 'Tractor de gran rendimiento, perfecto para tareas agrícolas de gran escala.', 'https://res.cloudinary.com/dascvtkd1/image/upload/v1741776367/f2ea349f-7b18-4457-a2d0-2b98b86c8067.png', '2025-03-12 11:35:45', '2025-03-12 11:35:45'),
(9, 'Tractor Modelo I', '2022', 49000.00, 260, 'Tractor moderno con alta eficiencia en consumo de combustible.', 'https://res.cloudinary.com/dascvtkd1/image/upload/v1741776347/fe2ff95b-da68-4ffe-89d5-6ceff71b8d4b.png', '2025-03-12 11:35:45', '2025-03-12 11:35:45');

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
  `role` varchar(255) NOT NULL DEFAULT 'user',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `role`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$12$DLAw/0Y5vQnzptQpT/vdZ.IA.iWb8zoF.Fx8.3qimAdt.6hnZRtzK', NULL, 'admin', '2025-03-12 10:35:13', '2025-03-12 10:35:13'),
(2, 'Migue', 'migue@gmail.com', NULL, '$2y$12$eFmPj7i7GKDjQjc4KO68WeR0qovUCjLRzrGttgQW573MDGhLqrHTi', NULL, 'user', '2025-03-12 10:37:31', '2025-03-12 10:37:31');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `tractores`
--
ALTER TABLE `tractores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
