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
-- Table structure for table `order_anannyac`
--

DROP TABLE IF EXISTS `order_anannyac`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_anannyac` (
  `OrderID` int(11) NOT NULL,
  `Buyer_ID` int(11) NOT NULL,
  `Status` varchar(15) NOT NULL,
  `SubTotal` float NOT NULL,
  `Discount` float DEFAULT NULL,
  `Tax` float NOT NULL,
  `Shipping` float NOT NULL,
  `Total` float NOT NULL,
  `CreatedAt` datetime NOT NULL,
  PRIMARY KEY (`OrderID`),
  KEY `Order_FK_idx` (`Buyer_ID`),
  CONSTRAINT `Order_FK` FOREIGN KEY (`Buyer_ID`) REFERENCES `buyer_anannyac` (`Buyer_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_anannyac`
--

LOCK TABLES `order_anannyac` WRITE;
/*!40000 ALTER TABLE `order_anannyac` DISABLE KEYS */;
INSERT INTO `order_anannyac` VALUES (1111,11113,'Complete',63.4,0,1,2,66.4,'2020-01-23 12:01:59'),(1112,11112,'Returned',24.95,0,1,3,28.95,'2020-01-31 12:01:59'),(1113,11115,'Complete',68.73,0,1,2,70.73,'2020-02-13 17:15:59'),(1114,11116,'Complete',65.45,0,1,2,67.45,'2020-02-19 17:15:59'),(1115,11114,'Returned',11.95,0,1,2,13.95,'2020-03-23 17:15:59'),(1116,11117,'Complete',19.9,2,1,2,20.9,'2020-05-28 19:05:59'),(1117,11116,'Failed',4.55,0,1,2,7.55,'2020-05-31 19:05:59'),(1118,11118,'Complete',19.9,2,1,2,20.9,'2020-06-23 12:00:29'),(1119,11120,'Shipped',7.95,0,1,2,10.95,'2020-07-26 12:00:29'),(1120,11119,'Complete',11.95,0,1,2,14.95,'2020-08-16 11:45:59');
/*!40000 ALTER TABLE `order_anannyac` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-16 22:12:05
