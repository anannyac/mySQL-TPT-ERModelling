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
-- Table structure for table `cart_anannyac`
--

DROP TABLE IF EXISTS `cart_anannyac`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_anannyac` (
  `CartID` int(11) NOT NULL,
  `Buyer_ID` int(11) NOT NULL,
  `Status` varchar(45) DEFAULT NULL,
  `CreatedAt` datetime NOT NULL,
  PRIMARY KEY (`CartID`),
  KEY `Buyer_ID_idx` (`Buyer_ID`),
  CONSTRAINT `CART_FK` FOREIGN KEY (`Buyer_ID`) REFERENCES `buyer_anannyac` (`Buyer_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_anannyac`
--

LOCK TABLES `cart_anannyac` WRITE;
/*!40000 ALTER TABLE `cart_anannyac` DISABLE KEYS */;
INSERT INTO `cart_anannyac` VALUES (1,11113,'Complete','2020-01-23 11:29:59'),(2,11115,'Abandoned','2020-02-10 15:59:59'),(3,11115,'Abandoned','2020-02-11 11:29:59'),(4,11115,'Complete','2020-02-13 16:49:59'),(5,11116,'Complete','2020-02-18 10:39:49'),(6,11117,'Abandoned','2020-04-03 07:19:59'),(7,11117,'Complete','2020-05-28 18:45:59'),(8,11118,'Abandoned','2020-06-13 19:29:19'),(9,11118,'Complete','2020-06-23 11:39:29'),(10,11119,'Complete','2020-08-16 11:29:59');
/*!40000 ALTER TABLE `cart_anannyac` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-16 22:12:04
