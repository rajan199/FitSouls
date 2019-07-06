/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.5.5-10.1.30-MariaDB : Database - fitsouls_backend
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`fitsouls_backend` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `fitsouls_backend`;

/*Table structure for table `admin_tbl` */

DROP TABLE IF EXISTS `admin_tbl`;

CREATE TABLE `admin_tbl` (
  `aid` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `admin_tbl` */

insert  into `admin_tbl`(`aid`,`username`,`password`) values (1,'fitsouls','fitsouls');

/*Table structure for table `bld` */

DROP TABLE IF EXISTS `bld`;

CREATE TABLE `bld` (
  `bidid` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`bidid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `bld` */

insert  into `bld`(`bidid`,`name`) values (1,'Breakfast'),(2,'Lunch'),(3,'Dinner');

/*Table structure for table `client_tbl` */

DROP TABLE IF EXISTS `client_tbl`;

CREATE TABLE `client_tbl` (
  `client_id` int(10) NOT NULL AUTO_INCREMENT,
  `client_name` varchar(25) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `plan_start` datetime NOT NULL,
  `plan_end` datetime NOT NULL,
  `payment` int(10) NOT NULL,
  `meal_type` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `client_tbl` */

insert  into `client_tbl`(`client_id`,`client_name`,`address`,`contact`,`plan_start`,`plan_end`,`payment`,`meal_type`,`email`) values (4,'chaitanya','raipur','7405931309','2019-06-17 00:00:00','2019-07-23 00:00:00',500,'veg','abhi'),(6,'rana','hjjhj','565656565','2019-07-09 00:00:00','2019-07-16 00:00:00',8989,'veg','rana@cc.cc'),(7,'rajan','kankaria','9999999999','2019-07-07 00:00:00','2019-07-23 00:00:00',10000,'non-veg','rajan@gmaul.com');

/*Table structure for table `client_to_bld` */

DROP TABLE IF EXISTS `client_to_bld`;

CREATE TABLE `client_to_bld` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cid` int(10) DEFAULT NULL,
  `bldid` int(10) DEFAULT NULL,
  `slot_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `bldid` (`bldid`),
  KEY `client_to_bld_ibfk_3` (`slot_id`),
  CONSTRAINT `client_to_bld_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `client_tbl` (`client_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `client_to_bld_ibfk_2` FOREIGN KEY (`bldid`) REFERENCES `bld` (`bidid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `client_to_bld_ibfk_3` FOREIGN KEY (`slot_id`) REFERENCES `time_slots` (`slot_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `client_to_bld` */

insert  into `client_to_bld`(`id`,`cid`,`bldid`,`slot_id`) values (1,4,1,NULL),(2,4,2,NULL),(3,4,3,NULL),(6,6,1,NULL),(7,6,3,NULL);

/*Table structure for table `time_slots` */

DROP TABLE IF EXISTS `time_slots`;

CREATE TABLE `time_slots` (
  `slot_id` int(10) NOT NULL AUTO_INCREMENT,
  `slots` varchar(10) NOT NULL,
  PRIMARY KEY (`slot_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

/*Data for the table `time_slots` */

insert  into `time_slots`(`slot_id`,`slots`) values (1,'7:00am-8:0'),(2,'8:00am-9:0'),(3,'9:00am-10:'),(4,'10:00am-11'),(5,'11:00am-12'),(6,'12:00pm-1:'),(7,'1:00pm-2:0'),(8,'2:00pm-3:0'),(9,'3:00pm-4:0'),(10,'4:00pm-5:0'),(11,'5:00pm-6:0'),(12,'6:00pm-7:0'),(13,'7:00pm-8:0'),(14,'8:00pm-9:0'),(15,'9:00pm-10:'),(16,'10:00pm-11');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
