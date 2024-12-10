/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.26 : Database - gaoxiaojiaoshichengguo
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`gaoxiaojiaoshichengguo` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `gaoxiaojiaoshichengguo`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/gaoxiaojiaoshichengguo/upload/config1.jpg'),(2,'轮播图2','http://localhost:8080/gaoxiaojiaoshichengguo/upload/config2.jpg'),(3,'轮播图3','http://localhost:8080/gaoxiaojiaoshichengguo/upload/1644824909635.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (65,'sex_types','性别类型',1,'男',NULL,NULL,'2022-02-14 15:22:05'),(66,'sex_types','性别类型',2,'女',NULL,NULL,'2022-02-14 15:22:05'),(67,'jiaoshi_types','优秀教师',1,'是',NULL,NULL,'2022-02-14 15:22:05'),(68,'jiaoshi_types','优秀教师',2,'否',NULL,NULL,'2022-02-14 15:22:05'),(69,'banji_types','班级',1,'班级1',NULL,NULL,'2022-02-14 15:22:06'),(70,'banji_types','班级',2,'班级2',NULL,NULL,'2022-02-14 15:22:06'),(71,'rongyu_types','荣誉类型',1,'荣誉类型1',NULL,NULL,'2022-02-14 15:22:06'),(72,'rongyu_types','荣誉类型',2,'荣誉类型2',NULL,NULL,'2022-02-14 15:22:06'),(73,'rongyu_types','荣誉类型',3,'荣誉类型3',NULL,NULL,'2022-02-14 15:22:06'),(74,'rongyu_yesno_types','审核结果',1,'未审核',NULL,NULL,'2022-02-14 15:22:06'),(75,'rongyu_yesno_types','审核结果',2,'通过',NULL,NULL,'2022-02-14 15:22:06'),(76,'rongyu_yesno_types','审核结果',3,'拒绝',NULL,NULL,'2022-02-14 15:22:06'),(77,'yonghu_yesno_types','审核结果',1,'未审核',NULL,NULL,'2022-02-14 15:22:06'),(78,'yonghu_yesno_types','审核结果',2,'通过',NULL,NULL,'2022-02-14 15:22:06'),(79,'yonghu_yesno_types','审核结果',3,'拒绝',NULL,NULL,'2022-02-14 15:22:06'),(80,'news_types','公告类型名称',1,'公告类型1',NULL,NULL,'2022-02-14 15:22:06'),(81,'news_types','公告类型名称',2,'公告类型2',NULL,NULL,'2022-02-14 15:22:06');

/*Table structure for table `jiaoshi` */

DROP TABLE IF EXISTS `jiaoshi`;

CREATE TABLE `jiaoshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账号',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `jiaoshi_name` varchar(200) DEFAULT NULL COMMENT '教师姓名  Search111',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111',
  `jiaoshi_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `jiaoshi_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `jiaoshi_photo` varchar(200) DEFAULT '' COMMENT '照片',
  `jiaoshi_types` int(11) DEFAULT NULL COMMENT '优秀教师 Search111',
  `banji_types` int(11) DEFAULT NULL COMMENT '班级 Search111',
  `jiaoshi_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='教师';

/*Data for the table `jiaoshi` */

insert  into `jiaoshi`(`id`,`username`,`password`,`jiaoshi_name`,`sex_types`,`jiaoshi_id_number`,`jiaoshi_phone`,`jiaoshi_photo`,`jiaoshi_types`,`banji_types`,`jiaoshi_delete`,`create_time`) values (1,'a1','123456','教师姓名1',2,'410224199610232001','17703786901','http://localhost:8080/gaoxiaojiaoshichengguo/upload/1644823888554.jpg',1,1,1,'2022-02-14 15:22:50'),(2,'a2','123456','教师姓名2',2,'410224199610232002','17703786902','http://localhost:8080/gaoxiaojiaoshichengguo/upload/1644823880445.jpg',2,2,1,'2022-02-14 15:22:50');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告时间',
  `news_content` text COMMENT '公告详情',
  `news_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`news_delete`,`create_time`) values (1,'公告标题1',2,'http://localhost:8080/gaoxiaojiaoshichengguo/upload/1644824893326.webp','2022-02-14 15:22:50','<p>公告详情1</p>',1,'2022-02-14 15:22:50'),(2,'公告标题2',1,'http://localhost:8080/gaoxiaojiaoshichengguo/upload/1644824886298.jpg','2022-02-14 15:22:50','<p>公告详情2</p>',1,'2022-02-14 15:22:50'),(3,'公告标题3',2,'http://localhost:8080/gaoxiaojiaoshichengguo/upload/1644824879481.jpg','2022-02-14 15:22:50','<p>公告详情3</p>',1,'2022-02-14 15:22:50'),(4,'公告标题4',2,'http://localhost:8080/gaoxiaojiaoshichengguo/upload/1644824871324.jpg','2022-02-14 15:22:50','<p>公告详情4</p>',1,'2022-02-14 15:22:50'),(5,'公告标题5',2,'http://localhost:8080/gaoxiaojiaoshichengguo/upload/1644824863470.webp','2022-02-14 15:22:50','<p>公告详情5</p>',1,'2022-02-14 15:22:50'),(6,'公告标题6',2,'http://localhost:8080/gaoxiaojiaoshichengguo/upload/1644824856814.jpg','2022-02-14 15:22:50','<p>公告详情6</p>',1,'2022-02-14 15:22:50');

/*Table structure for table `rongyu` */

DROP TABLE IF EXISTS `rongyu`;

CREATE TABLE `rongyu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `rongyu_name` varchar(200) DEFAULT NULL COMMENT '标题 Search111 ',
  `rongyu_types` int(11) DEFAULT NULL COMMENT '类型 Search111',
  `rongyu_photo` varchar(200) DEFAULT NULL COMMENT '封面',
  `jiaoshi_id` int(11) DEFAULT NULL COMMENT '发布教师',
  `rongyu_yesno_types` int(11) DEFAULT NULL COMMENT '审核结果 Search111',
  `rongyu_content` text COMMENT '详情',
  `rongyu_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='荣誉信息';

/*Data for the table `rongyu` */

insert  into `rongyu`(`id`,`rongyu_name`,`rongyu_types`,`rongyu_photo`,`jiaoshi_id`,`rongyu_yesno_types`,`rongyu_content`,`rongyu_delete`,`create_time`) values (1,'标题1',1,'http://localhost:8080/gaoxiaojiaoshichengguo/upload/1644824561676.webp',1,1,'<p>详情1</p>',2,'2022-02-14 15:22:50'),(2,'标题2',2,'http://localhost:8080/gaoxiaojiaoshichengguo/upload/1644824553948.webp',2,1,'<p>详情2</p>',1,'2022-02-14 15:22:50'),(3,'标题3',3,'http://localhost:8080/gaoxiaojiaoshichengguo/upload/1644824546719.webp',1,2,'<p>详情3</p>',1,'2022-02-14 15:22:50'),(4,'标题4',1,'http://localhost:8080/gaoxiaojiaoshichengguo/upload/1644824535058.webp',2,2,'<p>详情4</p>',1,'2022-02-14 15:22:50'),(5,'标题5',1,'http://localhost:8080/gaoxiaojiaoshichengguo/upload/1644824527930.webp',1,3,'<p>详情5</p>',1,'2022-02-14 15:22:50'),(6,'标题6',3,'http://localhost:8080/gaoxiaojiaoshichengguo/upload/1644824519538.webp',2,2,'<p>详情6</p>',1,'2022-02-14 15:22:50'),(13,'测试信息',3,'http://localhost:8080/gaoxiaojiaoshichengguo/upload/1644827754534.jpg',1,1,'嘻嘻嘻嘻嘻嘻嘻',2,'2022-02-14 16:35:55');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','sfqvbice30h5nvxgmupyrft822n24uuz','2022-02-14 15:30:19','2022-02-14 18:27:54'),(2,1,'a1','jiaoshi','教师','gehlofx3bgzkladjz4hb268k2tq3v6zb','2022-02-14 15:54:24','2022-02-14 18:30:51');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-02-25 15:59:12');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chengguo_name` varchar(200) DEFAULT NULL COMMENT '标题 Search111 ',
  `rongyu_types` varchar(200) DEFAULT NULL COMMENT '类型 Search111',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `yonghu_photo` varchar(255) DEFAULT NULL COMMENT '成果图片',
  `yonghu_yesno_types` int(11) DEFAULT NULL COMMENT '审核结果 Search111',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `jiaoshi_id` int(11) DEFAULT NULL COMMENT '发布教师',
  `yonghu_content` text COMMENT '详情',
  `yonghu_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='学生成果';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`chengguo_name`,`rongyu_types`,`yonghu_name`,`yonghu_photo`,`yonghu_yesno_types`,`yonghu_phone`,`jiaoshi_id`,`yonghu_content`,`yonghu_delete`,`create_time`) values (1,'标题1','类型1','学生姓名1','http://localhost:8080/gaoxiaojiaoshichengguo/upload/1644824815819.webp',1,'17703786901',1,'<p>详情1</p>',1,'2022-02-14 15:22:50'),(2,'标题2','类型2','学生姓名2','http://localhost:8080/gaoxiaojiaoshichengguo/upload/1644824809351.webp',2,'17703786902',2,'<p>详情2</p>',1,'2022-02-14 15:22:50'),(3,'标题3','类型3','学生姓名3','http://localhost:8080/gaoxiaojiaoshichengguo/upload/1644824803315.webp',1,'17703786903',1,'<p>详情3</p>',1,'2022-02-14 15:22:50'),(4,'标题4','类型4','学生姓名4','http://localhost:8080/gaoxiaojiaoshichengguo/upload/1644824797191.webp',1,'17703786904',2,'<p>详情4</p>',1,'2022-02-14 15:22:50'),(5,'标题5','类型5','学生姓名5','http://localhost:8080/gaoxiaojiaoshichengguo/upload/1644824791072.webp',1,'17703786905',1,'<p>详情5</p>',1,'2022-02-14 15:22:50'),(6,'标题6','类型6','学生姓名6','http://localhost:8080/gaoxiaojiaoshichengguo/upload/1644824783184.webp',1,'17703786906',2,'<p>详情6</p>',1,'2022-02-14 15:22:50'),(12,'标题11111','','学生11111','http://localhost:8080/gaoxiaojiaoshichengguo/upload/1644829868948.webp',1,'1331144121',1,'详情111111',2,'2022-02-14 15:22:50'),(13,'标题11111','','学生11111','http://localhost:8080/gaoxiaojiaoshichengguo/upload/1644829997464.webp',1,'1331144121',1,'详情111111',2,'2022-02-14 17:13:27');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
