/*
SQLyog Ultimate v11.33 (64 bit)
MySQL - 5.1.49-community : Database - db_article
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_article` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `db_article`;

/*Table structure for table `t_article` */

DROP TABLE IF EXISTS `t_article`;

CREATE TABLE `t_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` longtext,
  `href` varchar(500) DEFAULT NULL,
  `publish_date` datetime DEFAULT NULL,
  `title` varchar(500) DEFAULT NULL,
  `author` varchar(200) DEFAULT NULL,
  `article_type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKcbgh6ycj8sg37o45bqplab86k` (`article_type_id`),
  CONSTRAINT `FKcbgh6ycj8sg37o45bqplab86k` FOREIGN KEY (`article_type_id`) REFERENCES `t_article_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=300 DEFAULT CHARSET=utf8;

/*Table structure for table `t_article_type` */

DROP TABLE IF EXISTS `t_article_type`;

CREATE TABLE `t_article_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
