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
-- Table structure for table `seller_anannyac`
--

DROP TABLE IF EXISTS `seller_anannyac`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seller_anannyac` (
  `Seller_ID` int(11) NOT NULL,
  `Username` varchar(45) NOT NULL,
  `Password` varchar(15) NOT NULL,
  `EmailID` varchar(45) NOT NULL,
  `Teaching_grades` varchar(45) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Street Address` varchar(200) NOT NULL,
  `City` varchar(45) NOT NULL,
  `State` varchar(45) NOT NULL,
  `Country` varchar(45) NOT NULL,
  `ContactNum` varchar(20) NOT NULL,
  PRIMARY KEY (`Seller_ID`),
  UNIQUE KEY `EmailID_UNIQUE` (`EmailID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seller_anannyac`
--

LOCK TABLES `seller_anannyac` WRITE;
/*!40000 ALTER TABLE `seller_anannyac` DISABLE KEYS */;
INSERT INTO `seller_anannyac` VALUES (21111,'Meghch','MC1234','megha.cemk@gmail.com','Elementary','Megha Chatterjee','47 W 13th St    ','New York','New York','USA','+1- 4259876543'),(21112,'Dolaba','DB5678','dols.ban@gmail.com','Middle school','Dola Banerjee','591 Memorial Dr','Chicopee','Massachusetts','USA','+1- 6169876543'),(21113,'Smitpe','SP9811','smith.perk@gmail.com','High school','Smith Perk','55 Clark St',' Brooklyn','New York','USA','+1- 7329876543'),(21114,'Kancro','KR1234','kancy@gmail.com','College','Kancy Robinson','700 Oak Street ','Brockton','Massachusetts','USA','+1- 4199876543'),(21115,'Saralo','SL5678','saralouis@gmail.com','Elementary school','Sara Louis','655 Boston Post Rd ','Mason','Ohio','USA','+1- 4251116543'),(21116,'Aryach','AC1111','Arya1234@gmail.com','Middle school','Arya Chatterjee','2473 Hackworth Road  ','Adamsville','Alabama','USA','+1- 7321234543'),(21117,'Ankupa','AP1234','ankurpatel@gmail.com','High school','Ankur Patel','1105 Peter Road ','Springfield','Massachusetts','USA','+1- 6169876543'),(21118,'Soumda','SD1234','soumik.dasgupta@gmail.com','Elementary school','Soumik Dasgupta','8320 Primrose Rd.  ','Grand Haven','Michigan','USA','+1- 6068876543'),(21119,'Parapu','PP9811','parap@gmail.com','College','Para Purkait','86 West Pine Drive','Ashburn','Virginia','USA','+1- 4258877660'),(21120,'Tiffjo','TJ1294','tiffanyj@gmail.com','High school','Tiffany Jones','41 Dogwood St. ','Chicago','Illinois','USA','+1- 8324048328');
/*!40000 ALTER TABLE `seller_anannyac` ENABLE KEYS */;
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
