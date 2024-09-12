-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: campuscarvan_db
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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `admin_id` varchar(45) NOT NULL,
  `admin_pass` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `phone` varchar(13) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('admin','admin','Vinod kumar','Vinod@mail.com','8765701157');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `contact_id` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(45) NOT NULL,
  `user_email` varchar(45) NOT NULL,
  `user_phone` varchar(10) DEFAULT NULL,
  `user_question` varchar(255) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`contact_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'Vinod Kumar','vkv631@gmail.com','34567890','sdfghjkl','2024-02-27'),(2,'Networking  (Crash Course)','vk2020777@gmail.com','234567890','sdfghjkl;\'','2024-02-27'),(3,'Omp','c@gmail.com','4567890','dfghjkl','2024-02-27');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drivers`
--

DROP TABLE IF EXISTS `drivers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drivers` (
  `driver_id` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `phone` varchar(13) NOT NULL,
  `city` varchar(45) NOT NULL,
  `address` varchar(250) NOT NULL,
  `experience` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `qualification` varchar(45) NOT NULL,
  PRIMARY KEY (`driver_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drivers`
--

LOCK TABLES `drivers` WRITE;
/*!40000 ALTER TABLE `drivers` DISABLE KEYS */;
INSERT INTO `drivers` VALUES ('admin','admin','vkv631@gmail.com','vibhanshuasthana097@gmail.com','43','gonda','631/43\r\nadarsh nagar\r\nkamta','5','male','bfb'),('vk2020777','wedrfgthjkl;','Aman','vibhanshuasthana097@gmail.com','09633837459','gonda','Shivshakti Nagar near Gargi Agriculture Research And Training Institute (GARTI) and Junior College','5','male','Mca'),('vk2020777@gmail.com','admin','Aman','vibhanshuasthana097@gmail.com','09633837459','gonda','Shivshakti Nagar near Gargi Agriculture Research And Training Institute (GARTI) and Junior College','5','male','Mca'),('vkv631@gmail.com','dfghj','Vinod Kumar','c@gmail.com','4567876','gonda','631/43\r\nadarsh nagar\r\nkamta','6','male','hg');
/*!40000 ALTER TABLE `drivers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `employee_id` varchar(45) NOT NULL,
  `pass` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  PRIMARY KEY (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES ('admin','admin','Vinod Kumar','vkv631@gmail.com','08765701157'),('admin123','admin','Vinod Kumar','vk2020777@gmail.com','08765701157');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedbacks`
--

DROP TABLE IF EXISTS `feedbacks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedbacks` (
  `feedback_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `remarks` varchar(45) NOT NULL,
  `ratings` varchar(10) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`feedback_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedbacks`
--

LOCK TABLES `feedbacks` WRITE;
/*!40000 ALTER TABLE `feedbacks` DISABLE KEYS */;
INSERT INTO `feedbacks` VALUES (9,'Vinod Kumar','vk2020777@gmail.com','sdfghjkl;','5','2024-02-28'),(10,'Networking  (Crash Course)','vkv631@gmail.com','fbdxgjhghjgdy','5','2024-03-02'),(11,'Vinod Kumar','vk2020777@gmail.com','this website is very helpful','3','2024-03-14'),(12,'admin','vk2020777@gmail.com','Very Helpful for school Kids','5','2024-03-14');
/*!40000 ALTER TABLE `feedbacks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `message` (
  `message_id` int NOT NULL AUTO_INCREMENT,
  `sender_id` varchar(45) NOT NULL,
  `receiver_id` varchar(45) NOT NULL,
  `subject` varchar(45) NOT NULL,
  `message_text` varchar(145) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES (2,'admin123','ad123','service query','i want it','2024-04-02'),(3,'admin123','admin123','service query','i want new van','2024-04-03'),(4,'admin','admin56799','service query','i want new buses','2024-04-03'),(5,'admin','admin123','enquery purpose',' i want bus immediatly','2024-04-03'),(6,'admin','admin43','enquery purpose','i want 2 buses and 3 vans','2024-04-03'),(8,'admin','vk2020@gmail.com','service query','i want bus for my child','2024-04-04'),(10,'admin','school1','about fees inquery','where is your this month fees','2024-04-04'),(11,'admin','parent1','enquery purpose','which time you want van.','2024-04-04'),(12,'parent1','admin','enquery purpose','i want van at 9:00 am','2024-04-04'),(13,'parent1','parent1','enquery purpose','i want to know your opinion about campus carvan services','2024-04-04'),(14,'parent2','parent1','enquery purpose','i want to know about campus carvan services','2024-04-04'),(15,'parent1','parent2','enquery purpose','i wanted to know about services','2024-04-04');
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notification` (
  `notice_id` int NOT NULL AUTO_INCREMENT,
  `notice_content` varchar(150) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification`
--

LOCK TABLES `notification` WRITE;
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
INSERT INTO `notification` VALUES (5,'&#127891;&#127775; New students, enjoy 5% off! &#128218;&#128176; Don\'t miss out! &#128640;&#128188; #StudentDiscount #CampusCarvan','2024-03-21'),(6,'&#127891;&#127775; New students, enjoy 5% off! &#128218;&#128176; Don\'t miss out! &#128640;&#128188; #StudentDiscount #CampusCarvan','2024-03-21');
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parent`
--

DROP TABLE IF EXISTS `parent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parent` (
  `parent_id` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `phone` varchar(13) NOT NULL,
  `email` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `question` varchar(245) NOT NULL,
  `date` varchar(45) NOT NULL,
  PRIMARY KEY (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parent`
--

LOCK TABLES `parent` WRITE;
/*!40000 ALTER TABLE `parent` DISABLE KEYS */;
INSERT INTO `parent` VALUES ('parent1','parent1','Vinod Kumar','8765701157','vkv631@gmail.com','lucknow','male','what is your service charges','2024-04-04'),('parent2','parent2','Tukram chote','9682733566','vibhanshuasthana097@gmail.com','kanpur','male','how can i join this','2024-04-04'),('parent3','parent3','Bhudhan Ram','9633837459','c@gmail.com','khalilabad','male','how can your organization ensure our child\'s safety?.','2024-04-04');
/*!40000 ALTER TABLE `parent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school_vehicle_booking`
--

DROP TABLE IF EXISTS `school_vehicle_booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `school_vehicle_booking` (
  `booking_id` int NOT NULL AUTO_INCREMENT,
  `school_id` varchar(45) NOT NULL,
  `vehicle_type` varchar(45) NOT NULL,
  `charge` varchar(45) NOT NULL,
  `no_of_students` varchar(45) NOT NULL,
  `booking_status` varchar(45) DEFAULT NULL,
  `driver_id` varchar(45) DEFAULT NULL,
  `vehicle_number` varchar(45) DEFAULT NULL,
  `answer` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`booking_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school_vehicle_booking`
--

LOCK TABLES `school_vehicle_booking` WRITE;
/*!40000 ALTER TABLE `school_vehicle_booking` DISABLE KEYS */;
INSERT INTO `school_vehicle_booking` VALUES (1,'school1','Bus','600','45','confirm','vkv631@gmail.com','UP32 AL340','ok i will provide'),(2,'school1','Van','350','45','confirm','Aman','UP32 AL500','confirmed'),(3,'school1','Desire','400','78','confirm','Aman','UP32 AL500','confirmed'),(4,'school1','Bus','600','30','confirm','Vinod Kumar','UP32 AL740','confirmed'),(5,'school1','Bus','600','21','confirm','Aman','UP32 AL500','confirm');
/*!40000 ALTER TABLE `school_vehicle_booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schools`
--

DROP TABLE IF EXISTS `schools`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schools` (
  `school_id` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `address` varchar(200) NOT NULL,
  `founder` varchar(45) NOT NULL,
  `board` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`school_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schools`
--

LOCK TABLES `schools` WRITE;
/*!40000 ALTER TABLE `schools` DISABLE KEYS */;
INSERT INTO `schools` VALUES ('school1','school1','Vinod Kumar','c@gmail.com','8765701158','KAMTA\r\nadarsh nagar','Bhudhan Ram','CBSE','lucknow','2024-04-04'),('school2','school2','central academy','ca@gmail.com','8765713345','631/43\r\nadarsh nagar\r\nkamta','Vinod Kumar','ICSE','lucknow','2024-04-04');
/*!40000 ALTER TABLE `schools` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_feedback`
--

DROP TABLE IF EXISTS `user_feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_feedback` (
  `user_id` varchar(25) NOT NULL,
  `feedback_text` varchar(250) NOT NULL,
  `rating` varchar(10) NOT NULL,
  `role` varchar(45) NOT NULL,
  `date` varchar(45) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_feedback`
--

LOCK TABLES `user_feedback` WRITE;
/*!40000 ALTER TABLE `user_feedback` DISABLE KEYS */;
INSERT INTO `user_feedback` VALUES ('admin','excellent services','4','parent','2024-04-01'),('admin123','good service','5','school','2024-04-01');
/*!40000 ALTER TABLE `user_feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle_booking`
--

DROP TABLE IF EXISTS `vehicle_booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle_booking` (
  `booking_id` int NOT NULL AUTO_INCREMENT,
  `parent_id` varchar(45) NOT NULL,
  `vehicle_type` varchar(45) NOT NULL,
  `charge` varchar(45) NOT NULL,
  `kid_name` varchar(45) NOT NULL,
  `standard` varchar(45) NOT NULL,
  `kid_age` varchar(45) NOT NULL,
  `school_name` varchar(60) NOT NULL,
  `booking_status` varchar(45) DEFAULT NULL,
  `driver_id` varchar(45) DEFAULT NULL,
  `number` varchar(45) DEFAULT NULL,
  `answer` varchar(155) DEFAULT NULL,
  PRIMARY KEY (`booking_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_booking`
--

LOCK TABLES `vehicle_booking` WRITE;
/*!40000 ALTER TABLE `vehicle_booking` DISABLE KEYS */;
INSERT INTO `vehicle_booking` VALUES (20,'parent1','Desire','400','vinod kumar','7','45','CMS','confirm','Aman','UP32 AL740','i want latest vehicles'),(21,'parent1','Desire','400','annat','5','50','CMS','confirm','Aman','UP32 AL740','i want latest vehicles'),(22,'parent1','Desire','400','vinod kumar','5','9','R.L.B','confirm','Aman','UP32 AL500','confirm'),(23,'parent1','Desire','400','annat','12','15','H.A.L','confirm','Aman','UP32 AL500','confirm'),(24,'parent1','Desire','400','vinod kumar','4','23','R.L.B',NULL,'Aman','UP32 AL500','confiem'),(25,'parent1','Desire','400','annat','5','31','H.A.L',NULL,'Aman','UP32 AL500','confiem'),(26,'parent2','Desire','400','vinod kumar','4','12','R.L.B',NULL,NULL,NULL,NULL),(27,'parent2','Desire','400','Annat Tripathi','7','14','H.A.L',NULL,NULL,NULL,NULL),(28,'parent1','Desire','400','vinod kumar','6','8','R.L.B',NULL,NULL,NULL,NULL),(29,'parent1','Desire','400','Annat Tripathi','7','98','H.A.L',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `vehicle_booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicles`
--

DROP TABLE IF EXISTS `vehicles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicles` (
  `types` varchar(25) NOT NULL,
  `number` varchar(25) NOT NULL,
  `color` varchar(45) NOT NULL,
  `fuel_type` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `description` varchar(345) NOT NULL,
  PRIMARY KEY (`number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicles`
--

LOCK TABLES `vehicles` WRITE;
/*!40000 ALTER TABLE `vehicles` DISABLE KEYS */;
INSERT INTO `vehicles` VALUES ('Car','UP32 AL340','red','Electric','Fortuner','Latest Version'),('Car','UP32 AL500','Black','Petrol','Ford','Latest Version'),('E-Rickshaw','UP32 AL740','Blue','Electric','Vinod Kumar','Latest Model'),('Bus','UP324345566','yELLOW','Electric','ELECRRIC','WITHOUT SOUND');
/*!40000 ALTER TABLE `vehicles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicles_type`
--

DROP TABLE IF EXISTS `vehicles_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicles_type` (
  `types` varchar(45) NOT NULL,
  `hourly_charge` varchar(45) NOT NULL,
  `montly_charge` varchar(45) NOT NULL,
  PRIMARY KEY (`types`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicles_type`
--

LOCK TABLES `vehicles_type` WRITE;
/*!40000 ALTER TABLE `vehicles_type` DISABLE KEYS */;
INSERT INTO `vehicles_type` VALUES ('Bus','600','15000'),('Car','400','12000'),('E-Rickshaw','200','6000'),('Van','350','10000');
/*!40000 ALTER TABLE `vehicles_type` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-25 11:08:06
