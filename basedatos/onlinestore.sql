/*
SQLyog Professional v12.09 (64 bit)
MySQL - 5.6.16 : Database - onlinestore
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`onlinestore` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `onlinestore`;

/*Table structure for table `relacion_usuarios_tipos` */

DROP TABLE IF EXISTS `relacion_usuarios_tipos`;

CREATE TABLE `relacion_usuarios_tipos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `usuarios_id` int(11) NOT NULL,
  `usuarios_tipos_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `relacion_usuarios_tipos` */

insert  into `relacion_usuarios_tipos`(`id`,`usuarios_id`,`usuarios_tipos_id`) values (1,1,1),(2,2,2),(3,3,2),(4,5,2);

/*Table structure for table `usuarios` */

DROP TABLE IF EXISTS `usuarios`;

CREATE TABLE `usuarios` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `cumpleanios` date DEFAULT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `apellidos` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telefono` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fotografia` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `creado_en` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `usuarios` */

insert  into `usuarios`(`id`,`email`,`password`,`cumpleanios`,`nombre`,`apellidos`,`telefono`,`fotografia`,`creado_en`) values (1,'admin@admin.com','5f4dcc3b5aa765d61d8327deb882cf99','2015-12-01','admin',NULL,NULL,NULL,'2017-07-25 19:28:19'),(2,'usuario@usuario','5f4dcc3b5aa765d61d8327deb882cf99','2015-12-01','user',NULL,NULL,NULL,'2017-07-25 19:28:47'),(3,'user2@user','5f4dcc3b5aa765d61d8327deb882cf99','0000-00-00','aaaaaaaaaaaaaaaa','bbbbbbbbbbbbbbbbbb','',NULL,'2017-07-31 00:00:00'),(4,'user3@user','5f4dcc3b5aa765d61d8327deb882cf99','1998-10-21','Juan','Lopez Díaz',NULL,NULL,NULL),(5,'user5@user','5f4dcc3b5aa765d61d8327deb882cf99','0000-00-00','Johan','Puelles Campos','223345',NULL,NULL);

/*Table structure for table `usuarios_tipos` */

DROP TABLE IF EXISTS `usuarios_tipos`;

CREATE TABLE `usuarios_tipos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tipo_usuario` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descripcion` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `usuarios_tipos` */

insert  into `usuarios_tipos`(`id`,`tipo_usuario`,`descripcion`) values (1,'Administrador',NULL),(2,'Usuario',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
