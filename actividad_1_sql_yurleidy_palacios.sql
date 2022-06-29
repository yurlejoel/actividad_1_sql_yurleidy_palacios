-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.24-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para papeleria_laley
DROP DATABASE IF EXISTS `papeleria_laley`;
CREATE DATABASE IF NOT EXISTS `papeleria_laley` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `papeleria_laley`;

-- Volcando estructura para tabla papeleria_laley.products
DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `price` float NOT NULL,
  `cost` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla papeleria_laley.products: ~0 rows (aproximadamente)
DELETE FROM `products`;
INSERT INTO `products` (`id`, `name`, `price`, `cost`) VALUES
	(1, 'cuaderno grande', 3000, 3500),
	(2, 'cartulina mediana', 1000, 1500),
	(3, ' caja de lapiz', 3500, 5000);

-- Volcando estructura para tabla papeleria_laley.providers
DROP TABLE IF EXISTS `providers`;
CREATE TABLE IF NOT EXISTS `providers` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `nit` varchar(50) NOT NULL,
  `direction` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla papeleria_laley.providers: ~0 rows (aproximadamente)
DELETE FROM `providers`;
INSERT INTO `providers` (`id`, `name`, `nit`, `direction`) VALUES
	(1, 'maria perez', '12365478', ' calle 55 # 37 - 34'),
	(2, 'luis gonsalez', '98745612', 'carrrera 10 #55-350'),
	(3, 'raul gomez', '65432198', 'calle 35 # 82 -43');

-- Volcando estructura para tabla papeleria_laley.purchases
DROP TABLE IF EXISTS `purchases`;
CREATE TABLE IF NOT EXISTS `purchases` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `provider_id` smallint(6) NOT NULL,
  `product_id` smallint(6) NOT NULL,
  `cost_unit` float NOT NULL,
  `amount` smallint(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla papeleria_laley.purchases: ~0 rows (aproximadamente)
DELETE FROM `purchases`;
INSERT INTO `purchases` (`id`, `date`, `provider_id`, `product_id`, `cost_unit`, `amount`) VALUES
	(1, '2022-06-28', 1, 2, 1500, 6),
	(2, '2022-06-28', 2, 1, 3500, 10),
	(3, '2022-06-28', 3, 3500, 5000, 15);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
