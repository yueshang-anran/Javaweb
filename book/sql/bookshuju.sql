/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 8.0.16 : Database - book
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`book` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `book`;

/*Table structure for table `t_book` */

DROP TABLE IF EXISTS `t_book`;

CREATE TABLE `t_book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `author` varchar(50) NOT NULL,
  `price` decimal(11,2) NOT NULL,
  `sales` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `img_path` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

/*Data for the table `t_book` */

insert  into `t_book`(`id`,`name`,`author`,`price`,`sales`,`stock`,`img_path`) values 
(1,'java从入门到放弃','国哥',80.00,10000,8,'static/img/default.jpg'),
(2,'数据结构与算法','严敏君',78.50,9,10,'static/img/default.jpg'),
(3,'怎样拐跑别人的媳妇','龙伍',68.00,100002,49,'static/img/default.jpg'),
(4,'木虚肉盖饭','小胖',16.00,1003,47,'static/img/default.jpg'),
(5,'C++编程思想','刚哥',45.50,14,95,'static/img/default.jpg'),
(6,'蛋炒饭','周星星',9.90,12,53,'static/img/default.jpg'),
(7,'赌神','龙伍',66.50,125,535,'static/img/default.jpg'),
(8,'Java编程思想','阳哥',99.50,47,36,'static/img/default.jpg'),
(9,'JavaScript从入门到精通','婷姐',9.90,85,95,'static/img/default.jpg'),
(10,'cocos2d-x游戏编程入门','国哥',49.00,52,62,'static/img/default.jpg'),
(11,'C语言程序设计','谭浩强',28.00,52,74,'static/img/default.jpg'),
(12,'Lua语言程序设计','雷丰阳',51.50,48,82,'static/img/default.jpg'),
(13,'西游记','罗贯中',12.00,19,9999,'static/img/default.jpg'),
(14,'水浒传','华仔',33.05,23,87,'static/img/default.jpg'),
(15,'操作系统原理','刘优',133.05,124,186,'static/img/default.jpg'),
(16,'数据结构 java版','封大神',173.15,22,80,'static/img/default.jpg'),
(17,'UNIX高级环境编程','乐天',99.15,210,810,'static/img/default.jpg'),
(18,'javaScript高级编程','国哥',69.15,210,810,'static/img/default.jpg'),
(19,'大话设计模式','国哥',89.15,20,10,'static/img/default.jpg'),
(20,'人月神话','刚哥',88.15,20,80,'static/img/default.jpg'),
(29,'111','111',111.00,12,110,'static/img/default.jpg'),
(30,'2','2',2.00,3,1,'static/img/default.jpg'),
(31,'3123132','33',33.00,34,32,'static/img/default.jpg');

/*Table structure for table `t_order` */

DROP TABLE IF EXISTS `t_order`;

CREATE TABLE `t_order` (
  `order_id` varchar(50) NOT NULL,
  `create_time` datetime NOT NULL,
  `price` decimal(11,2) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `t_order_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_order` */

insert  into `t_order`(`order_id`,`create_time`,`price`,`status`,`user_id`) values 
('16146095063771','2021-03-01 22:38:26',554.60,0,1);

/*Table structure for table `t_order_item` */

DROP TABLE IF EXISTS `t_order_item`;

CREATE TABLE `t_order_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `price` decimal(11,2) DEFAULT NULL,
  `total_price` decimal(11,2) DEFAULT NULL,
  `count` int(11) NOT NULL,
  `order_id` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  CONSTRAINT `t_order_item_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `t_order` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

/*Data for the table `t_order_item` */

insert  into `t_order_item`(`id`,`name`,`price`,`total_price`,`count`,`order_id`) values 
(13,'java从入门到放弃',80.00,80.00,1,'16146095063771'),
(14,'数据结构与算法',78.50,78.50,1,'16146095063771'),
(15,'怎样拐跑别人的媳妇',68.00,68.00,1,'16146095063771'),
(16,'木虚肉盖饭',16.00,16.00,1,'16146095063771'),
(17,'111',111.00,111.00,1,'16146095063771'),
(18,'2',2.00,2.00,1,'16146095063771'),
(19,'3123132',33.00,33.00,1,'16146095063771'),
(20,'水浒传',33.05,33.05,1,'16146095063771'),
(21,'操作系统原理',133.05,133.05,1,'16146095063771');

/*Table structure for table `t_user` */

DROP TABLE IF EXISTS `t_user`;

CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

/*Data for the table `t_user` */

insert  into `t_user`(`id`,`username`,`password`,`email`) values 
(1,'admin','admin','admin@atguigu.com'),
(2,'wzg168','123456','wzg168@qq.com'),
(3,'bbj168','666666','bbj168@qq.com'),
(4,'abc168','666666','abc168@qq.com'),
(5,'123456','123456','123456@123.com'),
(6,'168wzl','123456','123@132.com'),
(7,'168wzl1','123456','123@132.com'),
(8,'safdsf','123123','sdfdsf@sdfs.com'),
(9,'asdadsad','666666','asdsa@sadsad.com'),
(10,'asdsa','444444','44444@sadasd.com'),
(11,'sfdfds','666666','dsfdsfdsf@fds.com');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
