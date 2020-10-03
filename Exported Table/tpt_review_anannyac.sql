-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: tpt
-- ------------------------------------------------------
-- Server version	5.7.31-log

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
-- Table structure for table `review_anannyac`
--

DROP TABLE IF EXISTS `review_anannyac`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review_anannyac` (
  `Review_ID` int(11) NOT NULL,
  `Buyer_ID` int(11) NOT NULL,
  `OrderID` int(11) NOT NULL,
  `Quality` varchar(45) DEFAULT NULL,
  `Accuracy` varchar(45) DEFAULT NULL,
  `Clarity` varchar(45) DEFAULT NULL,
  `Creativity` varchar(45) DEFAULT NULL,
  `Practicality` varchar(45) DEFAULT NULL,
  `ShippingEfficiency` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Review_ID`),
  KEY `Review_F1_idx` (`Buyer_ID`),
  KEY `Review_F2_idx` (`OrderID`),
  CONSTRAINT `Review_F1` FOREIGN KEY (`Buyer_ID`) REFERENCES `buyer_anannyac` (`Buyer_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Review_F2` FOREIGN KEY (`OrderID`) REFERENCES `order_anannyac` (`OrderID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review_anannyac`
--

LOCK TABLES `review_anannyac` WRITE;
/*!40000 ALTER TABLE `review_anannyac` DISABLE KEYS */;
INSERT INTO `review_anannyac` VALUES (111,11113,1111,'Very Good','Good','Good','Fair','Very Good','Excellent'),(112,11112,1112,'Needs improvement','Good','Fair','Good','Fair','Good'),(113,11115,1113,'Good','Good','Good','Good','very Good','Excellent'),(114,11116,1114,'Very Good','Very Good','Very Good','Good','Very Good','Excellent'),(115,11114,1115,'Needs improvement','Good','Very good','Fair','Good','Good'),(116,11117,1116,'Very Good','Very Good','Very Good','Very Good','Very Good','Very Good'),(117,11118,1118,'Very Good','Very Good','Very Good','Very Good','Very Good','Very Good'),(118,11120,1119,'Good','Good','Good','Good','Very Good','Excellent'),(119,11119,1120,'Very Good','Good','Good','Very Good','Excellent','Very Good'),(120,11116,1117,'NA','NA','NA','NA','NA','Needs improvement');
/*!40000 ALTER TABLE `review_anannyac` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-16 22:12:06
