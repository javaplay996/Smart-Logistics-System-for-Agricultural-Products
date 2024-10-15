/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - nongchanpinzhihuiwuliu
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`nongchanpinzhihuiwuliu` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `nongchanpinzhihuiwuliu`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'nongchanpinweituo_types','委托类型',1,'委托类型1',NULL,NULL,'2023-03-08 16:35:37'),(2,'nongchanpinweituo_types','委托类型',2,'委托类型2',NULL,NULL,'2023-03-08 16:35:37'),(3,'nongchanpinweituo_types','委托类型',3,'委托类型3',NULL,NULL,'2023-03-08 16:35:37'),(4,'peisong_types','配送状态',1,'配送状态1',NULL,NULL,'2023-03-08 16:35:37'),(5,'peisong_types','配送状态',2,'配送状态2',NULL,NULL,'2023-03-08 16:35:37'),(6,'peisong_types','配送状态',3,'配送状态3',NULL,NULL,'2023-03-08 16:35:37'),(7,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2023-03-08 16:35:37'),(8,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2023-03-08 16:35:37'),(9,'news_types','公告类型',3,'公告类型3',NULL,NULL,'2023-03-08 16:35:37'),(10,'wuliugongsi_types','物流公司类型',1,'物流公司类型1',NULL,NULL,'2023-03-08 16:35:37'),(11,'wuliugongsi_types','物流公司类型',2,'物流公司类型2',NULL,NULL,'2023-03-08 16:35:37'),(12,'wuliugongsi_types','物流公司类型',3,'物流公司类型3',NULL,NULL,'2023-03-08 16:35:37'),(13,'gongyingshang_types','供应商类型',1,'供应商类型1',NULL,NULL,'2023-03-08 16:35:37'),(14,'gongyingshang_types','供应商类型',2,'供应商类型2',NULL,NULL,'2023-03-08 16:35:37'),(15,'gongyingshang_types','供应商类型',3,'供应商类型3',NULL,NULL,'2023-03-08 16:35:37'),(16,'sex_types','性别',1,'男',NULL,NULL,'2023-03-08 16:35:37'),(17,'sex_types','性别',2,'女',NULL,NULL,'2023-03-08 16:35:37'),(18,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2023-03-08 16:35:37'),(19,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2023-03-08 16:35:37');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `gongyingshang_id` int(11) DEFAULT NULL COMMENT '农产品供应商',
  `wuliugongsi_id` int(11) DEFAULT NULL COMMENT '农产品物流公司',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`gongyingshang_id`,`wuliugongsi_id`,`yonghu_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',NULL,NULL,3,NULL,'发布内容1',458,1,'2023-03-08 16:35:47','2023-03-08 16:35:47','2023-03-08 16:35:47'),(2,'帖子标题2',NULL,NULL,1,NULL,'发布内容2',361,1,'2023-03-08 16:35:47','2023-03-08 16:35:47','2023-03-08 16:35:47'),(3,'帖子标题3',NULL,NULL,3,NULL,'发布内容3',54,1,'2023-03-08 16:35:47','2023-03-08 16:35:47','2023-03-08 16:35:47'),(4,'帖子标题4',NULL,NULL,2,NULL,'发布内容4',316,1,'2023-03-08 16:35:47','2023-03-08 16:35:47','2023-03-08 16:35:47'),(5,'帖子标题5',NULL,NULL,2,NULL,'发布内容5',245,1,'2023-03-08 16:35:47','2023-03-08 16:35:47','2023-03-08 16:35:47'),(6,'帖子标题6',NULL,NULL,1,NULL,'发布内容6',148,1,'2023-03-08 16:35:47','2023-03-08 16:35:47','2023-03-08 16:35:47'),(7,'帖子标题7',NULL,NULL,3,NULL,'发布内容7',124,1,'2023-03-08 16:35:47','2023-03-08 16:35:47','2023-03-08 16:35:47'),(8,'帖子标题8',NULL,NULL,2,NULL,'发布内容8',425,1,'2023-03-08 16:35:47','2023-03-08 16:35:47','2023-03-08 16:35:47'),(9,'帖子标题9',NULL,NULL,2,NULL,'发布内容9',227,1,'2023-03-08 16:35:47','2023-03-08 16:35:47','2023-03-08 16:35:47'),(10,'帖子标题10',NULL,NULL,3,NULL,'发布内容10',275,1,'2023-03-08 16:35:47','2023-03-08 16:35:47','2023-03-08 16:35:47'),(11,'帖子标题11',NULL,NULL,3,NULL,'发布内容11',475,1,'2023-03-08 16:35:47','2023-03-08 16:35:47','2023-03-08 16:35:47'),(12,'帖子标题12',NULL,NULL,2,NULL,'发布内容12',166,1,'2023-03-08 16:35:47','2023-03-08 16:35:47','2023-03-08 16:35:47'),(13,'帖子标题13',NULL,NULL,2,NULL,'发布内容13',493,1,'2023-03-08 16:35:47','2023-03-08 16:35:47','2023-03-08 16:35:47'),(14,'帖子标题14',NULL,NULL,2,NULL,'发布内容14',501,1,'2023-03-08 16:35:47','2023-03-08 16:35:47','2023-03-08 16:35:47'),(15,NULL,NULL,NULL,1,NULL,'123123',14,2,'2023-03-08 16:43:18',NULL,'2023-03-08 16:43:18'),(16,NULL,NULL,1,NULL,NULL,'12312312',14,2,'2023-03-08 16:48:10',NULL,'2023-03-08 16:48:10'),(17,NULL,1,NULL,NULL,NULL,'312321321231',14,2,'2023-03-08 16:48:27',NULL,'2023-03-08 16:48:27'),(18,NULL,NULL,NULL,NULL,1,'123123',14,2,'2023-03-08 16:48:56',NULL,'2023-03-08 16:48:56');

/*Table structure for table `gongyingshang` */

DROP TABLE IF EXISTS `gongyingshang`;

CREATE TABLE `gongyingshang` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `gongyingshang_name` varchar(200) DEFAULT NULL COMMENT '供应商姓名 Search111 ',
  `gongyingshang_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `gongyingshang_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `gongyingshang_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `gongyingshang_types` int(11) DEFAULT NULL COMMENT '供应商类型 Search111 ',
  `gongyingshang_content` text COMMENT '简介',
  `gongyingshang_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='农产品供应商';

/*Data for the table `gongyingshang` */

insert  into `gongyingshang`(`id`,`username`,`password`,`gongyingshang_name`,`gongyingshang_photo`,`gongyingshang_phone`,`gongyingshang_email`,`sex_types`,`gongyingshang_types`,`gongyingshang_content`,`gongyingshang_delete`,`create_time`) values (1,'a1','123456','供应商姓名1','upload/gongyingshang1.jpg','17703786901','1@qq.com',2,3,'简介1',1,'2023-03-08 16:35:47'),(2,'a2','123456','供应商姓名2','upload/gongyingshang2.jpg','17703786902','2@qq.com',1,2,'简介2',1,'2023-03-08 16:35:47'),(3,'a3','123456','供应商姓名3','upload/gongyingshang3.jpg','17703786903','3@qq.com',2,2,'简介3',1,'2023-03-08 16:35:47');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告标题1',3,'upload/news1.jpg','2023-03-08 16:35:47','公告详情1','2023-03-08 16:35:47'),(2,'公告标题2',1,'upload/news2.jpg','2023-03-08 16:35:47','公告详情2','2023-03-08 16:35:47'),(3,'公告标题3',2,'upload/news3.jpg','2023-03-08 16:35:47','公告详情3','2023-03-08 16:35:47'),(4,'公告标题4',3,'upload/news4.jpg','2023-03-08 16:35:47','公告详情4','2023-03-08 16:35:47'),(5,'公告标题5',1,'upload/news5.jpg','2023-03-08 16:35:47','公告详情5','2023-03-08 16:35:47'),(6,'公告标题6',3,'upload/news6.jpg','2023-03-08 16:35:47','公告详情6','2023-03-08 16:35:47'),(7,'公告标题7',2,'upload/news7.jpg','2023-03-08 16:35:47','公告详情7','2023-03-08 16:35:47'),(8,'公告标题8',1,'upload/news8.jpg','2023-03-08 16:35:47','公告详情8','2023-03-08 16:35:47'),(9,'公告标题9',3,'upload/news9.jpg','2023-03-08 16:35:47','公告详情9','2023-03-08 16:35:47'),(10,'公告标题10',2,'upload/news10.jpg','2023-03-08 16:35:47','公告详情10','2023-03-08 16:35:47'),(11,'公告标题11',3,'upload/news11.jpg','2023-03-08 16:35:47','公告详情11','2023-03-08 16:35:47'),(12,'公告标题12',1,'upload/news12.jpg','2023-03-08 16:35:47','公告详情12','2023-03-08 16:35:47'),(13,'公告标题13',2,'upload/news13.jpg','2023-03-08 16:35:47','公告详情13','2023-03-08 16:35:47'),(14,'公告标题14',3,'upload/news14.jpg','2023-03-08 16:35:47','公告详情14','2023-03-08 16:35:47');

/*Table structure for table `nongchanpinweituo` */

DROP TABLE IF EXISTS `nongchanpinweituo`;

CREATE TABLE `nongchanpinweituo` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `nongchanpinweituo_name` varchar(200) DEFAULT NULL COMMENT '委托标题  Search111 ',
  `nongchanpinweituo_types` int(11) DEFAULT NULL COMMENT '委托类型 Search111',
  `nongchanpinweituo_photo` varchar(200) DEFAULT NULL COMMENT '封面',
  `nongchanpinweituo_kucun_number` int(11) DEFAULT NULL COMMENT '委托数量',
  `nongchanpinweituo_content` text COMMENT '委托详情',
  `nongchanpinweituo_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='农产品委托';

/*Data for the table `nongchanpinweituo` */

insert  into `nongchanpinweituo`(`id`,`nongchanpinweituo_name`,`nongchanpinweituo_types`,`nongchanpinweituo_photo`,`nongchanpinweituo_kucun_number`,`nongchanpinweituo_content`,`nongchanpinweituo_delete`,`insert_time`,`create_time`) values (1,'委托标题1',3,'upload/nongchanpinweituo1.jpg',101,'委托详情1',1,'2023-03-08 16:35:47','2023-03-08 16:35:47'),(2,'委托标题2',2,'upload/nongchanpinweituo2.jpg',102,'委托详情2',1,'2023-03-08 16:35:47','2023-03-08 16:35:47'),(3,'委托标题3',1,'upload/nongchanpinweituo3.jpg',103,'委托详情3',1,'2023-03-08 16:35:47','2023-03-08 16:35:47'),(4,'委托标题4',3,'upload/nongchanpinweituo4.jpg',104,'委托详情4',1,'2023-03-08 16:35:47','2023-03-08 16:35:47'),(5,'委托标题5',2,'upload/nongchanpinweituo5.jpg',105,'委托详情5',1,'2023-03-08 16:35:47','2023-03-08 16:35:47'),(6,'委托标题6',1,'upload/nongchanpinweituo6.jpg',106,'委托详情6',1,'2023-03-08 16:35:47','2023-03-08 16:35:47'),(7,'委托标题7',3,'upload/nongchanpinweituo7.jpg',107,'委托详情7',1,'2023-03-08 16:35:47','2023-03-08 16:35:47'),(8,'委托标题8',3,'upload/nongchanpinweituo8.jpg',108,'委托详情8',1,'2023-03-08 16:35:47','2023-03-08 16:35:47'),(9,'委托标题9',1,'upload/nongchanpinweituo9.jpg',109,'委托详情9',1,'2023-03-08 16:35:47','2023-03-08 16:35:47'),(10,'委托标题10',3,'upload/nongchanpinweituo10.jpg',1010,'委托详情10',1,'2023-03-08 16:35:47','2023-03-08 16:35:47'),(11,'委托标题11',1,'upload/nongchanpinweituo11.jpg',1011,'委托详情11',1,'2023-03-08 16:35:47','2023-03-08 16:35:47'),(12,'委托标题12',2,'upload/nongchanpinweituo12.jpg',1012,'委托详情12',1,'2023-03-08 16:35:47','2023-03-08 16:35:47'),(13,'委托标题13',3,'upload/nongchanpinweituo13.jpg',1013,'委托详情13',1,'2023-03-08 16:35:47','2023-03-08 16:35:47'),(14,'委托标题14',2,'upload/nongchanpinweituo14.jpg',1014,'委托详情14',1,'2023-03-08 16:35:47','2023-03-08 16:35:47');

/*Table structure for table `peisong` */

DROP TABLE IF EXISTS `peisong`;

CREATE TABLE `peisong` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `peisong_name` varchar(200) DEFAULT NULL COMMENT '配送标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `peisong_types` int(11) DEFAULT NULL COMMENT '配送状态 Search111',
  `peisong_kucun_number` int(11) DEFAULT NULL COMMENT '配送数量',
  `peisong_content` text COMMENT '配送详情',
  `peisong_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='农产品配送';

/*Data for the table `peisong` */

insert  into `peisong`(`id`,`peisong_name`,`yonghu_id`,`peisong_types`,`peisong_kucun_number`,`peisong_content`,`peisong_delete`,`insert_time`,`create_time`) values (1,'配送标题1',2,3,101,'配送详情1',1,'2023-03-08 16:35:47','2023-03-08 16:35:47'),(2,'配送标题2',3,2,102,'配送详情2',1,'2023-03-08 16:35:47','2023-03-08 16:35:47'),(3,'配送标题3',3,2,103,'配送详情3',1,'2023-03-08 16:35:47','2023-03-08 16:35:47'),(4,'配送标题4',1,2,104,'配送详情4',1,'2023-03-08 16:35:47','2023-03-08 16:35:47'),(5,'配送标题5',3,1,105,'配送详情5',1,'2023-03-08 16:35:47','2023-03-08 16:35:47'),(6,'配送标题6',1,2,106,'配送详情6',1,'2023-03-08 16:35:47','2023-03-08 16:35:47'),(7,'配送标题7',1,3,107,'配送详情7',1,'2023-03-08 16:35:47','2023-03-08 16:35:47'),(8,'配送标题8',2,2,108,'配送详情8',1,'2023-03-08 16:35:47','2023-03-08 16:35:47'),(9,'配送标题9',1,1,109,'配送详情9',1,'2023-03-08 16:35:47','2023-03-08 16:35:47'),(10,'配送标题10',3,2,1010,'配送详情10',1,'2023-03-08 16:35:47','2023-03-08 16:35:47'),(11,'配送标题11',1,2,1011,'配送详情11',1,'2023-03-08 16:35:47','2023-03-08 16:35:47'),(12,'配送标题12',1,1,1012,'配送详情12',2,'2023-03-08 16:35:47','2023-03-08 16:35:47'),(13,'配送标题13',2,2,1013,'配送详情13',1,'2023-03-08 16:35:47','2023-03-08 16:35:47'),(14,'配送标题14',1,1,1014,'配送详情14',2,'2023-03-08 16:35:47','2023-03-08 16:35:47'),(15,'123',1,NULL,123,'123',2,'2023-03-08 16:46:06','2023-03-08 16:46:06'),(16,'123',1,2,123,'123',2,'2023-03-08 16:46:16','2023-03-08 16:46:16');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yonghu','用户','4s8ua4gfw7duqk33ezcsfj9hodwihvqf','2023-03-08 16:39:36','2023-03-08 17:39:36'),(2,1,'a1','wuliugongsi','农产品物流公司','jx6xtc0ff1u17ittm0nk53ugfrf197ik','2023-03-08 16:47:58','2023-03-08 17:47:58'),(3,1,'a1','gongyingshang','农产品供应商','bs1q9i6urm3g3opp4fb7way73coqo9cw','2023-03-08 16:48:17','2023-03-08 17:48:18'),(4,1,'admin','users','管理员','glxbnu0sqty3gyn133sp3awyagswum32','2023-03-08 16:48:35','2023-03-08 17:50:20');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-03-08 16:35:37');

/*Table structure for table `wuliugongsi` */

DROP TABLE IF EXISTS `wuliugongsi`;

CREATE TABLE `wuliugongsi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `wuliugongsi_name` varchar(200) DEFAULT NULL COMMENT '物流公司姓名 Search111 ',
  `wuliugongsi_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `wuliugongsi_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `wuliugongsi_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `wuliugongsi_types` int(11) DEFAULT NULL COMMENT '物流公司类型 Search111 ',
  `wuliugongsi_content` text COMMENT '仓库信息简介',
  `wuliugongsi_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='农产品物流公司';

/*Data for the table `wuliugongsi` */

insert  into `wuliugongsi`(`id`,`username`,`password`,`wuliugongsi_name`,`wuliugongsi_photo`,`wuliugongsi_phone`,`wuliugongsi_email`,`sex_types`,`wuliugongsi_types`,`wuliugongsi_content`,`wuliugongsi_delete`,`create_time`) values (1,'a1','123456','物流公司姓名1','upload/wuliugongsi1.jpg','17703786901','1@qq.com',2,3,'仓库信息简介1',1,'2023-03-08 16:35:47'),(2,'a2','123456','物流公司姓名2','upload/wuliugongsi2.jpg','17703786902','2@qq.com',2,1,'仓库信息简介2',1,'2023-03-08 16:35:47'),(3,'a3','123456','物流公司姓名3','upload/wuliugongsi3.jpg','17703786903','3@qq.com',2,2,'仓库信息简介3',1,'2023-03-08 16:35:47');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号 ',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `yonghu_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_photo`,`yonghu_phone`,`yonghu_id_number`,`yonghu_email`,`sex_types`,`yonghu_delete`,`create_time`) values (1,'a1','123456','用户姓名1','upload/yonghu1.jpg','17703786901','410224199010102001','1@qq.com',1,1,'2023-03-08 16:35:47'),(2,'a2','123456','用户姓名2','upload/yonghu2.jpg','17703786902','410224199010102002','2@qq.com',1,1,'2023-03-08 16:35:47'),(3,'a3','123456','用户姓名3','upload/yonghu3.jpg','17703786903','410224199010102003','3@qq.com',1,1,'2023-03-08 16:35:47');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
