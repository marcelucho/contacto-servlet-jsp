-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: bd_conductor
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
-- Table structure for table `tabla_conductor`
--

DROP TABLE IF EXISTS `tabla_conductor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tabla_conductor` (
  `id_cbd` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_cbd` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `apellido_cbd` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `nacionalidad_cbd` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `domicilio_cbd` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `ciudad_cbd` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `pais_cbd` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `fechaNacimiento_cbd` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `docIdentidad_cbd` varchar(45) COLLATE utf8mb4_bin DEFAULT NULL,
  `catLicencia_cbd` varchar(45) COLLATE utf8mb4_bin DEFAULT NULL,
  `numLicencia_cbd` varchar(45) COLLATE utf8mb4_bin DEFAULT NULL,
  `telefono_cbd` varchar(45) COLLATE utf8mb4_bin DEFAULT NULL,
  `grupoSangre_cbd` varchar(45) COLLATE utf8mb4_bin DEFAULT NULL,
  `email_cbd` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `empresa_cbd` varchar(45) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id_cbd`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabla_conductor`
--

LOCK TABLES `tabla_conductor` WRITE;
/*!40000 ALTER TABLE `tabla_conductor` DISABLE KEYS */;
INSERT INTO `tabla_conductor` VALUES (2,'Marcelo','Enciso','Paraguaya','Antonio Valdovinos c/ Yvotyty','Ciudad del Este','Paraguay','02/12/1984','3692781','B','3692781','0985508460','B-','marcelucho007@gmail.com','Tigo'),(3,'María Magdalena','Figueredo','Paraguaya','Sgto Dure c/ Gral Diaz','Coronel Bogado','Paraguay','22/07/1987','B1235012','A','1235012','02100312546','A+','magda@correo.com',''),(4,'Luis Facundo','Enciso Figueredo','Paraguaya','Avda. 1 c/ Florida','Ciudad del Este','Paraguay','25/05/2010','8145236','C','K12564787','0971236548','A+','lucho@gmail.com','Panadería El Pan'),(5,'Ester','Ferreira','Paraguaya','Sgto Dure c/ Gral Diaz','Hernandarias','Paraguay','2005-01-22','3145315','A','AF3152346','0213125654','B-','ester@correo.com','Cell Shop');
/*!40000 ALTER TABLE `tabla_conductor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-22 22:31:26
