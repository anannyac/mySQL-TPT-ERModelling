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
-- Table structure for table `cart_item_anannyac`
--

DROP TABLE IF EXISTS `cart_item_anannyac`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_item_anannyac` (
  `Cart_ItemID` int(11) NOT NULL,
  `Product_ID` int(11) NOT NULL,
  `CartID` int(11) NOT NULL,
  `Quantity` smallint(5) NOT NULL,
  `Amount` float NOT NULL,
  `Discount` float DEFAULT NULL,
  `CreatedAt` datetime NOT NULL,
  PRIMARY KEY (`Cart_ItemID`),
  KEY `CartItem_FK1_idx` (`Product_ID`),
  KEY `CartItem_FK2_idx` (`CartID`),
  CONSTRAINT `CartItem_FK1` FOREIGN KEY (`Product_ID`) REFERENCES `product_anannyac` (`Product_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `CartItem_FK2` FOREIGN KEY (`CartID`) REFERENCES `cart_anannyac` (`CartID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_item_anannyac`
--

LOCK TABLES `cart_item_anannyac` WRITE;
/*!40000 ALTER TABLE `cart_item_anannyac` DISABLE KEYS */;
INSERT INTO `cart_item_anannyac` VALUES (1,333116,1,1,20.95,0,'2020-01-23 11:35:59'),(2,333118,1,2,39.9,2,'2020-01-23 11:40:59'),(3,333114,1,1,4.55,0,'2020-01-23 11:50:59'),(4,333113,4,2,61.78,5,'2020-02-13 16:55:59'),(5,333120,4,1,11.95,0,'2020-02-13 17:05:59'),(6,333119,7,1,7.95,0,'2020-05-28 18:50:59'),(7,333120,7,1,11.95,0,'2020-05-28 18:55:59'),(8,333119,9,1,7.95,0,'2020-06-23 11:45:29'),(9,333120,9,1,11.95,0,'2020-06-23 11:50:29'),(10,333117,10,1,11.95,0,'2020-08-16 11:35:59');
/*!40000 ALTER TABLE `cart_item_anannyac` ENABLE KEYS */;
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
