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
-- Table structure for table `order_item_anannyac`
--

DROP TABLE IF EXISTS `order_item_anannyac`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_item_anannyac` (
  `Order_ItemID` int(11) NOT NULL,
  `Product_ID` int(11) NOT NULL,
  `Order_ID` int(11) NOT NULL,
  `Quantity` smallint(5) NOT NULL,
  `Amount` float NOT NULL,
  `Discount` float DEFAULT NULL,
  `CreatedAt` datetime NOT NULL,
  PRIMARY KEY (`Order_ItemID`),
  KEY `OrderItem_FK1_idx` (`Product_ID`),
  KEY `OrderItem_FK2_idx` (`Order_ID`),
  CONSTRAINT `OrderItem_FK1` FOREIGN KEY (`Product_ID`) REFERENCES `product_anannyac` (`Product_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `OrderItem_FK2` FOREIGN KEY (`Order_ID`) REFERENCES `order_anannyac` (`OrderID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_item_anannyac`
--

LOCK TABLES `order_item_anannyac` WRITE;
/*!40000 ALTER TABLE `order_item_anannyac` DISABLE KEYS */;
INSERT INTO `order_item_anannyac` VALUES (11,333116,1111,1,20.95,0,'2020-01-23 11:58:50'),(12,333118,1111,2,39.9,2,'2020-01-23 11:58:59'),(13,333114,1111,1,4.55,0,'2020-01-23 11:59:00'),(14,333113,1113,2,61.78,5,'2020-02-13 17:14:50'),(15,333120,1113,1,11.95,0,'2020-02-13 17:14:59'),(16,333119,1116,1,7.95,0,'2020-05-28 19:05:00'),(17,333120,1116,1,11.95,0,'2020-05-28 19:05:50'),(18,333119,1118,1,7.95,0,'2020-06-23 12:00:00'),(19,333120,1118,1,11.95,0,'2020-06-23 12:00:09'),(20,333117,1120,1,11.95,0,'2020-08-16 11:45:01');
/*!40000 ALTER TABLE `order_item_anannyac` ENABLE KEYS */;
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
