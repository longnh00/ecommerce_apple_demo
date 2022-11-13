-- MySQL dump 10.13  Distrib 8.0.31, for Linux (x86_64)
--
-- Host: localhost    Database: ecommerce_apple
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add userprofile',7,'add_userprofile'),(26,'Can change userprofile',7,'change_userprofile'),(27,'Can delete userprofile',7,'delete_userprofile'),(28,'Can view userprofile',7,'view_userprofile'),(29,'Can add category',8,'add_category'),(30,'Can change category',8,'change_category'),(31,'Can delete category',8,'delete_category'),(32,'Can view category',8,'view_category'),(33,'Can add product',9,'add_product'),(34,'Can change product',9,'change_product'),(35,'Can delete product',9,'delete_product'),(36,'Can view product',9,'view_product'),(37,'Can add order item',10,'add_orderitem'),(38,'Can change order item',10,'change_orderitem'),(39,'Can delete order item',10,'delete_orderitem'),(40,'Can view order item',10,'view_orderitem'),(41,'Can add order',11,'add_order'),(42,'Can change order',11,'change_order'),(43,'Can delete order',11,'delete_order'),(44,'Can view order',11,'view_order');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$390000$xpfBDEmCZjhZTZYLJWtkRH$aBNDaOONQQfX12CUIz9cfudBpPTd3sed3nfZELfyB2U=','2022-11-12 23:25:10.288463',1,'admin','','','admin@example.com',1,1,'2022-11-09 09:02:13.785420'),(3,'pbkdf2_sha256$390000$N5G4oy1PPy4rfhaHz8ZIXd$u1TDK0OPRmB0qTdr+EyDk53PEdjEMeWP3dDnV0fNjAs=','2022-11-12 10:06:49.979982',0,'longnguyen00','','','',0,1,'2022-11-12 07:23:57.610050');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2022-11-10 07:57:50.623389','1','admin',1,'[{\"added\": {}}]',7,1),(2,'2022-11-11 06:32:13.246542','1','Phone',1,'[{\"added\": {}}]',8,1),(3,'2022-11-11 06:32:22.678227','2','Tablet',1,'[{\"added\": {}}]',8,1),(4,'2022-11-11 06:32:31.214387','3','Laptop',1,'[{\"added\": {}}]',8,1),(5,'2022-11-11 06:34:04.288294','1','iPhone 14',1,'[{\"added\": {}}]',9,1),(6,'2022-11-11 06:34:41.547068','2','iPhone 14 Plus',1,'[{\"added\": {}}]',9,1),(7,'2022-11-11 06:35:32.200866','3','iPhone 14 Pro',1,'[{\"added\": {}}]',9,1),(8,'2022-11-11 06:37:08.125816','4','iPhone 14 Pro Max',1,'[{\"added\": {}}]',9,1),(9,'2022-11-11 07:15:01.277087','5','Macbook Pro 14-inch M1',1,'[{\"added\": {}}]',9,1),(10,'2022-11-12 05:17:54.463857','1','iPhone 14',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(11,'2022-11-12 05:18:04.705147','2','iPhone 14 Plus',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(12,'2022-11-12 05:18:13.337963','3','iPhone 14 Pro',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(13,'2022-11-12 05:18:23.815423','4','iPhone 14 Pro Max',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(14,'2022-11-12 07:23:21.907496','2','longnguyen00',3,'',4,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(8,'store','category'),(11,'store','order'),(10,'store','orderitem'),(9,'store','product'),(7,'userprofile','userprofile');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2022-11-09 09:01:44.343238'),(2,'auth','0001_initial','2022-11-09 09:01:47.217021'),(3,'admin','0001_initial','2022-11-09 09:01:48.098717'),(4,'admin','0002_logentry_remove_auto_add','2022-11-09 09:01:48.128161'),(5,'admin','0003_logentry_add_action_flag_choices','2022-11-09 09:01:48.156462'),(6,'contenttypes','0002_remove_content_type_name','2022-11-09 09:01:48.577884'),(7,'auth','0002_alter_permission_name_max_length','2022-11-09 09:01:48.969732'),(8,'auth','0003_alter_user_email_max_length','2022-11-09 09:01:49.049165'),(9,'auth','0004_alter_user_username_opts','2022-11-09 09:01:49.075464'),(10,'auth','0005_alter_user_last_login_null','2022-11-09 09:01:49.352821'),(11,'auth','0006_require_contenttypes_0002','2022-11-09 09:01:49.385462'),(12,'auth','0007_alter_validators_add_error_messages','2022-11-09 09:01:49.413078'),(13,'auth','0008_alter_user_username_max_length','2022-11-09 09:01:49.770731'),(14,'auth','0009_alter_user_last_name_max_length','2022-11-09 09:01:50.149294'),(15,'auth','0010_alter_group_name_max_length','2022-11-09 09:01:50.230305'),(16,'auth','0011_update_proxy_permissions','2022-11-09 09:01:50.260434'),(17,'auth','0012_alter_user_first_name_max_length','2022-11-09 09:01:50.627985'),(18,'sessions','0001_initial','2022-11-09 09:01:50.892694'),(19,'userprofile','0001_initial','2022-11-10 07:56:59.418014'),(20,'store','0001_initial','2022-11-11 06:31:14.963363'),(21,'store','0002_product_image','2022-11-12 05:07:51.674062'),(22,'store','0003_product_status','2022-11-12 08:43:40.207357'),(23,'store','0004_product_thumbnail_alter_product_image','2022-11-12 09:45:13.075230'),(24,'store','0005_order_orderitem','2022-11-13 00:48:50.580946');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('1l3yudkbcu5ilc8hf4iqp5drnki2dfct','.eJxVjEEOgyAQRe_CuiGMIBNddt8zkGEGim2jieLKePdq4qLd_vf-21SgtZawLmkOg6hegbr9bpH4ncYTyIvG56R5Gus8RH0q-qKLfkySPvfL_QsUWsrxdpAjdejQkDMWvBEy3HaI5BvrMkjL0TIwowUUmxvTRgFiT5nJxXREmeaq-m3fvxMeO4Q:1otnU0:2-T6zIPyjVSV5siMhA8Mn9UcPDJ3Y9PtTvrXNk0fjJY','2022-11-13 10:11:28.125126'),('4fmzreny8tm9o7fb94bz2x7q0oc9jhkm','.eJxVjDkOwjAUBe_iGln-8aZQ0nMG6y82DiBHipMKcXeIlALaNzPvpRJua01bz0uaRJ0VqNPvRsiP3HYgd2y3WfPc1mUivSv6oF1fZ8nPy-H-HVTs9Vs7KIRjdNGgMxaCETTsxxgxDNYVEM9kGZijhSi2DMaTAHLAwugoq_cH0hU4OA:1ot2R3:jhiMzRICLwWMj_OmpFk5QMg2RDuyvrwPrK7MpBQYb4E','2022-11-24 07:57:17.090487'),('igex8n9xlldfjuo9kylgjj5nxlh3v154','.eJxVjDkOwjAUBe_iGln-8aZQ0nMG6y82DiBHipMKcXeIlALaNzPvpRJua01bz0uaRJ0VqNPvRsiP3HYgd2y3WfPc1mUivSv6oF1fZ8nPy-H-HVTs9Vs7KIRjdNGgMxaCETTsxxgxDNYVEM9kGZijhSi2DMaTAHLAwugoq_cH0hU4OA:1otNZZ:5ZnuutoQUUwt41WTNj-sNf0xRk2JJuTsNWLdUi84CjA','2022-11-25 06:31:29.332146'),('ve4wxui4owlxvsi8ro58kdb1f2yiuj2s','.eJxtzjEOgzAMBdC7eEYowYEIxu49A3KcpNBWQYUwVCh3L6kYitTFg9_3lzfoaY1Dvy5u7kcLHUgofneG-OFCBnuncJtKnkKcR1PmSHnoUl4n656XI3sqGGgZ9mslvaFWKy1ICZSNsCS4brWmpkLlpa3ZIEtmjVJb9JWojZXEDXkmZdxeyjRH6DZQebxWCnGMb-iwgO_jClIB-mzyMJ0N_xtCSukDK4ZTNw:1ou1GY:yjXo3x3f3lLA0P4DixL8eetFLIzVSq7Ts6BbrSrsxKY','2022-11-14 00:54:30.076633'),('xuztrg35fxpn3cykeqhyno1e5ymrmqv6','e30:1otkfB:0yhUQUIJs-TG4RsGS4xZOsFuqQCI1ZfgmrQHEThOu-M','2022-11-26 07:10:49.316773');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_category`
--

DROP TABLE IF EXISTS `store_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `store_category_slug_2d349264` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_category`
--

LOCK TABLES `store_category` WRITE;
/*!40000 ALTER TABLE `store_category` DISABLE KEYS */;
INSERT INTO `store_category` VALUES (1,'Phone','phone'),(2,'Tablet','tablet'),(3,'Laptop','laptop');
/*!40000 ALTER TABLE `store_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_order`
--

DROP TABLE IF EXISTS `store_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_order` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `mobile` int NOT NULL,
  `paid_amount` int DEFAULT NULL,
  `is_paid` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `created_by_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `store_order_created_by_id_4599b5d5_fk_auth_user_id` (`created_by_id`),
  CONSTRAINT `store_order_created_by_id_4599b5d5_fk_auth_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_order`
--

LOCK TABLES `store_order` WRITE;
/*!40000 ALTER TABLE `store_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `store_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_orderitem`
--

DROP TABLE IF EXISTS `store_orderitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_orderitem` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `price` int NOT NULL,
  `quantity` int NOT NULL,
  `order_id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `store_orderitem_order_id_acf8722d_fk_store_order_id` (`order_id`),
  KEY `store_orderitem_product_id_f2b098d4_fk_store_product_id` (`product_id`),
  CONSTRAINT `store_orderitem_order_id_acf8722d_fk_store_order_id` FOREIGN KEY (`order_id`) REFERENCES `store_order` (`id`),
  CONSTRAINT `store_orderitem_product_id_f2b098d4_fk_store_product_id` FOREIGN KEY (`product_id`) REFERENCES `store_product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_orderitem`
--

LOCK TABLES `store_orderitem` WRITE;
/*!40000 ALTER TABLE `store_orderitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `store_orderitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_product`
--

DROP TABLE IF EXISTS `store_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_product` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `description` longtext NOT NULL,
  `price` int NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `category_id` bigint NOT NULL,
  `user_id` int NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `status` varchar(50) NOT NULL,
  `thumbnail` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `store_product_category_id_574bae65_fk_store_category_id` (`category_id`),
  KEY `store_product_user_id_58ba19a0_fk_auth_user_id` (`user_id`),
  KEY `store_product_slug_6de8ee4b` (`slug`),
  CONSTRAINT `store_product_category_id_574bae65_fk_store_category_id` FOREIGN KEY (`category_id`) REFERENCES `store_category` (`id`),
  CONSTRAINT `store_product_user_id_58ba19a0_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_product`
--

LOCK TABLES `store_product` WRITE;
/*!40000 ALTER TABLE `store_product` DISABLE KEYS */;
INSERT INTO `store_product` VALUES (1,'iPhone 14','iphone-14','The iPhone 14 features a 6.1-inch (155 mm) display with Super Retina XDR OLED technology at a resolution of 2532 × 1170 pixels and a pixel density of about 460 PPI with a refresh rate of 60Hz.',79900,'2022-11-11 06:34:04.285730','2022-11-12 09:50:51.792269',1,1,'uploads/product_images/apple-iphone-14-3.jpg','active','uploads/product_images/thumbnail/apple-iphone-14-3.jpg'),(2,'iPhone 14 Plus','iphone-14-plus','The iPhone 14 Plus measures 6.33 by 3.07 by 0.31 inches and weighs in at 7.16 ounces. It\'s noticeably bigger than the iPhone 14 (5.78 by 2.82 by 0.31 inches, 6.07 ounces), but just about even with the iPhone 14 Pro Max in terms of dimensions (6.33 by 3.05 by 0.31 inches) if not weight (8.47 ounces).',89900,'2022-11-11 06:34:41.544982','2022-11-12 09:50:51.765180',1,1,'uploads/product_images/apple-iphone-14-plus-3.jpg','active','uploads/product_images/thumbnail/apple-iphone-14-plus-3.jpg'),(3,'iPhone 14 Pro','iphone-14-pro','The iPhone 14 Pro comes with a 6.1-inch ProMotion OLED display with 1-120Hz adaptive refresh rates, Dolby Vision, and a Face ID Dynamic Island that allows Apple to utilize an always-on display feature, which dims the lock screen similarly to an Apple Watch. The display has a peak brightness of up to 2,000 nits.',99900,'2022-11-11 06:35:32.193401','2022-11-12 09:50:51.740403',1,1,'uploads/product_images/apple-iphone-14-pro-3.jpg','active','uploads/product_images/thumbnail/apple-iphone-14-pro-3.jpg'),(4,'iPhone 14 Pro Max','iphone-14-pro-max','The iPhone 14 Pro Max is essentially the larger version of the iPhone 14 Pro. As compared to the normal iPhone 14, the Pro Max has some important upgrades such as the A16 Bionic chip, up to 1TB storage, ProMotion and always-on display, 1,600 peak HDR brightness, up to 29 hours of video playback, and a more advanced camera system. Specifically, the main camera is upgraded to a 48MP camera with a 65% larger quad-pixel sensor and 2nd-gen sensor-shift optical image stabilization. The new Photonic Engine takes computational photography to the next level, resulting in much better performance in low-light condition across all 3 cameras.',109900,'2022-11-11 06:37:08.123790','2022-11-12 09:50:51.712565',1,1,'uploads/product_images/apple-iphone-14-pro-max-1.jpg','active','uploads/product_images/thumbnail/apple-iphone-14-pro-max-1.jpg'),(5,'Macbook Pro 14-inch M1','macbook-pro-14-m1','The 14-inch MacBook Pro is 0.61 by 12.3 by 8.7 inches (HWD) and weighs 3.5 pounds. That takes it above the 3-pound limit we typically use to delineate whether or not a laptop is in the “ultraportable” category, to which the 13-inch MacBook Pro and the MacBook Air undoubtedly belong.',199900,'2022-11-11 07:15:01.271977','2022-11-12 09:50:51.683333',3,1,'uploads/product_images/61vFO3R5UNL._AC_SX342_.jpg','active','uploads/product_images/thumbnail/61vFO3R5UNL._AC_SX342_.jpg'),(6,'iPad 10.9 inch','ipad-109-inch','iPad 10.9 inch (10th generation)\r\niPad 10.9 inch (10th generation)',44900,'2022-11-12 08:15:50.496335','2022-11-12 08:43:57.976545',2,1,'uploads/product_images/apple-ipad-10-2022-0.jpg','deleted',NULL),(7,'Macbook Pro 16-inch M1','macbook-pro-16-inch-m1','',249900,'2022-11-12 10:01:44.538082','2022-11-12 10:02:24.636336',3,1,'uploads/product_images/61vFO3R5UNL._AC_SX342__fT2uZY2.jpg','active','uploads/product_images/thumbnail/61vFO3R5UNL._AC_SX342__fT2uZY2.jpg'),(8,'iPad 10.9-inch (10th generation)','ipad-109-inch-10th-generation','',44900,'2022-11-12 10:02:20.653741','2022-11-12 10:02:24.603793',2,1,'uploads/product_images/apple-ipad-10-2022-0_mKKVX9A.jpg','active','uploads/product_images/thumbnail/apple-ipad-10-2022-0_mKKVX9A.jpg');
/*!40000 ALTER TABLE `store_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userprofile_userprofile`
--

DROP TABLE IF EXISTS `userprofile_userprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userprofile_userprofile` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `userprofile_userprofile_user_id_59dda034_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userprofile_userprofile`
--

LOCK TABLES `userprofile_userprofile` WRITE;
/*!40000 ALTER TABLE `userprofile_userprofile` DISABLE KEYS */;
INSERT INTO `userprofile_userprofile` VALUES (1,1),(2,3);
/*!40000 ALTER TABLE `userprofile_userprofile` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-13 14:24:28
