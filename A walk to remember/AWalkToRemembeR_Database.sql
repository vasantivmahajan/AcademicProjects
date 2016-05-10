-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: localhost    Database: a_walk_to_remember_db
-- ------------------------------------------------------
-- Server version	5.6.26-log

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `personid` bigint(20) NOT NULL,
  PRIMARY KEY (`personid`),
  CONSTRAINT `FK2cu23umvmicjhryy4sni11yay` FOREIGN KEY (`personid`) REFERENCES `person` (`personID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (6);
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_event`
--

DROP TABLE IF EXISTS `admin_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_event` (
  `Admin_personid` bigint(20) NOT NULL,
  `eventSet_eventId` int(11) NOT NULL,
  PRIMARY KEY (`Admin_personid`,`eventSet_eventId`),
  UNIQUE KEY `UK_g5pdbrbmrj933deag9cbfe02m` (`eventSet_eventId`),
  CONSTRAINT `FK34eqxpgyp9evcmwfout2e5h4t` FOREIGN KEY (`Admin_personid`) REFERENCES `admin` (`personid`),
  CONSTRAINT `FKflw3vr8ahvd44vml26418g0vq` FOREIGN KEY (`eventSet_eventId`) REFERENCES `event` (`eventId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_event`
--

LOCK TABLES `admin_event` WRITE;
/*!40000 ALTER TABLE `admin_event` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_goal`
--

DROP TABLE IF EXISTS `admin_goal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_goal` (
  `Admin_personid` bigint(20) NOT NULL,
  `goalSet_goalId` int(11) NOT NULL,
  PRIMARY KEY (`Admin_personid`,`goalSet_goalId`),
  UNIQUE KEY `UK_7xknuqb9ftefswsxvonjb4it4` (`goalSet_goalId`),
  CONSTRAINT `FK598pt38pdvucfftf0fhpg8ogv` FOREIGN KEY (`Admin_personid`) REFERENCES `admin` (`personid`),
  CONSTRAINT `FKtk1dlh49j3tbfryj8u0g6bd7q` FOREIGN KEY (`goalSet_goalId`) REFERENCES `goal` (`goalId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_goal`
--

LOCK TABLES `admin_goal` WRITE;
/*!40000 ALTER TABLE `admin_goal` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_goal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `advertiser`
--

DROP TABLE IF EXISTS `advertiser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `advertiser` (
  `personID` bigint(20) NOT NULL,
  PRIMARY KEY (`personID`),
  CONSTRAINT `FK1uayc2q7tshyovhtqjt6xkfgc` FOREIGN KEY (`personID`) REFERENCES `person` (`personID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `advertiser`
--

LOCK TABLES `advertiser` WRITE;
/*!40000 ALTER TABLE `advertiser` DISABLE KEYS */;
INSERT INTO `advertiser` VALUES (4);
/*!40000 ALTER TABLE `advertiser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event` (
  `eventId` int(11) NOT NULL,
  `emailAddress` varchar(255) DEFAULT NULL,
  `eventDate` varchar(255) DEFAULT NULL,
  `eventDescription` varchar(255) DEFAULT NULL,
  `eventTiming` varchar(255) DEFAULT NULL,
  `eventTitle` varchar(255) DEFAULT NULL,
  `phoneNumber` varchar(255) DEFAULT NULL,
  `userStatus` varchar(255) DEFAULT 'No Response',
  `personId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`eventId`),
  KEY `FKi18ktrr41sd0f5dwxmrw6slx8` (`personId`),
  CONSTRAINT `FKi18ktrr41sd0f5dwxmrw6slx8` FOREIGN KEY (`personId`) REFERENCES `advertiser` (`personID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES (5,'shradhavmahajan@gmail.com','2016-04-29','Learn about angular JS with our tutorials','Starting from 29th April 2016','Angular JS tutorials','6319441700','Accepted',4);
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goal`
--

DROP TABLE IF EXISTS `goal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goal` (
  `goalId` int(11) NOT NULL,
  `goalDate` varchar(255) DEFAULT NULL,
  `goalDescription` varchar(255) DEFAULT NULL,
  `loggedTime` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`goalId`),
  KEY `FKegx6faorbe5jlwuqaa3ett3hy` (`user_id`),
  CONSTRAINT `FKegx6faorbe5jlwuqaa3ett3hy` FOREIGN KEY (`user_id`) REFERENCES `user` (`personID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goal`
--

LOCK TABLES `goal` WRITE;
/*!40000 ALTER TABLE `goal` DISABLE KEYS */;
INSERT INTO `goal` VALUES (3,'2016-04-30','Learn angular JS','2016/04/26 08:40:24',1);
/*!40000 ALTER TABLE `goal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (7),(7),(7),(7);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `memory`
--

DROP TABLE IF EXISTS `memory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `memory` (
  `memoryId` int(11) NOT NULL,
  `memoryDate` varchar(255) DEFAULT NULL,
  `memoryDescription` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`memoryId`),
  KEY `FK9fofuhhmnha3y4dg8ev2hbxdv` (`user_id`),
  CONSTRAINT `FK9fofuhhmnha3y4dg8ev2hbxdv` FOREIGN KEY (`user_id`) REFERENCES `user` (`personID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `memory`
--

LOCK TABLES `memory` WRITE;
/*!40000 ALTER TABLE `memory` DISABLE KEYS */;
INSERT INTO `memory` VALUES (2,'2016-04-01','My first memory',1);
/*!40000 ALTER TABLE `memory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person` (
  `personID` bigint(20) NOT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `userName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`personID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES (1,'vasanti','mahajan','password','USER','mahajan'),(4,'shradha','mahajan','password','ADVERTISER','smahajan'),(6,'nilima','mahajan','password','ADMIN','nmahajan');
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `emailAddress` varchar(255) DEFAULT NULL,
  `personID` bigint(20) NOT NULL,
  PRIMARY KEY (`personID`),
  CONSTRAINT `FKl208fa9pi8s4fesb5o6wqpqak` FOREIGN KEY (`personID`) REFERENCES `person` (`personID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('mahajan.v@husky.neu.edu',1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_events`
--

DROP TABLE IF EXISTS `user_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_events` (
  `event_id` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`event_id`,`user_id`),
  KEY `FKp4khrd0n1u255a1194yi68ob9` (`user_id`),
  CONSTRAINT `FKp4khrd0n1u255a1194yi68ob9` FOREIGN KEY (`user_id`) REFERENCES `user` (`personID`),
  CONSTRAINT `FKsey5builjx7d19nbpqwqcgt7x` FOREIGN KEY (`event_id`) REFERENCES `event` (`eventId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_events`
--

LOCK TABLES `user_events` WRITE;
/*!40000 ALTER TABLE `user_events` DISABLE KEYS */;
INSERT INTO `user_events` VALUES (5,1);
/*!40000 ALTER TABLE `user_events` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-04-26  8:46:55
