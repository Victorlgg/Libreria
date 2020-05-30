-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2020 at 03:37 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `libreria`
--

-- --------------------------------------------------------

--
-- Table structure for table `categoria`
--

CREATE TABLE `categoria` (
  `idCategoria` int(3) NOT NULL,
  `descripcion` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `categoria`
--

INSERT INTO `categoria` (`idCategoria`, `descripcion`) VALUES
(1, 'Fantasia'),
(2, 'Historia'),
(3, 'Ciencia ficcion'),
(4, 'Economia'),
(5, 'Aventura'),
(6, 'novela'),
(7, 'romance');

-- --------------------------------------------------------

--
-- Table structure for table `compras`
--

CREATE TABLE `compras` (
  `idCompra` int(20) NOT NULL,
  `idUsuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `detallescompra`
--

CREATE TABLE `detallescompra` (
  `idCompra` int(20) NOT NULL,
  `idPublicacion` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `libros`
--

CREATE TABLE `libros` (
  `idLibro` int(11) NOT NULL,
  `nombre` varchar(30) COLLATE utf8_bin NOT NULL,
  `autor` varchar(30) COLLATE utf8_bin NOT NULL,
  `editorial` varchar(30) COLLATE utf8_bin NOT NULL,
  `year` int(4) NOT NULL,
  `idCategoria` int(11) NOT NULL,
  `precio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `libros`
--

INSERT INTO `libros` (`idLibro`, `nombre`, `autor`, `editorial`, `year`, `idCategoria`, `precio`) VALUES
(1, 'a', 'a', 'a', 2020, 2, 128992),
(2, 'asd', 'asd', 'ddd', 1213, 7, 542405),
(3, 'asd', 'ddff', 'fff', 1848, 7, 475051),
(4, 'asd', 'ddff', 'fff', 1460, 5, 698041),
(5, 'prueba', 'desde', 'postman', 1660, 7, 215053),
(6, 'asd', 'asd', 'asd', 1797, 4, 731140),
(7, 'asd', 'asd', 'asd', 1888, 5, 260542),
(8, 'asd', 'asd', 'asd', 1928, 1, 859292),
(9, 'asd', 'asd', 'ddd', 1858, 7, 764834),
(10, 'asd', 'asd', 'asd', 1387, 6, 296295),
(11, 'ddd', 'ddd', 'ddd', 1261, 7, 936972),
(12, 'xd', 'xd', 'xd', 2013, 4, 145974),
(13, 'xd', 'xd', 'xd', 288, 5, 568957),
(14, '123', '123', '123', 1260, 5, 556864),
(15, 'aaa', 'aaa', 'aaa', 1297, 4, 127450),
(16, 'ddd', 'ddd', 'ddd', 585, 5, 716660),
(17, 'asd', 'asd', 'asd', 955, 4, 450947),
(18, 'aaa', 'aadd', 'dds', 900, 5, 54756),
(19, 'asd', 'asd', 'asd', 1537, 6, 670941),
(20, 'asd', 'asd', '123', 845, 1, 440438),
(21, 'ss', 'sad', 'dsd', 1533, 5, 139368),
(22, 'ddd', 'ddd', 'dd', 991, 1, 225524),
(23, 'eee', 'eee', '33e', 256, 4, 659517),
(24, 'asd', 'asd', 'dd', 230, 3, 771014),
(25, 'dddd', 'ddd', 'ddd', 281, 4, 926521),
(26, 'prueba', 'desde', 'postman', 615, 7, 469563),
(27, 'prueba', 'desde', 'postman', 111, 4, 418252),
(36, 'prueba', 'desde', 'postman', 634, 5, 632570),
(37, 'prueba', 'desde ', 'app', 716, 7, 58094),
(38, 'prueba', 'desde', 'app', 1577, 4, 142762),
(39, 'aaasds', 'sdsdas', 'asdas', 1600, 7, 489529),
(40, 'ttuyt', 'tytyt', 'ytytyt', 1149, 7, 169357),
(41, 'asd', 'asd', 'ddd', 846, 2, 228201),
(42, 'ggg', 'gggg', 'ggg', 683, 7, 582932),
(43, 'hhhh', 'hhhh', 'hhh5', 778, 6, 380059),
(44, 'kkk', 'kkk', 'kkk', 1741, 5, 101498),
(45, 'asd4', 'ddd', 'd', 213, 4, 217314),
(46, 'prueba', 'desde', 'postman', 1801, 6, 732079),
(47, 'prueba', 'desde', 'postman', 188, 4, 258451),
(48, 'DD', 'DD', 'DDD', 1497, 6, 846017),
(49, 'DD', 'DD', 'DDD', 762, 4, 704736),
(50, 'ddd', 'ddd', 'ddd', 1240, 1, 935629),
(51, 'nueva ruta', 'nueva ruta', 'nueva ruta', 1794, 6, 713936),
(52, 'localgh', 'localgh', 'localgh', 1111, 6, 712792);

-- --------------------------------------------------------

--
-- Table structure for table `publicacion`
--

CREATE TABLE `publicacion` (
  `idPublicacion` int(20) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `estadoVenta` int(1) DEFAULT NULL,
  `idLibro` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `subscripcion`
--

CREATE TABLE `subscripcion` (
  `idSubscripcion` int(3) NOT NULL,
  `nombreSubscripcion` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `descripcion` varchar(30) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `usuario`
--

CREATE TABLE `usuario` (
  `idUsuario` int(11) NOT NULL,
  `nombres` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `apellidos` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `telefono` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `direccion` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `correo` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `numIdentificacion` int(30) DEFAULT NULL,
  `usuario` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `pwd` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `estado` int(1) DEFAULT NULL,
  `idSubscripcion` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`idCategoria`);

--
-- Indexes for table `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`idCompra`),
  ADD KEY `idUsuario` (`idUsuario`);

--
-- Indexes for table `detallescompra`
--
ALTER TABLE `detallescompra`
  ADD KEY `idCompra` (`idCompra`),
  ADD KEY `idPublicacion` (`idPublicacion`);

--
-- Indexes for table `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`idLibro`),
  ADD KEY `idCategoria` (`idCategoria`);

--
-- Indexes for table `publicacion`
--
ALTER TABLE `publicacion`
  ADD PRIMARY KEY (`idPublicacion`),
  ADD KEY `idUsuario` (`idUsuario`),
  ADD KEY `idLibro` (`idLibro`);

--
-- Indexes for table `subscripcion`
--
ALTER TABLE `subscripcion`
  ADD PRIMARY KEY (`idSubscripcion`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idUsuario`),
  ADD KEY `idSubscripcion` (`idSubscripcion`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categoria`
--
ALTER TABLE `categoria`
  MODIFY `idCategoria` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `compras`
--
ALTER TABLE `compras`
  MODIFY `idCompra` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `libros`
--
ALTER TABLE `libros`
  MODIFY `idLibro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `publicacion`
--
ALTER TABLE `publicacion`
  MODIFY `idPublicacion` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `compras`
--
ALTER TABLE `compras`
  ADD CONSTRAINT `compras_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`);

--
-- Constraints for table `detallescompra`
--
ALTER TABLE `detallescompra`
  ADD CONSTRAINT `detallescompra_ibfk_1` FOREIGN KEY (`idCompra`) REFERENCES `compras` (`idCompra`),
  ADD CONSTRAINT `detallescompra_ibfk_2` FOREIGN KEY (`idPublicacion`) REFERENCES `publicacion` (`idPublicacion`);

--
-- Constraints for table `libros`
--
ALTER TABLE `libros`
  ADD CONSTRAINT `libros_ibfk_1` FOREIGN KEY (`idCategoria`) REFERENCES `categoria` (`idCategoria`) ON DELETE CASCADE;

--
-- Constraints for table `publicacion`
--
ALTER TABLE `publicacion`
  ADD CONSTRAINT `publicacion_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`),
  ADD CONSTRAINT `publicacion_ibfk_2` FOREIGN KEY (`idLibro`) REFERENCES `libros` (`idLibro`);

--
-- Constraints for table `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`idSubscripcion`) REFERENCES `subscripcion` (`idSubscripcion`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
