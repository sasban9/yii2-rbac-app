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
-- Table structure for table `Events`
--

DROP TABLE IF EXISTS `Events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `asset_type` varchar(100) DEFAULT NULL,
  `venue_address_id` int(11) DEFAULT NULL,
  `tkt_details_out_type_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `terms` varchar(100) DEFAULT NULL,
  `refund_policy` varchar(100) DEFAULT NULL,
  `privacy_policy` varchar(100) DEFAULT NULL,
  `short_url` varchar(100) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Events`
--

LOCK TABLES `Events` WRITE;
/*!40000 ALTER TABLE `Events` DISABLE KEYS */;
INSERT INTO `Events` VALUES (1,6,1,1,'1',1,1,'Test Event 1','http://htd.tld/testevent1','Test Event 1','test terms','10% refund','Privacy Policy','http://htd.tld/te1',2),(2,6,1,1,'1',1,1,'Test Event 3','http://htd.tld/testevent3','Test Event 3','test terms','10% refund','Privacy Policy','http://htd.tld/te3',2),(3,6,1,1,'1',1,1,'Test Event 2','http://htd.tld/testevent2','Test Event 2','test terms','10% refund','Privacy Policy','http://htd.tld/te2',2),(4,11,1,1,'1',1,1,'NN Test Event 1','http://htd.tld/nntestevent1','NN Test event 1','test terms','10% refund','Privacy Policy','http://htd.tld/nnte1',1),(5,11,1,1,'1',1,1,'NN Test Event 2','http://htd.tld/nntestevent2','NN Test event 2','test terms','10% refund','Privacy Policy','http://htd.tld/nnte2',1),(6,11,1,1,'1',1,1,'NN Test Event 3','http://htd.tld/nntestevent3','NN Test Event 1','test terms','10% refund','Privacy Policy','http://htd.tld/nnte3',1),(7,6,1,1,'1',1,1,'Test Event 4','http://htd.tld/testevent4','Test Event 4','test terms','10% refund','Privacy Policy','http://htd.tld/te4',2);
/*!40000 ALTER TABLE `Events` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-06 22:37:03