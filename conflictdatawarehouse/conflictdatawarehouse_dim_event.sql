-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: conflictdatawarehouse
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `dim_event`
--

DROP TABLE IF EXISTS `dim_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_event` (
  `Event_ID` int NOT NULL,
  `Event_Name` varchar(100) DEFAULT NULL,
  `Event_Date` int NOT NULL,
  PRIMARY KEY (`Event_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_event`
--

LOCK TABLES `dim_event` WRITE;
/*!40000 ALTER TABLE `dim_event` DISABLE KEYS */;
INSERT INTO `dim_event` VALUES (84,'Second Intifada',2000),(97,'Second Intifada',2001),(110,'Second Intifada',2002),(113,'Israel’s unilateral disengagement plan',2003),(123,'Second Intifada',2003),(126,'Israel’s unilateral disengagement plan',2004),(136,'Second Intifada',2004),(139,'Israel’s unilateral disengagement plan',2005),(149,'Second Intifada',2005),(176,'Gaza War',2008),(189,'Gaza War',2009),(236,'Operation Pillar of Defense',2012),(262,'Operation Protective Edge',2014),(272,'2017 Temple Mount crisis',2017),(285,'2018 Gaza border protests',2018),(298,'2019 Israel-Gaza clashes',2019),(324,'2021 Israel-Palestine crisis',2021),(373,'Israel-Hamas War',2023),(386,'Israel-Hamas War',2024);
/*!40000 ALTER TABLE `dim_event` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-04 21:40:11
