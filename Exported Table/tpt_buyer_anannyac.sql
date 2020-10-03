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
-- Table structure for table `buyer_anannyac`
--

DROP TABLE IF EXISTS `buyer_anannyac`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buyer_anannyac` (
  `Buyer_ID` int(11) NOT NULL,
  `Username` varchar(45) NOT NULL,
  `Password` varchar(15) NOT NULL,
  `EmailID` varchar(45) NOT NULL,
  `Teaching_grades` varchar(45) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Street Address` varchar(200) NOT NULL,
  `City` varchar(45) NOT NULL,
  `State` varchar(45) NOT NULL,
  `Country` varchar(15) NOT NULL,
  `ContactNum` varchar(20) NOT NULL,
  PRIMARY KEY (`Buyer_ID`),
  UNIQUE KEY `EmailID_UNIQUE` (`EmailID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buyer_anannyac`
--

LOCK TABLES `buyer_anannyac` WRITE;
/*!40000 ALTER TABLE `buyer_anannyac` DISABLE KEYS */;
INSERT INTO `buyer_anannyac` VALUES (11111,'anukch','ABCD11','Anukul.Chakraborty@gmail.com','University','Anukul Chakraborty','143 Block-A  ','Deoghar','Jharkhand','India','+91- 9831238765'),(11112,'satysa','WXYZ76','Satya.Sai@yahoo.com','University','Satya Sai','29 Sector C  ','Puttaparthi','Hyderabad','India','+91- 7896543112'),(11113,'somemu','efgh123','somprakash.nit@gmail.com','High school','Someprakash Mukherjee','3908 Lori dr. apt 16','Erlanger','Kentucky','USA','+1- 4254357236'),(11114,'ananch','ghijkl','anannya.cemk@gmail.com','Middle school','Anannya Chatterjee','1328 hidden ridge  ',' Irving','Texas','USA','+1- 4252899074'),(11115,'ashich','uvwxyz','ashis.chat@rediffmail.com','College','Ashis Chatterjee','B-86 BBCP Sarani','Durgapur','West Bengal','India','+91- 9434539574'),(11116,'malach','abghi','mala.chatmukh@gmail.com','High school','Mala Chatterjee','A-24  S.S.B.Sarani','Durgapur','West Bengal','India','+91- 9475399139'),(11117,'joydba','jb100','joydeep.ban@yahoo.com','Elementary school','Joydeep Banerjee','121 BB Pal Road','Kolkata','West Bengal','India','+91- 8765423456'),(11118,'anirha','ah200','anirban.hazra@yahoo.com','Elementary school','Anirban Hazra','534 MG Road  ','Asansol','West Bengal','India','+91- 7008009001'),(11119,'abhich','ac300','abhisek.chakra@gmail.com','Middle school','Abhisek Chakraborty','141 peter dr. ','Atlanta','Gerogia','USA','+1- 425567987'),(11120,'Debdch','mnop234','debdatta.c@gmail.com','High school','Debdatta Chattopadhyay','D121 Hari Pal Road.  ','Mumbai','Maharashtra','India','+91- 9467898765');
/*!40000 ALTER TABLE `buyer_anannyac` ENABLE KEYS */;
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
