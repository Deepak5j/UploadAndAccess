-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.18-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema testup2
--

CREATE DATABASE IF NOT EXISTS testup2;
USE testup2;

--
-- Definition of table `files2`
--

DROP TABLE IF EXISTS `files2`;
CREATE TABLE `files2` (
  `sr` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(45) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY  (`sr`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `files2`
--

/*!40000 ALTER TABLE `files2` DISABLE KEYS */;
INSERT INTO `files2` (`sr`,`name`,`date`) VALUES 
 (1,'moosefly1.gif','2017-04-18 15:03:12'),
 (2,'100271.jpg','2017-04-18 15:05:26'),
 (3,'3d_abstract_flower_4k-wide.jpg','2017-04-18 15:07:48'),
 (4,'19091_en_1.jpg','2017-04-18 15:18:06'),
 (5,'152638-digital_art-abstract-green-crystal.jpg','2017-04-18 15:21:58'),
 (6,'87577.jpg','2017-04-18 15:31:52'),
 (7,'705996.jpg','2017-04-18 15:33:58'),
 (8,'875771.jpg','2017-04-18 15:34:45'),
 (9,'earth_from_space_4k-wide.jpg','2017-04-18 15:38:00'),
 (10,'uphill_road-wide.jpg','2017-04-18 15:42:34'),
 (11,'earth_dream-wide.jpg','2017-04-18 15:48:26'),
 (12,'3d_abstract_flower_4k-wide1.jpg','2017-04-18 16:37:52'),
 (13,'234658.jpg','2017-04-18 16:48:06'),
 (14,'121750.jpg','2017-04-18 17:04:24');
/*!40000 ALTER TABLE `files2` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
