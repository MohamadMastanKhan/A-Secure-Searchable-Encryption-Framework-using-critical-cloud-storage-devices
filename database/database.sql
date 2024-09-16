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

/*Table structure for table `cloud` */

DROP TABLE IF EXISTS `cloud`;

CREATE TABLE `cloud` (
  `username` varchar(200) default NULL,
  `password` varchar(200) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `cloud` */

insert  into `cloud`(`username`,`password`) values ('cloud','cloud');

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

insert  into `owner`(`fname`,`lname`,`email`,`mobile`,`location`,`username`,`password`,`status`) values ('venkat','rao','venkatjavaprojects@gmail.com','9874563210','hyd','venkat','venkat','Activated');

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

insert  into `user`(`fname`,`lname`,`email`,`mobile`,`location`,`username`,`password`,`status`) values ('ram','rao','ramana@gmail.com','9988774455','hyd','ram','ram','Activated');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
