-- MySQL dump 10.13  Distrib 5.7.9, for Win32 (AMD64)
--
-- Host: localhost    Database: survey_db
-- ------------------------------------------------------
-- Server version	5.6.16

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
-- Table structure for table `survey_answers`
--

DROP TABLE IF EXISTS `survey_answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `survey_answers` (
  `id_answers` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `answer` varchar(45) CHARACTER SET utf8mb4 NOT NULL,
  PRIMARY KEY (`id_answers`),
  UNIQUE KEY `id_wrong_answers_UNIQUE` (`id_answers`)
) ENGINE=InnoDB AUTO_INCREMENT=194 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `survey_answers`
--

LOCK TABLES `survey_answers` WRITE;
/*!40000 ALTER TABLE `survey_answers` DISABLE KEYS */;
INSERT INTO `survey_answers` VALUES (1,3,'Austrālija'),(2,3,'Šveice'),(3,3,'Dānija'),(4,3,'Nīderlande'),(5,3,'Vācija'),(6,3,'Īrija'),(7,3,'ASV'),(8,3,'Kanāda'),(9,3,'Jaunzēlande'),(10,3,'Singapūra'),(11,3,'Honkonga'),(12,3,'Lihtenšteina'),(13,3,'Zviedrija'),(14,3,'Lielbritānija'),(15,3,'Islande'),(16,3,'Dienvidkoreja'),(17,3,'Izraēla'),(18,3,'Luksemburga'),(19,3,'Japāna'),(20,3,'Beļģija'),(21,3,'Francija'),(22,3,'Austrija'),(23,3,'Somija'),(24,3,'Slovēnija'),(25,3,'Spānija'),(26,3,'Itālija'),(27,3,'Čehija'),(28,3,'Grieķija'),(29,3,'Igaunija'),(30,3,'Bruneja'),(31,3,'Kipra'),(32,3,'Katara'),(33,3,'Andora'),(34,3,'Slovākija'),(35,3,'Polija'),(36,3,'Lietuva'),(37,3,'Malta'),(38,3,'Saūda Arābija'),(39,3,'Argentīna'),(40,3,'Apvienotie Arābu Emirāti'),(41,3,'Čīle'),(42,3,'Portugāle'),(43,3,'Ungārija'),(44,3,'Bahreina'),(45,3,'Latvija'),(46,3,'Horvātija'),(47,3,'Kuveita'),(48,3,'Melnkalne'),(49,4,'Ainaži'),(50,4,'Aizkraukle'),(51,4,'Aizpute'),(52,4,'Aknīste'),(53,4,'Aloja'),(54,4,'Alūksne'),(55,4,'Ape'),(56,4,'Auce'),(57,4,'Baldone'),(58,4,'Baloži'),(59,4,'Balvi'),(60,4,'Bauska'),(61,4,'Brocēni'),(62,4,'Cēsis'),(63,4,'Cesvaine'),(64,4,'Dagda'),(65,4,'Daugavpils'),(66,4,'Dobele'),(67,4,'Durbe'),(68,4,'Grobiņa'),(69,4,'Gulbene'),(70,4,'Ikšķile'),(71,4,'Ilūkste'),(72,4,'Jaunjelgava'),(73,4,'Jēkabpils'),(74,4,'Jelgava'),(75,4,'Jūrmala'),(76,5,'C'),(77,5,'PHP'),(78,5,'Python'),(79,5,'Swift'),(80,5,'CSS'),(81,5,'C++'),(82,5,'C#'),(83,5,'SQL'),(84,5,'Ruby'),(85,1,'Abarth'),(86,1,'Acura'),(87,1,'AMC'),(88,1,'Aston Martin'),(89,1,'Audi'),(90,1,'Bentley'),(91,1,'BMW'),(92,1,'Brilliance'),(93,1,'Bugatti'),(94,1,'Buick'),(95,1,'Cadillac'),(96,1,'Chery'),(97,1,'Chevrolet'),(98,1,'Chrysler'),(99,1,'Cobra'),(100,1,'Covini'),(101,1,'Dacia'),(102,1,'Daewoo'),(103,1,'Daihatsu'),(104,1,'DKW'),(105,1,'Dodge'),(106,1,'Eagle'),(107,1,'Farbio'),(108,1,'Ferrari'),(109,1,'Fiat'),(110,1,'Fisker'),(111,1,'Ford'),(112,1,'Geely'),(113,1,'Geo'),(114,1,'GMC'),(115,1,'Honda'),(116,1,'Horch'),(117,1,'HUMMER'),(118,1,'Hyundai'),(119,1,'Infiniti'),(120,1,'Isuzu'),(121,1,'Jaguar'),(122,1,'Jeep'),(123,1,'Kia'),(124,1,'Koenigsegg'),(125,1,'Lada'),(126,1,'Lamborghini'),(127,1,'Lancia'),(128,1,'Land Rover'),(129,1,'Leblanc'),(130,1,'Lexus'),(131,1,'Lincoln'),(132,1,'Lotus'),(133,1,'Maruti'),(134,1,'Maserati'),(135,1,'Maybach'),(136,1,'Mazda'),(137,1,'Mercedes-Benz'),(138,1,'Mercury'),(139,1,'MG'),(140,1,'Mitsubishi'),(141,1,'Morgan'),(142,1,'Moskvitch'),(143,1,'Nissan'),(144,1,'Noble'),(145,1,'Oldsmobile'),(146,1,'Opel'),(147,1,'Pagani'),(148,1,'Panoz'),(149,1,'Peugeot'),(150,1,'Piaggio'),(151,1,'Plymouth'),(152,1,'Pontiac'),(153,1,'Porsche'),(154,1,'Quattro'),(155,1,'Regal (Buick)'),(156,1,'Renault'),(157,1,'Roewe'),(158,1,'Rolls-Royce'),(159,1,'Saab'),(160,1,'Saturn'),(161,1,'Scion'),(162,1,'SEAT'),(163,1,'Skoda'),(164,1,'Smart'),(165,1,'Spyker'),(166,1,'SsangYong'),(167,1,'Subaru'),(168,1,'Suzuki'),(169,1,'Tata'),(170,1,'Tesla'),(171,1,'Toyota'),(172,1,'Trabant'),(173,1,'Vauxhall'),(174,1,'Vector'),(175,1,'Venturi'),(176,1,'Volkswagen'),(177,1,'Volvo'),(178,1,'Wanderer'),(179,1,'Wartburg'),(180,1,'Westfield'),(181,1,'Yugo'),(182,1,'Zastava'),(183,1,'Proton'),(184,1,'Perodua'),(185,2,'BMW'),(186,2,'Honda'),(187,2,'Yamaha'),(188,2,'Suzuki'),(189,2,'Harley-Davidson'),(190,2,'Buell'),(191,2,'Jawa'),(192,2,'Triumph'),(193,2,'Ducati');
/*!40000 ALTER TABLE `survey_answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `survey_categories`
--

DROP TABLE IF EXISTS `survey_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `survey_categories` (
  `id_survey_categories` int(11) NOT NULL AUTO_INCREMENT,
  `categorie_name` varchar(45) CHARACTER SET utf8mb4 NOT NULL,
  `categorie_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_survey_categories`),
  UNIQUE KEY `id_survey_categories_UNIQUE` (`id_survey_categories`),
  UNIQUE KEY `categorie_name_UNIQUE` (`categorie_name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `survey_categories`
--

LOCK TABLES `survey_categories` WRITE;
/*!40000 ALTER TABLE `survey_categories` DISABLE KEYS */;
INSERT INTO `survey_categories` VALUES (1,'auto','2018-07-30 14:42:14'),(2,'moto','2018-07-31 08:08:26'),(3,'valstis','2018-07-31 08:08:47'),(4,'pilsētas','2018-07-31 08:09:00'),(5,'programmēšanas valodas','2018-07-31 08:09:19');
/*!40000 ALTER TABLE `survey_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `survey_participants`
--

DROP TABLE IF EXISTS `survey_participants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `survey_participants` (
  `id_participant` int(11) NOT NULL AUTO_INCREMENT,
  `participant_name` varchar(45) CHARACTER SET utf8mb4 NOT NULL,
  `unique_id` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_participant`),
  UNIQUE KEY `id_participant_UNIQUE` (`id_participant`),
  UNIQUE KEY `uniqu_id_UNIQUE` (`unique_id`)
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `survey_participants`
--

LOCK TABLES `survey_participants` WRITE;
/*!40000 ALTER TABLE `survey_participants` DISABLE KEYS */;
INSERT INTO `survey_participants` VALUES (1,'Šteinbergs','UID_5b6170401cb5e'),(2,'','UID_5b6170d37d9ba'),(3,'bruklyn','UID_5b6181bb7880c'),(4,'bruklyn','UID_5b618474e76c4'),(5,'bruklyn','UID_5b6186ed59a65'),(6,'bruklyn','UID_5b6187667afa3'),(7,'bruklyn','UID_5b61897dc547a'),(8,'Šteinbergs','UID_5b6189ade07b0'),(9,'Šteinbergs','UID_5b618a930a3cb'),(10,'Šteinbergs','UID_5b619525c9764'),(11,'Šteinbergs','UID_5b6196d8c54d2'),(12,'Šteinbergs','UID_5b6197569cf0f'),(13,'Šteinbergs','UID_5b619af23780a'),(14,'bruklyn','UID_5b619c7ac1595'),(15,'bruklyn','UID_5b619e9b04d3f'),(16,'IK_log','UID_5b61a07879ff2'),(17,'admin','UID_5b61a45104368'),(18,'bruklyn','UID_5b61a59f4c502'),(19,'IK_log','UID_5b61a62a51aa2'),(20,'bruklyn','UID_5b61a711d3d8c'),(21,'bruklyn','UID_5b61a8eedda9a'),(22,'bruklyn','UID_5b61a954c83ca'),(23,'bruklyn','UID_5b61b09a8b2e5'),(24,'bruklyn','UID_5b61b1ed7e46d'),(25,'bruklyn','UID_5b61b29861a68'),(26,'bruklyn','UID_5b61b516ea8ff'),(27,'','UID_5b61b541e6f75'),(28,'','UID_5b61b57b4a712'),(29,'Šteinbergs','UID_5b61b90b3b0ab'),(30,'Šteinbergs','UID_5b61baa09d813'),(31,'Šteinbergs','UID_5b61bd25e32a1'),(32,'bruklyn','UID_5b61bd58bebea'),(33,'','UID_5b61c01a64550'),(34,'admin','UID_5b61c023f1f63'),(35,'','UID_5b61c0a25c3b1'),(36,'Šteinbergs','UID_5b61c1036f050'),(37,'Šteinbergs','UID_5b61c30903260'),(38,'Šteinbergs','UID_5b61c5a8a3b7a'),(39,'edgger','UID_5b61c72f6b980'),(40,'Šteinbergs','UID_5b61c9ce938e5'),(41,'Šteinbergs','UID_5b61cbee62d8d'),(42,'bruklyn','UID_5b61d156ede1f'),(43,'Šteinbergs','UID_5b61d3f146c53'),(44,'bruklyn','UID_5b61d4eaa65ac'),(45,'bruklyn','UID_5b61d5b53d2c1'),(46,'IK_log','UID_5b61d59c20b86'),(47,'IK_log','UID_5b61d5a9dc627'),(48,'IK_log','UID_5b61d5c295f6b'),(49,'IK_log','UID_5b61d5d03dee2'),(50,'IK_log','UID_5b61d5e5958fb'),(51,'Šteinbergs','UID_5b61d764032f0'),(52,'Šteinbergs','UID_5b61d771aa705'),(53,'Šteinbergs','UID_5b61d77a2ea24'),(54,'Šteinbergs','UID_5b61d78d1e163'),(55,'Šteinbergs','UID_5b61d7b8d5e2e'),(56,'','UID_5b61d7c2df184'),(57,'admin','UID_5b61d7ccbdb52'),(58,'','UID_5b61d81f7cac6'),(59,'Šteinbergs','UID_5b61d82adb9f2'),(60,'Šteinbergs','UID_5b61d8754d5ef'),(61,'bruklyn','UID_5b61d8ce1fb50'),(62,'Šteinbergs','UID_5b61d9118841a'),(63,'Šteinbergs','UID_5b61d93f59556'),(64,'Šteinbergs','UID_5b61d96212eb4'),(65,'Šteinbergs','UID_5b61da594f0b3'),(66,'Šteinbergs','UID_5b61da94b8974'),(67,'Šteinbergs','UID_5b61dacfaf810'),(68,'Šteinbergs','UID_5b61dad47fab9'),(69,'Šteinbergs','UID_5b61db88c9851'),(70,'Šteinbergs','UID_5b61dc160f1c7'),(71,'Šteinbergs','UID_5b61e2db4f483'),(72,'bruklyn','UID_5b61e4221788b'),(73,'admin','UID_5b61e447c9a0f'),(74,'Šteinbergs','UID_5b61e4c9855b5'),(75,'Šteinbergs','UID_5b61e4c994445'),(76,'Šteinbergs','UID_5b61e4c9a5077'),(77,'Šteinbergs','UID_5b61e4c9aa001'),(78,'bruklyn','UID_5b61e4d88f7ef'),(79,'Šteinbergs','UID_5b61e66610584'),(80,'Šteinbergs','UID_5b61e69a2a47b'),(81,'Šteinbergs','UID_5b61e6de4c615'),(82,'Šteinbergs','UID_5b61e874be99b'),(83,'admin','UID_5b61e8f4180bc'),(84,'','UID_5b61e91451fea'),(85,'bruklyn','UID_5b61e98d78693'),(86,'','UID_5b61e9a0ac39b'),(87,'IK_log','UID_5b61e9a6ba2e5'),(88,'IK_log','UID_5b61e9b531b75'),(89,'IK_log','UID_5b61e9e3a0bf8'),(90,'','UID_5b61eac2093de'),(91,'bruklyn','UID_5b61eac814650'),(92,'bruklyn','UID_5b61eb3f3b34d'),(93,'Šteinbergs','UID_5b61ec2b78553'),(94,'bruklyn','UID_5b61ec53a775d'),(95,'bruklyn','UID_5b61ecb0d9b86'),(96,'Šteinbergs','UID_5b61edc755323'),(97,'IvarsK','UID_5b61efdbdff41'),(98,'Šteinbergs','UID_5b61f02f2b8cb'),(99,'','UID_5b61f0457de82'),(100,'Šteinbergs','UID_5b620d977eee4'),(101,'','UID_5b620de155ce1'),(102,'admin','UID_5b6212491edbb'),(103,'IK_log','UID_5b629b578170b'),(104,'','UID_5b629e00421a5'),(105,'bruklyn','UID_5b629f2b9aa32'),(106,'bruklyn','UID_5b629ffccdc0f'),(107,'bruklyn','UID_5b62a0df0e34d'),(108,'bruklyn','UID_5b62a1072f904'),(109,'bruklyn','UID_5b62a15853ad3'),(110,'bruklyn','UID_5b62a1e08028a'),(111,'bruklyn','UID_5b62a28cb694c'),(112,'bruklyn','UID_5b62a2b4d3139'),(113,'bruklyn','UID_5b62a2e40540f'),(114,'','UID_5b62a2ea1ffbb'),(115,'bruklyn','UID_5b62a32b3c414'),(116,'bruklyn','UID_5b62a38a63d11'),(117,'bruklyn','UID_5b62a3bd81bd7'),(118,'bruklyn','UID_5b62a3ce9dbd9'),(119,'bruklyn','UID_5b62a3e4b586c'),(120,'bruklyn','UID_5b62a45fdfbdf'),(121,'bruklyn','UID_5b62a4660aafa'),(122,'bruklyn','UID_5b62a4c52f83d'),(123,'bruklyn','UID_5b62a5224ceb5'),(124,'bruklyn','UID_5b62a5376be72'),(125,'bruklyn','UID_5b62a5658cfd9'),(126,'bruklyn','UID_5b62a6f479172'),(127,'bruklyn','UID_5b62a75199078'),(128,'bruklyn','UID_5b62a771ba99c'),(129,'bruklyn','UID_5b62a883ef801'),(130,'bruklyn','UID_5b62a8980fd0e'),(131,'bruklyn','UID_5b62a8c433741'),(132,'bruklyn','UID_5b62a8f9564c8'),(133,'bruklyn','UID_5b62a9dd9268a'),(134,'bruklyn','UID_5b62a9fda73d9'),(135,'bruklyn','UID_5b62aa2cc0cdc'),(136,'bruklyn','UID_5b62ab0a068d6'),(137,'bruklyn','UID_5b62ab4a2a985'),(138,'bruklyn','UID_5b62ab774c2f1'),(139,'bruklyn','UID_5b62acdc97071'),(140,'bruklyn','UID_5b62ace8b741f'),(141,'bruklyn','UID_5b62ad15d3f8b'),(142,'bruklyn','UID_5b62add6125e3'),(143,'bruklyn','UID_5b62ae4240e8f'),(144,'bruklyn','UID_5b62aeb566077'),(145,'bruklyn','UID_5b62aef38a1d3'),(146,'bruklyn','UID_5b62af3facdf7'),(147,'bruklyn','UID_5b62af4cc6cbf'),(148,'bruklyn','UID_5b62af59dc71f'),(149,'bruklyn','UID_5b62afb60579d'),(150,'bruklyn','UID_5b62afd51caca'),(151,'bruklyn','UID_5b62afff36ea6'),(152,'IK_log','UID_5b62b00b5031b'),(153,'IK_log','UID_5b62b0df896ff'),(154,'','UID_5b62b1e9e728f'),(155,'DaceI','UID_5b62b1f1f3ebd'),(156,'bruklyn','UID_5b62b37a59dc9'),(157,'Šteinbergs','UID_5b62b46fb747b'),(158,'IK_log','UID_5b62b4f31aecf'),(159,'DaceI','UID_5b62b524663bf'),(160,'DaceI','UID_5b62b56093057'),(161,'bruklyn','UID_5b62b62f12f6d'),(162,'admin','UID_5b62c5e505838'),(163,'admin','UID_5b62c6042a034'),(164,'bruklyn','UID_5b62cb715840e'),(165,'bruklyn','UID_5b62cebb080ee');
/*!40000 ALTER TABLE `survey_participants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `survey_questions`
--

DROP TABLE IF EXISTS `survey_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `survey_questions` (
  `id_survey_questions` int(11) NOT NULL AUTO_INCREMENT,
  `survey_id` int(11) NOT NULL,
  `question` varchar(500) CHARACTER SET utf8mb4 NOT NULL,
  `answer` varchar(45) CHARACTER SET utf8mb4 NOT NULL,
  `wrong_answer_count` int(11) NOT NULL,
  `media` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_survey_questions`),
  UNIQUE KEY `id_survey_questions_UNIQUE` (`id_survey_questions`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `survey_questions`
--

LOCK TABLES `survey_questions` WRITE;
/*!40000 ALTER TABLE `survey_questions` DISABLE KEYS */;
INSERT INTO `survey_questions` VALUES (1,1,'Jautājums par BMW','BMW',3,NULL),(2,1,'Jautājums par Audi','Audi',7,NULL),(3,1,'Jautājums par Buik','Buick',14,NULL),(4,1,'Jautājums par Ariel','Ariel',2,NULL),(5,1,'Jautājums par GMC','GMC',5,NULL),(6,1,'Jautājums par Ferrari','Ferrari',4,NULL),(7,1,'Jautājums par Mazda','Mazda',4,NULL),(8,2,'Jautājums par Ducati','Ducati',3,NULL),(9,2,'Jautājums par Jawa','Jawa',8,NULL),(10,2,'Jautājums par Benelli','Benelli',6,NULL),(11,2,'Jautājums par MV Agustu','MV Agusta',2,NULL),(12,2,'Jautājums par Suzuki','Suzuki',5,NULL),(13,2,'Jautājums par Harley-Davidson','Harley-Davidson',4,NULL),(14,3,'Jautājums par Norvēģiju','Norvēģija',3,NULL),(15,3,'Jautājums par Dienvidkoreju','Dienvidkoreja',8,NULL),(16,3,'Jautājums par Beļģiju','Beļģija',6,NULL),(17,3,'Jautājums par Somiju','Somija',2,NULL),(18,3,'Jautājums par Latviju','Latvija',5,NULL),(19,3,'Jautājums par Čīli','Čīle',4,NULL),(20,4,'Jautājums par Bausku','Bauska',3,NULL),(21,4,'Jautājums par Balviem','Balvi',8,NULL),(22,4,'Jautājums par Rīgu','Rīga',6,NULL),(23,4,'Jautājums par Auci','Auce',2,NULL),(24,4,'Jautājums par Cēsīm','Cēsis',5,NULL),(25,4,'Jautājums par Daugavpili','Daugavpils',4,NULL),(26,4,'Jautājums par Jelgavu','Jelgava',2,NULL),(27,4,'Jautājums par Krāslavu','Krāslava',5,NULL),(28,4,'Jautājums par Kuldīgu','Kuldīga',4,NULL),(29,5,'Jautājums par Python','Python',3,NULL),(30,5,'Jautājums par PHP','PHP',8,NULL),(31,5,'Jautājums par Python','Python',6,NULL),(32,5,'Jautājums par Swift','Swift',2,NULL),(33,5,'Jautājums par CSS','CSS',4,NULL);
/*!40000 ALTER TABLE `survey_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `survey_results`
--

DROP TABLE IF EXISTS `survey_results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `survey_results` (
  `id_survey_results` int(11) NOT NULL AUTO_INCREMENT,
  `participant_id` int(11) NOT NULL,
  `survey_id` int(11) NOT NULL,
  `survey_question_id` int(11) NOT NULL,
  `answer_ok` tinyint(1) NOT NULL,
  `wrong_answer_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_survey_results`),
  UNIQUE KEY `id_survey_results_UNIQUE` (`id_survey_results`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `survey_results`
--

LOCK TABLES `survey_results` WRITE;
/*!40000 ALTER TABLE `survey_results` DISABLE KEYS */;
INSERT INTO `survey_results` VALUES (1,14,4,20,0,170),(2,14,4,21,0,130),(3,14,4,22,0,143),(4,14,4,23,0,114),(5,14,4,24,0,165),(6,14,4,25,1,116),(7,14,4,26,0,157),(8,14,4,27,0,132),(9,14,4,28,1,130),(10,17,2,8,1,0),(11,17,2,9,1,0),(12,17,2,12,1,0),(13,17,2,13,1,0);
/*!40000 ALTER TABLE `survey_results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `survey_surveys`
--

DROP TABLE IF EXISTS `survey_surveys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `survey_surveys` (
  `id_survey` int(11) NOT NULL AUTO_INCREMENT,
  `id_category` int(11) NOT NULL,
  `survey_name` varchar(45) NOT NULL,
  `survey_description` varchar(250) DEFAULT NULL,
  `survey_active` tinyint(1) NOT NULL DEFAULT '0',
  `survey_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `survey_blocked` datetime DEFAULT NULL,
  PRIMARY KEY (`id_survey`),
  UNIQUE KEY `id_survey_UNIQUE` (`id_survey`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `survey_surveys`
--

LOCK TABLES `survey_surveys` WRITE;
/*!40000 ALTER TABLE `survey_surveys` DISABLE KEYS */;
INSERT INTO `survey_surveys` VALUES (1,1,'Atpazīsti auto ražotāju','Tests - cik labi Tu pazīsti auto ražotājus',1,'2018-07-31 08:49:01',NULL),(2,2,'Motociklu ražotāji','Tests - cik labi Tu pazīsti moto ražotājus',1,'2018-07-31 08:55:16',NULL),(3,3,'Valstis','Tests - cik labi Tu pārzini ģeogrāfiju',1,'2018-07-31 08:56:15',NULL),(4,4,'Pilsētas Latvijā','Tests - cik labi Tu pārzini Latviju',1,'2018-07-31 08:56:51',NULL),(5,5,'Programmēšanas valodas','Tests - cik labi Tu pārzini programmēšanas valodas',1,'2018-07-31 08:57:16',NULL);
/*!40000 ALTER TABLE `survey_surveys` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-08-02 12:32:41
