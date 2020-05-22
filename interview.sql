-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: interview
-- ------------------------------------------------------
-- Server version	8.0.20

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bets`
--

DROP TABLE IF EXISTS `bets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bets` (
  `id` int NOT NULL,
  `numbets` int NOT NULL,
  `game` varchar(30) NOT NULL,
  `stake` float(11,7) DEFAULT NULL,
  `returns` float(11,7) DEFAULT NULL,
  `clientid` int DEFAULT NULL,
  `date` date DEFAULT NULL,
  KEY `bets` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bets`
--

LOCK TABLES `bets` WRITE;
/*!40000 ALTER TABLE `bets` DISABLE KEYS */;
INSERT INTO `bets` VALUES (1,5,'roulette',100.0000000,0.0000000,1,'2020-05-17'),(2,5,'baccarat',1000.0000000,2000.0000000,1,'2020-05-17'),(3,8,'blackjack',1550.0000000,1600.0000000,1,'2020-05-17'),(4,5,'roulette',1250.0000000,1200.0000000,2,'2020-05-17'),(5,5,'baccarat',200.0000000,400.0000000,2,'2020-05-17'),(6,5,'blackjack',100.0000000,0.0000000,2,'2020-05-17'),(7,3,'roulette',500.0000000,0.0000000,1,'2020-05-16'),(8,10,'baccarat',1000.0000000,2000.0000000,1,'2020-05-16'),(9,8,'blackjack',1550.0000000,1600.0000000,1,'2020-05-16'),(10,5,'roulette',1250.0000000,1200.0000000,2,'2020-05-16'),(11,2,'baccarat',400.0000000,800.0000000,2,'2020-05-16'),(12,1,'blackjack',100.0000000,100.0000000,2,'2020-05-16'),(1,5,'roulette',100.0000000,0.0000000,1,'2020-05-17'),(2,5,'baccarat',1000.0000000,2000.0000000,1,'2020-05-17'),(3,8,'blackjack',1550.0000000,1600.0000000,1,'2020-05-17'),(4,5,'roulette',1250.0000000,1200.0000000,2,'2020-05-17'),(5,5,'baccarat',200.0000000,400.0000000,2,'2020-05-17'),(6,5,'blackjack',100.0000000,0.0000000,2,'2020-05-17'),(7,3,'roulette',500.0000000,0.0000000,1,'2020-05-16'),(8,10,'baccarat',1000.0000000,2000.0000000,1,'2020-05-16'),(9,8,'blackjack',1550.0000000,1600.0000000,1,'2020-05-16'),(10,5,'roulette',1250.0000000,1200.0000000,2,'2020-05-16'),(11,2,'baccarat',400.0000000,800.0000000,2,'2020-05-16'),(12,1,'blackjack',100.0000000,100.0000000,2,'2020-05-16'),(1,5,'roulette',100.0000000,0.0000000,1,'2020-05-17'),(2,5,'baccarat',1000.0000000,2000.0000000,1,'2020-05-17'),(3,8,'blackjack',1550.0000000,1600.0000000,1,'2020-05-17'),(4,5,'roulette',1250.0000000,1200.0000000,2,'2020-05-17'),(5,5,'baccarat',200.0000000,400.0000000,2,'2020-05-17'),(6,5,'blackjack',100.0000000,0.0000000,2,'2020-05-17'),(7,3,'roulette',500.0000000,0.0000000,1,'2020-05-16'),(8,10,'baccarat',1000.0000000,2000.0000000,1,'2020-05-16'),(9,8,'blackjack',1550.0000000,1600.0000000,1,'2020-05-16'),(10,5,'roulette',1250.0000000,1200.0000000,2,'2020-05-16'),(11,2,'baccarat',400.0000000,800.0000000,2,'2020-05-16'),(12,1,'blackjack',100.0000000,100.0000000,2,'2020-05-16');
/*!40000 ALTER TABLE `bets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-22 14:56:26
