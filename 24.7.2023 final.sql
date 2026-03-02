/*
SQLyog Community
MySQL - 10.4.25-MariaDB : Database - depression_level_project
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`depression_level_project` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `depression_level_project`;

/*Table structure for table `appointment` */

DROP TABLE IF EXISTS `appointment`;

CREATE TABLE `appointment` (
  `appointment_id` int(11) NOT NULL AUTO_INCREMENT,
  `health_id` int(11) DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`appointment_id`)
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;

/*Data for the table `appointment` */

insert  into `appointment`(`appointment_id`,`health_id`,`staff_id`,`date`,`status`) values 
(55,28,69,'2023-07-28','Suggection Request Sended'),
(54,27,63,'2023-07-28','Prescribed'),
(53,27,63,'2023-07-28','Confirmed');

/*Table structure for table `c_address` */

DROP TABLE IF EXISTS `c_address`;

CREATE TABLE `c_address` (
  `c_address_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `c_address_line1` varchar(100) DEFAULT NULL,
  `c_address_line2` varchar(100) DEFAULT NULL,
  `c_landmark` varchar(50) DEFAULT NULL,
  `c_pincode` varchar(50) DEFAULT NULL,
  `c_city` varchar(50) DEFAULT NULL,
  `c_state` varchar(50) DEFAULT NULL,
  `c_country` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`c_address_id`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;

/*Data for the table `c_address` */

insert  into `c_address`(`c_address_id`,`username`,`c_address_line1`,`c_address_line2`,`c_landmark`,`c_pincode`,`c_city`,`c_state`,`c_country`) values 
(27,'delanaantyes@gmail.com','Mulakkal house ','Kottapadi','Guruvayur','680505','Thrissur','Kerala','India'),
(26,'varnnasuresh101@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(25,'seethalakshmi1187@gmail.com','Kaniyamparambil House','Nandipuram','Chalakkudy','680312','Thrissur','Kerala','India'),
(24,'annglenda2000@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(23,'aravindklr007@gmail.com','Swaroon House ','Pursheri Parambu','Near St.Francis School','673655','Calicut','Kerala','India'),
(28,'adiththaivalappil@gmail.com','Thaivalappil house ','P.O Elavally(s)','Elavally','680511','Thrissur','Kerala','India'),
(29,'aswinkrishnan1985@gmail.com','Vaylil, 42/855','Karolill Lane','Thammanam','682032','Ernakulam','Kerala','India'),
(30,'chalamdas1974@gmail.com','Arun Nivas','V H Colony','U C College','683102','Aluva','Kerala','India'),
(31,'namithadas1985@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(32,'vishnutc1984@gmail.com','Krishna House','Jayanagar','N H Bypass, Maradu','680238','Ernakulam','Kerala','India'),
(33,'rambil@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(34,'lafsdfsks@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(35,'lakshmi200000@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(36,'lakshmiraghavan05@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(37,'psdevika95@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(38,'anu@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(39,'arun@gamail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(40,'arun@gamail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(41,'a@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(42,'g@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(43,'f@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(44,'syam@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(45,'psdevika95@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(46,'sam@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(47,'aaaa@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(48,'liya@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(49,'m@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(50,'jes@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(51,'sh@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(52,'shemi@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `complaints` */

DROP TABLE IF EXISTS `complaints`;

CREATE TABLE `complaints` (
  `complaint_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `complaint_des` varchar(255) DEFAULT NULL,
  `reply` varchar(255) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`complaint_id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

/*Data for the table `complaints` */

insert  into `complaints`(`complaint_id`,`username`,`complaint_des`,`reply`,`date`) values 
(23,'delanaantyes@gmail.com','I am not able to change my password.','pending..','2023-02-28'),
(24,'aswinkrishnan1985@gmail.com','no working','pending..','2023-03-16'),
(25,'m@gmail.com','hai','Please wait for the Response','27-05-2023');

/*Table structure for table `designation` */

DROP TABLE IF EXISTS `designation`;

CREATE TABLE `designation` (
  `designation_id` int(11) NOT NULL AUTO_INCREMENT,
  `designation_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`designation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;

/*Data for the table `designation` */

insert  into `designation`(`designation_id`,`designation_name`) values 
(53,'Designer'),
(49,'Software Engineer'),
(51,'Jr.Software Engineer'),
(50,'Quality Assuarance'),
(54,'Clerk'),
(56,'Assistant System Engineer'),
(58,'Network Architect'),
(59,'Data Security Analyst'),
(60,'Web Developer');

/*Table structure for table `emotions` */

DROP TABLE IF EXISTS `emotions`;

CREATE TABLE `emotions` (
  `emotions_id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_id` int(11) DEFAULT NULL,
  `emotions` varchar(50) DEFAULT NULL,
  `emotions_score` int(11) DEFAULT NULL,
  `date` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`emotions_id`)
) ENGINE=InnoDB AUTO_INCREMENT=203 DEFAULT CHARSET=latin1;

/*Data for the table `emotions` */

insert  into `emotions`(`emotions_id`,`staff_id`,`emotions`,`emotions_score`,`date`) values 
(1,1,'1',3,'2023-03-22'),
(2,81,'neutral',4,'2023-03-23'),
(3,80,'neutral',4,'2023-03-23'),
(4,81,'neutral',4,'2023-03-23'),
(5,81,'neutral',4,'2023-03-23'),
(6,81,'neutral',4,'2023-03-23'),
(7,81,'neutral',4,'2023-03-23'),
(8,81,'neutral',4,'2023-03-23'),
(9,81,'neutral',4,'2023-03-23'),
(10,81,'neutral',4,'2023-03-23'),
(11,81,'neutral',4,'2023-03-23'),
(12,80,'neutral',4,'2023-03-23'),
(13,81,'neutral',4,'2023-03-23'),
(14,81,'neutral',4,'2023-03-23'),
(15,81,'neutral',4,'2023-03-23'),
(16,80,'neutral',4,'2023-03-23'),
(17,80,'neutral',4,'2023-03-23'),
(18,80,'neutral',4,'2023-03-23'),
(19,81,'neutral',4,'2023-03-23'),
(20,80,'neutral',4,'2023-03-23'),
(21,80,'neutral',4,'2023-03-23'),
(22,80,'neutral',4,'2023-03-23'),
(23,80,'neutral',4,'2023-03-23'),
(24,81,'neutral',4,'2023-03-23'),
(25,80,'neutral',4,'2023-03-23'),
(26,80,'neutral',4,'2023-03-23'),
(27,80,'neutral',4,'2023-03-23'),
(28,80,'neutral',4,'2023-03-23'),
(29,81,'neutral',4,'2023-03-23'),
(30,81,'neutral',4,'2023-03-23'),
(31,81,'neutral',4,'2023-03-23'),
(32,80,'fear',1,'2023-03-23'),
(33,80,'neutral',4,'2023-03-23'),
(34,80,'neutral',4,'2023-03-23'),
(35,80,'neutral',4,'2023-03-23'),
(36,80,'neutral',4,'2023-03-23'),
(37,80,'neutral',4,'2023-03-23'),
(38,80,'neutral',4,'2023-03-23'),
(39,80,'fear',1,'2023-03-23'),
(40,81,'neutral',4,'2023-03-23'),
(41,80,'neutral',4,'2023-03-23'),
(42,80,'fear',1,'2023-03-23'),
(43,80,'happy',5,'2023-03-23'),
(44,80,'neutral',4,'2023-03-23'),
(45,80,'neutral',4,'2023-03-23'),
(46,81,'neutral',4,'2023-03-23'),
(47,80,'neutral',4,'2023-03-23'),
(48,80,'neutral',4,'2023-03-23'),
(49,80,'neutral',4,'2023-03-23'),
(50,80,'neutral',4,'2023-03-23'),
(51,80,'neutral',4,'2023-03-23'),
(52,80,'happy',5,'2023-03-23'),
(53,80,'neutral',4,'2023-03-23'),
(54,80,'neutral',4,'2023-03-23'),
(55,81,'neutral',4,'2023-03-23'),
(56,81,'neutral',4,'2023-03-23'),
(57,81,'neutral',4,'2023-03-23'),
(58,81,'neutral',4,'2023-03-23'),
(59,81,'neutral',4,'2023-03-23'),
(60,81,'neutral',4,'2023-03-23'),
(61,81,'neutral',4,'2023-03-23'),
(62,81,'neutral',4,'2023-03-23'),
(63,81,'neutral',4,'2023-03-23'),
(64,81,'neutral',4,'2023-03-23'),
(65,81,'neutral',4,'2023-03-23'),
(66,81,'neutral',4,'2023-03-23'),
(67,80,'neutral',4,'2023-03-23'),
(68,80,'neutral',4,'2023-03-23'),
(69,80,'neutral',4,'2023-03-23'),
(70,80,'neutral',4,'2023-03-23'),
(71,80,'neutral',4,'2023-03-23'),
(72,80,'neutral',4,'2023-03-23'),
(73,81,'neutral',4,'2023-03-23'),
(74,80,'neutral',4,'2023-03-23'),
(75,80,'neutral',4,'2023-03-23'),
(76,80,'neutral',4,'2023-03-23'),
(77,80,'neutral',4,'2023-03-23'),
(78,80,'neutral',4,'2023-03-23'),
(79,80,'neutral',4,'2023-03-23'),
(80,80,'neutral',4,'2023-03-23'),
(81,80,'neutral',4,'2023-03-23'),
(82,81,'neutral',4,'2023-03-23'),
(83,80,'fear',1,'2023-03-23'),
(84,80,'happy',5,'2023-03-23'),
(85,80,'neutral',4,'2023-03-23'),
(86,80,'neutral',4,'2023-03-23'),
(87,80,'neutral',4,'2023-03-23'),
(88,80,'neutral',4,'2023-03-23'),
(89,80,'neutral',4,'2023-03-23'),
(90,81,'neutral',4,'2023-03-23'),
(91,80,'happy',5,'2023-03-23'),
(92,80,'happy',5,'2023-03-23'),
(93,80,'happy',5,'2023-03-23'),
(94,80,'happy',5,'2023-03-23'),
(95,80,'happy',5,'2023-03-23'),
(96,80,'sad',1,'2023-03-23'),
(97,80,'neutral',4,'2023-03-23'),
(98,80,'neutral',4,'2023-03-23'),
(99,80,'neutral',4,'2023-03-23'),
(100,80,'happy',5,'2023-03-23'),
(101,80,'neutral',4,'2023-03-23'),
(102,80,'neutral',4,'2023-03-23'),
(103,80,'neutral',4,'2023-03-23'),
(104,80,'neutral',4,'2023-03-23'),
(105,80,'neutral',4,'2023-03-23'),
(106,80,'neutral',4,'2023-03-23'),
(107,80,'happy',5,'2023-03-23'),
(108,80,'happy',5,'2023-03-23'),
(109,80,'neutral',4,'2023-03-23'),
(110,80,'happy',5,'2023-03-23'),
(111,80,'neutral',4,'2023-03-23'),
(112,80,'neutral',4,'2023-03-23'),
(113,80,'neutral',4,'2023-03-23'),
(114,80,'neutral',4,'2023-03-23'),
(115,80,'neutral',4,'2023-03-23'),
(116,80,'neutral',4,'2023-03-23'),
(117,80,'neutral',4,'2023-03-23'),
(118,80,'neutral',4,'2023-03-23'),
(119,80,'neutral',4,'2023-03-23'),
(120,81,'neutral',4,'2023-03-23'),
(121,80,'neutral',4,'2023-03-23'),
(122,80,'neutral',4,'2023-03-23'),
(123,80,'neutral',4,'2023-03-23'),
(124,80,'neutral',4,'2023-03-23'),
(125,80,'neutral',4,'2023-03-23'),
(126,80,'neutral',4,'2023-03-23'),
(127,80,'happy',5,'2023-03-23'),
(128,80,'neutral',4,'2023-03-23'),
(129,80,'neutral',4,'2023-03-23'),
(130,80,'neutral',4,'2023-03-23'),
(131,80,'happy',5,'2023-03-23'),
(132,80,'neutral',4,'2023-03-23'),
(133,80,'neutral',4,'2023-03-23'),
(134,80,'neutral',4,'2023-03-23'),
(135,80,'neutral',4,'2023-03-23'),
(136,80,'neutral',4,'2023-03-23'),
(137,80,'neutral',4,'2023-03-23'),
(138,80,'happy',5,'2023-03-23'),
(139,80,'neutral',4,'2023-03-23'),
(140,80,'surprise',1,'2023-03-23'),
(141,80,'neutral',4,'2023-03-23'),
(142,80,'happy',5,'2023-03-23'),
(143,80,'neutral',4,'2023-03-23'),
(144,80,'surprise',1,'2023-03-23'),
(145,80,'neutral',4,'2023-03-23'),
(146,80,'neutral',4,'2023-03-23'),
(147,80,'neutral',4,'2023-03-23'),
(148,80,'neutral',4,'2023-03-23'),
(149,80,'neutral',4,'2023-03-23'),
(150,80,'neutral',4,'2023-03-23'),
(151,80,'neutral',4,'2023-03-23'),
(152,80,'neutral',4,'2023-03-23'),
(153,80,'neutral',4,'2023-03-23'),
(154,80,'neutral',4,'2023-03-23'),
(155,80,'neutral',4,'2023-03-23'),
(156,80,'neutral',4,'2023-03-23'),
(157,80,'angry',2,'2023-03-23'),
(158,80,'neutral',4,'2023-03-23'),
(159,80,'neutral',4,'2023-03-23'),
(160,80,'neutral',4,'2023-03-23'),
(161,80,'neutral',4,'2023-03-23'),
(162,80,'neutral',4,'2023-03-23'),
(163,80,'neutral',4,'2023-03-23'),
(164,80,'neutral',4,'2023-03-23'),
(165,80,'neutral',4,'2023-03-23'),
(166,80,'neutral',4,'2023-03-23'),
(167,80,'neutral',4,'2023-03-23'),
(168,80,'happy',5,'2023-03-23'),
(169,80,'neutral',4,'2023-03-23'),
(170,80,'happy',5,'2023-03-23'),
(171,80,'happy',5,'2023-03-23'),
(172,80,'neutral',4,'2023-03-23'),
(173,80,'neutral',4,'2023-03-23'),
(174,80,'neutral',4,'2023-03-23'),
(175,80,'neutral',4,'2023-03-23'),
(176,80,'happy',5,'2023-03-30'),
(177,80,'sad',1,'2023-03-30'),
(178,81,'neutral',4,'2023-03-30'),
(179,80,'neutral',4,'2023-03-30'),
(180,80,'neutral',4,'2023-03-30'),
(181,80,'happy',5,'2023-03-30'),
(182,80,'neutral',4,'2023-03-30'),
(183,80,'neutral',4,'2023-03-30'),
(184,80,'neutral',4,'2023-03-30'),
(185,80,'neutral',4,'2023-03-30'),
(186,80,'neutral',4,'2023-03-30'),
(187,80,'neutral',4,'2023-03-30'),
(188,80,'neutral',4,'2023-03-30'),
(189,80,'happy',5,'2023-03-30'),
(190,80,'neutral',4,'2023-03-30'),
(191,80,'neutral',4,'2023-03-30'),
(192,80,'neutral',4,'2023-03-30'),
(193,80,'sad',1,'2023-03-31'),
(194,80,'neutral',4,'2023-03-31'),
(195,80,'neutral',4,'2023-03-31'),
(196,80,'neutral',4,'2023-03-31'),
(197,80,'angry',2,'2023-03-31'),
(198,80,'angry',2,'2023-03-31'),
(199,80,'angry',2,'2023-03-31'),
(200,80,'fear',1,'2023-03-31'),
(201,80,'happy',5,'2023-03-31'),
(202,80,'neutral',4,'2023-03-31');

/*Table structure for table `fares` */

DROP TABLE IF EXISTS `fares`;

CREATE TABLE `fares` (
  `fare_id` int(11) NOT NULL AUTO_INCREMENT,
  `starting_stop_id` int(11) DEFAULT NULL,
  `ending_stop_id` int(11) DEFAULT NULL,
  `amount_per_seat` varchar(20) DEFAULT NULL,
  `pass_amount` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`fare_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `fares` */

/*Table structure for table `feedback` */

DROP TABLE IF EXISTS `feedback`;

CREATE TABLE `feedback` (
  `feedback_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `feedback_desc` varchar(50) DEFAULT NULL,
  `date_time` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`feedback_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `feedback` */

/*Table structure for table `health_care_team` */

DROP TABLE IF EXISTS `health_care_team`;

CREATE TABLE `health_care_team` (
  `health_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `h_fname` varchar(50) DEFAULT NULL,
  `h_lname` varchar(50) DEFAULT NULL,
  `h_qualification` varchar(50) DEFAULT NULL,
  `h_phone_no` varchar(50) DEFAULT NULL,
  `h_email_id` varchar(50) DEFAULT NULL,
  `h_dob` varchar(50) DEFAULT NULL,
  `h_gender` varchar(50) DEFAULT NULL,
  `h_resume` varchar(255) DEFAULT NULL,
  `h_credential` varchar(255) DEFAULT NULL,
  `h_photo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`health_id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

/*Data for the table `health_care_team` */

insert  into `health_care_team`(`health_id`,`username`,`h_fname`,`h_lname`,`h_qualification`,`h_phone_no`,`h_email_id`,`h_dob`,`h_gender`,`h_resume`,`h_credential`,`h_photo`) values 
(27,'aswinkrishnan1985@gmail.com','Aswin ','Krishnan','MD in Psychiatrist ','9400906126','aswinkrishnan1985@gmail.com','1985-07-19','Male','static/assets/certiresume/52d683d1-0a18-44db-be9f-e58b7f9489d9','static/assets/certiresume/bc87e974-561a-46e8-9959-f84b9bffacea','static/assets/img/profile/27d3c116-e5a6-4536-8bda-5151d63b4ebfdr-aswin-krishnan-ajit-psychiatrist-.jpg'),
(28,'chalamdas1974@gmail.com','Chalam Das','Velappan','MD in Psychiatrist ','9188025212','chalamdas1974@gmail.com','1974-05-16','Male','static/assets/certiresume/62944317-f119-4399-9102-33c9b932b7cachalam resume.pdf','static/assets/certiresume/05895bf5-8364-43d9-8c0a-f464aeed3259chalam.pdf','static/assets/img/profile/afa23ec6-2652-4631-89ac-1e048ec8a706dr-chalam-das-velappan-psychiatrist-.jpg'),
(29,'namithadas1985@gmail.com','Namitha M','Das','MD in Psychiatrist ','9496758575','namithadas1985@gmail.com','1985-03-04','Female',NULL,NULL,NULL),
(30,'vishnutc1984@gmail.com','Vishnu','T C','MD in Psychiatrist ','8943146140','vishnutc1984@gmail.com','1984-02-13','Male','static/assets/certiresume/41ae9a46-c29b-4252-b7f6-14f2cae7280fvishnu resume.pdf','static/assets/certiresume/ef0aecdf-3f09-4d5f-af1f-43506091dd40vishnu.pdf','static/assets/img/profile/578dafcc-454f-4a9e-8752-aa2f8b720409vishnu.jpg'),
(31,'liya@gmail.com','liya','p','pg','8987675645','liya@gmail.com','1990-05-10','Female',NULL,NULL,NULL);

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `user_type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`username`,`password`,`user_type`) values 
('admin','admin','admin'),
('adiththaivalappil@gmail.com','29062001','staff'),
('','03102000','staff'),
('varnnasuresh101@gmail.com','11041999','staff'),
('seethalakshmi1187@gmail.com','24062000','staff'),
('annglenda2000@gmail.com','04082000','staff'),
('aravindklr007@gmail.com','07111999','staff'),
('aswinkrishnan1985@gmail.com','9400906126','health_care_team'),
('chalamdas1974@gmail.com','9188025212','health_care_team'),
('namithadas1985@gmail.com','9496758575','health_care_team'),
('vishnutc1984@gmail.com','8943146140','health'),
('rambil@gmail.com','07072000','staff'),
('lafsdfsks@gmail.com','06072000','staff'),
('lakshmi200000@gmail.com','05062000','staff'),
('lakshmiraghavan05@gmail.com','16032005','staff'),
('a@gmail.com','16091999','staff'),
('anu@gmail.com','05021997','staff'),
('g@gmail.com','15062000','staff'),
('f@gmail.com','02032005','staff'),
('syam@gmail.com','16032005','staff'),
('psdevika95@gmail.com','11032005','staff'),
('sam@gmail.com','02032005','staff'),
('aaaa@gmail.com','10072000','staff'),
('liya@gmail.com','8987675645','health_care_team'),
('m@gmail.com','10091998','staff'),
('jes@gmail.com','10061999','staff'),
('shemi@gmail.com','05072005','staff');

/*Table structure for table `medication` */

DROP TABLE IF EXISTS `medication`;

CREATE TABLE `medication` (
  `appointment_id` int(11) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `medication_id` int(11) NOT NULL AUTO_INCREMENT,
  `video` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`medication_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `medication` */

insert  into `medication`(`appointment_id`,`title`,`description`,`medication_id`,`video`) values 
(44,'take rest and ','take more rest it a small problem take rest and more',1,NULL),
(47,',cjdvcdcvsg','zxb bnx vs\r\nxvvcvsdgc\r\nbxcbcvdvc\r\ncvdhsg',2,NULL),
(54,'xsxax','xaxax\r\naxax\r\naxas',3,'static/504a46bf-e5f9-4427-92ac-007b666f1aaepexels_videos_4409 (1080p).mp4');

/*Table structure for table `notification` */

DROP TABLE IF EXISTS `notification`;

CREATE TABLE `notification` (
  `notification_des` varchar(255) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `user_type` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `notification` */

insert  into `notification`(`notification_des`,`date`,`user_type`) values 
('Due to site maintenance issues, server will be down on 01/01/2023 from 12pm to 5pm.','2023-02-28','admin'),
('The depression test function will be available immediately after test core is implemented.','2023-02-28','health');

/*Table structure for table `p_address` */

DROP TABLE IF EXISTS `p_address`;

CREATE TABLE `p_address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `address_line1` varchar(100) DEFAULT NULL,
  `address_line2` varchar(100) DEFAULT NULL,
  `landmark` varchar(50) DEFAULT NULL,
  `pincode` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`address_id`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;

/*Data for the table `p_address` */

insert  into `p_address`(`address_id`,`username`,`address_line1`,`address_line2`,`landmark`,`pincode`,`city`,`state`,`country`) values 
(27,'delanaantyes@gmail.com','Mulakkal house ','Kottapadi','Guruvayur','680505','Thrissur','Kerala','India'),
(26,'varnnasuresh101@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(25,'seethalakshmi1187@gmail.com','Kaniyamparambil House','Nandipuram','Chalakkudy','680312','Thrissur','Kerala','India'),
(24,'annglenda2000@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(23,'aravindklr007@gmail.com','Swaroon House ','Pursheri Parambu','Near St.Francis School','673655','Calicut','Kerala','India'),
(28,'adiththaivalappil@gmail.com','Thaivalappil house ','P.O Elavally(s)','Elavally','680511','Thrissur','Kerala','India'),
(29,'aswinkrishnan1985@gmail.com','Vaylil, 42/855','Karolill Lane','Thammanam','682032','Ernakulam','Kerala','India'),
(30,'chalamdas1974@gmail.com','Arun Nivas','V H Colony','U C College','683102','Aluva','Kerala','India'),
(31,'namithadas1985@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(32,'vishnutc1984@gmail.com','Krishna House','Jayanagar','N H Bypass, Maradu','680238','Ernakulam','Kerala','India'),
(33,'rambil@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(34,'lafsdfsks@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(35,'lakshmi200000@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(36,'lakshmiraghavan05@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(37,'psdevika95@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(38,'anu@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(39,'arun@gamail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(40,'arun@gamail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(41,'a@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(42,'g@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(43,'f@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(44,'syam@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(45,'psdevika95@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(46,'sam@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(47,'aaaa@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(48,'liya@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(49,'m@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(50,'jes@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(51,'sh@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(52,'shemi@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `payment` */

DROP TABLE IF EXISTS `payment`;

CREATE TABLE `payment` (
  `pay_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `booking_id` int(11) DEFAULT NULL,
  `type[booking]` varchar(50) DEFAULT NULL,
  `date_time` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`pay_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `payment` */

/*Table structure for table `ratings` */

DROP TABLE IF EXISTS `ratings`;

CREATE TABLE `ratings` (
  `rating_id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_id` int(11) DEFAULT NULL,
  `ratings` varchar(50) DEFAULT NULL,
  `date` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`rating_id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=latin1;

/*Data for the table `ratings` */

insert  into `ratings`(`rating_id`,`staff_id`,`ratings`,`date`) values 
(1,80,'3.9712','2023-03-23'),
(2,81,'4.0000','2023-03-23'),
(3,81,'4.0000','2023-03-23'),
(4,81,'4.0000','2023-03-23'),
(5,81,'4.0000','2023-03-23'),
(6,81,'4.0000','2023-03-23'),
(7,81,'4.0000','2023-03-23'),
(8,81,'4.0000','2023-03-23'),
(9,81,'4.0000','2023-03-23'),
(10,80,'3.9712','2023-03-23'),
(11,81,'4.0000','2023-03-23'),
(12,81,'4.0000','2023-03-23'),
(13,81,'4.0000','2023-03-23'),
(14,80,'3.9712','2023-03-23'),
(15,80,'3.9712','2023-03-23'),
(16,80,'3.9712','2023-03-23'),
(17,81,'4.0000','2023-03-23'),
(18,80,'3.9712','2023-03-23'),
(19,80,'3.9712','2023-03-23'),
(20,80,'3.9712','2023-03-23'),
(21,80,'3.9712','2023-03-23'),
(22,81,'4.0000','2023-03-23'),
(23,80,'3.9712','2023-03-23'),
(24,80,'3.9712','2023-03-23'),
(25,80,'3.9712','2023-03-23'),
(26,80,'3.9712','2023-03-23'),
(27,81,'4.0000','2023-03-23'),
(28,81,'4.0000','2023-03-23'),
(29,81,'4.0000','2023-03-23'),
(30,80,'3.9712','2023-03-23'),
(31,80,'3.9712','2023-03-23'),
(32,80,'3.9712','2023-03-23'),
(33,80,'3.9712','2023-03-23'),
(34,80,'3.9712','2023-03-23'),
(35,80,'3.9712','2023-03-23'),
(36,80,'3.9712','2023-03-23'),
(37,80,'3.9712','2023-03-23'),
(38,81,'4.0000','2023-03-23'),
(39,80,'3.9712','2023-03-23'),
(40,80,'3.9712','2023-03-23'),
(41,80,'3.9712','2023-03-23'),
(42,80,'3.9712','2023-03-23'),
(43,80,'3.9712','2023-03-23'),
(44,81,'4.0000','2023-03-23'),
(45,80,'3.9712','2023-03-23'),
(46,80,'3.9712','2023-03-23'),
(47,80,'3.9712','2023-03-23'),
(48,80,'3.9712','2023-03-23'),
(49,80,'3.9712','2023-03-23'),
(50,80,'3.9712','2023-03-23'),
(51,80,'3.9712','2023-03-23'),
(52,80,'3.9712','2023-03-23'),
(53,81,'4.0000','2023-03-23'),
(54,81,'4.0000','2023-03-23'),
(55,81,'4.0000','2023-03-23'),
(56,81,'4.0000','2023-03-23'),
(57,81,'4.0000','2023-03-23'),
(58,81,'4.0000','2023-03-23'),
(59,81,'4.0000','2023-03-23'),
(60,81,'4.0000','2023-03-23'),
(61,81,'4.0000','2023-03-23'),
(62,81,'4.0000','2023-03-23'),
(63,81,'4.0000','2023-03-23'),
(64,81,'4.0000','2023-03-23'),
(65,80,'3.9712','2023-03-23'),
(66,80,'3.9712','2023-03-23'),
(67,80,'3.9712','2023-03-23'),
(68,80,'3.9712','2023-03-23'),
(69,80,'3.9712','2023-03-23'),
(70,80,'3.9712','2023-03-23'),
(71,81,'4.0000','2023-03-23'),
(72,80,'3.9712','2023-03-23'),
(73,80,'3.9712','2023-03-23'),
(74,80,'3.9712','2023-03-23'),
(75,80,'3.9712','2023-03-23'),
(76,80,'3.9712','2023-03-23'),
(77,80,'3.9712','2023-03-23'),
(78,80,'3.9712','2023-03-23'),
(79,80,'3.9712','2023-03-23'),
(80,81,'4.0000','2023-03-23'),
(81,80,'3.9712','2023-03-23'),
(82,80,'3.9712','2023-03-23'),
(83,80,'3.9712','2023-03-23'),
(84,80,'3.9712','2023-03-23'),
(85,80,'3.9712','2023-03-23'),
(86,80,'3.9712','2023-03-23'),
(87,80,'3.9712','2023-03-23'),
(88,81,'4.0000','2023-03-23'),
(89,80,'3.9712','2023-03-23'),
(90,80,'3.9712','2023-03-23'),
(91,80,'3.9712','2023-03-23'),
(92,80,'3.9712','2023-03-23'),
(93,80,'3.9712','2023-03-23'),
(94,80,'3.9712','2023-03-23'),
(95,80,'3.9712','2023-03-23'),
(96,80,'3.9712','2023-03-23'),
(97,80,'3.9712','2023-03-23'),
(98,80,'3.9712','2023-03-23'),
(99,80,'3.9712','2023-03-23'),
(100,80,'3.9712','2023-03-23'),
(101,80,'3.9712','2023-03-23'),
(102,80,'3.9712','2023-03-23'),
(103,80,'3.9712','2023-03-23'),
(104,80,'3.9712','2023-03-23'),
(105,80,'3.9712','2023-03-23'),
(106,80,'3.9712','2023-03-23'),
(107,80,'3.9712','2023-03-23'),
(108,80,'3.9712','2023-03-23'),
(109,80,'3.9712','2023-03-23'),
(110,80,'3.9712','2023-03-23'),
(111,80,'3.9712','2023-03-23'),
(112,80,'3.9712','2023-03-23'),
(113,80,'3.9712','2023-03-23'),
(114,80,'3.9712','2023-03-23'),
(115,80,'3.9712','2023-03-23'),
(116,80,'3.9712','2023-03-23'),
(117,80,'3.9712','2023-03-23'),
(118,81,'4.0000','2023-03-23'),
(119,80,'3.9712','2023-03-23'),
(120,80,'3.9712','2023-03-23'),
(121,80,'3.9712','2023-03-23'),
(122,80,'3.9712','2023-03-23'),
(123,80,'3.9712','2023-03-23'),
(124,80,'3.9712','2023-03-23'),
(125,80,'3.9712','2023-03-23'),
(126,80,'3.9712','2023-03-23'),
(127,80,'3.9712','2023-03-23'),
(128,80,'3.9712','2023-03-23'),
(129,80,'3.9712','2023-03-23'),
(130,80,'3.9712','2023-03-23'),
(131,80,'3.9712','2023-03-23'),
(132,80,'3.9712','2023-03-23'),
(133,80,'3.9712','2023-03-23'),
(134,80,'3.9712','2023-03-23'),
(135,80,'3.9712','2023-03-23'),
(136,80,'3.9712','2023-03-23'),
(137,80,'3.9712','2023-03-23'),
(138,80,'3.9712','2023-03-23'),
(139,80,'3.9712','2023-03-23'),
(140,80,'3.9712','2023-03-23'),
(141,80,'3.9712','2023-03-23'),
(142,80,'3.9712','2023-03-23'),
(143,80,'3.9712','2023-03-23'),
(144,80,'3.9712','2023-03-23'),
(145,80,'3.9712','2023-03-23'),
(146,80,'3.9712','2023-03-23'),
(147,80,'3.9712','2023-03-23'),
(148,80,'3.9712','2023-03-23'),
(149,80,'3.9712','2023-03-23'),
(150,80,'3.9712','2023-03-23'),
(151,80,'3.9712','2023-03-23'),
(152,80,'3.9712','2023-03-23'),
(153,80,'3.9712','2023-03-23'),
(154,80,'3.9712','2023-03-23'),
(155,80,'3.9712','2023-03-23'),
(156,80,'3.9712','2023-03-23'),
(157,80,'3.9712','2023-03-23'),
(158,80,'3.9712','2023-03-23'),
(159,80,'3.9712','2023-03-23'),
(160,80,'3.9712','2023-03-23'),
(161,80,'3.9712','2023-03-23'),
(162,80,'3.9712','2023-03-23'),
(163,80,'3.9712','2023-03-23'),
(164,80,'3.9712','2023-03-23'),
(165,80,'3.9712','2023-03-23'),
(166,80,'3.9712','2023-03-23'),
(167,80,'3.9712','2023-03-23'),
(168,80,'3.9712','2023-03-23'),
(169,80,'3.9712','2023-03-23'),
(170,80,'3.9712','2023-03-23'),
(171,80,'3.9712','2023-03-23'),
(172,80,'3.9712','2023-03-23'),
(173,80,'3.9712','2023-03-23'),
(174,80,'4.0000','2023-03-30'),
(175,80,'4.0000','2023-03-30'),
(176,81,'4.0000','2023-03-30'),
(177,80,'4.0000','2023-03-30'),
(178,80,'4.0000','2023-03-30'),
(179,80,'4.0000','2023-03-30'),
(180,80,'4.0000','2023-03-30'),
(181,80,'4.0000','2023-03-30'),
(182,80,'4.0000','2023-03-30'),
(183,80,'4.0000','2023-03-30'),
(184,80,'4.0000','2023-03-30'),
(185,80,'4.0000','2023-03-30'),
(186,80,'4.0000','2023-03-30'),
(187,80,'4.0000','2023-03-30'),
(188,80,'4.0000','2023-03-30'),
(189,80,'4.0000','2023-03-30'),
(190,80,'4.0000','2023-03-30'),
(191,80,'2.9000','2023-03-31'),
(192,80,'2.9000','2023-03-31'),
(193,80,'2.9000','2023-03-31'),
(194,80,'2.9000','2023-03-31'),
(195,80,'2.9000','2023-03-31'),
(196,80,'2.9000','2023-03-31'),
(197,80,'2.9000','2023-03-31'),
(198,80,'2.9000','2023-03-31'),
(199,80,'2.9000','2023-03-31'),
(200,80,'2.9000','2023-03-31');

/*Table structure for table `result` */

DROP TABLE IF EXISTS `result`;

CREATE TABLE `result` (
  `result_id` int(11) NOT NULL AUTO_INCREMENT,
  `r1` varchar(200) DEFAULT NULL,
  `r2` varchar(200) DEFAULT NULL,
  `r3` varchar(200) DEFAULT NULL,
  `r4` varchar(200) DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`result_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `result` */

insert  into `result`(`result_id`,`r1`,`r2`,`r3`,`r4`,`staff_id`) values 
(1,'4.0','1.0','0.0','0.0',82),
(3,'4.0','0','1','4',84),
(4,'3.0','0','1','3',69),
(5,'3.0','1','1','3',63),
(6,'1.0','0','0','3',65);

/*Table structure for table `staff` */

DROP TABLE IF EXISTS `staff`;

CREATE TABLE `staff` (
  `staff_id` int(11) NOT NULL AUTO_INCREMENT,
  `designation_id` int(11) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `dob` varchar(50) DEFAULT NULL,
  `s_phone_no` varchar(50) DEFAULT NULL,
  `as_phone_no` varchar(50) DEFAULT NULL,
  `s_email_id` varchar(50) DEFAULT NULL,
  `as_email_id` varchar(50) DEFAULT NULL,
  `s_photo` varchar(255) DEFAULT NULL,
  `s_resume` varchar(255) DEFAULT NULL,
  `s_certificate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`staff_id`)
) ENGINE=MyISAM AUTO_INCREMENT=87 DEFAULT CHARSET=latin1;

/*Data for the table `staff` */

insert  into `staff`(`staff_id`,`designation_id`,`username`,`first_name`,`last_name`,`gender`,`dob`,`s_phone_no`,`as_phone_no`,`s_email_id`,`as_email_id`,`s_photo`,`s_resume`,`s_certificate`) values 
(65,59,'varnnasuresh101@gmail.com','Varnna','S','Female','1999-04-11','9526827982',NULL,'varnnasuresh101@gmail.com',NULL,NULL,NULL,NULL),
(66,59,'delanaantyes@gmail.com','Delna','M A','Female','2000-10-03','6238144242','9446721645','delanaantyes@gmail.com','delna2000@gmail.com','static/assets/img/profile/330918fb-0539-4850-8612-5c09ec1d1252WhatsApp Image 2023-02-28 at 14.08.32.jpeg','static/assets/certiresume/abd3bc95-c0da-43f3-b3f1-c11638e9160dcv delna.pdf','static/assets/certiresume/0c952e7e-b550-40c5-ba56-0d95866d1967Kaagaz_20221117_222114488768.pdf'),
(63,53,'annglenda2000@gmail.com','Ann Glenda','John','Female','2000-08-04','9747355390',NULL,'annglenda2000@gmail.com',NULL,NULL,NULL,NULL),
(64,49,'seethalakshmi1187@gmail.com','Seethalakshmi','K S','Female','2000-06-24','9526509878','9633249494','seethalakshmi1187@gmail.com','vrivedimhskal@gmail.com','static/assets/img/profile/b6d08eab-515a-4ad2-a83e-8e97bc3e354eWhatsApp Image 2023-02-28 at 12.03.59.jpeg','static/assets/certiresume/0c473032-13a7-43cc-b60c-959f416c8fea','static/assets/certiresume/dcd2e461-53ab-4e4f-98ff-12f4305b40db'),
(62,56,'aravindklr007@gmail.com','Aravind','D','Male','1999-11-07','9496373730','9496155390','aravindklr007@gmail.com','navadd@gmail.com','static/assets/img/profile/a0f00863-8417-4375-8cbd-8a9cb202c82aWhatsApp Image 2023-02-28 at 11.37.34.jpeg','static/assets/certiresume/6eb2580d-fd4a-4772-ac55-5daff6ab9ca8Aaron Loeb (1) (1).pdf','static/assets/certiresume/dbfb8e39-9b37-4ae4-9627-2b4f5153800eAravi.pdf'),
(68,51,'rambil@gmail.com','seeeeee','thaaaaa','Female','2000-07-07','9400906126',NULL,'rambil@gmail.com',NULL,NULL,NULL,NULL),
(67,49,'adiththaivalappil@gmail.com','Adith ','T S','Male','2001-06-29','9645510039','9400312232','adiththaivalappil@gmail.com','adithkunjut@gmail.com','static/assets/img/profile/f75cb549-d493-4ccd-ab1e-67b47dfffae9newph_page-0001.jpg','static/assets/certiresume/84109252-187e-4b25-b0bc-e3609cb9e04b','static/assets/certiresume/381365a8-2b27-4e52-a443-52d014bbcdd4sslc new.pdf'),
(69,60,'lafsdfsks@gmail.com','Seetha','aaaaaaaaaaa','Female','2000-07-06','6238144242',NULL,'lafsdfsks@gmail.com',NULL,NULL,NULL,NULL),
(70,56,'lakshmi200000@gmail.com','Adith ','M A','Male','2000-06-05','9496373730',NULL,'lakshmi200000@gmail.com',NULL,NULL,NULL,NULL),
(71,51,'lakshmiraghavan05@gmail.com','qq','qq','Male','2005-03-16','9098765432',NULL,'lakshmiraghavan05@gmail.com',NULL,NULL,NULL,NULL),
(76,60,'a@gmail.com','d','c','Female','1999-09-16','7878675344',NULL,'a@gmail.com',NULL,NULL,NULL,NULL),
(73,54,'anu@gmail.com','anu','sree','Female','1997-02-05','9867456766',NULL,'anu@gmail.com',NULL,NULL,NULL,NULL),
(75,50,'arun@gamail.com','arun','s','Male','1999-02-21','9846743333',NULL,'arun@gamail.com',NULL,NULL,NULL,NULL),
(77,53,'g@gmail.com','aliya','b','Female','2000-06-15','7890675644',NULL,'g@gmail.com',NULL,NULL,NULL,NULL),
(78,51,'f@gmail.com','f','k','Female','2005-03-02','7897654533',NULL,'f@gmail.com',NULL,NULL,NULL,NULL),
(79,59,'syam@gmail.com','syam','j','Male','2005-03-16','9856756544',NULL,'syam@gmail.com',NULL,NULL,NULL,NULL),
(80,49,'psdevika95@gmail.com','wdadasd','aswdae','Male','2005-03-11','9899765678',NULL,'psdevika95@gmail.com',NULL,NULL,NULL,NULL),
(81,49,'sam@gmail.com','syam','raj','Male','2005-03-02','9976554432',NULL,'sam@gmail.com',NULL,NULL,NULL,NULL),
(82,49,'aaaa@gmail.com','Devika','p s','Female','2000-07-10','9856756544',NULL,'aaaa@gmail.com',NULL,NULL,NULL,NULL),
(83,49,'m@gmail.com','mebin','d','Male','1998-09-10','9856756544',NULL,'m@gmail.com',NULL,NULL,NULL,NULL),
(84,50,'jes@gmail.com','jesna','s','Female','1999-06-10','9856756566',NULL,'jes@gmail.com',NULL,NULL,NULL,NULL),
(86,51,'shemi@gmail.com','shemeem','s','Male','2005-07-05','9874561230',NULL,'shemi@gmail.com',NULL,NULL,NULL,NULL);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `login_id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `age` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varbinary(20) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `users` */

insert  into `users`(`user_id`,`login_id`,`name`,`gender`,`age`,`phone`,`email`) values 
(2,6,'sfas','dsads','12','123789874','sadSA@GMAIL.COM'),
(3,18,'Niha','other','20','9539729938','medm@gmail.com');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
