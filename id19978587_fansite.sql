-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 18-03-2024 a las 19:52:11
-- Versión del servidor: 10.5.20-MariaDB
-- Versión de PHP: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `id19978587_fansite`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `categoria` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`) VALUES
(13, 'INTEL '),
(14, 'Motherboard'),
(15, 'Fuentes de Poder'),
(16, 'HDD'),
(17, 'SSD'),
(18, 'Gabinetes'),
(19, 'AMD'),
(20, 'RAM'),
(21, 'Monitores'),
(22, 'Teclados'),
(23, 'Mauses'),
(24, 'Nvidia Graphics'),
(26, 'Disipador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` text NOT NULL,
  `precio_normal` decimal(10,2) NOT NULL,
  `precio_rebajado` decimal(10,2) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `imagen` varchar(50) NOT NULL,
  `id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio_normal`, `precio_rebajado`, `cantidad`, `imagen`, `id_categoria`) VALUES
(11, 'GTX 1080TI ASUS', '11GB GDDR5X 352-bit memory with 3584 CUDA cores, an 11GB \r\n', 250.00, 200.00, 1, '20230525042009.jpg', 24),
(12, 'RTX 4090 ASUS ROG', 'PCIe 4.0, 24GB GDDR6X, HDMI/ DP', 1500.00, 1400.00, 1, '20230525041945.jpg', 24),
(15, 'Logitech G502 Inalámbrico', 'HERO 25K, 25,600 DPI, RGB, Peso Reducido, 11 Botones Programables', 100.00, 90.00, 1, '20230525044241.jpg', 23),
(16, 'Razer Basilisk V3', '26K dpi Optical Sensor - 11 Programmable Buttons', 50.00, 45.00, 1, '20230525043814.jpg', 23),
(17, 'HyperX Alloy Origins Core TKL', 'Teclado mecánico táctil con cable Aqua Switch para juegos con iluminación trasera RGB', 50.00, 49.00, 1, '20230525044035.jpg', 22),
(18, 'JOMKIZ Teclas PBT', '135 Teclas Mecha Dye Sublimation Cherry Profile Keycaps con 7U Clear Spacebar', 40.00, 35.00, 1, '20230525044149.jpg', 22),
(19, 'Curvo Gigabyte G27FC LED 27', 'Full HD, FreeSync, 165Hz, HDMI, Bocinas Integradas (2 x 4W), Negro', 200.00, 190.00, 1, '20230525044436.jpg', 21),
(20, 'Asus monitor curvo TUF Gaming 23.6\'', 'VG24VQE, 1080P, Full HD, 165Hz, 1ms, ELMB, Altavoces, Adaptive-Sync, FreeSync Premium, soporte VESA, DisplayPort, HDMI', 170.00, 150.00, 1, '20230525044526.jpg', 21),
(21, 'ADATA Memoria RAM', 'XPG SPECTRIX D60G RGB 16GB DDR4 3200Mhz', 40.00, 38.00, 90, '20230525045104.jpg', 20),
(22, 'XPG MEM', 'DDR4 SPECT D50 16GB 3200MHZ RGB ', 50.00, 45.00, 50, '20230525045200.jpg', 20),
(23, 'Ryzen™ 7 5700G - 8 núcleos de CPU', 'Socket-AM4-3.80GHz - 16MB L3 Cache - Incluye Disipador Wraith Stealth', 250.00, 245.00, 5, '20230525045248.jpg', 19),
(24, 'Ryzen™ 9 7950X', 'AMD \"Zen 4\" Aumento máximo de 5.7 GHz, desbloqueado para overclocking, caché de 80 MB, soporte DDR5-5200', 550.00, 540.00, 6, '20230525045333.jpg', 19),
(25, 'Cougar Conquer 2 Gabinete Gamer Rgb Full Tower', 'Cougar Conquer 2 Gabinete Gamer Rgb Full Tower', 400.00, 390.00, 5, '20230525045520.jpg', 18),
(26, 'KEDIERS Gabinete PC ATX', 'Gaming Carcasa para PC Carcasa de Cristal Templado para Juegos con 9 Ventiladores ARGB,C590', 280.00, 270.00, 6, '20230525045559.jpg', 18),
(27, 'SSD Kingston A400', '960GB, SATA III, 2.5\', 7mm', 40.00, 37.00, 4, '20230525045700.jpg', 17),
(28, 'SAMSUNG 980 Pro 1TB PCIe NVMe Gen4 SSD', 'nterno para Videojuegos M.2 (MZ-V8P1T0B)', 130.00, 120.00, 7, '20230525045745.jpg', 17),
(29, 'Seagate Barracuda 3.5\', 2TB', 'SATA III, 6 Gbit/s, 7200RPM, 256MB Cache', 40.00, 35.00, 4, '20230525045832.jpg', 16),
(30, 'NAS Seagate IronWolf Pro 3.5” 20TB', '1 a 24 Bahías, 20TB, SATA III, 6Gbit/s, 7200RPM, 256MB Caché', 550.00, 540.00, 3, '20230525045915.jpg', 16),
(31, 'ASUS ROG Thor Titanium 80 PLUS', 'Titanium, 20+4 pin ATX, 135mm, 1600W', 600.00, 580.00, 9, '20230525050000.jpg', 15),
(32, 'EVGA 100-BR-0700-K1 ', 'Fuente de Alimentación, 700W', 70.00, 69.00, 8, '20230525050107.jpg', 15),
(33, 'Asus Rog Maximus Z690', 'Tarjeta Madre Asus Rog Maximus Z690 Hero Eva Edition Ddr5\r\n', 750.00, 700.00, 6, '20230525050150.jpg', 14),
(34, 'Asus Rog Strix Z790-a ', 'Tarjeta Madre Asus Rog Strix Z790-a Gaming Wifi D4 Lga1700\r\n', 400.00, 390.00, 3, '20230525050228.jpg', 14),
(35, 'Core i9-9940X', 'BX80673I99940X de 14 núcleos y 4.4GHz de frecuencia', 1050.00, 1040.00, 6, '20230525050356.jpg', 13),
(36, 'Core i7-13700KF', '8CORE, 30MB, 3.4Ghz,170013th Generacion,125 W,Raptor Lake\r\n', 400.00, 390.00, 7, '20230525050426.jpg', 13),
(37, 'MUNFROST Disipador de CPU', 'Cold Storm 2x120mm ARGB Sync Intel y AMD 4 Heat pipes', 70.00, 65.00, 50, '20230525050458.jpg', 26),
(38, 'CoolerMaster MLW-D24M-A18PC-R2 MASTERLIQUID ML240L V2 RGB', 'Marca COOLER MASTER\r\nModelo MLW-D24M-A18PC-R2\r\nProducto de alta calidad\r\nDoble cámara\r\nRGB', 80.00, 75.00, 40, '20230525050539.jpg', 26),
(40, 'papas', 'flash', 1.00, 1.00, 1, '20230525152727.jpg', 17);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `usuario` varchar(20) NOT NULL,
  `correo` varchar(150) NOT NULL,
  `passw` varchar(250) NOT NULL,
  `user_type` enum('creator','user') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `usuario`, `correo`, `passw`, `user_type`) VALUES
(9, 'mictlan', 'alejandromarley327ecr@hotmail.com', '$2y$10$T11vL8OgC9zHX39m96U/Eej0eRKZqDmtzyYi0itGaJxJH/3vx69e2', 'creator'),
(10, 'alejandro', 'pandakuzh@hotmail.com', '$2y$10$ipqD3eUwqcRABVr6lyX/GeKC6p1igwIoPDPgkwI7wyC/6AWopHx92', 'creator'),
(11, 'Zwuancito', 'arturmacartur1603@gmail.com', '$2y$10$7Zlnk1cozxi08.Z9G9uTY.LN4svfwdPQWcqd4j/pA7JbqRd/kSs7a', 'creator'),
(12, 'R2D2', 'arturmacartur1603@gmail.com', '$2y$10$MuY8FeLROl.N6256DJe3M.1Z.JCrUmp6QSOvPQZb624p9ETo0r2Ui', 'creator'),
(13, 'R2D2', 'arturmacartur1603@gmail.com', '$2y$10$HLMN0hFvK5FunYGLUoszVOQYnYr88IOdSPkY07QnjUSaFKGDwDnpq', 'creator'),
(14, 'viri', 'viri@hotmail.com', '$2y$10$8xlv5RS38Bk1yJBKbvx8JO3PS3YirUfbD6tRhh64UoNKhQjYqYNY2', 'creator'),
(15, 'bren', 'bren@gmail.com', '$2y$10$StNKkJBOI7vpRW4edTll0uVzRrqHOWqv7sMjejDrVNHBm9N43c4EC', 'creator'),
(16, 'pablo', 'pablo@gmail.com', '$2y$10$0S53C46rA2tTt5HhVKVn9u08pnoCGhLZ3uixxqe8KFAPu/l7HZAaa', 'creator'),
(17, 'juan', 'juan@gmail.com', '$2y$10$jOcbXGF5YqwEu1PeJ3KAPubJrDr46egRmZLrB6HPwbNlQJ/nXZCN2', 'creator'),
(18, 'paco', 'paco@gmail.com', '$2y$10$mLHkBES9.FsTCtXClKNQhOZjwvhe8w9otz.DQKzWUcz7PQlZiayUO', 'user'),
(19, 'vi1215', 'viridiana@gmail.com', '$2y$10$S51PGK9Cvr4s/jwy2D.jm.YLIU.8rWRn8klHVzN0ic5mghaBXK/t6', 'user'),
(20, 'alejandro', 'alejandromarley327ecr@gmail.com', '$2y$10$reiLA5yIH5a671vM49SBvuPsiycpdSgH/qNxPPoixt08XugXnj93O', 'user'),
(21, 'viri', 'viri@gmail.com', '$2y$10$6bypuaMTSqvF/93vv4QYZ.LBNcj11gKkeqlEJ6WvJZEoOqRpkx33W', 'creator'),
(22, 'viry', 'viry@gmail.com', '$2y$10$SoJ.GyfH0dsI/Cs8VryEqu1ELdXspqiO2FapuBrxQaweimjYnKFpu', 'user'),
(23, 'swuan', 'swuan@gmail.com', '$2y$10$Crp2BS8nXoKVOWl.tqdbR..hg7BHxpX.kHkDWktvTf3f7UHS0VvBu', 'user'),
(24, 'swuan1', 'swuan1@gmail.com', '$2y$10$W.5YXbnA/vPEomwOgHLnMuzjxDiLHvS8TGwcXYUvfyUt3RDr36zMu', 'creator');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(20) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `clave` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `nombre`, `clave`) VALUES
(1, 'admin', 'Angel Sifuentes', '21232f297a57a5a743894a0e4a801fc3');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
