/*
SQLyog 企业版 - MySQL GUI v7.14 
MySQL - 5.5.5-10.1.30-MariaDB : Database - osdb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `category` */

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '菜品分类id',
  `shop_id` int(11) DEFAULT NULL COMMENT '店铺id',
  `name` varchar(50) DEFAULT NULL COMMENT '分类名称',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态：1正常 9删除',
  `create_at` datetime DEFAULT NULL COMMENT '添加时间',
  `update_at` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `category` */

insert  into `category`(`id`,`shop_id`,`name`,`status`,`create_at`,`update_at`) values (1,1,'双拼套餐',1,'2018-08-28 10:20:30','2018-08-28 10:20:30'),(2,1,'盖饭',1,'2018-08-28 11:30:30','2018-09-10 07:54:54'),(3,1,'小菜',1,'2018-08-28 12:40:30','2018-08-28 10:20:30'),(4,1,'汤/饮料',1,'2018-08-29 10:20:30','2018-08-28 13:28:30'),(5,2,'双拼套餐',1,'2018-08-30 12:20:30','2018-09-03 10:20:30'),(6,2,'盖饭',1,'2018-08-29 14:50:30','2018-08-28 16:12:30'),(7,2,'小菜',1,'2018-08-29 18:20:30','2018-08-28 10:20:30'),(8,2,'汤/饮料',1,'2018-08-30 10:50:30','2018-09-10 07:55:32');

/*Table structure for table `django_migrations` */

DROP TABLE IF EXISTS `django_migrations`;

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `django_migrations` */

/*Table structure for table `django_session` */

DROP TABLE IF EXISTS `django_session`;

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `django_session` */

insert  into `django_session`(`session_key`,`session_data`,`expire_date`) values ('26toj2wu8f6t6qwg6i9gnt53mcobcwap','ODFiMzljZTNiZTU2NGEzYThlN2YwMDFjNTliZGQ5ODJkNjg3MzViNzp7InZlcmlmeWNvZGUiOiI4NTg3IiwiYWRtaW51c2VyIjp7ImlkIjoxLCJ1c2VybmFtZSI6InpoYW5nc2FuIiwibmlja25hbWUiOiJcdTVmMjBcdTRlMDkiLCJwYXNzd29yZF9oYXNoIjoiMWUxOTFkODUxYjNiNDlhMjQ4ZjRlYTYyZjZiMDY0MTAiLCJwYXNzd29yZF9zYWx0IjoiMTIzNDU2Iiwic3RhdHVzIjoxLCJjcmVhdGVfYXQiOiIyMDE4LTA4LTA4IDE4OjE4OjE4IiwidXBkYXRlX2F0IjoiMjAxOC0wOS0wNyAwODowNjo1NSJ9LCJzaG9waW5mbyI6eyJpZCI6MSwibmFtZSI6Ilx1NzUzMFx1ODAwMVx1NWUwOFx1N2VhMlx1NzBlN1x1ODA4OSIsInNob3AiOiJcdTY3MWRcdTk2MzNcdTVjMDZcdTUzZjBcdThkZWZcdTVlOTciLCJjb3Zlcl9waWMiOiIxMjM0MTIzNC5qcGciLCJiYW5uZXJfcGljIjoibGcuanBnIiwiYWRkcmVzcyI6Ilx1NTMxN1x1NGVhY1x1NWUwMlx1NjcxZFx1OTYzM1x1NTMzYVx1NWMwNlx1NTNmMFx1NGU2MVx1NGUxY1x1NTE2Ylx1OTVmNFx1NjIzZlx1Njc1MVx1ODk3Zlx1NGUzNDhcdTUzZjciLCJwaG9uZSI6IjEyMzQ1Njc4OTA1Iiwic3RhdHVzIjoxLCJjcmVhdGVfYXQiOiIyMDE4LTA4LTIwIDEwOjEyOjM0IiwidXBkYXRlX2F0IjoiMjAxOC0wOS0wMiAxMjozNDo1NiJ9LCJjYXRlZ29yeWlkcyI6WzEsMiwzLDRdLCJjYXRlZ29yeWxpc3QiOnsiMSI6eyJpZCI6MSwibmFtZSI6Ilx1NTNjY1x1NjJmY1x1NTk1N1x1OTkxMCIsInBpZHMiOlt7ImlkIjoxLCJzaG9wX2lkIjoxLCJjYXRlZ29yeV9pZCI6MSwiY292ZXJfcGljIjoiMTUzNjY1NzYyMC41NDg1NzA0LndlYnAiLCJuYW1lIjoiXHU3ZWEyXHU3MGU3XHU4MDg5K1x1NzJlZVx1NWI1MFx1NTkzNCtcdTk5NmVcdTY1OTkiLCJwcmljZSI6MjUuMCwic3RhdHVzIjoxLCJjcmVhdGVfYXQiOiIyMDE4LTA5LTExIDA5OjIwOjIwIiwidXBkYXRlX2F0IjoiMjAxOC0wOS0xMSAwOTozMDoyNSJ9LHsiaWQiOjIsInNob3BfaWQiOjEsImNhdGVnb3J5X2lkIjoxLCJjb3Zlcl9waWMiOiIxNTM2NjU4MzUyLjkzNDE1NTcud2VicCIsIm5hbWUiOiJcdTdlYTJcdTcwZTdcdTgwODkrXHU3NTZhXHU4MzA0XHU5ZTIxXHU4NmNiIiwicHJpY2UiOjIyLjAsInN0YXR1cyI6MSwiY3JlYXRlX2F0IjoiMjAxOC0wOS0xMSAwOTozMjozMiIsInVwZGF0ZV9hdCI6IjIwMTgtMDktMTEgMDk6MzI6MzIifSx7ImlkIjozLCJzaG9wX2lkIjoxLCJjYXRlZ29yeV9pZCI6MSwiY292ZXJfcGljIjoiMTUzNjY1ODQxNS42ODM4MDAyLndlYnAiLCJuYW1lIjoiXHU2ODg1XHU4M2RjXHU2MjYzXHU4MDg5K1x1NzU2YVx1ODMwNFx1OWUyMVx1ODZjYiIsInByaWNlIjoyMi4wLCJzdGF0dXMiOjEsImNyZWF0ZV9hdCI6IjIwMTgtMDktMTEgMDk6MzM6MzUiLCJ1cGRhdGVfYXQiOiIyMDE4LTA5LTExIDA5OjMzOjM1In0seyJpZCI6NCwic2hvcF9pZCI6MSwiY2F0ZWdvcnlfaWQiOjEsImNvdmVyX3BpYyI6IjE1MzY2NTg1NzQuMjg0NzM3My53ZWJwIiwibmFtZSI6Ilx1ODBhNVx1NzI1YitcdTc1NmFcdTgzMDRcdTllMjFcdTg2Y2IiLCJwcmljZSI6MjIuMCwic3RhdHVzIjoxLCJjcmVhdGVfYXQiOiIyMDE4LTA5LTExIDA5OjM2OjE0IiwidXBkYXRlX2F0IjoiMjAxOC0wOS0xMSAwOTozNjoxNCJ9XX0sIjIiOnsiaWQiOjIsIm5hbWUiOiJcdTc2ZDZcdTk5NmQiLCJwaWRzIjpbeyJpZCI6NSwic2hvcF9pZCI6MSwiY2F0ZWdvcnlfaWQiOjIsImNvdmVyX3BpYyI6IjE1MzY2NTg2NTkuMDQ0Njk5Mi53ZWJwIiwibmFtZSI6Ilx1Njg4NVx1ODNkY1x1NjI2M1x1ODA4OVx1OTk2ZCIsInByaWNlIjoxOS4wLCJzdGF0dXMiOjEsImNyZWF0ZV9hdCI6IjIwMTgtMDktMTEgMDk6Mzc6MzkiLCJ1cGRhdGVfYXQiOiIyMDE4LTA5LTExIDA5OjM3OjM5In0seyJpZCI6Niwic2hvcF9pZCI6MSwiY2F0ZWdvcnlfaWQiOjIsImNvdmVyX3BpYyI6IjE1MzY2NTg4MjQuMzk3NjUwNS53ZWJwIiwibmFtZSI6Ilx1NjcyOFx1OTg3Ylx1ODA4OVx1OTk2ZCIsInByaWNlIjoxNi4wLCJzdGF0dXMiOjEsImNyZWF0ZV9hdCI6IjIwMTgtMDktMTEgMDk6NDA6MjQiLCJ1cGRhdGVfYXQiOiIyMDE4LTA5LTExIDA5OjQwOjI0In0seyJpZCI6Nywic2hvcF9pZCI6MSwiY2F0ZWdvcnlfaWQiOjIsImNvdmVyX3BpYyI6IjE1MzY2NTg4NjMuNjczMjg1NS53ZWJwIiwibmFtZSI6Ilx1ODBhNVx1NzI1Ylx1OTk2ZCIsInByaWNlIjoxOS4wLCJzdGF0dXMiOjEsImNyZWF0ZV9hdCI6IjIwMTgtMDktMTEgMDk6NDE6MDMiLCJ1cGRhdGVfYXQiOiIyMDE4LTA5LTExIDA5OjQxOjAzIn0seyJpZCI6OCwic2hvcF9pZCI6MSwiY2F0ZWdvcnlfaWQiOjIsImNvdmVyX3BpYyI6IjE1MzY2NTg5NjAuMzk1NDEzNC53ZWJwIiwibmFtZSI6Ilx1NjVlMFx1OWFhOFx1NTQ5Nlx1NTViMVx1OWUyMVx1OTk2ZCIsInByaWNlIjoxOC4wLCJzdGF0dXMiOjEsImNyZWF0ZV9hdCI6IjIwMTgtMDktMTEgMDk6NDI6NDAiLCJ1cGRhdGVfYXQiOiIyMDE4LTA5LTExIDA5OjQyOjQwIn1dfSwiMyI6eyJpZCI6MywibmFtZSI6Ilx1NWMwZlx1ODNkYyIsInBpZHMiOlt7ImlkIjo5LCJzaG9wX2lkIjoxLCJjYXRlZ29yeV9pZCI6MywiY292ZXJfcGljIjoiMTUzNjY1OTA2NS43OTcyNjM2LndlYnAiLCJuYW1lIjoiXHU1MzU1XHU0ZWZkXHU3NTZhXHU4MzA0XHU5ZTIxXHU4NmNiIiwicHJpY2UiOjguMCwic3RhdHVzIjoxLCJjcmVhdGVfYXQiOiIyMDE4LTA5LTExIDA5OjQ0OjI1IiwidXBkYXRlX2F0IjoiMjAxOC0wOS0xMSAwOTo0NDoyNSJ9LHsiaWQiOjEwLCJzaG9wX2lkIjoxLCJjYXRlZ29yeV9pZCI6MywiY292ZXJfcGljIjoiMTUzNjY1OTExNC4wNDQwMjM1LndlYnAiLCJuYW1lIjoiXHU1MzU1XHU0ZWZkXHU2NzI4XHU5ODdiXHU4MDg5IiwicHJpY2UiOjguMCwic3RhdHVzIjoxLCJjcmVhdGVfYXQiOiIyMDE4LTA5LTExIDA5OjQ1OjE0IiwidXBkYXRlX2F0IjoiMjAxOC0wOS0xMSAwOTo0NToxNCJ9LHsiaWQiOjExLCJzaG9wX2lkIjoxLCJjYXRlZ29yeV9pZCI6MywiY292ZXJfcGljIjoiMTUzNjY1OTE5Ny43MjMxMjIxLndlYnAiLCJuYW1lIjoiXHU4M2RjXHU1ZmMzIiwicHJpY2UiOjYuMCwic3RhdHVzIjoxLCJjcmVhdGVfYXQiOiIyMDE4LTA5LTExIDA5OjQ2OjM3IiwidXBkYXRlX2F0IjoiMjAxOC0wOS0xMSAwOTo0NjozNyJ9LHsiaWQiOjEyLCJzaG9wX2lkIjoxLCJjYXRlZ29yeV9pZCI6MywiY292ZXJfcGljIjoiMTUzNjY1OTI1My44ODQyNzE2LndlYnAiLCJuYW1lIjoiXHU1MzU1XHU0ZWZkXHU5OTk5XHU4ZmEzXHU3YjBiXHU1ZTcyXHU3MGU3XHU4MDg5IiwicHJpY2UiOjE1LjAsInN0YXR1cyI6MSwiY3JlYXRlX2F0IjoiMjAxOC0wOS0xMSAwOTo0NzozMyIsInVwZGF0ZV9hdCI6IjIwMTgtMDktMTEgMDk6NDc6MzMifV19LCI0Ijp7ImlkIjo0LCJuYW1lIjoiXHU2YzY0L1x1OTk2ZVx1NjU5OSIsInBpZHMiOlt7ImlkIjoxMywic2hvcF9pZCI6MSwiY2F0ZWdvcnlfaWQiOjQsImNvdmVyX3BpYyI6IjE1MzY2NTkzMTEuODY5OTQ5My53ZWJwIiwibmFtZSI6Ilx1NzU2YVx1ODMwNFx1ODZjYlx1ODJiMVx1NmM2NCIsInByaWNlIjo0LjAsInN0YXR1cyI6MSwiY3JlYXRlX2F0IjoiMjAxOC0wOS0xMSAwOTo0ODozMSIsInVwZGF0ZV9hdCI6IjIwMTgtMDktMTEgMDk6NDg6MzEifSx7ImlkIjoxNCwic2hvcF9pZCI6MSwiY2F0ZWdvcnlfaWQiOjQsImNvdmVyX3BpYyI6IjE1MzY2NTkzNjQuNzg5MjUxMy53ZWJwIiwibmFtZSI6Ilx1NzM4Ylx1ODAwMVx1NTQwOSIsInByaWNlIjo2LjAsInN0YXR1cyI6MSwiY3JlYXRlX2F0IjoiMjAxOC0wOS0xMSAwOTo0OToyNCIsInVwZGF0ZV9hdCI6IjIwMTgtMDktMTEgMDk6NDk6MjQifSx7ImlkIjoxNSwic2hvcF9pZCI6MSwiY2F0ZWdvcnlfaWQiOjQsImNvdmVyX3BpYyI6IjE1MzY2NTk1NjMuMzg5NzY0OC53ZWJwIiwibmFtZSI6Ilx1Njc5Y1x1N2M5Mlx1NmE1OSIsInByaWNlIjo1LjAsInN0YXR1cyI6MSwiY3JlYXRlX2F0IjoiMjAxOC0wOS0xMSAwOTo1Mjo0MyIsInVwZGF0ZV9hdCI6IjIwMTgtMDktMTEgMDk6NTI6NDMifSx7ImlkIjoxNiwic2hvcF9pZCI6MSwiY2F0ZWdvcnlfaWQiOjQsImNvdmVyX3BpYyI6IjE1MzY2NTk2MDUuNTU2MTc3MS53ZWJwIiwibmFtZSI6Ilx1NzdmZlx1NmNjOVx1NmMzNCIsInByaWNlIjozLjAsInN0YXR1cyI6MSwiY3JlYXRlX2F0IjoiMjAxOC0wOS0xMSAwOTo1MzoyNSIsInVwZGF0ZV9hdCI6IjIwMTgtMDktMTEgMDk6NTM6MjUifSx7ImlkIjoxNywic2hvcF9pZCI6MSwiY2F0ZWdvcnlfaWQiOjQsImNvdmVyX3BpYyI6IjE1MzY2NTk2ODguNDg1NjE1Ny53ZWJwIiwibmFtZSI6Ilx1NGU0Y1x1Njg4NVx1NmM0MSIsInByaWNlIjo0LjAsInN0YXR1cyI6MSwiY3JlYXRlX2F0IjoiMjAxOC0wOS0xMSAwOTo1NDo0OCIsInVwZGF0ZV9hdCI6IjIwMTgtMDktMTEgMDk6NTQ6NDgifV19fSwicHJvZHVjdGxpc3QiOnsiMSI6eyJpZCI6MSwic2hvcF9pZCI6MSwiY2F0ZWdvcnlfaWQiOjEsImNvdmVyX3BpYyI6IjE1MzY2NTc2MjAuNTQ4NTcwNC53ZWJwIiwibmFtZSI6Ilx1N2VhMlx1NzBlN1x1ODA4OStcdTcyZWVcdTViNTBcdTU5MzQrXHU5OTZlXHU2NTk5IiwicHJpY2UiOjI1LjAsInN0YXR1cyI6MSwiY3JlYXRlX2F0IjoiMjAxOC0wOS0xMSAwOToyMDoyMCIsInVwZGF0ZV9hdCI6IjIwMTgtMDktMTEgMDk6MzA6MjUifSwiMiI6eyJpZCI6Miwic2hvcF9pZCI6MSwiY2F0ZWdvcnlfaWQiOjEsImNvdmVyX3BpYyI6IjE1MzY2NTgzNTIuOTM0MTU1Ny53ZWJwIiwibmFtZSI6Ilx1N2VhMlx1NzBlN1x1ODA4OStcdTc1NmFcdTgzMDRcdTllMjFcdTg2Y2IiLCJwcmljZSI6MjIuMCwic3RhdHVzIjoxLCJjcmVhdGVfYXQiOiIyMDE4LTA5LTExIDA5OjMyOjMyIiwidXBkYXRlX2F0IjoiMjAxOC0wOS0xMSAwOTozMjozMiJ9LCIzIjp7ImlkIjozLCJzaG9wX2lkIjoxLCJjYXRlZ29yeV9pZCI6MSwiY292ZXJfcGljIjoiMTUzNjY1ODQxNS42ODM4MDAyLndlYnAiLCJuYW1lIjoiXHU2ODg1XHU4M2RjXHU2MjYzXHU4MDg5K1x1NzU2YVx1ODMwNFx1OWUyMVx1ODZjYiIsInByaWNlIjoyMi4wLCJzdGF0dXMiOjEsImNyZWF0ZV9hdCI6IjIwMTgtMDktMTEgMDk6MzM6MzUiLCJ1cGRhdGVfYXQiOiIyMDE4LTA5LTExIDA5OjMzOjM1In0sIjQiOnsiaWQiOjQsInNob3BfaWQiOjEsImNhdGVnb3J5X2lkIjoxLCJjb3Zlcl9waWMiOiIxNTM2NjU4NTc0LjI4NDczNzMud2VicCIsIm5hbWUiOiJcdTgwYTVcdTcyNWIrXHU3NTZhXHU4MzA0XHU5ZTIxXHU4NmNiIiwicHJpY2UiOjIyLjAsInN0YXR1cyI6MSwiY3JlYXRlX2F0IjoiMjAxOC0wOS0xMSAwOTozNjoxNCIsInVwZGF0ZV9hdCI6IjIwMTgtMDktMTEgMDk6MzY6MTQifSwiNSI6eyJpZCI6NSwic2hvcF9pZCI6MSwiY2F0ZWdvcnlfaWQiOjIsImNvdmVyX3BpYyI6IjE1MzY2NTg2NTkuMDQ0Njk5Mi53ZWJwIiwibmFtZSI6Ilx1Njg4NVx1ODNkY1x1NjI2M1x1ODA4OVx1OTk2ZCIsInByaWNlIjoxOS4wLCJzdGF0dXMiOjEsImNyZWF0ZV9hdCI6IjIwMTgtMDktMTEgMDk6Mzc6MzkiLCJ1cGRhdGVfYXQiOiIyMDE4LTA5LTExIDA5OjM3OjM5In0sIjYiOnsiaWQiOjYsInNob3BfaWQiOjEsImNhdGVnb3J5X2lkIjoyLCJjb3Zlcl9waWMiOiIxNTM2NjU4ODI0LjM5NzY1MDUud2VicCIsIm5hbWUiOiJcdTY3MjhcdTk4N2JcdTgwODlcdTk5NmQiLCJwcmljZSI6MTYuMCwic3RhdHVzIjoxLCJjcmVhdGVfYXQiOiIyMDE4LTA5LTExIDA5OjQwOjI0IiwidXBkYXRlX2F0IjoiMjAxOC0wOS0xMSAwOTo0MDoyNCJ9LCI3Ijp7ImlkIjo3LCJzaG9wX2lkIjoxLCJjYXRlZ29yeV9pZCI6MiwiY292ZXJfcGljIjoiMTUzNjY1ODg2My42NzMyODU1LndlYnAiLCJuYW1lIjoiXHU4MGE1XHU3MjViXHU5OTZkIiwicHJpY2UiOjE5LjAsInN0YXR1cyI6MSwiY3JlYXRlX2F0IjoiMjAxOC0wOS0xMSAwOTo0MTowMyIsInVwZGF0ZV9hdCI6IjIwMTgtMDktMTEgMDk6NDE6MDMifSwiOCI6eyJpZCI6OCwic2hvcF9pZCI6MSwiY2F0ZWdvcnlfaWQiOjIsImNvdmVyX3BpYyI6IjE1MzY2NTg5NjAuMzk1NDEzNC53ZWJwIiwibmFtZSI6Ilx1NjVlMFx1OWFhOFx1NTQ5Nlx1NTViMVx1OWUyMVx1OTk2ZCIsInByaWNlIjoxOC4wLCJzdGF0dXMiOjEsImNyZWF0ZV9hdCI6IjIwMTgtMDktMTEgMDk6NDI6NDAiLCJ1cGRhdGVfYXQiOiIyMDE4LTA5LTExIDA5OjQyOjQwIn0sIjkiOnsiaWQiOjksInNob3BfaWQiOjEsImNhdGVnb3J5X2lkIjozLCJjb3Zlcl9waWMiOiIxNTM2NjU5MDY1Ljc5NzI2MzYud2VicCIsIm5hbWUiOiJcdTUzNTVcdTRlZmRcdTc1NmFcdTgzMDRcdTllMjFcdTg2Y2IiLCJwcmljZSI6OC4wLCJzdGF0dXMiOjEsImNyZWF0ZV9hdCI6IjIwMTgtMDktMTEgMDk6NDQ6MjUiLCJ1cGRhdGVfYXQiOiIyMDE4LTA5LTExIDA5OjQ0OjI1In0sIjEwIjp7ImlkIjoxMCwic2hvcF9pZCI6MSwiY2F0ZWdvcnlfaWQiOjMsImNvdmVyX3BpYyI6IjE1MzY2NTkxMTQuMDQ0MDIzNS53ZWJwIiwibmFtZSI6Ilx1NTM1NVx1NGVmZFx1NjcyOFx1OTg3Ylx1ODA4OSIsInByaWNlIjo4LjAsInN0YXR1cyI6MSwiY3JlYXRlX2F0IjoiMjAxOC0wOS0xMSAwOTo0NToxNCIsInVwZGF0ZV9hdCI6IjIwMTgtMDktMTEgMDk6NDU6MTQifSwiMTEiOnsiaWQiOjExLCJzaG9wX2lkIjoxLCJjYXRlZ29yeV9pZCI6MywiY292ZXJfcGljIjoiMTUzNjY1OTE5Ny43MjMxMjIxLndlYnAiLCJuYW1lIjoiXHU4M2RjXHU1ZmMzIiwicHJpY2UiOjYuMCwic3RhdHVzIjoxLCJjcmVhdGVfYXQiOiIyMDE4LTA5LTExIDA5OjQ2OjM3IiwidXBkYXRlX2F0IjoiMjAxOC0wOS0xMSAwOTo0NjozNyJ9LCIxMiI6eyJpZCI6MTIsInNob3BfaWQiOjEsImNhdGVnb3J5X2lkIjozLCJjb3Zlcl9waWMiOiIxNTM2NjU5MjUzLjg4NDI3MTYud2VicCIsIm5hbWUiOiJcdTUzNTVcdTRlZmRcdTk5OTlcdThmYTNcdTdiMGJcdTVlNzJcdTcwZTdcdTgwODkiLCJwcmljZSI6MTUuMCwic3RhdHVzIjoxLCJjcmVhdGVfYXQiOiIyMDE4LTA5LTExIDA5OjQ3OjMzIiwidXBkYXRlX2F0IjoiMjAxOC0wOS0xMSAwOTo0NzozMyJ9LCIxMyI6eyJpZCI6MTMsInNob3BfaWQiOjEsImNhdGVnb3J5X2lkIjo0LCJjb3Zlcl9waWMiOiIxNTM2NjU5MzExLjg2OTk0OTMud2VicCIsIm5hbWUiOiJcdTc1NmFcdTgzMDRcdTg2Y2JcdTgyYjFcdTZjNjQiLCJwcmljZSI6NC4wLCJzdGF0dXMiOjEsImNyZWF0ZV9hdCI6IjIwMTgtMDktMTEgMDk6NDg6MzEiLCJ1cGRhdGVfYXQiOiIyMDE4LTA5LTExIDA5OjQ4OjMxIn0sIjE0Ijp7ImlkIjoxNCwic2hvcF9pZCI6MSwiY2F0ZWdvcnlfaWQiOjQsImNvdmVyX3BpYyI6IjE1MzY2NTkzNjQuNzg5MjUxMy53ZWJwIiwibmFtZSI6Ilx1NzM4Ylx1ODAwMVx1NTQwOSIsInByaWNlIjo2LjAsInN0YXR1cyI6MSwiY3JlYXRlX2F0IjoiMjAxOC0wOS0xMSAwOTo0OToyNCIsInVwZGF0ZV9hdCI6IjIwMTgtMDktMTEgMDk6NDk6MjQifSwiMTUiOnsiaWQiOjE1LCJzaG9wX2lkIjoxLCJjYXRlZ29yeV9pZCI6NCwiY292ZXJfcGljIjoiMTUzNjY1OTU2My4zODk3NjQ4LndlYnAiLCJuYW1lIjoiXHU2NzljXHU3YzkyXHU2YTU5IiwicHJpY2UiOjUuMCwic3RhdHVzIjoxLCJjcmVhdGVfYXQiOiIyMDE4LTA5LTExIDA5OjUyOjQzIiwidXBkYXRlX2F0IjoiMjAxOC0wOS0xMSAwOTo1Mjo0MyJ9LCIxNiI6eyJpZCI6MTYsInNob3BfaWQiOjEsImNhdGVnb3J5X2lkIjo0LCJjb3Zlcl9waWMiOiIxNTM2NjU5NjA1LjU1NjE3NzEud2VicCIsIm5hbWUiOiJcdTc3ZmZcdTZjYzlcdTZjMzQiLCJwcmljZSI6My4wLCJzdGF0dXMiOjEsImNyZWF0ZV9hdCI6IjIwMTgtMDktMTEgMDk6NTM6MjUiLCJ1cGRhdGVfYXQiOiIyMDE4LTA5LTExIDA5OjUzOjI1In0sIjE3Ijp7ImlkIjoxNywic2hvcF9pZCI6MSwiY2F0ZWdvcnlfaWQiOjQsImNvdmVyX3BpYyI6IjE1MzY2NTk2ODguNDg1NjE1Ny53ZWJwIiwibmFtZSI6Ilx1NGU0Y1x1Njg4NVx1NmM0MSIsInByaWNlIjo0LjAsInN0YXR1cyI6MSwiY3JlYXRlX2F0IjoiMjAxOC0wOS0xMSAwOTo1NDo0OCIsInVwZGF0ZV9hdCI6IjIwMTgtMDktMTEgMDk6NTQ6NDgifX0sInRvdGFsX21vbmV5IjowLCJjYXJ0bGlzdCI6e319','2018-10-24 07:49:02.168419'),('dhetsk091yjergo3rkrk4ght1krjj5b5','YzI1NDBjNGZjNjNkMjJjMmY3ZTdhNjM2ZWFhZDY4MGY5ZDZkYzgxYTp7InZlcmlmeWNvZGUiOiIyNTI1IiwiYWRtaW51c2VyIjp7ImlkIjoxLCJ1c2VybmFtZSI6InpoYW5nc2FuIiwibmlja25hbWUiOiJcdTVmMjBcdTRlMDkiLCJwYXNzd29yZF9oYXNoIjoiMWUxOTFkODUxYjNiNDlhMjQ4ZjRlYTYyZjZiMDY0MTAiLCJwYXNzd29yZF9zYWx0IjoiMTIzNDU2Iiwic3RhdHVzIjoxLCJjcmVhdGVfYXQiOiIyMDE4LTA4LTA4IDE4OjE4OjE4IiwidXBkYXRlX2F0IjoiMjAxOC0wOS0wNyAwODowNjo1NSJ9LCJzaG9waW5mbyI6eyJpZCI6MSwibmFtZSI6Ilx1NzUzMFx1ODAwMVx1NWUwOFx1N2VhMlx1NzBlN1x1ODA4OSIsInNob3AiOiJcdTY3MWRcdTk2MzNcdTVjMDZcdTUzZjBcdThkZWZcdTVlOTciLCJjb3Zlcl9waWMiOiIxMjM0MTIzNC5qcGciLCJiYW5uZXJfcGljIjoibGcuanBnIiwiYWRkcmVzcyI6Ilx1NTMxN1x1NGVhY1x1NWUwMlx1NjcxZFx1OTYzM1x1NTMzYVx1NWMwNlx1NTNmMFx1NGU2MVx1NGUxY1x1NTE2Ylx1OTVmNFx1NjIzZlx1Njc1MVx1ODk3Zlx1NGUzNDhcdTUzZjciLCJwaG9uZSI6IjEyMzQ1Njc4OTA1Iiwic3RhdHVzIjoxLCJjcmVhdGVfYXQiOiIyMDE4LTA4LTIwIDEwOjEyOjM0IiwidXBkYXRlX2F0IjoiMjAxOC0wOS0wMiAxMjozNDo1NiJ9LCJjYXRlZ29yeWlkcyI6WzEsMiwzLDRdLCJjYXRlZ29yeWxpc3QiOnsiMSI6eyJpZCI6MSwibmFtZSI6Ilx1NTNjY1x1NjJmY1x1NTk1N1x1OTkxMCIsInBpZHMiOlt7ImlkIjoxLCJzaG9wX2lkIjoxLCJjYXRlZ29yeV9pZCI6MSwiY292ZXJfcGljIjoiMTUzNjY1NzYyMC41NDg1NzA0LndlYnAiLCJuYW1lIjoiXHU3ZWEyXHU3MGU3XHU4MDg5K1x1NzJlZVx1NWI1MFx1NTkzNCtcdTk5NmVcdTY1OTkiLCJwcmljZSI6MjUuMCwic3RhdHVzIjoxLCJjcmVhdGVfYXQiOiIyMDE4LTA5LTExIDA5OjIwOjIwIiwidXBkYXRlX2F0IjoiMjAxOC0wOS0xMSAwOTozMDoyNSJ9LHsiaWQiOjIsInNob3BfaWQiOjEsImNhdGVnb3J5X2lkIjoxLCJjb3Zlcl9waWMiOiIxNTM2NjU4MzUyLjkzNDE1NTcud2VicCIsIm5hbWUiOiJcdTdlYTJcdTcwZTdcdTgwODkrXHU3NTZhXHU4MzA0XHU5ZTIxXHU4NmNiIiwicHJpY2UiOjIyLjAsInN0YXR1cyI6MSwiY3JlYXRlX2F0IjoiMjAxOC0wOS0xMSAwOTozMjozMiIsInVwZGF0ZV9hdCI6IjIwMTgtMDktMTEgMDk6MzI6MzIifSx7ImlkIjozLCJzaG9wX2lkIjoxLCJjYXRlZ29yeV9pZCI6MSwiY292ZXJfcGljIjoiMTUzNjY1ODQxNS42ODM4MDAyLndlYnAiLCJuYW1lIjoiXHU2ODg1XHU4M2RjXHU2MjYzXHU4MDg5K1x1NzU2YVx1ODMwNFx1OWUyMVx1ODZjYiIsInByaWNlIjoyMi4wLCJzdGF0dXMiOjEsImNyZWF0ZV9hdCI6IjIwMTgtMDktMTEgMDk6MzM6MzUiLCJ1cGRhdGVfYXQiOiIyMDE4LTA5LTExIDA5OjMzOjM1In0seyJpZCI6NCwic2hvcF9pZCI6MSwiY2F0ZWdvcnlfaWQiOjEsImNvdmVyX3BpYyI6IjE1MzY2NTg1NzQuMjg0NzM3My53ZWJwIiwibmFtZSI6Ilx1ODBhNVx1NzI1YitcdTc1NmFcdTgzMDRcdTllMjFcdTg2Y2IiLCJwcmljZSI6MjIuMCwic3RhdHVzIjoxLCJjcmVhdGVfYXQiOiIyMDE4LTA5LTExIDA5OjM2OjE0IiwidXBkYXRlX2F0IjoiMjAxOC0wOS0xMSAwOTozNjoxNCJ9XX0sIjIiOnsiaWQiOjIsIm5hbWUiOiJcdTc2ZDZcdTk5NmQiLCJwaWRzIjpbeyJpZCI6NSwic2hvcF9pZCI6MSwiY2F0ZWdvcnlfaWQiOjIsImNvdmVyX3BpYyI6IjE1MzY2NTg2NTkuMDQ0Njk5Mi53ZWJwIiwibmFtZSI6Ilx1Njg4NVx1ODNkY1x1NjI2M1x1ODA4OVx1OTk2ZCIsInByaWNlIjoxOS4wLCJzdGF0dXMiOjEsImNyZWF0ZV9hdCI6IjIwMTgtMDktMTEgMDk6Mzc6MzkiLCJ1cGRhdGVfYXQiOiIyMDE4LTA5LTExIDA5OjM3OjM5In0seyJpZCI6Niwic2hvcF9pZCI6MSwiY2F0ZWdvcnlfaWQiOjIsImNvdmVyX3BpYyI6IjE1MzY2NTg4MjQuMzk3NjUwNS53ZWJwIiwibmFtZSI6Ilx1NjcyOFx1OTg3Ylx1ODA4OVx1OTk2ZCIsInByaWNlIjoxNi4wLCJzdGF0dXMiOjEsImNyZWF0ZV9hdCI6IjIwMTgtMDktMTEgMDk6NDA6MjQiLCJ1cGRhdGVfYXQiOiIyMDE4LTA5LTExIDA5OjQwOjI0In0seyJpZCI6Nywic2hvcF9pZCI6MSwiY2F0ZWdvcnlfaWQiOjIsImNvdmVyX3BpYyI6IjE1MzY2NTg4NjMuNjczMjg1NS53ZWJwIiwibmFtZSI6Ilx1ODBhNVx1NzI1Ylx1OTk2ZCIsInByaWNlIjoxOS4wLCJzdGF0dXMiOjEsImNyZWF0ZV9hdCI6IjIwMTgtMDktMTEgMDk6NDE6MDMiLCJ1cGRhdGVfYXQiOiIyMDE4LTA5LTExIDA5OjQxOjAzIn0seyJpZCI6OCwic2hvcF9pZCI6MSwiY2F0ZWdvcnlfaWQiOjIsImNvdmVyX3BpYyI6IjE1MzY2NTg5NjAuMzk1NDEzNC53ZWJwIiwibmFtZSI6Ilx1NjVlMFx1OWFhOFx1NTQ5Nlx1NTViMVx1OWUyMVx1OTk2ZCIsInByaWNlIjoxOC4wLCJzdGF0dXMiOjEsImNyZWF0ZV9hdCI6IjIwMTgtMDktMTEgMDk6NDI6NDAiLCJ1cGRhdGVfYXQiOiIyMDE4LTA5LTExIDA5OjQyOjQwIn1dfSwiMyI6eyJpZCI6MywibmFtZSI6Ilx1NWMwZlx1ODNkYyIsInBpZHMiOlt7ImlkIjo5LCJzaG9wX2lkIjoxLCJjYXRlZ29yeV9pZCI6MywiY292ZXJfcGljIjoiMTUzNjY1OTA2NS43OTcyNjM2LndlYnAiLCJuYW1lIjoiXHU1MzU1XHU0ZWZkXHU3NTZhXHU4MzA0XHU5ZTIxXHU4NmNiIiwicHJpY2UiOjguMCwic3RhdHVzIjoxLCJjcmVhdGVfYXQiOiIyMDE4LTA5LTExIDA5OjQ0OjI1IiwidXBkYXRlX2F0IjoiMjAxOC0wOS0xMSAwOTo0NDoyNSJ9LHsiaWQiOjEwLCJzaG9wX2lkIjoxLCJjYXRlZ29yeV9pZCI6MywiY292ZXJfcGljIjoiMTUzNjY1OTExNC4wNDQwMjM1LndlYnAiLCJuYW1lIjoiXHU1MzU1XHU0ZWZkXHU2NzI4XHU5ODdiXHU4MDg5IiwicHJpY2UiOjguMCwic3RhdHVzIjoxLCJjcmVhdGVfYXQiOiIyMDE4LTA5LTExIDA5OjQ1OjE0IiwidXBkYXRlX2F0IjoiMjAxOC0wOS0xMSAwOTo0NToxNCJ9LHsiaWQiOjExLCJzaG9wX2lkIjoxLCJjYXRlZ29yeV9pZCI6MywiY292ZXJfcGljIjoiMTUzNjY1OTE5Ny43MjMxMjIxLndlYnAiLCJuYW1lIjoiXHU4M2RjXHU1ZmMzIiwicHJpY2UiOjYuMCwic3RhdHVzIjoxLCJjcmVhdGVfYXQiOiIyMDE4LTA5LTExIDA5OjQ2OjM3IiwidXBkYXRlX2F0IjoiMjAxOC0wOS0xMSAwOTo0NjozNyJ9LHsiaWQiOjEyLCJzaG9wX2lkIjoxLCJjYXRlZ29yeV9pZCI6MywiY292ZXJfcGljIjoiMTUzNjY1OTI1My44ODQyNzE2LndlYnAiLCJuYW1lIjoiXHU1MzU1XHU0ZWZkXHU5OTk5XHU4ZmEzXHU3YjBiXHU1ZTcyXHU3MGU3XHU4MDg5IiwicHJpY2UiOjE1LjAsInN0YXR1cyI6MSwiY3JlYXRlX2F0IjoiMjAxOC0wOS0xMSAwOTo0NzozMyIsInVwZGF0ZV9hdCI6IjIwMTgtMDktMTEgMDk6NDc6MzMifV19LCI0Ijp7ImlkIjo0LCJuYW1lIjoiXHU2YzY0L1x1OTk2ZVx1NjU5OSIsInBpZHMiOlt7ImlkIjoxMywic2hvcF9pZCI6MSwiY2F0ZWdvcnlfaWQiOjQsImNvdmVyX3BpYyI6IjE1MzY2NTkzMTEuODY5OTQ5My53ZWJwIiwibmFtZSI6Ilx1NzU2YVx1ODMwNFx1ODZjYlx1ODJiMVx1NmM2NCIsInByaWNlIjo0LjAsInN0YXR1cyI6MSwiY3JlYXRlX2F0IjoiMjAxOC0wOS0xMSAwOTo0ODozMSIsInVwZGF0ZV9hdCI6IjIwMTgtMDktMTEgMDk6NDg6MzEifSx7ImlkIjoxNCwic2hvcF9pZCI6MSwiY2F0ZWdvcnlfaWQiOjQsImNvdmVyX3BpYyI6IjE1MzY2NTkzNjQuNzg5MjUxMy53ZWJwIiwibmFtZSI6Ilx1NzM4Ylx1ODAwMVx1NTQwOSIsInByaWNlIjo2LjAsInN0YXR1cyI6MSwiY3JlYXRlX2F0IjoiMjAxOC0wOS0xMSAwOTo0OToyNCIsInVwZGF0ZV9hdCI6IjIwMTgtMDktMTEgMDk6NDk6MjQifSx7ImlkIjoxNSwic2hvcF9pZCI6MSwiY2F0ZWdvcnlfaWQiOjQsImNvdmVyX3BpYyI6IjE1MzY2NTk1NjMuMzg5NzY0OC53ZWJwIiwibmFtZSI6Ilx1Njc5Y1x1N2M5Mlx1NmE1OSIsInByaWNlIjo1LjAsInN0YXR1cyI6MSwiY3JlYXRlX2F0IjoiMjAxOC0wOS0xMSAwOTo1Mjo0MyIsInVwZGF0ZV9hdCI6IjIwMTgtMDktMTEgMDk6NTI6NDMifSx7ImlkIjoxNiwic2hvcF9pZCI6MSwiY2F0ZWdvcnlfaWQiOjQsImNvdmVyX3BpYyI6IjE1MzY2NTk2MDUuNTU2MTc3MS53ZWJwIiwibmFtZSI6Ilx1NzdmZlx1NmNjOVx1NmMzNCIsInByaWNlIjozLjAsInN0YXR1cyI6MSwiY3JlYXRlX2F0IjoiMjAxOC0wOS0xMSAwOTo1MzoyNSIsInVwZGF0ZV9hdCI6IjIwMTgtMDktMTEgMDk6NTM6MjUifSx7ImlkIjoxNywic2hvcF9pZCI6MSwiY2F0ZWdvcnlfaWQiOjQsImNvdmVyX3BpYyI6IjE1MzY2NTk2ODguNDg1NjE1Ny53ZWJwIiwibmFtZSI6Ilx1NGU0Y1x1Njg4NVx1NmM0MSIsInByaWNlIjo0LjAsInN0YXR1cyI6MSwiY3JlYXRlX2F0IjoiMjAxOC0wOS0xMSAwOTo1NDo0OCIsInVwZGF0ZV9hdCI6IjIwMTgtMDktMTEgMDk6NTQ6NDgifV19fSwicHJvZHVjdGxpc3QiOnsiMSI6eyJpZCI6MSwic2hvcF9pZCI6MSwiY2F0ZWdvcnlfaWQiOjEsImNvdmVyX3BpYyI6IjE1MzY2NTc2MjAuNTQ4NTcwNC53ZWJwIiwibmFtZSI6Ilx1N2VhMlx1NzBlN1x1ODA4OStcdTcyZWVcdTViNTBcdTU5MzQrXHU5OTZlXHU2NTk5IiwicHJpY2UiOjI1LjAsInN0YXR1cyI6MSwiY3JlYXRlX2F0IjoiMjAxOC0wOS0xMSAwOToyMDoyMCIsInVwZGF0ZV9hdCI6IjIwMTgtMDktMTEgMDk6MzA6MjUiLCJudW0iOjF9LCIyIjp7ImlkIjoyLCJzaG9wX2lkIjoxLCJjYXRlZ29yeV9pZCI6MSwiY292ZXJfcGljIjoiMTUzNjY1ODM1Mi45MzQxNTU3LndlYnAiLCJuYW1lIjoiXHU3ZWEyXHU3MGU3XHU4MDg5K1x1NzU2YVx1ODMwNFx1OWUyMVx1ODZjYiIsInByaWNlIjoyMi4wLCJzdGF0dXMiOjEsImNyZWF0ZV9hdCI6IjIwMTgtMDktMTEgMDk6MzI6MzIiLCJ1cGRhdGVfYXQiOiIyMDE4LTA5LTExIDA5OjMyOjMyIiwibnVtIjoxfSwiMyI6eyJpZCI6Mywic2hvcF9pZCI6MSwiY2F0ZWdvcnlfaWQiOjEsImNvdmVyX3BpYyI6IjE1MzY2NTg0MTUuNjgzODAwMi53ZWJwIiwibmFtZSI6Ilx1Njg4NVx1ODNkY1x1NjI2M1x1ODA4OStcdTc1NmFcdTgzMDRcdTllMjFcdTg2Y2IiLCJwcmljZSI6MjIuMCwic3RhdHVzIjoxLCJjcmVhdGVfYXQiOiIyMDE4LTA5LTExIDA5OjMzOjM1IiwidXBkYXRlX2F0IjoiMjAxOC0wOS0xMSAwOTozMzozNSIsIm51bSI6MX0sIjQiOnsiaWQiOjQsInNob3BfaWQiOjEsImNhdGVnb3J5X2lkIjoxLCJjb3Zlcl9waWMiOiIxNTM2NjU4NTc0LjI4NDczNzMud2VicCIsIm5hbWUiOiJcdTgwYTVcdTcyNWIrXHU3NTZhXHU4MzA0XHU5ZTIxXHU4NmNiIiwicHJpY2UiOjIyLjAsInN0YXR1cyI6MSwiY3JlYXRlX2F0IjoiMjAxOC0wOS0xMSAwOTozNjoxNCIsInVwZGF0ZV9hdCI6IjIwMTgtMDktMTEgMDk6MzY6MTQiLCJudW0iOjF9LCI1Ijp7ImlkIjo1LCJzaG9wX2lkIjoxLCJjYXRlZ29yeV9pZCI6MiwiY292ZXJfcGljIjoiMTUzNjY1ODY1OS4wNDQ2OTkyLndlYnAiLCJuYW1lIjoiXHU2ODg1XHU4M2RjXHU2MjYzXHU4MDg5XHU5OTZkIiwicHJpY2UiOjE5LjAsInN0YXR1cyI6MSwiY3JlYXRlX2F0IjoiMjAxOC0wOS0xMSAwOTozNzozOSIsInVwZGF0ZV9hdCI6IjIwMTgtMDktMTEgMDk6Mzc6MzkifSwiNiI6eyJpZCI6Niwic2hvcF9pZCI6MSwiY2F0ZWdvcnlfaWQiOjIsImNvdmVyX3BpYyI6IjE1MzY2NTg4MjQuMzk3NjUwNS53ZWJwIiwibmFtZSI6Ilx1NjcyOFx1OTg3Ylx1ODA4OVx1OTk2ZCIsInByaWNlIjoxNi4wLCJzdGF0dXMiOjEsImNyZWF0ZV9hdCI6IjIwMTgtMDktMTEgMDk6NDA6MjQiLCJ1cGRhdGVfYXQiOiIyMDE4LTA5LTExIDA5OjQwOjI0IiwibnVtIjoxfSwiNyI6eyJpZCI6Nywic2hvcF9pZCI6MSwiY2F0ZWdvcnlfaWQiOjIsImNvdmVyX3BpYyI6IjE1MzY2NTg4NjMuNjczMjg1NS53ZWJwIiwibmFtZSI6Ilx1ODBhNVx1NzI1Ylx1OTk2ZCIsInByaWNlIjoxOS4wLCJzdGF0dXMiOjEsImNyZWF0ZV9hdCI6IjIwMTgtMDktMTEgMDk6NDE6MDMiLCJ1cGRhdGVfYXQiOiIyMDE4LTA5LTExIDA5OjQxOjAzIn0sIjgiOnsiaWQiOjgsInNob3BfaWQiOjEsImNhdGVnb3J5X2lkIjoyLCJjb3Zlcl9waWMiOiIxNTM2NjU4OTYwLjM5NTQxMzQud2VicCIsIm5hbWUiOiJcdTY1ZTBcdTlhYThcdTU0OTZcdTU1YjFcdTllMjFcdTk5NmQiLCJwcmljZSI6MTguMCwic3RhdHVzIjoxLCJjcmVhdGVfYXQiOiIyMDE4LTA5LTExIDA5OjQyOjQwIiwidXBkYXRlX2F0IjoiMjAxOC0wOS0xMSAwOTo0Mjo0MCJ9LCI5Ijp7ImlkIjo5LCJzaG9wX2lkIjoxLCJjYXRlZ29yeV9pZCI6MywiY292ZXJfcGljIjoiMTUzNjY1OTA2NS43OTcyNjM2LndlYnAiLCJuYW1lIjoiXHU1MzU1XHU0ZWZkXHU3NTZhXHU4MzA0XHU5ZTIxXHU4NmNiIiwicHJpY2UiOjguMCwic3RhdHVzIjoxLCJjcmVhdGVfYXQiOiIyMDE4LTA5LTExIDA5OjQ0OjI1IiwidXBkYXRlX2F0IjoiMjAxOC0wOS0xMSAwOTo0NDoyNSJ9LCIxMCI6eyJpZCI6MTAsInNob3BfaWQiOjEsImNhdGVnb3J5X2lkIjozLCJjb3Zlcl9waWMiOiIxNTM2NjU5MTE0LjA0NDAyMzUud2VicCIsIm5hbWUiOiJcdTUzNTVcdTRlZmRcdTY3MjhcdTk4N2JcdTgwODkiLCJwcmljZSI6OC4wLCJzdGF0dXMiOjEsImNyZWF0ZV9hdCI6IjIwMTgtMDktMTEgMDk6NDU6MTQiLCJ1cGRhdGVfYXQiOiIyMDE4LTA5LTExIDA5OjQ1OjE0IiwibnVtIjoxfSwiMTEiOnsiaWQiOjExLCJzaG9wX2lkIjoxLCJjYXRlZ29yeV9pZCI6MywiY292ZXJfcGljIjoiMTUzNjY1OTE5Ny43MjMxMjIxLndlYnAiLCJuYW1lIjoiXHU4M2RjXHU1ZmMzIiwicHJpY2UiOjYuMCwic3RhdHVzIjoxLCJjcmVhdGVfYXQiOiIyMDE4LTA5LTExIDA5OjQ2OjM3IiwidXBkYXRlX2F0IjoiMjAxOC0wOS0xMSAwOTo0NjozNyIsIm51bSI6MX0sIjEyIjp7ImlkIjoxMiwic2hvcF9pZCI6MSwiY2F0ZWdvcnlfaWQiOjMsImNvdmVyX3BpYyI6IjE1MzY2NTkyNTMuODg0MjcxNi53ZWJwIiwibmFtZSI6Ilx1NTM1NVx1NGVmZFx1OTk5OVx1OGZhM1x1N2IwYlx1NWU3Mlx1NzBlN1x1ODA4OSIsInByaWNlIjoxNS4wLCJzdGF0dXMiOjEsImNyZWF0ZV9hdCI6IjIwMTgtMDktMTEgMDk6NDc6MzMiLCJ1cGRhdGVfYXQiOiIyMDE4LTA5LTExIDA5OjQ3OjMzIn0sIjEzIjp7ImlkIjoxMywic2hvcF9pZCI6MSwiY2F0ZWdvcnlfaWQiOjQsImNvdmVyX3BpYyI6IjE1MzY2NTkzMTEuODY5OTQ5My53ZWJwIiwibmFtZSI6Ilx1NzU2YVx1ODMwNFx1ODZjYlx1ODJiMVx1NmM2NCIsInByaWNlIjo0LjAsInN0YXR1cyI6MSwiY3JlYXRlX2F0IjoiMjAxOC0wOS0xMSAwOTo0ODozMSIsInVwZGF0ZV9hdCI6IjIwMTgtMDktMTEgMDk6NDg6MzEifSwiMTQiOnsiaWQiOjE0LCJzaG9wX2lkIjoxLCJjYXRlZ29yeV9pZCI6NCwiY292ZXJfcGljIjoiMTUzNjY1OTM2NC43ODkyNTEzLndlYnAiLCJuYW1lIjoiXHU3MzhiXHU4MDAxXHU1NDA5IiwicHJpY2UiOjYuMCwic3RhdHVzIjoxLCJjcmVhdGVfYXQiOiIyMDE4LTA5LTExIDA5OjQ5OjI0IiwidXBkYXRlX2F0IjoiMjAxOC0wOS0xMSAwOTo0OToyNCJ9LCIxNSI6eyJpZCI6MTUsInNob3BfaWQiOjEsImNhdGVnb3J5X2lkIjo0LCJjb3Zlcl9waWMiOiIxNTM2NjU5NTYzLjM4OTc2NDgud2VicCIsIm5hbWUiOiJcdTY3OWNcdTdjOTJcdTZhNTkiLCJwcmljZSI6NS4wLCJzdGF0dXMiOjEsImNyZWF0ZV9hdCI6IjIwMTgtMDktMTEgMDk6NTI6NDMiLCJ1cGRhdGVfYXQiOiIyMDE4LTA5LTExIDA5OjUyOjQzIn0sIjE2Ijp7ImlkIjoxNiwic2hvcF9pZCI6MSwiY2F0ZWdvcnlfaWQiOjQsImNvdmVyX3BpYyI6IjE1MzY2NTk2MDUuNTU2MTc3MS53ZWJwIiwibmFtZSI6Ilx1NzdmZlx1NmNjOVx1NmMzNCIsInByaWNlIjozLjAsInN0YXR1cyI6MSwiY3JlYXRlX2F0IjoiMjAxOC0wOS0xMSAwOTo1MzoyNSIsInVwZGF0ZV9hdCI6IjIwMTgtMDktMTEgMDk6NTM6MjUifSwiMTciOnsiaWQiOjE3LCJzaG9wX2lkIjoxLCJjYXRlZ29yeV9pZCI6NCwiY292ZXJfcGljIjoiMTUzNjY1OTY4OC40ODU2MTU3LndlYnAiLCJuYW1lIjoiXHU0ZTRjXHU2ODg1XHU2YzQxIiwicHJpY2UiOjQuMCwic3RhdHVzIjoxLCJjcmVhdGVfYXQiOiIyMDE4LTA5LTExIDA5OjU0OjQ4IiwidXBkYXRlX2F0IjoiMjAxOC0wOS0xMSAwOTo1NDo0OCIsIm51bSI6MX19LCJ3ZWJ1c2VyIjp7ImlkIjoxLCJ1c2VybmFtZSI6InpoYW5nc2FuIiwibmlja25hbWUiOiJcdTVmMjBcdTRlMDkiLCJwYXNzd29yZF9oYXNoIjoiMWUxOTFkODUxYjNiNDlhMjQ4ZjRlYTYyZjZiMDY0MTAiLCJwYXNzd29yZF9zYWx0IjoiMTIzNDU2Iiwic3RhdHVzIjoxLCJjcmVhdGVfYXQiOiIyMDE4LTA4LTA4IDE4OjE4OjE4IiwidXBkYXRlX2F0IjoiMjAxOC0wOS0wNyAwODowNjo1NSJ9LCJjYXJ0bGlzdCI6eyI0Ijp7ImlkIjo0LCJzaG9wX2lkIjoxLCJjYXRlZ29yeV9pZCI6MSwiY292ZXJfcGljIjoiMTUzNjY1ODU3NC4yODQ3MzczLndlYnAiLCJuYW1lIjoiXHU4MGE1XHU3MjViK1x1NzU2YVx1ODMwNFx1OWUyMVx1ODZjYiIsInByaWNlIjoyMi4wLCJzdGF0dXMiOjEsImNyZWF0ZV9hdCI6IjIwMTgtMDktMTEgMDk6MzY6MTQiLCJ1cGRhdGVfYXQiOiIyMDE4LTA5LTExIDA5OjM2OjE0IiwibnVtIjoyfSwiMyI6eyJpZCI6Mywic2hvcF9pZCI6MSwiY2F0ZWdvcnlfaWQiOjEsImNvdmVyX3BpYyI6IjE1MzY2NTg0MTUuNjgzODAwMi53ZWJwIiwibmFtZSI6Ilx1Njg4NVx1ODNkY1x1NjI2M1x1ODA4OStcdTc1NmFcdTgzMDRcdTllMjFcdTg2Y2IiLCJwcmljZSI6MjIuMCwic3RhdHVzIjoxLCJjcmVhdGVfYXQiOiIyMDE4LTA5LTExIDA5OjMzOjM1IiwidXBkYXRlX2F0IjoiMjAxOC0wOS0xMSAwOTozMzozNSIsIm51bSI6MX0sIjEwIjp7ImlkIjoxMCwic2hvcF9pZCI6MSwiY2F0ZWdvcnlfaWQiOjMsImNvdmVyX3BpYyI6IjE1MzY2NTkxMTQuMDQ0MDIzNS53ZWJwIiwibmFtZSI6Ilx1NTM1NVx1NGVmZFx1NjcyOFx1OTg3Ylx1ODA4OSIsInByaWNlIjo4LjAsInN0YXR1cyI6MSwiY3JlYXRlX2F0IjoiMjAxOC0wOS0xMSAwOTo0NToxNCIsInVwZGF0ZV9hdCI6IjIwMTgtMDktMTEgMDk6NDU6MTQiLCJudW0iOjF9LCIyIjp7ImlkIjoyLCJzaG9wX2lkIjoxLCJjYXRlZ29yeV9pZCI6MSwiY292ZXJfcGljIjoiMTUzNjY1ODM1Mi45MzQxNTU3LndlYnAiLCJuYW1lIjoiXHU3ZWEyXHU3MGU3XHU4MDg5K1x1NzU2YVx1ODMwNFx1OWUyMVx1ODZjYiIsInByaWNlIjoyMi4wLCJzdGF0dXMiOjEsImNyZWF0ZV9hdCI6IjIwMTgtMDktMTEgMDk6MzI6MzIiLCJ1cGRhdGVfYXQiOiIyMDE4LTA5LTExIDA5OjMyOjMyIiwibnVtIjoxfX19','2018-10-10 11:01:44.243416');

/*Table structure for table `member` */

DROP TABLE IF EXISTS `member`;

CREATE TABLE `member` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '会员表id',
  `nickname` varchar(50) DEFAULT NULL COMMENT '昵称',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像',
  `mobile` varchar(50) DEFAULT NULL COMMENT '电话',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态:1正常/2禁用/9删除',
  `create_at` datetime DEFAULT NULL COMMENT '添加时间',
  `update_at` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `member` */

insert  into `member`(`id`,`nickname`,`avatar`,`mobile`,`status`,`create_at`,`update_at`) values (1,'lixiaofeng','moren.png','11234567899',1,'2018-08-20 12:34:56','2018-08-22 12:34:56'),(2,'jack','moren.png','12345678965',1,'2018-08-20 12:34:56','2018-08-22 12:34:56'),(3,'wo879','moren.png','13456789522',1,'2018-08-20 12:34:56','2018-08-21 12:34:56'),(4,'mt100','moren.png','13567895563',1,'2018-08-20 12:34:56','2018-08-20 12:34:56');

/*Table structure for table `order_detail` */

DROP TABLE IF EXISTS `order_detail`;

CREATE TABLE `order_detail` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '订单详情id',
  `order_id` int(10) unsigned DEFAULT NULL COMMENT '订单id',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT '菜品id',
  `product_name` varchar(50) DEFAULT NULL COMMENT '菜品名称',
  `price` double(6,2) unsigned DEFAULT NULL COMMENT '单价',
  `quantity` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '数量',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态:1正常/9删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='订单详情信息表';

/*Data for the table `order_detail` */

insert  into `order_detail`(`id`,`order_id`,`product_id`,`product_name`,`price`,`quantity`,`status`) values (1,4,1,'红烧肉+狮子头+饮料',25.00,1,1),(2,4,2,'红烧肉+番茄鸡蛋',22.00,1,1),(3,4,7,'肥牛饭',19.00,1,1),(4,5,1,'红烧肉+狮子头+饮料',25.00,1,1),(5,6,3,'梅菜扣肉+番茄鸡蛋',22.00,1,1),(6,6,12,'单份香辣笋干烧肉',15.00,1,1),(7,6,13,'番茄蛋花汤',4.00,1,1),(8,7,2,'红烧肉+番茄鸡蛋',22.00,1,1),(9,7,6,'木须肉饭',16.00,2,1),(10,7,14,'王老吉',6.00,1,1),(11,7,11,'菜心',6.00,1,1);

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '订单表id',
  `shop_id` int(10) unsigned DEFAULT NULL COMMENT '店铺id号',
  `member_id` int(10) unsigned DEFAULT NULL COMMENT '会员id',
  `user_id` int(10) unsigned DEFAULT NULL COMMENT '操作员id',
  `money` double(8,2) DEFAULT NULL COMMENT '金额',
  `status` tinyint(3) unsigned DEFAULT NULL COMMENT '订单状态:1过行中/2无效/3已完成',
  `payment_status` tinyint(3) unsigned DEFAULT NULL COMMENT '支付状态:1未支付/2已支付/3已退款',
  `create_at` datetime DEFAULT NULL COMMENT '添加时间',
  `update_at` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `orders` */

insert  into `orders`(`id`,`shop_id`,`member_id`,`user_id`,`money`,`status`,`payment_status`,`create_at`,`update_at`) values (4,1,0,1,66.00,1,2,'2018-10-08 10:52:31','2018-10-08 10:52:31'),(5,1,0,1,25.00,3,2,'2018-10-09 01:55:52','2018-10-09 01:55:52'),(6,1,0,3,41.00,1,2,'2018-10-09 07:50:10','2018-10-09 07:50:10'),(7,1,0,1,66.00,3,2,'2018-10-09 08:37:09','2018-10-09 08:37:09');

/*Table structure for table `payment` */

DROP TABLE IF EXISTS `payment`;

CREATE TABLE `payment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '支付表id',
  `order_id` int(10) unsigned DEFAULT NULL COMMENT '订单id',
  `member_id` int(10) unsigned DEFAULT NULL COMMENT '会员id',
  `money` double(8,2) unsigned DEFAULT NULL COMMENT '支付金额',
  `type` tinyint(3) unsigned DEFAULT NULL COMMENT '付款方式：1会员付款/2收银收款',
  `bank` tinyint(3) unsigned DEFAULT NULL COMMENT '收款银行渠道:1微信/2余额/3现金/4支付宝',
  `status` tinyint(3) unsigned DEFAULT NULL COMMENT '支付状态:1未支付/2已支付/3已退款',
  `create_at` datetime DEFAULT NULL COMMENT '添加时间',
  `update_at` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `payment` */

insert  into `payment`(`id`,`order_id`,`member_id`,`money`,`type`,`bank`,`status`,`create_at`,`update_at`) values (2,4,0,66.00,2,3,2,'2018-10-08 10:52:31','2018-10-08 10:52:31'),(3,5,0,25.00,2,3,2,'2018-10-09 01:55:52','2018-10-09 01:55:52'),(4,6,0,41.00,2,3,2,'2018-10-09 07:50:11','2018-10-09 07:50:11'),(5,7,0,66.00,2,3,2,'2018-10-09 08:37:09','2018-10-09 08:37:09');

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '菜品id',
  `shop_id` int(11) DEFAULT NULL COMMENT '店铺id',
  `category_id` int(11) DEFAULT NULL COMMENT '菜品分类id',
  `cover_pic` varchar(50) DEFAULT NULL COMMENT '菜品图片',
  `name` varchar(50) DEFAULT NULL COMMENT '菜品名称',
  `price` double(6,2) DEFAULT NULL COMMENT '单价',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态：1:正常  2:停售  9:删除',
  `create_at` datetime DEFAULT NULL COMMENT '添加时间',
  `update_at` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

/*Data for the table `product` */

insert  into `product`(`id`,`shop_id`,`category_id`,`cover_pic`,`name`,`price`,`status`,`create_at`,`update_at`) values (1,1,1,'1536657620.5485704.webp','红烧肉+狮子头+饮料',25.00,1,'2018-09-11 09:20:20','2018-09-11 09:30:25'),(2,1,1,'1536658352.9341557.webp','红烧肉+番茄鸡蛋',22.00,1,'2018-09-11 09:32:32','2018-09-11 09:32:32'),(3,1,1,'1536658415.6838002.webp','梅菜扣肉+番茄鸡蛋',22.00,1,'2018-09-11 09:33:35','2018-09-11 09:33:35'),(4,1,1,'1536658574.2847373.webp','肥牛+番茄鸡蛋',22.00,1,'2018-09-11 09:36:14','2018-09-11 09:36:14'),(5,1,2,'1536658659.0446992.webp','梅菜扣肉饭',19.00,1,'2018-09-11 09:37:39','2018-09-11 09:37:39'),(6,1,2,'1536658824.3976505.webp','木须肉饭',16.00,1,'2018-09-11 09:40:24','2018-09-11 09:40:24'),(7,1,2,'1536658863.6732855.webp','肥牛饭',19.00,1,'2018-09-11 09:41:03','2018-09-11 09:41:03'),(8,1,2,'1536658960.3954134.webp','无骨咖喱鸡饭',18.00,1,'2018-09-11 09:42:40','2018-09-11 09:42:40'),(9,1,3,'1536659065.7972636.webp','单份番茄鸡蛋',8.00,1,'2018-09-11 09:44:25','2018-09-11 09:44:25'),(10,1,3,'1536659114.0440235.webp','单份木须肉',8.00,1,'2018-09-11 09:45:14','2018-09-11 09:45:14'),(11,1,3,'1536659197.7231221.webp','菜心',6.00,1,'2018-09-11 09:46:37','2018-09-11 09:46:37'),(12,1,3,'1536659253.8842716.webp','单份香辣笋干烧肉',15.00,1,'2018-09-11 09:47:33','2018-09-11 09:47:33'),(13,1,4,'1536659311.8699493.webp','番茄蛋花汤',4.00,1,'2018-09-11 09:48:31','2018-09-11 09:48:31'),(14,1,4,'1536659364.7892513.webp','王老吉',6.00,1,'2018-09-11 09:49:24','2018-09-11 09:49:24'),(15,1,4,'1536659563.3897648.webp','果粒橙',5.00,1,'2018-09-11 09:52:43','2018-09-11 09:52:43'),(16,1,4,'1536659605.5561771.webp','矿泉水',3.00,1,'2018-09-11 09:53:25','2018-09-11 09:53:25'),(17,1,4,'1536659688.4856157.webp','乌梅汁',4.00,1,'2018-09-11 09:54:48','2018-09-11 09:54:48');

/*Table structure for table `shop` */

DROP TABLE IF EXISTS `shop`;

CREATE TABLE `shop` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '店铺id',
  `name` varchar(255) NOT NULL COMMENT '店铺名称',
  `cover_pic` varchar(255) DEFAULT NULL COMMENT '封面图片',
  `banner_pic` varchar(255) DEFAULT NULL COMMENT '图标Logo',
  `address` varchar(255) DEFAULT NULL COMMENT '店铺地址',
  `phone` varchar(255) DEFAULT NULL COMMENT '联系电话',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态：1:正常 2:暂停 9:删除',
  `create_at` datetime DEFAULT NULL COMMENT '添加时间',
  `update_at` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `shop` */

insert  into `shop`(`id`,`name`,`cover_pic`,`banner_pic`,`address`,`phone`,`status`,`create_at`,`update_at`) values (1,'田老师红烧肉-朝阳将台路店','12341234.jpg','lg.jpg','北京市朝阳区将台乡东八间房村西临8号','12345678905',1,'2018-08-20 10:12:34','2018-09-02 12:34:56'),(2,'田老师红烧肉-海淀区上地店','57892456.jpg','lg.jpg','北京市海定区上地三街嘉华大厦A座10号','13456789209',1,'2018-08-21 12:23:45','2018-09-01 20:42:16'),(3,'田老师红烧肉-西城玉渊潭店','23454567.jpg','lg.jpg','北京市宣武区玉渊潭南路东123号','12345677654',1,'2018-08-26 18:20:32','2018-09-05 09:10:40'),(4,'aaaaa','1536310109.6529722.jpg','1536310109.654972.jpg','cccccc','bbbbbb',2,'2018-09-07 08:48:29','2018-09-07 09:31:31');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '员工账号id',
  `username` varchar(50) DEFAULT NULL COMMENT '员工账号',
  `nickname` varchar(50) DEFAULT NULL COMMENT '昵称',
  `password_hash` varchar(100) DEFAULT NULL COMMENT '密码',
  `password_salt` varchar(50) DEFAULT NULL COMMENT '密码干扰值',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态:1正常/2禁用/9删除',
  `create_at` datetime DEFAULT NULL COMMENT '创建时间',
  `update_at` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id`,`username`,`nickname`,`password_hash`,`password_salt`,`status`,`create_at`,`update_at`) values (1,'zhangsan','张三','1e191d851b3b49a248f4ea62f6b06410','123456',1,'2018-08-08 18:18:18','2018-09-07 08:06:55'),(2,'lisi','李四','1e191d851b3b49a248f4ea62f6b06410','123456',1,'2018-08-18 08:08:18','2018-09-02 16:21:18'),(3,'xiaoli','小李子','c8a7ca8b274f29cf2c1147a8e0f685a4','639776',1,'2018-09-07 07:53:57','2018-09-07 09:28:01');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
