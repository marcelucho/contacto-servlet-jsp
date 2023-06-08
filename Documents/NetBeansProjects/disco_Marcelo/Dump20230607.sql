CREATE DATABASE  IF NOT EXISTS `disco` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_bin */;
USE `disco`;
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: disco
-- ------------------------------------------------------
-- Server version	5.7.36-log

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
-- Table structure for table `discos`
--

DROP TABLE IF EXISTS `discos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `autor` varchar(45) COLLATE utf8mb4_bin DEFAULT NULL,
  `titulo` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `formato` varchar(45) COLLATE utf8mb4_bin DEFAULT NULL,
  `genero` varchar(45) COLLATE utf8mb4_bin DEFAULT NULL,
  `duracion` varchar(45) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discos`
--

LOCK TABLES `discos` WRITE;
/*!40000 ALTER TABLE `discos` DISABLE KEYS */;
INSERT INTO `discos` VALUES (1,'Mana','Muelle de San Blas','mp3',NULL,'05:23'),(2,NULL,NULL,NULL,NULL,NULL),(3,'Bronco','Oro','mp3','Cachaca','03:25'),(4,NULL,NULL,NULL,NULL,NULL),(5,'Marcelo','Por fin','mp3','rock','04:00'),(6,NULL,NULL,NULL,NULL,NULL),(7,'Juan','Largo examen','mp3','pop','05:20'),(8,NULL,NULL,NULL,NULL,NULL),(9,'Maria','Hola','mp3','rock','03:00'),(10,NULL,NULL,NULL,NULL,NULL),(11,'M','Marcelo','mp3','rock','20:00'),(12,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `discos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-07 21:40:10
