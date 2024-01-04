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
-- Table structure for table `dim_settlement`
--

DROP TABLE IF EXISTS `dim_settlement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_settlement` (
  `Settlement_ID` int NOT NULL,
  `Settlement_Name` tinytext,
  PRIMARY KEY (`Settlement_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_settlement`
--

LOCK TABLES `dim_settlement` WRITE;
/*!40000 ALTER TABLE `dim_settlement` DISABLE KEYS */;
INSERT INTO `dim_settlement` VALUES (7,'SHAHAR'),(10,'TIROSH'),(11,'NIR HEN'),(13,'HAZEVA'),(15,'NO\'AM'),(16,'BET NIR'),(18,'SEDE MOSHE'),(21,'BE\'ER ORA'),(22,'MIQWE YISRA\'EL'),(23,'AMAZYA'),(24,'LAKHISH'),(26,'ROSH PINNA'),(27,'SEDOT MIKHA'),(28,'MAZKERET BATYA'),(29,'YESUD HAMA\'ALA'),(31,'OFAQIM'),(32,'OZEM'),(33,'BAT SHELOMO'),(35,'GADOT'),(36,'SEDE DAWID'),(37,'ETAN'),(39,'GEFEN'),(41,'ELYAKHIN'),(43,'METULA'),(44,'ZOHAR'),(46,'YAVNE\'EL'),(47,'KEFAR TAVOR'),(48,'MENAHEMYA'),(49,'ILANIYYA'),(52,'LUZIT'),(53,'ATLIT'),(55,'NOGAH'),(57,'KINNERET(QEVUZA)'),(58,'MIZPA'),(59,'NEHUSHA'),(62,'DEGANYA ALEF'),(63,'KINNERET(MOSHAVA)'),(64,'YAD RAMBAM'),(65,'MIGDAL'),(66,'MERHAVYA(QIBBUZ)'),(67,'OR HANER'),(69,'NIR OZ'),(70,'ASHDOD'),(71,'ESHBOL'),(72,'GAN SHEMU\'EL'),(74,'EN HOD'),(76,'KEFAR GIL\'ADI'),(77,'AYYELET HASHAHAR'),(78,'QIRYAT ANAVIM'),(79,'DEGANYA BET'),(80,'NAHALAL'),(82,'EN HAROD(ME\'UHAD)'),(84,'TEL YOSEF'),(85,'KEFAR YEHEZQEL'),(86,'GEVA'),(88,'KEREM BEN SHEMEN'),(89,'EN HAROD (IHUD)'),(90,'HEFZI-BAH'),(92,'GINNEGAR'),(94,'BALFURYA'),(95,'BET ALFA'),(96,'YAGUR'),(97,'MERHAVYA(MOSHAV)'),(98,'KEFAR MALAL'),(99,'MIZPE RAMON'),(102,'ME\'IR SHEFEYA'),(103,'TEL ADASHIM'),(104,'MIZRA'),(106,'KEFAR GID\'ON'),(107,'KEFAR SILVER'),(112,'KEFAR HASIDIM ALEF'),(113,'ADDIRIM'),(115,'HOFIT'),(122,'RAMAT YISHAY'),(126,'SARID'),(127,'RAMAT RAHEL'),(128,'GAT RIMMON'),(130,'MISHMAR HAEMEQ'),(132,'KEFAR BARUKH'),(133,'GEVAT'),(134,'YIF\'AT'),(135,'RAMAT DAWID'),(139,'EN SHEMER'),(140,'KEFAR YEHOSHUA'),(141,'BARAQ'),(142,'SEDE YA\'AQOV'),(143,'BET ZERA'),(144,'GAN SHELOMO'),(145,'GADISH'),(146,'DEVORA'),(147,'GIV\'AT BRENNER'),(154,'TEL MOND'),(155,'BE\'ER TOVIYYA'),(156,'AYANOT'),(157,'EN WERED'),(158,'NA\'AN'),(159,'BET HANAN'),(160,'HULDA'),(162,'HERUT'),(163,'TIMMORIM'),(164,'MELE\'A'),(165,'NIR YAFE'),(166,'GAN YAVNE'),(167,'EN HAHORESH'),(168,'KEFAR YONA'),(170,'KEFAR YA\'BEZ'),(171,'PARDESIYYA'),(173,'GIV\'AT HAYYIM(ME\'UHAD)'),(174,'NETA\'IM'),(175,'AVIHAYIL'),(176,'AFIQIM'),(177,'KEFAR BILU'),(178,'RAMAT YOHANAN'),(182,'EVEN YEHUDA'),(183,'YARQONA'),(184,'RAMAT HAKOVESH'),(186,'NE\'URIM'),(187,'KEFAR HESS'),(188,'ASHDOT YA\'AQOV(ME\'UHAD)'),(189,'KEFAR PINES'),(190,'KEFAR VITKIN'),(191,'HADAR AM'),(192,'KEFAR HAHORESH'),(193,'KEFAR HAYYIM'),(194,'MISHMAR HASHARON'),(195,'QADIMA-ZORAN'),(196,'GIBBETON'),(197,'MA\'BAROT'),(198,'ZOFIT'),(199,'ASHDOT YA\'AQOV(IHUD)'),(200,'BET YANNAY'),(202,'BET OVED'),(204,'ELYASHIV'),(205,'HOGLA'),(206,'RAMOT HASHAVIM'),(207,'GIV\'AT HEN'),(208,'MOZA ILLIT'),(212,'BET ZEVI'),(213,'MISHMAROT'),(217,'KEFAR HARO\'E'),(218,'GANNE AM'),(219,'HIBBAT ZIYYON'),(220,'KEFAR BIALIK'),(223,'EN IRON'),(224,'SHOSHANNAT HAAMAQIM'),(225,'GAN HASHOMERON'),(229,'GANNE TIQWA'),(230,'MA\'AS'),(232,'SHEFAYIM'),(233,'KEFAR YEDIDYA'),(234,'BIZZARON'),(235,'HAVAZZELET HASHARON'),(237,'SHA\'AR HAAMAQIM'),(239,'GAN HAYYIM'),(240,'YOQNE\'AM ILLIT'),(241,'YOQNE\'AM(MOSHAVA)'),(242,'BET HASHITTA'),(246,'NETIVOT'),(247,'RISHPON'),(248,'BET SHE\'ARIM'),(249,'KEFAR SIRKIN'),(250,'HAZOREA'),(252,'BITAN AHARON'),(253,'HULATA'),(254,'KEFAR HAMAKKABBI'),(255,'KEFAR HITTIM'),(256,'NIR DAWID (TEL AMAL)'),(257,'NOFEKH'),(259,'SEDE NAHUM'),(262,'GINNOSAR'),(263,'MASSADA'),(264,'SHA\'AR HAGOLAN'),(265,'BET YOSEF'),(267,'KEFAR SHEMARYAHU'),(268,'TIRAT ZEVI'),(269,'MOLEDET'),(270,'EN HASHOFET'),(272,'MA\'OZ HAYYIM'),(273,'EN GEV'),(274,'KEFAR MENAHEM'),(276,'ZUR MOSHE'),(278,'USHA'),(280,'HANITA'),(281,'PEQI\'IN HADASHA'),(282,'SHAVE ZIYYON'),(284,'SEDE WARBURG'),(285,'ALLONIM'),(286,'MA\'ALE HAHAMISHA'),(287,'TEL YIZHAQ'),(288,'BET YEHOSHUA'),(289,'EN HAMIFRAZ'),(290,'MA\'YAN ZEVI'),(292,'SHARONA'),(293,'SEDE YO\'AV'),(294,'ELON'),(295,'KEFAR RUPPIN'),(296,'NEWE ETAN'),(297,'KEFAR MASARYK'),(298,'MESILLOT'),(300,'DALIYYA'),(301,'BET UZZI\'EL'),(302,'DAFNA'),(303,'DAN'),(304,'SEDE ELIYYAHU'),(305,'GESHER'),(306,'SHADMOT DEVORA'),(307,'HAZORE\'IM'),(308,'MAHANAYIM'),(309,'NEHORA'),(310,'KEFAR GLIKSON'),(311,'GAN SOREQ'),(312,'NEWE YAM'),(313,'AFEQ'),(315,'NEGBA'),(316,'KEFAR NETTER'),(317,'BET OREN'),(318,'AMMI\'OZ'),(319,'AMIR'),(320,'KEFAR WARBURG'),(322,'BET HILLEL'),(324,'SHE\'AR YASHUV'),(325,'MAZZUVA'),(326,'BET YIZHAQ-SH. HEFER'),(327,'SEDOT YAM'),(328,'EZUZ'),(329,'SEDE NEHEMYA'),(330,'ALUMMOT'),(331,'NIR ZEVI'),(334,'QEVUZAT YAVNE'),(335,'RAMAT HASHOFET'),(336,'DOROT'),(338,'IBBIM'),(339,'RAMAT ZEVI'),(340,'GAT(QIBBUZ)'),(342,'GEVAR\'AM'),(343,'HAMADYA'),(344,'MA\'ANIT'),(345,'KEFAR SZOLD'),(346,'GELIL YAM'),(347,'MENARA'),(348,'NIR AM'),(351,'NIZZAN'),(352,'GEVULOT'),(353,'BET ZEID'),(354,'REVIVIM'),(355,'HORESHIM'),(356,'HAGOSHERIM'),(357,'KEFAR BLUM'),(358,'YAD MORDEKHAY'),(359,'NIZZANIM'),(360,'GIV\'AT NILI'),(362,'RUHAMA'),(363,'HAFEZ HAYYIM'),(364,'KEFAR URIYYA'),(365,'BET QESHET'),(366,'SHAMIR'),(367,'EN HAEMEQ'),(368,'BIRIYYA'),(369,'GAL\'ED (EVEN YIZHAQ)'),(370,'GEZER'),(371,'KADOORIE'),(372,'RAMOT NAFTALI'),(373,'BET HALEWI'),(374,'HUQOQ'),(375,'MAGGAL'),(376,'EVRON'),(377,'HAMA\'PIL'),(378,'MISGAV AM'),(379,'GE\'ULIM'),(380,'LAHAVOT HABASHAN'),(382,'MIKHMORET'),(383,'EN HANAZIV'),(385,'AMMI\'AD'),(386,'BENE DEROR'),(387,'KEFAR MONASH'),(388,'KEFAR KISCH'),(389,'BAZRA'),(390,'REGBA'),(392,'QEDMA'),(393,'GAL\'ON'),(394,'SHOVAL'),(395,'MISHMAR HANEGEV'),(396,'NEVATIM'),(397,'HAZERIM'),(398,'SHARSHERET'),(399,'BE\'ERI'),(400,'EVEN SHEMU\'EL'),(402,'NIR YIZHAQ'),(403,'URIM'),(405,'NEWE ILAN'),(406,'HAZOR-ASHDOD'),(407,'DAVERAT'),(408,'NE\'OT MORDEKHAY'),(409,'YEHI\'AM'),(412,'QIRYAT SHELOMO'),(413,'ZE\'ELIM'),(414,'QELAHIM'),(415,'SHOQEDA'),(416,'MA\'YAN BARUKH'),(417,'YAQUM'),(418,'BENE ZIYYON'),(419,'SA\'AD'),(421,'MASH\'ABBE SADE'),(422,'HEREV LE\'ET'),(423,'HAOGEN'),(424,'GEVIM'),(425,'MISHMERET'),(426,'EN KARMEL'),(427,'KEFAR GALLIM'),(428,'BEROR HAYIL'),(429,'ALLONE ABBA'),(430,'BET LEHEM HAGELILIT'),(431,'DALTON'),(432,'SHAMERAT'),(433,'NAHSHOLIM'),(434,'HAHOTERIM'),(435,'NEZER SERENI'),(436,'EN DOR'),(437,'RESHAFIM'),(439,'SHELUHOT'),(440,'YESODOT'),(442,'GID\'ONA'),(443,'KEFAR HANASI'),(444,'REGAVIM'),(445,'RAMOT MENASHE'),(446,'UDIM'),(447,'NORDIYYA'),(448,'BENE ATAROT'),(449,'NEHALIM'),(450,'BE\'EROT YIZHAQ'),(452,'YIZRE\'EL'),(453,'YIFTAH'),(454,'SA\'AR'),(456,'SHORESH'),(457,'GAZIT'),(460,'RAMAT RAZI\'EL'),(462,'TAL SHAHAR'),(463,'GA\'TON'),(464,'HAR\'EL'),(465,'ZOVA'),(466,'BET DAGAN'),(469,'QIRYAT EQRON'),(472,'ABU GHOSH'),(473,'ABU SINAN'),(475,'DAHI'),(478,'IKSAL'),(480,'BEIT JANN'),(481,'MUGHAR'),(482,'BU\'EINE-NUJEIDAT'),(483,'BI\'NE'),(485,'JULIS'),(487,'JISH(GUSH HALAV)'),(489,'DABURIYYA'),(490,'DEIR AL-ASAD'),(492,'DEIR HANNA'),(493,'DEIR RAFAT'),(494,'DALIYAT AL-KARMEL'),(496,'HURFEISH'),(497,'TAYIBE(BAEMEQ)'),(498,'TUR\'AN'),(499,'YAFI'),(502,'YIRKA'),(504,'KABUL'),(505,'KAOKAB ABU AL-HIJA'),(507,'KAFAR YASIF'),(508,'KAFAR KAMA'),(509,'KAFAR KANNA'),(510,'KAFAR MANDA'),(511,'ILUT'),(512,'KAFAR MISR'),(514,'EIN RAFA'),(516,'MAJD AL-KURUM'),(517,'MAZRA\'A'),(518,'MI\'ELYA'),(520,'MESHHED'),(521,'EIN NAQQUBA'),(522,'NAHEF'),(523,'NEIN'),(524,'NA\'URA'),(525,'SAJUR'),(526,'SULAM'),(527,'SHEZOR'),(528,'UZEIR'),(529,'I\'BILLIN'),(530,'EILABUN'),(531,'ARRABE'),(532,'EIN MAHEL'),(534,'ISIFYA'),(535,'FASSUTA'),(536,'PEQI\'IN (BUQEI\'A)'),(537,'FUREIDIS'),(538,'SHA\'AB'),(539,'RUMMANE'),(540,'REIHANIYYE'),(541,'JISR AZ-ZARQA'),(542,'REINE'),(543,'RAME'),(546,'EIN AL-ASAD'),(547,'TAMRA (YIZRE\'EL)'),(549,'GANNOT HADAR'),(553,'NIR BANIM'),(555,'SHEDEMA'),(559,'BUSTAN HAGALIL'),(562,'BET EL\'AZARI'),(563,'MISHMAR DAWID'),(564,'REVADIM'),(565,'AZOR'),(566,'GIV\'AT SHEMESH'),(567,'ZOR\'A'),(570,'ME\'ONA'),(571,'BET GAMLI\'EL'),(572,'BET HAEMEQ'),(573,'MAVQI\'IM'),(574,'GESHER HAZIW'),(575,'YAS\'UR'),(576,'KABRI'),(577,'YAD BINYAMIN'),(578,'SASA'),(579,'KEFAR ROSH HANIQRA'),(580,'KEREM MAHARAL'),(582,'KEFAR HANAGID'),(584,'ZIQIM'),(585,'LAVI'),(586,'MEGIDDO'),(587,'SAVYON'),(588,'BENE RE\'EM'),(589,'BEZET'),(590,'NEWE UR'),(591,'ASERET'),(592,'BENE DAROM'),(593,'ARUGOT'),(594,'ZAFRIYYA'),(595,'LOHAME HAGETA\'OT'),(596,'MALKIYYA'),(597,'PALMAHIM'),(598,'BET QAMA'),(599,'PAROD'),(602,'NIRIM'),(603,'ELQOSH'),(604,'BET ARIF'),(605,'KEFAR SHAMMAY'),(606,'MAZOR'),(607,'MERON'),(609,'KEFAR HOSHEN'),(610,'SITRIYYA'),(612,'ZERUFA'),(613,'ZIPPORI'),(614,'SHOMERA'),(615,'QIDRON'),(616,'RINNATYA'),(617,'BARQAY'),(618,'HADID'),(619,'BET GUVRIN'),(620,'MASSU\'OT YIZHAQ'),(622,'EN ZURIM'),(623,'YIR\'ON'),(627,'JALJULYE'),(628,'JATT'),(633,'KAFAR BARA'),(634,'KAFAR QASEM'),(635,'MUQEIBLE'),(636,'SANDALA'),(637,'AR\'ARA'),(638,'QALANSAWE'),(648,'MEZER'),(649,'MEISER'),(652,'IBTIN'),(654,'KAFAR QARA'),(658,'SHEIKH DANNUN'),(661,'SHA\'AR EFRAYIM'),(662,'HOSEN'),(663,'TIRAT YEHUDA'),(664,'KEREM BEN ZIMRA'),(665,'TEQUMA'),(666,'OMER'),(667,'BAR\'AM'),(668,'MEFALLESIM'),(670,'MISHMAR AYYALON'),(672,'BET NEQOFA'),(673,'KEFAR TRUMAN'),(674,'LIMAN'),(675,'HABONIM'),(676,'EN HASHELOSHA'),(677,'HASOLELIM'),(678,'MA\'AGAN'),(679,'AVI\'EL'),(680,'OMEZ'),(681,'GIV\'AT SHEMU\'EL'),(682,'ELYAQIM'),(683,'GEVA  KARMEL'),(684,'HAYOGEV'),(685,'BENAYA'),(686,'NEWE YAMIN'),(687,'EN AYYALA'),(688,'ALMA'),(689,'MEGADIM'),(690,'KEFAR AHIM'),(692,'SHAFIR'),(693,'NETIV HALAMED-HE'),(694,'MA\'AGAN MIKHA\'EL'),(695,'MAGEN'),(696,'KEFAR HABAD'),(697,'BE\'EROTAYIM'),(698,'BURGETA'),(699,'NIR YISRA\'EL'),(700,'HAZAV'),(701,'ARBEL'),(702,'HAON'),(703,'GIV\'AT OZ'),(705,'NAHSHONIM'),(706,'GE\'A'),(707,'KEFAR DANIYYEL'),(708,'AMQA'),(709,'TIFRAH'),(710,'BET ZAYIT'),(711,'AZARYA'),(712,'BEN AMMI'),(713,'RE\'IM'),(714,'EREZ'),(715,'LAHAVOT HAVIVA'),(716,'EYAL'),(717,'HAGOR'),(718,'YARHIV'),(719,'TEL QAZIR'),(720,'NIR GALLIM'),(721,'SEDE ILAN'),(722,'MAGSHIMIM'),(723,'BET HAGADDI'),(726,'HODIYYA'),(727,'TALME YEHI\'EL'),(729,'MISHMAR HASHIV\'A'),(730,'ELIFELET'),(731,'MESHAR'),(732,'MISHMAR HAYARDEN'),(734,'GAN YOSHIYYA'),(735,'RAMOT ME\'IR'),(736,'GILAT'),(737,'OLESH'),(738,'DOR'),(739,'SEDE UZZIYYAHU'),(740,'ESHTA\'OL'),(741,'SHO\'EVA'),(742,'MESILLAT ZIYYON'),(743,'KEFAR SHEMU\'EL'),(744,'TALME YAFE'),(745,'GIMZO'),(746,'BEREKHYA'),(747,'BET SHIQMA'),(748,'MASLUL'),(749,'PATTISH'),(750,'PEDUYIM'),(751,'BET ME\'IR'),(752,'TA\'OZ'),(753,'YANUV'),(755,'GOREN'),(756,'BET EZRA'),(757,'MAZLIAH'),(758,'YAD HANNA'),(759,'YAZIZ'),(760,'BEN ZAKKAY'),(761,'SHUVA'),(762,'BITHA'),(763,'SHETULIM'),(764,'KEFAR MORDEKHAY'),(765,'MISGAV DOV'),(766,'QOMEMIYYUT'),(767,'PORAT'),(768,'KARMIYYA'),(769,'NIR EZYON'),(771,'MEVO BETAR'),(772,'EMUNIM'),(773,'AMMIQAM'),(774,'ZURI\'EL'),(775,'YAD NATAN'),(776,'MAHSEYA'),(777,'NAHSHON'),(778,'TARUM'),(779,'AMMINADAV'),(780,'ORA'),(783,'EVEN SAPPIR'),(784,'BET NEHEMYA'),(785,'AHIHUD'),(786,'KEFAR ZETIM'),(787,'GIV\'AT YE\'ARIM'),(788,'ZETAN'),(789,'RANNEN'),(791,'MASH\'EN'),(792,'NETIV HASHAYYARA'),(793,'GIV\'ATI'),(794,'AGUR'),(795,'YA\'ARA'),(796,'ZELAFON'),(797,'AHI\'EZER'),(798,'YAGEL'),(799,'ZEKHARYA'),(800,'BET HANANYA'),(801,'HEMED'),(802,'GIV\'AT KOAH'),(803,'YOSHIVYA'),(804,'AHISAMAKH'),(805,'YISH\'I'),(806,'EN YAHAV'),(807,'HANNI\'EL'),(808,'NIR ELIYYAHU'),(809,'NAHAM'),(810,'OFER'),(811,'YAKHINI'),(812,'SHELOMI'),(813,'EN YA\'AQOV'),(814,'TELAMIM'),(815,'ZAVDI\'EL'),(816,'ZANOAH'),(817,'AZRIQAM'),(818,'ZERAHYA'),(819,'AVIGEDOR'),(820,'HELEZ'),(821,'AHUZZAM'),(822,'MATTA'),(823,'BAR GIYYORA'),(824,'KOKHAV MIKHA\'EL'),(825,'NES HARIM'),(826,'UZA'),(827,'NEWE MIVTAH'),(828,'YASHRESH'),(829,'MIVTAHIM'),(831,'YEROHAM'),(833,'NURIT'),(836,'GANNOT'),(837,'AZRI\'EL'),(838,'PEDAYA'),(839,'PETAHYA'),(840,'KISSUFIM'),(841,'ELISHAMA'),(842,'GA\'ASH'),(843,'MARGALIYYOT'),(844,'NAHAL OZ'),(845,'KEFAR AZZA'),(846,'SHEFER'),(848,'BET RABBAN'),(849,'DEVIRA'),(850,'AHITUV'),(851,'NIZZANE OZ'),(852,'GONEN'),(853,'GE\'ALYA'),(854,'REHOV'),(856,'SHA\'ALVIM'),(857,'KEFAR AVIV'),(858,'NEWE YARAQ'),(859,'KESALON'),(861,'SEDE ELI\'EZER'),(862,'GANNE YOHANAN'),(863,'GINNATON'),(864,'BEQOA'),(865,'SHIBBOLIM'),(866,'YOTVATA'),(868,'ALLONE YIZHAQ'),(870,'GIV\'AT HASHELOSHA'),(871,'ENAT'),(872,'GE\'ULE TEMAN'),(873,'SHALWA'),(874,'MIGDAL HAEMEQ'),(875,'KEFAR AVODA'),(877,'BET HERUT'),(880,'EN SARID'),(882,'ORANIM'),(885,'SEDE BOQER'),(886,'ETANIM'),(888,'KEFAR HARIF'),(889,'KEFAR HASIDIM BET'),(890,'KEFAR HANO\'AR HADATI'),(892,'AVDON'),(897,'MIDRESHET RUPPIN'),(913,'SHIBLI-UMM AL-GHANAM'),(916,'YESHA'),(917,'ATSMON SEGEV'),(919,'GIV\'AT YESHA\'YAHU'),(921,'SHA\'AR MENASHE'),(922,'REKHASIM'),(926,'NEWE AVOT'),(942,'SAWA\'ID(HAMRIYYE)'),(944,'BASMAT TAB\'UN'),(962,'TUBA-ZANGARIYYE'),(975,'ZARZIR'),(978,'KA\'ABIYYE-TABBASH-HAJAJRE'),(990,'RAS ALI'),(993,'HAMAM'),(994,'MANSHIYYET ZABDA'),(997,'RUMAT HEIB'),(998,'BIR EL-MAKSUR'),(1015,'MEVASSERET ZIYYON'),(1020,'OR AQIVA'),(1024,'HARUZIM'),(1031,'SEDEROT'),(1034,'QIRYAT MAL\'AKHI'),(1043,'GIZO'),(1044,'YE\'AF'),(1045,'SHETULA'),(1046,'OHAD'),(1047,'HAZON'),(1050,'BET HASHMONAY'),(1051,'TALME ELIYYAHU'),(1052,'QETURA'),(1054,'TEL SHEVA'),(1056,'EN KAREM-B.S.HAQLA\'I'),(1057,'NEWE ZOHAR'),(1058,'SEDE NIZZAN'),(1059,'KUSEIFE'),(1060,'LAQYE'),(1061,'NAZERAT ILLIT'),(1063,'MA\'ALOT-TARSHIHA'),(1064,'AMIRIM'),(1065,'ZIMRAT'),(1066,'BENE AYISH'),(1067,'DOVEV'),(1068,'ADAMIT'),(1069,'RAM-ON'),(1070,'AVI\'EZER'),(1071,'NEWE MIKHA\'EL'),(1072,'GAN HADAROM'),(1076,'BET BERL'),(1077,'GIV\'AT SHAPPIRA'),(1079,'ZAFRIRIM'),(1080,'MABBU\'IM'),(1081,'EVEN MENAHEM'),(1082,'MA\'GALIM'),(1083,'TUSHIYYA'),(1084,'BEN SHEMEN(K.NO\'AR)'),(1085,'KEREM SHALOM'),(1094,'KEREM YAVNE(YESHIVA)'),(1095,'KEFAR MAYMON'),(1098,'MERKAZ SHAPPIRA'),(1102,'ZUQI YAM'),(1103,'GANNE HADAR'),(1104,'PORIYYA-KEFAR AVODA'),(1105,'PORIYYA-NEWE OVED'),(1108,'OMEN'),(1110,'HEVER'),(1112,'YODEFAT'),(1113,'ZUR HADASSA'),(1114,'SARIGIM (LI-ON)'),(1115,'AVIVIM'),(1123,'ADDERET'),(1124,'NE\'OT HAKIKKAR'),(1125,'ALMAGOR'),(1126,'ELOT'),(1127,'MA\'ALE GILBOA'),(1128,'ME AMMI'),(1129,'GEROFIT'),(1130,'KEFAR ROZENWALD(ZARIT)'),(1132,'SENIR'),(1133,'WARDON'),(1134,'YAD HASHEMONA'),(1136,'ZOHAR'),(1137,'QIRYAT YE\'ARIM'),(1138,'YA\'AD'),(1139,'KARMI\'EL'),(1140,'MIDRESHET BEN GURION'),(1141,'MEVO MODI\'IM'),(1143,'NES AMMIM'),(1144,'YEDIDA'),(1145,'ALUMMA'),(1146,'ALUMIM'),(1147,'NETU\'A'),(1148,'ZUR NATAN'),(1149,'EZER'),(1150,'ZOFAR'),(1151,'PARAN'),(1152,'ASHALIM'),(1153,'KISHOR'),(1154,'MALKISHUA'),(1155,'MAGEN SHA\'UL'),(1156,'SAMAR'),(1157,'AHAWA'),(1158,'YAHEL'),(1160,'SHEKHANYA'),(1161,'RAHAT'),(1162,'BET RIMMON'),(1163,'MORAN'),(1165,'SHILAT'),(1166,'KEFAR RUT'),(1167,'QESARYYA'),(1171,'LOTEM'),(1172,'TUVAL'),(1173,'LAPPIDOT'),(1174,'MANOF'),(1175,'IDDAN'),(1176,'SAPPIR'),(1177,'TELALIM'),(1178,'MORESHET'),(1179,'QORANIT'),(1180,'ZVIYYA'),(1181,'TAL-EL'),(1182,'ALLON HAGALIL'),(1183,'KELIL'),(1184,'MATTAT'),(1185,'PELEKH'),(1186,'HOSHA\'AYA'),(1188,'ESHHAR'),(1190,'MIZPE NETOFA'),(1191,'BAR YOHAY'),(1192,'AR\'ARA-BANEGEV'),(1195,'NIZZANA (QEHILAT HINUH)'),(1196,'MAHANE YATTIR'),(1197,'NE\'OT SMADAR'),(1198,'KERAMIM'),(1199,'ADI'),(1200,'MODI\'IN-MAKKABBIM-RE\'UT'),(1201,'KAMMON'),(1202,'MIKHMANNIM'),(1203,'HARARIT'),(1204,'GILON'),(1205,'MANOT'),(1206,'GITTA'),(1207,'LAVON'),(1208,'HILLA'),(1209,'HARASHIM'),(1210,'KAHAL'),(1211,'QADDARIM'),(1212,'AMUQQA'),(1213,'ZIV\'ON'),(1214,'TEFAHOT'),(1219,'GORNOT HAGALIL'),(1220,'ABBIRIM'),(1221,'ZURIT'),(1222,'MIZPE AVIV'),(1223,'SEDE AVRAHAM'),(1224,'KOKHAV YA\'IR'),(1225,'RAVID'),(1226,'YUVALLIM'),(1227,'YATED'),(1228,'RAQQEFET'),(1229,'KALLANIT'),(1230,'LIVNIM'),(1231,'PERI GAN'),(1232,'YEVUL'),(1233,'SHEQEF'),(1235,'SHORASHIM'),(1236,'NIRIT'),(1237,'TALME YOSEF'),(1238,'SUFA'),(1239,'HOLIT'),(1240,'EN HABESOR'),(1241,'DEQEL'),(1242,'NETIV HAASARA'),(1243,'QAZIR'),(1244,'TIMRAT'),(1245,'SALLAMA'),(1246,'ARAMSHA'),(1247,'HARISH'),(1248,'ELIFAZ'),(1249,'HARDUF'),(1251,'EN TAMAR'),(1252,'KORAZIM'),(1253,'AMNUN'),(1254,'NATAF'),(1255,'LOTAN'),(1256,'ASHERAT'),(1257,'HANNATON'),(1258,'MASSAD'),(1259,'NEWE SHALOM'),(1260,'RETAMIM'),(1261,'HAR AMASA'),(1262,'ZUQIM'),(1263,'KEFAR WERADIM'),(1264,'KARME YOSEF'),(1265,'SHOMERIYYA'),(1266,'SHAHARUT'),(1268,'METAR'),(1271,'LEHAVIM'),(1272,'HALUZ'),(1274,'GAN NER'),(1275,'AVTALYON'),(1276,'ESHBAL'),(1278,'BE\'ER MILKA'),(1279,'NEWE HARIF'),(1280,'NIZZANE SINAY'),(1282,'MERAV'),(1283,'TEL TE\'OMIM'),(1284,'NOFIT'),(1285,'KARKOM'),(1286,'SEGEV-SHALOM'),(1287,'SHANI'),(1288,'GIV\'AT ELA'),(1290,'ZEMER'),(1291,'KEMEHIN'),(1292,'JUDEIDE-MAKER'),(1293,'GIV\'AT AVNI'),(1294,'OR HAGANUZ'),(1295,'YANUH-JAT'),(1296,'KISRA-SUMEI'),(1297,'KEFAR HANANYA'),(1303,'HURA'),(1304,'SHOHAM'),(1309,'EL\'AD'),(1310,'LAPPID'),(1311,'AVSHALOM'),(1313,'PORIYYA ILLIT'),(1314,'NEWE ZIV'),(1315,'MATTAN'),(1316,'AL-ARYAN'),(1317,'DEMEIDE'),(1318,'MEVO\'OT YAM'),(1319,'BAT HEFER'),(1320,'EIN HOD'),(1321,'KHAWALED'),(1322,'HODAYOT'),(1323,'BAT HADAR'),(1324,'ARSUF'),(1325,'KEFAR ZOHARIM'),(1326,'BASMA'),(1327,'MA\'ALE IRON'),(1330,'AHUZZAT BARAQ'),(1331,'KAMANE'),(1332,'HUSSNIYYA'),(1333,'NOF AYYALON'),(1334,'RAS AL-EIN'),(1335,'ARAB AL NAIM'),(1336,'IRUS'),(1337,'SHIMSHIT'),(1338,'KADDITA'),(1339,'AL-AZY'),(1340,'MERHAV AM'),(1341,'RUAH MIDBAR'),(1342,'ABU QUREINAT'),(1343,'MAKCHUL'),(1344,'GEVA\'OT BAR'),(1345,'ZUR YIZHAQ'),(1346,'TARABIN AS-SANI'),(1347,'QASR A-SIR'),(1348,'BIR HADAGE'),(1349,'DERIG\'AT'),(1358,'UMM BATIN'),(1359,'AL SAYYID'),(1360,'MOLADA*'),(1361,'BAT HEN'),(1363,'BNE NETSARIM'),(1364,'SHLOMIT'),(1365,'ELIAV'),(1366,'NAVE'),(1367,'KOCHLEA'),(1368,'BNE DEQALIM'),(1369,'NETA'),(1370,'MITSPE ILAN'),(1371,'GANNE TAL'),(1372,'NEZER HAZZANI'),(1374,'KARME KATIF'),(1375,'ABU TULUL'),(1376,'BE\'ER GANNIM'),(1377,'SHAVE DAROM'),(1378,'SHEZAF'),(1419,'NIZZAN B'),(2002,'TENUVOT'),(2003,'TALME EL\'AZAR'),(2006,'KANNOT'),(2008,'SEDE YIZHAQ'),(2009,'YUVAL'),(2010,'KEFAR BIN NUN'),(2011,'YINNON'),(2012,'OROT'),(2013,'BEN SHEMEN (MOSHAV)'),(2014,'GIV\'OLIM'),(2015,'SEDE HEMED'),(2016,'REWAYA'),(2018,'GIV\'AT HAYYIM (IHUD)'),(2021,'ESHEL HANASI'),(2023,'LAHAV'),(2024,'UMM AL-QUTUF'),(2026,'YARDENA'),(2029,'MIDRAKH OZ'),(2030,'MENUHA'),(2033,'BET HILQIYYA'),(2034,'HAZOR HAGELILIT'),(2035,'ADANIM'),(2038,'BAREQET'),(2039,'QIRYAT YE\'ARIM(INSTITUTE)'),(2042,'EN GEDI'),(2043,'BAHAN'),(2044,'MELILOT'),(2045,'NAHALA'),(2046,'SEGULLA'),(2047,'NIR MOSHE'),(2048,'NIR AQIVA'),(2049,'SEDE ZEVI'),(2050,'TALME BILU'),(2051,'REWAHA'),(2052,'AVITAL'),(2053,'PERAZON'),(2054,'METAV'),(2055,'MA\'OR'),(2057,'SEDE TERUMOT'),(2059,'PA\'AME TASHAZ'),(2060,'BEROSH'),(2061,'TIDHAR'),(2062,'TE\'ASHUR'),(2063,'DISHON'),(2064,'ZERU\'A'),(2100,'TIRAT KARMEL'),(2200,'DIMONA'),(2300,'QIRYAT TIV\'ON'),(2400,'OR YEHUDA'),(2500,'NESHER'),(2530,'BE\'ER YA\'AQOV'),(2550,'GEDERA'),(2560,'ARAD'),(2600,'ELAT'),(2610,'BET SHEMESH'),(2620,'QIRYAT ONO'),(2630,'QIRYAT GAT'),(2640,'ROSH HAAYIN'),(2650,'RAMAT HASHARON'),(2660,'YAVNE'),(2710,'UMM AL-FAHM'),(2720,'TIRE'),(2730,'TAYIBE'),(2800,'QIRYAT SHEMONA'),(3000,'JERUSALEM'),(3488,'KEFAR EZYON'),(3555,'NETIV HAGEDUD'),(3556,'ALMOG'),(3557,'QEDUMIM'),(3558,'TOMER'),(3560,'ELQANA'),(3561,'MIGDAL OZ'),(3563,'TEQOA'),(3564,'KOKHAV HASHAHAR'),(3565,'RIMMONIM'),(3566,'YAFIT'),(3567,'SAL\'IT'),(3568,'REHAN'),(3569,'MEVO DOTAN'),(3570,'ARI\'EL'),(3571,'SHAVE SHOMERON'),(3572,'KEFAR TAPPUAH'),(3573,'HALLAMISH'),(3574,'BET EL'),(3575,'BET HORON'),(3576,'MIZPE YERIHO'),(3578,'SHADMOT MEHOLA'),(3579,'ELON MORE'),(3598,'ARGAMAN'),(3599,'MEHOLA'),(3601,'QALYA'),(3602,'ROSH ZURIM'),(3603,'HAR GILLO'),(3604,'ALLON SHEVUT'),(3605,'MASSU\'A'),(3606,'GILGAL'),(3607,'YITAV'),(3608,'MA\'ALE EFRAYIM'),(3609,'HAMRA'),(3610,'MIZPE SHALEM'),(3611,'QIRYAT ARBA'),(3612,'BEQA\'OT'),(3613,'GITTIT'),(3614,'MEKHORA'),(3615,'PEZA\'EL'),(3616,'MA\'ALE ADUMMIM'),(3617,'OFRA'),(3618,'EL\'AZAR'),(3619,'RO\'I'),(3620,'NA\'ARAN'),(3637,'MA\'ALE SHOMERON'),(3638,'KEFAR ADUMMIM'),(3639,'WERED YERIHO'),(3640,'QARNE SHOMERON'),(3641,'SHILO'),(3643,'HINNANIT'),(3644,'GIV\'ON HAHADASHA'),(3645,'BET HAARAVA'),(3646,'HEMDAT'),(3647,'YAQIR'),(3648,'MATTITYAHU'),(3649,'SHAQED'),(3650,'EFRAT'),(3651,'MA\'ALE MIKHMAS'),(3652,'BET ARYE'),(3653,'MA\'ALE AMOS'),(3654,'BARQAN'),(3655,'NILI'),(3656,'KARMEL'),(3657,'MA\'ON'),(3658,'ATERET'),(3659,'PESAGOT'),(3660,'IMMANU\'EL'),(3709,'MEVO HORON'),(3710,'BERAKHA'),(3712,'ENAV'),(3713,'NA\'AMA'),(3715,'ALMON'),(3717,'HERMESH'),(3719,'TELEM'),(3720,'SHA\'ARE TIQWA'),(3722,'ESHKOLOT'),(3723,'PENE HEVER'),(3724,'NEGOHOT'),(3725,'NEWE DANIYYEL'),(3726,'NOQEDIM'),(3727,'ALE ZAHAV'),(3730,'GIV\'AT ZE\'EV'),(3743,'TENE'),(3744,'BRUKHIN'),(3745,'MEZADOT YEHUDA'),(3746,'QIRYAT NETAFIM'),(3747,'DOLEV'),(3748,'OTNI\'EL'),(3749,'YIZHAR'),(3750,'ALFE MENASHE'),(3751,'MIGDALIM'),(3752,'MA\'ALE LEVONA'),(3754,'ASFAR'),(3756,'SUSEYA'),(3759,'ADORA'),(3760,'ORANIT'),(3762,'ITAMAR'),(3763,'GEVA BINYAMIN'),(3764,'HAGGAY'),(3765,'ELI'),(3766,'KARME ZUR'),(3767,'NAHALI\'EL'),(3768,'PEDU\'EL'),(3769,'HAR ADAR'),(3770,'HASHMONA\'IM'),(3777,'SANSANA'),(3778,'EZ EFRAYIM'),(3779,'KOKHAV YA\'AQOV'),(3780,'BETAR ILLIT'),(3781,'QEDAR'),(3782,'ROTEM'),(3784,'SHIM\'A'),(3785,'MASKIYYOT'),(3786,'AVENAT'),(3787,'NA\'ALE'),(3788,'TALMON'),(3790,'NOFIM'),(3791,'ZUFIM'),(3793,'AVNE HEFEZ'),(3794,'BAT AYIN'),(3795,'REVAVA'),(3796,'KEFAR HAORANIM'),(3797,'MODI\'IN ILLIT'),(3822,'REHELIM'),(3823,'GANNE MODI\'IN'),(3824,'AMMIHAY'),(3825,'MEVO\'OT YERIHO'),(4000,'HAIFA'),(4001,'BUQ\'ATA'),(4002,'ELI-AD'),(4003,'EL-ROM'),(4004,'KEFAR HARUV'),(4005,'HASPIN'),(4006,'QESHET'),(4007,'YONATAN'),(4008,'MA\'ALE GAMLA'),(4009,'SHA\'AL'),(4010,'ODEM'),(4011,'AVNE ETAN'),(4012,'ANI\'AM'),(4013,'ORTAL'),(4014,'NATUR'),(4015,'BENE YEHUDA'),(4017,'ALLONE HABASHAN'),(4019,'MEZAR'),(4021,'GIV\'AT YO\'AV'),(4022,'GESHUR'),(4024,'QELA'),(4025,'QIDMAT ZEVI'),(4026,'HAD-NES'),(4028,'KANAF'),(4100,'QAZRIN'),(4101,'MEROM GOLAN'),(4201,'MAJDAL SHAMS'),(4203,'MAS\'ADE'),(4204,'MEVO HAMMA'),(4301,'AFIQ'),(4303,'NEWE ATIV'),(4304,'NOV'),(4501,'GHAJAR'),(4502,'EIN QINIYYE'),(4503,'EN ZIWAN'),(4551,'NE\'OT GOLAN'),(4701,'RAMAT MAGSHIMIM'),(4702,'RAMOT'),(5000,'TEL AVIV - YAFO'),(6000,'BAQA AL-GHARBIYYE'),(6100,'BENE BERAQ'),(6200,'BAT YAM'),(6300,'GIV\'ATAYIM'),(6400,'HERZLIYYA'),(6500,'HADERA'),(6600,'HOLON'),(6700,'TIBERIAS'),(6800,'QIRYAT ATTA'),(6900,'KEFAR SAVA'),(7000,'LOD'),(7100,'ASHQELON'),(7200,'NES ZIYYONA'),(7300,'NAZARETH'),(7400,'NETANYA'),(7500,'SAKHNIN'),(7600,'AKKO'),(7700,'AFULA'),(7800,'PARDES HANNA-KARKUR'),(7900,'PETAH TIQWA'),(8000,'ZEFAT'),(8200,'QIRYAT MOTZKIN'),(8300,'RISHON LEZIYYON'),(8400,'REHOVOT'),(8500,'RAMLA'),(8600,'RAMAT GAN'),(8700,'RA\'ANNANA'),(8800,'SHEFAR\'AM'),(8900,'TAMRA'),(9000,'BE\'ER SHEVA'),(9100,'NAHARIYYA'),(9200,'BET SHE\'AN'),(9300,'ZIKHRON YA\'AQOV'),(9400,'YEHUD'),(9500,'QIRYAT BIALIK'),(9600,'QIRYAT YAM'),(9700,'HOD HASHARON'),(9800,'BINYAMINA-GIV\'AT ADA');
/*!40000 ALTER TABLE `dim_settlement` ENABLE KEYS */;
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