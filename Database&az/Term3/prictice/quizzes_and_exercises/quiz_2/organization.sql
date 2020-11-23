-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: organization
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `corp_connection`
--

DROP TABLE IF EXISTS `corp_connection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `corp_connection` (
  `serial` int NOT NULL AUTO_INCREMENT,
  `corp_id` int NOT NULL,
  `corp_connected_to` int NOT NULL,
  `cotract_date` date NOT NULL,
  `expiration_date` date NOT NULL,
  PRIMARY KEY (`serial`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `corp_connection`
--

LOCK TABLES `corp_connection` WRITE;
/*!40000 ALTER TABLE `corp_connection` DISABLE KEYS */;
/*!40000 ALTER TABLE `corp_connection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `corp_emp`
--

DROP TABLE IF EXISTS `corp_emp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `corp_emp` (
  `id` int NOT NULL AUTO_INCREMENT,
  `emp_id` varchar(10) NOT NULL,
  `corp_serial` varchar(15) NOT NULL,
  `enroll_date` date DEFAULT NULL,
  `outrolling_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `emp_id` (`emp_id`),
  UNIQUE KEY `corp_serial` (`corp_serial`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `corp_emp`
--

LOCK TABLES `corp_emp` WRITE;
/*!40000 ALTER TABLE `corp_emp` DISABLE KEYS */;
/*!40000 ALTER TABLE `corp_emp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `corporation`
--

DROP TABLE IF EXISTS `corporation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `corporation` (
  `corp_id` int NOT NULL,
  `corp_serial` varchar(15) NOT NULL,
  `corp_name` varchar(20) DEFAULT NULL,
  `corp_email` varchar(50) DEFAULT NULL,
  `corp_tel` varchar(12) DEFAULT NULL,
  `corp_address` varchar(100) DEFAULT NULL,
  `employee_qty` int DEFAULT NULL,
  `corp_branch` varchar(3) DEFAULT NULL,
  `corp_type` varchar(15) DEFAULT NULL,
  `corp_account` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`corp_id`),
  UNIQUE KEY `corp_serial` (`corp_serial`),
  UNIQUE KEY `corp_serial_2` (`corp_serial`),
  UNIQUE KEY `corp_account` (`corp_account`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `corporation`
--

LOCK TABLES `corporation` WRITE;
/*!40000 ALTER TABLE `corporation` DISABLE KEYS */;
/*!40000 ALTER TABLE `corporation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `serial` int NOT NULL AUTO_INCREMENT,
  `emp_id` varchar(10) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `family` varchar(100) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `tel` varchar(12) DEFAULT NULL,
  `natural_id` varchar(10) NOT NULL,
  `emp_de` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`serial`),
  UNIQUE KEY `emp_id` (`emp_id`),
  UNIQUE KEY `natural_id` (`natural_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-18 18:28:36
