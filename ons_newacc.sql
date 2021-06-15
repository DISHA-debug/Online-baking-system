-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: ons
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `newacc`
--

DROP TABLE IF EXISTS `newacc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newacc` (
  `idcard` int NOT NULL,
  `amount` int DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `salary` int DEFAULT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `acctype` varchar(255) DEFAULT NULL,
  `nation` varchar(255) DEFAULT NULL,
  `birthday` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `repassword` varchar(255) DEFAULT NULL,
  `accopen` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idcard`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newacc`
--

LOCK TABLES `newacc` WRITE;
/*!40000 ALTER TABLE `newacc` DISABLE KEYS */;
INSERT INTO `newacc` VALUES (1022,5000,'1234567891',200000,'Nidhi','Joshi','female','Savings','Indian','2021-06-14','ahmedabad','nnnn','nnnn',NULL),(1033,600,'9664836874',20000,'Siddhi','Shah','female','current','Indian','2002-02-21','ahmedabad','vvv','vvv',NULL),(1041,7000,'9664836874',200000,'Siddhi','shah','female','Current','Indian','2002-02-21','nasik','sss','sss',NULL),(1042,6000,'1234598762',50000,'Aayushi','Patel','female','Current','Indian','1998-03-11','ahmedabad','aayu','aayu',NULL),(2021,2000,'9876543211',200000,'Dhruvi','Kukreja','female','Current','Indian','2021-06-08','Surat','dhruvi','dhruvi',NULL),(1055,7000,'9876543211',50000,'Dhruvi','Kukreja','female','Current','Indian','2021-06-09','Surat','dhdh','dhdh',NULL),(9999,2000,'9876543211',30000,'John','Doe','male','Savings','Indian','2021-06-14','nasik','1234','1234',NULL),(2555,6000,'1243658792',20000,'Shivam','Rawal','male','current','Indian','2021-06-25','ahmedabad','shiv','shiv',NULL),(2222,6000,'1234612345',200000,'Doremon','abc','male','current','Indian','2021-06-05','Jamnagar','111','111',NULL),(1111,6000,'1234612345',200000,'Doremon','abc','male','current','Indian','2021-06-05','Jamnagar','213','213',NULL),(8888,6000,'1234612345',200000,'Doremon','abc','male','current','Indian','2021-06-05','Jamnagar','111','111',NULL),(3333,6000,'1234612345',200000,'Doremon','abc','male','current','Indian','2021-06-05','Jamnagar','333','333',NULL),(4444,6000,'1234612345',200000,'Doremon','abc','male','current','Indian','2021-06-05','Jamnagar','444','444',NULL),(2121,1100,'9825673273',60000,'Sneha','Jain','female','Current','Indian','1998-02-21','Mehsana','sneha','sneha','2021-06-14'),(21210,1100,'9825673273',60000,'Sneha','Jain','female','Current','Indian','1998-02-21','Mehsana','sne','sne','2021-06-14'),(2111,2500,'9374567891',100000,'Meet','Shah','male','Current','Indian','1998-03-11','Ahmedabad','meet','meet','2021-06-14'),(4545,2000,'1239876541',200000,'Maitri','Sharma','female','Current','Indian','2002-08-08','ahmedabad','maitri','maitri','2021-06-15'),(45456,2000,'1239876541',200000,'Maitri','Sharma','female','Current','Indian','2002-08-08','ahmedabad','maitri','maitri','2021-06-15'),(5588,500,'9825673245',20000,'Sizuka','Sizu','female','Current','Indian','2021-06-03','Baroda','sizuu','sizuu','2021-06-15'),(6543,7100,'6458900624',24000,'Drashti','Chatralia','female','Current','Indian','2021-06-03','Ahmedabad','drashti','drashti','2021-06-15'),(78787,6000,'7405533163',60000,'Tanishk','Sethiya','male','Current','Indian','2021-06-19','Indore','bandar','bandar','2021-06-15');
/*!40000 ALTER TABLE `newacc` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-15 20:32:38
