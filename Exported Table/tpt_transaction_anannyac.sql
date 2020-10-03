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
-- Table structure for table `transaction_anannyac`
--

DROP TABLE IF EXISTS `transaction_anannyac`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction_anannyac` (
  `Transaction_ID` int(11) NOT NULL,
  `Buyer_ID` int(11) NOT NULL,
  `Order_ID` int(11) NOT NULL,
  `Code` varchar(100) NOT NULL,
  `Type` varchar(45) NOT NULL,
  `Mode` varchar(45) NOT NULL,
  `Status` varchar(45) NOT NULL,
  `CreatedAt` datetime NOT NULL,
  PRIMARY KEY (`Transaction_ID`),
  KEY `Tran_FK1_idx` (`Buyer_ID`),
  KEY `Tran_F2_idx` (`Order_ID`),
  CONSTRAINT `Tran_F2` FOREIGN KEY (`Order_ID`) REFERENCES `order_anannyac` (`OrderID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Tran_FK1` FOREIGN KEY (`Buyer_ID`) REFERENCES `buyer_anannyac` (`Buyer_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction_anannyac`
--

LOCK TABLES `transaction_anannyac` WRITE;
/*!40000 ALTER TABLE `transaction_anannyac` DISABLE KEYS */;
INSERT INTO `transaction_anannyac` VALUES (40000001,11113,1111,'A1A1A1A1','Credit','Online','Success','2020-01-23 12:05:59'),(40000002,11112,1112,'A1A1A1B1','Debit','Online','Success','2020-01-31 12:10:59'),(40000003,11115,1113,'A1A1A1C1','Credit','Online','Success','2020-02-13 17:20:59'),(40000004,11116,1114,'B1AIAIAI','NA','Cash On Delivery','Success','2020-02-19 17:19:59'),(40000005,11114,1115,'C1A1B1A1','Debit','Online','Success','2020-03-23 17:22:00'),(40000006,11117,1116,'A1B1E1F1','NA','Cash On Delivery','Success','2020-05-28 19:15:59'),(40000007,11118,1118,'D1A1C1G1','NA','Cash On Delivery','Success','2020-06-23 12:06:29'),(40000008,11120,1119,'G1A1B1C1','Credit','Online','Success','2020-07-26 12:11:29'),(40000009,11119,1120,'A1M1N1L1','Debit','Online','Success','2020-08-16 11:50:50'),(40000010,11116,1117,'-----','Credit','Online','Failed','2020-05-31 19:15:29');
/*!40000 ALTER TABLE `transaction_anannyac` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-16 22:12:03
