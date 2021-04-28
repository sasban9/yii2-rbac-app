-- MySQL dump 10.13  Distrib 5.7.33, for Linux (x86_64)
--
-- Host: localhost    Database: yii2basic
-- ------------------------------------------------------
-- Server version	5.7.33-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_assignment`
--

DROP TABLE IF EXISTS `auth_assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `auth_assignment_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_assignment`
--

LOCK TABLES `auth_assignment` WRITE;
/*!40000 ALTER TABLE `auth_assignment` DISABLE KEYS */;
INSERT INTO `auth_assignment` VALUES ('/user-management/*',1,NULL),('Admin',1,NULL),('GroupAdmin',6,1619604188),('GroupAdmin',11,1619604916),('GroupAnalyst',9,1619604732),('GroupDeveloper',8,1619604686),('GroupSupportSpecialist',7,1619604699),('GroupViewOnly',10,1619604765);
/*!40000 ALTER TABLE `auth_assignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_item`
--

DROP TABLE IF EXISTS `auth_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_item` (
  `name` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `description` text,
  `rule_name` varchar(64) DEFAULT NULL,
  `data` text,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `group_code` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `rule_name` (`rule_name`),
  KEY `idx-auth_item-type` (`type`),
  KEY `fk_auth_item_group_code` (`group_code`),
  CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_auth_item_group_code` FOREIGN KEY (`group_code`) REFERENCES `auth_item_group` (`code`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_item`
--

LOCK TABLES `auth_item` WRITE;
/*!40000 ALTER TABLE `auth_item` DISABLE KEYS */;
INSERT INTO `auth_item` VALUES ('/*',3,NULL,NULL,NULL,1619525362,1619525362,NULL),('/debug/*',3,NULL,NULL,NULL,1619603189,1619603189,NULL),('/debug/default/*',3,NULL,NULL,NULL,1619603189,1619603189,NULL),('/debug/default/db-explain',3,NULL,NULL,NULL,1619603189,1619603189,NULL),('/debug/default/download-mail',3,NULL,NULL,NULL,1619603189,1619603189,NULL),('/debug/default/index',3,NULL,NULL,NULL,1619603189,1619603189,NULL),('/debug/default/toolbar',3,NULL,NULL,NULL,1619603189,1619603189,NULL),('/debug/default/view',3,NULL,NULL,NULL,1619603189,1619603189,NULL),('/debug/user/*',3,NULL,NULL,NULL,1619603189,1619603189,NULL),('/debug/user/reset-identity',3,NULL,NULL,NULL,1619603189,1619603189,NULL),('/debug/user/set-identity',3,NULL,NULL,NULL,1619603189,1619603189,NULL),('/gii/*',3,NULL,NULL,NULL,1619525363,1619525363,NULL),('/gii/default/*',3,NULL,NULL,NULL,1619525363,1619525363,NULL),('/gii/default/action',3,NULL,NULL,NULL,1619525363,1619525363,NULL),('/gii/default/diff',3,NULL,NULL,NULL,1619525363,1619525363,NULL),('/gii/default/index',3,NULL,NULL,NULL,1619525363,1619525363,NULL),('/gii/default/preview',3,NULL,NULL,NULL,1619525363,1619525363,NULL),('/gii/default/view',3,NULL,NULL,NULL,1619525363,1619525363,NULL),('/site/*',3,NULL,NULL,NULL,1619603187,1619603187,NULL),('/site/about',3,NULL,NULL,NULL,1619603188,1619603188,NULL),('/site/captcha',3,NULL,NULL,NULL,1619603188,1619603188,NULL),('/site/contact',3,NULL,NULL,NULL,1619603188,1619603188,NULL),('/site/error',3,NULL,NULL,NULL,1619603188,1619603188,NULL),('/site/index',3,NULL,NULL,NULL,1619603188,1619603188,NULL),('/site/login',3,NULL,NULL,NULL,1619603188,1619603188,NULL),('/site/logout',3,NULL,NULL,NULL,1619603188,1619603188,NULL),('/user-management/*',3,NULL,NULL,NULL,1619525363,1619525363,NULL),('/user-management/auth-item-group/*',3,NULL,NULL,NULL,1619603194,1619603194,NULL),('/user-management/auth-item-group/bulk-activate',3,NULL,NULL,NULL,1619603194,1619603194,NULL),('/user-management/auth-item-group/bulk-deactivate',3,NULL,NULL,NULL,1619603194,1619603194,NULL),('/user-management/auth-item-group/bulk-delete',3,NULL,NULL,NULL,1619603194,1619603194,NULL),('/user-management/auth-item-group/create',3,NULL,NULL,NULL,1619603194,1619603194,NULL),('/user-management/auth-item-group/delete',3,NULL,NULL,NULL,1619603194,1619603194,NULL),('/user-management/auth-item-group/grid-page-size',3,NULL,NULL,NULL,1619603194,1619603194,NULL),('/user-management/auth-item-group/grid-sort',3,NULL,NULL,NULL,1619603194,1619603194,NULL),('/user-management/auth-item-group/index',3,NULL,NULL,NULL,1619603195,1619603195,NULL),('/user-management/auth-item-group/toggle-attribute',3,NULL,NULL,NULL,1619603194,1619603194,NULL),('/user-management/auth-item-group/update',3,NULL,NULL,NULL,1619603194,1619603194,NULL),('/user-management/auth-item-group/view',3,NULL,NULL,NULL,1619603195,1619603195,NULL),('/user-management/auth/*',3,NULL,NULL,NULL,1619603195,1619603195,NULL),('/user-management/auth/captcha',3,NULL,NULL,NULL,1619603196,1619603196,NULL),('/user-management/auth/change-own-password',3,NULL,NULL,NULL,1619525363,1619525363,NULL),('/user-management/auth/confirm-email',3,NULL,NULL,NULL,1619603195,1619603195,NULL),('/user-management/auth/confirm-email-receive',3,NULL,NULL,NULL,1619603195,1619603195,NULL),('/user-management/auth/confirm-registration-email',3,NULL,NULL,NULL,1619603196,1619603196,NULL),('/user-management/auth/login',3,NULL,NULL,NULL,1619603196,1619603196,NULL),('/user-management/auth/logout',3,NULL,NULL,NULL,1619603196,1619603196,NULL),('/user-management/auth/password-recovery',3,NULL,NULL,NULL,1619603195,1619603195,NULL),('/user-management/auth/password-recovery-receive',3,NULL,NULL,NULL,1619603195,1619603195,NULL),('/user-management/auth/registration',3,NULL,NULL,NULL,1619603196,1619603196,NULL),('/user-management/permission/*',3,NULL,NULL,NULL,1619603192,1619603192,NULL),('/user-management/permission/bulk-activate',3,NULL,NULL,NULL,1619603194,1619603194,NULL),('/user-management/permission/bulk-deactivate',3,NULL,NULL,NULL,1619603193,1619603193,NULL),('/user-management/permission/bulk-delete',3,NULL,NULL,NULL,1619603192,1619603192,NULL),('/user-management/permission/create',3,NULL,NULL,NULL,1619603194,1619603194,NULL),('/user-management/permission/delete',3,NULL,NULL,NULL,1619603194,1619603194,NULL),('/user-management/permission/grid-page-size',3,NULL,NULL,NULL,1619603192,1619603192,NULL),('/user-management/permission/grid-sort',3,NULL,NULL,NULL,1619603192,1619603192,NULL),('/user-management/permission/index',3,NULL,NULL,NULL,1619603194,1619603194,NULL),('/user-management/permission/refresh-routes',3,NULL,NULL,NULL,1619603194,1619603194,NULL),('/user-management/permission/set-child-permissions',3,NULL,NULL,NULL,1619603194,1619603194,NULL),('/user-management/permission/set-child-routes',3,NULL,NULL,NULL,1619603194,1619603194,NULL),('/user-management/permission/toggle-attribute',3,NULL,NULL,NULL,1619603194,1619603194,NULL),('/user-management/permission/update',3,NULL,NULL,NULL,1619603194,1619603194,NULL),('/user-management/permission/view',3,NULL,NULL,NULL,1619603194,1619603194,NULL),('/user-management/role/*',3,NULL,NULL,NULL,1619603190,1619603190,NULL),('/user-management/role/bulk-activate',3,NULL,NULL,NULL,1619603191,1619603191,NULL),('/user-management/role/bulk-deactivate',3,NULL,NULL,NULL,1619603191,1619603191,NULL),('/user-management/role/bulk-delete',3,NULL,NULL,NULL,1619603191,1619603191,NULL),('/user-management/role/create',3,NULL,NULL,NULL,1619603192,1619603192,NULL),('/user-management/role/delete',3,NULL,NULL,NULL,1619603191,1619603191,NULL),('/user-management/role/grid-page-size',3,NULL,NULL,NULL,1619603190,1619603190,NULL),('/user-management/role/grid-sort',3,NULL,NULL,NULL,1619603191,1619603191,NULL),('/user-management/role/index',3,NULL,NULL,NULL,1619603191,1619603191,NULL),('/user-management/role/set-child-permissions',3,NULL,NULL,NULL,1619603192,1619603192,NULL),('/user-management/role/set-child-roles',3,NULL,NULL,NULL,1619603192,1619603192,NULL),('/user-management/role/toggle-attribute',3,NULL,NULL,NULL,1619603191,1619603191,NULL),('/user-management/role/update',3,NULL,NULL,NULL,1619603192,1619603192,NULL),('/user-management/role/view',3,NULL,NULL,NULL,1619603192,1619603192,NULL),('/user-management/user-permission/*',3,NULL,NULL,NULL,1619603190,1619603190,NULL),('/user-management/user-permission/set',3,NULL,NULL,NULL,1619525363,1619525363,NULL),('/user-management/user-permission/set-roles',3,NULL,NULL,NULL,1619525363,1619525363,NULL),('/user-management/user-visit-log/*',3,NULL,NULL,NULL,1619603189,1619603189,NULL),('/user-management/user-visit-log/bulk-activate',3,NULL,NULL,NULL,1619603190,1619603190,NULL),('/user-management/user-visit-log/bulk-deactivate',3,NULL,NULL,NULL,1619603190,1619603190,NULL),('/user-management/user-visit-log/bulk-delete',3,NULL,NULL,NULL,1619603189,1619603189,NULL),('/user-management/user-visit-log/create',3,NULL,NULL,NULL,1619603190,1619603190,NULL),('/user-management/user-visit-log/delete',3,NULL,NULL,NULL,1619603190,1619603190,NULL),('/user-management/user-visit-log/grid-page-size',3,NULL,NULL,NULL,1619603189,1619603189,NULL),('/user-management/user-visit-log/grid-sort',3,NULL,NULL,NULL,1619603189,1619603189,NULL),('/user-management/user-visit-log/index',3,NULL,NULL,NULL,1619603190,1619603190,NULL),('/user-management/user-visit-log/toggle-attribute',3,NULL,NULL,NULL,1619603190,1619603190,NULL),('/user-management/user-visit-log/update',3,NULL,NULL,NULL,1619603190,1619603190,NULL),('/user-management/user-visit-log/view',3,NULL,NULL,NULL,1619603190,1619603190,NULL),('/user-management/user/*',3,NULL,NULL,NULL,1619603190,1619603190,NULL),('/user-management/user/bulk-activate',3,NULL,NULL,NULL,1619525363,1619525363,NULL),('/user-management/user/bulk-deactivate',3,NULL,NULL,NULL,1619525363,1619525363,NULL),('/user-management/user/bulk-delete',3,NULL,NULL,NULL,1619525363,1619525363,NULL),('/user-management/user/change-password',3,NULL,NULL,NULL,1619525363,1619525363,NULL),('/user-management/user/create',3,NULL,NULL,NULL,1619525363,1619525363,NULL),('/user-management/user/delete',3,NULL,NULL,NULL,1619525363,1619525363,NULL),('/user-management/user/grid-page-size',3,NULL,NULL,NULL,1619525363,1619525363,NULL),('/user-management/user/grid-sort',3,NULL,NULL,NULL,1619603190,1619603190,NULL),('/user-management/user/index',3,NULL,NULL,NULL,1619525363,1619525363,NULL),('/user-management/user/toggle-attribute',3,NULL,NULL,NULL,1619603190,1619603190,NULL),('/user-management/user/update',3,NULL,NULL,NULL,1619525363,1619525363,NULL),('/user-management/user/view',3,NULL,NULL,NULL,1619525363,1619525363,NULL),('Admin',1,'Admin',NULL,NULL,1619525363,1619525363,NULL),('assignRolesToUsers',2,'Assign roles to users',NULL,NULL,1619525363,1619525363,'userManagement'),('bindUserToIp',2,'Bind user to IP',NULL,NULL,1619525363,1619525363,'userManagement'),('CEU01',2,'Corigan Edit User',NULL,NULL,1619530131,1619530131,'cor01'),('changeOwnPassword',2,'Change own password',NULL,NULL,1619525363,1619525363,'userCommonPermissions'),('changeUserPassword',2,'Change user password',NULL,NULL,1619525363,1619525363,'userManagement'),('commonPermission',2,'Common permission',NULL,NULL,1619525348,1619525348,NULL),('createUsers',2,'Create users',NULL,NULL,1619525363,1619525363,'userManagement'),('deleteUsers',2,'Delete users',NULL,NULL,1619525363,1619525363,'userManagement'),('editUserEmail',2,'Edit user email',NULL,NULL,1619525363,1619525363,'userManagement'),('editUsers',2,'Edit users',NULL,NULL,1619525363,1619525363,'userManagement'),('ga01',1,'Group Admin',NULL,NULL,1619529699,1619529699,NULL),('GroupAdmin',1,'Administrator',NULL,NULL,1619603806,1619603806,'userManagement'),('GroupAnalyst',1,'Analyst',NULL,NULL,1619603931,1619603931,'userManagement'),('GroupDeveloper',1,'Developer',NULL,NULL,1619603877,1619603877,'userManagement'),('GroupSupportSpecialist',1,'Support Specialist',NULL,NULL,1619603994,1619603994,'userManagement'),('GroupViewOnly',1,'View Only',NULL,NULL,1619604020,1619604020,'userManagement'),('gu01',1,'Group User',NULL,NULL,1619529732,1619529732,'userManagement'),('viewRegistrationIp',2,'View registration IP',NULL,NULL,1619525363,1619525363,'userManagement'),('viewUserEmail',2,'View user email',NULL,NULL,1619525363,1619525363,'userManagement'),('viewUserRoles',2,'View user roles',NULL,NULL,1619525363,1619525363,'userManagement'),('viewUsers',2,'View users',NULL,NULL,1619525363,1619525363,'userManagement'),('viewVisitLog',2,'View visit log',NULL,NULL,1619525363,1619525363,'userManagement');
/*!40000 ALTER TABLE `auth_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_item_child`
--

DROP TABLE IF EXISTS `auth_item_child`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_item_child` (
  `parent` varchar(64) NOT NULL,
  `child` varchar(64) NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`),
  CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_item_child`
--

LOCK TABLES `auth_item_child` WRITE;
/*!40000 ALTER TABLE `auth_item_child` DISABLE KEYS */;
INSERT INTO `auth_item_child` VALUES ('changeOwnPassword','/user-management/auth/change-own-password'),('assignRolesToUsers','/user-management/user-permission/set'),('assignRolesToUsers','/user-management/user-permission/set-roles'),('CEU01','/user-management/user/bulk-activate'),('editUsers','/user-management/user/bulk-activate'),('CEU01','/user-management/user/bulk-deactivate'),('editUsers','/user-management/user/bulk-deactivate'),('deleteUsers','/user-management/user/bulk-delete'),('changeUserPassword','/user-management/user/change-password'),('createUsers','/user-management/user/create'),('deleteUsers','/user-management/user/delete'),('viewUsers','/user-management/user/grid-page-size'),('viewUsers','/user-management/user/index'),('CEU01','/user-management/user/update'),('editUsers','/user-management/user/update'),('viewUsers','/user-management/user/view'),('Admin','assignRolesToUsers'),('ga01','assignRolesToUsers'),('GroupAdmin','assignRolesToUsers'),('assignRolesToUsers','bindUserToIp'),('ga01','bindUserToIp'),('GroupAdmin','bindUserToIp'),('GroupSupportSpecialist','bindUserToIp'),('Admin','CEU01'),('GroupAdmin','CEU01'),('GroupAnalyst','CEU01'),('GroupDeveloper','CEU01'),('GroupSupportSpecialist','CEU01'),('Admin','changeOwnPassword'),('assignRolesToUsers','changeOwnPassword'),('ga01','changeOwnPassword'),('GroupAdmin','changeOwnPassword'),('GroupAnalyst','changeOwnPassword'),('GroupDeveloper','changeOwnPassword'),('GroupSupportSpecialist','changeOwnPassword'),('GroupViewOnly','changeOwnPassword'),('gu01','changeOwnPassword'),('Admin','changeUserPassword'),('assignRolesToUsers','changeUserPassword'),('ga01','changeUserPassword'),('GroupAdmin','changeUserPassword'),('GroupSupportSpecialist','changeUserPassword'),('Admin','createUsers'),('assignRolesToUsers','createUsers'),('ga01','createUsers'),('GroupAdmin','createUsers'),('Admin','deleteUsers'),('assignRolesToUsers','deleteUsers'),('ga01','deleteUsers'),('GroupAdmin','deleteUsers'),('assignRolesToUsers','editUserEmail'),('ga01','editUserEmail'),('GroupAdmin','editUserEmail'),('GroupSupportSpecialist','editUserEmail'),('Admin','editUsers'),('assignRolesToUsers','editUsers'),('ga01','editUsers'),('GroupAdmin','editUsers'),('GroupSupportSpecialist','editUsers'),('GroupAdmin','ga01'),('GroupAdmin','GroupAnalyst'),('GroupDeveloper','GroupAnalyst'),('GroupAdmin','GroupDeveloper'),('GroupAdmin','GroupSupportSpecialist'),('GroupDeveloper','GroupSupportSpecialist'),('GroupAdmin','GroupViewOnly'),('GroupAnalyst','GroupViewOnly'),('GroupDeveloper','GroupViewOnly'),('GroupSupportSpecialist','GroupViewOnly'),('GroupAdmin','gu01'),('assignRolesToUsers','viewRegistrationIp'),('ga01','viewRegistrationIp'),('GroupAdmin','viewRegistrationIp'),('GroupAnalyst','viewRegistrationIp'),('GroupDeveloper','viewRegistrationIp'),('GroupSupportSpecialist','viewRegistrationIp'),('assignRolesToUsers','viewUserEmail'),('editUserEmail','viewUserEmail'),('ga01','viewUserEmail'),('GroupAdmin','viewUserEmail'),('GroupAnalyst','viewUserEmail'),('GroupDeveloper','viewUserEmail'),('GroupSupportSpecialist','viewUserEmail'),('GroupViewOnly','viewUserEmail'),('gu01','viewUserEmail'),('assignRolesToUsers','viewUserRoles'),('ga01','viewUserRoles'),('GroupAdmin','viewUserRoles'),('GroupAnalyst','viewUserRoles'),('GroupDeveloper','viewUserRoles'),('GroupSupportSpecialist','viewUserRoles'),('GroupViewOnly','viewUserRoles'),('Admin','viewUsers'),('assignRolesToUsers','viewUsers'),('CEU01','viewUsers'),('changeUserPassword','viewUsers'),('createUsers','viewUsers'),('deleteUsers','viewUsers'),('editUsers','viewUsers'),('ga01','viewUsers'),('GroupAdmin','viewUsers'),('GroupViewOnly','viewUsers'),('gu01','viewUsers'),('ga01','viewVisitLog'),('GroupAdmin','viewVisitLog'),('GroupAnalyst','viewVisitLog'),('GroupDeveloper','viewVisitLog'),('GroupSupportSpecialist','viewVisitLog'),('GroupViewOnly','viewVisitLog');
/*!40000 ALTER TABLE `auth_item_child` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_item_group`
--

DROP TABLE IF EXISTS `auth_item_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_item_group` (
  `code` varchar(64) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_item_group`
--

LOCK TABLES `auth_item_group` WRITE;
/*!40000 ALTER TABLE `auth_item_group` DISABLE KEYS */;
INSERT INTO `auth_item_group` VALUES ('cor01','Corigan',1619529655,1619529655),('userCommonPermissions','User common permission',1619525363,1619525363),('userManagement','User management',1619525363,1619525363);
/*!40000 ALTER TABLE `auth_item_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_rule`
--

DROP TABLE IF EXISTS `auth_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_rule` (
  `name` varchar(64) NOT NULL,
  `data` text,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_rule`
--

LOCK TABLES `auth_rule` WRITE;
/*!40000 ALTER TABLE `auth_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migration`
--

DROP TABLE IF EXISTS `migration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migration`
--

LOCK TABLES `migration` WRITE;
/*!40000 ALTER TABLE `migration` DISABLE KEYS */;
INSERT INTO `migration` VALUES ('m000000_000000_base',1619525337),('m140608_173539_create_user_table',1619525339),('m140611_133903_init_rbac',1619525342),('m140808_073114_create_auth_item_group_table',1619525347),('m140809_072112_insert_superadmin_to_user',1619525348),('m140809_073114_insert_common_permisison_to_auth_item',1619525348),('m141023_141535_create_user_visit_log',1619525351),('m141116_115804_add_bind_to_ip_and_registration_ip_to_user',1619525355),('m141121_194858_split_browser_and_os_column',1619525358),('m141201_220516_add_email_and_email_confirmed_to_user',1619525362),('m141207_001649_create_basic_user_permissions',1619525363);
/*!40000 ALTER TABLE `migration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `auth_key` varchar(32) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `confirmation_token` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `superadmin` smallint(6) DEFAULT '0',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `registration_ip` varchar(15) DEFAULT NULL,
  `bind_to_ip` varchar(255) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `email_confirmed` smallint(1) NOT NULL DEFAULT '0',
  `group_id` varchar(45) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'superadmin','QvKSZGpitqqmk7LCo2ef6k8En-sq96Is','$2y$13$2H315nQAMbPX4sloUfdjnuAw.bYkmehhL9kM0c/mADlT76aepVM6O',NULL,1,1,1619525348,1619525348,NULL,NULL,NULL,0,'0'),(6,'Niranjan','cGmf1Mf16AAu3jYQppaif29GwXEoWzrS','$2y$13$kmqTbIJsVuv14D070r1r6eIwuwNWgVLb8miIMP11kLZMGOgNE9b6O',NULL,1,0,1619603547,1619604177,'127.0.0.1','','nils.niranjan@gmail.com',0,'1'),(7,'Manthan','KN619frKP8RWR3FaQyqOQ7cD1DJ_7khJ','$2y$13$2Ao78riDxKAqmRCWqcG25O7hRXiRyBSseQ/xvG5vhy5xC9AUcQJ0m',NULL,1,0,1619604305,1619604305,'127.0.0.1','','manthan@in.com',0,'1'),(8,'Saswata','Pi9SQZkAzmfIUwXZSc20GtRKAeJOZzcB','$2y$13$BOQ1200N83abtmJMGjSBfet5aLFs8kNL65A8PI6OnAGkSAG5bEvzC',NULL,1,0,1619604679,1619604679,'127.0.0.1','','saswata@in.com',0,'1'),(9,'Aminesh','M46D2ReIrEDd_KrhflF2itk4CpiHjibA','$2y$13$3pxCfbyI.8ADG3b9ksf..u.kCWf5h/q4RggxEOFRXU1JI5L.c6F4u',NULL,1,0,1619604727,1619604727,'127.0.0.1','','aminesh@in.com',0,'1'),(10,'Abhishek','0rcEA3mPitoN5cWwLk3B9fL-sQw7_iB_','$2y$13$K.lckUxhHySmB77f1BADeOQ/FE6z8FDX2Ii25rH9Q6uAZtphRnuOO',NULL,1,0,1619604759,1619604759,'127.0.0.1','','adhishek@in.com',0,'1'),(11,'joew','PxirNKEXMkZifcHLSL_I9qmfXoRJAiUa','$2y$13$lLzJ/SQK9XXsmvKEhT.z.OGiaytP3LGUWQIMdnVRWORCplESYMoAu',NULL,1,0,1619604821,1619604821,'127.0.0.1','','joewebber@in.com',0,'2'),(12,'mattb','T387eEx717CHua_CfOoJrKym3qhRWSbh','$2y$13$CYrdSjgdI1ZaR61oYWE9s.u7jLpJvT9msPbC2EMNhDQ8IR7qw5nZC',NULL,1,0,1619604964,1619604964,'127.0.0.1','','mattb@in.com',0,'2');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_groups`
--

DROP TABLE IF EXISTS `user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_groups` (
  `id` int(11) NOT NULL,
  `group_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_groups`
--

LOCK TABLES `user_groups` WRITE;
/*!40000 ALTER TABLE `user_groups` DISABLE KEYS */;
INSERT INTO `user_groups` VALUES (0,'Admin'),(1,'Black Piano'),(2,'Corigan');
/*!40000 ALTER TABLE `user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_visit_log`
--

DROP TABLE IF EXISTS `user_visit_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_visit_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(255) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `language` char(2) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `visit_time` int(11) NOT NULL,
  `browser` varchar(30) DEFAULT NULL,
  `os` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `user_visit_log_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_visit_log`
--

LOCK TABLES `user_visit_log` WRITE;
/*!40000 ALTER TABLE `user_visit_log` DISABLE KEYS */;
INSERT INTO `user_visit_log` VALUES (1,'6087ff094efc9','127.0.0.1','en','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36',1,1619525385,'Chrome','Linux'),(2,'6087ffff8687b','127.0.0.1','en','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36',1,1619525631,'Chrome','Linux'),(3,'608802865fce1','127.0.0.1','en','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36',1,1619526278,'Chrome','Linux'),(4,'6088033eb88cc','127.0.0.1','en','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36',1,1619526462,'Chrome','Linux'),(5,'60880362ef805','127.0.0.1','en','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36',1,1619526498,'Chrome','Linux'),(6,'6088051e6181e','127.0.0.1','en','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36',1,1619526942,'Chrome','Linux'),(7,'6088053b0449b','127.0.0.1','en','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36',1,1619526971,'Chrome','Linux'),(8,'6088054ff03b7','127.0.0.1','en','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36',1,1619526991,'Chrome','Linux'),(9,'60880f24edbce','127.0.0.1','en','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36',1,1619529508,'Chrome','Linux'),(10,'608810ba4a57b','127.0.0.1','en','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36',NULL,1619529914,'Chrome','Linux'),(11,'608810c574b58','127.0.0.1','en','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36',1,1619529925,'Chrome','Linux'),(12,'608810e6d03f0','127.0.0.1','en','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36',NULL,1619529958,'Chrome','Linux'),(13,'608810f643194','127.0.0.1','en','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36',1,1619529974,'Chrome','Linux'),(14,'608811f3af008','127.0.0.1','en','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36',NULL,1619530227,'Chrome','Linux'),(15,'6088120465f33','127.0.0.1','en','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36',1,1619530244,'Chrome','Linux'),(16,'6088374807fe0','127.0.0.1','en','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36',1,1619539784,'Chrome','Linux'),(17,'6088fe23e6ce8','127.0.0.1','en','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36',1,1619590692,'Chrome','Linux'),(18,'608928884ebc4','127.0.0.1','en','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36',NULL,1619601544,'Chrome','Linux'),(19,'60892b1a5e506','127.0.0.1','en','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36',1,1619602202,'Chrome','Linux'),(20,'60892b4c3ff4c','127.0.0.1','en','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36',NULL,1619602252,'Chrome','Linux'),(21,'60892be1a99e2','127.0.0.1','en','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36',1,1619602401,'Chrome','Linux'),(22,'60892bfe22eea','127.0.0.1','en','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36',NULL,1619602430,'Chrome','Linux'),(23,'60892deaba407','127.0.0.1','en','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36',1,1619602922,'Chrome','Linux'),(24,'6089305b6c03c','127.0.0.1','en','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36',6,1619603547,'Chrome','Linux'),(25,'6089307ddf63e','127.0.0.1','en','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36',1,1619603581,'Chrome','Linux'),(26,'60893311289be','127.0.0.1','en','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36',6,1619604241,'Chrome','Linux'),(27,'608933665e34b','127.0.0.1','en','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36',1,1619604326,'Chrome','Linux'),(28,'6089338068422','127.0.0.1','en','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36',6,1619604352,'Chrome','Linux'),(29,'60893401f33a2','127.0.0.1','en','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36',1,1619604481,'Chrome','Linux'),(30,'608935347e992','127.0.0.1','en','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36',1,1619604788,'Chrome','Linux'),(31,'608935815ce79','127.0.0.1','en','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36',6,1619604865,'Chrome','Linux'),(32,'6089359e9b1ff','127.0.0.1','en','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36',11,1619604894,'Chrome','Linux'),(33,'608935aad20f7','127.0.0.1','en','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36',1,1619604906,'Chrome','Linux'),(34,'608935c8577af','127.0.0.1','en','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36',11,1619604936,'Chrome','Linux'),(35,'6089362308d5d','127.0.0.1','en','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36',6,1619605027,'Chrome','Linux'),(36,'608936b4deec3','127.0.0.1','en','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36',6,1619605172,'Chrome','Linux'),(37,'608936cfde616','127.0.0.1','en','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36',1,1619605199,'Chrome','Linux'),(38,'608936f513d10','127.0.0.1','en','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36',6,1619605237,'Chrome','Linux'),(39,'608937e666068','127.0.0.1','en','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36',6,1619605478,'Chrome','Linux'),(40,'608937fe97860','127.0.0.1','en','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36',1,1619605502,'Chrome','Linux'),(41,'6089383ecee72','127.0.0.1','en','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36',6,1619605566,'Chrome','Linux'),(42,'60894318a3fca','127.0.0.1','en','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36',1,1619608344,'Chrome','Linux'),(43,'6089432a953eb','127.0.0.1','en','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36',6,1619608362,'Chrome','Linux'),(44,'6089433ee25d2','127.0.0.1','en','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36',11,1619608382,'Chrome','Linux'),(45,'608943bd6a50f','127.0.0.1','en','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36',1,1619608509,'Chrome','Linux'),(46,'6089447b8d475','127.0.0.1','en','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36',6,1619608699,'Chrome','Linux'),(47,'608945861c7bb','127.0.0.1','en','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36',6,1619608966,'Chrome','Linux'),(48,'608945e588147','127.0.0.1','en','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36',1,1619609061,'Chrome','Linux'),(49,'6089462a50148','127.0.0.1','en','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36',6,1619609130,'Chrome','Linux'),(50,'6089466ba4ff4','127.0.0.1','en','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36',7,1619609195,'Chrome','Linux'),(51,'6089469276378','127.0.0.1','en','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36',10,1619609234,'Chrome','Linux'),(52,'608946d20d15f','127.0.0.1','en','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36',1,1619609298,'Chrome','Linux'),(53,'6089471a6a9c2','127.0.0.1','en','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36',7,1619609370,'Chrome','Linux'),(54,'6089472b3e81a','127.0.0.1','en','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36',10,1619609387,'Chrome','Linux'),(55,'60894737594de','127.0.0.1','en','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36',6,1619609399,'Chrome','Linux');
/*!40000 ALTER TABLE `user_visit_log` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-28 17:11:59
