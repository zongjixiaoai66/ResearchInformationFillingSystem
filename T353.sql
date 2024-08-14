/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t353`;
CREATE DATABASE IF NOT EXISTS `t353` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t353`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2023-03-14 08:13:52'),
	(2, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2023-03-14 08:13:52'),
	(3, 'jiaocai_types', '教材类型', 1, '教材类型1', NULL, NULL, '2023-03-14 08:13:52'),
	(4, 'jiaocai_types', '教材类型', 2, '教材类型2', NULL, NULL, '2023-03-14 08:13:52'),
	(5, 'jiaocai_types', '教材类型', 3, '教材类型3', NULL, NULL, '2023-03-14 08:13:52'),
	(6, 'jiaocai_types', '教材类型', 4, '教材类型4', NULL, NULL, '2023-03-14 08:13:52'),
	(7, 'ziliao_types', '教研资料类型', 1, '教研资料类型1', NULL, NULL, '2023-03-14 08:13:52'),
	(8, 'ziliao_types', '教研资料类型', 2, '教研资料类型2', NULL, NULL, '2023-03-14 08:13:52'),
	(9, 'ziliao_types', '教研资料类型', 3, '教研资料类型3', NULL, NULL, '2023-03-14 08:13:52'),
	(10, 'ziliao_types', '教研资料类型', 4, '教研资料类型4', NULL, NULL, '2023-03-14 08:13:52'),
	(11, 'xiangmu_types', '教研项目类型', 1, '教研项目类型1', NULL, NULL, '2023-03-14 08:13:52'),
	(12, 'xiangmu_types', '教研项目类型', 2, '教研项目类型2', NULL, NULL, '2023-03-14 08:13:52'),
	(13, 'xiangmu_types', '教研项目类型', 3, '教研项目类型3', NULL, NULL, '2023-03-14 08:13:52'),
	(14, 'xiangmu_types', '教研项目类型', 4, '教研项目类型4', NULL, NULL, '2023-03-14 08:13:52'),
	(15, 'lunwen_types', '教研论文类型', 1, '教研论文类型1', NULL, NULL, '2023-03-14 08:13:52'),
	(16, 'lunwen_types', '教研论文类型', 2, '教研论文类型2', NULL, NULL, '2023-03-14 08:13:52'),
	(17, 'lunwen_types', '教研论文类型', 3, '教研论文类型3', NULL, NULL, '2023-03-14 08:13:52'),
	(18, 'lunwen_types', '教研论文类型', 4, '教研论文类型4', NULL, NULL, '2023-03-14 08:13:52'),
	(19, 'gonggao_types', '公告类型', 1, '公告类型1', NULL, NULL, '2023-03-14 08:13:52'),
	(20, 'gonggao_types', '公告类型', 2, '公告类型2', NULL, NULL, '2023-03-14 08:13:52');

DROP TABLE IF EXISTS `gonggao`;
CREATE TABLE IF NOT EXISTS `gonggao` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` text COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='公告';

DELETE FROM `gonggao`;
INSERT INTO `gonggao` (`id`, `gonggao_name`, `gonggao_photo`, `gonggao_types`, `insert_time`, `gonggao_content`, `create_time`) VALUES
	(1, '公告名称1', 'upload/gonggao1.jpg', 1, '2023-03-14 08:14:27', '公告详情1', '2023-03-14 08:14:27'),
	(2, '公告名称2', 'upload/gonggao2.jpg', 1, '2023-03-14 08:14:27', '公告详情2', '2023-03-14 08:14:27'),
	(3, '公告名称3', 'upload/gonggao3.jpg', 1, '2023-03-14 08:14:27', '公告详情3', '2023-03-14 08:14:27'),
	(4, '公告名称4', 'upload/gonggao4.jpg', 1, '2023-03-14 08:14:27', '公告详情4', '2023-03-14 08:14:27'),
	(5, '公告名称5', 'upload/gonggao5.jpg', 1, '2023-03-14 08:14:27', '公告详情5', '2023-03-14 08:14:27'),
	(6, '公告名称6', 'upload/gonggao6.jpg', 1, '2023-03-14 08:14:27', '公告详情6', '2023-03-14 08:14:27'),
	(7, '公告名称7', 'upload/gonggao7.jpg', 2, '2023-03-14 08:14:27', '公告详情7', '2023-03-14 08:14:27'),
	(8, '公告名称8', 'upload/gonggao8.jpg', 2, '2023-03-14 08:14:27', '公告详情8', '2023-03-14 08:14:27'),
	(9, '公告名称9', 'upload/gonggao9.jpg', 1, '2023-03-14 08:14:27', '公告详情9', '2023-03-14 08:14:27'),
	(10, '公告名称10', 'upload/gonggao10.jpg', 1, '2023-03-14 08:14:27', '公告详情10', '2023-03-14 08:14:27'),
	(11, '公告名称11', 'upload/gonggao11.jpg', 2, '2023-03-14 08:14:27', '公告详情11', '2023-03-14 08:14:27'),
	(12, '公告名称12', 'upload/gonggao12.jpg', 2, '2023-03-14 08:14:27', '公告详情12', '2023-03-14 08:14:27'),
	(13, '公告名称13', 'upload/gonggao13.jpg', 2, '2023-03-14 08:14:27', '公告详情13', '2023-03-14 08:14:27'),
	(14, '公告名称14', 'upload/gonggao14.jpg', 1, '2023-03-14 08:14:27', '公告详情14', '2023-03-14 08:14:27');

DROP TABLE IF EXISTS `jiaocai`;
CREATE TABLE IF NOT EXISTS `jiaocai` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `jiaocai_name` varchar(200) DEFAULT NULL COMMENT '教材名称  Search111 ',
  `jiaocai_uuid_number` varchar(200) DEFAULT NULL COMMENT '教材编号',
  `jiaocai_photo` varchar(200) DEFAULT NULL COMMENT '教材照片',
  `jiaocai_types` int DEFAULT NULL COMMENT '教材类型 Search111',
  `jiaocai_file` varchar(200) DEFAULT NULL COMMENT '教材下载',
  `jiaocai_content` text COMMENT '教材介绍 ',
  `jiaocai_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='教材';

DELETE FROM `jiaocai`;
INSERT INTO `jiaocai` (`id`, `jiaocai_name`, `jiaocai_uuid_number`, `jiaocai_photo`, `jiaocai_types`, `jiaocai_file`, `jiaocai_content`, `jiaocai_delete`, `insert_time`, `create_time`) VALUES
	(1, '教材名称1', '1678781667169', 'upload/jiaocai1.jpg', 3, 'upload/file.rar', '教材介绍1', 1, '2023-03-14 08:14:27', '2023-03-14 08:14:27'),
	(2, '教材名称2', '1678781667116', 'upload/jiaocai2.jpg', 2, 'upload/file.rar', '教材介绍2', 1, '2023-03-14 08:14:27', '2023-03-14 08:14:27'),
	(3, '教材名称3', '1678781667149', 'upload/jiaocai3.jpg', 1, 'upload/file.rar', '教材介绍3', 1, '2023-03-14 08:14:27', '2023-03-14 08:14:27'),
	(4, '教材名称4', '1678781667170', 'upload/jiaocai4.jpg', 1, 'upload/file.rar', '教材介绍4', 1, '2023-03-14 08:14:27', '2023-03-14 08:14:27'),
	(5, '教材名称5', '1678781667159', 'upload/jiaocai5.jpg', 4, 'upload/file.rar', '教材介绍5', 1, '2023-03-14 08:14:27', '2023-03-14 08:14:27'),
	(6, '教材名称6', '1678781667117', 'upload/jiaocai6.jpg', 4, 'upload/file.rar', '教材介绍6', 1, '2023-03-14 08:14:27', '2023-03-14 08:14:27'),
	(7, '教材名称7', '1678781667180', 'upload/jiaocai7.jpg', 4, 'upload/file.rar', '教材介绍7', 1, '2023-03-14 08:14:27', '2023-03-14 08:14:27'),
	(8, '教材名称8', '1678781667101', 'upload/jiaocai8.jpg', 3, 'upload/file.rar', '教材介绍8', 1, '2023-03-14 08:14:27', '2023-03-14 08:14:27'),
	(9, '教材名称9', '1678781667140', 'upload/jiaocai9.jpg', 4, 'upload/file.rar', '教材介绍9', 1, '2023-03-14 08:14:27', '2023-03-14 08:14:27'),
	(10, '教材名称10', '1678781667162', 'upload/jiaocai10.jpg', 3, 'upload/file.rar', '教材介绍10', 1, '2023-03-14 08:14:27', '2023-03-14 08:14:27'),
	(11, '教材名称11', '1678781667124', 'upload/jiaocai11.jpg', 4, 'upload/file.rar', '教材介绍11', 1, '2023-03-14 08:14:27', '2023-03-14 08:14:27'),
	(12, '教材名称12', '1678781667131', 'upload/jiaocai12.jpg', 4, 'upload/file.rar', '教材介绍12', 1, '2023-03-14 08:14:27', '2023-03-14 08:14:27'),
	(13, '教材名称13', '1678781667121', 'upload/jiaocai13.jpg', 3, 'upload/file.rar', '教材介绍13', 1, '2023-03-14 08:14:27', '2023-03-14 08:14:27'),
	(14, '教材名称14', '1678781667098', 'upload/jiaocai14.jpg', 1, 'upload/file.rar', '教材介绍14', 1, '2023-03-14 08:14:27', '2023-03-14 08:14:27');

DROP TABLE IF EXISTS `jioayanguanli`;
CREATE TABLE IF NOT EXISTS `jioayanguanli` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `jioayanguanli_name` varchar(200) DEFAULT NULL COMMENT '教研管理姓名 Search111 ',
  `jioayanguanli_phone` varchar(200) DEFAULT NULL COMMENT '教研管理手机号',
  `jioayanguanli_id_number` varchar(200) DEFAULT NULL COMMENT '教研管理身份证号',
  `jioayanguanli_photo` varchar(200) DEFAULT NULL COMMENT '教研管理头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `jioayanguanli_email` varchar(200) DEFAULT NULL COMMENT '教研管理邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='教研管理';

DELETE FROM `jioayanguanli`;
INSERT INTO `jioayanguanli` (`id`, `username`, `password`, `jioayanguanli_name`, `jioayanguanli_phone`, `jioayanguanli_id_number`, `jioayanguanli_photo`, `sex_types`, `jioayanguanli_email`, `create_time`) VALUES
	(1, '教研管理1', '123456', '教研管理姓名1', '17703786901', '410224199010102001', 'upload/jioayanguanli1.jpg', 1, '1@qq.com', '2023-03-14 08:14:27'),
	(2, '教研管理2', '123456', '教研管理姓名2', '17703786902', '410224199010102002', 'upload/jioayanguanli2.jpg', 2, '2@qq.com', '2023-03-14 08:14:27'),
	(3, '教研管理3', '123456', '教研管理姓名3', '17703786903', '410224199010102003', 'upload/jioayanguanli3.jpg', 2, '3@qq.com', '2023-03-14 08:14:27');

DROP TABLE IF EXISTS `lunwen`;
CREATE TABLE IF NOT EXISTS `lunwen` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `xiangmu_id` int DEFAULT NULL COMMENT '教研项目',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `lunwen_name` varchar(200) DEFAULT NULL COMMENT '教研论文名称  Search111 ',
  `lunwen_uuid_number` varchar(200) DEFAULT NULL COMMENT '教研论文编号',
  `lunwen_photo` varchar(200) DEFAULT NULL COMMENT '教研论文照片',
  `lunwen_types` int DEFAULT NULL COMMENT '教研论文类型 Search111',
  `lunwen_file` varchar(200) DEFAULT NULL COMMENT '教研论文下载',
  `lunwen_content` text COMMENT '教研论文介绍 ',
  `lunwen_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='教研论文';

DELETE FROM `lunwen`;
INSERT INTO `lunwen` (`id`, `xiangmu_id`, `yonghu_id`, `lunwen_name`, `lunwen_uuid_number`, `lunwen_photo`, `lunwen_types`, `lunwen_file`, `lunwen_content`, `lunwen_delete`, `insert_time`, `create_time`) VALUES
	(1, 1, 3, '教研论文名称1', '1678781667158', 'upload/lunwen1.jpg', 3, 'upload/file.rar', '教研论文介绍1', 1, '2023-03-14 08:14:27', '2023-03-14 08:14:27'),
	(2, 2, 1, '教研论文名称2', '1678781667127', 'upload/lunwen2.jpg', 4, 'upload/file.rar', '教研论文介绍2', 1, '2023-03-14 08:14:27', '2023-03-14 08:14:27'),
	(3, 3, 1, '教研论文名称3', '1678781667138', 'upload/lunwen3.jpg', 3, 'upload/file.rar', '教研论文介绍3', 1, '2023-03-14 08:14:27', '2023-03-14 08:14:27'),
	(4, 4, 3, '教研论文名称4', '1678781667104', 'upload/lunwen4.jpg', 1, 'upload/file.rar', '教研论文介绍4', 1, '2023-03-14 08:14:27', '2023-03-14 08:14:27'),
	(5, 5, 2, '教研论文名称5', '1678781667103', 'upload/lunwen5.jpg', 1, 'upload/file.rar', '教研论文介绍5', 1, '2023-03-14 08:14:27', '2023-03-14 08:14:27'),
	(6, 6, 2, '教研论文名称6', '1678781667127', 'upload/lunwen6.jpg', 2, 'upload/file.rar', '教研论文介绍6', 1, '2023-03-14 08:14:27', '2023-03-14 08:14:27'),
	(7, 7, 3, '教研论文名称7', '1678781667088', 'upload/lunwen7.jpg', 4, 'upload/file.rar', '教研论文介绍7', 1, '2023-03-14 08:14:27', '2023-03-14 08:14:27'),
	(8, 8, 3, '教研论文名称8', '1678781667123', 'upload/lunwen8.jpg', 4, 'upload/file.rar', '教研论文介绍8', 1, '2023-03-14 08:14:27', '2023-03-14 08:14:27'),
	(9, 9, 2, '教研论文名称9', '1678781667140', 'upload/lunwen9.jpg', 3, 'upload/file.rar', '教研论文介绍9', 1, '2023-03-14 08:14:27', '2023-03-14 08:14:27'),
	(10, 10, 2, '教研论文名称10', '1678781667090', 'upload/lunwen10.jpg', 3, 'upload/file.rar', '教研论文介绍10', 1, '2023-03-14 08:14:27', '2023-03-14 08:14:27'),
	(11, 11, 1, '教研论文名称11', '1678781667113', 'upload/lunwen11.jpg', 1, 'upload/file.rar', '教研论文介绍11', 1, '2023-03-14 08:14:27', '2023-03-14 08:14:27'),
	(12, 12, 3, '教研论文名称12', '1678781667102', 'upload/lunwen12.jpg', 3, 'upload/file.rar', '教研论文介绍12', 1, '2023-03-14 08:14:27', '2023-03-14 08:14:27'),
	(13, 13, 2, '教研论文名称13', '1678781667160', 'upload/lunwen13.jpg', 3, 'upload/file.rar', '教研论文介绍13', 1, '2023-03-14 08:14:27', '2023-03-14 08:14:27'),
	(14, 14, 1, '教研论文名称14', '1678781667154', 'upload/lunwen14.jpg', 3, 'upload/file.rar', '教研论文介绍14', 1, '2023-03-14 08:14:27', '2023-03-14 08:14:27'),
	(15, 1, 1, '写完的教研项目', '1678782400544', '/upload/1678782437928.jpg', 1, '/upload/1678782444015.jpg', '<p>写完教研项目后吧论文传上去</p>', 1, '2023-03-14 08:27:43', '2023-03-14 08:27:43');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '儿童id',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'admin', 'users', '管理员', 'zsnsddo6moea8extyjoj0vf7frug9n9h', '2023-03-14 08:17:03', '2024-08-09 04:08:45'),
	(2, 1, 'a1', 'yonghu', '教研人员', 'a4zifumcmxy8orxu0uaqye9vi5xxut49', '2023-03-14 08:18:16', '2024-08-09 04:09:56'),
	(3, 1, 'a1', 'jioayanguanli', '教研管理', 'lbqzx0o0ak4ycjsa3c2k99n5m3g9q8wn', '2023-03-14 08:28:05', '2024-08-09 04:09:43');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='管理员';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2023-03-14 08:13:52');

DROP TABLE IF EXISTS `xiangmu`;
CREATE TABLE IF NOT EXISTS `xiangmu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `xiangmu_name` varchar(200) DEFAULT NULL COMMENT '教研项目名称  Search111 ',
  `xiangmu_uuid_number` varchar(200) DEFAULT NULL COMMENT '教研项目编号',
  `xiangmu_photo` varchar(200) DEFAULT NULL COMMENT '教研项目照片',
  `xiangmu_types` int DEFAULT NULL COMMENT '教研项目类型 Search111',
  `xiangmu_file` varchar(200) DEFAULT NULL COMMENT '教研项目下载',
  `xiangmu_content` text COMMENT '教研项目介绍 ',
  `xiangmu_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='教研项目';

DELETE FROM `xiangmu`;
INSERT INTO `xiangmu` (`id`, `xiangmu_name`, `xiangmu_uuid_number`, `xiangmu_photo`, `xiangmu_types`, `xiangmu_file`, `xiangmu_content`, `xiangmu_delete`, `insert_time`, `create_time`) VALUES
	(1, '教研项目名称1', '1678781667156', 'upload/xiangmu1.jpg', 2, 'upload/file.rar', '教研项目介绍1', 1, '2023-03-14 08:14:27', '2023-03-14 08:14:27'),
	(2, '教研项目名称2', '1678781667118', 'upload/xiangmu2.jpg', 1, 'upload/file.rar', '教研项目介绍2', 1, '2023-03-14 08:14:27', '2023-03-14 08:14:27'),
	(3, '教研项目名称3', '1678781667088', 'upload/xiangmu3.jpg', 2, 'upload/file.rar', '教研项目介绍3', 1, '2023-03-14 08:14:27', '2023-03-14 08:14:27'),
	(4, '教研项目名称4', '1678781667139', 'upload/xiangmu4.jpg', 3, 'upload/file.rar', '教研项目介绍4', 1, '2023-03-14 08:14:27', '2023-03-14 08:14:27'),
	(5, '教研项目名称5', '1678781667148', 'upload/xiangmu5.jpg', 3, 'upload/file.rar', '教研项目介绍5', 1, '2023-03-14 08:14:27', '2023-03-14 08:14:27'),
	(6, '教研项目名称6', '1678781667178', 'upload/xiangmu6.jpg', 3, 'upload/file.rar', '教研项目介绍6', 1, '2023-03-14 08:14:27', '2023-03-14 08:14:27'),
	(7, '教研项目名称7', '1678781667110', 'upload/xiangmu7.jpg', 1, 'upload/file.rar', '教研项目介绍7', 1, '2023-03-14 08:14:27', '2023-03-14 08:14:27'),
	(8, '教研项目名称8', '1678781667152', 'upload/xiangmu8.jpg', 4, 'upload/file.rar', '教研项目介绍8', 1, '2023-03-14 08:14:27', '2023-03-14 08:14:27'),
	(9, '教研项目名称9', '1678781667112', 'upload/xiangmu9.jpg', 3, 'upload/file.rar', '教研项目介绍9', 1, '2023-03-14 08:14:27', '2023-03-14 08:14:27'),
	(10, '教研项目名称10', '1678781667136', 'upload/xiangmu10.jpg', 2, 'upload/file.rar', '教研项目介绍10', 1, '2023-03-14 08:14:27', '2023-03-14 08:14:27'),
	(11, '教研项目名称11', '1678781667089', 'upload/xiangmu11.jpg', 2, 'upload/file.rar', '教研项目介绍11', 1, '2023-03-14 08:14:27', '2023-03-14 08:14:27'),
	(12, '教研项目名称12', '1678781667172', 'upload/xiangmu12.jpg', 2, 'upload/file.rar', '教研项目介绍12', 1, '2023-03-14 08:14:27', '2023-03-14 08:14:27'),
	(13, '教研项目名称13', '1678781667106', 'upload/xiangmu13.jpg', 4, 'upload/file.rar', '教研项目介绍13', 1, '2023-03-14 08:14:27', '2023-03-14 08:14:27'),
	(14, '教研项目名称14', '1678781667091', 'upload/xiangmu14.jpg', 2, 'upload/file.rar', '教研项目介绍14', 1, '2023-03-14 08:14:27', '2023-03-14 08:14:27');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='教研人员';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_phone`, `yonghu_id_number`, `yonghu_photo`, `sex_types`, `yonghu_email`, `create_time`) VALUES
	(1, '教研人员1', '123456', '用户姓名1', '17703786901', '410224199010102001', 'upload/yonghu1.jpg', 2, '1@qq.com', '2023-03-14 08:14:27'),
	(2, '教研人员2', '123456', '用户姓名2', '17703786902', '410224199010102002', 'upload/yonghu2.jpg', 1, '2@qq.com', '2023-03-14 08:14:27'),
	(3, '教研人员3', '123456', '用户姓名3', '17703786903', '410224199010102003', 'upload/yonghu3.jpg', 1, '3@qq.com', '2023-03-14 08:14:27');

DROP TABLE IF EXISTS `ziliao`;
CREATE TABLE IF NOT EXISTS `ziliao` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `ziliao_name` varchar(200) DEFAULT NULL COMMENT '教研资料名称  Search111 ',
  `ziliao_uuid_number` varchar(200) DEFAULT NULL COMMENT '教研资料编号',
  `ziliao_photo` varchar(200) DEFAULT NULL COMMENT '教研资料照片',
  `ziliao_types` int DEFAULT NULL COMMENT '教研资料类型 Search111',
  `ziliao_file` varchar(200) DEFAULT NULL COMMENT '教研资料下载',
  `ziliao_content` text COMMENT '教研资料介绍 ',
  `ziliao_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='教研资料';

DELETE FROM `ziliao`;
INSERT INTO `ziliao` (`id`, `ziliao_name`, `ziliao_uuid_number`, `ziliao_photo`, `ziliao_types`, `ziliao_file`, `ziliao_content`, `ziliao_delete`, `insert_time`, `create_time`) VALUES
	(1, '教研资料名称1', '1678781667140', 'upload/ziliao1.jpg', 1, 'upload/file.rar', '教研资料介绍1', 1, '2023-03-14 08:14:27', '2023-03-14 08:14:27'),
	(2, '教研资料名称2', '1678781667099', 'upload/ziliao2.jpg', 1, 'upload/file.rar', '教研资料介绍2', 1, '2023-03-14 08:14:27', '2023-03-14 08:14:27'),
	(3, '教研资料名称3', '1678781667154', 'upload/ziliao3.jpg', 1, 'upload/file.rar', '教研资料介绍3', 1, '2023-03-14 08:14:27', '2023-03-14 08:14:27'),
	(4, '教研资料名称4', '1678781667093', 'upload/ziliao4.jpg', 1, 'upload/file.rar', '教研资料介绍4', 1, '2023-03-14 08:14:27', '2023-03-14 08:14:27'),
	(5, '教研资料名称5', '1678781667188', 'upload/ziliao5.jpg', 4, 'upload/file.rar', '教研资料介绍5', 1, '2023-03-14 08:14:27', '2023-03-14 08:14:27'),
	(6, '教研资料名称6', '1678781667131', 'upload/ziliao6.jpg', 2, 'upload/file.rar', '教研资料介绍6', 1, '2023-03-14 08:14:27', '2023-03-14 08:14:27'),
	(7, '教研资料名称7', '1678781667171', 'upload/ziliao7.jpg', 1, 'upload/file.rar', '教研资料介绍7', 1, '2023-03-14 08:14:27', '2023-03-14 08:14:27'),
	(8, '教研资料名称8', '1678781667146', 'upload/ziliao8.jpg', 1, 'upload/file.rar', '教研资料介绍8', 1, '2023-03-14 08:14:27', '2023-03-14 08:14:27'),
	(9, '教研资料名称9', '1678781667115', 'upload/ziliao9.jpg', 4, 'upload/file.rar', '教研资料介绍9', 1, '2023-03-14 08:14:27', '2023-03-14 08:14:27'),
	(10, '教研资料名称10', '1678781667137', 'upload/ziliao10.jpg', 2, 'upload/file.rar', '教研资料介绍10', 1, '2023-03-14 08:14:27', '2023-03-14 08:14:27'),
	(11, '教研资料名称11', '1678781667113', 'upload/ziliao11.jpg', 4, 'upload/file.rar', '教研资料介绍11', 1, '2023-03-14 08:14:27', '2023-03-14 08:14:27'),
	(12, '教研资料名称12', '1678781667114', 'upload/ziliao12.jpg', 3, 'upload/file.rar', '教研资料介绍12', 1, '2023-03-14 08:14:27', '2023-03-14 08:14:27'),
	(13, '教研资料名称13', '1678781667122', 'upload/ziliao13.jpg', 4, 'upload/file.rar', '教研资料介绍13', 1, '2023-03-14 08:14:27', '2023-03-14 08:14:27'),
	(14, '教研资料名称14', '1678781667179', 'upload/ziliao14.jpg', 3, 'upload/file.rar', '教研资料介绍14', 1, '2023-03-14 08:14:27', '2023-03-14 08:14:27');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
