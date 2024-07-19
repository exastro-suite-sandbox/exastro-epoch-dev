-- MySQL dump 10.13  Distrib 8.0.38, for Linux (x86_64)
--
-- Host: unittest-epoch-db    Database: epoch
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.8-MariaDB-1:10.4.8+maria~bionic

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
-- Current Database: `epoch`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `epoch` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;

USE `epoch`;

--
-- Table structure for table `T_EPOCH_MIGRATION_HISTORY`
--

DROP TABLE IF EXISTS `T_EPOCH_MIGRATION_HISTORY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T_EPOCH_MIGRATION_HISTORY` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VERSION` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `RESULT` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MESSAGE` varchar(4096) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_EPOCH_MIGRATION_HISTORY`
--

LOCK TABLES `T_EPOCH_MIGRATION_HISTORY` WRITE;
/*!40000 ALTER TABLE `T_EPOCH_MIGRATION_HISTORY` DISABLE KEYS */;
INSERT INTO `T_EPOCH_MIGRATION_HISTORY` VALUES (1,'2.0.0','START',NULL,'2024-07-19 09:35:09','2.0.0','2024-07-19 09:35:09','2.0.0'),(2,'2.0.0','SUCCEED',NULL,'2024-07-19 09:35:10','2.0.0','2024-07-19 09:35:10','2.0.0');
/*!40000 ALTER TABLE `T_EPOCH_MIGRATION_HISTORY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_EPOCH_VERSION`
--

DROP TABLE IF EXISTS `T_EPOCH_VERSION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T_EPOCH_VERSION` (
  `ID` int(11) NOT NULL,
  `VERSION` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_EPOCH_VERSION`
--

LOCK TABLES `T_EPOCH_VERSION` WRITE;
/*!40000 ALTER TABLE `T_EPOCH_VERSION` DISABLE KEYS */;
INSERT INTO `T_EPOCH_VERSION` VALUES (1,'2.0.0','2024-07-19 09:35:09','system','2024-07-19 09:35:10','2.0.0');
/*!40000 ALTER TABLE `T_EPOCH_VERSION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_ORGANIZATION_DB`
--

DROP TABLE IF EXISTS `T_ORGANIZATION_DB`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T_ORGANIZATION_DB` (
  `ORGANIZATION_ID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DB_HOST` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DB_PORT` int(11) DEFAULT NULL,
  `DB_DATABASE` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DB_USER` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DB_PASSWORD` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ORGANIZATION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_ORGANIZATION_DB`
--

LOCK TABLES `T_ORGANIZATION_DB` WRITE;
/*!40000 ALTER TABLE `T_ORGANIZATION_DB` DISABLE KEYS */;
/*!40000 ALTER TABLE `T_ORGANIZATION_DB` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-19  9:35:11
