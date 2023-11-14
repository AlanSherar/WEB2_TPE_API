-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-11-2023 a las 03:15:27
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_game_ecommerce`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `generos`
--

CREATE TABLE `generos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `generos`
--

INSERT INTO `generos` (`id`, `nombre`) VALUES
(1, 'Terror'),
(2, 'Aventura'),
(3, 'Accion'),
(4, 'FPS'),
(5, 'Locura');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juegos`
--

CREATE TABLE `juegos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `precio` float NOT NULL,
  `genero` int(11) NOT NULL,
  `desarrolladora` varchar(100) NOT NULL,
  `micro_transacciones` tinyint(1) NOT NULL,
  `lanzamiento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `juegos`
--

INSERT INTO `juegos` (`id`, `nombre`, `precio`, `genero`, `desarrolladora`, `micro_transacciones`, `lanzamiento`) VALUES
(1, 'Layers of Fear', 7500, 1, 'Aun no se ', 0, '2005-11-25'),
(2, 'Nombre nuevo', 2307, 4, 'Aun no se 2', 0, '2018-10-09'),
(3, 'God of War', 15000, 2, 'yo que se', 0, '2021-06-01'),
(4, 'Far Cry 3', 5000, 1, 'Aun no se ', 0, '2010-02-17'),
(5, 'Counter Strike : GO', 7000, 3, 'Steam', 1, '2022-01-14'),
(24, 'Gary Madden', 18865, 1, 'Vestibulum Foundation', 1, '2024-05-18'),
(25, 'Jakeem Lowe', 47997, 4, 'Malesuada Ut Industries', 0, '2023-03-16'),
(26, 'Duncan Juarez', 3330, 3, 'Enim Commodo Corp.', 0, '2023-03-28'),
(27, 'Thomas Duran', 32404, 3, 'Quam Associates', 1, '2024-10-18'),
(28, 'Brennan Greene', 34843, 2, 'Nulla Interdum Corp.', 0, '2024-04-17'),
(29, 'Gray Bowen', 3407, 3, 'Nibh Aliquam Ornare Corp.', 0, '2024-08-05'),
(30, 'Luke Little', 2141, 4, 'Orci Lobortis Industries', 0, '2023-08-24'),
(31, 'Alden Ayala', 39057, 2, 'At Nisi Limited', 1, '2023-09-27'),
(32, 'Reuben Hester', 36094, 4, 'Risus Odio Institute', 0, '2023-02-25'),
(33, 'Adrian Gregory', 8278, 5, 'Feugiat Tellus Industries', 0, '2024-03-07'),
(34, 'Hashim Booth', 15410, 3, 'Nunc Sit Ltd', 0, '2024-08-21'),
(35, 'Elvis Berry', 37693, 5, 'Magna A Tortor Institute', 0, '2023-02-10'),
(36, 'Rigel Chen', 26809, 1, 'Vel Associates', 0, '2024-06-03'),
(37, 'Carson Wynn', 43789, 2, 'Vivamus Rhoncus Donec Incorporated', 0, '2023-12-30'),
(38, 'Hyatt Yates', 17700, 1, 'Tincidunt Company', 0, '2023-07-24'),
(39, 'Keith Valentine', 35904, 5, 'Risus Donec Associates', 1, '2024-03-09'),
(40, 'Hector Clayton', 30478, 2, 'Adipiscing Corporation', 0, '2023-07-28'),
(41, 'Rudyard Powers', 2199, 4, 'Bibendum Corp.', 0, '2024-03-25'),
(42, 'Jonas Sawyer', 46035, 2, 'Pharetra Quisque LLC', 1, '2024-09-17'),
(43, 'Mannix Bauer', 3707, 3, 'Pharetra Nibh Incorporated', 1, '2024-10-04'),
(44, 'Scott Lancaster', 47658, 2, 'Sed Diam Company', 0, '2024-03-09'),
(45, 'Shad Everett', 11413, 4, 'Maecenas Libero Corp.', 1, '2024-10-25'),
(46, 'Stephen Hughes', 13732, 4, 'Mauris Foundation', 0, '2024-05-07'),
(47, 'August Kelly', 5050, 4, 'Mollis Integer Corp.', 0, '2024-10-11'),
(48, 'Clayton West', 33580, 1, 'Senectus LLC', 1, '2023-05-13'),
(49, 'Lamar Madden', 3262, 2, 'Lorem Eu PC', 0, '2023-12-06'),
(50, 'Chaney Frost', 538, 3, 'Cras Lorem Lorem Inc.', 0, '2023-12-13'),
(51, 'Brian Knowles', 804, 3, 'Ridiculus Mus Limited', 0, '2023-10-16'),
(52, 'Elmo Mcbride', 37672, 4, 'Nisl Maecenas LLC', 0, '2023-08-02'),
(53, 'Hamilton Foster', 9718, 2, 'Scelerisque Mollis Foundation', 0, '2024-10-09'),
(54, 'Caesar Durham', 10574, 2, 'Aliquet Sem PC', 0, '2024-02-04'),
(55, 'Byron Holloway', 4032, 4, 'Massa Corp.', 0, '2023-05-18'),
(56, 'Octavius Lang', 24438, 3, 'Cras Dolor Dolor Inc.', 1, '2024-10-01'),
(57, 'Wang Rutledge', 23204, 1, 'A Purus LLC', 1, '2022-11-19'),
(58, 'Kenyon Townsend', 41286, 1, 'Orci In Incorporated', 1, '2024-10-02'),
(59, 'Odysseus Johnston', 13927, 4, 'Luctus Aliquet Limited', 0, '2024-06-02'),
(60, 'Kennan Freeman', 14317, 3, 'Vivamus Rhoncus Donec Industries', 0, '2023-04-07'),
(61, 'Mohammad Anderson', 8187, 2, 'Amet Incorporated', 0, '2024-07-28'),
(62, 'Alexander Robles', 13385, 1, 'Nec Tellus LLP', 0, '2024-09-14'),
(63, 'Lane Vincent', 38054, 3, 'Ut Sagittis PC', 1, '2023-12-30'),
(64, 'Nolan Nielsen', 49777, 1, 'Semper Pretium Neque Corp.', 1, '2024-06-06'),
(65, 'Arsenio Tyler', 20315, 2, 'Cursus Et Eros Associates', 0, '2023-07-01'),
(66, 'Xenos Mckinney', 26067, 4, 'A Odio Inc.', 0, '2024-02-03'),
(67, 'Mohammad Mejia', 46434, 2, 'Penatibus Et Consulting', 1, '2023-04-04'),
(68, 'Dillon Peterson', 38344, 2, 'Odio Aliquam Ltd', 0, '2024-07-28'),
(69, 'Mason Mendoza', 22632, 3, 'Parturient Montes Nascetur Incorporated', 0, '2023-08-08'),
(70, 'Wayne Lancaster', 26747, 3, 'Consectetuer Adipiscing Foundation', 0, '2023-05-16'),
(71, 'Jerry Hester', 25986, 3, 'Ultrices Limited', 1, '2024-03-19'),
(72, 'Kenneth Wall', 40175, 5, 'Urna Nullam Limited', 0, '2024-07-03'),
(73, 'Channing Fischer', 33688, 4, 'Donec Felis Industries', 1, '2024-03-23'),
(74, 'Colt Nichols', 32377, 3, 'Nunc Laoreet LLP', 0, '2024-08-15'),
(75, 'Brandon Hester', 14487, 4, 'Magnis Dis LLC', 0, '2024-10-17'),
(76, 'Barry O\'donnell', 11882, 4, 'Ut Nulla Institute', 0, '2024-02-10'),
(77, 'Channing Washington', 21446, 2, 'Mi Lorem Incorporated', 0, '2024-08-18'),
(78, 'Bruce Bowen', 13085, 4, 'Turpis Aliquam Adipiscing Institute', 0, '2024-08-07'),
(79, 'Steven Fox', 36081, 3, 'Enim Nunc Ut LLP', 1, '2023-08-02'),
(80, 'Addison Chapman', 24230, 4, 'Ornare Placerat Orci LLP', 1, '2024-07-21'),
(81, 'Akeem Pate', 40470, 3, 'Integer Aliquam Consulting', 0, '2024-10-22'),
(82, 'Jeremy Owens', 31463, 5, 'Semper Tellus Id Corp.', 1, '2023-04-18'),
(83, 'Kennedy Pope', 25353, 4, 'Ac Mattis Industries', 0, '2024-07-17'),
(84, 'Devin Chandler', 42578, 3, 'A Odio Semper Institute', 0, '2022-12-31'),
(85, 'Ahmed Huffman', 40456, 2, 'Malesuada Augue LLP', 0, '2024-02-13'),
(86, 'Dylan Preston', 10765, 1, 'At Pede Cras LLP', 0, '2023-07-11'),
(87, 'Uriel Espinoza', 15979, 4, 'Parturient Montes Ltd', 0, '2024-06-21'),
(88, 'Keegan Gill', 1848, 4, 'Cras Eget Limited', 0, '2024-10-21'),
(89, 'Lawrence Chase', 47954, 5, 'Phasellus Libero Ltd', 0, '2024-02-16'),
(90, 'Dorian Banks', 48820, 2, 'Dolor Donec Institute', 0, '2023-11-29'),
(91, 'Asher Rush', 10500, 1, 'Hendrerit Neque In Corp.', 1, '2024-06-14'),
(92, 'Lewis Randolph', 3255, 4, 'Ac Turpis Company', 1, '2023-06-13'),
(93, 'Hoyt Woods', 17252, 3, 'Varius Ultrices Mauris Foundation', 0, '2023-02-02'),
(94, 'Timon Howard', 19552, 3, 'Aenean Euismod LLC', 0, '2024-05-12'),
(95, 'Tyrone Albert', 23858, 4, 'Nunc In Incorporated', 0, '2023-03-17'),
(96, 'Devin Whitfield', 34589, 4, 'Neque LLP', 0, '2024-05-29'),
(97, 'Nasim Gilbert', 26612, 2, 'Nec Ante Blandit Foundation', 0, '2023-06-16'),
(98, 'Clarke Alexander', 17182, 3, 'Semper Et Lacinia Foundation', 1, '2023-07-28'),
(99, 'Kyle Barker', 4345, 1, 'Sed LLP', 0, '2024-03-02'),
(100, 'Knox Small', 35657, 2, 'Sit Amet Foundation', 0, '2023-04-03'),
(101, 'Jackson Parsons', 31435, 4, 'Ipsum Corp.', 1, '2024-03-12'),
(102, 'August Pearson', 7984, 2, 'Dolor Corp.', 1, '2024-08-06'),
(103, 'Troy French', 1972, 4, 'Quisque Porttitor Associates', 1, '2023-10-22'),
(104, 'Lars Browning', 35082, 4, 'Augue Sed Molestie Ltd', 0, '2024-10-15'),
(105, 'Burton Sears', 29031, 1, 'Non Vestibulum Nec LLP', 1, '2022-11-13'),
(106, 'Talon Thompson', 18671, 3, 'Per Conubia Nostra LLC', 1, '2023-09-10'),
(107, 'Preston Bryan', 17448, 4, 'Ullamcorper Eu Institute', 0, '2024-04-28'),
(108, 'Brody Mathews', 3226, 2, 'Semper Consulting', 0, '2022-11-28'),
(109, 'Amal Leon', 15962, 4, 'Diam Sed LLC', 1, '2024-02-26'),
(110, 'Beau Bright', 11249, 4, 'Hendrerit A Incorporated', 1, '2024-02-07'),
(111, 'Lucian Fulton', 33096, 3, 'Id Incorporated', 1, '2023-05-22'),
(112, 'Bernard Mendoza', 7543, 3, 'Mauris Quis Ltd', 0, '2024-10-23'),
(113, 'Erasmus Humphrey', 7811, 5, 'Nibh Enim Foundation', 1, '2023-09-05'),
(114, 'Yuli Becker', 7184, 3, 'Neque Non Inc.', 0, '2023-05-02'),
(115, 'Jerry Blackburn', 11448, 3, 'Eu Lacus Quisque Corp.', 1, '2023-04-30'),
(116, 'Garrett Marshall', 12802, 1, 'A Purus Inc.', 0, '2024-01-04'),
(117, 'Xanthus Chang', 5787, 3, 'Condimentum Donec At Corporation', 1, '2024-10-14'),
(118, 'Xanthus Barnett', 32034, 4, 'Gravida Molestie Inc.', 1, '2022-12-07'),
(119, 'Hammett Mullins', 6279, 3, 'Pellentesque A Ltd', 1, '2024-10-22'),
(120, 'Lucius Mckenzie', 21670, 3, 'Amet Corporation', 0, '2024-02-27'),
(121, 'Dexter Reynolds', 8811, 3, 'Vel Pede Associates', 0, '2023-12-13'),
(122, 'Barry Noble', 14761, 4, 'Dolor LLP', 1, '2024-01-24'),
(123, 'Macaulay Cortez', 25670, 3, 'In Aliquet Limited', 0, '2024-05-04'),
(127, 'actualizado', 245, 4, 'actualizado', 1, '0000-00-00'),
(128, 'nuevo', 245, 4, 'nuevo', 1, '0000-00-00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `email`, `password`) VALUES
(2, 'webadmin', '$2y$10$0eO.03LGBqLFKdzAoTMaRO7Kf9NQueTKpx2Vm.MltexAL75qs6qKO');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `generos`
--
ALTER TABLE `generos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `juegos`
--
ALTER TABLE `juegos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `juegos_ibfk_1` (`genero`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `generos`
--
ALTER TABLE `generos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `juegos`
--
ALTER TABLE `juegos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `juegos`
--
ALTER TABLE `juegos`
  ADD CONSTRAINT `juegos_ibfk_1` FOREIGN KEY (`genero`) REFERENCES `generos` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
