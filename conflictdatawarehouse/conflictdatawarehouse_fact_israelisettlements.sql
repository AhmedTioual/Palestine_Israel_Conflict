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
-- Table structure for table `fact_israelisettlements`
--

DROP TABLE IF EXISTS `fact_israelisettlements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fact_israelisettlements` (
  `District_ID` int DEFAULT NULL,
  `Year_ID` int DEFAULT NULL,
  `Period_ID` int DEFAULT NULL,
  `NumberOfIsraeliSettlements` int DEFAULT NULL,
  KEY `District_ID` (`District_ID`),
  KEY `Year_ID` (`Year_ID`),
  KEY `Period_ID` (`Period_ID`),
  CONSTRAINT `fact_israelisettlements_ibfk_1` FOREIGN KEY (`District_ID`) REFERENCES `dim_district` (`District_ID`),
  CONSTRAINT `fact_israelisettlements_ibfk_2` FOREIGN KEY (`Year_ID`) REFERENCES `dim_year` (`Year_ID`),
  CONSTRAINT `fact_israelisettlements_ibfk_3` FOREIGN KEY (`Period_ID`) REFERENCES `dim_period` (`Period_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fact_israelisettlements`
--

LOCK TABLES `fact_israelisettlements` WRITE;
/*!40000 ALTER TABLE `fact_israelisettlements` DISABLE KEYS */;
INSERT INTO `fact_israelisettlements` VALUES (8,96,9,14),(7,96,9,257),(6,96,9,420),(5,96,9,126),(4,96,9,69),(3,96,9,94),(1,96,9,242),(8,92,96,19),(7,92,96,247),(6,92,96,418),(5,92,96,122),(4,92,96,69),(3,92,96,90),(1,92,96,239),(8,88,66,19),(7,88,66,236),(6,88,66,422),(5,88,66,128),(4,88,66,69),(3,88,66,92),(2,88,66,17),(1,88,66,246),(8,87,9,14),(7,87,9,260),(6,87,9,422),(5,87,9,126),(4,87,9,70),(3,87,9,94),(1,87,9,242),(8,83,96,14),(7,83,96,257),(6,83,96,420),(5,83,96,125),(4,83,96,69),(3,83,96,94),(1,83,96,242),(8,79,96,19),(7,79,96,246),(6,79,96,418),(5,79,96,122),(4,79,96,69),(3,79,96,90),(1,79,96,238),(8,75,66,19),(7,75,66,236),(6,75,66,422),(5,75,66,127),(4,75,66,69),(3,75,66,92),(2,75,66,17),(1,75,66,246),(8,74,9,14),(7,74,9,260),(6,74,9,421),(5,74,9,127),(4,74,9,69),(3,74,9,94),(1,74,9,242),(8,70,96,14),(7,70,96,257),(6,70,96,420),(5,70,96,125),(4,70,96,69),(3,70,96,94),(1,70,96,242),(8,66,96,19),(7,66,96,243),(6,66,96,417),(5,66,96,122),(4,66,96,69),(3,66,96,90),(1,66,96,237),(8,62,66,19),(7,62,66,236),(6,62,66,419),(5,62,66,127),(4,62,66,69),(3,62,66,92),(2,62,66,17),(1,62,66,245),(8,61,9,14),(7,61,9,259),(6,61,9,421),(5,61,9,127),(4,61,9,69),(3,61,9,94),(1,61,9,242),(8,57,96,14),(7,57,96,257),(6,57,96,420),(5,57,96,123),(4,57,96,69),(3,57,96,94),(1,57,96,241),(8,53,66,19),(7,53,66,242),(6,53,66,417),(5,53,66,126),(4,53,66,69),(3,53,66,90),(2,53,66,17),(1,53,66,238),(8,49,66,19),(7,49,66,234),(6,49,66,419),(5,49,66,128),(4,49,66,69),(3,49,66,91),(2,49,66,17),(1,49,66,245),(8,48,9,14),(7,48,9,259),(6,48,9,421),(5,48,9,128),(4,48,9,69),(3,48,9,94),(1,48,9,242),(8,44,96,14),(7,44,96,253),(6,44,96,420),(5,44,96,122),(4,44,96,69),(3,44,96,93),(1,44,96,241),(8,40,66,19),(7,40,66,240),(6,40,66,418),(5,40,66,127),(4,40,66,69),(3,40,66,90),(2,40,66,17),(1,40,66,238),(8,36,66,19),(7,36,66,234),(6,36,66,420),(5,36,66,128),(4,36,66,69),(3,36,66,97),(2,36,66,17),(1,36,66,242),(8,35,9,14),(7,35,9,259),(6,35,9,421),(5,35,9,127),(4,35,9,69),(3,35,9,94),(1,35,9,242),(8,31,96,14),(7,31,96,249),(6,31,96,420),(5,31,96,122),(4,31,96,69),(3,31,96,92),(1,31,96,239),(8,27,66,19),(7,27,66,240),(6,27,66,421),(5,27,66,128),(4,27,66,69),(3,27,66,93),(2,27,66,17),(1,27,66,244),(8,22,9,14),(7,22,9,259),(6,22,9,421),(5,22,9,126),(4,22,9,69),(3,22,9,94),(1,22,9,242),(8,18,96,14),(7,18,96,247),(6,18,96,421),(5,18,96,122),(4,18,96,69),(3,18,96,92),(1,18,96,239),(8,14,66,19),(7,14,66,237),(6,14,66,423),(5,14,66,128),(4,14,66,69),(3,14,66,93),(2,14,66,17),(1,14,66,245),(8,9,9,14),(7,9,9,258),(6,9,9,421),(5,9,9,126),(4,9,9,69),(3,9,9,94),(1,9,9,242),(8,5,96,14),(7,5,96,247),(6,5,96,418),(5,5,96,122),(4,5,96,69),(3,5,96,90),(1,5,96,239),(8,1,66,19),(7,1,66,237),(6,1,66,423),(5,1,66,128),(4,1,66,69),(3,1,66,92),(2,1,66,17),(1,1,66,245);
/*!40000 ALTER TABLE `fact_israelisettlements` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-04 21:40:13
