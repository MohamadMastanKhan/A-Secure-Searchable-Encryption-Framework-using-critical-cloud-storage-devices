/*
SQLyog Enterprise - MySQL GUI v6.56
MySQL - 5.0.67-community-nt : Database - secure_searchable
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`secure_searchable` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `secure_searchable`;

/*Table structure for table `attacker` */

DROP TABLE IF EXISTS `attacker`;

CREATE TABLE `attacker` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(1000) default NULL,
  `filename` varchar(1000) default NULL,
  `token` varchar(100) default NULL,
  `date` varchar(1000) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `attacker` */

/*Table structure for table `cloud` */

DROP TABLE IF EXISTS `cloud`;

CREATE TABLE `cloud` (
  `username` varchar(200) default NULL,
  `password` varchar(200) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `cloud` */

insert  into `cloud`(`username`,`password`) values ('cloud','cloud');

/*Table structure for table `desreq` */

DROP TABLE IF EXISTS `desreq`;

CREATE TABLE `desreq` (
  `id` int(11) NOT NULL auto_increment,
  `fid` varchar(100) default NULL,
  `email` varchar(100) default NULL,
  `username` varchar(100) default NULL,
  `owner` varchar(1000) default NULL,
  `filename` varchar(1000) default NULL,
  `deskey` varchar(1000) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `desreq` */

/*Table structure for table `file` */

DROP TABLE IF EXISTS `file`;

CREATE TABLE `file` (
  `id` int(11) NOT NULL auto_increment,
  `owner` varchar(1000) default NULL,
  `fname` varchar(1000) default NULL,
  `filename` varchar(1000) default NULL,
  `keyword` varchar(1000) default NULL,
  `token` varchar(1000) default NULL,
  `data` longtext,
  `cipher` longtext,
  `skey` varchar(1000) default NULL,
  `date` varchar(1000) default NULL,
  `futureperpose` varchar(1000) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `file` */

/*Table structure for table `owner` */

DROP TABLE IF EXISTS `owner`;

CREATE TABLE `owner` (
  `fname` varchar(200) default NULL,
  `lname` varchar(200) default NULL,
  `email` varchar(200) default NULL,
  `mobile` varchar(200) default NULL,
  `location` varchar(200) default NULL,
  `username` varchar(200) default NULL,
  `password` varchar(200) default NULL,
  `status` varchar(200) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `owner` */

/*Table structure for table `transaction` */

DROP TABLE IF EXISTS `transaction`;

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL auto_increment,
  `user` varchar(1000) default NULL,
  `filename` varchar(1000) default NULL,
  `task` varchar(1000) default NULL,
  `date` varchar(1000) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `transaction` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `fname` varchar(200) default NULL,
  `lname` varchar(200) default NULL,
  `email` varchar(200) default NULL,
  `mobile` varchar(200) default NULL,
  `location` varchar(200) default NULL,
  `username` varchar(200) default NULL,
  `password` varchar(200) default NULL,
  `status` varchar(200) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `user` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
