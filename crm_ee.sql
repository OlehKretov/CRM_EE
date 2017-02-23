-- MySQL dump 10.13  Distrib 5.5.50, for Win32 (x86)
--
-- Host: localhost    Database: crm_ee
-- ------------------------------------------------------
-- Server version	5.5.50

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
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client` (
  `client_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `client_fio` varchar(255) NOT NULL,
  `client_phone` varchar(50) DEFAULT NULL,
  `client_email` varchar(50) NOT NULL DEFAULT '',
  `client_comment` text NOT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (1,'Галина','050-325-77-11','','муж Андрей 050-300-20-98'),(2,'Беделов Борис Алексеевич','050-284-41-85','','');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_equipment`
--

DROP TABLE IF EXISTS `client_equipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client_equipment` (
  `client_equipment_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) NOT NULL,
  `equipment_id` bigint(20) NOT NULL,
  PRIMARY KEY (`client_equipment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_equipment`
--

LOCK TABLES `client_equipment` WRITE;
/*!40000 ALTER TABLE `client_equipment` DISABLE KEYS */;
INSERT INTO `client_equipment` VALUES (1,1,1),(2,1,24),(3,2,5),(4,2,21),(5,2,48);
/*!40000 ALTER TABLE `client_equipment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipment`
--

DROP TABLE IF EXISTS `equipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equipment` (
  `equipment_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `equip_name` varchar(255) NOT NULL,
  PRIMARY KEY (`equipment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipment`
--

LOCK TABLES `equipment` WRITE;
/*!40000 ALTER TABLE `equipment` DISABLE KEYS */;
INSERT INTO `equipment` VALUES (1,'NoName RO-5'),(2,'NoName RO-6'),(3,'Leader RO-5'),(4,'Leader RO-5P'),(5,'Leader RO-6'),(6,'Leader RO-6P'),(7,'Filter1 RO-5'),(8,'Filter1 RO-6'),(9,'Filter1 RO-6P'),(10,'Filter1 RO-5P'),(11,'Ecosoft RO-5'),(12,'Ecosoft RO-6'),(13,'Ecosoft RO-6P'),(14,'Ecosoft RO-5P'),(15,'Ecosoft PURE RO-6P'),(16,'NoName RO-5P'),(17,'NoName RO-6P'),(18,'Ecosoft RObust 1000'),(19,'FS-1035-U'),(20,'FS-1035-UC'),(21,'FS-1054-U'),(22,'FS-1252-U'),(23,'FS-1354-U'),(24,'FS-1465-U'),(25,'FS-1665-U'),(26,'FS-2162-U'),(27,'FS-1054-UT'),(28,'FS-1252-UT'),(29,'FS-2162-UT'),(30,'FS-0844-EM'),(31,'FS-1035-EM'),(32,'FS-1054-EM'),(33,'FS-1252-EM'),(34,'FS-1354-EM'),(35,'FS-1465-EM'),(36,'FS-1665-EM'),(37,'FS-2162-EM'),(38,'FS-1035-CR'),(39,'FS-1054-CR'),(40,'FS-1252-CR'),(41,'FS-1354-CR'),(42,'FS-1465-CR'),(43,'FS-1665-CR'),(44,'FS-2162-CR'),(45,'FS-1354-CR-M'),(46,'Air-1035'),(47,'FS-1252-CR-Air'),(48,'FS-1354-CR-Air');
/*!40000 ALTER TABLE `equipment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipment_address`
--

DROP TABLE IF EXISTS `equipment_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equipment_address` (
  `equip_adds_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `equip_address` varchar(255) NOT NULL,
  `client_id` bigint(20) NOT NULL,
  PRIMARY KEY (`equip_adds_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipment_address`
--

LOCK TABLES `equipment_address` WRITE;
/*!40000 ALTER TABLE `equipment_address` DISABLE KEYS */;
INSERT INTO `equipment_address` VALUES (1,'г. Харьков, ул. Сидора Ковпака, дом 287',1),(2,'г. Харьков, Большая Даниловка, ул. Низовая, дом 8. Место установки - Баня.',2),(3,'г. Харьков, Большая Даниловка, ул. Низовая, дом 8. Место установки - Дом.',2);
/*!40000 ALTER TABLE `equipment_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipment_address_equipment`
--

DROP TABLE IF EXISTS `equipment_address_equipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equipment_address_equipment` (
  `equip_adds_equip_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `equip_adds_id` bigint(20) NOT NULL,
  `equipment_id` bigint(20) NOT NULL,
  PRIMARY KEY (`equip_adds_equip_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipment_address_equipment`
--

LOCK TABLES `equipment_address_equipment` WRITE;
/*!40000 ALTER TABLE `equipment_address_equipment` DISABLE KEYS */;
INSERT INTO `equipment_address_equipment` VALUES (1,1,1),(2,1,24),(3,2,21),(4,3,21),(5,3,5),(6,3,48);
/*!40000 ALTER TABLE `equipment_address_equipment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipment_install_date`
--

DROP TABLE IF EXISTS `equipment_install_date`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equipment_install_date` (
  `equip_install_date_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `equipment_id` bigint(20) NOT NULL,
  `install_date_id` bigint(20) NOT NULL,
  `equip_adds_id` bigint(20) NOT NULL,
  PRIMARY KEY (`equip_install_date_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipment_install_date`
--

LOCK TABLES `equipment_install_date` WRITE;
/*!40000 ALTER TABLE `equipment_install_date` DISABLE KEYS */;
INSERT INTO `equipment_install_date` VALUES (1,5,1,3),(2,21,2,3),(3,48,2,3),(4,21,3,2);
/*!40000 ALTER TABLE `equipment_install_date` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `install_date`
--

DROP TABLE IF EXISTS `install_date`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `install_date` (
  `install_date_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `install_date` date NOT NULL,
  `equip_adds_id` bigint(20) NOT NULL,
  PRIMARY KEY (`install_date_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `install_date`
--

LOCK TABLES `install_date` WRITE;
/*!40000 ALTER TABLE `install_date` DISABLE KEYS */;
INSERT INTO `install_date` VALUES (1,'2015-09-15',3),(2,'2013-12-27',3),(3,'2015-04-23',2);
/*!40000 ALTER TABLE `install_date` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service`
--

DROP TABLE IF EXISTS `service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `service` (
  `service_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `equipment_id` bigint(20) NOT NULL,
  `service_date` date NOT NULL,
  `service_interval` varchar(255) DEFAULT '',
  `service_description` text NOT NULL,
  `service_status` enum('not_done','done') NOT NULL,
  `equip_adds_id` bigint(20) NOT NULL,
  PRIMARY KEY (`service_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service`
--

LOCK TABLES `service` WRITE;
/*!40000 ALTER TABLE `service` DISABLE KEYS */;
INSERT INTO `service` VALUES (1,1,'2013-12-11','','Замена на обратном осмосе мембраны, постфильтра, накопительной емкости, крана.','done',1),(2,1,'2014-07-02','','Замена картриджей на осмосе.','done',1),(3,1,'2015-01-14','','Замена картриджей на осмосе, замена постфильтра.','done',1),(4,24,'2015-01-14','','Замен картриджа ВВ-20, сервис умягчителя.','done',1),(5,1,'2015-07-18','','Замена картриджей.','done',1),(6,1,'2016-01-16','','Замена картриджей и постфильтра.','done',1),(7,24,'2016-01-16','','Замена картриджа ВВ-20. Сервис умягчителя','done',1),(8,24,'2016-07-19','','Замена картриджа ВВ-20. Сервис умягчителя','done',1),(9,1,'2016-07-19','','Замена картриджей','done',1),(10,1,'2017-01-19','','Замена картриджей, постфильтра','not_done',1),(11,24,'2017-01-19','','Замена картриджа ВВ-20, сервис умягчителя','not_done',1),(12,21,'2014-05-27','','Сервис фильтра, замена картриджа ВВ-20','done',3),(13,48,'2014-05-27','','Сервис фильтра.','done',3),(14,21,'2015-03-21','','Сервис фильтра, замена картриджа ВВ-20. Обеззараживание водонагревателя VIESSMANN','done',3),(15,48,'2015-03-21','','Сервис фильтра.','done',3),(16,21,'2015-09-16','','Сервис фильтра, замена картриджа ВВ-20','done',3),(17,48,'2015-09-16','','Сервис фильтра.','done',3),(18,21,'2015-09-16','','Сервис фильтра, замена картриджа ВВ-20','done',2),(19,5,'2016-09-08','','Замена картриджей, постфильтра, минерализатора','done',3),(20,21,'2016-09-08','','Сервис фильтра, замена картриджа ВВ-20','done',3),(21,48,'2016-09-08','','Сервис фильтра.','done',3),(22,21,'2016-09-08','','Сервис фильтра, замена картриджа ВВ-20','done',2),(23,48,'2016-12-28','','Внеплановая замена картрилжа ВВ-20.','done',3),(24,5,'2016-03-13','','Замена картриджей.','done',3),(25,21,'2016-03-13','','Сервис фильтра, замена картриджа ВВ-20','done',3),(26,48,'2016-03-13','','Сервис фильтра.','done',3),(27,21,'2016-03-13','','Сервис фильтра, замена картриджа ВВ-20','done',2),(28,5,'2017-03-08','','Замена картриджей.','not_done',3),(29,21,'2017-03-08','','Сервис фильтра, замена картриджа ВВ-20','not_done',3),(30,48,'2017-03-08','','Сервис фильтра.','not_done',3),(31,21,'2017-03-08','','Сервис фильтра, замена картриджа ВВ-20','not_done',2);
/*!40000 ALTER TABLE `service` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-02-23 14:52:41
