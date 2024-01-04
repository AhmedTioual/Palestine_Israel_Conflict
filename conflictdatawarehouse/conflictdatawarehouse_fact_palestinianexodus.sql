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
-- Table structure for table `fact_palestinianexodus`
--

DROP TABLE IF EXISTS `fact_palestinianexodus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fact_palestinianexodus` (
  `Country_ID` int DEFAULT NULL,
  `Year_ID` int DEFAULT NULL,
  `Period_ID` int DEFAULT NULL,
  `NumberOfPalestinianRefugees` int DEFAULT NULL,
  KEY `Country_ID` (`Country_ID`),
  KEY `Year_ID` (`Year_ID`),
  KEY `Period_ID` (`Period_ID`),
  CONSTRAINT `fact_palestinianexodus_ibfk_1` FOREIGN KEY (`Country_ID`) REFERENCES `dim_country` (`Country_ID`),
  CONSTRAINT `fact_palestinianexodus_ibfk_2` FOREIGN KEY (`Year_ID`) REFERENCES `dim_year` (`Year_ID`),
  CONSTRAINT `fact_palestinianexodus_ibfk_3` FOREIGN KEY (`Period_ID`) REFERENCES `dim_period` (`Period_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fact_palestinianexodus`
--

LOCK TABLES `fact_palestinianexodus` WRITE;
/*!40000 ALTER TABLE `fact_palestinianexodus` DISABLE KEYS */;
INSERT INTO `fact_palestinianexodus` VALUES (68,1,100,1609566),(435,1,100,1428891),(37,2,100,206521),(135,3,72,86669),(135,5,100,461897),(68,6,100,811260),(435,6,100,792997),(37,7,72,146969),(37,9,100,463664),(135,10,100,321104),(68,11,100,520997),(435,11,100,585231),(37,14,100,384918),(135,15,100,200605),(68,16,72,505704),(435,16,72,216227),(68,18,100,1983733),(435,18,100,1885188),(37,19,100,274878),(135,20,72,129010),(135,22,100,551873),(68,23,100,1239811),(435,23,100,1178777),(37,24,100,181764),(135,27,100,405601),(68,28,100,706625),(435,28,100,685793),(37,29,72,103167),(37,31,100,430078),(135,32,100,261694),(68,33,72,678985),(435,33,72,293024),(68,35,100,2242577),(435,35,100,2267747),(37,36,100,349773),(135,37,100,171230),(68,40,100,1740170),(435,40,100,1587920),(37,41,100,230105),(135,42,72,97007),(135,44,100,486946),(68,45,100,884040),(435,45,100,856639),(37,46,72,162499),(37,48,100,476033),(135,49,100,352136),(68,50,100,582400),(435,50,100,607485),(37,53,100,399152),(135,54,100,216351),(68,55,72,586706),(435,55,72,245343),(68,57,100,2034641),(435,57,100,1944544),(37,58,100,296871),(135,59,72,142206),(37,61,100,479537),(68,62,100,1437371),(435,62,100,1308438),(37,63,100,192830),(135,66,100,432048),(68,67,100,756487),(435,67,100,722965),(37,68,72,134569),(37,70,100,447328),(135,71,100,284888),(68,72,100,668453),(435,72,100,295040),(435,74,100,2400208),(135,74,100,575234),(37,75,100,367610),(135,76,100,186130),(68,77,72,472647),(435,77,72,206014),(68,79,100,1858362),(435,79,100,1739266),(37,80,100,252593),(135,81,72,116778),(135,83,100,528616),(68,84,100,989207),(435,84,100,987508),(37,85,100,168927),(68,87,100,2365090),(135,88,100,378382),(68,89,100,653708),(435,89,100,641403),(37,90,72,100942),(37,92,100,413962),(135,93,100,240718),(68,94,72,633197),(435,94,72,265430),(68,96,100,2144233),(435,96,100,2104001),(37,97,100,324219),(135,98,100,156635),(37,100,13,490636),(37,1,100,380072),(135,1,100,387526),(68,2,100,672301),(135,2,100,195517),(435,2,100,656181),(68,3,72,493109),(37,3,72,102851),(435,3,72,212620),(68,5,100,1951603),(37,5,100,422188),(435,5,100,1836123),(37,6,100,267614),(135,6,100,247991),(68,7,72,644940),(135,7,72,124626),(435,7,72,273038),(68,9,100,2175491),(135,9,100,543014),(435,9,100,2158274),(68,10,100,1140199),(37,10,100,334659),(435,10,100,1117275),(37,11,100,177862),(135,11,100,160932),(68,14,100,1662227),(135,14,100,396248),(435,14,100,1483394),(68,15,100,690298),(37,15,100,215248),(435,15,100,672664),(37,16,72,101536),(135,16,72,88958),(37,18,100,425640),(135,18,100,472109),(68,19,100,834271),(135,19,100,254293),(435,19,100,808938),(68,20,72,662525),(37,20,72,152747),(435,20,72,283782),(68,22,100,2206736),(37,22,100,469555),(435,22,100,2214783),(37,23,100,342121),(135,23,100,332465),(68,24,100,542549),(135,24,100,166099),(435,24,100,596684),(68,27,100,1698271),(37,27,100,389233),(435,27,100,1532589),(37,28,100,223470),(135,28,100,206045),(68,29,72,511413),(135,29,72,90919),(435,29,72,219423),(68,31,100,1942431),(135,31,100,476801),(435,31,100,1841769),(68,32,100,859689),(37,32,100,282757),(435,32,100,828482),(37,33,72,157274),(135,33,72,133366),(37,35,100,475075),(135,35,100,560139),(68,36,100,1328768),(135,36,100,342507),(435,36,100,1224996),(68,37,100,557971),(37,37,100,185597),(435,37,100,608237),(37,40,100,394532),(135,40,100,413827),(68,41,100,723551),(135,41,100,212053),(435,41,100,697453),(68,42,72,534604),(37,42,72,108748),(435,42,72,227427),(68,44,100,1979580),(37,44,100,436154),(435,44,100,1895043),(37,45,100,292098),(135,45,100,269142),(68,46,72,697658),(135,46,72,138081),(435,46,72,301879),(68,48,100,2272411),(135,48,100,562312),(435,48,100,2319073),(68,49,100,1389603),(37,49,100,356258),(435,49,100,1270333),(37,50,100,189277),(135,50,100,175817),(68,53,100,1776669),(135,53,100,421737),(435,53,100,1634952),(68,54,100,736920),(37,54,100,233881),(435,54,100,707689),(37,55,72,129228),(135,55,72,109506),(37,57,100,441543),(135,57,100,499189),(68,58,100,916013),(135,58,100,276547),(435,58,100,886736),(68,59,72,714763),(37,59,72,161262),(435,59,72,311846),(435,61,100,2348243),(68,61,100,2307011),(135,61,100,568730),(37,62,100,362098),(135,62,100,361202),(68,63,100,607430),(135,63,100,179916),(435,63,100,616545),(68,66,100,1827877),(37,66,100,404170),(435,66,100,1685851),(37,67,100,239217),(135,67,100,223122),(68,68,72,604236),(135,68,72,112949),(435,68,72,251976),(68,70,100,2070973),(135,70,100,517255),(435,70,100,1994493),(68,71,100,943819),(37,71,100,306471),(435,71,100,931338),(37,72,100,122967),(135,72,100,127304),(68,74,100,2334789),(37,74,100,482676),(68,75,100,1487449),(135,75,100,370035),(435,75,100,1348288),(68,76,100,636778),(37,76,100,197974),(435,76,100,631554),(37,77,72,103137),(135,77,72,85660),(37,79,100,408438),(135,79,100,442363),(68,80,100,771134),(135,80,100,229433),(435,80,100,738797),(68,81,72,623660),(37,81,72,137884),(435,81,72,258165),(68,83,100,2117361),(37,83,100,452669),(435,83,100,2051096),(37,84,100,315508),(135,84,100,294050),(68,85,100,478369),(135,85,100,151730),(435,85,100,576889),(435,87,100,2454258),(37,87,100,487282),(135,87,100,580723),(68,88,100,1541405),(37,88,100,373440),(435,88,100,1384655),(37,89,100,199238),(135,89,100,189902),(68,90,72,479243),(135,90,72,85182),(435,90,72,209229),(68,92,100,1903490),(135,92,100,451467),(435,92,100,1793901),(68,93,100,790430),(37,93,100,260270),(435,93,100,775798),(37,94,72,142670),(135,94,72,120577),(37,96,100,458369),(135,96,100,534654),(68,97,100,1042123),(135,97,100,306042),(435,97,100,1055436),(68,98,100,499460),(37,98,100,173539),(435,98,100,580025),(435,100,13,2482144),(68,100,13,2379525),(135,100,13,583942);
/*!40000 ALTER TABLE `fact_palestinianexodus` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-04 21:40:12
