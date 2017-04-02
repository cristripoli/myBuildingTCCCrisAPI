-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mybuilding
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
-- Table structure for table `building`
--

DROP TABLE IF EXISTS `building`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `building` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(70) NOT NULL,
  `description` varchar(150) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `estimated_value` decimal(10,0) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_user` (`id_user`),
  CONSTRAINT `building_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `building`
--

LOCK TABLES `building` WRITE;
/*!40000 ALTER TABLE `building` DISABLE KEYS */;
INSERT INTO `building` VALUES (1,'Minha Obra','Minha Obra',1,100000);
/*!40000 ALTER TABLE `building` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `building_category`
--

DROP TABLE IF EXISTS `building_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `building_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_building` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_building` (`id_building`),
  KEY `id_category` (`id_category`),
  CONSTRAINT `building_category_ibfk_1` FOREIGN KEY (`id_building`) REFERENCES `building` (`id`),
  CONSTRAINT `building_category_ibfk_2` FOREIGN KEY (`id_category`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `building_category`
--

LOCK TABLES `building_category` WRITE;
/*!40000 ALTER TABLE `building_category` DISABLE KEYS */;
INSERT INTO `building_category` VALUES (1,1,3),(2,1,1);
/*!40000 ALTER TABLE `building_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  `description` varchar(200) NOT NULL,
  `icon` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Materiais','Materiais como cimento, tijolos, ferragens, acabamento, etc','construct'),(3,'Mão de Obra','Mão de Obra','pricetags');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `credential`
--

DROP TABLE IF EXISTS `credential`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `credential` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL DEFAULT 'NULL',
  `password` varchar(50) NOT NULL DEFAULT 'NULL',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `credential`
--

LOCK TABLES `credential` WRITE;
/*!40000 ALTER TABLE `credential` DISABLE KEYS */;
INSERT INTO `credential` VALUES (1,'admin','admin');
/*!40000 ALTER TABLE `credential` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entry`
--

DROP TABLE IF EXISTS `entry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(200) NOT NULL,
  `date` datetime NOT NULL,
  `value` decimal(10,0) NOT NULL,
  `id_item` int(11) NOT NULL,
  `paid` tinyint(1) NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`id`,`quantity`),
  KEY `id_item` (`id_item`),
  CONSTRAINT `entry_ibfk_1` FOREIGN KEY (`id_item`) REFERENCES `item` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entry`
--

LOCK TABLES `entry` WRITE;
/*!40000 ALTER TABLE `entry` DISABLE KEYS */;
INSERT INTO `entry` VALUES (1,'Casa do construtor','2017-03-09 00:00:00',21,1,1,1),(4,'Pedreiro João','2017-03-09 00:00:00',1000,2,1,1),(5,'Tijolo Baiano do João','2017-03-09 00:00:00',1200,3,1,1),(6,'Casa do construtor 2','2017-03-09 00:00:00',21,1,1,1),(7,'sfdasgd','2017-01-01 00:00:00',12,3,1,1),(8,'sfdasgd','2017-01-01 00:00:00',12,3,1,1),(9,'gsdgas','2017-01-01 00:00:00',12,3,0,1),(10,'aaaaa','2017-01-01 00:00:00',12,2,0,1),(11,'Pedreiro 1','2017-01-01 00:00:00',12,2,0,1),(12,'Pedreiro3','2017-01-01 00:00:00',1000,2,0,1),(13,'Pedreiro 3','2017-01-01 00:00:00',1000,2,0,1),(14,'Pedreio','2017-01-01 00:00:00',1000,2,0,1),(15,'Tijolo do joão','2017-01-01 00:00:00',1000,3,0,1),(16,'Areia fina','2017-01-01 00:00:00',120,5,1,1),(17,'Pedreiro','2017-01-01 00:00:00',1000,2,1,1),(18,'Tijolo','2017-01-01 00:00:00',1000,3,1,1),(19,'dfsg','2017-01-01 00:00:00',123,4,1,1),(20,'eeeeeeee','2017-01-01 00:00:00',34,1,1,1),(21,'Prego pequeno','2017-01-01 00:00:00',10,1,1,2),(22,'Ferragem','2017-01-01 00:00:00',500,6,1,1),(23,'prego pqno','2017-01-01 00:00:00',10,8,1,1),(24,'fsdfa','2017-01-01 00:00:00',34,13,1,1),(25,'esfa','2017-01-01 00:00:00',200,1,1,1),(26,'fdg','2017-02-02 00:00:00',45,3,1,3);
/*!40000 ALTER TABLE `entry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  `description` varchar(200) NOT NULL,
  `id_category` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_category` (`id_category`),
  CONSTRAINT `item_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (1,'Cimento','Saco de cimento CP2 40kg',1),(2,'Pedreiro','Pedreiro',3),(3,'Tijolo Baiano','Milheiro',1),(4,'Pedra ','Brita Fina',1),(5,'Areia','Areia',1),(6,'Ferragem','Ferragem',1),(7,'Terra','Terra',1),(8,'Prego','Prego',1),(9,'Cano','Cano',1),(10,'Fio','Fio',1),(11,'Revestimento','Revestimento cozinha',1),(12,'Piso','Piso',1),(13,'dfas','sdf',1),(14,'dfas','sdf',1),(15,'dsrfasg','sadgsdg',1),(16,'cri','cri',1),(17,'fff','ffff',1),(18,'aaaa','aaa',1);
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(70) NOT NULL DEFAULT 'NULL',
  `email` varchar(70) NOT NULL DEFAULT 'NULL',
  `id_credentials` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_credentials` (`id_credentials`),
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`id_credentials`) REFERENCES `credential` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Admin','admin@admin',1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-02 15:14:22
