-- MySQL dump 10.17  Distrib 10.3.13-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: sitedotfree
-- ------------------------------------------------------
-- Server version	10.3.13-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add choice',1,'add_choice'),(2,'Can change choice',1,'change_choice'),(3,'Can delete choice',1,'delete_choice'),(4,'Can view choice',1,'view_choice'),(5,'Can add question',2,'add_question'),(6,'Can change question',2,'change_question'),(7,'Can delete question',2,'delete_question'),(8,'Can view question',2,'view_question'),(9,'Can add log entry',3,'add_logentry'),(10,'Can change log entry',3,'change_logentry'),(11,'Can delete log entry',3,'delete_logentry'),(12,'Can view log entry',3,'view_logentry'),(13,'Can add permission',4,'add_permission'),(14,'Can change permission',4,'change_permission'),(15,'Can delete permission',4,'delete_permission'),(16,'Can view permission',4,'view_permission'),(17,'Can add group',5,'add_group'),(18,'Can change group',5,'change_group'),(19,'Can delete group',5,'delete_group'),(20,'Can view group',5,'view_group'),(21,'Can add user',6,'add_user'),(22,'Can change user',6,'change_user'),(23,'Can delete user',6,'delete_user'),(24,'Can view user',6,'view_user'),(25,'Can add content type',7,'add_contenttype'),(26,'Can change content type',7,'change_contenttype'),(27,'Can delete content type',7,'delete_contenttype'),(28,'Can view content type',7,'view_contenttype'),(29,'Can add session',8,'add_session'),(30,'Can change session',8,'change_session'),(31,'Can delete session',8,'delete_session'),(32,'Can view session',8,'view_session');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$120000$Ma1qErt26MJV$+FsFdF8p/KdP/Fxnj7ySndnMYt33lChvP9Wq7KpSTyw=','2019-04-07 03:04:59.371489',1,'mogekoff','','','mogekoff@protonmail.ch',1,1,'2019-04-07 03:04:32.949935');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `object_repr` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2019-04-07 03:08:50.861171','2','Wtf??',1,'[{\"added\": {}}]',2,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (3,'admin','logentry'),(5,'auth','group'),(4,'auth','permission'),(6,'auth','user'),(7,'contenttypes','contenttype'),(1,'hw','choice'),(2,'hw','question'),(8,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2019-04-07 02:41:47.416481'),(2,'auth','0001_initial','2019-04-07 02:41:55.134289'),(3,'admin','0001_initial','2019-04-07 02:41:56.936462'),(4,'admin','0002_logentry_remove_auto_add','2019-04-07 02:41:56.981732'),(5,'admin','0003_logentry_add_action_flag_choices','2019-04-07 02:41:57.031559'),(6,'contenttypes','0002_remove_content_type_name','2019-04-07 02:41:58.217982'),(7,'auth','0002_alter_permission_name_max_length','2019-04-07 02:41:59.064369'),(8,'auth','0003_alter_user_email_max_length','2019-04-07 02:41:59.140565'),(9,'auth','0004_alter_user_username_opts','2019-04-07 02:41:59.193228'),(10,'auth','0005_alter_user_last_login_null','2019-04-07 02:41:59.759841'),(11,'auth','0006_require_contenttypes_0002','2019-04-07 02:41:59.801208'),(12,'auth','0007_alter_validators_add_error_messages','2019-04-07 02:41:59.871023'),(13,'auth','0008_alter_user_username_max_length','2019-04-07 02:42:00.681332'),(14,'auth','0009_alter_user_last_name_max_length','2019-04-07 02:42:01.534826'),(15,'hw','0001_initial','2019-04-07 02:42:02.917382'),(16,'sessions','0001_initial','2019-04-07 02:42:03.436453');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('hxjh5yv3c6q0m2ijv7esyg82dw8cfpa0','ZTQ1ZjZmNWIwNTNlOThlMTNlMDNhYjlhNjdlN2RjMDg4NTAyOWFmNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0N2U3NjdlZTYxOTE3OWUzZmMxOWZhNTkyMzczZGMxZTY3ZDk0MTMxIn0=','2019-04-21 03:04:59.405220');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hw_choice`
--

DROP TABLE IF EXISTS `hw_choice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hw_choice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `choice_text` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `votes` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `hw_choice_question_id_e154962d_fk_hw_question_id` (`question_id`),
  CONSTRAINT `hw_choice_question_id_e154962d_fk_hw_question_id` FOREIGN KEY (`question_id`) REFERENCES `hw_question` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hw_choice`
--

LOCK TABLES `hw_choice` WRITE;
/*!40000 ALTER TABLE `hw_choice` DISABLE KEYS */;
/*!40000 ALTER TABLE `hw_choice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hw_question`
--

DROP TABLE IF EXISTS `hw_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hw_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_text` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pub_date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hw_question`
--

LOCK TABLES `hw_question` WRITE;
/*!40000 ALTER TABLE `hw_question` DISABLE KEYS */;
INSERT INTO `hw_question` VALUES (1,'What\'s up?','2019-04-07 02:54:16.354530'),(2,'Wtf??','2019-04-07 03:08:47.000000');
/*!40000 ALTER TABLE `hw_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `login` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pass` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visitors`
--

DROP TABLE IF EXISTS `visitors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `visitors` (
  `count` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`count`)
) ENGINE=InnoDB AUTO_INCREMENT=612 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visitors`
--

LOCK TABLES `visitors` WRITE;
/*!40000 ALTER TABLE `visitors` DISABLE KEYS */;
INSERT INTO `visitors` VALUES (1,'37.112.151.194','en'),(2,'::1','ru'),(3,'::1','ru'),(4,'::1','ru'),(5,'::1','ru'),(6,'41.204.96.75',''),(7,'::1','ru'),(8,'::1','ru'),(9,'::1','ru'),(10,'188.170.81.251','ru'),(11,'::1','ru'),(12,'88.200.231.47',''),(13,'::1','ru'),(14,'::1','ru'),(15,'221.231.126.2','zh'),(16,'::1','ru'),(17,'::1','ru'),(18,'::1','ru'),(19,'100.80.248.235','ru'),(20,'31.162.27.43','ru'),(21,'100.80.248.235','ru'),(22,'111.95.212.205',''),(23,'31.162.27.43','ru'),(24,'31.162.27.43','ru'),(25,'31.162.27.43','ru'),(26,'31.162.27.43','ru'),(27,'31.162.27.43','ru'),(28,'31.162.27.43','ru'),(29,'31.162.27.43','ru'),(30,'31.162.27.43','ru'),(31,'31.162.27.43','ru'),(32,'31.162.27.43','ru'),(33,'31.162.27.43','ru'),(34,'31.162.27.43','ru'),(35,'31.162.27.43','ru'),(36,'31.162.27.43','ru'),(37,'31.162.27.43','ru'),(38,'31.162.27.43','ru'),(39,'31.162.27.43','ru'),(40,'31.162.27.43','ru'),(41,'31.162.27.43','ru'),(42,'31.162.27.43','ru'),(43,'31.162.27.43','ru'),(44,'31.162.27.43','ru'),(45,'31.162.27.43','ru'),(46,'31.162.27.43','ru'),(47,'31.162.27.43','ru'),(48,'31.162.27.43','ru'),(49,'31.162.27.43','ru'),(50,'31.162.27.43','ru'),(51,'31.162.27.43','ru'),(52,'31.162.27.43','ru'),(53,'31.162.27.43','ru'),(54,'31.162.27.43','ru'),(55,'31.162.27.43','ru'),(56,'31.162.27.43','ru'),(57,'31.162.27.43','ru'),(58,'31.162.27.43','ru'),(59,'31.162.27.43','ru'),(60,'31.162.27.43','ru'),(61,'31.162.27.43','ru'),(62,'31.162.27.43','ru'),(63,'31.162.27.43','ru'),(64,'31.162.27.43','ru'),(65,'100.80.248.235','ru'),(66,'100.80.248.235','ru'),(67,'100.80.248.235','ru'),(68,'100.80.248.235','ru'),(69,'100.80.248.235','ru'),(70,'100.80.248.235','ru'),(71,'100.80.248.235','ru'),(72,'100.80.248.235','ru'),(73,'100.80.248.235','ru'),(74,'100.80.248.235','ru'),(75,'100.80.248.235','ru'),(76,'100.80.248.235','ru'),(77,'100.80.248.235','ru'),(78,'31.162.8.20','ru'),(79,'::1','ru'),(80,'::1','ru'),(81,'::1','ru'),(82,'91.239.17.253',''),(83,'100.80.248.235','ru'),(84,'218.211.168.178',''),(85,'107.170.202.134',''),(86,'93.100.234.178','en'),(87,'127.0.0.1','ru'),(88,'127.0.0.1','ru'),(89,'31.162.8.20','ru'),(90,'127.0.0.1','ru'),(91,'127.0.0.1','ru'),(92,'127.0.0.1','ru'),(93,'182.160.99.44',''),(94,'127.0.0.1','ru'),(95,'127.0.0.1','ru'),(96,'127.0.0.1','ru'),(97,'127.0.0.1','ru'),(98,'46.146.143.76','en'),(99,'127.0.0.1','ru'),(100,'127.0.0.1','ru'),(101,'127.0.0.1','ru'),(102,'127.0.0.1','ru'),(103,'127.0.0.1','ru'),(104,'127.0.0.1','ru'),(105,'127.0.0.1','ru'),(106,'37.79.130.30','en'),(107,'127.0.0.1','ru'),(108,'127.0.0.1','ru'),(109,'127.0.0.1','ru'),(110,'127.0.0.1','ru'),(111,'127.0.0.1','ru'),(112,'127.0.0.1','ru'),(113,'127.0.0.1','ru'),(114,'127.0.0.1','ru'),(115,'127.0.0.1','ru'),(116,'127.0.0.1','ru'),(117,'127.0.0.1','ru'),(118,'127.0.0.1','ru'),(119,'127.0.0.1','ru'),(120,'127.0.0.1','ru'),(121,'127.0.0.1','ru'),(122,'127.0.0.1','ru'),(123,'127.0.0.1','ru'),(124,'127.0.0.1','ru'),(125,'127.0.0.1','ru'),(126,'127.0.0.1','ru'),(127,'77.35.164.65','en'),(128,'191.241.49.213',''),(129,'127.0.0.1','ru'),(130,'127.0.0.1','ru'),(131,'127.0.0.1','ru'),(132,'127.0.0.1','ru'),(133,'127.0.0.1','ru'),(134,'127.0.0.1','ru'),(135,'127.0.0.1','ru'),(136,'94.25.180.70','ru'),(137,'94.25.180.70','ru'),(138,'94.25.180.70','ru'),(139,'94.25.180.70','ru'),(140,'172.104.100.219',''),(141,'108.178.61.58',''),(142,'107.170.196.223',''),(143,'93.100.234.178','ru'),(144,'195.211.23.206','ru'),(145,'93.100.234.178',''),(146,'93.100.234.178',''),(147,'93.100.234.178',''),(148,'93.100.234.178',''),(149,'93.100.234.178',''),(150,'93.100.234.178',''),(151,'93.100.234.178',''),(152,'93.100.234.178',''),(153,'93.100.234.178',''),(154,'93.100.234.178',''),(155,'93.100.234.178',''),(156,'93.100.234.178',''),(157,'93.100.234.178',''),(158,'93.100.234.178',''),(159,'93.100.234.178',''),(160,'93.100.234.178',''),(161,'93.100.234.178',''),(162,'93.100.234.178',''),(163,'93.100.234.178',''),(164,'93.100.234.178',''),(165,'93.100.234.178',''),(166,'93.100.234.178',''),(167,'93.100.234.178',''),(168,'93.100.234.178',''),(169,'93.100.234.178',''),(170,'93.100.234.178',''),(171,'93.100.234.178',''),(172,'93.100.234.178',''),(173,'93.100.234.178',''),(174,'93.100.234.178',''),(175,'93.100.234.178',''),(176,'93.100.234.178',''),(177,'93.100.234.178',''),(178,'93.100.234.178',''),(179,'93.100.234.178',''),(180,'93.100.234.178',''),(181,'93.100.234.178',''),(182,'93.100.234.178',''),(183,'93.100.234.178',''),(184,'93.100.234.178',''),(185,'93.100.234.178',''),(186,'93.100.234.178',''),(187,'93.100.234.178',''),(188,'93.100.234.178',''),(189,'93.100.234.178',''),(190,'93.100.234.178',''),(191,'93.100.234.178',''),(192,'93.100.234.178',''),(193,'93.100.234.178',''),(194,'93.100.234.178',''),(195,'93.100.234.178',''),(196,'93.100.234.178',''),(197,'93.100.234.178',''),(198,'93.100.234.178',''),(199,'93.100.234.178',''),(200,'93.100.234.178',''),(201,'93.100.234.178',''),(202,'93.100.234.178',''),(203,'93.100.234.178',''),(204,'93.100.234.178',''),(205,'93.100.234.178',''),(206,'93.100.234.178',''),(207,'93.100.234.178',''),(208,'93.100.234.178',''),(209,'93.100.234.178',''),(210,'93.100.234.178',''),(211,'93.100.234.178',''),(212,'93.100.234.178',''),(213,'93.100.234.178',''),(214,'93.100.234.178',''),(215,'93.100.234.178',''),(216,'93.100.234.178',''),(217,'93.100.234.178',''),(218,'93.100.234.178',''),(219,'93.100.234.178',''),(220,'93.100.234.178',''),(221,'93.100.234.178',''),(222,'93.100.234.178',''),(223,'93.100.234.178',''),(224,'93.100.234.178',''),(225,'93.100.234.178',''),(226,'93.100.234.178',''),(227,'93.100.234.178',''),(228,'93.100.234.178',''),(229,'93.100.234.178',''),(230,'93.100.234.178',''),(231,'93.100.234.178',''),(232,'93.100.234.178',''),(233,'93.100.234.178',''),(234,'93.100.234.178',''),(235,'93.100.234.178',''),(236,'93.100.234.178',''),(237,'93.100.234.178',''),(238,'93.100.234.178',''),(239,'93.100.234.178',''),(240,'93.100.234.178',''),(241,'93.100.234.178',''),(242,'93.100.234.178',''),(243,'93.100.234.178',''),(244,'93.100.234.178',''),(245,'93.100.234.178',''),(246,'93.100.234.178',''),(247,'93.100.234.178',''),(248,'93.100.234.178',''),(249,'93.100.234.178',''),(250,'93.100.234.178',''),(251,'93.100.234.178',''),(252,'93.100.234.178',''),(253,'93.100.234.178',''),(254,'93.100.234.178',''),(255,'93.100.234.178',''),(256,'93.100.234.178',''),(257,'93.100.234.178',''),(258,'93.100.234.178',''),(259,'93.100.234.178',''),(260,'93.100.234.178',''),(261,'93.100.234.178',''),(262,'93.100.234.178',''),(263,'93.100.234.178',''),(264,'93.100.234.178',''),(265,'93.100.234.178',''),(266,'93.100.234.178',''),(267,'93.100.234.178',''),(268,'93.100.234.178',''),(269,'93.100.234.178',''),(270,'93.100.234.178',''),(271,'93.100.234.178',''),(272,'93.100.234.178',''),(273,'93.100.234.178',''),(274,'93.100.234.178',''),(275,'93.100.234.178',''),(276,'93.100.234.178',''),(277,'93.100.234.178',''),(278,'93.100.234.178',''),(279,'93.100.234.178',''),(280,'93.100.234.178',''),(281,'93.100.234.178',''),(282,'93.100.234.178',''),(283,'93.100.234.178',''),(284,'93.100.234.178',''),(285,'93.100.234.178',''),(286,'93.100.234.178',''),(287,'93.100.234.178',''),(288,'93.100.234.178',''),(289,'93.100.234.178',''),(290,'93.100.234.178',''),(291,'93.100.234.178',''),(292,'93.100.234.178',''),(293,'93.100.234.178',''),(294,'93.100.234.178',''),(295,'93.100.234.178',''),(296,'93.100.234.178',''),(297,'93.100.234.178',''),(298,'93.100.234.178',''),(299,'93.100.234.178',''),(300,'93.100.234.178',''),(301,'93.100.234.178',''),(302,'93.100.234.178',''),(303,'93.100.234.178',''),(304,'93.100.234.178',''),(305,'93.100.234.178',''),(306,'93.100.234.178',''),(307,'93.100.234.178',''),(308,'93.100.234.178',''),(309,'93.100.234.178',''),(310,'93.100.234.178',''),(311,'93.100.234.178',''),(312,'93.100.234.178',''),(313,'93.100.234.178',''),(314,'93.100.234.178',''),(315,'93.100.234.178',''),(316,'93.100.234.178',''),(317,'93.100.234.178',''),(318,'93.100.234.178',''),(319,'93.100.234.178',''),(320,'93.100.234.178',''),(321,'93.100.234.178',''),(322,'93.100.234.178',''),(323,'93.100.234.178',''),(324,'93.100.234.178',''),(325,'93.100.234.178',''),(326,'93.100.234.178',''),(327,'93.100.234.178',''),(328,'93.100.234.178',''),(329,'93.100.234.178',''),(330,'93.100.234.178',''),(331,'93.100.234.178',''),(332,'93.100.234.178',''),(333,'93.100.234.178',''),(334,'93.100.234.178',''),(335,'93.100.234.178',''),(336,'93.100.234.178',''),(337,'93.100.234.178',''),(338,'93.100.234.178',''),(339,'93.100.234.178',''),(340,'93.100.234.178',''),(341,'93.100.234.178',''),(342,'93.100.234.178',''),(343,'93.100.234.178',''),(344,'93.100.234.178',''),(345,'93.100.234.178',''),(346,'93.100.234.178',''),(347,'93.100.234.178',''),(348,'93.100.234.178',''),(349,'93.100.234.178',''),(350,'93.100.234.178',''),(351,'93.100.234.178',''),(352,'93.100.234.178',''),(353,'93.100.234.178',''),(354,'93.100.234.178',''),(355,'93.100.234.178',''),(356,'93.100.234.178',''),(357,'93.100.234.178',''),(358,'93.100.234.178',''),(359,'93.100.234.178',''),(360,'93.100.234.178',''),(361,'93.100.234.178',''),(362,'93.100.234.178',''),(363,'93.100.234.178',''),(364,'93.100.234.178',''),(365,'93.100.234.178',''),(366,'93.100.234.178',''),(367,'93.100.234.178',''),(368,'93.100.234.178',''),(369,'93.100.234.178',''),(370,'93.100.234.178',''),(371,'93.100.234.178',''),(372,'93.100.234.178',''),(373,'93.100.234.178',''),(374,'93.100.234.178',''),(375,'93.100.234.178',''),(376,'93.100.234.178',''),(377,'93.100.234.178',''),(378,'93.100.234.178',''),(379,'93.100.234.178',''),(380,'93.100.234.178',''),(381,'93.100.234.178',''),(382,'93.100.234.178',''),(383,'93.100.234.178',''),(384,'93.100.234.178',''),(385,'93.100.234.178',''),(386,'93.100.234.178',''),(387,'93.100.234.178',''),(388,'93.100.234.178',''),(389,'93.100.234.178',''),(390,'93.100.234.178',''),(391,'93.100.234.178',''),(392,'93.100.234.178',''),(393,'93.100.234.178',''),(394,'93.100.234.178',''),(395,'93.100.234.178',''),(396,'93.100.234.178',''),(397,'93.100.234.178',''),(398,'93.100.234.178',''),(399,'93.100.234.178',''),(400,'93.100.234.178',''),(401,'93.100.234.178',''),(402,'93.100.234.178',''),(403,'93.100.234.178',''),(404,'93.100.234.178',''),(405,'93.100.234.178',''),(406,'93.100.234.178',''),(407,'93.100.234.178',''),(408,'93.100.234.178',''),(409,'93.100.234.178',''),(410,'93.100.234.178',''),(411,'93.100.234.178',''),(412,'93.100.234.178',''),(413,'93.100.234.178',''),(414,'93.100.234.178',''),(415,'93.100.234.178',''),(416,'93.100.234.178',''),(417,'93.100.234.178',''),(418,'93.100.234.178',''),(419,'93.100.234.178',''),(420,'93.100.234.178',''),(421,'93.100.234.178',''),(422,'93.100.234.178',''),(423,'93.100.234.178',''),(424,'93.100.234.178',''),(425,'93.100.234.178',''),(426,'93.100.234.178',''),(427,'93.100.234.178',''),(428,'93.100.234.178',''),(429,'93.100.234.178',''),(430,'93.100.234.178',''),(431,'93.100.234.178',''),(432,'93.100.234.178',''),(433,'93.100.234.178',''),(434,'93.100.234.178',''),(435,'93.100.234.178',''),(436,'93.100.234.178',''),(437,'93.100.234.178',''),(438,'93.100.234.178',''),(439,'93.100.234.178',''),(440,'93.100.234.178',''),(441,'93.100.234.178',''),(442,'93.100.234.178',''),(443,'93.100.234.178',''),(444,'93.100.234.178',''),(445,'93.100.234.178',''),(446,'93.100.234.178',''),(447,'93.100.234.178',''),(448,'93.100.234.178',''),(449,'93.100.234.178',''),(450,'93.100.234.178',''),(451,'93.100.234.178',''),(452,'93.100.234.178',''),(453,'93.100.234.178',''),(454,'93.100.234.178',''),(455,'127.0.0.1','ru'),(456,'127.0.0.1','ru'),(457,'127.0.0.1','ru'),(458,'93.100.234.178','ru'),(459,'127.0.0.1','ru'),(460,'127.0.0.1','ru'),(461,'127.0.0.1','ru'),(462,'127.0.0.1','ru'),(463,'127.0.0.1','ru'),(464,'93.100.234.178','ru'),(465,'93.100.234.178','ru'),(466,'93.100.234.178','ru'),(467,'93.100.234.178','ru'),(468,'93.100.234.178','ru'),(469,'93.100.234.178','ru'),(470,'93.100.234.178','ru'),(471,'93.100.234.178','ru'),(472,'127.0.0.1','ru'),(473,'127.0.0.1','ru'),(474,'127.0.0.1','ru'),(475,'127.0.0.1','ru'),(476,'127.0.0.1','ru'),(477,'127.0.0.1','ru'),(478,'127.0.0.1','ru'),(479,'127.0.0.1','ru'),(480,'127.0.0.1','ru'),(481,'127.0.0.1','ru'),(482,'127.0.0.1','ru'),(483,'127.0.0.1','ru'),(484,'127.0.0.1','ru'),(485,'127.0.0.1','ru'),(486,'127.0.0.1','ru'),(487,'127.0.0.1','ru'),(488,'127.0.0.1','ru'),(489,'127.0.0.1','ru'),(490,'127.0.0.1','ru'),(491,'127.0.0.1','ru'),(492,'127.0.0.1','ru'),(493,'127.0.0.1','ru'),(494,'127.0.0.1','ru'),(495,'127.0.0.1','ru'),(496,'127.0.0.1','ru'),(497,'93.100.234.178','ru'),(498,'93.100.234.178','ru'),(499,'93.100.234.178','ru'),(500,'127.0.0.1','ru'),(501,'127.0.0.1','ru'),(502,'127.0.0.1','ru'),(503,'127.0.0.1','ru'),(504,'127.0.0.1','ru'),(505,'127.0.0.1','ru'),(506,'127.0.0.1','ru'),(507,'127.0.0.1','ru'),(508,'127.0.0.1','ru'),(509,'127.0.0.1','ru'),(510,'127.0.0.1','ru'),(511,'176.213.171.90','ru'),(512,'127.0.0.1','ru'),(513,'127.0.0.1','ru'),(514,'127.0.0.1','ru'),(515,'127.0.0.1','ru'),(516,'127.0.0.1','ru'),(517,'127.0.0.1','ru'),(518,'127.0.0.1','ru'),(519,'127.0.0.1','ru'),(520,'127.0.0.1','ru'),(521,'127.0.0.1','ru'),(522,'127.0.0.1','ru'),(523,'128.14.133.58',''),(524,'127.0.0.1','ru'),(525,'127.0.0.1','ru'),(526,'127.0.0.1','ru'),(527,'127.0.0.1','ru'),(528,'127.0.0.1','ru'),(529,'127.0.0.1','ru'),(530,'5.45.207.90',''),(531,'127.0.0.1','ru'),(532,'127.0.0.1','ru'),(533,'127.0.0.1','ru'),(534,'127.0.0.1','ru'),(535,'127.0.0.1','ru'),(536,'127.0.0.1','ru'),(537,'127.0.0.1','ru'),(538,'127.0.0.1','ru'),(539,'127.0.0.1','ru'),(540,'127.0.0.1','ru'),(541,'127.0.0.1','ru'),(542,'127.0.0.1','ru'),(543,'127.0.0.1','ru'),(544,'127.0.0.1','ru'),(545,'127.0.0.1','ru'),(546,'127.0.0.1','ru'),(547,'127.0.0.1','ru'),(548,'127.0.0.1','ru'),(549,'127.0.0.1','ru'),(550,'195.211.23.206','ru'),(551,'127.0.0.1','ru'),(552,'127.0.0.1','ru'),(553,'127.0.0.1','ru'),(554,'127.0.0.1','ru'),(555,'127.0.0.1','ru'),(556,'127.0.0.1','ru'),(557,'127.0.0.1','ru'),(558,'127.0.0.1','ru'),(559,'127.0.0.1','ru'),(560,'127.0.0.1','ru'),(561,'127.0.0.1','ru'),(562,'127.0.0.1','ru'),(563,'127.0.0.1','ru'),(564,'127.0.0.1','ru'),(565,'127.0.0.1','ru'),(566,'87.117.59.172','ru'),(567,'87.117.59.172','ru'),(568,'87.117.59.172','ru'),(569,'87.117.59.172','ru'),(570,'87.117.59.172','ru'),(571,'87.117.59.172','ru'),(572,'87.117.59.172','ru'),(573,'87.117.59.172','ru'),(574,'87.117.59.172','ru'),(575,'87.117.59.172','ru'),(576,'100.80.31.214','ru'),(577,'127.0.0.1','ru'),(578,'94.25.180.41','ru'),(579,'46.146.114.60','ru'),(580,'94.25.180.41','ru'),(581,'5.56.139.158','ru'),(582,'127.0.0.1','ru'),(583,'5.140.70.251','ru'),(584,'5.140.70.251','ru'),(585,'5.140.70.251','ru'),(586,'139.162.113.204',''),(587,'93.100.234.178','ru'),(588,'195.211.23.207','ru'),(589,'127.0.0.1',''),(590,'127.0.0.1',''),(591,'127.0.0.1',''),(592,'195.211.23.216','ru'),(593,'195.211.23.206','ru'),(594,'198.108.66.96',''),(595,'127.0.0.1','ru'),(596,'127.0.0.1','ru'),(597,'195.211.23.206','ru'),(598,'94.51.208.249','ru'),(599,'127.0.0.1','ru'),(600,'195.211.23.215','ru'),(601,'95.31.126.15','ru'),(602,'127.0.0.1','ru'),(603,'95.31.126.15','ru'),(604,'95.31.126.15','ru'),(605,'95.31.126.15','ru'),(606,'127.0.0.1','ru'),(607,'127.0.0.1','ru'),(608,'127.0.0.1','ru'),(609,'18.185.111.144',''),(610,'18.185.111.144','en'),(611,'195.211.23.206','ru');
/*!40000 ALTER TABLE `visitors` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-10 23:58:46
