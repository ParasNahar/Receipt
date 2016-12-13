# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: localhost (MySQL 5.6.33)
# Database: cart
# Generation Time: 2016-12-13 04:29:40 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table addresses
# ------------------------------------------------------------

DROP TABLE IF EXISTS `addresses`;

CREATE TABLE `addresses` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `address1` varchar(255) NOT NULL DEFAULT '',
  `address2` varchar(255) DEFAULT NULL,
  `city` varchar(255) NOT NULL DEFAULT '',
  `postal_code` varchar(255) NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `addresses` WRITE;
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;

INSERT INTO `addresses` (`id`, `address1`, `address2`, `city`, `postal_code`, `created_at`, `updated_at`)
VALUES
	(5,'sd','','sd','sd','2016-11-27 16:07:19','2016-11-27 16:07:19'),
	(6,'S','S','S','S','2016-11-27 17:58:02','2016-11-27 17:58:02'),
	(7,'dee','de','de','de','2016-11-27 21:17:34','2016-11-27 21:17:34'),
	(8,'a','a','a','a','2016-11-27 21:25:07','2016-11-27 21:25:07'),
	(9,'39 Rock Hill Road','','Clifton','07013','2016-11-27 22:57:07','2016-11-27 22:57:07'),
	(10,'de','dw','dw','dw','2016-11-30 05:02:41','2016-11-30 05:02:41'),
	(11,'d','','dw','de','2016-12-06 02:25:23','2016-12-06 02:25:23'),
	(12,'3ere','d','de','de','2016-12-06 22:29:51','2016-12-06 22:29:51'),
	(13,'de','dw','fe','e','2016-12-06 22:38:32','2016-12-06 22:38:32'),
	(14,'d','d','ddd','d','2016-12-06 22:39:31','2016-12-06 22:39:31'),
	(15,'d','dd','dd','d','2016-12-06 23:52:08','2016-12-06 23:52:08'),
	(16,'a','a','aa','a','2016-12-08 03:51:41','2016-12-08 03:51:41'),
	(17,'aadwwdw','adq','adqw','21234a','2016-12-08 03:52:52','2016-12-08 03:52:52'),
	(18,'39 rock hil road','','clifton','07013','2016-12-08 03:55:37','2016-12-08 03:55:37'),
	(19,'dwe','','swd','de','2016-12-08 03:59:50','2016-12-08 03:59:50'),
	(20,'39 rock','','s','s','2016-12-08 04:01:27','2016-12-08 04:01:27'),
	(21,'a','a','aaa','aa','2016-12-08 04:08:02','2016-12-08 04:08:02'),
	(22,'a','a','aaa','a','2016-12-08 04:09:43','2016-12-08 04:09:43');

/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(11) NOT NULL DEFAULT '',
  `slug` varchar(11) NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`)
VALUES
	(1,'Hats','hats',NULL,NULL),
	(2,'Gloves','gloves',NULL,NULL),
	(3,'Shoes','shoes',NULL,NULL);

/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table customers
# ------------------------------------------------------------

DROP TABLE IF EXISTS `customers`;

CREATE TABLE `customers` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;

INSERT INTO `customers` (`id`, `name`, `email`, `created_at`, `updated_at`)
VALUES
	(6,'sd','w@g.com','2016-11-27 16:07:19','2016-11-27 16:07:19'),
	(7,'A','a@gmail.com','2016-11-27 17:58:02','2016-11-27 17:58:02'),
	(8,'dded','a@a.com','2016-11-27 21:17:34','2016-11-27 21:17:34'),
	(9,'a','a@a.com','2016-11-27 21:25:07','2016-11-27 21:25:07'),
	(10,'Paras Nahar','harvardpride@gmail.com','2016-11-27 22:57:07','2016-11-27 22:57:07'),
	(11,'sanjw','a@a.com','2016-11-30 05:02:41','2016-11-30 05:02:41'),
	(12,'de','harvarfnefniwehwefu@gmaiewbkew.com','2016-12-06 02:25:23','2016-12-06 02:25:23'),
	(13,'a','harvardpride@gmail.com','2016-12-06 22:31:09','2016-12-06 22:31:09'),
	(14,'de','jainkjd@gmail.com','2016-12-06 22:38:32','2016-12-06 22:38:32'),
	(15,'d','jainkjd@gmail.com','2016-12-06 22:39:31','2016-12-06 22:39:31'),
	(16,'S','jainkjd@gmail.com','2016-12-06 22:40:29','2016-12-06 22:40:29'),
	(17,'a','jainkjd@gmail.com','2016-12-06 22:51:39','2016-12-06 22:51:39'),
	(18,'s','harvardpride@gmail.com','2016-12-06 23:32:54','2016-12-06 23:32:54'),
	(19,'ss','harvardpride@gmail.com','2016-12-06 23:36:33','2016-12-06 23:36:33'),
	(20,'d','harvardpride@gmail.com','2016-12-06 23:52:08','2016-12-06 23:52:08'),
	(21,'dnenddei','jainkjd@gmail.com','2016-12-08 03:59:50','2016-12-08 03:59:50'),
	(22,'oaars','harvardpride@gmail.com','2016-12-08 04:01:27','2016-12-08 04:01:27'),
	(23,'p','harvardpride@gmail.com','2016-12-08 04:07:25','2016-12-08 04:07:25');

/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table orders
# ------------------------------------------------------------

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hash` varchar(255) NOT NULL DEFAULT '',
  `subtotal` float NOT NULL,
  `shipping` float NOT NULL,
  `total` float NOT NULL,
  `address_id` int(11) NOT NULL,
  `paid` tinyint(1) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `email_sent` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;

INSERT INTO `orders` (`id`, `hash`, `subtotal`, `shipping`, `total`, `address_id`, `paid`, `customer_id`, `created_at`, `updated_at`, `email_sent`)
VALUES
	(8,'bea755aeb34e61ae3849ee52cc0e8f45199a70ab0d5a8a79ead63b8a0ace2ae2',0,0,254,5,0,6,'2016-11-27 16:07:19','2016-11-27 16:07:19',0),
	(9,'1502e8573d02f697ffb2e6001415466e99f54c707cf06c0ce8aa9f1bfe5d9f4b',0,0,392,6,0,7,'2016-11-27 17:58:02','2016-11-27 17:58:02',0),
	(10,'ccfb76d19ba73d94df9230f0855f56a2222fcf5ea2eb63c4f142aaf5c32ac608',0,0,392,6,0,7,'2016-11-27 17:58:33','2016-11-27 17:58:33',0),
	(11,'87e05903b97b42c2fd27763d435ffa6b7b20fa0cc97a6b6abe2260a37dfbf1de',0,0,392,6,0,7,'2016-11-27 19:44:58','2016-11-27 19:44:58',0),
	(12,'4fc2508a871375397aede9f53e17d807a23304495407654f451970896cb7d518',0,0,392,6,0,7,'2016-11-27 19:46:35','2016-11-27 19:46:35',0),
	(13,'2ed8d8ad8293a7cedf6dfad5f2785342e95ef34c7c5e949928cb680c032f0441',0,0,392,6,0,7,'2016-11-27 19:48:34','2016-11-27 19:48:34',0),
	(14,'cd40d9c0db13db7f8c90199634ed31bc416f8721d21f09645b5bb2b8d8a90d4e',0,0,392,6,0,7,'2016-11-27 19:48:57','2016-11-27 19:48:57',0),
	(15,'2e8e5a6dc2b593c6e26174a1cc803e549abaf8cd5374a8a04c26c88a6a24fe91',0,0,392,6,0,7,'2016-11-27 19:49:27','2016-11-27 19:49:27',0),
	(16,'ef01dd543adf70be467a6eb0c8974e798ec8947093887323c53176ca8b5c223d',0,0,392,6,0,7,'2016-11-27 20:58:53','2016-11-27 20:58:53',0),
	(17,'c0721240dc002639fffda77cb1d2e2fba71ed4dbb51d6e69a9108d2e6f3325d8',0,0,392,6,0,7,'2016-11-27 20:59:16','2016-11-27 20:59:16',0),
	(18,'e68393d2311257ea3ec76c361ff815e2e0e82bffda67e48600c720f10ce09707',0,0,392,6,0,7,'2016-11-27 20:59:25','2016-11-27 20:59:25',0),
	(19,'c7f016b1c70c383b674ad9d0917927c39db142199394fadef16f4e829aec1e43',0,0,392,6,0,7,'2016-11-27 21:00:11','2016-11-27 21:00:11',0),
	(20,'4d3e212924157276e2d4f51532b07d9b252a933d7c2f4d2a0c87b8ae6ad5ce2e',0,0,392,6,0,7,'2016-11-27 21:00:19','2016-11-27 21:00:19',0),
	(21,'0f69fccfb75c76289b104dfde99bd0640643ec5a8b1926db63755bcce9340540',0,0,161,7,0,8,'2016-11-27 21:17:34','2016-11-27 21:17:34',0),
	(22,'4090b9b5578bef0d009cd91525498ddc557e540499f3cb5d3f429e16e7da7865',0,0,161,7,0,8,'2016-11-27 21:18:55','2016-11-27 21:18:55',0),
	(23,'0aa06e621d059534be6295f02754dc9f26f89075705b88c7c4771ff0fe6edd7c',0,0,161,7,0,8,'2016-11-27 21:19:50','2016-11-27 21:19:50',0),
	(24,'c7f15a3fe623c3edfdaec1035527cdaad614d8498bad6c854fe1ee1845bcbba3',0,0,161,7,0,8,'2016-11-27 21:20:57','2016-11-27 21:20:57',0),
	(25,'b610677597ce2c6b198e3adf60a7f7a9646cff20b183eba7ce9fd990dcf21ac3',0,0,161,7,0,8,'2016-11-27 21:21:25','2016-11-27 21:21:25',0),
	(26,'a00957631188fa0e57bde4836ff84f816ffec2abcb1019719fcdfc0a432a9baf',0,0,161,7,0,8,'2016-11-27 21:21:56','2016-11-27 21:21:56',0),
	(27,'59ffea56e086aac4e276695a5fb3681b0b5a15216d2fa5a8020481051fcba89a',0,0,161,7,0,8,'2016-11-27 21:22:56','2016-11-27 21:22:56',0),
	(28,'281c3096a4189cc18ef2440957623bcb822f461f1d3b46f650bc9491927be87b',0,0,161,7,0,8,'2016-11-27 21:23:09','2016-11-27 21:23:09',0),
	(29,'c94b91282f13223e79456c4bcfc93a99af4bd8b5f554528501b82bc89462f83e',0,0,161,7,0,8,'2016-11-27 21:24:26','2016-11-27 21:24:26',0),
	(30,'dcced15ace5a5322e1649bab1bde28fac4d617a96e1ca42df9a7fdbe0d001a0e',0,0,161,8,0,9,'2016-11-27 21:25:07','2016-11-27 21:25:07',0),
	(31,'1cc278ba862a6273a91de72756f383476e02962c3501eb7ae3a2ac306f99a4bf',0,0,161,8,0,9,'2016-11-27 21:25:43','2016-11-27 21:25:43',0),
	(32,'9556f2b3d3c4624d42131fcccfcc9cd0482cc255289bf4442045fc295f980ac2',0,0,161,8,0,9,'2016-11-27 21:26:00','2016-11-27 21:26:00',0),
	(33,'9698608fbf2c5e3c8d33bddfa7a5020641fbffaff696835c7dd4b892a128f496',0,0,161,8,0,9,'2016-11-27 21:26:29','2016-11-27 21:26:29',0),
	(34,'5e132be7d83f95c68a24aa655c4501c9beba30974104695d2a049b3366b0f8b0',0,0,161,8,1,9,'2016-11-27 21:26:44','2016-11-27 21:26:46',0),
	(35,'08492a0883e231e60ceefc49d113a4dae5ad71883e8cf6a94e5731ac6ef40c09',0,0,29,8,1,9,'2016-11-27 21:28:10','2016-11-27 21:28:12',0),
	(36,'ae36250af7785b679a388b6f3340fb002595054a8f29aedbe3ce8322e6e33d60',0,0,65,9,1,10,'2016-11-27 22:57:07','2016-11-27 22:57:08',0),
	(37,'395371401c2000571a2f319ff8fe9e29713a878c2246ab14f9d7100b93f8731b',0,0,48,10,1,11,'2016-11-30 05:02:41','2016-11-30 05:02:43',0),
	(38,'00a01ea99da2169bc9a3e74753123c81d6decf86be052638e84a5118e239d0b2',0,0,17,11,1,12,'2016-12-06 02:25:23','2016-12-06 02:25:25',0),
	(39,'f7b69c105965cf4e37fdb9db4d548050fa5fd8c5cd8bdaf16890badf9367ec8b',0,0,91,9,1,10,'2016-12-06 02:26:24','2016-12-06 02:26:26',0),
	(40,'7ee6fc4a9b072994b73e68aa791d4482d26bb2a1cd90d8075869d941da65459b',0,0,220,9,1,10,'2016-12-06 04:21:39','2016-12-06 04:21:40',0),
	(41,'8ab37d579bd9b07c1baf1664ba3e2d342cdf2726f080f6cb7bbce59c0e9f7b69',0,0,39,9,1,10,'2016-12-06 15:55:18','2016-12-06 15:55:19',0),
	(42,'41bb6434788c0cfb35a909442d085ae9d85dfdcf88e6911167c3a83f1f12afba',0,0,107,9,1,10,'2016-12-06 16:01:21','2016-12-06 16:01:22',0),
	(43,'976611230419d14c5642f0904656a7e47e29d8f32a96d2b4602ab104a17d6b7f',0,0,39,9,1,10,'2016-12-06 22:16:35','2016-12-06 22:16:37',1),
	(44,'39cee60b7983ef630130c89fc4cfe4a79362651675482c1023ace0837ef33bae',0,0,39,12,1,10,'2016-12-06 22:29:51','2016-12-06 22:29:55',1),
	(45,'94323a40ba722756ad00fd7063a5a78b89cce6512c2d5c9a085ac6fb007cb5ab',0,0,39,8,1,13,'2016-12-06 22:31:09','2016-12-06 22:31:11',1),
	(46,'ffc8d26fc05034acc21df1e5bdc182eec8f23f5126e3e4487d634132223b4295',0,0,39,8,1,13,'2016-12-06 22:37:08','2016-12-06 22:37:10',1),
	(47,'0d3953213a156bc5296caa267b16cea8456558d51d4067c88dacc6ab042699c0',0,0,47,13,1,14,'2016-12-06 22:38:33','2016-12-06 22:38:34',0),
	(48,'c2931e80164fd685dd37730ffd0f90619db58b10756782f75822ed9cc5329d38',0,0,39,14,1,15,'2016-12-06 22:39:31','2016-12-06 22:39:33',0),
	(49,'6871335c02d5a9fb4785e6c8e3ed4379166eb6562090a42cd37d184ec2f1e75a',0,0,39,6,1,16,'2016-12-06 22:40:29','2016-12-06 22:40:31',0),
	(50,'dee041d5424108b4e686509357f5757b73a3a63162e0987f13dc7999da72b15d',0,0,47,8,1,17,'2016-12-06 22:51:39','2016-12-06 22:51:41',1),
	(51,'fb28b25c740b4d092ebcfa279e04a7f770af18459f6b52aba002c8be553e6f70',0,0,47,8,1,18,'2016-12-06 23:32:54','2016-12-06 23:32:57',1),
	(52,'571e8e7b6c35e8edbae674b9b262db962654450200ef6b7541eb993163c9f1bf',0,0,39,6,1,19,'2016-12-06 23:36:33','2016-12-06 23:36:36',1),
	(53,'1fd31a8f77ee9698029ffaed764bfd671b3d39222e0b495c346830bc25c32e62',0,0,47,15,1,20,'2016-12-06 23:52:08','2016-12-06 23:52:11',1),
	(54,'02dbd2763f9490451fed8754fe5c10a9885ebebd5e96c76c25464f2318d9118e',0,0,48,6,1,18,'2016-12-07 03:27:33','2016-12-07 03:27:36',1),
	(55,'b522b8fedfa55357f6de418901fa5bce447bc58ef01a0494f72b19ac5f07113b',6003,21.95,0,8,1,10,'2016-12-08 03:50:16','2016-12-08 03:50:19',1),
	(56,'b2ec9a6ed1b2d5049d67b51480a489ef2edef335f229ab27b9e0c06d18ea5d7c',2001,13.95,0,16,0,13,'2016-12-08 03:51:41','2016-12-08 03:51:41',0),
	(57,'32bf0a9461d76fa2d86574c2f5293c91020d45d883e1e2de57d716a1ead96d6b',2001,13.95,0,16,0,13,'2016-12-08 03:51:52','2016-12-08 03:51:52',0),
	(58,'b0e92d8d0ccf53a0001efc53df4ef2300f7301c41cd441c3820c172a60bc42a5',2001,13.95,0,8,0,10,'2016-12-08 03:52:27','2016-12-08 03:52:27',0),
	(59,'06720d0f5689fbf409dddc18d66d3fcf1929a04d57a03d51cf4667fa62131465',2001,13.95,0,17,0,10,'2016-12-08 03:52:52','2016-12-08 03:52:52',0),
	(60,'fd0b20b37df0e2ada345bdbe2d95c9d0e83fb5561cd9842d50df918526a049c4',4002,17.95,0,8,0,13,'2016-12-08 03:53:20','2016-12-08 03:53:20',0),
	(61,'da670998b390109c9c123def394027e8ee270f36f1e48a4d1a2d69b09e4aa179',4002,17.95,0,8,0,17,'2016-12-08 03:54:09','2016-12-08 03:54:09',0),
	(62,'8a0ee71bb72b628457f4ac08fbafcf70153c9b32de8fe419f73b2a10849f9ebd',2001,13.95,0,18,0,10,'2016-12-08 03:55:37','2016-12-08 03:55:37',0),
	(63,'458c01e2e1cf5637c57211c4832bd18701c6ec1ac2fe139be3257f7f195abc9d',2001,13.95,0,19,0,21,'2016-12-08 03:59:50','2016-12-08 03:59:50',0),
	(64,'2f730aaa2da4b647bf8975434c11179814d61901abd47a4724050e33424a7fa1',2000,11.95,0,20,0,22,'2016-12-08 04:01:27','2016-12-08 04:01:27',0),
	(65,'6743f93c65d58c0a31a24e9815427fa08d3a745e13c5a0b98997f37850bad1db',1999,11.95,0,8,0,23,'2016-12-08 04:07:25','2016-12-08 04:07:25',0),
	(66,'118b4595911d992a3c07f6527d19bd1a2ae0581fe0c5ef391a68aba58a94119f',999,9.95,0,21,1,13,'2016-12-08 04:08:02','2016-12-08 04:08:05',1),
	(67,'0e1aae4b535ab8fa4bbe822aeef5bb3fb488efbd78e267046544c7bfce356034',1001,11.95,0,22,1,13,'2016-12-08 04:09:43','2016-12-08 04:09:46',1);

/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table orders_products
# ------------------------------------------------------------

DROP TABLE IF EXISTS `orders_products`;

CREATE TABLE `orders_products` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `orders_products` WRITE;
/*!40000 ALTER TABLE `orders_products` DISABLE KEYS */;

INSERT INTO `orders_products` (`id`, `order_id`, `product_id`, `quantity`)
VALUES
	(6,8,2,9),
	(7,8,4,1),
	(8,9,2,15),
	(9,9,4,1),
	(10,10,2,15),
	(11,10,4,1),
	(12,11,2,15),
	(13,11,4,1),
	(14,12,2,15),
	(15,12,4,1),
	(16,13,2,15),
	(17,13,4,1),
	(18,14,2,15),
	(19,14,4,1),
	(20,15,2,15),
	(21,15,4,1),
	(22,16,2,15),
	(23,16,4,1),
	(24,17,2,15),
	(25,17,4,1),
	(26,18,2,15),
	(27,18,4,1),
	(28,19,2,15),
	(29,19,4,1),
	(30,20,2,15),
	(31,20,4,1),
	(32,21,1,2),
	(33,21,2,2),
	(34,21,3,2),
	(35,22,1,2),
	(36,22,2,2),
	(37,22,3,2),
	(38,23,1,2),
	(39,23,2,2),
	(40,23,3,2),
	(41,24,1,2),
	(42,24,2,2),
	(43,24,3,2),
	(44,25,1,2),
	(45,25,2,2),
	(46,25,3,2),
	(47,26,1,2),
	(48,26,2,2),
	(49,26,3,2),
	(50,27,1,2),
	(51,27,2,2),
	(52,27,3,2),
	(53,28,1,2),
	(54,28,2,2),
	(55,28,3,2),
	(56,29,1,2),
	(57,29,2,2),
	(58,29,3,2),
	(59,30,1,2),
	(60,30,2,2),
	(61,30,3,2),
	(62,31,1,2),
	(63,31,2,2),
	(64,31,3,2),
	(65,32,1,2),
	(66,32,2,2),
	(67,32,3,2),
	(68,33,1,2),
	(69,33,2,2),
	(70,33,3,2),
	(71,34,1,2),
	(72,34,2,2),
	(73,34,3,2),
	(74,35,1,2),
	(75,36,1,5),
	(76,37,3,1),
	(77,38,1,1),
	(78,39,3,2),
	(79,40,3,5),
	(80,41,5,1),
	(81,42,5,3),
	(82,43,5,1),
	(83,44,5,1),
	(84,45,5,1),
	(85,46,5,1),
	(86,47,4,1),
	(87,48,5,1),
	(88,49,5,1),
	(89,50,4,1),
	(90,51,4,1),
	(91,52,5,1),
	(92,53,4,1),
	(93,54,3,1),
	(94,55,1,3),
	(95,56,1,1),
	(96,57,1,1),
	(97,58,1,1),
	(98,59,1,1),
	(99,60,1,2),
	(100,61,1,2),
	(101,62,1,1),
	(102,63,1,1),
	(103,64,5,1),
	(104,65,1,1),
	(105,66,1,1),
	(106,67,3,1);

/*!40000 ALTER TABLE `orders_products` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table payments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `payments`;

CREATE TABLE `payments` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `failed` tinyint(1) NOT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;

INSERT INTO `payments` (`id`, `order_id`, `failed`, `transaction_id`, `created_at`, `updated_at`)
VALUES
	(1,29,1,'','2016-11-27 21:24:27','2016-11-27 21:24:27'),
	(2,31,1,'','2016-11-27 21:25:44','2016-11-27 21:25:44'),
	(3,33,1,'','2016-11-27 21:26:30','2016-11-27 21:26:30'),
	(4,34,0,'6s68bges','2016-11-27 21:26:46','2016-11-27 21:26:46'),
	(5,35,0,'5yqvwpds','2016-11-27 21:28:12','2016-11-27 21:28:12'),
	(6,36,0,'bw1pccvx','2016-11-27 22:57:08','2016-11-27 22:57:08'),
	(7,37,0,'faqsw3hn','2016-11-30 05:02:43','2016-11-30 05:02:43'),
	(8,38,0,'4y6ndmrr','2016-12-06 02:25:25','2016-12-06 02:25:25'),
	(9,39,0,'jb61hwyz','2016-12-06 02:26:26','2016-12-06 02:26:26'),
	(10,40,0,'b14f2277','2016-12-06 04:21:40','2016-12-06 04:21:40'),
	(11,41,0,'2aa8c74v','2016-12-06 15:55:19','2016-12-06 15:55:19'),
	(12,42,0,'pp33drsy','2016-12-06 16:01:22','2016-12-06 16:01:22'),
	(13,43,0,'f7p6nayz','2016-12-06 22:16:36','2016-12-06 22:16:36'),
	(14,44,0,'18hs8k11','2016-12-06 22:29:54','2016-12-06 22:29:54'),
	(15,45,0,'9fcs3spz','2016-12-06 22:31:11','2016-12-06 22:31:11'),
	(16,46,0,'a37jex7q','2016-12-06 22:37:09','2016-12-06 22:37:09'),
	(17,47,0,'jwwy4xhk','2016-12-06 22:38:34','2016-12-06 22:38:34'),
	(18,48,0,'42etk6kn','2016-12-06 22:39:33','2016-12-06 22:39:33'),
	(19,49,0,'c06w5ab8','2016-12-06 22:40:31','2016-12-06 22:40:31'),
	(20,50,0,'nxpyxvb4','2016-12-06 22:51:40','2016-12-06 22:51:40'),
	(21,51,0,'98e32364','2016-12-06 23:32:56','2016-12-06 23:32:56'),
	(22,52,0,'39h2cvdw','2016-12-06 23:36:35','2016-12-06 23:36:35'),
	(23,53,0,'kx5amnds','2016-12-06 23:52:09','2016-12-06 23:52:09'),
	(24,54,0,'kr0x3pb3','2016-12-07 03:27:35','2016-12-07 03:27:35'),
	(25,55,0,'bgptkvm1','2016-12-08 03:50:17','2016-12-08 03:50:17'),
	(26,56,1,NULL,'2016-12-08 03:51:42','2016-12-08 03:51:42'),
	(27,57,1,NULL,'2016-12-08 03:51:53','2016-12-08 03:51:53'),
	(28,58,1,NULL,'2016-12-08 03:52:28','2016-12-08 03:52:28'),
	(29,59,1,NULL,'2016-12-08 03:52:53','2016-12-08 03:52:53'),
	(30,60,1,NULL,'2016-12-08 03:53:21','2016-12-08 03:53:21'),
	(31,61,1,NULL,'2016-12-08 03:54:11','2016-12-08 03:54:11'),
	(32,62,1,NULL,'2016-12-08 03:55:38','2016-12-08 03:55:38'),
	(33,63,1,NULL,'2016-12-08 03:59:52','2016-12-08 03:59:52'),
	(34,64,1,NULL,'2016-12-08 04:01:28','2016-12-08 04:01:28'),
	(35,65,1,NULL,'2016-12-08 04:07:26','2016-12-08 04:07:26'),
	(36,66,0,'f99xjbxp','2016-12-08 04:08:04','2016-12-08 04:08:04'),
	(37,67,0,'dmd4mqvp','2016-12-08 04:09:45','2016-12-08 04:09:45');

/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table products
# ------------------------------------------------------------

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `slug` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `price` float NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT '',
  `stock` int(11) NOT NULL,
  `category` int(11) DEFAULT NULL,
  `featured` enum('y','n') DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;

INSERT INTO `products` (`id`, `title`, `slug`, `description`, `price`, `image`, `stock`, `category`, `featured`, `created_at`, `updated_at`)
VALUES
	(1,'Diamond Ring','diamond-ring','Raising say express had chiefly detract demands she. ',999,'/images/diamondring.jpg',96,1,'y',NULL,'2016-12-08 04:08:04'),
	(2,'Ruby Ring','ruby-ring','Raising say express had chiefly detract demands she. ',999,'/images/diamondring.jpg',100,1,'y',NULL,'2016-11-27 21:26:46'),
	(3,'Emerald Ring','emerald-ring','Raising say express had chiefly detract demands she. ',1001,'/images/diamondring.jpg',98,2,'y',NULL,'2016-12-08 04:09:45'),
	(4,'Peridot Ring','peridot-ring','Raising say express had chiefly detract demands she. ',999,'/images/diamondring.jpg',99,2,'y',NULL,'2016-12-06 23:52:09'),
	(5,'Turquoise Ring','turquoise-ring','Raising say express had chiefly detract demands she. ',999,'/images/diamondring.jpg',99,2,'',NULL,'2016-12-06 23:36:35');

/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
