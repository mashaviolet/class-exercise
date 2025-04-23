-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: property_management_system
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `booking_table`
--

DROP TABLE IF EXISTS `booking_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking_table` (
  `booking_id` int DEFAULT NULL,
  `tenant_id` int DEFAULT NULL,
  `property_id` int DEFAULT NULL,
  `booking_data` date DEFAULT NULL,
  `move_in_date` date DEFAULT NULL,
  `booking_status` varchar(255) DEFAULT NULL,
  `duration` char(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_table`
--

LOCK TABLES `booking_table` WRITE;
/*!40000 ALTER TABLE `booking_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `booking_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contracts`
--

DROP TABLE IF EXISTS `contracts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contracts` (
  `contract_id` int DEFAULT NULL,
  `tenant_id` int DEFAULT NULL,
  `property_id` int DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `rent_amount` char(250) DEFAULT NULL,
  `agreement_file` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contracts`
--

LOCK TABLES `contracts` WRITE;
/*!40000 ALTER TABLE `contracts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contracts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `landlords_table`
--

DROP TABLE IF EXISTS `landlords_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `landlords_table` (
  `landlord_id` int DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contact` char(250) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `landlords_table`
--

LOCK TABLES `landlords_table` WRITE;
/*!40000 ALTER TABLE `landlords_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `landlords_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lease_agreements`
--

DROP TABLE IF EXISTS `lease_agreements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lease_agreements` (
  `lease_id` int DEFAULT NULL,
  `tenant_id` int DEFAULT NULL,
  `property_id` int DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `rent_amount` char(250) DEFAULT NULL,
  `agreement_file` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lease_agreements`
--

LOCK TABLES `lease_agreements` WRITE;
/*!40000 ALTER TABLE `lease_agreements` DISABLE KEYS */;
/*!40000 ALTER TABLE `lease_agreements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maintanance_table`
--

DROP TABLE IF EXISTS `maintanance_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `maintanance_table` (
  `maintenance_id` int DEFAULT NULL,
  `property_id` int DEFAULT NULL,
  `issue_description` varchar(255) DEFAULT NULL,
  `reported_date` date DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `cost` char(250) DEFAULT NULL,
  `technician_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maintanance_table`
--

LOCK TABLES `maintanance_table` WRITE;
/*!40000 ALTER TABLE `maintanance_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `maintanance_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_table`
--

DROP TABLE IF EXISTS `payment_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_table` (
  `payment_id` int DEFAULT NULL,
  `tenant_id` int DEFAULT NULL,
  `property_id` int DEFAULT NULL,
  `amount_paid` char(250) DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `receipt_number` int DEFAULT NULL,
  `payment_method` char(250) DEFAULT NULL,
  `payment_status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_table`
--

LOCK TABLES `payment_table` WRITE;
/*!40000 ALTER TABLE `payment_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_table`
--

DROP TABLE IF EXISTS `property_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `property_table` (
  `property_id` int DEFAULT NULL,
  `property_name` varchar(255) DEFAULT NULL,
  `property_type` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `owner_id` int DEFAULT NULL,
  `propert_status` varchar(255) DEFAULT NULL,
  `property_description` varchar(255) DEFAULT NULL,
  `rent_amount` char(250) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_table`
--

LOCK TABLES `property_table` WRITE;
/*!40000 ALTER TABLE `property_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `property_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salary_table`
--

DROP TABLE IF EXISTS `salary_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salary_table` (
  `payment_id` int DEFAULT NULL,
  `tenant_id` int DEFAULT NULL,
  `property_id` int DEFAULT NULL,
  `amount_paid` char(250) DEFAULT NULL,
  `payment_date` year DEFAULT NULL,
  `receipt_number` int DEFAULT NULL,
  `payment_method` char(250) DEFAULT NULL,
  `payment_status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salary_table`
--

LOCK TABLES `salary_table` WRITE;
/*!40000 ALTER TABLE `salary_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `salary_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tenants_table`
--

DROP TABLE IF EXISTS `tenants_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tenants_table` (
  `tenant_id` int DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `NIN` char(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `move_in_date` date DEFAULT NULL,
  `property_id` int DEFAULT NULL,
  `tenant_status` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tenants_table`
--

LOCK TABLES `tenants_table` WRITE;
/*!40000 ALTER TABLE `tenants_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `tenants_table` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-23 10:09:48
