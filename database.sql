-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: skyifsp
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `aeronave`
--

DROP TABLE IF EXISTS `aeronave`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aeronave` (
  `ID_AERONAVE` int NOT NULL AUTO_INCREMENT,
  `MODELO` varchar(80) DEFAULT NULL,
  `CMP_AEREA` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`ID_AERONAVE`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aeronave`
--

LOCK TABLES `aeronave` WRITE;
/*!40000 ALTER TABLE `aeronave` DISABLE KEYS */;
INSERT INTO `aeronave` VALUES (1,'Airbus A320','TAM'),(2,'Tupolev Tu-104','GOL'),(3,'Embraer 175','Azul'),(4,'Fokker F28','Passaredo'),(5,'Boeing 777','Avianca');
/*!40000 ALTER TABLE `aeronave` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assentos`
--

DROP TABLE IF EXISTS `assentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assentos` (
  `ID_ASSENTOS` int NOT NULL AUTO_INCREMENT,
  `CLASSE` varchar(80) DEFAULT NULL,
  `F_ETARIA` varchar(80) DEFAULT NULL,
  `PRECO` decimal(5,2) DEFAULT NULL,
  `P_ANTECIPADO` decimal(5,2) DEFAULT NULL,
  `QT_ASSENTOS` int DEFAULT NULL,
  `AS_AERONAVE` int DEFAULT NULL,
  `AS_VOO` int DEFAULT NULL,
  PRIMARY KEY (`ID_ASSENTOS`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assentos`
--

LOCK TABLES `assentos` WRITE;
/*!40000 ALTER TABLE `assentos` DISABLE KEYS */;
INSERT INTO `assentos` VALUES (1,'Econômica','Adulto',500.00,425.00,50,1,1);
/*!40000 ALTER TABLE `assentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voo`
--

DROP TABLE IF EXISTS `voo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `voo` (
  `ID_VOO` int NOT NULL AUTO_INCREMENT,
  `ORIGEM` varchar(80) DEFAULT NULL,
  `DESTINO` varchar(80) DEFAULT NULL,
  `DT_PARTIDA` date DEFAULT NULL,
  `DT_CHEGADA` date DEFAULT NULL,
  `HR_SAIDA` time DEFAULT NULL,
  `HR_CHEGADA` time DEFAULT NULL,
  `VO_AERONAVE` int DEFAULT NULL,
  PRIMARY KEY (`ID_VOO`),
  KEY `VO_AERONAVE` (`VO_AERONAVE`),
  CONSTRAINT `VO_AERONAVE` FOREIGN KEY (`VO_AERONAVE`) REFERENCES `aeronave` (`ID_AERONAVE`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voo`
--

LOCK TABLES `voo` WRITE;
/*!40000 ALTER TABLE `voo` DISABLE KEYS */;
INSERT INTO `voo` VALUES (1,'Cumbica - SP','Montes Carlos - MG','2023-05-07','2023-05-07','17:30:00','19:00:00',1),(3,'Aeroporto de Marechal Thaumaturgo - AC','Aeroporto Internacional de Viracopos - SP','2023-05-15','2023-05-16','22:00:00','02:00:00',2),(4,'Aeroporto Galeão - RJ','Aeroporto Caldas Novas - GO','2023-05-18','2023-05-18','17:20:00','18:30:00',3),(5,'Aeroporto de Guarulhos - SP','Aeroporto de Arapiraca - AL','2023-05-18','2023-05-18','10:00:00','13:00:00',4);
/*!40000 ALTER TABLE `voo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-01 22:55:09
