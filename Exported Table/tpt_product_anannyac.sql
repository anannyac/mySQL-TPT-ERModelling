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
-- Table structure for table `product_anannyac`
--

DROP TABLE IF EXISTS `product_anannyac`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_anannyac` (
  `Product_ID` int(11) NOT NULL,
  `Title` varchar(45) NOT NULL,
  `Subject` varchar(45) NOT NULL,
  `grade_level` varchar(15) NOT NULL,
  `Resource_type` varchar(45) DEFAULT NULL,
  `price` float NOT NULL,
  `Description` varchar(45) DEFAULT NULL,
  `sku` varchar(45) DEFAULT NULL,
  `Uploaded_By` int(11) NOT NULL,
  PRIMARY KEY (`Product_ID`),
  UNIQUE KEY `sku_UNIQUE` (`sku`),
  KEY `Uploaded_By_idx` (`Uploaded_By`),
  CONSTRAINT `Uploaded_By` FOREIGN KEY (`Uploaded_By`) REFERENCES `seller_anannyac` (`Seller_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_anannyac`
--

LOCK TABLES `product_anannyac` WRITE;
/*!40000 ALTER TABLE `product_anannyac` DISABLE KEYS */;
INSERT INTO `product_anannyac` VALUES (333111,'Nature-Near and Far','Science','5','Book',21.95,'Nature related','AB11CD22UV33GH44',21111),(333112,'Fun with Numbers','Maths','5','Book',16.75,'Arithmetic related','CD11CD22EF33GH44',21115),(333113,'Grewal and Grewal','Maths','College','Book',30.89,'Higher studies in Maths','EF11CD22WX33GH44',21114),(333114,'Laws and Rules','Social Science','5','Journal',4.55,'Social study related','GH11CD22YZ33GH44',21111),(333115,'Atomic Structure','Science','8','Book',21.95,'Middle school Chemistry related','IJ11CD22EF33GH44',21112),(333116,'Concise Physics','Science','12','Magazine',20.95,'High school Physics related','KL11CD22AB33GH44',21113),(333117,'Learning is Fun','Spanish','8','Book',11.95,'Middle school Spanish language related','MN11CD22CD33GH44',21116),(333118,'Genetics in Depth','Science','12','Journal',19.95,'High school Biology related','OP11CD22PQ33GH44',21117),(333119,'Health is Wealth','Physical Education','5','Book',7.95,'Health and Workouts related','QR11CD22RS33GH44',21116),(333120,'Art and Craft Activities','Art','5','Magazine',11.95,'Art,Craft and editting related','ST11CD22TU33GH44',21118);
/*!40000 ALTER TABLE `product_anannyac` ENABLE KEYS */;
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
