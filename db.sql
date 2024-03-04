/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - jianshendaren
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`jianshendaren` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `jianshendaren`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(20) NOT NULL COMMENT '创建用户',
  `address_name` varchar(200) NOT NULL COMMENT '收货人 ',
  `address_phone` varchar(200) NOT NULL COMMENT '电话 ',
  `address_dizhi` varchar(200) NOT NULL COMMENT '地址 ',
  `isdefault_types` int(11) NOT NULL COMMENT '是否默认地址 ',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='收货地址';

/*Data for the table `address` */

insert  into `address`(`id`,`yonghu_id`,`address_name`,`address_phone`,`address_dizhi`,`isdefault_types`,`insert_time`,`update_time`,`create_time`) values (1,3,'收货人1','17703786901','地址1',1,'2022-02-07 10:09:09','2022-02-07 10:09:09','2022-02-07 10:09:09'),(2,1,'收货人2','17703786902','地址2',1,'2022-02-07 10:09:09','2022-02-07 10:09:09','2022-02-07 10:09:09'),(3,2,'收货人3','17703786903','地址3',1,'2022-02-07 10:09:09','2022-02-07 10:09:09','2022-02-07 10:09:09'),(4,2,'收货人4','17703786904','地址4',1,'2022-02-07 10:09:09','2022-02-07 10:09:09','2022-02-07 10:09:09'),(5,2,'收货人5','17703786905','地址5',1,'2022-02-07 10:09:09','2022-02-07 10:09:09','2022-02-07 10:09:09'),(6,1,'收货人6','17703786906','地址6',1,'2022-02-07 10:09:09','2022-02-07 10:09:09','2022-02-07 10:09:09'),(7,2,'收货人7','17703786907','地址7',1,'2022-02-07 10:09:09','2022-02-07 10:09:09','2022-02-07 10:09:09'),(8,3,'收货人8','17703786908','地址8',1,'2022-02-07 10:09:09','2022-02-07 10:09:09','2022-02-07 10:09:09'),(9,2,'收货人9','17703786909','地址9',1,'2022-02-07 10:09:09','2022-02-07 10:09:09','2022-02-07 10:09:09'),(10,2,'收货人10','17703786910','地址10',1,'2022-02-07 10:09:09','2022-02-07 10:09:09','2022-02-07 10:09:09'),(11,2,'收货人11','17703786911','地址11',1,'2022-02-07 10:09:09','2022-02-07 10:09:09','2022-02-07 10:09:09');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '所属用户',
  `goods_id` int(11) DEFAULT NULL COMMENT '商品',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COMMENT='购物车';

/*Data for the table `cart` */

insert  into `cart`(`id`,`yonghu_id`,`goods_id`,`buy_number`,`create_time`,`update_time`,`insert_time`) values (29,1,2,1,'2022-02-07 10:15:24',NULL,'2022-02-07 10:15:24'),(30,1,9,1,'2022-02-07 15:27:42',NULL,'2022-02-07 15:27:42'),(31,1,10,1,'2022-02-07 16:02:24',NULL,'2022-02-07 16:02:24');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/jianshendaren/file/download?fileName=config1.jpg'),(2,'轮播图1','http://localhost:8080/jianshendaren/file/download?fileName=config2.jpg'),(3,'轮播图3','http://localhost:8080/jianshendaren/file/download?fileName=config3.jpg');

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
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (65,'sex_types','性别类型',1,'男',NULL,NULL,'2022-02-07 10:08:50'),(66,'sex_types','性别类型',2,'女',NULL,NULL,'2022-02-07 10:08:50'),(67,'jianshenkecheng_types','类型名称',1,'游泳',NULL,NULL,'2022-02-07 10:08:50'),(68,'jianshenkecheng_types','类型名称',2,'跑步',NULL,NULL,'2022-02-07 10:08:50'),(69,'jianshenkecheng_types','类型名称',3,'骑行',NULL,NULL,'2022-02-07 10:08:50'),(70,'jianshenkecheng_types','类型名称',4,'自由健身',NULL,NULL,'2022-02-07 10:08:50'),(71,'shangxia_types','上下架',1,'上架',NULL,NULL,'2022-02-07 10:08:50'),(72,'shangxia_types','上下架',2,'下架',NULL,NULL,'2022-02-07 10:08:50'),(73,'goods_types','商品名称',1,'健身器材',NULL,NULL,'2022-02-07 10:08:50'),(74,'goods_types','商品名称',2,'运动装备',NULL,NULL,'2022-02-07 10:08:50'),(75,'goods_types','商品名称',3,'健康食品',NULL,NULL,'2022-02-07 10:08:50'),(76,'goods_order_payment_types','支付方式',1,'余额支付',NULL,NULL,'2022-02-07 10:08:51'),(77,'isdefault_types','是否默认地址',1,'否',NULL,NULL,'2022-02-07 10:08:51'),(78,'isdefault_types','是否默认地址',2,'是',NULL,NULL,'2022-02-07 10:08:51'),(81,'goods_order_types','订单类型名称',1,'退款',NULL,NULL,'2022-02-07 10:08:51'),(82,'goods_order_types','订单类型名称',2,'已支付',NULL,NULL,'2022-02-07 10:08:51'),(83,'goods_order_types','订单类型名称',3,'已发货',NULL,NULL,'2022-02-07 10:08:51'),(84,'goods_order_types','订单类型名称',4,'已收货',NULL,NULL,'2022-02-07 10:08:51'),(85,'goods_order_types','订单类型名称',5,'已评价',NULL,NULL,'2022-02-07 10:08:51'),(86,'jianshenkecheng_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2022-02-07 10:08:51'),(87,'jianshenkecheng_collection_types','收藏表类型',2,'赞',NULL,NULL,'2022-02-07 10:08:51'),(88,'jianshenkecheng_collection_types','收藏表类型',3,'踩',NULL,NULL,'2022-02-07 10:08:51'),(89,'news_types','公告类型名称',1,'公告类型1',NULL,NULL,'2022-02-07 10:08:51'),(90,'news_types','公告类型名称',2,'公告类型2',NULL,NULL,'2022-02-07 10:08:51'),(91,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2022-02-07 10:08:51'),(92,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2022-02-07 10:08:51');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (2,'帖子标题2',2,NULL,'发布内容2',NULL,1,'2022-02-07 10:09:09','2022-02-07 10:09:09','2022-02-07 10:09:09'),(3,'帖子标题3',2,NULL,'发布内容3',NULL,1,'2022-02-07 10:09:09','2022-02-07 10:09:09','2022-02-07 10:09:09'),(4,'帖子标题4',2,NULL,'发布内容4',NULL,1,'2022-02-07 10:09:09','2022-02-07 10:09:09','2022-02-07 10:09:09'),(5,'帖子标题5',1,NULL,'发布内容5',NULL,1,'2022-02-07 10:09:09','2022-02-07 10:09:09','2022-02-07 10:09:09'),(6,'帖子标题6',2,NULL,'发布内容6',NULL,1,'2022-02-07 10:09:09','2022-02-07 10:09:09','2022-02-07 10:09:09'),(7,'帖子标题7',3,NULL,'发布内容7',NULL,1,'2022-02-07 10:09:09','2022-02-07 10:09:09','2022-02-07 10:09:09'),(8,'帖子标题8',1,NULL,'发布内容8',NULL,1,'2022-02-07 10:09:09','2022-02-07 10:09:09','2022-02-07 10:09:09'),(9,'帖子标题9',2,NULL,'发布内容9',NULL,1,'2022-02-07 10:09:09','2022-02-07 10:09:09','2022-02-07 10:09:09'),(10,'帖子标题10',3,NULL,'发布内容10',NULL,1,'2022-02-07 10:09:09','2022-02-07 10:09:09','2022-02-07 10:09:09'),(12,NULL,NULL,1,'我是管理的回复',1,2,'2022-02-07 15:59:22',NULL,'2022-02-07 15:59:22'),(13,NULL,1,NULL,'234324342',11,2,'2022-02-07 16:25:56',NULL,'2022-02-07 16:25:56');

/*Table structure for table `goods` */

DROP TABLE IF EXISTS `goods`;

CREATE TABLE `goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `goods_name` varchar(200) DEFAULT NULL COMMENT '商品名称  Search111 ',
  `goods_types` int(11) DEFAULT NULL COMMENT '商品类型  Search111 ',
  `goods_photo` varchar(200) DEFAULT NULL COMMENT '商品照片',
  `goods_kucun_number` int(11) DEFAULT '0' COMMENT '商品库存',
  `goods_old_money` decimal(10,2) DEFAULT NULL COMMENT '商品原价 ',
  `goods_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价 ',
  `goods_clicknum` int(11) DEFAULT NULL COMMENT '点击次数 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `goods_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `goods_content` text COMMENT '商品简介 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='商品信息';

/*Data for the table `goods` */

insert  into `goods`(`id`,`goods_name`,`goods_types`,`goods_photo`,`goods_kucun_number`,`goods_old_money`,`goods_new_money`,`goods_clicknum`,`shangxia_types`,`goods_delete`,`goods_content`,`create_time`) values (1,'商品名称1',2,'http://localhost:8080/jianshendaren/file/download?fileName=goodsPhoto.jpg',10001,'574.65','238.60',323,1,1,'商品简介1','2022-02-07 10:09:09'),(2,'商品名称2',1,'http://localhost:8080/jianshendaren/file/download?fileName=goodsPhoto.jpg',10001,'583.13','244.70',364,1,2,'商品简介2','2022-02-07 10:09:09'),(3,'商品名称3',1,'http://localhost:8080/jianshendaren/file/download?fileName=goodsPhoto.jpg',10003,'572.84','226.90',127,1,1,'商品简介3','2022-02-07 10:09:09'),(4,'商品名称4',1,'http://localhost:8080/jianshendaren/file/download?fileName=goodsPhoto.jpg',10004,'886.36','299.15',456,1,1,'商品简介4','2022-02-07 10:09:09'),(5,'商品名称5',1,'http://localhost:8080/jianshendaren/file/download?fileName=goodsPhoto.jpg',10005,'715.39','74.04',124,1,1,'商品简介5','2022-02-07 10:09:09'),(6,'商品名称6',2,'http://localhost:8080/jianshendaren/file/download?fileName=goodsPhoto.jpg',10006,'828.85','294.27',487,1,1,'商品简介6','2022-02-07 10:09:09'),(7,'商品名称7',2,'http://localhost:8080/jianshendaren/file/download?fileName=goodsPhoto.jpg',10007,'896.42','47.62',474,1,1,'商品简介7','2022-02-07 10:09:09'),(8,'商品名称8',3,'http://localhost:8080/jianshendaren/upload/1644200902304.webp',10008,'540.55','273.50',425,1,1,'<p>商品简介8</p>','2022-02-07 10:09:09'),(9,'商品名称9',2,'http://localhost:8080/jianshendaren/upload/1644200890785.webp',10008,'908.36','342.44',374,1,1,'<p>商品简介9</p>','2022-02-07 10:09:09'),(10,'商品名称10',1,'http://localhost:8080/jianshendaren/upload/1644200881176.jpg',100008,'930.31','298.99',49,1,1,'<p>商品简介10</p>','2022-02-07 10:09:09'),(11,'商品名称11',1,'http://localhost:8080/jianshendaren/upload/1644200873207.jpg',100011,'730.24','94.87',249,2,1,'<p>商品简介11</p>','2022-02-07 10:09:09');

/*Table structure for table `goods_commentback` */

DROP TABLE IF EXISTS `goods_commentback`;

CREATE TABLE `goods_commentback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `goods_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `goods_commentback_text` text COMMENT '评价内容',
  `reply_text` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='商品评价';

/*Data for the table `goods_commentback` */

insert  into `goods_commentback`(`id`,`goods_id`,`yonghu_id`,`goods_commentback_text`,`reply_text`,`insert_time`,`update_time`,`create_time`) values (1,1,2,'评价内容1','回复信息1','2022-02-07 10:09:09','2022-02-07 10:09:09','2022-02-07 10:09:09'),(2,2,2,'评价内容2','回复信息2','2022-02-07 10:09:09','2022-02-07 10:09:09','2022-02-07 10:09:09'),(3,3,3,'评价内容3','回复信息3','2022-02-07 10:09:09','2022-02-07 10:09:09','2022-02-07 10:09:09'),(4,4,2,'评价内容4','回复信息4','2022-02-07 10:09:09','2022-02-07 10:09:09','2022-02-07 10:09:09'),(5,5,3,'评价内容5','回复信息5','2022-02-07 10:09:09','2022-02-07 10:09:09','2022-02-07 10:09:09'),(6,6,2,'评价内容6','回复信息6','2022-02-07 10:09:09','2022-02-07 10:09:09','2022-02-07 10:09:09'),(7,7,3,'评价内容7','回复信息7','2022-02-07 10:09:09','2022-02-07 10:09:09','2022-02-07 10:09:09'),(8,8,1,'评价内容8','回复信息8','2022-02-07 10:09:09','2022-02-07 10:09:09','2022-02-07 10:09:09'),(9,9,1,'评价内容9','回复信息9','2022-02-07 10:09:09','2022-02-07 10:09:09','2022-02-07 10:09:09'),(10,10,2,'评价内容10','回复信息10','2022-02-07 10:09:09','2022-02-07 10:09:09','2022-02-07 10:09:09'),(11,11,1,'评价内容11','用户购买后才能评论 评论的信息管理能看到并回复','2022-02-07 10:09:09','2022-02-07 15:57:50','2022-02-07 10:09:09'),(15,10,1,'购买完成后才能评论',NULL,'2022-02-07 16:28:18',NULL,'2022-02-07 16:28:18');

/*Table structure for table `goods_order` */

DROP TABLE IF EXISTS `goods_order`;

CREATE TABLE `goods_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `goods_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单号',
  `address_id` int(11) DEFAULT NULL COMMENT '收获地址 ',
  `goods_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `buy_number` int(200) DEFAULT NULL COMMENT '购买的数量',
  `goods_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格 ',
  `goods_order_types` int(11) DEFAULT NULL COMMENT '订单类型',
  `goods_order_payment_types` int(11) DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='商品订单';

/*Data for the table `goods_order` */

insert  into `goods_order`(`id`,`goods_order_uuid_number`,`address_id`,`goods_id`,`yonghu_id`,`buy_number`,`goods_order_true_price`,`goods_order_types`,`goods_order_payment_types`,`insert_time`,`create_time`) values (4,'1644200133545',6,2,1,1,'244.70',5,1,'2022-02-07 10:15:34','2022-02-07 10:15:34'),(5,'1644220935143',6,10,1,1,'298.99',2,1,'2022-02-07 16:02:15','2022-02-07 16:02:15'),(6,'1644222440820',6,10,1,1,'298.99',5,1,'2022-02-07 16:27:21','2022-02-07 16:27:21'),(7,'1644222440820',6,9,1,1,'342.44',2,1,'2022-02-07 16:27:21','2022-02-07 16:27:21'),(8,'1644222440820',6,2,1,1,'244.70',1,1,'2022-02-07 16:27:21','2022-02-07 16:27:21');

/*Table structure for table `jianshenjihua` */

DROP TABLE IF EXISTS `jianshenjihua`;

CREATE TABLE `jianshenjihua` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jianshenjihua_name` varchar(200) DEFAULT NULL COMMENT '标题',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `jianshenkecheng_id` int(11) DEFAULT NULL COMMENT '健身课程',
  `jianshenjihua_shijian` varchar(200) DEFAULT NULL COMMENT '计划时间',
  `jianshenjihua_content` text COMMENT '计划内容',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='个人健身计划';

/*Data for the table `jianshenjihua` */

insert  into `jianshenjihua`(`id`,`jianshenjihua_name`,`yonghu_id`,`jianshenkecheng_id`,`jianshenjihua_shijian`,`jianshenjihua_content`,`create_time`) values (1,'标题1',2,1,'计划时间1','计划内容1','2022-02-07 10:09:09'),(2,'标题2',3,2,'计划时间2','计划内容2','2022-02-07 10:09:09'),(3,'标题3',2,3,'计划时间3','计划内容3','2022-02-07 10:09:09'),(4,'标题4',1,4,'计划时间4','计划内容4','2022-02-07 10:09:09'),(6,'标题6',2,6,'计划时间6','计划内容6','2022-02-07 10:09:09'),(7,'标题7',2,7,'计划时间7','计划内容7','2022-02-07 10:09:09'),(9,'标题9',3,9,'计划时间9','计划内容9','2022-02-07 10:09:09'),(10,'标题10',2,10,'计划时间10','计划内容10','2022-02-07 10:09:09');

/*Table structure for table `jianshenjilu` */

DROP TABLE IF EXISTS `jianshenjilu`;

CREATE TABLE `jianshenjilu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jianshenjilu_name` varchar(200) DEFAULT NULL COMMENT '标题',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `jianshenkecheng_types` int(11) DEFAULT NULL COMMENT '运动类型',
  `jianshenjiluk_time` timestamp NULL DEFAULT NULL COMMENT '开始时间',
  `jianshenjiluj_time` timestamp NULL DEFAULT NULL COMMENT '结束时间',
  `jianshenjilu_content` text COMMENT '运动内容',
  `jianshenjilu_xiaoguo_content` text COMMENT '健身效果',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='健身记录';

/*Data for the table `jianshenjilu` */

insert  into `jianshenjilu`(`id`,`jianshenjilu_name`,`yonghu_id`,`jianshenkecheng_types`,`jianshenjiluk_time`,`jianshenjiluj_time`,`jianshenjilu_content`,`jianshenjilu_xiaoguo_content`,`create_time`) values (1,'标题1',3,4,'2022-02-07 10:09:09','2022-02-07 10:09:09','运动内容1','健身效果1','2022-02-07 10:09:09'),(2,'标题2',1,3,'2022-02-07 10:09:09','2022-02-07 10:09:09','运动内容2','健身效果2','2022-02-07 10:09:09'),(3,'标题3',3,3,'2022-02-07 10:09:09','2022-02-07 10:09:09','运动内容3','健身效果3','2022-02-07 10:09:09'),(4,'标题4',2,2,'2022-02-07 10:09:09','2022-02-07 10:09:09','运动内容4','健身效果4','2022-02-07 10:09:09'),(5,'标题5',1,1,'2022-02-07 10:09:09','2022-02-07 10:09:09','运动内容5','健身效果5','2022-02-07 10:09:09'),(6,'标题6',3,3,'2022-02-07 10:09:09','2022-02-07 10:09:09','运动内容6','健身效果6','2022-02-07 10:09:09'),(7,'标题7',3,4,'2022-02-07 10:09:09','2022-02-07 10:09:09','运动内容7','健身效果7','2022-02-07 10:09:09'),(10,'标题10',2,1,'2022-02-07 10:09:09','2022-02-07 10:09:09','运动内容10','健身效果10','2022-02-07 10:09:09'),(11,'标题11',3,3,'2022-02-07 10:09:09','2022-02-07 10:09:09','运动内容11','健身效果11','2022-02-07 10:09:09');

/*Table structure for table `jianshenkecheng` */

DROP TABLE IF EXISTS `jianshenkecheng`;

CREATE TABLE `jianshenkecheng` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jianshenkecheng_name` varchar(200) DEFAULT NULL COMMENT '健身课程标题  Search111',
  `jianshenkecheng_types` int(11) DEFAULT NULL COMMENT '课程类型 Search111',
  `jianshenkecheng_photo` varchar(200) DEFAULT NULL COMMENT '课程封面',
  `jianshenkecheng_video` varchar(200) DEFAULT NULL COMMENT '视频',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '发布用户',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `jianshenkecheng_click_number` int(11) DEFAULT '0' COMMENT '播放量',
  `zan_number` int(11) DEFAULT '0' COMMENT '赞',
  `cai_number` int(11) DEFAULT '0' COMMENT '踩',
  `jianshenkecheng_content` text COMMENT '课程详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='健身课程';

/*Data for the table `jianshenkecheng` */

insert  into `jianshenkecheng`(`id`,`jianshenkecheng_name`,`jianshenkecheng_types`,`jianshenkecheng_photo`,`jianshenkecheng_video`,`yonghu_id`,`users_id`,`jianshenkecheng_click_number`,`zan_number`,`cai_number`,`jianshenkecheng_content`,`create_time`) values (1,'健身课程标题1',3,'jianshenkechengPhoto.jpg','http://localhost:8080/jianshendaren/file/download?fileName=video.mp4',3,NULL,143,405,43,'课程详情1','2022-02-07 10:09:09'),(3,'健身课程标题3',4,'jianshenkechengPhoto.jpg','http://localhost:8080/jianshendaren/file/download?fileName=video.mp4',2,NULL,263,232,217,'课程详情3','2022-02-07 10:09:09'),(4,'健身课程标题4',3,'jianshenkechengPhoto.jpg','http://localhost:8080/jianshendaren/file/download?fileName=video.mp4',3,NULL,310,84,226,'课程详情4','2022-02-07 10:09:09'),(5,'健身课程标题5',2,'jianshenkechengPhoto.jpg','http://localhost:8080/jianshendaren/file/download?fileName=video.mp4',3,NULL,416,151,489,'课程详情5','2022-02-07 10:09:09'),(6,'健身课程标题6',3,'jianshenkechengPhoto.jpg','http://localhost:8080/jianshendaren/file/download?fileName=video.mp4',2,NULL,357,384,266,'课程详情6','2022-02-07 10:09:09'),(8,'健身课程标题8',2,'http://localhost:8080/jianshendaren/upload/1644203542246.webp','http://localhost:8080/jianshendaren/upload/1644203523454.mp4',3,NULL,162,181,156,'<p>课程详情8</p>','2022-02-07 10:09:09'),(9,'健身课程标题9',1,'http://localhost:8080/jianshendaren/upload/1644203507272.webp','http://localhost:8080/jianshendaren/upload/1644203514242.mp4',1,NULL,83,102,396,'<p>课程详情9</p>','2022-02-07 10:09:09'),(10,'健身课程标题10',3,'http://localhost:8080/jianshendaren/upload/1644203498208.jpg','http://localhost:8080/jianshendaren/upload/1644203489640.mp4',2,NULL,7,160,250,'<p>课程详情10</p>','2022-02-07 10:09:09'),(11,'健身课程标题11',4,'http://localhost:8080/jianshendaren/upload/1644203469711.jpg','http://localhost:8080/jianshendaren/upload/1644203477464.mp4',3,NULL,119,334,472,'<p>课程详情11</p>','2022-02-07 10:09:09');

/*Table structure for table `jianshenkecheng_collection` */

DROP TABLE IF EXISTS `jianshenkecheng_collection`;

CREATE TABLE `jianshenkecheng_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jianshenkecheng_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `jianshenkecheng_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='商品收藏';

/*Data for the table `jianshenkecheng_collection` */

insert  into `jianshenkecheng_collection`(`id`,`jianshenkecheng_id`,`yonghu_id`,`jianshenkecheng_collection_types`,`insert_time`,`create_time`) values (1,1,3,2,'2022-02-07 10:09:09','2022-02-07 10:09:09'),(2,2,3,3,'2022-02-07 10:09:09','2022-02-07 10:09:09'),(3,3,3,2,'2022-02-07 10:09:09','2022-02-07 10:09:09'),(4,4,1,3,'2022-02-07 10:09:09','2022-02-07 10:09:09'),(5,5,3,3,'2022-02-07 10:09:09','2022-02-07 10:09:09'),(6,6,3,2,'2022-02-07 10:09:09','2022-02-07 10:09:09'),(7,7,3,3,'2022-02-07 10:09:09','2022-02-07 10:09:09'),(9,9,2,3,'2022-02-07 10:09:09','2022-02-07 10:09:09'),(10,10,1,2,'2022-02-07 10:09:09','2022-02-07 10:09:09'),(16,6,1,NULL,'2022-02-07 15:28:35','2022-02-07 15:28:35');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 show1 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告标题1',1,'http://localhost:8080/jianshendaren/file/download?fileName=newsPhoto.jpg','2022-02-07 10:09:09','公告详情1','2022-02-07 10:09:09'),(2,'公告标题2',2,'http://localhost:8080/jianshendaren/file/download?fileName=newsPhoto.jpg','2022-02-07 10:09:09','公告详情2','2022-02-07 10:09:09'),(3,'公告标题3',2,'http://localhost:8080/jianshendaren/file/download?fileName=newsPhoto.jpg','2022-02-07 10:09:09','公告详情3','2022-02-07 10:09:09'),(4,'公告标题4',2,'http://localhost:8080/jianshendaren/file/download?fileName=newsPhoto.jpg','2022-02-07 10:09:09','公告详情4','2022-02-07 10:09:09'),(5,'公告标题5',2,'http://localhost:8080/jianshendaren/file/download?fileName=newsPhoto.jpg','2022-02-07 10:09:09','公告详情5','2022-02-07 10:09:09'),(6,'公告标题6',2,'http://localhost:8080/jianshendaren/file/download?fileName=newsPhoto.jpg','2022-02-07 10:09:09','公告详情6','2022-02-07 10:09:09'),(7,'公告标题7',2,'http://localhost:8080/jianshendaren/file/download?fileName=newsPhoto.jpg','2022-02-07 10:09:09','公告详情7','2022-02-07 10:09:09'),(8,'公告标题8',1,'http://localhost:8080/jianshendaren/upload/1644203153824.jpg','2022-02-07 10:09:09','<p>公告详情8</p>','2022-02-07 10:09:09'),(9,'公告标题9',2,'http://localhost:8080/jianshendaren/upload/1644203146332.jpg','2022-02-07 10:09:09','<p>公告详情9</p>','2022-02-07 10:09:09'),(10,'公告标题10',1,'http://localhost:8080/jianshendaren/upload/1644203137929.jpg','2022-02-07 10:09:09','<p>公告详情10</p>','2022-02-07 10:09:09'),(11,'公告标题11',2,'http://localhost:8080/jianshendaren/upload/1644203130152.jpg','2022-02-07 10:09:09','<p>公告详情11</p>','2022-02-07 10:09:09');

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

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yonghu','用户','klrqnv3lx982zjsh2fw2dqbaq9l0ladz','2022-02-07 09:25:28','2022-02-07 18:30:45'),(2,1,'admin','users','管理员','ek6l88lz4t3pf3gpgzatfcwll90dcenx','2022-02-07 10:25:32','2022-02-07 18:15:16');

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
  `username` varchar(200) DEFAULT NULL COMMENT '学号',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名  Search111',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `yonghu_yaowei` decimal(10,2) DEFAULT NULL COMMENT '腰围(cm)',
  `yonghu_shengao` decimal(10,2) DEFAULT NULL COMMENT '身高(m)',
  `yonghu_tizhong` decimal(10,2) DEFAULT NULL COMMENT '体重(kg)',
  `yonghu_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`sex_types`,`yonghu_id_number`,`yonghu_phone`,`yonghu_photo`,`new_money`,`yonghu_yaowei`,`yonghu_shengao`,`yonghu_tizhong`,`yonghu_delete`,`create_time`) values (1,'a1','123456','用户姓名1',2,'410224199610232001','17703786901','http://localhost:8080/jianshendaren/upload/1644201343870.jpg','110506.61','366.27','1.80','50.00',1,'2022-02-07 10:09:09'),(2,'a2','123456','用户姓名2',1,'410224199610232002','17703786902','http://localhost:8080/jianshendaren/upload/1644201328205.jpg','877.16','236.19','392.21','172.15',1,'2022-02-07 10:09:09'),(3,'a3','123456','用户姓名3',1,'410224199610232003','17703786903','http://localhost:8080/jianshendaren/upload/1644201318099.jpg','832.56','209.30','590.46','430.15',1,'2022-02-07 10:09:09'),(4,'a11','123456','用户a11',1,'410887199911211111','13345551151',NULL,'0.00',NULL,NULL,NULL,2,'2022-02-07 16:00:43');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
