# Host: localhost  (Version: 5.5.47)
# Date: 2018-12-11 23:41:19
# Generator: MySQL-Front 5.3  (Build 4.234)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "t_ms"
#

DROP TABLE IF EXISTS `t_ms`;
CREATE TABLE `t_ms` (
  `ID` varchar(20) NOT NULL DEFAULT '',
  `NAME` varchar(255) DEFAULT NULL,
  `o_price` varchar(10) DEFAULT NULL,
  `n_price` varchar(10) DEFAULT NULL,
  `image1` varchar(255) DEFAULT NULL,
  `image2` varchar(255) DEFAULT NULL,
  `image3` varchar(255) DEFAULT NULL,
  `image4` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "t_ms"
#

/*!40000 ALTER TABLE `t_ms` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_ms` ENABLE KEYS */;

#
# Structure for table "users"
#

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "users"
#

/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
