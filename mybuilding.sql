-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: aup
-- ------------------------------------------------------
-- Server version	5.7.10-log

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
-- Table structure for table `c3p0testtable`
--

DROP TABLE IF EXISTS `c3p0testtable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `c3p0testtable` (
  `a` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `c3p0testtable`
--

LOCK TABLES `c3p0testtable` WRITE;
/*!40000 ALTER TABLE `c3p0testtable` DISABLE KEYS */;
/*!40000 ALTER TABLE `c3p0testtable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_account`
--

DROP TABLE IF EXISTS `tbl_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_account` (
  `id_account` bigint(20) NOT NULL AUTO_INCREMENT,
  `name_account` varchar(50) NOT NULL,
  `id_customer_unit` bigint(20) NOT NULL,
  PRIMARY KEY (`id_account`),
  UNIQUE KEY `idCustomerUnit` (`id_customer_unit`,`name_account`),
  UNIQUE KEY `UK_9e7cgjsm2apwx2f2h87n6gf13` (`id_customer_unit`,`name_account`),
  KEY `FK49207C4A12B3E1FA` (`id_customer_unit`),
  CONSTRAINT `FK49207C4A12B3E1FA` FOREIGN KEY (`id_customer_unit`) REFERENCES `tbl_customer_unit` (`id_customer_unit`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_account`
--

LOCK TABLES `tbl_account` WRITE;
/*!40000 ALTER TABLE `tbl_account` DISABLE KEYS */;
INSERT INTO `tbl_account` VALUES (4,'Telecom Argentina and Paraguay',1),(3,'TIM Brazil',1),(52,'Telefonica Central and North Latam',2),(54,'Telefonica Mexico ',2),(8,'Telefonica Pacific',2),(2,'Telefonica South',2),(53,'Telefonica Venezuela ',2),(1,'VIVO',2),(50,'Claro Brazil',13),(28,'Claro Caribbean',13),(25,'Claro Central America',13),(51,'Comcel and Claro South America',13),(49,'Telmex',13),(48,'Business Development Caribbean',14),(27,'Digicel',14),(46,'LIME',14),(43,'Major Accounts',14),(44,'Nextel',14),(47,'Orange and Central Caribbean',14),(45,'Regional Accounts',14),(61,'ANTEL & South National Operators',40),(62,'BTL',40),(56,'CANTV & MOVILNET & DIGITEL Venezuela',40),(55,'Central & North National Operators',40),(58,'ENTEL Chile ',40),(59,'Growing Accounts Brazil',40),(57,'Mjor Accounts Mexico',40),(60,'OI Brazil',40);
/*!40000 ALTER TABLE `tbl_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_api_resource`
--

DROP TABLE IF EXISTS `tbl_api_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_api_resource` (
  `id_api_resource` bigint(20) NOT NULL,
  `resource_dataimport` varchar(100) NOT NULL,
  `resource_datastatus` varchar(100) NOT NULL,
  `resource_kget` varchar(100) NOT NULL,
  `resource_rop` varchar(100) NOT NULL,
  `resource_systemmonitor` varchar(100) NOT NULL,
  `resource_topology` varchar(100) NOT NULL,
  `url_api` varchar(100) NOT NULL,
  `connection_timeout` int(11) NOT NULL,
  `query_timeout` int(11) NOT NULL,
  `resource_datacompleteness` varchar(100) NOT NULL,
  PRIMARY KEY (`id_api_resource`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_api_resource`
--

LOCK TABLES `tbl_api_resource` WRITE;
/*!40000 ALTER TABLE `tbl_api_resource` DISABLE KEYS */;
INSERT INTO `tbl_api_resource` VALUES (1,'%s/data_import/single_upload','data/%s/data_status','data/%s/kget','data/%s/rop','%s/system_monitor','topology/filter?nwid=%s&nodeType=%s','http://%s:%s/aup-api/v1/',360000,36000000,'data/%s/data_completeness');
/*!40000 ALTER TABLE `tbl_api_resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_application`
--

DROP TABLE IF EXISTS `tbl_application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_application` (
  `id_application` bigint(20) NOT NULL AUTO_INCREMENT,
  `client_id` varchar(255) NOT NULL,
  `client_secret` varchar(255) DEFAULT NULL,
  `description` varchar(250) NOT NULL,
  `name` varchar(50) NOT NULL,
  `id_user` bigint(20) NOT NULL,
  PRIMARY KEY (`id_application`),
  UNIQUE KEY `UK_lspnba25gpku3nx3oecprrx8c` (`name`),
  UNIQUE KEY `UK_d95vfflisedwx57f7omnw205x` (`name`,`client_id`,`client_secret`),
  UNIQUE KEY `UK_ac4lk8lr5f3xoug9fduiqqmf6` (`name`,`client_id`,`client_secret`),
  KEY `FK_adyt8b449ods7i4s1agjwoge0` (`id_user`),
  CONSTRAINT `FK_pt3mq0n1c4fn5y2l3136bv2u7` FOREIGN KEY (`id_user`) REFERENCES `tbl_user` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=361 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_application`
--

LOCK TABLES `tbl_application` WRITE;
/*!40000 ALTER TABLE `tbl_application` DISABLE KEYS */;
INSERT INTO `tbl_application` VALUES (1,'71f89db24ec90934e5454f403545e8f2','04fd73b107f0ce3dcd6f8ed6f870b078','Short Description','AUP MANAGER',1),(4,'67a0d89a49fa6a4a45c208b01c08cf22','afc94c1a675ebc9c37e28da0f316fc0e','Netdash Dev.','Netdash_197',4),(360,'f30d46713e731fff5abf11a5d36afb6b','bd5fe04a08754e21b0e7cd4b08203bc0','Netdash Prod.','Netdash_Prod_AUP',4);
/*!40000 ALTER TABLE `tbl_application` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_authority`
--

DROP TABLE IF EXISTS `tbl_authority`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_authority` (
  `id_authority` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_register` int(11) NOT NULL DEFAULT '0',
  `role_name` varchar(50) NOT NULL,
  `id_user` bigint(20) NOT NULL,
  PRIMARY KEY (`id_authority`),
  UNIQUE KEY `idUser` (`id_user`,`role_name`,`id_register`),
  UNIQUE KEY `UK_3ic15s4bm499ytxatfyfqrdqh` (`id_user`,`role_name`,`id_register`),
  KEY `FK47CCE620C2DC38EC` (`id_user`),
  CONSTRAINT `FK47CCE620C2DC38EC` FOREIGN KEY (`id_user`) REFERENCES `tbl_user` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=818 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_authority`
--

LOCK TABLES `tbl_authority` WRITE;
/*!40000 ALTER TABLE `tbl_authority` DISABLE KEYS */;
INSERT INTO `tbl_authority` VALUES (90,0,'ROLE_ADMIN',1),(3,0,'ROLE_ADMIN',3),(4,0,'ROLE_ADMIN',4),(6,0,'ROLE_ADMIN',6),(8,0,'ROLE_ADMIN',7),(806,0,'ROLE_ADMIN',8),(120,0,'ROLE_ADMIN',44),(643,0,'ROLE_ADMIN',367),(688,0,'ROLE_ADMIN',395),(785,0,'ROLE_ADMIN',456),(786,0,'ROLE_ADMIN',457),(787,0,'ROLE_ADMIN',458),(803,0,'ROLE_ADMIN',459),(809,0,'GENERATE_REPORT',460),(816,0,'REPORT_VIEW',460),(814,0,'ROLE_ADMIN',460),(812,0,'STATUS_REPORT',460),(817,0,'VIEW_DATA_STATUS',460),(813,0,'VIEW_KGET',460),(811,0,'VIEW_REPORT',460),(815,0,'VIEW_ROP',460),(810,0,'VIEW_TOPOLOGY',460),(796,0,'ROLE_ADMIN',461),(797,0,'ROLE_ADMIN',462),(798,0,'ROLE_ADMIN',463),(800,0,'ROLE_ADMIN',464),(801,0,'ROLE_ADMIN',465),(805,0,'ROLE_ADMIN',467),(807,0,'ROLE_ADMIN',468),(808,0,'ROLE_ADMIN',469);
/*!40000 ALTER TABLE `tbl_authority` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_collect_type`
--

DROP TABLE IF EXISTS `tbl_collect_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_collect_type` (
  `id_collect_type` bigint(20) NOT NULL AUTO_INCREMENT,
  `data_output` varchar(255) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `id_feature_type` bigint(20) NOT NULL,
  `id_node_type` bigint(20) NOT NULL,
  PRIMARY KEY (`id_collect_type`),
  KEY `FKB77A04E631BCFE52` (`id_feature_type`),
  KEY `FKB77A04E674B9DA2C` (`id_node_type`),
  CONSTRAINT `FKB77A04E631BCFE52` FOREIGN KEY (`id_feature_type`) REFERENCES `tbl_feature_type` (`id_feature_type`),
  CONSTRAINT `FKB77A04E674B9DA2C` FOREIGN KEY (`id_node_type`) REFERENCES `tbl_node_type` (`id_node_type`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_collect_type`
--

LOCK TABLES `tbl_collect_type` WRITE;
/*!40000 ALTER TABLE `tbl_collect_type` DISABLE KEYS */;
INSERT INTO `tbl_collect_type` VALUES (9,'XLS','3G_CheCredits_Node','CEAMX',1,1),(12,'XLS','4G_ConnectedUsers_Network_Regional','LTEACTIVEUSERS',1,4),(13,'XLS','CE Capacity 3G','CECAPACITY3G',1,1),(14,'XLS','Connected Users 4G - Sum/Sample','CUSUM4G',1,4),(15,'XLS','Connected Users 4G Max','CUMAX4G',1,4),(16,'XLS','3G_ActiveUsers_Network_Regional','VIVOBRRNCCAP3G',1,1),(17,'XLS','3G_ActiveUsers_Network','TLFARGRNCCAP3G',1,1),(18,'XLS','4G_ConnectedUsers_Network','TLFARG4GACTIVEUSERS',1,4),(19,'XLS','4G_ConnectedUsersMax_Network_Regional','OICUMAX4G',1,4),(20,'XLS','4G_ConnectedUsersMax_Node','TELURUYCUMAX4G',1,4),(22,'XLS','3G_CheCapacity_Network','OIBR3G',1,1),(25,'XLS','4G_ConnectedUsersMax_Network','TIMBRCUMAX4G',1,4),(26,'XLS','3G_ActiveUsersAvg_Network','TLFCO3G',1,1),(27,'XLS','4G_ConnectedUsersAvg_Network','TLFCO4G',1,4),(28,'XLS','3G_CheCapacity_Node','NODEBCECAPACITY3G',1,1),(29,'XLS','3G_IubThp_ActiveUsers_Network','IUBTHPANDUSERSPEAK',1,1),(36,'XLS','4G_ConnectedUsersUsage_Node','LTECLARO',1,4),(38,'XLS','3G_CheCredits_13peaks_Node','TELCELCHE',1,1),(39,'XLS','3G_RNC_Capacity','3GRNCCAPACITY',1,1),(46,'XLS','CS Subscribers Audit','SUBSCRIBERS_AUDIT',1,5),(47,'XLS','BHCA','BHCA',1,6),(48,'XLS','3G_IubThp_Node','3G_IubThp_Node',1,1),(49,'XLS','3G_CheCapacity_Node_5Peak','3G_CheCapacity_Node_5Peak',1,1),(50,'XLS','3G_CheCapacity_13peaks_Node','TELCELCHECAP',1,1),(51,'XLS','MGW_SCC','MGW_SCC',1,2),(52,'XLS','3G_RNC_Capacity_Avg','3GRNCCAPACITYAVG',1,1),(53,'XLS','4G_connected_Users_Downlink_Uplink_Thp','3GCONNECTEDUSERSDLULTHP',1,4),(54,'XLS','3G_IubThp_ActiveUsers_Hw_Model_Network','IUBTHPANDUSERSHWMODELPEAK',1,1),(55,'XLS','4G_TimConnectedUsersAvg_Network','4GTIMCONNUSERSAVGNW',1,4),(56,'XLS','4G_TimConnectedUsersAvgUsage_Network','4GTIMCONNUSERSAVGUSAGENW',1,4),(57,'XLS','3G_ActiveUsersAvgHour_Network','TLFPE3GAVG',1,1),(58,'XLS','4G_ConnectedUsersAvgHour_Network','TLFPE4GAVG',1,4);
/*!40000 ALTER TABLE `tbl_collect_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_completeness`
--

DROP TABLE IF EXISTS `tbl_completeness`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_completeness` (
  `id_completeness` bigint(20) NOT NULL AUTO_INCREMENT,
  `minimum_completeness` double NOT NULL,
  `retry_day` int(11) NOT NULL,
  `id_country_customer` bigint(20) NOT NULL,
  PRIMARY KEY (`id_completeness`),
  KEY `FK_tjoua633ur8m926dgh4niu84p` (`id_country_customer`),
  CONSTRAINT `FK_tjoua633ur8m926dgh4niu84p` FOREIGN KEY (`id_country_customer`) REFERENCES `tbl_country_customer` (`id_country_customer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_completeness`
--

LOCK TABLES `tbl_completeness` WRITE;
/*!40000 ALTER TABLE `tbl_completeness` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_completeness` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_country`
--

DROP TABLE IF EXISTS `tbl_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_country` (
  `id_country` bigint(20) NOT NULL AUTO_INCREMENT,
  `country_name` varchar(80) NOT NULL,
  PRIMARY KEY (`id_country`),
  UNIQUE KEY `idCountry_UNIQUE` (`id_country`),
  UNIQUE KEY `countryName_UNIQUE` (`country_name`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_country`
--

LOCK TABLES `tbl_country` WRITE;
/*!40000 ALTER TABLE `tbl_country` DISABLE KEYS */;
INSERT INTO `tbl_country` VALUES (26,'Anguilla'),(43,'Antigua & Barbuda'),(60,'Antigua and Barbuda'),(2,'Argentina'),(27,'Aruba'),(44,'Bahamas'),(28,'Barbados'),(56,'Belice'),(61,'Belize'),(29,'Bermuda'),(22,'Bolivia'),(51,'Bonaire'),(1,'Brazil'),(45,'Bristish Virgin Islands (BVI)'),(30,'Cayman Islands'),(13,'Chile'),(19,'Colombia'),(3,'Costa Rica'),(21,'Cuba'),(31,'Curacao'),(47,'D.R.'),(32,'Dominica'),(24,'Dominican Republic'),(23,'Ecuador'),(16,'El Salvador'),(59,'Fibber Caribbean'),(33,'French Guiana'),(8,'French Windies'),(34,'Grenada'),(35,'Guadaloupe'),(48,'Guadeloupe'),(18,'Guatemala'),(36,'Guyana'),(37,'Haiti'),(25,'Haiti (Comcel)'),(10,'Honduras'),(38,'Jamaica'),(58,'Jamaica & Trinidad'),(49,'Martinique'),(14,'Mexico'),(46,'Montserrat'),(4,'Nicaragua'),(17,'Panama'),(9,'Paraguay'),(12,'Peru'),(20,'Puerto Rico'),(55,'Puerto Rico & US Virgin Islands'),(5,'Republica Dominicana'),(39,'Saint Kitts and Nevis'),(40,'Saint Lucia'),(41,'Saint Vincent and the Grenadines'),(50,'St. Kitts & Nevis'),(52,'St. Maarten'),(57,'St. Martin'),(53,'St. Martin & St. Barths'),(7,'Surinam'),(54,'Suriname'),(6,'T&T'),(42,'Turks and Caicos Islands'),(11,'Uruguay'),(15,'Venezuela');
/*!40000 ALTER TABLE `tbl_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_country_customer`
--

DROP TABLE IF EXISTS `tbl_country_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_country_customer` (
  `id_country_customer` bigint(20) NOT NULL AUTO_INCREMENT,
  `active` tinyint(1) NOT NULL,
  `id_customer` bigint(20) NOT NULL,
  `id_timezone` bigint(20) DEFAULT NULL,
  `id_country` bigint(20) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_country_customer`),
  KEY `FK7BE0CAB1D12DC552` (`id_customer`),
  KEY `FK7BE0CAB1981561F1` (`id_timezone`),
  KEY `FK8BE0CAB1D12DC562` (`id_country`),
  CONSTRAINT `FK7BE0CAB1981561F1` FOREIGN KEY (`id_timezone`) REFERENCES `tbl_timezone` (`id_timezone`),
  CONSTRAINT `FK7BE0CAB1D12DC552` FOREIGN KEY (`id_customer`) REFERENCES `tbl_customer` (`id_customer`),
  CONSTRAINT `FK8BE0CAB1D12DC562` FOREIGN KEY (`id_country`) REFERENCES `tbl_country` (`id_country`)
) ENGINE=InnoDB AUTO_INCREMENT=173 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_country_customer`
--

LOCK TABLES `tbl_country_customer` WRITE;
/*!40000 ALTER TABLE `tbl_country_customer` DISABLE KEYS */;
INSERT INTO `tbl_country_customer` VALUES (1,1,1,12,1),(2,1,2,12,1),(3,1,3,12,2),(4,1,4,12,1),(6,1,5,12,2),(9,1,17,9,3),(10,1,18,9,4),(12,1,19,12,5),(18,1,25,11,6),(19,1,25,12,7),(20,1,25,12,8),(22,1,67,12,9),(23,1,68,9,10),(24,1,69,12,11),(25,1,73,10,12),(26,1,72,10,12),(27,1,71,9,13),(28,1,70,9,13),(29,1,74,9,14),(30,1,75,11,15),(31,1,83,9,16),(32,1,82,9,4),(33,1,81,10,17),(34,1,80,9,3),(35,1,79,9,18),(36,1,76,10,19),(37,1,77,10,19),(38,1,78,10,19),(39,1,56,12,1),(40,1,55,12,1),(41,1,57,12,1),(42,1,65,9,14),(43,1,64,9,14),(44,1,63,9,14),(45,1,62,10,19),(46,1,61,10,12),(47,1,58,12,11),(48,1,60,9,13),(49,1,59,12,2),(50,1,66,12,20),(51,1,84,9,16),(52,1,85,9,18),(53,1,86,9,18),(54,1,87,9,18),(55,1,103,12,1),(56,1,104,12,1),(57,1,105,12,1),(58,1,106,12,1),(59,1,107,12,1),(60,1,108,12,1),(61,1,109,12,1),(62,1,110,12,1),(63,1,111,12,1),(64,1,112,12,1),(65,1,102,9,13),(66,1,100,9,14),(67,1,101,9,14),(68,1,97,11,15),(69,1,98,11,15),(70,1,99,11,15),(71,1,88,10,19),(72,1,89,10,19),(73,1,90,10,19),(74,1,91,10,19),(75,1,92,9,3),(76,1,93,9,3),(77,1,94,10,21),(78,1,95,10,21),(79,1,96,10,17),(80,1,113,12,2),(81,1,114,11,22),(82,1,115,10,23),(83,1,116,10,23),(84,1,117,10,23),(85,1,118,12,9),(86,1,119,12,11),(87,1,120,12,11),(88,1,29,12,2),(89,1,29,12,1),(90,1,29,9,13),(91,1,29,9,14),(92,1,29,10,12),(93,1,28,12,20),(94,1,27,11,22),(95,1,27,11,24),(96,1,27,10,25),(97,1,26,11,22),(98,1,26,10,19),(99,1,26,9,16),(100,1,26,9,18),(101,1,26,9,10),(102,1,26,12,9),(103,1,31,11,6),(104,1,30,10,17),(105,1,25,11,26),(106,1,25,11,27),(107,1,25,11,28),(108,1,25,11,29),(109,1,25,10,30),(110,1,25,11,31),(111,1,25,11,32),(112,1,25,9,16),(113,1,25,12,33),(114,1,25,11,34),(115,1,25,11,35),(116,1,25,11,36),(117,1,25,10,37),(118,1,25,9,10),(119,1,25,10,38),(120,1,25,10,17),(121,1,25,12,39),(122,1,25,12,40),(123,1,25,12,41),(124,1,25,10,42),(125,1,32,11,26),(126,1,32,11,43),(127,1,32,11,28),(128,1,32,10,44),(129,1,32,11,45),(130,1,32,10,30),(131,1,32,11,32),(132,1,32,11,34),(133,1,32,10,38),(134,1,32,12,46),(135,1,32,12,39),(136,1,32,12,40),(137,1,32,10,42),(138,1,33,11,32),(139,1,33,11,47),(140,1,33,12,33),(141,1,33,11,48),(142,1,33,11,49),(143,1,33,12,50),(145,1,34,11,31),(146,1,34,11,51),(147,1,34,12,52),(148,1,34,12,53),(149,1,34,12,50),(150,1,34,12,54),(151,1,36,12,55),(152,1,37,12,55),(153,1,38,11,47),(154,1,40,11,51),(155,1,42,9,56),(156,1,43,12,54),(157,1,44,11,36),(158,1,45,11,27),(159,1,46,12,57),(160,1,47,9,56),(161,1,48,11,29),(162,1,49,10,58),(163,1,50,11,59),(164,1,52,11,60),(165,1,121,11,15),(171,1,125,9,61),(172,1,126,11,20);
/*!40000 ALTER TABLE `tbl_country_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_customer`
--

DROP TABLE IF EXISTS `tbl_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_customer` (
  `id_customer` bigint(20) NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(50) NOT NULL,
  `id_account` bigint(20) NOT NULL,
  PRIMARY KEY (`id_customer`),
  UNIQUE KEY `customerName` (`customer_name`,`id_account`),
  UNIQUE KEY `UK_sfurhicw6sltu3167y7slh3fv` (`customer_name`,`id_account`),
  KEY `FK7E72D1614732AC2A` (`id_account`),
  CONSTRAINT `FK7E72D1614732AC2A` FOREIGN KEY (`id_account`) REFERENCES `tbl_account` (`id_account`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_customer`
--

LOCK TABLES `tbl_customer` WRITE;
/*!40000 ALTER TABLE `tbl_customer` DISABLE KEYS */;
INSERT INTO `tbl_customer` VALUES (61,'America Movil Peru',51),(126,'AMX Puerto Rico',25),(120,'ANCEL',61),(119,'ANTEL',61),(52,'APUA',48),(36,'ATT/Centennial',47),(127,'Automatic Test1',27),(48,'BTC Bermuda',48),(42,'BTL',48),(125,'BTL Belize ',62),(30,'C&W Panama',45),(93,'CABLETICA',55),(97,'CANTV',56),(109,'CHESF',59),(55,'CLARO BR',50),(60,'Claro CL',51),(19,'Claro Codetel PPX-N',28),(17,'Claro Costa Rica',25),(85,'Claro GT',25),(68,'Claro HND',25),(66,'CLARO PR',28),(115,'CNT',61),(77,'Colombia Telecomunicaciones',52),(50,'Columbus Networks',48),(62,'Comcel CO',51),(118,'COPACO',61),(108,'COPEL',59),(111,'CTBC',59),(84,'CTE SV',25),(110,'CTEEP',59),(58,'CTI',51),(95,'CUBACEL',55),(25,'Digicel',27),(103,'DIGINET',59),(99,'DIGITEL',56),(89,'EDATEL',55),(105,'ELECTROPAULO',59),(56,'Embratel BR',50),(57,'Embratel CDMA BR',50),(18,'Enitel GSM NI',25),(102,'ENTEL',58),(114,'ENTEL BOLIVIA',61),(90,'EPM',55),(91,'ETB',55),(94,'ETECSA',55),(49,'Flow',48),(44,'GT&T ',48),(104,'GVT',59),(92,'ICE',55),(113,'IMPSAT',61),(100,'IUSACEL',57),(101,'IUSACEL CDMA',57),(32,'LIME ',46),(26,'Millicom',43),(98,'MOVILNET',56),(3,'Movistar AR',2),(70,'Movistar CL',8),(69,'Movistar UY',2),(75,'Movistar VE',53),(29,'NII (Nextel)',44),(67,'Nucleo',4),(116,'OCP',61),(112,'OI',60),(28,'Open Mobile',43),(33,'Orange',47),(117,'PACITEL',61),(106,'PETROBRAS',59),(107,'SERCOMTEL',59),(45,'Setar ',48),(47,'Speednet ',48),(37,'Sprint ',47),(40,'Telbo ',47),(64,'TELCEL BCAM',49),(65,'TELCEL MX ',49),(78,'Telebucaramanga',52),(96,'TELECARRIER',55),(5,'Telecom Personal',4),(83,'Telefonica  ESV',52),(76,'Telefonica  Moviles Colombia',52),(81,'Telefonica  PA',52),(80,'Telefonica CR',52),(71,'Telefonica CTC CL',8),(72,'Telefonica del Peru PE',8),(1,'Telefonica Fixa',1),(79,'Telefonica GT',52),(73,'Telefonica Moviles del Peru',8),(74,'Telefonica MX',54),(82,'Telefonica NIC',52),(46,'TeleM ',48),(43,'Telesur ',48),(86,'TELGUA GT',25),(87,'TELGUA GT GSM-N',25),(59,'Telmex AR',51),(63,'TELMEX MX',49),(121,'TELVE',53),(4,'TIM',3),(38,'Tricom ',47),(27,'Trilogy ',43),(31,'TSTT',45),(88,'UNE',55),(34,'UTS',47),(2,'VIVO',1);
/*!40000 ALTER TABLE `tbl_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_customer_unit`
--

DROP TABLE IF EXISTS `tbl_customer_unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_customer_unit` (
  `id_customer_unit` bigint(20) NOT NULL AUTO_INCREMENT,
  `name_customer_unit` varchar(50) NOT NULL,
  `id_region` bigint(20) NOT NULL,
  PRIMARY KEY (`id_customer_unit`),
  UNIQUE KEY `idRegion` (`id_region`,`name_customer_unit`),
  UNIQUE KEY `UK_pajv762mu5kummw1t89wwncod` (`id_region`,`name_customer_unit`),
  KEY `FK7C218685A866D3BE` (`id_region`),
  CONSTRAINT `FK7C218685A866D3BE` FOREIGN KEY (`id_region`) REFERENCES `tbl_region` (`id_region`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_customer_unit`
--

LOCK TABLES `tbl_customer_unit` WRITE;
/*!40000 ALTER TABLE `tbl_customer_unit` DISABLE KEYS */;
INSERT INTO `tbl_customer_unit` VALUES (13,'AMTEL',1),(40,'Locals',1),(14,'Regionals',1),(2,'Telefonica',1),(1,'TIM',1);
/*!40000 ALTER TABLE `tbl_customer_unit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_data_import`
--

DROP TABLE IF EXISTS `tbl_data_import`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_data_import` (
  `id_data_import` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_time` datetime NOT NULL,
  `file_name` varchar(100) NOT NULL,
  `status` varchar(25) NOT NULL,
  `id_country_customer` bigint(20) NOT NULL,
  `id_data_source` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_data_import`),
  KEY `FK_nrlv26rlfcf7to9i503ea78fr` (`id_country_customer`),
  KEY `FK_id_data_source_idx` (`id_data_source`),
  CONSTRAINT `FK_7n0qtrkc1dv8nf5kd0ctsqsic` FOREIGN KEY (`id_country_customer`) REFERENCES `tbl_country_customer` (`id_country_customer`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_data_import`
--

LOCK TABLES `tbl_data_import` WRITE;
/*!40000 ALTER TABLE `tbl_data_import` DISABLE KEYS */;
INSERT INTO `tbl_data_import` VALUES (1,'2016-02-04 07:39:51','1_teste.txt','SENT',64,0),(2,'2016-02-04 07:44:23','2_teste.txt','SENT',64,0),(3,'2016-02-04 07:49:24','3_teste.txt','SENT',64,0),(4,'2016-02-04 09:30:06','4_inatel_teste1.txt','SENT',64,0);
/*!40000 ALTER TABLE `tbl_data_import` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_data_import_log`
--

DROP TABLE IF EXISTS `tbl_data_import_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_data_import_log` (
  `id_data_import_log` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(150) NOT NULL,
  `type` varchar(25) NOT NULL,
  `id_data_import` bigint(20) NOT NULL,
  PRIMARY KEY (`id_data_import_log`),
  KEY `FK_7ck7pbotrdatltvea9j3udiwl` (`id_data_import`),
  CONSTRAINT `FK_7ck7pbotrdatltvea9j3udiwl` FOREIGN KEY (`id_data_import`) REFERENCES `tbl_data_import` (`id_data_import`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_data_import_log`
--

LOCK TABLES `tbl_data_import_log` WRITE;
/*!40000 ALTER TABLE `tbl_data_import_log` DISABLE KEYS */;
INSERT INTO `tbl_data_import_log` VALUES (1,'Start upload file','START',1),(2,'Upload file finished','INFORMATION',1),(3,'Move file to SEND folder','INFORMATION',1),(4,'Sending file AUP-API','INFORMATION',1),(5,'File sent to AUP-API with success','INFORMATION',1),(6,'Start upload file','START',2),(7,'Upload file finished','INFORMATION',2),(8,'Move file to SEND folder','INFORMATION',2),(9,'Sending file AUP-API','INFORMATION',2),(10,'File sent to AUP-API with success','INFORMATION',2),(11,'Start upload file','START',3),(12,'Upload file finished','INFORMATION',3),(13,'Move file to SEND folder','INFORMATION',3),(14,'Sending file AUP-API','INFORMATION',3),(15,'File sent to AUP-API with success','INFORMATION',3),(16,'Start upload file','START',4),(17,'Upload file finished','INFORMATION',4),(18,'Move file to SEND folder','INFORMATION',4),(19,'Sending file AUP-API','INFORMATION',4),(20,'File sent to AUP-API with success','INFORMATION',4);
/*!40000 ALTER TABLE `tbl_data_import_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_data_source`
--

DROP TABLE IF EXISTS `tbl_data_source`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_data_source` (
  `id_data_source` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(50) DEFAULT NULL,
  `nwid` varchar(50) DEFAULT NULL,
  `port` varchar(50) DEFAULT NULL,
  `id_country_customer` bigint(20) NOT NULL,
  PRIMARY KEY (`id_data_source`),
  KEY `FK571B59289B297898` (`id_country_customer`),
  CONSTRAINT `FK999B59289B297898` FOREIGN KEY (`id_country_customer`) REFERENCES `tbl_country_customer` (`id_country_customer`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_data_source`
--

LOCK TABLES `tbl_data_source` WRITE;
/*!40000 ALTER TABLE `tbl_data_source` DISABLE KEYS */;
INSERT INTO `tbl_data_source` VALUES (10,'146.250.88.141','clabr','8080',40),(11,'146.250.88.147','brtbr','8080',64),(12,'146.250.88.142','vivbr','8080',2),(14,'146.250.88.167','telar','8080',3),(15,'146.250.88.143','milbo','8080',97),(16,'146.250.88.146','timbr','8080',4),(17,'146.250.88.143','milhn','8080',101),(21,'146.250.88.146','nexbr','8080',89),(23,'146.250.88.143','amxni','8080',10),(24,'146.250.88.143','amxni','8080',9),(27,'146.250.88.143','amxni','8080',23),(31,'146.250.233.41','amxdr','8080',12),(32,'146.250.88.166','clabr','8080',40),(33,'146.250.88.143','amxni','8080',51),(34,'146.250.233.41','digjm','8080',119),(35,'146.250.88.167','cawjm','8080',133),(36,'146.250.233.41','amxpr','8080',172),(39,'146.250.233.42','digpa','8080',120),(40,'146.250.233.42','digtt','8080',18),(42,'146.250.233.43','tlfmx','8080',29),(47,'146.250.233.44','tclmx','8080',42),(48,'146.250.88.167','cawpa','8080',104),(49,'146.250.233.42','dight','8080',117),(50,'146.250.233.42','digsv','8080',112),(51,'146.250.180.204','clabr','8080',40),(52,'146.250.88.141','tlfpe','8080',26),(53,'146.250.233.43','gttgy','8080',157);
/*!40000 ALTER TABLE `tbl_data_source` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_data_source_collect_type`
--

DROP TABLE IF EXISTS `tbl_data_source_collect_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_data_source_collect_type` (
  `id_data_source_collect_type` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_collect_type` bigint(20) NOT NULL,
  `id_data_source` bigint(20) NOT NULL,
  PRIMARY KEY (`id_data_source_collect_type`),
  KEY `FK9462A7AE795676F812` (`id_collect_type`),
  KEY `fk_tbl_data_source_collect_type_tbl_data_source1_idx` (`id_data_source`),
  CONSTRAINT `FK9462A7AE795676F812` FOREIGN KEY (`id_collect_type`) REFERENCES `tbl_collect_type` (`id_collect_type`),
  CONSTRAINT `fk_tbl_data_source_collect_type_tbl_data_source112` FOREIGN KEY (`id_data_source`) REFERENCES `tbl_data_source` (`id_data_source`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_data_source_collect_type`
--

LOCK TABLES `tbl_data_source_collect_type` WRITE;
/*!40000 ALTER TABLE `tbl_data_source_collect_type` DISABLE KEYS */;
INSERT INTO `tbl_data_source_collect_type` VALUES (1,9,10),(2,36,32),(10,17,14),(11,18,14),(12,48,15),(13,49,15),(15,48,17),(16,49,17),(18,28,21),(19,29,21),(20,9,23),(21,39,23),(22,9,24),(23,39,24),(28,9,33),(29,39,33),(30,28,34),(31,29,34),(32,28,35),(33,29,35),(34,36,36),(35,9,36),(36,28,39),(37,29,39),(38,28,40),(39,29,40),(42,9,47),(43,36,47),(44,38,47),(45,28,48),(46,29,48),(47,39,27),(48,9,27),(49,22,11),(50,19,11),(53,47,51),(54,46,51),(55,51,31),(56,9,31),(58,16,12),(63,56,16),(64,55,16),(65,25,16),(69,54,53),(70,53,53),(71,52,53),(72,58,52),(73,57,52),(76,58,42),(77,57,42),(78,12,12),(79,16,12);
/*!40000 ALTER TABLE `tbl_data_source_collect_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_elements`
--

DROP TABLE IF EXISTS `tbl_elements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_elements` (
  `id_schedule` bigint(20) NOT NULL,
  `elements` varchar(255) DEFAULT NULL,
  KEY `FK8BF846D518833C04` (`id_schedule`),
  CONSTRAINT `FK8BF846D518833C04` FOREIGN KEY (`id_schedule`) REFERENCES `tbl_schedule` (`id_schedule`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_elements`
--

LOCK TABLES `tbl_elements` WRITE;
/*!40000 ALTER TABLE `tbl_elements` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_elements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_feature_type`
--

DROP TABLE IF EXISTS `tbl_feature_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_feature_type` (
  `id_feature_type` bigint(20) NOT NULL AUTO_INCREMENT,
  `feature_type` varchar(50) NOT NULL,
  PRIMARY KEY (`id_feature_type`),
  UNIQUE KEY `idFeatureType` (`id_feature_type`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_feature_type`
--

LOCK TABLES `tbl_feature_type` WRITE;
/*!40000 ALTER TABLE `tbl_feature_type` DISABLE KEYS */;
INSERT INTO `tbl_feature_type` VALUES (1,'Reports - Network Analysis');
/*!40000 ALTER TABLE `tbl_feature_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_kpi`
--

DROP TABLE IF EXISTS `tbl_kpi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_kpi` (
  `id_kpi` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) NOT NULL,
  `generator_class_name` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `node_type` varchar(255) NOT NULL,
  `parser_class_name` varchar(255) NOT NULL,
  `parser_class_name_node` varchar(255) NOT NULL,
  `validate_method` varchar(255) NOT NULL,
  `id_collect_type` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id_kpi`),
  UNIQUE KEY `idKpiGraphic` (`id_kpi`),
  KEY `FK549A1102795676F8` (`id_collect_type`),
  CONSTRAINT `FK999A1102795676F8` FOREIGN KEY (`id_collect_type`) REFERENCES `tbl_collect_type` (`id_collect_type`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=351 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_kpi`
--

LOCK TABLES `tbl_kpi` WRITE;
/*!40000 ALTER TABLE `tbl_kpi` DISABLE KEYS */;
INSERT INTO `tbl_kpi` VALUES (180,'4G_ConnectedUsers_Network_Regional',' ','4G_ConnectedUsers_Network_Regional','MULTI_NODES','com.ericsson.parser.LTEActiveUsersVivoBr',' ','commonValidationFilters',12),(181,'3G_CheCredits_Node','','3G_CheCredits_Node','MULTI_NODES','com.ericsson.parser.CEAmxAggregate',' ','commonValidationFilters',9),(182,'CE Capacity 3G',' ','CE_CAPACITY_3G','MULTI_NODES','com.ericsson.parser.CECapacity3G',' ','commonValidationFilters',13),(183,'Connected Users 4G - Sum',' ','CU_SUM_4G','MULTI_NODES','com.ericsson.parser.CUSum4G',' ','commonValidationFilters',14),(184,'Connected Users 4G - Max',' ','CU_MAX_4G','MULTI_NODES','com.ericsson.parser.CUMax4G',' ','commonValidationFilters',15),(185,'3G_ActiveUsers_Network_Regional',' ','3G_ActiveUsers_Network_Regional','MULTI_NODES','com.ericsson.parser.VivoBrRncCap3G',' ','commonValidationFilters',16),(186,'3G_ActiveUsers_Network',' ','3G_ActiveUsers_Network','MULTI_NODES','com.ericsson.parser.TLFArgRNCCap3G',' ','commonValidationFilters',17),(187,'4G_ConnectedUsers_Network',' ','4G_ConnectedUsers_Network','MULTI_NODES','com.ericsson.parser.TLFArg4GActiveUsers',' ','commonValidationFilters',18),(188,'4G_ConnectedUsersMax_Network_Regional',' ','4G_ConnectedUsersMax_Network_Regional','MULTI_NODES','com.ericsson.parser.OiConnectedUsers4GMax',' ','commonValidationFilters',19),(189,'4G_ConnectedUsersMax_Node',' ','4G_ConnectedUsersMax_Node','MULTI_NODES','com.ericsson.parser.TelurUY4GConnectedUsersMax',' ','commonValidationFilters',20),(191,'3G_CheCapacity_Network',' ','3G_CheCapacity_Network','MULTI_NODES','com.ericsson.parser.OiBr3G',' ','commonValidationFilters',22),(196,'4G_ConnectedUsersMax_Network',' ','4G_ConnectedUsersMax_Network','MULTI_NODES','com.ericsson.parser.TIMBrConnectedUsers4GMax',' ','commonValidationFilters',25),(197,'3G_ActiveUsersAvg_Network',' ','3G_ActiveUsersAvg_Network','MULTI_NODES','com.ericsson.parser.TLFCo3G',' ','commonValidationFilters',26),(198,'4G_ConnectedUsersAvg_Network',' ','4G_ConnectedUsersAvg_Network','MULTI_NODES','com.ericsson.parser.TLFCO4GActiveUsers',' ','commonValidationFilters',27),(206,'3G_CheCapacity_Node',' ','3G_CheCapacity_Node','MULTI_NODES','com.ericsson.parser.LimeClusterNextel3GChannelElements',' ','commonValidationFilters',28),(207,'3G_IubThp_ActiveUsers_Network',' ','3G_IubThp_ActiveUsers_Network','MULTI_NODES','com.ericsson.parser.IubThpAndUsersPeak',' ','commonValidationFilters',29),(248,'4G_ConnectedUsersUsage_Node',' ','4G_ConnectedUsersUsage_Node','MULTI_NODES','com.ericsson.parser.LTEClaro',' ','commonValidationFilters',36),(267,'3G_CheCredits_13peaks_Node',' ','3G_CheCredits_13peaks_Node','MULTI_NODES','com.ericsson.parser.TelcelChe',' ','commonValidationFilters',38),(268,'3G_RNC_Capacity',' ','3G_RNC_Capacity','MULTI_NODES','com.ericsson.parser.RncCapacity3G',' ','commonValidationFilters',39),(338,'CS Subscribers Audit','','CS_Subscribers_Audit','MULTI_NODES','com.ericsson.parser.SubscribersAudit','','commonValidationFilters',46),(339,'BHCA','','BHCA','MULTI_NODES','com.ericsson.parser.BHCA','','commonValidationFilters',47),(340,'3G_IubThp_Node',' ','3G_IubThp_Node','MULTI_NODES','com.ericsson.parser.IubThpNode3G',' ','commonValidationFilters',48),(341,'3G_CheCapacity_Node_5Peak',' ','3G_CheCapacity_Node_5Peak','MULTI_NODES','com.ericsson.parser.CheCapacityNode5Peak3G',' ','commonValidationFilters',49),(342,'3G_CheCapacity_13peaks_Node',' ','3G_CheCapacity_13peaks_Node','MULTI_NODES','com.ericsson.parser.TelcelCheCapacity',' ','commonValidationFilters',50),(343,'MGW SCC',' ','MGW SCC','MULTI_NODES','com.ericsson.parser.MGWSCC',' ','commonValidationFilters',51),(344,'3G_RNC_Capacity_Avg',' ','3G_RNC_Capacity_Avg','MULTI_NODES','com.ericsson.parser.RncCheCapacityAvg',' ','commonValidationFilters',52),(345,'4G_connected_Users_Downlink_Uplink_Thp',' ','4G_connected_Users_Downlink_Uplink_Thp','MULTI_NODES','com.ericsson.parser.ConnectedUsersMax4GDownlinkUplinkThp',' ','commonValidationFilters',53),(346,'3G_IubThp_ActiveUsers_Hw_Model_Network',' ','3G_IubThp_ActiveUsers_Hw_Model_Network','MULTI_NODES','com.ericsson.parser.IubThpAndUsersPeakHwModel',' ','commonValidationFilters',54),(347,'4G_TimConnectedUsersAvg_Network',' ','4G_TimConnectedUsersAvg_Network','MULTI_NODES','com.ericsson.parser.TIMBrConnectedUsers4GAvg',' ','commonValidationFilters',55),(348,'4G_TimConnectedUsersAvgUsage_Network',' ','4G_TimConnectedUsersAvgUsage_Network','MULTI_NODES','com.ericsson.parser.TIMBrConnectedUsers4GAvgUsage ',' ','commonValidationFilters',56),(349,'3G_ActiveUsersAvgHour_Network',' ','3G_ActiveUsersAvgHour_Network','MULTI_NODES','com.ericsson.parser.TLFPeRNCCap3G',' ','commonValidationFilters',57),(350,'4G_ConnectedUsersAvgHour_Network',' ','4G_ConnectedUsersAvgHour_Network','MULTI_NODES','com.ericsson.parser.TLFPeru4GActiveUsers',' ','commonValidationFilters',58);
/*!40000 ALTER TABLE `tbl_kpi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_kpi_template_report`
--

DROP TABLE IF EXISTS `tbl_kpi_template_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_kpi_template_report` (
  `id_kpi_template_report` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_report` int(11) NOT NULL DEFAULT '0',
  `id_template_report` bigint(20) NOT NULL,
  `id_kpi` bigint(20) NOT NULL,
  PRIMARY KEY (`id_kpi_template_report`),
  KEY `FK9507BED3EEDE3FD2` (`id_template_report`),
  KEY `FK_bp3l0gvgbjpq50k497qk8sr0t` (`id_kpi`),
  CONSTRAINT `FK9507BED3EEDE3FD2` FOREIGN KEY (`id_template_report`) REFERENCES `tbl_template_report` (`id_template_report`),
  CONSTRAINT `FK_bp3l0gvgbjpq50k497qk8sr0t` FOREIGN KEY (`id_kpi`) REFERENCES `tbl_kpi` (`id_kpi`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_kpi_template_report`
--

LOCK TABLES `tbl_kpi_template_report` WRITE;
/*!40000 ALTER TABLE `tbl_kpi_template_report` DISABLE KEYS */;
INSERT INTO `tbl_kpi_template_report` VALUES (1,0,27,197),(2,0,28,186),(3,0,29,185),(4,0,30,191),(5,0,31,206),(6,0,32,341),(7,0,33,267),(8,0,34,181),(9,0,35,207),(10,0,36,340),(11,0,37,268),(12,0,38,198),(13,0,39,248),(14,0,40,187),(15,0,41,180),(16,0,42,196),(17,0,43,188),(18,0,44,189),(19,0,45,339),(21,0,46,182),(22,0,47,183),(23,0,48,184),(24,0,49,338),(25,0,50,343),(26,0,51,342),(27,0,52,344),(28,0,53,345),(29,0,54,346),(30,0,55,347),(31,0,56,348),(32,0,57,349),(33,0,58,350);
/*!40000 ALTER TABLE `tbl_kpi_template_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_log`
--

DROP TABLE IF EXISTS `tbl_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_log` (
  `id_log` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_time` datetime NOT NULL,
  `event` varchar(255) NOT NULL,
  `info` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `id_report` bigint(20) DEFAULT NULL,
  `id_schedule` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id_log`),
  KEY `FK2E2BE118833C04` (`id_schedule`),
  KEY `FK2E2BE12DA3803E` (`id_report`),
  CONSTRAINT `FK2E2BE118833C04` FOREIGN KEY (`id_schedule`) REFERENCES `tbl_schedule` (`id_schedule`),
  CONSTRAINT `FK2E2BE12DA3803E` FOREIGN KEY (`id_report`) REFERENCES `tbl_report` (`id_report`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_log`
--

LOCK TABLES `tbl_log` WRITE;
/*!40000 ALTER TABLE `tbl_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_measure`
--

DROP TABLE IF EXISTS `tbl_measure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_measure` (
  `id_measure` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id_measure`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_measure`
--

LOCK TABLES `tbl_measure` WRITE;
/*!40000 ALTER TABLE `tbl_measure` DISABLE KEYS */;
INSERT INTO `tbl_measure` VALUES (1,'UA_QUEUE'),(2,'PA_QUEUE'),(3,'CPU'),(4,'MEMORY'),(5,'DISK');
/*!40000 ALTER TABLE `tbl_measure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_measure_customer`
--

DROP TABLE IF EXISTS `tbl_measure_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_measure_customer` (
  `threshold` double NOT NULL,
  `id_country_customer` bigint(20) NOT NULL,
  `id_measure` bigint(20) NOT NULL,
  PRIMARY KEY (`id_country_customer`,`id_measure`),
  KEY `FK_dvl6d5uiq75qepjjrwpvm5e33` (`id_measure`),
  CONSTRAINT `FK_dvl6d5uiq75qepjjrwpvm5e33` FOREIGN KEY (`id_measure`) REFERENCES `tbl_measure` (`id_measure`),
  CONSTRAINT `FK_shbqijk6p1m221pkdxi06xo9d` FOREIGN KEY (`id_country_customer`) REFERENCES `tbl_country_customer` (`id_country_customer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_measure_customer`
--

LOCK TABLES `tbl_measure_customer` WRITE;
/*!40000 ALTER TABLE `tbl_measure_customer` DISABLE KEYS */;
INSERT INTO `tbl_measure_customer` VALUES (48,2,1),(15000,2,2),(70,2,3),(80,2,4),(70,2,5),(300,3,1),(20000,3,2),(70,3,3),(80,3,4),(70,3,5),(24,4,1),(10000,4,2),(70,4,3),(80,4,4),(70,4,5),(24,12,1),(10000,12,2),(70,12,3),(80,12,4),(70,12,5),(24,18,1),(10000,18,2),(70,18,3),(80,18,4),(70,18,5),(12,24,1),(5000,24,2),(70,24,3),(80,24,4),(70,24,5),(12,25,1),(5000,25,2),(70,25,3),(80,25,4),(70,25,5),(24,29,1),(10000,29,2),(70,29,3),(80,29,4),(70,29,5),(24,35,1),(10000,35,2),(70,35,3),(80,35,4),(70,35,5),(24,36,1),(10000,36,2),(70,36,3),(80,36,4),(70,36,5),(24,40,1),(10000,40,2),(70,40,3),(80,40,4),(70,40,5),(24,42,1),(10000,42,2),(70,42,3),(80,42,4),(70,42,5),(24,64,1),(10000,64,2),(70,64,3),(80,64,4),(70,64,5),(24,89,1),(10000,89,2),(70,89,3),(80,89,4),(70,89,5),(36,97,1),(13000,97,2),(70,97,3),(80,97,4),(70,97,5),(24,101,1),(10000,101,2),(70,101,3),(80,101,4),(70,101,5),(24,104,1),(10000,104,2),(70,104,3),(80,104,4),(70,104,5),(24,112,1),(10000,112,2),(70,112,3),(80,112,4),(70,112,5),(24,117,1),(10000,117,2),(70,117,3),(80,117,4),(70,117,5),(48,119,1),(15000,119,2),(70,119,3),(80,119,4),(70,119,5),(24,120,1),(10000,120,2),(70,120,3),(80,120,4),(70,120,5),(48,133,1),(15000,133,2),(70,133,3),(80,133,4),(70,133,5),(24,172,1),(10000,172,2),(70,172,3),(80,172,4),(70,172,5);
/*!40000 ALTER TABLE `tbl_measure_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_measure_customer_alarm`
--

DROP TABLE IF EXISTS `tbl_measure_customer_alarm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_measure_customer_alarm` (
  `id_measure_customer_alarm` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_time` datetime NOT NULL,
  `status` varchar(10) NOT NULL,
  `value` double NOT NULL,
  `id_measure` bigint(20) NOT NULL,
  `id_country_customer` bigint(20) NOT NULL,
  PRIMARY KEY (`id_measure_customer_alarm`),
  KEY `FK_iwipl39dksav2hv1f0495e3qi` (`id_measure`),
  KEY `FK_pdg6y2knrycsnc9faalc8tqmg` (`id_country_customer`,`id_measure`),
  CONSTRAINT `FK_pdg6y2knrycsnc9faalc8tqmg` FOREIGN KEY (`id_country_customer`, `id_measure`) REFERENCES `tbl_measure_customer` (`id_country_customer`, `id_measure`)
) ENGINE=InnoDB AUTO_INCREMENT=178 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_measure_customer_alarm`
--

LOCK TABLES `tbl_measure_customer_alarm` WRITE;
/*!40000 ALTER TABLE `tbl_measure_customer_alarm` DISABLE KEYS */;
INSERT INTO `tbl_measure_customer_alarm` VALUES (10,'2016-08-05 10:45:00','CLOSE',99.5128299242551,4,40),(11,'2016-08-05 10:50:00','CLOSE',84.0621241972213,4,29),(12,'2016-08-05 11:05:00','CLOSE',85.1279655644166,4,40),(13,'2016-08-05 11:05:00','CLOSE',22859,2,3),(14,'2016-08-05 11:05:00','OPEN',92.4321799192499,4,97),(15,'2016-08-05 11:05:00','OPEN',99.4977146014365,4,4),(16,'2016-06-20 14:35:00','OPEN',86.7029263572358,4,101),(17,'2016-08-05 11:05:00','OPEN',99.5278517253504,4,89),(19,'2016-08-05 11:10:00','CLOSE',85.134639127098,4,40),(20,'2016-08-05 11:30:00','CLOSE',86.0656011211586,4,40),(21,'2016-08-05 11:35:00','CLOSE',85.6818712669759,4,40),(22,'2016-08-05 11:45:00','CLOSE',85.1947011912309,4,40),(23,'2016-08-11 09:45:00','CLOSE',83.9033668123728,4,40),(24,'2016-08-11 07:45:00','CLOSE',92.689916331909,4,36),(25,'2016-08-11 07:50:00','CLOSE',80.8817132768723,4,12),(26,'2016-08-11 09:50:00','CLOSE',83.5363208648937,4,40),(27,'2016-08-11 07:50:00','CLOSE',80.8765959624389,4,119),(28,'2016-08-11 07:55:00','CLOSE',81.7235115011642,4,172),(29,'2016-08-11 09:55:00','CLOSE',86.6438093288642,4,29),(30,'2016-08-11 10:00:00','CLOSE',82.4051519903901,4,40),(31,'2016-08-11 10:00:00','CLOSE',97.7253537343602,4,3),(32,'2016-08-11 10:05:00','CLOSE',82.4118255530715,4,40),(33,'2016-08-11 10:15:00','CLOSE',99.4360839534185,4,40),(34,'2016-08-11 10:20:00','CLOSE',99.5261770496179,4,40),(35,'2016-08-11 10:40:00','CLOSE',148,1,104),(36,'2016-08-11 10:45:00','CLOSE',82.0071451770055,4,2),(37,'2016-08-11 12:00:00','CLOSE',86.5661183222663,4,40),(38,'2016-08-11 12:05:00','CLOSE',87.0299309286263,4,40),(39,'2016-08-11 12:05:00','CLOSE',89.5837064708441,4,133),(40,'2016-08-11 12:10:00','CLOSE',91.3143581701091,4,40),(41,'2016-08-11 12:10:00','CLOSE',86.0825272689854,4,64),(42,'2016-08-11 12:15:00','CLOSE',97.7777036270813,4,40),(43,'2016-08-11 12:15:00','CLOSE',60,1,104),(44,'2016-08-11 12:20:00','CLOSE',98.4584070205879,4,40),(45,'2016-08-11 12:25:00','CLOSE',86.9631953018119,4,40),(46,'2016-08-11 12:30:00','CLOSE',87.9008308585538,4,40),(47,'2016-08-11 12:35:00','CLOSE',88.314591744803,4,40),(48,'2016-08-11 12:40:00','CLOSE',87.8374320130802,4,40),(49,'2016-08-11 12:55:00','CLOSE',87.0366044913077,4,40),(50,'2016-08-11 13:00:00','CLOSE',86.476025226067,4,40),(51,'2016-08-11 13:20:00','CLOSE',6969,2,104),(52,'2016-08-11 13:25:00','CLOSE',89.2221962694785,4,40),(53,'2016-08-11 13:25:00','CLOSE',86.3757974891953,4,64),(54,'2016-08-11 13:35:00','CLOSE',90.0563916046581,4,40),(55,'2016-08-11 14:05:00','CLOSE',88.7183422870299,4,40),(56,'2016-08-11 14:20:00','CLOSE',97.7209783442891,4,40),(57,'2016-08-11 14:40:00','CLOSE',81.5077861952862,4,104),(58,'2016-08-11 14:45:00','OPEN',81.1579335016835,4,3),(59,'2016-08-11 13:00:00','CLOSE',89.0898856280224,4,12),(60,'2016-08-11 15:00:00','CLOSE',85.9721712436184,4,40),(61,'2016-08-11 13:00:00','CLOSE',89.143617429573,4,119),(62,'2016-08-11 14:55:00','OPEN',82.1601430976431,4,133),(63,'2016-08-11 15:25:00','CLOSE',91.8348960592612,4,40),(64,'2016-08-11 15:25:00','CLOSE',30740,2,3),(65,'2016-08-11 15:30:00','CLOSE',92.2486569455104,4,40),(66,'2016-08-11 15:40:00','CLOSE',92.3888017618205,4,40),(67,'2016-08-11 15:45:00','CLOSE',91.9717040942307,4,40),(68,'2016-08-11 15:55:00','CLOSE',92.2353098201475,4,40),(69,'2016-08-11 16:00:00','CLOSE',91.4177983916714,4,40),(70,'2016-09-23 14:30:00','CLOSE',96.195374066114,4,2),(71,'2016-09-23 12:35:00','CLOSE',10038,2,36),(72,'2016-09-23 12:30:00','CLOSE',83.739733387918,4,36),(73,'2016-09-29 09:10:00','CLOSE',65,1,40),(74,'2016-09-29 09:15:00','CLOSE',132,1,4),(75,'2016-09-29 07:25:00','CLOSE',83.6220351559502,4,12),(76,'2016-09-29 09:20:00','CLOSE',85.8220160832861,4,40),(77,'2016-10-26 15:45:00','CLOSE',70.0134505394234,5,3),(78,'2016-10-26 13:11:00','CLOSE',94.2327866335747,4,119),(79,'2016-10-26 15:55:00','CLOSE',70.0134777464577,5,133),(80,'2016-10-26 13:11:00','CLOSE',94.6114679016452,4,172),(81,'2016-10-26 13:15:00','CLOSE',99.4908272138781,4,42),(82,'2016-10-26 16:00:00','CLOSE',70.0134901132914,5,104),(83,'2016-10-26 17:05:00','OPEN',88.9686008875838,4,24),(84,'2016-10-26 17:10:00','OPEN',88.9686008875838,4,25),(85,'2016-10-26 14:16:00','CLOSE',26,1,18),(86,'2016-10-26 14:11:00','CLOSE',80.3392779469334,4,18),(87,'2016-10-26 14:16:00','OPEN',80.8433334186219,4,35),(88,'2016-10-26 14:17:00','CLOSE',81.1222270552414,4,117),(89,'2016-10-26 14:17:00','CLOSE',185,1,112),(90,'2016-10-26 14:17:00','CLOSE',81.0915231686411,4,112),(91,'2016-10-26 14:31:00','CLOSE',81.8437683903487,4,120),(92,'2016-10-26 14:45:00','CLOSE',11064,2,36),(93,'2016-10-28 13:40:00','CLOSE',25,1,36),(94,'2016-10-28 16:40:00','CLOSE',11552,2,4),(95,'2016-10-28 14:02:00','CLOSE',10942,2,112),(96,'2016-10-28 14:30:00','CLOSE',83.0130747383773,4,12),(97,'2016-10-28 14:31:00','CLOSE',83.673208300284,4,119),(98,'2016-10-28 14:31:00','CLOSE',83.806258475552,4,172),(99,'2016-10-28 14:36:00','CLOSE',85.4284471509352,4,36),(100,'2016-10-28 15:26:00','CLOSE',25,1,36),(101,'2016-10-28 15:45:00','CLOSE',87.3653506639716,4,12),(102,'2016-10-28 16:25:00','CLOSE',11900,2,36),(103,'2016-10-31 12:30:00','CLOSE',83.0777937847294,4,64),(104,'2016-10-31 13:10:00','CLOSE',70.5093100382883,5,2),(105,'2016-10-31 13:40:00','CLOSE',14433,2,4),(106,'2016-10-31 09:40:00','CLOSE',33,1,101),(107,'2016-11-25 17:10:00','CLOSE',83.8232840601955,4,40),(108,'2016-11-25 17:10:00','CLOSE',80.720513653284,4,2),(109,'2016-11-25 13:10:00','CLOSE',84.5738556405598,4,36),(110,'2016-12-02 16:10:00','CLOSE',88.2000255134583,4,40),(111,'2017-01-13 15:15:00','CLOSE',20227,2,29),(112,'2017-01-13 15:15:00','CLOSE',85.638257042704,4,29),(113,'2017-01-13 15:05:00','CLOSE',92.6159042063248,4,40),(114,'2017-01-13 15:15:00','CLOSE',85.8583015633395,4,40),(115,'2017-01-13 15:05:00','CLOSE',92.6159042063248,4,40),(116,'2017-01-13 15:15:00','CLOSE',85.8583015633395,4,40),(117,'2017-01-13 15:05:00','CLOSE',92.6159042063248,4,40),(118,'2017-01-13 15:15:00','CLOSE',85.8583015633395,4,40),(119,'2017-01-13 11:15:00','CLOSE',80.2957807742497,4,12),(120,'2017-01-13 11:15:00','CLOSE',80.2369316582658,4,172),(121,'2017-01-13 11:15:00','OPEN',80.2292556866157,4,119),(122,'2017-01-13 11:15:00','CLOSE',80.4006857201341,4,36),(123,'2017-01-13 15:10:00','CLOSE',91.520826936854,4,40),(124,'2017-01-13 15:20:00','CLOSE',85.8557429061229,4,40),(125,'2017-01-13 15:10:00','CLOSE',91.520826936854,4,40),(126,'2017-01-13 15:20:00','CLOSE',85.8557429061229,4,40),(127,'2017-01-13 15:10:00','CLOSE',91.520826936854,4,40),(128,'2017-01-13 15:20:00','CLOSE',85.8557429061229,4,40),(129,'2017-01-13 15:20:00','CLOSE',91.3928973492989,4,40),(130,'2017-01-13 15:30:00','CLOSE',85.8557429061229,4,40),(131,'2017-01-13 15:20:00','CLOSE',91.3928973492989,4,40),(132,'2017-01-13 15:30:00','CLOSE',85.8557429061229,4,40),(133,'2017-01-13 15:25:00','CLOSE',92.0965100808515,4,40),(134,'2017-01-13 15:30:00','CLOSE',85.8557429061229,4,40),(135,'2017-02-03 15:50:00','CLOSE',69656,2,3),(136,'2017-02-03 12:16:00','OPEN',82.0689302254177,4,172),(137,'2017-02-03 16:00:00','CLOSE',42265,2,133),(138,'2017-02-03 16:00:00','CLOSE',10962,2,104),(139,'2017-02-03 12:25:00','OPEN',88.8084333341862,4,36),(140,'2017-02-08 10:15:00','CLOSE',59,1,104),(141,'2017-02-10 11:30:00','CLOSE',96.24945777303213,4,40),(142,'2017-02-10 16:45:00','OPEN',91.80082070707071,4,104),(143,'2017-02-10 17:05:00','CLOSE',87.24682171577297,4,40),(144,'2017-02-10 17:10:00','CLOSE',87.25683205979512,4,40),(145,'2017-02-10 17:15:00','CLOSE',87.26350562247656,4,40),(146,'2017-02-10 17:20:00','CLOSE',94.8913877673596,4,40),(147,'2017-02-10 17:05:00','CLOSE',76.2,3,104),(148,'2017-02-10 17:25:00','CLOSE',91.93833628082352,4,40),(149,'2017-02-10 17:30:00','CLOSE',86.39260569254897,4,40),(150,'2017-02-10 17:10:00','CLOSE',91.5,3,3),(151,'2017-02-10 17:10:00','CLOSE',92.2,3,133),(152,'2017-02-10 17:35:00','CLOSE',81.80119456771997,4,40),(153,'2017-02-10 17:46:00','CLOSE',82.67647664128421,4,64),(154,'2017-02-10 17:45:00','CLOSE',81.86793019453435,4,40),(155,'2017-02-10 17:50:00','CLOSE',81.35072908672295,4,40),(156,'2017-02-10 17:55:00','CLOSE',80.9503153258367,4,40),(157,'2017-02-10 14:00:00','OPEN',88.68561778778496,4,12),(158,'2017-02-10 18:00:00','CLOSE',80.29964296439654,4,40),(159,'2017-02-10 18:05:00','CLOSE',80.2762854950115,4,40),(160,'2017-02-10 18:10:00','CLOSE',80.27962227635224,4,40),(161,'2017-02-10 18:15:00','CLOSE',80.28629583903367,4,40),(162,'2017-03-07 06:05:00','CLOSE',83,1,119),(163,'2017-03-07 06:05:00','CLOSE',71.66595184461184,5,119),(164,'2017-03-07 06:10:00','OPEN',99.27781892769643,4,42),(165,'2017-03-07 06:05:00','CLOSE',72.12305160814535,5,101),(166,'2017-03-07 09:10:00','CLOSE',99.19583569688677,4,40),(167,'2017-03-07 09:10:00','CLOSE',18490,2,29),(168,'2017-03-07 09:10:00','CLOSE',86.28048000409385,4,29),(169,'2017-03-07 06:05:00','CLOSE',71.9314850317982,5,36),(170,'2017-03-07 06:10:00','CLOSE',72.46013868013779,5,12),(171,'2017-03-07 06:21:00','CLOSE',72.66087662594242,5,172),(172,'2017-03-07 06:22:00','CLOSE',12729,2,112),(173,'2017-03-16 14:05:00','CLOSE',85.68723774434551,4,40),(174,'2017-03-16 14:10:00','OPEN',84.821979831241,4,64),(175,'2017-03-16 14:25:00','CLOSE',85.05526558182378,4,40),(176,'2017-03-24 14:25:00','OPEN',20388,2,29),(177,'2017-03-24 14:35:00','OPEN',80.1095077269471,4,2);
/*!40000 ALTER TABLE `tbl_measure_customer_alarm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_mo`
--

DROP TABLE IF EXISTS `tbl_mo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_mo` (
  `id_mo` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `id_node` bigint(20) NOT NULL,
  PRIMARY KEY (`id_mo`),
  KEY `FK_mp3sfdrpqlo3enhoavi3r7rc5` (`id_node`),
  CONSTRAINT `FK_mp3sfdrpqlo3enhoavi3r7rc5` FOREIGN KEY (`id_node`) REFERENCES `tbl_node` (`id_node`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_mo`
--

LOCK TABLES `tbl_mo` WRITE;
/*!40000 ALTER TABLE `tbl_mo` DISABLE KEYS */;
INSERT INTO `tbl_mo` VALUES (1,'IubLink',3),(2,'NodeBFunction',4),(3,'ManagedElement',4),(4,'EUtranCellFDD',5),(5,'CapacityConnectedUsers',5),(6,'RncCapacity',3),(7,'UplinkBaseBandPool',4),(8,'DownlinkBaseBandPool',4),(9,'Subs',7),(10,'BHCA',11),(11,'MgwApplication',13),(12,'G729Service',13),(13,'AmrWbService',13);
/*!40000 ALTER TABLE `tbl_mo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_mo_country_customer`
--

DROP TABLE IF EXISTS `tbl_mo_country_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_mo_country_customer` (
  `id_mo_country_customer` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_country_customer` bigint(20) NOT NULL,
  `id_mo` bigint(20) NOT NULL,
  PRIMARY KEY (`id_mo_country_customer`),
  KEY `FK_fguaqyxbs3g6xa454u3kp4m5o` (`id_country_customer`),
  KEY `FK_5sylndf0r4pkxua8ci7u3lr34` (`id_mo`),
  CONSTRAINT `FK_5sylndf0r4pkxua8ci7u3lr34` FOREIGN KEY (`id_mo`) REFERENCES `tbl_mo` (`id_mo`),
  CONSTRAINT `FK_fguaqyxbs3g6xa454u3kp4m5o` FOREIGN KEY (`id_country_customer`) REFERENCES `tbl_country_customer` (`id_country_customer`)
) ENGINE=InnoDB AUTO_INCREMENT=330 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_mo_country_customer`
--

LOCK TABLES `tbl_mo_country_customer` WRITE;
/*!40000 ALTER TABLE `tbl_mo_country_customer` DISABLE KEYS */;
INSERT INTO `tbl_mo_country_customer` VALUES (1,4,13),(2,40,10),(3,40,10),(4,40,10),(5,40,10),(6,40,10),(7,40,10),(8,40,10),(9,40,10),(10,40,10),(11,40,10),(12,40,10),(13,42,5),(14,42,5),(15,42,5),(16,42,5),(17,4,5),(18,4,5),(19,4,5),(20,4,5),(21,36,5),(22,64,5),(23,101,5),(24,101,5),(25,35,5),(26,25,5),(27,35,5),(28,24,5),(29,24,5),(30,25,5),(31,36,5),(32,40,5),(33,40,5),(34,40,5),(35,40,5),(36,172,5),(37,172,5),(38,172,5),(39,172,5),(40,29,5),(41,97,5),(42,97,5),(44,157,5),(45,157,5),(46,157,5),(47,64,5),(48,2,5),(49,2,5),(50,2,5),(51,157,8),(52,157,8),(53,104,8),(54,104,8),(55,18,8),(56,18,8),(57,119,8),(58,119,8),(59,64,8),(60,64,8),(61,120,8),(62,120,8),(63,42,8),(64,42,8),(65,117,8),(66,117,8),(67,89,8),(68,89,8),(69,133,8),(70,133,8),(71,97,8),(72,97,8),(73,112,8),(74,112,8),(75,101,8),(76,101,8),(77,36,4),(78,42,4),(79,42,4),(80,40,4),(81,40,4),(82,172,4),(83,172,4),(84,2,4),(85,2,4),(86,35,4),(87,4,4),(88,24,4),(89,29,4),(90,26,4),(91,26,4),(92,157,4),(93,157,4),(94,157,4),(95,157,4),(96,25,4),(97,64,4),(98,3,4),(99,3,4),(100,4,12),(101,40,1),(102,40,1),(103,40,1),(104,40,1),(105,40,1),(106,40,1),(107,12,1),(108,12,1),(109,172,1),(110,172,1),(111,10,1),(112,10,1),(113,10,1),(114,10,1),(115,10,1),(116,10,1),(117,23,1),(118,23,1),(119,23,1),(120,23,1),(121,23,1),(122,23,1),(123,42,1),(124,42,1),(125,42,1),(126,42,1),(127,42,1),(128,42,1),(129,120,3),(130,18,3),(131,104,3),(132,42,3),(133,23,3),(134,117,3),(135,40,3),(136,10,3),(137,112,3),(138,172,3),(139,12,3),(140,119,3),(141,133,3),(142,89,3),(143,4,11),(144,4,11),(145,4,11),(146,4,11),(147,4,11),(148,4,11),(149,117,2),(150,117,2),(151,117,2),(152,117,2),(153,117,2),(154,117,2),(155,157,2),(156,157,2),(157,157,2),(158,157,2),(159,157,2),(160,157,2),(161,112,2),(162,112,2),(163,112,2),(164,112,2),(165,112,2),(166,112,2),(167,97,2),(168,97,2),(169,97,2),(170,97,2),(171,97,2),(172,97,2),(173,23,2),(174,23,2),(175,23,2),(176,23,2),(177,23,2),(178,23,2),(179,42,2),(180,42,2),(181,42,2),(182,42,2),(183,42,2),(184,42,2),(185,104,2),(186,104,2),(187,104,2),(188,104,2),(189,104,2),(190,104,2),(191,18,2),(192,18,2),(193,18,2),(194,18,2),(195,18,2),(196,18,2),(197,89,2),(198,89,2),(199,89,2),(200,89,2),(201,89,2),(202,89,2),(203,10,2),(204,10,2),(205,10,2),(206,10,2),(207,10,2),(208,10,2),(209,119,2),(210,119,2),(211,119,2),(212,119,2),(213,119,2),(214,119,2),(215,172,2),(216,172,2),(217,172,2),(218,172,2),(219,172,2),(220,172,2),(221,12,2),(222,12,2),(223,12,2),(224,12,2),(225,12,2),(226,12,2),(227,101,2),(228,101,2),(229,101,2),(230,101,2),(231,101,2),(232,101,2),(233,120,2),(234,120,2),(235,120,2),(236,120,2),(237,120,2),(238,120,2),(239,133,2),(240,133,2),(241,133,2),(242,133,2),(243,133,2),(244,133,2),(245,40,2),(246,40,2),(247,40,2),(248,40,2),(249,40,2),(250,40,2),(251,26,6),(252,26,6),(253,101,6),(254,133,6),(255,133,6),(256,89,6),(257,89,6),(258,23,6),(259,23,6),(260,23,6),(261,2,6),(262,2,6),(263,36,6),(264,36,6),(265,112,6),(266,112,6),(267,117,6),(268,101,6),(269,101,6),(270,101,6),(271,101,6),(272,112,6),(273,117,6),(274,117,6),(275,97,6),(276,97,6),(277,97,6),(278,97,6),(279,3,6),(280,3,6),(281,89,6),(282,104,6),(283,10,6),(284,10,6),(285,10,6),(286,18,6),(287,104,6),(288,104,6),(289,18,6),(290,18,6),(291,120,6),(292,120,6),(293,120,6),(294,119,6),(295,97,6),(296,119,6),(297,119,6),(298,133,6),(299,104,9),(300,40,9),(301,64,7),(302,64,7),(303,157,7),(304,157,7),(305,42,7),(306,42,7),(307,104,7),(308,104,7),(309,101,7),(310,101,7),(311,112,7),(312,112,7),(313,133,7),(314,133,7),(315,119,7),(316,119,7),(317,117,7),(318,117,7),(319,18,7),(320,18,7),(321,89,7),(322,89,7),(323,120,7),(324,120,7),(325,97,7),(326,97,7),(327,29,6),(329,157,6);
/*!40000 ALTER TABLE `tbl_mo_country_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_mo_param_counter`
--

DROP TABLE IF EXISTS `tbl_mo_param_counter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_mo_param_counter` (
  `id_param_counter_mo` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_mo` bigint(20) NOT NULL,
  `id_param_counter` bigint(20) NOT NULL,
  PRIMARY KEY (`id_param_counter_mo`),
  KEY `FK_jkch5ectrueh4ch0qmjlpcvbv` (`id_mo`),
  KEY `FK_go9xx3m9walbwg3n81jmp66rf` (`id_param_counter`),
  CONSTRAINT `FK_go9xx3m9walbwg3n81jmp66rf` FOREIGN KEY (`id_param_counter`) REFERENCES `tbl_param_counter` (`id_param_counter`),
  CONSTRAINT `FK_jkch5ectrueh4ch0qmjlpcvbv` FOREIGN KEY (`id_mo`) REFERENCES `tbl_mo` (`id_mo`)
) ENGINE=InnoDB AUTO_INCREMENT=327 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_mo_param_counter`
--

LOCK TABLES `tbl_mo_param_counter` WRITE;
/*!40000 ALTER TABLE `tbl_mo_param_counter` DISABLE KEYS */;
INSERT INTO `tbl_mo_param_counter` VALUES (1,13,50),(2,10,32),(3,10,33),(4,10,34),(5,10,35),(6,10,36),(7,10,37),(8,10,38),(9,10,39),(10,10,40),(11,10,41),(12,10,42),(13,5,17),(14,5,18),(15,5,16),(16,5,29),(17,5,29),(18,5,16),(19,5,17),(20,5,18),(21,5,16),(22,5,29),(23,5,18),(24,5,17),(25,5,29),(26,5,29),(27,5,16),(28,5,29),(29,5,16),(30,5,16),(31,5,29),(32,5,17),(33,5,18),(34,5,16),(35,5,29),(36,5,17),(37,5,18),(38,5,16),(39,5,29),(40,5,29),(41,5,17),(42,5,18),(43,5,16),(44,5,16),(45,5,29),(46,5,29),(47,5,16),(48,5,16),(49,5,17),(50,5,18),(51,8,23),(52,8,24),(53,8,24),(54,8,23),(55,8,24),(56,8,23),(57,8,23),(58,8,24),(59,8,23),(60,8,24),(61,8,24),(62,8,23),(63,8,23),(64,8,24),(65,8,23),(66,8,24),(67,8,24),(68,8,23),(69,8,24),(70,8,23),(71,8,23),(72,8,24),(73,8,23),(74,8,24),(75,8,23),(76,8,24),(77,4,30),(78,4,28),(79,4,30),(80,4,28),(81,4,30),(82,4,28),(83,4,30),(84,4,12),(85,4,13),(86,4,30),(87,4,30),(88,4,30),(89,4,30),(90,4,12),(91,4,13),(92,4,51),(93,4,52),(94,4,53),(95,4,54),(96,4,30),(97,4,30),(98,4,13),(99,4,12),(100,12,49),(101,1,1),(102,1,2),(103,1,3),(104,1,4),(105,1,14),(106,1,15),(107,1,14),(108,1,15),(109,1,14),(110,1,15),(111,1,1),(112,1,2),(113,1,3),(114,1,4),(115,1,14),(116,1,15),(117,1,1),(118,1,2),(119,1,3),(120,1,4),(121,1,14),(122,1,15),(123,1,1),(124,1,2),(125,1,3),(126,1,4),(127,1,14),(128,1,15),(129,3,11),(130,3,11),(131,3,11),(132,3,11),(133,3,11),(134,3,11),(135,3,11),(136,3,11),(137,3,11),(138,3,11),(139,3,11),(140,3,11),(141,3,11),(142,3,11),(143,11,43),(144,11,44),(145,11,45),(146,11,46),(147,11,47),(148,11,48),(149,2,5),(150,2,6),(151,2,7),(152,2,8),(153,2,9),(154,2,10),(155,2,8),(156,2,9),(157,2,10),(158,2,5),(159,2,6),(160,2,7),(161,2,5),(162,2,6),(163,2,7),(164,2,8),(165,2,9),(166,2,10),(167,2,8),(168,2,9),(169,2,10),(170,2,5),(171,2,6),(172,2,7),(173,2,5),(174,2,6),(175,2,7),(176,2,8),(177,2,9),(178,2,10),(179,2,5),(180,2,6),(181,2,7),(182,2,8),(183,2,9),(184,2,10),(185,2,5),(186,2,6),(187,2,7),(188,2,8),(189,2,9),(190,2,10),(191,2,7),(192,2,6),(193,2,5),(194,2,8),(195,2,9),(196,2,10),(197,2,5),(198,2,6),(199,2,7),(200,2,8),(201,2,9),(202,2,10),(203,2,5),(204,2,6),(205,2,7),(206,2,8),(207,2,9),(208,2,10),(209,2,5),(210,2,6),(211,2,7),(212,2,8),(213,2,9),(214,2,10),(215,2,5),(216,2,6),(217,2,7),(218,2,8),(219,2,9),(220,2,10),(221,2,5),(222,2,6),(223,2,7),(224,2,8),(225,2,9),(226,2,10),(227,2,8),(228,2,9),(229,2,10),(230,2,5),(231,2,6),(232,2,7),(233,2,7),(234,2,6),(235,2,5),(236,2,8),(237,2,9),(238,2,10),(239,2,5),(240,2,6),(241,2,7),(242,2,8),(243,2,9),(244,2,10),(245,2,5),(246,2,6),(247,2,7),(248,2,8),(249,2,9),(250,2,10),(251,6,19),(252,6,20),(253,6,27),(254,6,19),(255,6,20),(256,6,19),(257,6,20),(258,6,20),(259,6,19),(260,6,27),(261,6,19),(262,6,20),(263,6,19),(264,6,20),(265,6,19),(266,6,20),(267,6,27),(268,6,19),(269,6,20),(270,6,25),(271,6,26),(272,6,27),(273,6,19),(274,6,20),(275,6,19),(276,6,20),(277,6,25),(278,6,26),(279,6,19),(280,6,20),(281,6,27),(282,6,27),(283,6,20),(284,6,19),(285,6,27),(286,6,27),(287,6,19),(288,6,20),(289,6,20),(290,6,19),(291,6,27),(292,6,20),(293,6,19),(294,6,27),(295,6,27),(296,6,19),(297,6,20),(298,6,27),(299,9,31),(300,9,31),(301,7,21),(302,7,22),(303,7,21),(304,7,22),(305,7,21),(306,7,22),(307,7,22),(308,7,21),(309,7,21),(310,7,22),(311,7,22),(312,7,21),(313,7,22),(314,7,21),(315,7,22),(316,7,21),(317,7,22),(318,7,21),(319,7,21),(320,7,22),(321,7,21),(322,7,22),(323,7,21),(324,7,22),(325,7,21),(326,7,22);
/*!40000 ALTER TABLE `tbl_mo_param_counter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_node`
--

DROP TABLE IF EXISTS `tbl_node`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_node` (
  `id_node` bigint(20) NOT NULL AUTO_INCREMENT,
  `father` varchar(10) DEFAULT NULL,
  `node` varchar(10) NOT NULL,
  `type` varchar(10) NOT NULL,
  PRIMARY KEY (`id_node`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_node`
--

LOCK TABLES `tbl_node` WRITE;
/*!40000 ALTER TABLE `tbl_node` DISABLE KEYS */;
INSERT INTO `tbl_node` VALUES (1,NULL,'RNC','NODE'),(2,NULL,'ERBS','NODE'),(3,NULL,'RNC','LEVEL'),(4,'RNC','RBS','LEVEL'),(5,NULL,'ERBS','LEVEL'),(6,NULL,'SDP','NODE'),(7,NULL,'SDP','LEVEL'),(8,NULL,'AIR','NODE'),(9,NULL,'AIR','LEVEL'),(10,NULL,'CCN','NODE'),(11,NULL,'CCN','LEVEL'),(12,NULL,'MGW','NODE'),(13,NULL,'MGW','LEVEL');
/*!40000 ALTER TABLE `tbl_node` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_node_data_source`
--

DROP TABLE IF EXISTS `tbl_node_data_source`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_node_data_source` (
  `id_data_source_node` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_node` bigint(20) NOT NULL,
  `id_data_source` bigint(20) NOT NULL,
  PRIMARY KEY (`id_data_source_node`),
  KEY `FK_h8yscsybjhhb5ep1j5vuwvvrw_idx11` (`id_data_source`),
  KEY `FK_g6xxnstonxhcr4lcylv457byn11` (`id_node`),
  CONSTRAINT `FK_g6xxnstonxhcr4lcylv457byn11` FOREIGN KEY (`id_node`) REFERENCES `tbl_node` (`id_node`),
  CONSTRAINT `FK_h8yscsybjhhb5ep1j5vuwvvrw11` FOREIGN KEY (`id_data_source`) REFERENCES `tbl_data_source` (`id_data_source`)
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_node_data_source`
--

LOCK TABLES `tbl_node_data_source` WRITE;
/*!40000 ALTER TABLE `tbl_node_data_source` DISABLE KEYS */;
INSERT INTO `tbl_node_data_source` VALUES (1,1,10),(2,3,10),(3,4,10),(4,2,32),(5,5,32),(18,1,14),(19,3,14),(20,2,14),(21,5,14),(22,1,15),(23,3,15),(24,4,15),(25,2,15),(26,5,15),(31,1,17),(32,3,17),(33,4,17),(34,2,17),(35,5,17),(38,1,21),(39,3,21),(40,4,21),(41,1,23),(42,3,23),(43,4,23),(49,1,34),(50,3,34),(51,4,34),(52,1,35),(53,3,35),(54,4,35),(55,1,36),(56,3,36),(57,4,36),(58,2,36),(59,5,36),(60,1,39),(61,3,39),(62,4,39),(63,1,40),(64,3,40),(65,4,40),(70,1,47),(71,3,47),(72,4,47),(73,2,47),(74,5,47),(75,1,48),(76,3,48),(77,4,48),(78,6,48),(79,7,48),(80,1,27),(81,3,27),(82,4,27),(83,3,49),(84,4,49),(85,1,49),(92,12,50),(93,13,50),(94,3,50),(95,1,50),(96,4,50),(97,2,11),(98,1,11),(99,4,11),(100,5,11),(105,9,51),(106,8,51),(107,11,51),(108,10,51),(109,7,51),(110,6,51),(111,3,31),(112,4,31),(113,1,31),(114,12,31),(115,13,31),(124,13,16),(125,12,16),(126,2,16),(127,5,16),(132,1,53),(133,2,53),(134,5,53),(135,3,53),(136,4,53),(137,2,52),(138,3,52),(139,1,52),(140,5,52),(146,5,42),(147,3,42),(148,1,42),(149,2,42),(150,5,12),(151,3,12),(152,1,12),(153,2,12);
/*!40000 ALTER TABLE `tbl_node_data_source` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_node_type`
--

DROP TABLE IF EXISTS `tbl_node_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_node_type` (
  `id_node_type` bigint(20) NOT NULL AUTO_INCREMENT,
  `node_type_name` varchar(50) NOT NULL,
  PRIMARY KEY (`id_node_type`),
  UNIQUE KEY `nodeTypeName` (`node_type_name`),
  UNIQUE KEY `UK_f2xneb6lmo73sqx4ryckbofla` (`node_type_name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_node_type`
--

LOCK TABLES `tbl_node_type` WRITE;
/*!40000 ALTER TABLE `tbl_node_type` DISABLE KEYS */;
INSERT INTO `tbl_node_type` VALUES (6,'CCN_AIR'),(4,'ERBS'),(2,'MGW'),(3,'MSC'),(1,'RNC'),(5,'SDP');
/*!40000 ALTER TABLE `tbl_node_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_oauth_access_token`
--

DROP TABLE IF EXISTS `tbl_oauth_access_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_oauth_access_token` (
  `id_access_token` bigint(20) NOT NULL AUTO_INCREMENT,
  `authentication` longblob,
  `authentication_id` varchar(255) DEFAULT NULL,
  `refresh_token` varchar(255) DEFAULT NULL,
  `token` longblob,
  `token_id` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `id_application` bigint(20) DEFAULT NULL,
  `client_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_access_token`),
  KEY `FK_kk7clbmpu853qv2f9f1kevtbu` (`id_application`),
  CONSTRAINT `FK_kk7clbmpu853qv2f9f1kevtbu` FOREIGN KEY (`id_application`) REFERENCES `tbl_application` (`id_application`)
) ENGINE=InnoDB AUTO_INCREMENT=361 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_oauth_access_token`
--

LOCK TABLES `tbl_oauth_access_token` WRITE;
/*!40000 ALTER TABLE `tbl_oauth_access_token` DISABLE KEYS */;
INSERT INTO `tbl_oauth_access_token` VALUES (1,'¨\Ì\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2AuthenticationΩ@bR\0L\0clientAuthenticationt\0CLorg/springframework/security/oauth2/provider/AuthorizationRequest;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationToken”™(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList¸%1µ\Ïé\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0Ä\À^˜\0L\0cq\0~\0xpsr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0xq\0~\0psr\0Horg.springframework.security.oauth2.provider.DefaultAuthorizationRequest\›/lm\0Z\0approvedL\0approvalParameterst\0Ljava/util/Map;L\0authoritiesq\0~\0L\0authorizationParametersq\0~\0L\0resolvedRedirectUrit\0Ljava/lang/String;L\0resourceIdst\0Ljava/util/Set;L\0scopeq\0~\0xpsr\0java.util.HashMap\⁄¡\√`\—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0\0xsr\0java.util.HashSet∫DÖïñ∏∑4\0\0xpw\0\0\0?@\0\0\0\0\0\0xsr\0&java.util.concurrent.ConcurrentHashMapdô\ﬁùá)=\0I\0segmentMaskI\0segmentShift[\0segmentst\01[Ljava/util/concurrent/ConcurrentHashMap$Segment;xp\0\0\0\0\0\0ur\01[Ljava.util.concurrent.ConcurrentHashMap$Segment;Rw?A2õ9t\0\0xp\0\0\0sr\0.java.util.concurrent.ConcurrentHashMap$Segment6LêXì)=\0F\0\nloadFactorxr\0(java.util.concurrent.locks.ReentrantLockfU®,,\»j\Î\0L\0synct\0/Ljava/util/concurrent/locks/ReentrantLock$Sync;xpsr\04java.util.concurrent.locks.ReentrantLock$NonfairSynceà2\ÁS{ø\0\0xr\0-java.util.concurrent.locks.ReentrantLock$Sync∏¢î™DZ|\0\0xr\05java.util.concurrent.locks.AbstractQueuedSynchronizerfU®Cu?R\„\0I\0statexr\06java.util.concurrent.locks.AbstractOwnableSynchronizer3ﬂØπ≠mo©\0\0xp\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0t\0\rclient_secrett\0 04fd73b107f0ce3dcd6f8ed6f870b078t\0\ngrant_typet\0client_credentialst\0	client_idt\0 71f89db24ec90934e5454f403545e8f2t\0scopet\0\0ppxpsq\0~\0w\0\0\0?@\0\0\0\0\0\0xsr\0java.util.LinkedHashSet\ÿl\◊Zï\›*\0\0xq\0~\0w\0\0\0?@\0\0\0\0\0\0xsr\0-com.ericsson.aup.util.AuthenticationTokenImpl◊®0Vﬂ∫\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sr\0java.util.Collections$EmptyListz∏¥<ßû\ﬁ\0\0xppq\0~\0Cq\0~\0G','5efb73ab3326a2fd287e4fd3cdf6ed7e',NULL,'¨\Ì\0sr\0Corg.springframework.security.oauth2.common.DefaultOAuth2AccessToken≤û6$˙\Œ\0L\0additionalInformationt\0Ljava/util/Map;L\0\nexpirationt\0Ljava/util/Date;L\0refreshTokent\0?Lorg/springframework/security/oauth2/common/OAuth2RefreshToken;L\0scopet\0Ljava/util/Set;L\0	tokenTypet\0Ljava/lang/String;L\0valueq\0~\0xpsr\0java.util.Collections$EmptyMapY6ÖZ\‹\Á\–\0\0xppppt\0bearert\0$87ac16fd-06c6-4146-a9c4-b187e4b917a3','4b8c1ce4dc81cd2298c19475d65802d6','71f89db24ec90934e5454f403545e8f2',1,NULL),(4,'¨\Ì\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2AuthenticationΩ@bR\0L\0clientAuthenticationt\0CLorg/springframework/security/oauth2/provider/AuthorizationRequest;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationToken”™(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList¸%1µ\Ïé\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0Ä\À^˜\0L\0cq\0~\0xpsr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0xq\0~\0psr\0Horg.springframework.security.oauth2.provider.DefaultAuthorizationRequest\›/lm\0Z\0approvedL\0approvalParameterst\0Ljava/util/Map;L\0authoritiesq\0~\0L\0authorizationParametersq\0~\0L\0resolvedRedirectUrit\0Ljava/lang/String;L\0resourceIdst\0Ljava/util/Set;L\0scopeq\0~\0xpsr\0java.util.HashMap\⁄¡\√`\—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0\0xsr\0java.util.HashSet∫DÖïñ∏∑4\0\0xpw\0\0\0?@\0\0\0\0\0\0xsr\0&java.util.concurrent.ConcurrentHashMapdô\ﬁùá)=\0I\0segmentMaskI\0segmentShift[\0segmentst\01[Ljava/util/concurrent/ConcurrentHashMap$Segment;xp\0\0\0\0\0\0ur\01[Ljava.util.concurrent.ConcurrentHashMap$Segment;Rw?A2õ9t\0\0xp\0\0\0sr\0.java.util.concurrent.ConcurrentHashMap$Segment6LêXì)=\0F\0\nloadFactorxr\0(java.util.concurrent.locks.ReentrantLockfU®,,\»j\Î\0L\0synct\0/Ljava/util/concurrent/locks/ReentrantLock$Sync;xpsr\04java.util.concurrent.locks.ReentrantLock$NonfairSynceà2\ÁS{ø\0\0xr\0-java.util.concurrent.locks.ReentrantLock$Sync∏¢î™DZ|\0\0xr\05java.util.concurrent.locks.AbstractQueuedSynchronizerfU®Cu?R\„\0I\0statexr\06java.util.concurrent.locks.AbstractOwnableSynchronizer3ﬂØπ≠mo©\0\0xp\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0t\0\rclient_secrett\0 afc94c1a675ebc9c37e28da0f316fc0et\0\ngrant_typet\0client_credentialst\0	client_idt\0 67a0d89a49fa6a4a45c208b01c08cf22t\0scopet\0\0ppxpsq\0~\0w\0\0\0?@\0\0\0\0\0\0xsr\0java.util.LinkedHashSet\ÿl\◊Zï\›*\0\0xq\0~\0w\0\0\0?@\0\0\0\0\0\0xsr\0-com.ericsson.aup.util.AuthenticationTokenImpl◊®0Vﬂ∫\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sr\0java.util.Collections$EmptyListz∏¥<ßû\ﬁ\0\0xppq\0~\0Cq\0~\0G','83e8ddd9d4763fb89cf1e3aa4d1a267e',NULL,'¨\Ì\0sr\0Corg.springframework.security.oauth2.common.DefaultOAuth2AccessToken≤û6$˙\Œ\0L\0additionalInformationt\0Ljava/util/Map;L\0\nexpirationt\0Ljava/util/Date;L\0refreshTokent\0?Lorg/springframework/security/oauth2/common/OAuth2RefreshToken;L\0scopet\0Ljava/util/Set;L\0	tokenTypet\0Ljava/lang/String;L\0valueq\0~\0xpsr\0java.util.Collections$EmptyMapY6ÖZ\‹\Á\–\0\0xppppt\0bearert\0$4f7c4afd-9d51-439d-ba81-b1cfc31c8625','49cd6dcd59fe1b7fed9b5cafefad61de','67a0d89a49fa6a4a45c208b01c08cf22',4,NULL),(360,'¨\Ì\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2AuthenticationΩ@bR\0L\0clientAuthenticationt\0CLorg/springframework/security/oauth2/provider/AuthorizationRequest;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationToken”™(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList¸%1µ\Ïé\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0Ä\À^˜\0L\0cq\0~\0xpsr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0xq\0~\0psr\0Horg.springframework.security.oauth2.provider.DefaultAuthorizationRequest\›/lm\0Z\0approvedL\0approvalParameterst\0Ljava/util/Map;L\0authoritiesq\0~\0L\0authorizationParametersq\0~\0L\0resolvedRedirectUrit\0Ljava/lang/String;L\0resourceIdst\0Ljava/util/Set;L\0scopeq\0~\0xpsr\0java.util.HashMap\⁄¡\√`\—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0\0xsr\0java.util.HashSet∫DÖïñ∏∑4\0\0xpw\0\0\0\0?@\0\0\0\0\0\0xsr\0&java.util.concurrent.ConcurrentHashMapdô\ﬁùá)=\0I\0segmentMaskI\0segmentShift[\0segmentst\01[Ljava/util/concurrent/ConcurrentHashMap$Segment;xp\0\0\0\0\0\0ur\01[Ljava.util.concurrent.ConcurrentHashMap$Segment;Rw?A2õ9t\0\0xp\0\0\0sr\0.java.util.concurrent.ConcurrentHashMap$Segment6LêXì)=\0F\0\nloadFactorxr\0(java.util.concurrent.locks.ReentrantLockfU®,,\»j\Î\0L\0synct\0/Ljava/util/concurrent/locks/ReentrantLock$Sync;xpsr\04java.util.concurrent.locks.ReentrantLock$NonfairSynceà2\ÁS{ø\0\0xr\0-java.util.concurrent.locks.ReentrantLock$Sync∏¢î™DZ|\0\0xr\05java.util.concurrent.locks.AbstractQueuedSynchronizerfU®Cu?R\„\0I\0statexr\06java.util.concurrent.locks.AbstractOwnableSynchronizer3ﬂØπ≠mo©\0\0xp\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0t\0\rclient_secrett\0 bd5fe04a08754e21b0e7cd4b08203bc0t\0\ngrant_typet\0client_credentialst\0	client_idt\0 f30d46713e731fff5abf11a5d36afb6bt\0scopet\0\0ppxpsq\0~\0w\0\0\0\0?@\0\0\0\0\0\0xsr\0java.util.LinkedHashSet\ÿl\◊Zï\›*\0\0xq\0~\0w\0\0\0\0?@\0\0\0\0\0\0xsr\0-com.ericsson.aup.util.AuthenticationTokenImpl◊®0Vﬂ∫\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sr\0java.util.Collections$EmptyListz∏¥<ßû\ﬁ\0\0xppq\0~\0Cq\0~\0G','989e7c846fd76e98fe8233accdb5f3ab',NULL,'¨\Ì\0sr\0Corg.springframework.security.oauth2.common.DefaultOAuth2AccessToken≤û6$˙\Œ\0L\0additionalInformationt\0Ljava/util/Map;L\0\nexpirationt\0Ljava/util/Date;L\0refreshTokent\0?Lorg/springframework/security/oauth2/common/OAuth2RefreshToken;L\0scopet\0Ljava/util/Set;L\0	tokenTypet\0Ljava/lang/String;L\0valueq\0~\0xpsr\0java.util.Collections$EmptyMapY6ÖZ\‹\Á\–\0\0xppppt\0bearert\0$6b874b2b-765b-40cd-95d2-479bb31cded5','d20ac565d31f67bca7cd053ad1eb6a0d','f30d46713e731fff5abf11a5d36afb6b',360,NULL);
/*!40000 ALTER TABLE `tbl_oauth_access_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_oauth_client_details`
--

DROP TABLE IF EXISTS `tbl_oauth_client_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_oauth_client_details` (
  `client_id` varchar(255) NOT NULL,
  `access_token_validity` varchar(255) DEFAULT NULL,
  `additional_information` varchar(255) DEFAULT NULL,
  `authorities` varchar(255) DEFAULT NULL,
  `authorized_grant_types` varchar(255) DEFAULT NULL,
  `client_secret` varchar(255) DEFAULT NULL,
  `refresh_token_validity` varchar(255) DEFAULT NULL,
  `resource_ids` varchar(255) DEFAULT NULL,
  `scope` varchar(255) DEFAULT NULL,
  `web_server_redirect_uri` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_oauth_client_details`
--

LOCK TABLES `tbl_oauth_client_details` WRITE;
/*!40000 ALTER TABLE `tbl_oauth_client_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_oauth_client_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_oauth_refresh_token`
--

DROP TABLE IF EXISTS `tbl_oauth_refresh_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_oauth_refresh_token` (
  `token_id` varchar(255) NOT NULL,
  `authentication` longblob,
  `token` longblob,
  PRIMARY KEY (`token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_oauth_refresh_token`
--

LOCK TABLES `tbl_oauth_refresh_token` WRITE;
/*!40000 ALTER TABLE `tbl_oauth_refresh_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_oauth_refresh_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_param_counter`
--

DROP TABLE IF EXISTS `tbl_param_counter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_param_counter` (
  `id_param_counter` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(10) NOT NULL,
  PRIMARY KEY (`id_param_counter`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_param_counter`
--

LOCK TABLES `tbl_param_counter` WRITE;
/*!40000 ALTER TABLE `tbl_param_counter` DISABLE KEYS */;
INSERT INTO `tbl_param_counter` VALUES (1,'pmSamplesUlCredits','COUNTER'),(2,'pmSumUlCredits','COUNTER'),(3,'pmSamplesDlCredits','COUNTER'),(4,'pmSumDlCredits','COUNTER'),(5,'availableRbsChannelElementsUplink','PARAM'),(6,'licenseCapacityRbsChannelElementsUplink','PARAM'),(7,'licenseCapacityChannelElementUl','PARAM'),(8,'availableRbsChannelElementsDownlink','PARAM'),(9,'licenseCapacityRbsChannelElementsDownlink','PARAM'),(10,'licenseCapacityChannelElementDl','PARAM'),(11,'productName','PARAM'),(12,'pmRrcConnLevSamp','COUNTER'),(13,'pmRrcConnLevSum','COUNTER'),(14,'AggUlCreditsAvgHour','COUNTER'),(15,'AggDlCreditsAvgHour','COUNTER'),(16,'pmLicConnectedUsersMax','COUNTER'),(17,'pmLicConnectedUsersLevSum','COUNTER'),(18,'pmLicConnectedUsersLevSamp','COUNTER'),(19,'pmSumCapacity','COUNTER'),(20,'pmSamplesCapacity','COUNTER'),(21,'pmSumCapacityUlCe','COUNTER'),(22,'pmSamplesCapacityUlCe','COUNTER'),(23,'pmSumCapacityDlCe','COUNTER'),(24,'pmSamplesCapacityDlCe','COUNTER'),(25,'pmSumCapacityRegulation','COUNTER'),(26,'pmSamplesCapacityRegulation','COUNTER'),(27,'licensedCapacityLimit','PARAM'),(28,'pmRrcConnEstabAtt','COUNTER'),(29,'licenseCapacityConnectedUsers','PARAM'),(30,'pmRrcConnEstabFailLic','COUNTER'),(31,'Status','COUNTER'),(32,'Map','COUNTER'),(33,'Xml','COUNTER'),(34,'Ip','COUNTER'),(35,'CAPv1','COUNTER'),(36,'Gy','COUNTER'),(37,'SCAPv1','COUNTER'),(38,'CAPv3','COUNTER'),(39,'MAPv3','COUNTER'),(40,'Gx','COUNTER'),(41,'Sy','COUNTER'),(42,'SCAPv2','COUNTER'),(43,'pmNrOfMediaStreamChannelsBusy','COUNTER'),(44,'pmNrOfMeStChUsedVoip','COUNTER'),(45,'pmNrOfMediaStreamChsUsedG729','COUNTER'),(46,'pmNrOfMediaStreamChsUsedAmrWb','COUNTER'),(47,'maxNrOfLicMediaStreamChannels','PARAM'),(48,'maxNrOfLicMediaStreamChannelsVoip','PARAM'),(49,'licenseCapacityG729','PARAM'),(50,'licenseCapacityAmrWb','PARAM'),(51,'pmPdcpVolDlDrb','COUNTER'),(52,'pmSchedActivityCellDl','COUNTER'),(53,'pmPdcpVolUlDrb','COUNTER'),(54,'pmSchedActivityCellUl','COUNTER');
/*!40000 ALTER TABLE `tbl_param_counter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_region`
--

DROP TABLE IF EXISTS `tbl_region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_region` (
  `id_region` bigint(20) NOT NULL AUTO_INCREMENT,
  `name_region` varchar(50) NOT NULL,
  PRIMARY KEY (`id_region`),
  UNIQUE KEY `nameRegion` (`name_region`),
  UNIQUE KEY `UK_rftnhtu5jp63orjcwcd1em3qe` (`name_region`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_region`
--

LOCK TABLES `tbl_region` WRITE;
/*!40000 ALTER TABLE `tbl_region` DISABLE KEYS */;
INSERT INTO `tbl_region` VALUES (1,'RLAM');
/*!40000 ALTER TABLE `tbl_region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_report`
--

DROP TABLE IF EXISTS `tbl_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_report` (
  `id_report` bigint(20) NOT NULL AUTO_INCREMENT,
  `busy_day` tinyint(1) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `stop_date` datetime DEFAULT NULL,
  `timezone` varchar(255) DEFAULT NULL,
  `id_country_customer` bigint(20) DEFAULT NULL,
  `id_schedule` bigint(20) NOT NULL,
  `id_template_report` bigint(20) DEFAULT NULL,
  `id_user` bigint(20) DEFAULT NULL,
  `finished` tinyint(1) NOT NULL DEFAULT '0',
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `attempts` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_report`),
  KEY `FKD607BA92C2DC38EC` (`id_user`),
  KEY `FKD607BA9218833C04` (`id_schedule`),
  KEY `FKD607BA92EEDE3FD2` (`id_template_report`),
  KEY `FKD607BA929B297898` (`id_country_customer`),
  CONSTRAINT `FKD607BA9218833C04` FOREIGN KEY (`id_schedule`) REFERENCES `tbl_schedule` (`id_schedule`),
  CONSTRAINT `FKD607BA929B297898` FOREIGN KEY (`id_country_customer`) REFERENCES `tbl_country_customer` (`id_country_customer`),
  CONSTRAINT `FKD607BA92C2DC38EC` FOREIGN KEY (`id_user`) REFERENCES `tbl_user` (`id_user`),
  CONSTRAINT `FKD607BA92EEDE3FD2` FOREIGN KEY (`id_template_report`) REFERENCES `tbl_template_report` (`id_template_report`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_report`
--

LOCK TABLES `tbl_report` WRITE;
/*!40000 ALTER TABLE `tbl_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_report_threshold`
--

DROP TABLE IF EXISTS `tbl_report_threshold`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_report_threshold` (
  `id_report_threshold` bigint(20) NOT NULL AUTO_INCREMENT,
  `endDate` datetime DEFAULT NULL,
  `startDate` datetime DEFAULT NULL,
  `id_country_customer` bigint(20) NOT NULL,
  `id_template_report` bigint(20) NOT NULL,
  PRIMARY KEY (`id_report_threshold`),
  KEY `FK_sapgnta0vxfjflysmjeuy83wq` (`id_country_customer`),
  KEY `FK_dwbdy0i6qqqrl8xbaxgq70d07` (`id_template_report`),
  CONSTRAINT `FK_dwbdy0i6qqqrl8xbaxgq70d07` FOREIGN KEY (`id_template_report`) REFERENCES `tbl_template_report` (`id_template_report`),
  CONSTRAINT `FK_sapgnta0vxfjflysmjeuy83wq` FOREIGN KEY (`id_country_customer`) REFERENCES `tbl_country_customer` (`id_country_customer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_report_threshold`
--

LOCK TABLES `tbl_report_threshold` WRITE;
/*!40000 ALTER TABLE `tbl_report_threshold` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_report_threshold` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_schedule`
--

DROP TABLE IF EXISTS `tbl_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_schedule` (
  `id_schedule` bigint(20) NOT NULL AUTO_INCREMENT,
  `busy_day` tinyint(1) DEFAULT NULL,
  `cron` varchar(255) NOT NULL,
  `day_number_collect` int(11) DEFAULT '7',
  `email` varchar(255) DEFAULT NULL,
  `collected_end_date` datetime DEFAULT NULL,
  `collected_end_time` varchar(255) DEFAULT NULL,
  `collected_start_date` datetime DEFAULT NULL,
  `collected_start_time` varchar(255) DEFAULT NULL,
  `minute` int(11) DEFAULT '0',
  `schedule_frequency` varchar(255) NOT NULL,
  `schedule_type` varchar(255) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `stop_time` datetime DEFAULT NULL,
  `timezone` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `id_country_customer` bigint(20) NOT NULL,
  `id_data_source` bigint(20) DEFAULT NULL,
  `id_node_type` bigint(20) DEFAULT NULL,
  `id_template_report` bigint(20) DEFAULT NULL,
  `id_user` bigint(20) NOT NULL,
  `network` varchar(45) DEFAULT NULL,
  `last_period_type` varchar(45) DEFAULT NULL,
  `last_period_value` varchar(45) DEFAULT NULL,
  `scheduled` tinyint(1) NOT NULL DEFAULT '0',
  `id_schedule_original` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id_schedule`),
  KEY `FK30B7E41AC2DC38EC` (`id_user`),
  KEY `FK30B7E41ABF661840` (`id_data_source`),
  KEY `FK30B7E41AEEDE3FD2` (`id_template_report`),
  KEY `FK30B7E41A9B297898` (`id_country_customer`),
  KEY `FK30B7E41A74B9DA2C` (`id_node_type`),
  KEY `FK_13hnvv893ut0h3qmomrd4mex4` (`id_schedule_original`),
  CONSTRAINT `FK30B7E41A74B9DA2C` FOREIGN KEY (`id_node_type`) REFERENCES `tbl_node_type` (`id_node_type`),
  CONSTRAINT `FK30B7E41A9B297898` FOREIGN KEY (`id_country_customer`) REFERENCES `tbl_country_customer` (`id_country_customer`),
  CONSTRAINT `FK30B7E41ABF661840` FOREIGN KEY (`id_data_source`) REFERENCES `tbl_data_source` (`id_data_source`),
  CONSTRAINT `FK30B7E41AC2DC38EC` FOREIGN KEY (`id_user`) REFERENCES `tbl_user` (`id_user`),
  CONSTRAINT `FK30B7E41AEEDE3FD2` FOREIGN KEY (`id_template_report`) REFERENCES `tbl_template_report` (`id_template_report`),
  CONSTRAINT `FK_13hnvv893ut0h3qmomrd4mex4` FOREIGN KEY (`id_schedule_original`) REFERENCES `tbl_schedule` (`id_schedule`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_schedule`
--

LOCK TABLES `tbl_schedule` WRITE;
/*!40000 ALTER TABLE `tbl_schedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_startup_message`
--

DROP TABLE IF EXISTS `tbl_startup_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_startup_message` (
  `id_settings` bigint(20) NOT NULL AUTO_INCREMENT,
  `active` bit(1) NOT NULL,
  `information` varchar(255) NOT NULL,
  PRIMARY KEY (`id_settings`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_startup_message`
--

LOCK TABLES `tbl_startup_message` WRITE;
/*!40000 ALTER TABLE `tbl_startup_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_startup_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_template_report`
--

DROP TABLE IF EXISTS `tbl_template_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_template_report` (
  `id_template_report` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `id_collect_type` bigint(20) NOT NULL,
  PRIMARY KEY (`id_template_report`),
  KEY `FK300271AC795676F8` (`id_collect_type`),
  CONSTRAINT `FK300271AC795676F8` FOREIGN KEY (`id_collect_type`) REFERENCES `tbl_collect_type` (`id_collect_type`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_template_report`
--

LOCK TABLES `tbl_template_report` WRITE;
/*!40000 ALTER TABLE `tbl_template_report` DISABLE KEYS */;
INSERT INTO `tbl_template_report` VALUES (2,'','3G_CheCredits_Node',9),(3,'','4G_ActiveUsers_Network_Regional',12),(7,'','3G_CheCapacity_Network',22),(8,'','4G_ConnectedUsersMax_Network_Regional',19),(9,'','3G_ActiveUsers_Network_Regional',16),(10,'','3G_ActiveUsers_Network',17),(11,'','4G_ActiveUsers_Network',18),(12,'','4G_ConnectedUsersMax_Network',25),(13,'','4G_ActiveUsersAvg_Network',27),(14,'','3G_ActiveUsersAvg_Network',26),(16,'','3G_CheCapacity_Node',28),(17,'','3G_IubThp_ActiveUsers_Network',29),(18,'','4G_ConnectedUsersMax_Node',20),(21,'','4G_ActiveUsersUsage_Node',36),(22,'','3G_CheCredits_13peaks_Node',38),(23,'',' 3G_RNC_Capacity',39),(25,'','CS Subscrivers Audit',46),(26,'','BHCA',47),(27,'','3G_ActiveUsersAvg_Network',26),(28,'','3G_ActiveUsers_Network',17),(29,'','3G_ActiveUsers_Network_Regional',16),(30,'','3G_CheCapacity_Network',22),(31,'','3G_CheCapacity_Node',28),(32,'','3G_CheCapacity_Node_5Peak',49),(33,'','3G_CheCredits_13peaks_Node',38),(34,'','3G_CheCredits_Node',9),(35,'','3G_IubThp_ActiveUsers_Network',29),(36,'','3G_IubThp_Node',48),(37,'','3G_RNC_Capacity',39),(38,'','4G_ConnectedUsersAvg_Network',27),(39,'','4G_ConnectedUsersUsage_Node',36),(40,'','4G_ConnectedUsers_Network',18),(41,'','4G_ConnectedUsers_Network_Regional',12),(42,'','4G_ConnectedUsersMax_Network',25),(43,'','4G_ConnectedUsersMax_Network_Regional',19),(44,'','4G_ConnectedUsersMax_Node',20),(45,'','BHCA',47),(46,'','CE Capacity 3G',13),(47,'','Connected Users 4G - Sum/Sample',14),(48,'','Connected Users 4G Max',15),(49,'','CS Subscribers Audit',46),(50,' ','MGW SCC',51),(51,' ','3G_CheCapacity_13peaks_Node',50),(52,'','3G_RNC_Capacity_Avg',52),(53,'','4G_connected_Users_Downlink_Uplink_Thp',53),(54,'','3G_IubThp_ActiveUsers_Hw_Model_Network',54),(55,'','4G_TimConnectedUsersAvg_Network',55),(56,'','4G_TimConnectedUsersAvgUsage_Network',56),(57,'','3G_ActiveUsersAvgHour_Network',57),(58,'','4G_ConnectedUsersAvgHour_Network',58);
/*!40000 ALTER TABLE `tbl_template_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_threshold`
--

DROP TABLE IF EXISTS `tbl_threshold`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_threshold` (
  `id_threshold` bigint(20) NOT NULL AUTO_INCREMENT,
  `column_label` varchar(255) NOT NULL,
  `value` double NOT NULL,
  `id_report_threshold` bigint(20) NOT NULL,
  PRIMARY KEY (`id_threshold`),
  KEY `FK_6hg20rn91lhkbi24wpbx3eknx` (`id_report_threshold`),
  CONSTRAINT `FK_6hg20rn91lhkbi24wpbx3eknx` FOREIGN KEY (`id_report_threshold`) REFERENCES `tbl_report_threshold` (`id_report_threshold`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_threshold`
--

LOCK TABLES `tbl_threshold` WRITE;
/*!40000 ALTER TABLE `tbl_threshold` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_threshold` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_timezone`
--

DROP TABLE IF EXISTS `tbl_timezone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_timezone` (
  `id_timezone` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(100) NOT NULL,
  `timezone` varchar(100) NOT NULL,
  PRIMARY KEY (`id_timezone`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_timezone`
--

LOCK TABLES `tbl_timezone` WRITE;
/*!40000 ALTER TABLE `tbl_timezone` DISABLE KEYS */;
INSERT INTO `tbl_timezone` VALUES (1,'GMT-14:00','GMT-14:00'),(2,'GMT-13:00','GMT-13:00'),(3,'GMT-12:00','GMT-12:00'),(4,'GMT-11:00','GMT-11:00'),(5,'GMT-10:00','GMT-10:00'),(6,'GMT-9:00','GMT-9:00'),(7,'GMT-8:00','GMT-8:00'),(8,'GMT-7:00','GMT-7:00'),(9,'GMT-6:00','GMT-6:00'),(10,'GMT-5:00','GMT-5:00'),(11,'GMT-4:00','GMT-4:00'),(12,'GMT-3:00','GMT-3:00'),(13,'GMT-2:00','GMT-2:00'),(14,'GMT-1:00','GMT-1:00'),(15,'GMT','GMT'),(16,'GMT+1:00','GMT+1:00'),(17,'GMT+2:00','GMT+2:00'),(18,'GMT+3:00','GMT+3:00'),(19,'GMT+4:00','GMT+4:00'),(20,'GMT+5:00','GMT+5:00'),(21,'GMT+6:00','GMT+6:00'),(22,'GMT+7:00','GMT+7:00'),(23,'GMT+8:00','GMT+8:00'),(24,'GMT+9:00','GMT+9:00'),(25,'GMT+10:00','GMT+10:00'),(26,'GMT+11:00','GMT+11:00'),(27,'GMT+12:00','GMT+12:00');
/*!40000 ALTER TABLE `tbl_timezone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_user` (
  `id_user` bigint(20) NOT NULL AUTO_INCREMENT,
  `active` tinyint(1) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `user_login` varchar(50) NOT NULL,
  PRIMARY KEY (`id_user`),
  UNIQUE KEY `userLogin` (`user_login`),
  UNIQUE KEY `UK_nckfu5q4qpmogcas755b107xd` (`user_login`)
) ENGINE=InnoDB AUTO_INCREMENT=471 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_user`
--

LOCK TABLES `tbl_user` WRITE;
/*!40000 ALTER TABLE `tbl_user` DISABLE KEYS */;
INSERT INTO `tbl_user` VALUES (1,1,NULL,NULL,'xbrufre'),(3,1,NULL,NULL,'edbmpdi'),(4,1,NULL,NULL,'xbatjam'),(6,1,NULL,NULL,'xrodfar'),(7,1,NULL,NULL,'xhlifer'),(8,1,NULL,NULL,'xandbaz'),(44,1,NULL,NULL,'xeltrod'),(367,1,NULL,NULL,'admin'),(395,1,NULL,NULL,'elisste'),(456,1,NULL,NULL,'xmarcsi'),(457,1,NULL,NULL,'edbfcwn'),(458,1,NULL,NULL,'eparmma'),(459,1,NULL,NULL,'eluroma'),(460,1,'gustavo.alcantara.munhoz@ericsson.com',NULL,'emungus'),(461,1,NULL,NULL,'xlemand'),(462,1,'andersonferreira@inatel.br',NULL,'xandesi'),(463,1,NULL,NULL,'erioana'),(464,1,NULL,NULL,'XHUGLUI'),(465,1,NULL,NULL,'EVINFIO'),(467,1,NULL,NULL,'edbrdll'),(468,1,NULL,NULL,'xbradan'),(469,1,NULL,NULL,'xcritri'),(470,1,NULL,NULL,'xgilfer');
/*!40000 ALTER TABLE `tbl_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_week_days_schedule`
--

DROP TABLE IF EXISTS `tbl_week_days_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_week_days_schedule` (
  `id_schedule` bigint(20) NOT NULL,
  `weekday` varchar(255) NOT NULL,
  PRIMARY KEY (`id_schedule`,`weekday`),
  KEY `FKC3AB0E0018833C04` (`id_schedule`),
  CONSTRAINT `FKC3AB0E0018833C04` FOREIGN KEY (`id_schedule`) REFERENCES `tbl_schedule` (`id_schedule`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_week_days_schedule`
--

LOCK TABLES `tbl_week_days_schedule` WRITE;
/*!40000 ALTER TABLE `tbl_week_days_schedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_week_days_schedule` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-03 22:25:11
