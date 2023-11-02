-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: careermanagementsystem
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `alumni`
--

DROP TABLE IF EXISTS `alumni`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alumni` (
  `alum_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`alum_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumni`
--

LOCK TABLES `alumni` WRITE;
/*!40000 ALTER TABLE `alumni` DISABLE KEYS */;
INSERT INTO `alumni` VALUES (1,'Hendrick','Prisk','hprisk0@intel.com'),(2,'Juan','Carlsson','jcarlsson1@twitter.com'),(3,'Doralyn','Hansod','dhansod2@yellowbook.com'),(4,'Alessandra','Godain','agodain3@taobao.com'),(5,'Jay','Gonzalo','jgonzalo4@deviantart.com'),(6,'Carlita','Huban','chuban5@soundcloud.com'),(7,'Quentin','Cowill','qcowill6@usatoday.com'),(8,'Carver','De Rechter','cderechter7@ycombinator.com'),(9,'Danette','Gerry','dgerry8@census.gov'),(10,'Sauncho','Baltrushaitis','sbaltrushaitis9@java.com'),(11,'Jonie','Miguet','jmigueta@nps.gov'),(12,'Waverley','Bosdet','wbosdetb@sciencedaily.com'),(13,'Clotilda','Brixey','cbrixeyc@wordpress.com'),(14,'Olga','Wray','owrayd@shop-pro.jp'),(15,'Felicity','Stiegar','fstiegare@trellian.com'),(16,'Tully','Vearncomb','tvearncombf@naver.com'),(17,'Roseanna','Sheriff','rsheriffg@hp.com'),(18,'Selinda','Roseborough','sroseboroughh@sbwire.com'),(19,'Willow','Agney','wagneyi@washingtonpost.com'),(20,'Siobhan','Johansson','sjohanssonj@hugedomains.com');
/*!40000 ALTER TABLE `alumni` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `careercoachingmeetings`
--

DROP TABLE IF EXISTS `careercoachingmeetings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `careercoachingmeetings` (
  `meeting_id` int NOT NULL AUTO_INCREMENT,
  `student_id` int DEFAULT NULL,
  `consultant_id` int DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `status` enum('Accepted','Rejected','Pending') DEFAULT NULL,
  PRIMARY KEY (`meeting_id`),
  KEY `student_id` (`student_id`),
  KEY `consultant_id` (`consultant_id`),
  CONSTRAINT `careercoachingmeetings_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`) ON DELETE CASCADE,
  CONSTRAINT `careercoachingmeetings_ibfk_2` FOREIGN KEY (`consultant_id`) REFERENCES `careerconsultants` (`consultant_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `careercoachingmeetings`
--

LOCK TABLES `careercoachingmeetings` WRITE;
/*!40000 ALTER TABLE `careercoachingmeetings` DISABLE KEYS */;
INSERT INTO `careercoachingmeetings` VALUES (1,21,10,'2023-04-23','13:43:00','Accepted'),(2,43,9,'2023-03-19','20:34:00','Pending'),(3,30,8,'2022-12-02','13:56:00','Rejected'),(4,28,1,'2022-12-04','18:49:00','Pending'),(5,31,6,'2022-07-16','08:38:00','Pending'),(6,3,10,'2022-11-29','15:31:00','Rejected'),(7,38,3,'2022-12-08','20:29:00','Pending'),(8,29,3,'2022-08-15','02:09:00','Accepted'),(9,42,8,'2022-11-12','00:15:00','Rejected'),(10,37,5,'2023-06-06','07:56:00','Accepted'),(11,12,7,'2023-03-06','22:39:00','Pending'),(12,4,7,'2023-04-01','01:03:00','Rejected'),(13,27,4,'2022-08-16','22:41:00','Pending'),(14,50,9,'2023-04-12','15:05:00','Accepted'),(15,13,7,'2022-10-19','06:12:00','Accepted'),(16,45,1,'2022-10-07','11:36:00','Pending'),(17,15,5,'2022-11-18','13:13:00','Accepted'),(18,43,5,'2022-12-20','09:56:00','Rejected'),(19,12,4,'2022-11-09','17:51:00','Pending'),(20,38,4,'2023-03-07','03:41:00','Rejected'),(21,7,4,'2022-06-27','02:54:00','Accepted'),(22,22,4,'2022-12-13','02:14:00','Rejected'),(23,17,6,'2023-06-13','09:20:00','Pending'),(24,26,9,'2023-03-27','03:13:00','Pending'),(25,4,7,'2023-06-16','00:05:00','Pending'),(26,1,5,'2023-02-04','18:53:00','Pending'),(27,32,6,'2022-09-16','10:22:00','Rejected'),(28,13,1,'2022-11-30','01:26:00','Pending'),(29,29,1,'2022-12-14','23:42:00','Accepted'),(30,26,7,'2023-01-02','10:54:00','Pending'),(31,35,9,'2023-05-27','10:11:00','Pending'),(32,22,8,'2022-09-08','18:54:00','Rejected'),(33,38,10,'2023-01-24','10:08:00','Rejected'),(34,1,3,'2023-03-31','07:28:00','Pending'),(35,32,1,'2022-08-14','00:41:00','Rejected'),(36,36,2,'2022-12-30','04:37:00','Pending'),(37,25,6,'2022-09-11','06:38:00','Rejected'),(38,26,4,'2023-01-29','02:01:00','Accepted'),(39,42,10,'2023-04-26','23:56:00','Rejected'),(40,1,5,'2022-08-09','07:45:00','Pending'),(41,13,3,'2022-08-16','05:45:00','Rejected'),(42,37,6,'2022-09-20','01:36:00','Rejected'),(43,50,6,'2023-04-11','22:23:00','Pending'),(44,13,5,'2022-09-08','07:00:00','Accepted'),(45,31,10,'2022-12-11','13:03:00','Accepted'),(46,35,3,'2022-08-02','13:37:00','Pending'),(47,26,7,'2022-11-27','19:54:00','Pending'),(48,24,8,'2023-05-09','14:19:00','Rejected'),(49,22,5,'2022-07-07','08:43:00','Accepted'),(50,10,9,'2022-07-14','12:29:00','Accepted');
/*!40000 ALTER TABLE `careercoachingmeetings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `careerconsultants`
--

DROP TABLE IF EXISTS `careerconsultants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `careerconsultants` (
  `consultant_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`consultant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `careerconsultants`
--

LOCK TABLES `careerconsultants` WRITE;
/*!40000 ALTER TABLE `careerconsultants` DISABLE KEYS */;
INSERT INTO `careerconsultants` VALUES (1,'Laurella','Pinder','lpinder0@1und1.de'),(2,'Teodor','Kinchin','tkinchin1@1und1.de'),(3,'Susette','Honywill','shonywill2@infoseek.co.jp'),(4,'Leeanne','Zipsell','lzipsell3@bbb.org'),(5,'Myrtle','Tilsley','mtilsley4@csmonitor.com'),(6,'Maritsa','Royden','mroyden5@census.gov'),(7,'Sanson','McNelis','smcnelis6@webnode.com'),(8,'Ilise','Barrow','ibarrow7@globo.com'),(9,'Dannye','Gawne','dgawne8@businessweek.com'),(10,'Karna','Pennock','kpennock9@ycombinator.com');
/*!40000 ALTER TABLE `careerconsultants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `careerevents`
--

DROP TABLE IF EXISTS `careerevents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `careerevents` (
  `event_id` int NOT NULL AUTO_INCREMENT,
  `event_name` varchar(100) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `num_participants` int DEFAULT NULL,
  `alumni_id` int DEFAULT NULL,
  `consultant_id` int DEFAULT NULL,
  PRIMARY KEY (`event_id`),
  KEY `alumni_id` (`alumni_id`),
  KEY `consultant_id` (`consultant_id`),
  CONSTRAINT `careerevents_ibfk_1` FOREIGN KEY (`alumni_id`) REFERENCES `alumni` (`alum_id`) ON DELETE CASCADE,
  CONSTRAINT `careerevents_ibfk_2` FOREIGN KEY (`consultant_id`) REFERENCES `careerconsultants` (`consultant_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `careerevents`
--

LOCK TABLES `careerevents` WRITE;
/*!40000 ALTER TABLE `careerevents` DISABLE KEYS */;
INSERT INTO `careerevents` VALUES (1,'quis turpis eget','mission-critical','2023-12-13','19:13:00','238 Hoffman Parkway',10,6,4),(2,'ac','throughput','2023-11-05','23:16:00','1150 Novick Junction',42,5,7),(3,'amet consectetuer','paradigm','2023-08-12','04:28:00','0 Blackbird Lane',31,18,2),(4,'at diam','hardware','2023-07-25','05:04:00','06568 Parkside Lane',15,NULL,7),(5,'nisl ut','Centralized','2023-09-23','15:50:00','066 Vahlen Drive',30,NULL,2),(6,'amet','bottom-line','2023-08-29','11:25:00','01 Sullivan Lane',31,NULL,3),(7,'massa tempor convallis','Expanded','2023-09-26','09:15:00','5340 Blackbird Center',10,18,6),(8,'dolor','Quality-focused','2023-08-23','14:10:00','415 Roth Court',38,7,2),(9,'vestibulum','neural-net','2023-09-01','03:42:00','5 Pankratz Junction',35,16,3),(10,'amet eros','matrices','2023-07-18','23:41:00','82 Park Meadow Terrace',35,NULL,7),(11,'in','Adaptive','2023-12-11','14:43:00','129 Nancy Junction',21,NULL,7),(12,'mauris lacinia sapien','Customizable','2023-12-14','01:10:00','9 Vernon Street',20,13,10),(13,'suspendisse potenti cras','optimizing','2023-10-12','13:36:00','14 Kipling Street',37,NULL,9),(14,'diam nam','global','2023-10-18','06:51:00','0257 Superior Junction',14,9,2),(15,'sit amet nulla','background','2023-09-09','04:36:00','193 Schlimgen Pass',32,10,10),(16,'blandit nam nulla','Proactive','2023-12-21','01:41:00','33564 Esker Drive',19,1,3),(17,'proin interdum','Mandatory','2023-08-28','04:01:00','0816 Darwin Lane',42,NULL,1),(18,'sem mauris laoreet','homogeneous','2023-07-22','21:57:00','71516 Reinke Park',22,15,1),(19,'in lacus','hub','2023-07-04','06:24:00','876 Michigan Trail',16,18,7),(20,'amet erat nulla','knowledge base','2023-11-24','17:46:00','97 Melby Center',35,NULL,7),(21,'nulla','software','2023-12-12','01:34:00','38 John Wall Drive',32,5,5),(22,'nunc','moderator','2023-10-08','03:39:00','3 Russell Pass',38,6,9),(23,'sit','Cross-platform','2023-08-31','22:20:00','11233 Logan Parkway',39,NULL,5),(24,'quis libero nullam','system engine','2023-06-29','21:04:00','49125 Miller Junction',14,12,5),(25,'molestie nibh in','uniform','2023-11-18','22:10:00','1 Mallard Drive',43,6,6),(26,'lacus','Re-contextualized','2023-11-01','16:55:00','71139 School Alley',26,NULL,4),(27,'orci luctus et','application','2023-08-12','03:48:00','52797 Briar Crest Park',15,1,2),(28,'id massa','Adaptive','2023-11-12','21:35:00','14141 Eastwood Street',21,NULL,5),(29,'dignissim','info-mediaries','2023-10-21','11:17:00','3501 Hallows Parkway',10,NULL,7),(30,'convallis','core','2023-10-14','16:53:00','522 Artisan Court',16,10,1);
/*!40000 ALTER TABLE `careerevents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `companies`
--

DROP TABLE IF EXISTS `companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `companies` (
  `company_id` int NOT NULL AUTO_INCREMENT,
  `company_name` varchar(255) DEFAULT NULL,
  `contact_person` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companies`
--

LOCK TABLES `companies` WRITE;
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
INSERT INTO `companies` VALUES (1,'Mydo','Selina Twycross','stwycross0@twitter.com'),(2,'Aivee','Lark Issakov','lissakov1@abc.net.au'),(3,'Cogidoo','Donal McMackin','dmcmackin2@mozilla.org'),(4,'Vinte','Elbertina Henden','ehenden3@etsy.com'),(5,'Browsetype','Briano Clews','bclews4@bbb.org'),(6,'Skinix','Agnesse Epgrave','aepgrave5@zimbio.com'),(7,'Yodo','Elita MacDearmaid','emacdearmaid6@washington.edu'),(8,'Oloo','Isabel McGannon','imcgannon7@hugedomains.com'),(9,'Wordtune','Augusta Salmen','asalmen8@independent.co.uk'),(10,'Fivebridge','Vivia Friedank','vfriedank9@state.gov');
/*!40000 ALTER TABLE `companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobinternshippostings`
--

DROP TABLE IF EXISTS `jobinternshippostings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobinternshippostings` (
  `post_id` int NOT NULL AUTO_INCREMENT,
  `company_id` int DEFAULT NULL,
  `position_title` varchar(255) DEFAULT NULL,
  `description` text,
  `date_posted` date DEFAULT NULL,
  PRIMARY KEY (`post_id`),
  KEY `company_id` (`company_id`),
  CONSTRAINT `jobinternshippostings_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `companies` (`company_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobinternshippostings`
--

LOCK TABLES `jobinternshippostings` WRITE;
/*!40000 ALTER TABLE `jobinternshippostings` DISABLE KEYS */;
INSERT INTO `jobinternshippostings` VALUES (1,4,'Internal Auditor','Diverse','2023-08-29'),(2,7,'Research Nurse','context-sensitive','2023-07-24'),(3,6,'GIS Technical Architect','Progressive','2023-08-05'),(4,6,'Design Engineer','composite','2023-07-12'),(5,10,'Operator','flexibility','2023-09-01'),(6,7,'Chief Design Engineer','composite','2023-07-21'),(7,2,'Product Engineer','intermediate','2023-06-29'),(8,3,'Administrative Assistant II','initiative','2023-09-12'),(9,2,'VP Sales','functionalities','2023-09-13'),(10,6,'Professor','contextually-based','2023-08-21'),(11,6,'Account Representative III','customer loyalty','2023-08-04'),(12,2,'Software Consultant','radical','2023-08-27'),(13,3,'Editor','neural-net','2023-09-11'),(14,4,'Physical Therapy Assistant','context-sensitive','2023-09-24'),(15,4,'Financial Analyst','middleware','2023-07-01'),(16,2,'Research Assistant IV','Configurable','2023-07-04'),(17,9,'Analyst Programmer','scalable','2023-07-24'),(18,3,'Programmer Analyst III','attitude','2023-09-25'),(19,1,'Marketing Manager','Progressive','2023-09-12'),(20,1,'Health Coach I','Synchronised','2023-08-29');
/*!40000 ALTER TABLE `jobinternshippostings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_careerevent`
--

DROP TABLE IF EXISTS `student_careerevent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_careerevent` (
  `student_id` int NOT NULL,
  `event_id` int NOT NULL,
  PRIMARY KEY (`student_id`,`event_id`),
  KEY `event_id` (`event_id`),
  CONSTRAINT `student_careerevent_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`) ON DELETE CASCADE,
  CONSTRAINT `student_careerevent_ibfk_2` FOREIGN KEY (`event_id`) REFERENCES `careerevents` (`event_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_careerevent`
--

LOCK TABLES `student_careerevent` WRITE;
/*!40000 ALTER TABLE `student_careerevent` DISABLE KEYS */;
INSERT INTO `student_careerevent` VALUES (11,1),(48,3),(6,4),(38,5),(8,6),(42,6),(13,7),(29,9),(30,10),(40,10),(24,11),(27,11),(5,13),(1,14),(25,14),(10,15),(39,20),(2,21),(46,21),(10,22),(2,24),(5,24),(34,26),(43,26),(45,26),(4,27),(8,27),(30,27),(47,28),(44,29);
/*!40000 ALTER TABLE `student_careerevent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_jobinternship`
--

DROP TABLE IF EXISTS `student_jobinternship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_jobinternship` (
  `student_id` int NOT NULL,
  `post_id` int NOT NULL,
  PRIMARY KEY (`student_id`,`post_id`),
  KEY `post_id` (`post_id`),
  CONSTRAINT `student_jobinternship_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`) ON DELETE CASCADE,
  CONSTRAINT `student_jobinternship_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `jobinternshippostings` (`post_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_jobinternship`
--

LOCK TABLES `student_jobinternship` WRITE;
/*!40000 ALTER TABLE `student_jobinternship` DISABLE KEYS */;
INSERT INTO `student_jobinternship` VALUES (34,1),(7,2),(45,2),(26,3),(32,3),(33,3),(2,4),(23,4),(35,4),(16,5),(24,5),(44,5),(2,6),(40,6),(45,6),(8,8),(24,10),(25,10),(2,11),(12,11),(38,11),(16,14),(19,14),(9,17),(25,18),(30,18),(3,19),(8,20),(18,20),(47,20);
/*!40000 ALTER TABLE `student_jobinternship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `student_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `student_number` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,'Lib','Mottershead','lmottershead0@time.com','39-5658824'),(2,'Valentino','Whooley','vwhooley1@themeforest.net','50-4087734'),(3,'Zonnya','Beldom','zbeldom2@drupal.org','83-4063224'),(4,'Inger','Arend','iarend3@yellowbook.com','80-0035060'),(5,'Yehudit','Sergeant','ysergeant4@goo.ne.jp','06-0589840'),(6,'Gwennie','Ruckman','gruckman5@shareasale.com','61-7548318'),(7,'Lloyd','Terbrugge','lterbrugge6@taobao.com','15-2619454'),(8,'Kathye','Bousfield','kbousfield7@ibm.com','54-1243696'),(9,'Daveen','Olkowicz','dolkowicz8@youtube.com','54-0078904'),(10,'Etheline','Cowwell','ecowwell9@berkeley.edu','27-0975887'),(11,'Wendy','Arendsen','warendsena@github.com','46-5573637'),(12,'Sullivan','Brandin','sbrandinb@bing.com','32-7305729'),(13,'Dennie','Carette','dcarettec@bluehost.com','23-6903905'),(14,'Zarla','Forty','zfortyd@hostgator.com','56-1319178'),(15,'Arluene','Critchell','acritchelle@senate.gov','58-9963673'),(16,'Ivory','MacLure','imacluref@woothemes.com','94-8694698'),(17,'Eva','Antoniottii','eantoniottiig@abc.net.au','81-8540161'),(18,'Gerianne','Causby','gcausbyh@deviantart.com','71-0495055'),(19,'Alexis','Neighbour','aneighbouri@chron.com','39-1219122'),(20,'Emmie','Chellenham','echellenhamj@mlb.com','81-4401679'),(21,'Glenden','McNeil','gmcneilk@abc.net.au','47-5252560'),(22,'Gabriellia','Duddell','gduddelll@bbc.co.uk','15-2986309'),(23,'Launce','Cromleholme','lcromleholmem@sourceforge.net','40-6599697'),(24,'Christal','Harron','charronn@ning.com','48-5490992'),(25,'Natka','Applegate','napplegateo@issuu.com','04-1233887'),(26,'Cole','Biskup','cbiskupp@hubpages.com','33-7126186'),(27,'Roy','Cordie','rcordieq@yelp.com','30-6530725'),(28,'Merry','Clack','mclackr@java.com','03-3181082'),(29,'Sibley','Mieville','smievilles@house.gov','85-9079886'),(30,'Anderson','Roper','aropert@imgur.com','54-6918970'),(31,'Jared','Pollastrone','jpollastroneu@quantcast.com','68-4386237'),(32,'Adham','Skyram','askyramv@cafepress.com','30-3794757'),(33,'Chicky','Barge','cbargew@usgs.gov','59-7832491'),(34,'Gayle','Shawcroft','gshawcroftx@nih.gov','40-9420991'),(35,'Barbabra','Jizhaki','bjizhakiy@techcrunch.com','64-0171666'),(36,'Cirillo','Merrin','cmerrinz@twitpic.com','29-5009870'),(37,'Cindie','Keirl','ckeirl10@cyberchimps.com','24-5459696'),(38,'Teresa','MacComiskey','tmaccomiskey11@wsj.com','04-1988546'),(39,'Xenos','Corn','xcorn12@opensource.org','37-3466852'),(40,'Joelle','Ironmonger','jironmonger13@cnet.com','15-7594850'),(41,'Anatola','Giraldez','agiraldez14@smh.com.au','34-0444112'),(42,'Tallie','Helstrip','thelstrip15@smh.com.au','63-1465689'),(43,'Rycca','Perigeaux','rperigeaux16@patch.com','78-6445688'),(44,'Ramona','Smithen','rsmithen17@liveinternet.ru','86-1579058'),(45,'Georgianne','Cominello','gcominello18@plala.or.jp','86-0997490'),(46,'Maury','Moresby','mmoresby19@msu.edu','65-5845225'),(47,'Sheelah','O\'Brian','sobrian1a@usgs.gov','33-5633267'),(48,'Aldous','Harly','aharly1b@wikispaces.com','24-8240782'),(49,'Constantine','Standfield','cstandfield1c@wikia.com','24-3174259'),(50,'Philipa','Andreichik','pandreichik1d@networkadvertising.org','35-4431029');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-26 15:35:08
