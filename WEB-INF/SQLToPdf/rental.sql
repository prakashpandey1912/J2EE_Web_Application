-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: rentalmanagement
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `1bhk`
--

DROP TABLE IF EXISTS `1bhk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `1bhk` (
  `rent_amount` int(11) NOT NULL,
  `description` char(255) NOT NULL,
  `apartment_id` int(11) DEFAULT NULL,
  KEY `apartment_id` (`apartment_id`),
  CONSTRAINT `1bhk_ibfk_1` FOREIGN KEY (`apartment_id`) REFERENCES `apartment` (`apartment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `1bhk`
--

LOCK TABLES `1bhk` WRITE;
/*!40000 ALTER TABLE `1bhk` DISABLE KEYS */;
/*!40000 ALTER TABLE `1bhk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `2bhk`
--

DROP TABLE IF EXISTS `2bhk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `2bhk` (
  `rent_amount` int(11) NOT NULL,
  `description` char(100) DEFAULT NULL,
  `apartment_id` int(11) DEFAULT NULL,
  KEY `apartment_id` (`apartment_id`),
  CONSTRAINT `2bhk_ibfk_1` FOREIGN KEY (`apartment_id`) REFERENCES `apartment` (`apartment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `2bhk`
--

LOCK TABLES `2bhk` WRITE;
/*!40000 ALTER TABLE `2bhk` DISABLE KEYS */;
INSERT INTO `2bhk` VALUES (8000,'well furnished and good maintained',3),(8500,'open and good maintained',4),(8200,'well furnished and good maintained',9),(8400,'open and good maintained',10);
/*!40000 ALTER TABLE `2bhk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `3bhk`
--

DROP TABLE IF EXISTS `3bhk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `3bhk` (
  `rent_amount` int(11) NOT NULL,
  `description` char(100) DEFAULT NULL,
  `apartment_id` int(11) DEFAULT NULL,
  KEY `apartment_id` (`apartment_id`),
  CONSTRAINT `3bhk_ibfk_1` FOREIGN KEY (`apartment_id`) REFERENCES `apartment` (`apartment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `3bhk`
--

LOCK TABLES `3bhk` WRITE;
/*!40000 ALTER TABLE `3bhk` DISABLE KEYS */;
INSERT INTO `3bhk` VALUES (12000,'well furnished and good maintained',5),(11500,'open and good maintained',6),(11550,'well furnished and good maintained',11),(11800,'open and good maintained',12);
/*!40000 ALTER TABLE `3bhk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `password` char(20) NOT NULL,
  `name` char(20) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'123456789','Riya Punjabi');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `apartment`
--

DROP TABLE IF EXISTS `apartment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `apartment` (
  `apartment_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(20) NOT NULL,
  `dealer_id` int(11) DEFAULT NULL,
  `address` char(50) NOT NULL,
  PRIMARY KEY (`apartment_id`),
  KEY `dealer_id` (`dealer_id`),
  CONSTRAINT `apartment_ibfk_1` FOREIGN KEY (`dealer_id`) REFERENCES `dealer` (`dealer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apartment`
--

LOCK TABLES `apartment` WRITE;
/*!40000 ALTER TABLE `apartment` DISABLE KEYS */;
INSERT INTO `apartment` VALUES (1,'prakash Villa',1,'14/13 pragati nagar ujjain'),(2,'rahul apartment',2,'4/15 sant kabir nagar ujjain'),(3,'johari sadan',3,'14/15 pragati nagar ujjain'),(4,'bacha ghar',4,'4/113 sant kabir nagar ujjain'),(5,'mota house',5,'13/15 pragati nagar ujjain'),(6,'mishraji ka ghar',6,'2/14 sant kabir nagar ujjain'),(7,'prakash Villa2',1,'14/13 mahakal vanija khendra ujjain'),(8,'rahul apartment2',2,'4/15 vidhya pati nagar ujjain'),(9,'johari sadan2',3,'14/15 vidhya pati ujjain'),(10,'bacha ghar2',4,'4/113 mahakal vanija ujjain'),(11,'mota house2',5,'13/15 ved nagar ujjain'),(12,'mishraji ka ghar2',6,'2/14 rishi nagar ujjain');
/*!40000 ALTER TABLE `apartment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(20) NOT NULL,
  `identity_no` char(20) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`customer_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'vishal gupta','159753684201',3),(2,'ram yadav','753268941012',4),(3,'shreyas sharma','456123789012',5),(4,'prayukti jain','741258963012',7),(5,'priyanshi dalke','564879231078',8),(6,'mridula bhan','879465231456',9),(7,'priyanka patidar','974613258032',10),(8,'harshul shrivastav','564879745122',13),(9,'jhanvi tiwari','879465274185',14);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_address`
--

DROP TABLE IF EXISTS `customer_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_address` (
  `customer_id` int(11) DEFAULT NULL,
  `address` char(50) NOT NULL,
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `customer_address_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_address`
--

LOCK TABLES `customer_address` WRITE;
/*!40000 ALTER TABLE `customer_address` DISABLE KEYS */;
INSERT INTO `customer_address` VALUES (1,'14/13 pragati nagar ujjain'),(2,'4/15 sant kabir nagar ujjain'),(3,'14/15 pragati nagar ujjain'),(4,'4/113 sant kabir nagar ujjain'),(5,'13/15 pragati nagar ujjain'),(6,'2/14 sadar bazar ujjain'),(4,'4/113 mahakal vanija kendra ujjain'),(5,'13/15 mahananda nagar ujjain'),(6,'2/14 arjun nagar ujjain');
/*!40000 ALTER TABLE `customer_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_contact`
--

DROP TABLE IF EXISTS `customer_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_contact` (
  `customer_id` int(11) DEFAULT NULL,
  `contact_number` char(14) NOT NULL,
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `customer_contact_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_contact`
--

LOCK TABLES `customer_contact` WRITE;
/*!40000 ALTER TABLE `customer_contact` DISABLE KEYS */;
INSERT INTO `customer_contact` VALUES (1,'9479306254'),(2,'7860262304'),(3,'7894561203'),(4,'9479307894'),(5,'7860266541'),(6,'7894547121'),(7,'9479305645'),(8,'7887566541'),(9,'7874127121');
/*!40000 ALTER TABLE `customer_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_dealer_mapping`
--

DROP TABLE IF EXISTS `customer_dealer_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_dealer_mapping` (
  `dealer_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  PRIMARY KEY (`dealer_id`,`customer_id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `customer_dealer_mapping_ibfk_1` FOREIGN KEY (`dealer_id`) REFERENCES `dealer` (`dealer_id`),
  CONSTRAINT `customer_dealer_mapping_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_dealer_mapping`
--

LOCK TABLES `customer_dealer_mapping` WRITE;
/*!40000 ALTER TABLE `customer_dealer_mapping` DISABLE KEYS */;
INSERT INTO `customer_dealer_mapping` VALUES (1,1),(2,2),(4,3),(3,4),(5,5),(4,6),(5,7),(6,8),(6,9);
/*!40000 ALTER TABLE `customer_dealer_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `customer_view`
--

DROP TABLE IF EXISTS `customer_view`;
/*!50001 DROP VIEW IF EXISTS `customer_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `customer_view` AS SELECT 
 1 AS `customer_id`,
 1 AS `name`,
 1 AS `identity_no`,
 1 AS `address`,
 1 AS `contact_number`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `dealer`
--

DROP TABLE IF EXISTS `dealer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dealer` (
  `dealer_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(20) NOT NULL,
  `identity_no` char(20) NOT NULL,
  `no_of_deals` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`dealer_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `dealer_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dealer`
--

LOCK TABLES `dealer` WRITE;
/*!40000 ALTER TABLE `dealer` DISABLE KEYS */;
INSERT INTO `dealer` VALUES (1,'prakash pandey','123456789123',5,1),(2,'rahul singh','987465123456',2,2),(3,'siddhant johri','987654321012',10,11),(4,'aman chimania','789421356454',1,12),(5,'himanshu shukla','456123789654',5,15),(6,'sajal mishra','235689741023',3,6);
/*!40000 ALTER TABLE `dealer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dealer_address`
--

DROP TABLE IF EXISTS `dealer_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dealer_address` (
  `dealer_id` int(11) DEFAULT NULL,
  `address` char(50) NOT NULL,
  KEY `dealer_id` (`dealer_id`),
  CONSTRAINT `dealer_address_ibfk_1` FOREIGN KEY (`dealer_id`) REFERENCES `dealer` (`dealer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dealer_address`
--

LOCK TABLES `dealer_address` WRITE;
/*!40000 ALTER TABLE `dealer_address` DISABLE KEYS */;
INSERT INTO `dealer_address` VALUES (1,'14/13 pragati nagar ujjain'),(2,'4/15 sant kabir nagar ujjain'),(3,'14/15 pragati nagar ujjain'),(4,'4/113 sant kabir nagar ujjain'),(5,'13/15 pragati nagar ujjain'),(6,'2/14 sant kabir nagar ujjain');
/*!40000 ALTER TABLE `dealer_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dealer_contact`
--

DROP TABLE IF EXISTS `dealer_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dealer_contact` (
  `dealer_id` int(11) DEFAULT NULL,
  `contact_number` char(14) NOT NULL,
  KEY `dealer_id` (`dealer_id`),
  CONSTRAINT `dealer_contact_ibfk_1` FOREIGN KEY (`dealer_id`) REFERENCES `dealer` (`dealer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dealer_contact`
--

LOCK TABLES `dealer_contact` WRITE;
/*!40000 ALTER TABLE `dealer_contact` DISABLE KEYS */;
INSERT INTO `dealer_contact` VALUES (1,'9479306254'),(2,'7860262304'),(3,'7894561203'),(4,'9479307894'),(5,'7860266541'),(6,'7894547121');
/*!40000 ALTER TABLE `dealer_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback` (
  `feedback_id` int(11) NOT NULL AUTO_INCREMENT,
  `message` char(100) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`feedback_id`,`user_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (1,'provide good service',1),(2,'provide not good service',2),(3,'provide best service',3),(4,'provide worst service',5),(5,'need improvement',6),(6,'apartment upto the point',8);
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rent`
--

DROP TABLE IF EXISTS `rent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rent` (
  `apartment_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `status` char(10) DEFAULT NULL,
  KEY `customer_id` (`customer_id`),
  KEY `apartment_id` (`apartment_id`),
  CONSTRAINT `rent_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  CONSTRAINT `rent_ibfk_2` FOREIGN KEY (`apartment_id`) REFERENCES `apartment` (`apartment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rent`
--

LOCK TABLES `rent` WRITE;
/*!40000 ALTER TABLE `rent` DISABLE KEYS */;
INSERT INTO `rent` VALUES (1,1,'paid'),(2,2,'not paid'),(3,4,'not paid'),(4,3,'paid'),(5,5,'paid'),(6,7,'not paid'),(1,6,'paid'),(2,8,'not paid'),(3,9,'not paid'),(4,1,'paid'),(5,2,'paid'),(6,3,'not paid');
/*!40000 ALTER TABLE `rent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` char(20) NOT NULL,
  `password` char(20) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'prakashpandey','987654321'),(2,'rahulsingh','123123123'),(3,'vishalgupta','vishal123'),(4,'ramyadav','ram@123'),(5,'shreyassharma','shreyas0610'),(6,'sajalmishra','sajal@1999'),(7,'prayuktijain','b_mprayuktic'),(8,'priyanshidalke','pidi@dalke'),(9,'mridulabhan','bhan#1504'),(10,'priyankapatidar','ronedo_muja'),(11,'siddhantjohri','mota$gym'),(12,'amanchimania','bacha_hu_me'),(13,'harshulshrivastav','harshul21'),(14,'jhanvitiwari','jhanvi004'),(15,'himanshushukla','shuklaji');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wishlist` (
  `customer_id` int(11) NOT NULL,
  `apartment_id` int(11) NOT NULL,
  PRIMARY KEY (`customer_id`,`apartment_id`),
  KEY `apartment_id` (`apartment_id`),
  CONSTRAINT `wishlist_ibfk_1` FOREIGN KEY (`apartment_id`) REFERENCES `apartment` (`apartment_id`),
  CONSTRAINT `wishlist_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlist`
--

LOCK TABLES `wishlist` WRITE;
/*!40000 ALTER TABLE `wishlist` DISABLE KEYS */;
INSERT INTO `wishlist` VALUES (1,1),(2,2),(4,3),(6,4),(7,5),(9,6),(3,7),(5,8),(8,9),(6,10),(7,11),(9,12);
/*!40000 ALTER TABLE `wishlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `customer_view`
--

/*!50001 DROP VIEW IF EXISTS `customer_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `customer_view` AS select `customer`.`customer_id` AS `customer_id`,`customer`.`name` AS `name`,`customer`.`identity_no` AS `identity_no`,`customer_address`.`address` AS `address`,`customer_contact`.`contact_number` AS `contact_number` from ((`customer` join `customer_address`) join `customer_contact`) where ((`customer`.`customer_id` = `customer_contact`.`customer_id`) and (`customer`.`customer_id` = `customer_address`.`customer_id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-26 14:19:10
