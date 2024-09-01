CREATE DATABASE  IF NOT EXISTS `encuestas` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `encuestas`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: encuestas
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `answer_options`
--

DROP TABLE IF EXISTS `answer_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `answer_options` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `IdEncuesta` int NOT NULL,
  `IdQuestion` varchar(250) NOT NULL,
  `TextoRespuesta` varchar(250) DEFAULT NULL,
  `Score` int DEFAULT '0',
  `UsrCrea` varchar(50) DEFAULT NULL,
  `FecCrea` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UsrAct` varchar(50) DEFAULT NULL,
  `FecAct` datetime DEFAULT NULL,
  `IndexTarget` int DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=284 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answer_options`
--

LOCK TABLES `answer_options` WRITE;
/*!40000 ALTER TABLE `answer_options` DISABLE KEYS */;
INSERT INTO `answer_options` VALUES (214,10,'0bea05ef-5f9a-0287-14bb-44e28ec62222',NULL,0,'ADMIN@TIENDASDAKA.COM','2024-05-22 11:57:28',NULL,NULL,0),(215,10,'fd8d662d-003f-0b3f-374a-4909b63bffed','Evaluacion de tienda',0,'ADMIN@TIENDASDAKA.COM','2024-05-22 11:58:11',NULL,NULL,0),(216,10,'fd8d662d-003f-0b3f-374a-4909b63bffed','Evaluacion de capacitacion',0,'ADMIN@TIENDASDAKA.COM','2024-05-22 11:58:13',NULL,NULL,1),(217,10,'fd8d662d-003f-0b3f-374a-4909b63bffed','Evaluacion de Piso de ventas Digital',0,'ADMIN@TIENDASDAKA.COM','2024-05-22 11:58:17',NULL,NULL,2),(218,10,'fd8d662d-003f-0b3f-374a-4909b63bffed','Evaluacion de piso de Ventas Hogar',0,'ADMIN@TIENDASDAKA.COM','2024-05-22 11:58:19',NULL,NULL,3),(219,10,'fd64332f-33e9-0b75-36ca-3461ce7956f3','Sucursal Acarigua-Araure',0,'ADMIN@TIENDASDAKA.COM','2024-05-22 11:58:40','ADMIN@TIENDASDAKA.COM','2024-05-22 09:04:14',0),(220,10,'fd64332f-33e9-0b75-36ca-3461ce7956f3','Sucursal Barquisimeto',0,'ADMIN@TIENDASDAKA.COM','2024-05-22 11:58:42',NULL,NULL,1),(221,10,'fd64332f-33e9-0b75-36ca-3461ce7956f3','Sucursal Barquisimeto Centro',0,'ADMIN@TIENDASDAKA.COM','2024-05-22 11:58:44',NULL,NULL,2),(222,10,'fd64332f-33e9-0b75-36ca-3461ce7956f3','Sucursal Bello Monte',0,'ADMIN@TIENDASDAKA.COM','2024-05-22 11:58:46',NULL,NULL,3),(223,10,'fd64332f-33e9-0b75-36ca-3461ce7956f3','Sucursal Boleita',0,'ADMIN@TIENDASDAKA.COM','2024-05-22 11:58:49',NULL,NULL,4),(224,10,'fd64332f-33e9-0b75-36ca-3461ce7956f3','Sucursal Carrizal',0,'ADMIN@TIENDASDAKA.COM','2024-05-22 11:58:52',NULL,NULL,5),(225,10,'fd64332f-33e9-0b75-36ca-3461ce7956f3','Agencia Centro Valencia',0,'ADMIN@TIENDASDAKA.COM','2024-05-22 11:58:54',NULL,NULL,6),(226,10,'fd64332f-33e9-0b75-36ca-3461ce7956f3','Sucursal Chacao',0,'ADMIN@TIENDASDAKA.COM','2024-05-22 11:58:57',NULL,NULL,7),(227,10,'fd64332f-33e9-0b75-36ca-3461ce7956f3','Sucursal El Paraiso',0,'ADMIN@TIENDASDAKA.COM','2024-05-22 11:58:59',NULL,NULL,8),(228,10,'fd64332f-33e9-0b75-36ca-3461ce7956f3','Sucursal El Recreo',0,'ADMIN@TIENDASDAKA.COM','2024-05-22 11:59:02',NULL,NULL,9),(229,10,'fd64332f-33e9-0b75-36ca-3461ce7956f3','Sucursal El Tigre',0,'ADMIN@TIENDASDAKA.COM','2024-05-22 11:59:04',NULL,NULL,10),(230,10,'fd64332f-33e9-0b75-36ca-3461ce7956f3','Agencia Guacara',0,'ADMIN@TIENDASDAKA.COM','2024-05-22 11:59:06',NULL,NULL,11),(231,10,'fd64332f-33e9-0b75-36ca-3461ce7956f3','Sucursal La Trinidad',0,'ADMIN@TIENDASDAKA.COM','2024-05-22 11:59:08','ADMIN@TIENDASDAKA.COM','2024-05-22 09:01:52',12),(232,10,'fd64332f-33e9-0b75-36ca-3461ce7956f3','Sucursal Lechería',0,'ADMIN@TIENDASDAKA.COM','2024-05-22 11:59:10',NULL,NULL,13),(233,10,'fd64332f-33e9-0b75-36ca-3461ce7956f3','Sucursal Maracaibo',0,'ADMIN@TIENDASDAKA.COM','2024-05-22 11:59:12',NULL,NULL,14),(234,10,'fd64332f-33e9-0b75-36ca-3461ce7956f3','Sucursal Maracay',0,'ADMIN@TIENDASDAKA.COM','2024-05-22 11:59:14',NULL,NULL,15),(235,10,'fd64332f-33e9-0b75-36ca-3461ce7956f3','Sucursal Maracay Centro',0,'ADMIN@TIENDASDAKA.COM','2024-05-22 11:59:16',NULL,NULL,16),(236,10,'fd64332f-33e9-0b75-36ca-3461ce7956f3','Sucursal Maturin',0,'ADMIN@TIENDASDAKA.COM','2024-05-22 11:59:18',NULL,NULL,17),(237,10,'fd64332f-33e9-0b75-36ca-3461ce7956f3','Sucursal Porlamar',0,'ADMIN@TIENDASDAKA.COM','2024-05-22 11:59:20',NULL,NULL,18),(238,10,'fd64332f-33e9-0b75-36ca-3461ce7956f3','Agencia Puerto Cabello',0,'ADMIN@TIENDASDAKA.COM','2024-05-22 11:59:21',NULL,NULL,19),(239,10,'fd64332f-33e9-0b75-36ca-3461ce7956f3','Sucursal Puerto La Cruz Centro',0,'ADMIN@TIENDASDAKA.COM','2024-05-22 11:59:23',NULL,NULL,20),(240,10,'fd64332f-33e9-0b75-36ca-3461ce7956f3','Sucursal Puerto Ordaz',0,'ADMIN@TIENDASDAKA.COM','2024-05-22 11:59:25',NULL,NULL,21),(241,10,'fd64332f-33e9-0b75-36ca-3461ce7956f3','Sucursal Punto Fijo',0,'ADMIN@TIENDASDAKA.COM','2024-05-22 11:59:27',NULL,NULL,22),(242,10,'fd64332f-33e9-0b75-36ca-3461ce7956f3','Agencia San Diego',0,'ADMIN@TIENDASDAKA.COM','2024-05-22 11:59:28',NULL,NULL,23),(243,10,'fd64332f-33e9-0b75-36ca-3461ce7956f3','Agencia Valencia',0,'ADMIN@TIENDASDAKA.COM','2024-05-22 11:59:31',NULL,NULL,24),(244,10,'fd64332f-33e9-0b75-36ca-3461ce7956f3','Sucursal San Cristobal',0,'ADMIN@TIENDASDAKA.COM','2024-05-22 11:59:32',NULL,NULL,25),(245,10,'fd64332f-33e9-0b75-36ca-3461ce7956f3','Sucursal San Felipe',0,'ADMIN@TIENDASDAKA.COM','2024-05-22 11:59:34',NULL,NULL,26),(246,10,'fd64332f-33e9-0b75-36ca-3461ce7956f3','Sucursal Valle La Pascua',0,'ADMIN@TIENDASDAKA.COM','2024-05-22 11:59:35',NULL,NULL,27),(247,10,'fd64332f-33e9-0b75-36ca-3461ce7956f3','Sucursal San Martin',0,'ADMIN@TIENDASDAKA.COM','2024-05-22 11:59:37',NULL,NULL,28),(248,10,'fd64332f-33e9-0b75-36ca-3461ce7956f3','Sucursal San Bernardino',0,'ADMIN@TIENDASDAKA.COM','2024-05-22 11:59:41',NULL,NULL,29),(249,11,'c533df05-ee16-08b9-2b94-14c907a6ca73','Sucursal Acarigua-Araure',0,'ADMIN@TIENDASDAKA.COM','2024-05-22 12:04:15','ADMIN@TIENDASDAKA.COM','2024-05-22 09:04:14',0),(250,11,'c533df05-ee16-08b9-2b94-14c907a6ca73','Sucursal Maracay',0,'ADMIN@TIENDASDAKA.COM','2024-05-22 12:04:15',NULL,NULL,15),(251,11,'c533df05-ee16-08b9-2b94-14c907a6ca73','Sucursal Barquisimeto',0,'ADMIN@TIENDASDAKA.COM','2024-05-22 12:04:15',NULL,NULL,1),(252,11,'c533df05-ee16-08b9-2b94-14c907a6ca73','Sucursal Maracay Centro',0,'ADMIN@TIENDASDAKA.COM','2024-05-22 12:04:15',NULL,NULL,16),(253,11,'c533df05-ee16-08b9-2b94-14c907a6ca73','Sucursal Maturin',0,'ADMIN@TIENDASDAKA.COM','2024-05-22 12:04:15',NULL,NULL,17),(254,11,'c533df05-ee16-08b9-2b94-14c907a6ca73','Sucursal Barquisimeto Centro',0,'ADMIN@TIENDASDAKA.COM','2024-05-22 12:04:15',NULL,NULL,2),(255,11,'c533df05-ee16-08b9-2b94-14c907a6ca73','Sucursal Porlamar',0,'ADMIN@TIENDASDAKA.COM','2024-05-22 12:04:15',NULL,NULL,18),(256,11,'c533df05-ee16-08b9-2b94-14c907a6ca73','Sucursal Bello Monte',0,'ADMIN@TIENDASDAKA.COM','2024-05-22 12:04:15',NULL,NULL,3),(257,11,'c533df05-ee16-08b9-2b94-14c907a6ca73','Agencia Puerto Cabello',0,'ADMIN@TIENDASDAKA.COM','2024-05-22 12:04:15',NULL,NULL,19),(258,11,'c533df05-ee16-08b9-2b94-14c907a6ca73','Sucursal Puerto La Cruz Centro',0,'ADMIN@TIENDASDAKA.COM','2024-05-22 12:04:15',NULL,NULL,20),(259,11,'c533df05-ee16-08b9-2b94-14c907a6ca73','Sucursal Puerto Ordaz',0,'ADMIN@TIENDASDAKA.COM','2024-05-22 12:04:15',NULL,NULL,21),(260,11,'c533df05-ee16-08b9-2b94-14c907a6ca73','Sucursal Boleita',0,'ADMIN@TIENDASDAKA.COM','2024-05-22 12:04:15',NULL,NULL,4),(261,11,'c533df05-ee16-08b9-2b94-14c907a6ca73','Sucursal Punto Fijo',0,'ADMIN@TIENDASDAKA.COM','2024-05-22 12:04:15',NULL,NULL,22),(262,11,'c533df05-ee16-08b9-2b94-14c907a6ca73','Sucursal Maracaibo',0,'ADMIN@TIENDASDAKA.COM','2024-05-22 12:04:15',NULL,NULL,14),(263,11,'c533df05-ee16-08b9-2b94-14c907a6ca73','Agencia San Diego',0,'ADMIN@TIENDASDAKA.COM','2024-05-22 12:04:15',NULL,NULL,23),(264,11,'c533df05-ee16-08b9-2b94-14c907a6ca73','Agencia Valencia',0,'ADMIN@TIENDASDAKA.COM','2024-05-22 12:04:15',NULL,NULL,24),(265,11,'c533df05-ee16-08b9-2b94-14c907a6ca73','Sucursal San Cristobal',0,'ADMIN@TIENDASDAKA.COM','2024-05-22 12:04:15',NULL,NULL,25),(266,11,'c533df05-ee16-08b9-2b94-14c907a6ca73','Sucursal San Felipe',0,'ADMIN@TIENDASDAKA.COM','2024-05-22 12:04:15',NULL,NULL,26),(267,11,'c533df05-ee16-08b9-2b94-14c907a6ca73','Sucursal Valle La Pascua',0,'ADMIN@TIENDASDAKA.COM','2024-05-22 12:04:15',NULL,NULL,27),(268,11,'c533df05-ee16-08b9-2b94-14c907a6ca73','Sucursal San Martin',0,'ADMIN@TIENDASDAKA.COM','2024-05-22 12:04:15',NULL,NULL,28),(269,11,'c533df05-ee16-08b9-2b94-14c907a6ca73','Sucursal San Bernardino',0,'ADMIN@TIENDASDAKA.COM','2024-05-22 12:04:15',NULL,NULL,29),(270,11,'c533df05-ee16-08b9-2b94-14c907a6ca73','Sucursal Carrizal',0,'ADMIN@TIENDASDAKA.COM','2024-05-22 12:04:15',NULL,NULL,5),(271,11,'c533df05-ee16-08b9-2b94-14c907a6ca73','Agencia Centro Valencia',0,'ADMIN@TIENDASDAKA.COM','2024-05-22 12:04:15',NULL,NULL,6),(272,11,'c533df05-ee16-08b9-2b94-14c907a6ca73','Sucursal Chacao',0,'ADMIN@TIENDASDAKA.COM','2024-05-22 12:04:15',NULL,NULL,7),(273,11,'c533df05-ee16-08b9-2b94-14c907a6ca73','Sucursal El Paraiso',0,'ADMIN@TIENDASDAKA.COM','2024-05-22 12:04:15',NULL,NULL,8),(274,11,'c533df05-ee16-08b9-2b94-14c907a6ca73','Sucursal El Recreo',0,'ADMIN@TIENDASDAKA.COM','2024-05-22 12:04:15',NULL,NULL,9),(275,11,'c533df05-ee16-08b9-2b94-14c907a6ca73','Agencia Guacara',0,'ADMIN@TIENDASDAKA.COM','2024-05-22 12:04:15',NULL,NULL,11),(276,11,'c533df05-ee16-08b9-2b94-14c907a6ca73','Sucursal El Tigre',0,'ADMIN@TIENDASDAKA.COM','2024-05-22 12:04:15',NULL,NULL,10),(277,11,'c533df05-ee16-08b9-2b94-14c907a6ca73','Sucursal Lechería',0,'ADMIN@TIENDASDAKA.COM','2024-05-22 12:04:15',NULL,NULL,13),(278,11,'c533df05-ee16-08b9-2b94-14c907a6ca73','Sucursal La Trinidad',0,'ADMIN@TIENDASDAKA.COM','2024-05-22 12:04:15','ADMIN@TIENDASDAKA.COM','2024-05-22 09:01:52',12),(279,12,'24edeefc-d6b3-03a7-2d4e-404d540455c0','monitor',0,'AN.GARCIA@TIENDASDAKA.COM','2024-05-22 12:46:33',NULL,NULL,0),(280,12,'24edeefc-d6b3-03a7-2d4e-404d540455c0','Mouse',0,'AN.GARCIA@TIENDASDAKA.COM','2024-05-22 12:46:34',NULL,NULL,1),(281,12,'24edeefc-d6b3-03a7-2d4e-404d540455c0','Teclado',0,'AN.GARCIA@TIENDASDAKA.COM','2024-05-22 12:46:40',NULL,NULL,2);
/*!40000 ALTER TABLE `answer_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth`
--

DROP TABLE IF EXISTS `auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth` (
  `Id` int NOT NULL,
  `Usuario` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `UsrCrea` varchar(50) DEFAULT NULL,
  `FecCrea` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UsrAct` varchar(50) DEFAULT NULL,
  `FecAct` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth`
--

LOCK TABLES `auth` WRITE;
/*!40000 ALTER TABLE `auth` DISABLE KEYS */;
INSERT INTO `auth` VALUES (1,'admin@tiendasdaka.com','$2b$05$hv7NaCZV1lBkEUZEhWe6Du5s8FZIDWpnutE.oJyX8ehasIVU.G12G','Admin','2024-03-26 15:50:19','administrador@tiendasdaka.com','2024-04-02 20:07:51'),(22,'an.garcia@tiendasdaka.com','$2b$05$rB7E650cCxzdTESK7lQ7RuYV8k7HbkJ1H.gue.Kn1QejOFQR5BKRm','admin@tiendasdaka.com','2024-05-03 12:18:30','admin@tiendasdaka.com','2024-05-03 18:40:10');
/*!40000 ALTER TABLE `auth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `NameCompany` varchar(100) DEFAULT NULL,
  `IdCompany` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (1,'DAKA C.A','TD');
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departments` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `IdEmpresa` varchar(4) DEFAULT NULL,
  `IdDepartments` varchar(16) DEFAULT NULL,
  `NameDepartments` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (1,'TD','ADCP','Dpto. Cuenta por Pagar'),(2,'TD','ADTB','Dpto. Contabilidad'),(3,'TD','AFAD','Gerencia Administracion'),(4,'TD','AFCC','Gerencia Compras Nacionales'),(5,'TD','AFFE','Gerencia Tesoreria'),(6,'TD','AUSR','Dpto. Auditoria '),(7,'TD','CCCN','Dpto. Compras Nacionales'),(8,'TD','CCTR','Dpto. Contrataciones'),(9,'TD','CDAT','Dpto. Administracion CD'),(10,'TD','CDHU','Dpto. Higiene  y Seguridad Ind'),(11,'TD','CDLT','Dpto. Logistica e Inventario C'),(12,'TD','CDLV','Dpto. Logistica Inversa CD'),(13,'TD','CDNU','Dpto. Gestion Humana CD'),(14,'TD','CDPU','Dpto. Planta Fisica CD'),(15,'TD','CDSV','Dpto. Seguridad CD'),(16,'TD','CDTU','Dpto. Tecnologia CD'),(17,'TD','CFSF','Gerencia Seguridad '),(18,'TD','CGSG','Gerencia Control Gestion'),(19,'TD','CIIN','Gerencia Compras Internacional'),(20,'TD','CJLE','Dpto. Legal'),(21,'TD','CMME','Gerencia Mercadeo'),(22,'TD','CMPL','Gerencia Planificacion Lineas'),(23,'TD','CMVC','Gerencia Ventas Corporativas'),(24,'TD','CMVE','Gerencia Nacional de Ventas'),(25,'TD','COAU','Gerencia Auditoria Interna'),(26,'TD','DJCJ','Gerencia Consultoria Juridica'),(27,'TD','FEEG','Dpto. Egresos'),(28,'TD','FEIG','Dpto. Ingresos'),(29,'TD','GHSH','Gerencia Talento Humano'),(30,'TD','GISA','Dpto. Infraestructura'),(31,'TD','GISE','Dpto. Servicios Generales'),(32,'TD','GTAL','Dpto. Almacenaje'),(33,'TD','GTAT','Dpto. Administracion Tienda'),(34,'TD','GTGV','Gerencia Ventas'),(35,'TD','GTHU','Dpto. Higiene  y Seguridad Ind'),(36,'TD','GTLT','Dpto. Logistica e Inventario T'),(37,'TD','GTNU','Dpto. Gestion Humana Tienda'),(38,'TD','GTPU','Dpto. Planta Fisica Tienda'),(39,'TD','GTSU','Dpto. Servicio Post Venta Tien'),(40,'TD','GTSV','Dpto. Seguridad Tienda'),(41,'TD','GTTU','Dpto. Tecnologia Tienda'),(42,'TD','GVVT','Dpto. Ventas Tienda'),(43,'TD','INAD','Dpto. Carga Internacional'),(44,'TD','INFC','Dpto. Finanzas y Contabilidad '),(45,'TD','INGI','Gerencia Infraestructura'),(46,'TD','INPC','Dpto. Costeo Productos '),(47,'TD','INPI','Dpto. Compras Internacionales '),(48,'TD','JDAF','Direccion Administracion y Fin'),(49,'TD','JDCF','Direccion Seguridad'),(50,'TD','JDCG','Direccion Control Gestion'),(51,'TD','JDCI','Direccion Compras  y Finanzas '),(52,'TD','JDCM','Direccion Comercializacion '),(53,'TD','JDCO','Direccion Contraloria '),(54,'TD','JDDJ','Direccion Consultoria Juridica'),(55,'TD','JDGH','Direccion Gestion Humana '),(56,'TD','JDIN','Direccion Infraestructura'),(57,'TD','JDOP','Direccion Operaciones'),(58,'TD','CDDGSE','SEGURIDAD'),(59,'TD','CDOPLI','LOGISTICA E INVENTARIO'),(60,'TD','CDCMVE','VENTAS'),(61,'TD','TCST','Gerencia Proyectos Funcionales'),(62,'TD','STSW','Departamento Software E.R.P'),(63,'TD','STPO','Departamento Proyectos en Nube'),(64,'TD','DVDG','*INVALIDO* DIRECCION GENERAL'),(65,'TD','DVDGSE','*INVALIDO* SEGURIDAD INTERNA'),(66,'TD','JDMA','Direccion Marketing'),(67,'TD','GHGN','Gerencia Compensación y Protec'),(68,'TD','SHBS','Dpto. Bienestar Corporativo'),(69,'TD','OPAB','Gerencia de Avance'),(70,'TD','NENG','Gerencia Planif Estrategica de'),(71,'TD','TDIR','Gcia de Intelig de Negocios y '),(72,'TD','CMGM','Gerencia de Comercializacion'),(73,'TD','GVMY','Ventas al Mayor TI'),(74,'TD','PFGP','Dpto. de Productos'),(75,'TD','STDN','Dpto. Servicio Tecnico'),(76,'TD','TDSS','Gerencia de Desarrollo de Soft'),(77,'TD','CMPF','Gerencia de Productos'),(78,'TD','CMDD','Gerencia de Planificacion y De'),(79,'TD','DDPD','Dpto de Planificacion y Demand'),(80,'TD','OPST','Gerencia Nacional De Servicio '),(81,'TD','OPLE','Gerencia De Logistica e Invent'),(82,'TD','GRSK','DPTO. SHAKE'),(83,'TD','JDTC','Direccion de Tecnologia'),(84,'TD','JDTD','Direccion Tiendas'),(85,'TD','LICS','Dpto. Control Suministro'),(86,'TD','LISA','Dpto. Logistica e Inventario'),(87,'TD','MEDS','Dpto. Diseño Grafico'),(88,'TD','MERS','Dpto. Redes Sociales'),(89,'TD','METV','Dpto. Marketing'),(90,'TD','OPCD','Gerencia Distribucion'),(91,'TD','OPLI','Gerencia Operaciones'),(92,'TD','OPPV','Gerencia Servicio Post Venta'),(93,'TD','PEPP','Dpto. Planificacion y Presupue'),(94,'TD','PLLC','Dpto. Planificacion Lineas'),(95,'TD','PRJD','Junta Directiva '),(96,'TD','PRPR','Presidencia'),(97,'TD','PRSP','Staff Presidencia '),(98,'TD','PVSA','Dpto. Servicio Post Venta'),(99,'TD','SFSA','Dpto. Seguridad'),(100,'TD','SFSR','Dpto.  Seguridad Sede Regional'),(101,'TD','SGES','Dpto. Estandarizacion'),(102,'TD','SGPY','Dpto. Proyectos '),(103,'TD','SHHS','Dpto. Higiene y Seguridad Indu'),(104,'TD','SHNO','Dpto. Compensación'),(105,'TD','SHPA','Dpto. Pasantia'),(106,'TD','SHPS','Dpto. Psicologia Ocupacional'),(107,'TD','SHSL','Dpto. Seleccion y Capacitacion'),(108,'TD','SPFI','Dpto. Soporte Financiero '),(109,'TD','SPPT','Dpto. Protocolo '),(110,'TD','TCTI','Gerencia Proyectos de Infraest'),(111,'TD','TDGT','Gerencia Tienda'),(112,'TD','TDRT','Gerencia Regional Operativo Ti'),(113,'TD','TDRV','Gerencia Regional Ventas'),(114,'TD','TIIF','Dpto. Infraestructura y Redes'),(115,'TD','TISS','Dpto. Soporte '),(116,'TD','TIST','Dpto. Software'),(117,'TD','VCVM','Dpto. Ventas Corporativas'),(118,'TD','VECE','Dpto. Ventas Express'),(119,'TD','VEIV','Dpto. Planificacion Ventas '),(120,'TD','PRSP08','ASISTENTE DE JUNTA DIRECTIVA'),(121,'TD','ADLS','Dpto. Logistica y Suministro '),(122,'TD','GMTM','Dpto. Trade Marketing'),(123,'TD','GMSM','Dpto. Redes Sociales'),(124,'TD','GMON','Dpto.Ventas Express'),(125,'TD','CGMC','Dpto. Gestion De Calidad'),(126,'TD','CDDT','Dpto. de Almacen Digital'),(127,'TD','DDTH','Desarrollo'),(128,'TD','CIGL','Gerencia compras Linea Casa y '),(129,'TD','CCVI03','Analista de Servicios de Trans'),(130,'TD','TCGI','Gerencia de Infraestructura'),(131,'TD','GISS','Dpto. de Soporte'),(132,'TD','GIIF','Dpto. de Infraestructura y Tel'),(133,'TD','SHSO','Dpto. Salud Ocupacional'),(134,'TD','GICE','Dpto. de Cableado Estructurado'),(135,'TD','TCGF','Gerencia de Proyectos Funciona'),(136,'TD','MAGM','Gerencia Mercadeo'),(137,'TD','GFSW','Dpto. de Desarrollo TI'),(138,'TD','ADPP','Dpto. Planificacion y Presupue'),(139,'TD','FECR','Dpto. Cuentas por Cobrar'),(140,'TD','OPRH','Gerencia Gestión Humana CD'),(141,'TD','JDCA','Dir. Calidad y Planificacion E'),(142,'TD','GMMK','Dpto. Proyectos de Mercadeo'),(143,'TD','GFPO','Dpto. de Proyectos Funcionales'),(144,'TD','ADCB','Dpto. Conciliacion'),(145,'TD','GHGC','Gerencia de Proteccion y Compe'),(146,'TD','GCHS','Dpto. de Higiene y Seguridad I'),(147,'TD','CCVI','Dpto. Serv. Transporte y Viati'),(148,'TD','AFIM','Gerencia de Impuesto'),(149,'TD','CIPC','Gerencia de Costos'),(150,'TD','PCCT','Dpto. Costeo de Productos'),(151,'TD','GCNO','Dpto. de Compensacion'),(152,'TD','GPDP','Dpto. Comercializacion'),(153,'TD','CAGG','Gerencia Gestion de Calidad '),(154,'TD','CACG','Gerencia Control de Gestion'),(155,'TD','CGCT','Dpto. Control de Gestion'),(156,'TD','GGMC','Dpto. Gestion de Calidad'),(157,'TD','GVTM','Dpto. Trade Marketing Tienda'),(158,'TD','IMIP','Dpto. Impuestos'),(159,'TD','MAGM02','Subgerente Trade Marketing'),(160,'TD','CMGP','Gerencia de Comercializacion'),(161,'TD','GHRL','Dpto. Relaciones Laborales'),(162,'TD','ACCL','Dpto. de Administracion de Ven'),(163,'TD','JDEN','Dir. Planif Estrategica de Neg'),(164,'TD','GMXB','Dpto de Experiencia de Tienda'),(165,'TD','AFCZ','Gerencia de Credito y Cobranza'),(166,'TD','CMMY','Gerencia de Ventas al Mayor');
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `libraryanswers`
--

DROP TABLE IF EXISTS `libraryanswers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `libraryanswers` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `IdQuestion` varchar(250) NOT NULL,
  `TextoRespuesta` varchar(250) NOT NULL,
  `IndexTarget` int DEFAULT NULL,
  `UsrCrea` varchar(50) DEFAULT NULL,
  `FecCrea` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UsrAct` varchar(50) DEFAULT NULL,
  `FecAct` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libraryanswers`
--

LOCK TABLES `libraryanswers` WRITE;
/*!40000 ALTER TABLE `libraryanswers` DISABLE KEYS */;
INSERT INTO `libraryanswers` VALUES (1,'b2322978-2a65-0869-1d0b-e3ff694b3522','Persona a Persona',0,'ADMIN@TIENDASDAKA.COM','2024-05-22 01:23:35',NULL,NULL),(2,'b2322978-2a65-0869-1d0b-e3ff694b3522','Persona a comercial',1,'ADMIN@TIENDASDAKA.COM','2024-05-22 01:23:35',NULL,NULL),(3,'b2322978-2a65-0869-1d0b-e3ff694b3522','Comercio a persona',2,'ADMIN@TIENDASDAKA.COM','2024-05-22 01:23:35',NULL,NULL),(12,'fd64332f-33e9-0b75-36ca-3461ce7956f3','Sucursal Acarigua-Araure',0,'ADMIN@TIENDASDAKA.COM','2024-05-22 12:03:10','ADMIN@TIENDASDAKA.COM','2024-05-22 09:04:14'),(13,'fd64332f-33e9-0b75-36ca-3461ce7956f3','Sucursal Maracaibo',14,'ADMIN@TIENDASDAKA.COM','2024-05-22 12:03:10',NULL,NULL),(14,'fd64332f-33e9-0b75-36ca-3461ce7956f3','Sucursal Maracay',15,'ADMIN@TIENDASDAKA.COM','2024-05-22 12:03:10',NULL,NULL),(15,'fd64332f-33e9-0b75-36ca-3461ce7956f3','Sucursal Barquisimeto',1,'ADMIN@TIENDASDAKA.COM','2024-05-22 12:03:10',NULL,NULL),(16,'fd64332f-33e9-0b75-36ca-3461ce7956f3','Sucursal Maracay Centro',16,'ADMIN@TIENDASDAKA.COM','2024-05-22 12:03:10',NULL,NULL),(17,'fd64332f-33e9-0b75-36ca-3461ce7956f3','Sucursal Maturin',17,'ADMIN@TIENDASDAKA.COM','2024-05-22 12:03:10',NULL,NULL),(18,'fd64332f-33e9-0b75-36ca-3461ce7956f3','Sucursal Barquisimeto Centro',2,'ADMIN@TIENDASDAKA.COM','2024-05-22 12:03:10',NULL,NULL),(19,'fd64332f-33e9-0b75-36ca-3461ce7956f3','Sucursal Porlamar',18,'ADMIN@TIENDASDAKA.COM','2024-05-22 12:03:10',NULL,NULL),(20,'fd64332f-33e9-0b75-36ca-3461ce7956f3','Sucursal Bello Monte',3,'ADMIN@TIENDASDAKA.COM','2024-05-22 12:03:10',NULL,NULL),(21,'fd64332f-33e9-0b75-36ca-3461ce7956f3','Agencia Puerto Cabello',19,'ADMIN@TIENDASDAKA.COM','2024-05-22 12:03:10',NULL,NULL),(22,'fd64332f-33e9-0b75-36ca-3461ce7956f3','Sucursal Puerto La Cruz Centro',20,'ADMIN@TIENDASDAKA.COM','2024-05-22 12:03:10',NULL,NULL),(23,'fd64332f-33e9-0b75-36ca-3461ce7956f3','Sucursal Puerto Ordaz',21,'ADMIN@TIENDASDAKA.COM','2024-05-22 12:03:10',NULL,NULL),(24,'fd64332f-33e9-0b75-36ca-3461ce7956f3','Sucursal Boleita',4,'ADMIN@TIENDASDAKA.COM','2024-05-22 12:03:10',NULL,NULL),(25,'fd64332f-33e9-0b75-36ca-3461ce7956f3','Sucursal Punto Fijo',22,'ADMIN@TIENDASDAKA.COM','2024-05-22 12:03:10',NULL,NULL),(26,'fd64332f-33e9-0b75-36ca-3461ce7956f3','Agencia San Diego',23,'ADMIN@TIENDASDAKA.COM','2024-05-22 12:03:10',NULL,NULL),(27,'fd64332f-33e9-0b75-36ca-3461ce7956f3','Agencia Valencia',24,'ADMIN@TIENDASDAKA.COM','2024-05-22 12:03:10',NULL,NULL),(28,'fd64332f-33e9-0b75-36ca-3461ce7956f3','Sucursal San Cristobal',25,'ADMIN@TIENDASDAKA.COM','2024-05-22 12:03:10',NULL,NULL),(29,'fd64332f-33e9-0b75-36ca-3461ce7956f3','Sucursal San Felipe',26,'ADMIN@TIENDASDAKA.COM','2024-05-22 12:03:10',NULL,NULL),(30,'fd64332f-33e9-0b75-36ca-3461ce7956f3','Sucursal Valle La Pascua',27,'ADMIN@TIENDASDAKA.COM','2024-05-22 12:03:10',NULL,NULL),(31,'fd64332f-33e9-0b75-36ca-3461ce7956f3','Sucursal San Martin',28,'ADMIN@TIENDASDAKA.COM','2024-05-22 12:03:10',NULL,NULL),(32,'fd64332f-33e9-0b75-36ca-3461ce7956f3','Sucursal San Bernardino',29,'ADMIN@TIENDASDAKA.COM','2024-05-22 12:03:10',NULL,NULL),(33,'fd64332f-33e9-0b75-36ca-3461ce7956f3','Sucursal Carrizal',5,'ADMIN@TIENDASDAKA.COM','2024-05-22 12:03:10',NULL,NULL),(34,'fd64332f-33e9-0b75-36ca-3461ce7956f3','Agencia Centro Valencia',6,'ADMIN@TIENDASDAKA.COM','2024-05-22 12:03:10',NULL,NULL),(35,'fd64332f-33e9-0b75-36ca-3461ce7956f3','Sucursal Chacao',7,'ADMIN@TIENDASDAKA.COM','2024-05-22 12:03:10',NULL,NULL),(36,'fd64332f-33e9-0b75-36ca-3461ce7956f3','Sucursal El Paraiso',8,'ADMIN@TIENDASDAKA.COM','2024-05-22 12:03:10',NULL,NULL),(37,'fd64332f-33e9-0b75-36ca-3461ce7956f3','Sucursal El Recreo',9,'ADMIN@TIENDASDAKA.COM','2024-05-22 12:03:10',NULL,NULL),(38,'fd64332f-33e9-0b75-36ca-3461ce7956f3','Agencia Guacara',11,'ADMIN@TIENDASDAKA.COM','2024-05-22 12:03:10',NULL,NULL),(39,'fd64332f-33e9-0b75-36ca-3461ce7956f3','Sucursal El Tigre',10,'ADMIN@TIENDASDAKA.COM','2024-05-22 12:03:10',NULL,NULL),(40,'fd64332f-33e9-0b75-36ca-3461ce7956f3','Sucursal Lechería',13,'ADMIN@TIENDASDAKA.COM','2024-05-22 12:03:10',NULL,NULL),(41,'fd64332f-33e9-0b75-36ca-3461ce7956f3','Sucursal La Trinidad',12,'ADMIN@TIENDASDAKA.COM','2024-05-22 12:03:10','ADMIN@TIENDASDAKA.COM','2024-05-22 09:01:52'),(42,'24edeefc-d6b3-03a7-2d4e-404d540455c0','Mouse',1,'AN.GARCIA@TIENDASDAKA.COM','2024-05-22 12:46:47',NULL,NULL),(43,'24edeefc-d6b3-03a7-2d4e-404d540455c0','monitor',0,'AN.GARCIA@TIENDASDAKA.COM','2024-05-22 12:46:47',NULL,NULL),(44,'24edeefc-d6b3-03a7-2d4e-404d540455c0','Teclado',2,'AN.GARCIA@TIENDASDAKA.COM','2024-05-22 12:46:47',NULL,NULL);
/*!40000 ALTER TABLE `libraryanswers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `libraryquestions`
--

DROP TABLE IF EXISTS `libraryquestions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `libraryquestions` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `IdQuestion` varchar(250) NOT NULL,
  `TextoPregunta` varchar(250) NOT NULL,
  `IdTipreg` int DEFAULT NULL,
  `IdDepartments` varchar(16) DEFAULT NULL,
  `UsrCrea` varchar(50) DEFAULT NULL,
  `FecCrea` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UsrAct` varchar(50) DEFAULT NULL,
  `FecAct` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libraryquestions`
--

LOCK TABLES `libraryquestions` WRITE;
/*!40000 ALTER TABLE `libraryquestions` DISABLE KEYS */;
INSERT INTO `libraryquestions` VALUES (1,'b2322978-2a65-0869-1d0b-e3ff694b3522','¿Que significa las siglas C2P?',1,'0','ADMIN@TIENDASDAKA.COM','2024-05-22 01:23:35',NULL,NULL),(3,'fd64332f-33e9-0b75-36ca-3461ce7956f3','Sucursal',1,'0','ADMIN@TIENDASDAKA.COM','2024-05-22 12:03:10',NULL,NULL),(4,'24edeefc-d6b3-03a7-2d4e-404d540455c0','QUE ES UN PC',1,'CGSG','AN.GARCIA@TIENDASDAKA.COM','2024-05-22 12:46:47',NULL,NULL);
/*!40000 ALTER TABLE `libraryquestions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logic`
--

DROP TABLE IF EXISTS `logic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logic` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `IdEncuesta` int DEFAULT NULL,
  `IdQuestion` int DEFAULT NULL,
  `IdAnswerOption` int DEFAULT NULL,
  `JumQuestion` int DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logic`
--

LOCK TABLES `logic` WRITE;
/*!40000 ALTER TABLE `logic` DISABLE KEYS */;
/*!40000 ALTER TABLE `logic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question_type`
--

DROP TABLE IF EXISTS `question_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `question_type` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) DEFAULT NULL,
  `Type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question_type`
--

LOCK TABLES `question_type` WRITE;
/*!40000 ALTER TABLE `question_type` DISABLE KEYS */;
INSERT INTO `question_type` VALUES (1,'Seleccionar una','radio'),(2,'Seleccionar varias','checkbox'),(3,'Menu desplegable','select'),(4,'Texto de una sola fila','text'),(5,'Email','email'),(6,'Informacion de contacto','text'),(7,'Selector de archivos','file');
/*!40000 ALTER TABLE `question_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questions` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `IdEncuesta` int NOT NULL,
  `IdQuestion` varchar(250) NOT NULL,
  `TextoPregunta` varchar(250) NOT NULL,
  `IdTipreg` int DEFAULT NULL,
  `Required` tinyint DEFAULT '0',
  `ShowResults` tinyint DEFAULT '0',
  `TypeEvaluation` tinyint DEFAULT '0',
  `InLibrary` tinyint DEFAULT '0',
  `IdQuestionInLibrary` varchar(250) DEFAULT NULL,
  `UsrCrea` varchar(50) DEFAULT NULL,
  `FecCrea` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UsrAct` varchar(50) DEFAULT NULL,
  `FecAct` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`,`FecCrea`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (40,10,'0bea05ef-5f9a-0287-14bb-44e28ec62222','Indique su correo electronico',5,1,0,0,0,NULL,'ADMIN@TIENDASDAKA.COM','2024-05-22 11:57:28','ADMIN@TIENDASDAKA.COM','2024-05-22 07:59:59'),(41,10,'fd8d662d-003f-0b3f-374a-4909b63bffed','Tipo de Evaluación',1,1,0,0,0,NULL,'ADMIN@TIENDASDAKA.COM','2024-05-22 11:58:02','ADMIN@TIENDASDAKA.COM','2024-05-22 08:00:01'),(42,10,'fd64332f-33e9-0b75-36ca-3461ce7956f3','Sucursal',1,1,0,0,1,'fd64332f-33e9-0b75-36ca-3461ce7956f3','ADMIN@TIENDASDAKA.COM','2024-05-22 11:58:38','ADMIN@TIENDASDAKA.COM','2024-05-22 08:03:10'),(43,11,'c533df05-ee16-08b9-2b94-14c907a6ca73','Sucursal',1,0,0,0,0,'fd64332f-33e9-0b75-36ca-3461ce7956f3','ADMIN@TIENDASDAKA.COM','2024-05-22 12:04:15',NULL,NULL),(44,12,'24edeefc-d6b3-03a7-2d4e-404d540455c0','QUE ES UN PC',1,0,0,0,1,'24edeefc-d6b3-03a7-2d4e-404d540455c0','AN.GARCIA@TIENDASDAKA.COM','2024-05-22 12:46:29','AN.GARCIA@TIENDASDAKA.COM','2024-05-22 08:46:47');
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `response`
--

DROP TABLE IF EXISTS `response`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `response` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `IdEncuesta` int NOT NULL,
  `IdQuestion` varchar(250) NOT NULL,
  `IdAnswer` varchar(250) DEFAULT NULL,
  `TextoRespuesta` varchar(250) DEFAULT NULL,
  `FechaRespuesta` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `TipoRespuesta` varchar(50) DEFAULT NULL,
  `Score` int DEFAULT NULL,
  `ScoreQuestion` int DEFAULT NULL,
  `ReqIpClient` varchar(100) DEFAULT NULL,
  `IdUserResponse` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `INDEX_ENCUESTA` (`IdEncuesta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `response`
--

LOCK TABLES `response` WRITE;
/*!40000 ALTER TABLE `response` DISABLE KEYS */;
/*!40000 ALTER TABLE `response` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `survey`
--

DROP TABLE IF EXISTS `survey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `survey` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  `IdCompany` varchar(4) DEFAULT NULL,
  `IdDepartments` varchar(16) DEFAULT NULL,
  `Encabezado` varchar(250) DEFAULT NULL,
  `Estado` int NOT NULL,
  `Respuestas` int DEFAULT '0',
  `TypeSurvey` varchar(100) DEFAULT 'H',
  `UsrCrea` varchar(50) DEFAULT NULL,
  `FecCrea` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UsrAct` varchar(50) DEFAULT NULL,
  `FecAct` datetime DEFAULT NULL,
  `UrlSurvey` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='ALMACENA LOS NOMBRES DE LAS ENCUESTAS';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `survey`
--

LOCK TABLES `survey` WRITE;
/*!40000 ALTER TABLE `survey` DISABLE KEYS */;
INSERT INTO `survey` VALUES (10,'INDICADOR DE EVALUACIONES','0','0','e registrarán el nombre, la foto y el correo electrónico asociados con tu Cuenta de Google cuando subas archivos y envíes este for',1,0,'H','ADMIN@TIENDASDAKA.COM','2024-05-22 11:57:02','ADMIN@TIENDASDAKA.COM','2024-05-22 07:57:07','1716379027312'),(11,'ENCUESTA DE PRUEBA','0','0','PROBANDO LA LIBRERIA',0,0,'H','ADMIN@TIENDASDAKA.COM','2024-05-22 12:04:00','ADMIN@TIENDASDAKA.COM','2024-05-22 08:04:04','1716379444204'),(12,'ENCUESTA DE TECNOLOGIA','TD','CGSG','Esto es una prueba',0,0,'H','AN.GARCIA@TIENDASDAKA.COM','2024-05-22 12:06:19','AN.GARCIA@TIENDASDAKA.COM','2024-05-22 08:06:20','1716379580883');
/*!40000 ALTER TABLE `survey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) DEFAULT NULL,
  `IdCompany` varchar(4) DEFAULT NULL,
  `IdDepartments` varchar(16) DEFAULT NULL,
  `Activo` int DEFAULT NULL,
  `UsrCrea` varchar(50) DEFAULT NULL,
  `FecCrea` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UsrAct` varchar(50) DEFAULT NULL,
  `FecAct` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'administrador','0','0',1,'Admin','2024-03-26 15:50:19','administrador@tiendasdaka.com','2024-04-02 16:07:51'),(22,'Anderson Garcia','TD','CGSG',1,'admin@tiendasdaka.com','2024-05-03 12:18:30','admin@tiendasdaka.com','2024-05-03 14:40:10');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uuid_session`
--

DROP TABLE IF EXISTS `uuid_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `uuid_session` (
  `Uuid` varchar(250) NOT NULL,
  `Usuario` varchar(100) NOT NULL,
  `Active` tinyint(1) DEFAULT NULL,
  `Date` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uuid_session`
--

LOCK TABLES `uuid_session` WRITE;
/*!40000 ALTER TABLE `uuid_session` DISABLE KEYS */;
INSERT INTO `uuid_session` VALUES ('526232fd-b05e-0638-25f9-eb173091e5b7','admin@tiendasdaka.com',1,'2024-05-17 13:51:16'),('9a761f29-534e-0e82-115d-5c2367c22e92','admin@tiendasdaka.com',1,'2024-05-17 14:40:41'),('b67fe5e7-07cb-046b-06da-97cfcabcd0c1','admin@tiendasdaka.com',1,'2024-05-22 11:55:52'),('485996da-54fd-06c7-11af-98f5968702f9','an.garcia@tiendasdaka.com',1,'2024-05-22 12:05:14');
/*!40000 ALTER TABLE `uuid_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-22  9:10:45
