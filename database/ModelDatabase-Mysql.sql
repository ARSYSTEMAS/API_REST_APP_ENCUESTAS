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
  PRIMARY KEY (`Id`),
  KEY `INDEX` (`IdEncuesta`),
  KEY `INDEX_QUESTION` (`IdQuestion`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answer_options`
--

LOCK TABLES `answer_options` WRITE;
/*!40000 ALTER TABLE `answer_options` DISABLE KEYS */;
INSERT INTO `answer_options` VALUES (1,1,'3d878a30-1b01-0ec4-1bea-349955aec277',NULL,0,'ADMIN@TIENDASDAKA.COM','2024-05-16 16:33:45',NULL,NULL,0),(2,1,'fc8721e0-8447-06d5-113b-02bd1d8b78e6','Evaluacion de tienda',0,'ADMIN@TIENDASDAKA.COM','2024-05-16 16:33:58',NULL,NULL,0),(3,1,'fc8721e0-8447-06d5-113b-02bd1d8b78e6','Evaluacion de Capacitacion',0,'ADMIN@TIENDASDAKA.COM','2024-05-16 16:34:07',NULL,NULL,1),(4,1,'fc8721e0-8447-06d5-113b-02bd1d8b78e6','Evaluacion de Piso de ventas Digital',0,'ADMIN@TIENDASDAKA.COM','2024-05-16 16:34:13',NULL,NULL,2),(5,1,'fc8721e0-8447-06d5-113b-02bd1d8b78e6','Evaluacion de piso de Ventas Hogar',0,'ADMIN@TIENDASDAKA.COM','2024-05-16 16:34:20',NULL,NULL,3),(6,1,'fc8721e0-8447-06d5-113b-02bd1d8b78e6','Evaluacion de Piso de ventas integral',0,'ADMIN@TIENDASDAKA.COM','2024-05-16 16:34:24',NULL,NULL,4),(7,1,'fc8721e0-8447-06d5-113b-02bd1d8b78e6','Check List 5s',0,'ADMIN@TIENDASDAKA.COM','2024-05-16 16:34:29',NULL,NULL,5),(8,1,'f568ffe6-5d7e-07ef-1825-d2e5c820fd6e','Sucursal Acarigua-Araure',0,'ADMIN@TIENDASDAKA.COM','2024-05-16 16:34:54',NULL,NULL,0),(9,1,'f568ffe6-5d7e-07ef-1825-d2e5c820fd6e','Sucursal Barquisimeto',0,'ADMIN@TIENDASDAKA.COM','2024-05-16 16:34:56',NULL,NULL,1),(10,1,'f568ffe6-5d7e-07ef-1825-d2e5c820fd6e','Sucursal Barquisimeto Centro',0,'ADMIN@TIENDASDAKA.COM','2024-05-16 16:34:59',NULL,NULL,2),(11,1,'f568ffe6-5d7e-07ef-1825-d2e5c820fd6e','Sucursal Bello Monte',0,'ADMIN@TIENDASDAKA.COM','2024-05-16 16:35:01',NULL,NULL,3),(12,1,'f568ffe6-5d7e-07ef-1825-d2e5c820fd6e','Sucursal Boleita',0,'ADMIN@TIENDASDAKA.COM','2024-05-16 16:35:04',NULL,NULL,4),(13,1,'f568ffe6-5d7e-07ef-1825-d2e5c820fd6e','Sucursal Carrizal',0,'ADMIN@TIENDASDAKA.COM','2024-05-16 16:35:06',NULL,NULL,5),(14,1,'f568ffe6-5d7e-07ef-1825-d2e5c820fd6e','Agencia Centro Valencia',0,'ADMIN@TIENDASDAKA.COM','2024-05-16 16:35:09',NULL,NULL,6),(15,1,'f568ffe6-5d7e-07ef-1825-d2e5c820fd6e','Sucursal Chacao',0,'ADMIN@TIENDASDAKA.COM','2024-05-16 16:35:11',NULL,NULL,7),(16,1,'f568ffe6-5d7e-07ef-1825-d2e5c820fd6e','Sucursal El Paraiso',0,'ADMIN@TIENDASDAKA.COM','2024-05-16 16:35:14',NULL,NULL,8),(17,1,'f568ffe6-5d7e-07ef-1825-d2e5c820fd6e','Sucursal El Recreo',0,'ADMIN@TIENDASDAKA.COM','2024-05-16 16:35:15',NULL,NULL,9),(18,1,'f568ffe6-5d7e-07ef-1825-d2e5c820fd6e','Sucursal El Tigre',0,'ADMIN@TIENDASDAKA.COM','2024-05-16 16:35:17',NULL,NULL,10),(19,1,'f568ffe6-5d7e-07ef-1825-d2e5c820fd6e','Agencia Guacara',0,'ADMIN@TIENDASDAKA.COM','2024-05-16 16:35:20',NULL,NULL,11),(20,1,'1772630c-1f69-0236-1d81-d9f4cae5f027','Enero',0,'ADMIN@TIENDASDAKA.COM','2024-05-16 17:48:18',NULL,NULL,0),(21,1,'1772630c-1f69-0236-1d81-d9f4cae5f027','Febrero',0,'ADMIN@TIENDASDAKA.COM','2024-05-16 17:48:22',NULL,NULL,1),(22,1,'1772630c-1f69-0236-1d81-d9f4cae5f027','Marzo',0,'ADMIN@TIENDASDAKA.COM','2024-05-16 17:48:25',NULL,NULL,2),(23,1,'1772630c-1f69-0236-1d81-d9f4cae5f027','Abril',0,'ADMIN@TIENDASDAKA.COM','2024-05-16 17:48:29',NULL,NULL,3),(24,1,'1772630c-1f69-0236-1d81-d9f4cae5f027','Mayo',0,'ADMIN@TIENDASDAKA.COM','2024-05-16 17:48:34',NULL,NULL,4),(25,1,'1772630c-1f69-0236-1d81-d9f4cae5f027','Junio',0,'ADMIN@TIENDASDAKA.COM','2024-05-16 17:48:37',NULL,NULL,5),(26,1,'1772630c-1f69-0236-1d81-d9f4cae5f027','Julio',0,'ADMIN@TIENDASDAKA.COM','2024-05-16 17:48:41',NULL,NULL,6),(27,1,'1772630c-1f69-0236-1d81-d9f4cae5f027','Agosto',0,'ADMIN@TIENDASDAKA.COM','2024-05-16 17:48:44',NULL,NULL,7),(28,1,'1772630c-1f69-0236-1d81-d9f4cae5f027','Septiembre',0,'ADMIN@TIENDASDAKA.COM','2024-05-16 17:48:48',NULL,NULL,8),(29,1,'1772630c-1f69-0236-1d81-d9f4cae5f027','Octubre',0,'ADMIN@TIENDASDAKA.COM','2024-05-16 17:48:51',NULL,NULL,9),(30,1,'1772630c-1f69-0236-1d81-d9f4cae5f027','Noviembre',0,'ADMIN@TIENDASDAKA.COM','2024-05-16 17:48:55',NULL,NULL,10),(31,1,'1772630c-1f69-0236-1d81-d9f4cae5f027','Diciembre',0,'ADMIN@TIENDASDAKA.COM','2024-05-16 17:48:59',NULL,NULL,11),(32,1,'a0913e23-8e0c-08ad-34b4-e0945acc0a14','2023',0,'ADMIN@TIENDASDAKA.COM','2024-05-16 17:49:18',NULL,NULL,0),(33,1,'a0913e23-8e0c-08ad-34b4-e0945acc0a14','2024',0,'ADMIN@TIENDASDAKA.COM','2024-05-16 17:49:21',NULL,NULL,1),(34,1,'a0913e23-8e0c-08ad-34b4-e0945acc0a14','2025',0,'ADMIN@TIENDASDAKA.COM','2024-05-16 17:49:24',NULL,NULL,2),(35,1,'01c5a673-7772-06ff-0383-136d1336ce9b',NULL,0,'ADMIN@TIENDASDAKA.COM','2024-05-16 17:49:40',NULL,NULL,0),(36,1,'39793d78-57c4-085a-1030-5840cf6e487d',NULL,0,'ADMIN@TIENDASDAKA.COM','2024-05-16 17:50:03',NULL,NULL,0),(37,2,'2733fdd9-50fe-09ef-1b9e-ca5bd0596a5c',NULL,0,'ADMIN@TIENDASDAKA.COM','2024-05-16 18:20:37',NULL,NULL,0),(38,2,'3d23d7fe-134e-00a0-2e8e-e14923bd5378','Sucursal Acarigua-Araure',0,'ADMIN@TIENDASDAKA.COM','2024-05-16 18:21:01',NULL,NULL,0),(39,2,'3d23d7fe-134e-00a0-2e8e-e14923bd5378','Sucursal Barquisimeto',0,'ADMIN@TIENDASDAKA.COM','2024-05-16 18:21:04',NULL,NULL,1),(40,2,'3d23d7fe-134e-00a0-2e8e-e14923bd5378','Sucursal Barquisimeto Centro',0,'ADMIN@TIENDASDAKA.COM','2024-05-16 18:21:06',NULL,NULL,2),(41,2,'3d23d7fe-134e-00a0-2e8e-e14923bd5378','Sucursal Bello Monte',0,'ADMIN@TIENDASDAKA.COM','2024-05-16 18:21:09',NULL,NULL,3),(42,2,'3d23d7fe-134e-00a0-2e8e-e14923bd5378','Sucursal Boleita',0,'ADMIN@TIENDASDAKA.COM','2024-05-16 18:21:11',NULL,NULL,4),(43,2,'3d23d7fe-134e-00a0-2e8e-e14923bd5378','Sucursal Carrizal',0,'ADMIN@TIENDASDAKA.COM','2024-05-16 18:21:13',NULL,NULL,5),(44,2,'3d23d7fe-134e-00a0-2e8e-e14923bd5378','Agencia Centro Valencia',0,'ADMIN@TIENDASDAKA.COM','2024-05-16 18:21:15',NULL,NULL,6),(45,2,'3d23d7fe-134e-00a0-2e8e-e14923bd5378','Sucursal Chacao',0,'ADMIN@TIENDASDAKA.COM','2024-05-16 18:21:17',NULL,NULL,7),(46,2,'a2540498-2e68-0807-165a-0bf40fddd274',NULL,0,'ADMIN@TIENDASDAKA.COM','2024-05-16 18:21:32',NULL,NULL,0),(47,2,'0b5461b1-cc72-0c56-04da-988535c7c849',NULL,0,'ADMIN@TIENDASDAKA.COM','2024-05-16 18:21:51',NULL,NULL,0),(48,2,'b2322978-2a65-0869-1d0b-e3ff694b3522','Persona a Persona',0,'ADMIN@TIENDASDAKA.COM','2024-05-16 18:22:35',NULL,NULL,0),(49,2,'b2322978-2a65-0869-1d0b-e3ff694b3522','Persona a comercial',0,'ADMIN@TIENDASDAKA.COM','2024-05-16 18:22:46',NULL,NULL,1),(50,2,'b2322978-2a65-0869-1d0b-e3ff694b3522','Comercio a persona',20,'ADMIN@TIENDASDAKA.COM','2024-05-16 18:22:56','ADMIN@TIENDASDAKA.COM','2024-05-16 14:29:31',2),(51,2,'fcde9f7a-5aba-00f5-1e58-45a0702ae66d','Solo 1 forma de pago: pago movil',0,'ADMIN@TIENDASDAKA.COM','2024-05-16 18:23:19',NULL,NULL,0),(52,2,'fcde9f7a-5aba-00f5-1e58-45a0702ae66d','4 formas de pago: C2P, P2C, Zelle, Tarjeta',20,'ADMIN@TIENDASDAKA.COM','2024-05-16 18:23:27','ADMIN@TIENDASDAKA.COM','2024-05-16 14:29:41',1),(53,2,'fcde9f7a-5aba-00f5-1e58-45a0702ae66d','Solo 2 fromas de pago: Pago movil y Tarjeta',0,'ADMIN@TIENDASDAKA.COM','2024-05-16 18:23:34',NULL,NULL,2),(54,2,'e4d99d15-b39d-0def-151f-e430347c42c5','Si, mediante pago movil',0,'ADMIN@TIENDASDAKA.COM','2024-05-16 18:23:57',NULL,NULL,0),(55,2,'e4d99d15-b39d-0def-151f-e430347c42c5','Si, mediante el numero de secuencia del Voucher que imprime merchant',20,'ADMIN@TIENDASDAKA.COM','2024-05-16 18:24:04','ADMIN@TIENDASDAKA.COM','2024-05-16 14:29:51',1),(56,2,'e4d99d15-b39d-0def-151f-e430347c42c5','No, no se puede anular la forma de pago Tarjeta',0,'ADMIN@TIENDASDAKA.COM','2024-05-16 18:24:11',NULL,NULL,2),(57,2,'6bfa2dff-036d-0ae6-0757-fedac5fb50de','Si',0,'ADMIN@TIENDASDAKA.COM','2024-05-16 18:24:29',NULL,NULL,0),(58,2,'6bfa2dff-036d-0ae6-0757-fedac5fb50de','No, se reimprime la copia No Fiscal y entrengo la original para el delivery',20,'ADMIN@TIENDASDAKA.COM','2024-05-16 18:24:37','ADMIN@TIENDASDAKA.COM','2024-05-16 14:30:04',1),(59,2,'6bfa2dff-036d-0ae6-0757-fedac5fb50de','Debo entregarle al cliente solo el voucher de pago',0,'ADMIN@TIENDASDAKA.COM','2024-05-16 18:24:44',NULL,NULL,2),(60,2,'63343721-ad46-02ba-2fd3-1c2c72dfa42f','No',20,'ADMIN@TIENDASDAKA.COM','2024-05-16 18:25:04','ADMIN@TIENDASDAKA.COM','2024-05-16 14:30:14',0),(61,2,'63343721-ad46-02ba-2fd3-1c2c72dfa42f','Si',0,'ADMIN@TIENDASDAKA.COM','2024-05-16 18:25:07',NULL,NULL,1),(62,2,'8644f44d-a074-04ca-0e8d-6820ada3053c','Agradables',10,'ADMIN@TIENDASDAKA.COM','2024-05-16 21:01:52','ADMIN@TIENDASDAKA.COM','2024-05-16 22:38:24',0),(63,2,'8644f44d-a074-04ca-0e8d-6820ada3053c','Poco agradables',0,'ADMIN@TIENDASDAKA.COM','2024-05-16 21:01:54',NULL,NULL,1),(64,2,'8644f44d-a074-04ca-0e8d-6820ada3053c','Mal, fue descortés y descuidado en el trato',0,'ADMIN@TIENDASDAKA.COM','2024-05-16 21:01:57',NULL,NULL,2),(65,2,'66bcbea3-0f11-0a59-0e71-0a1d22fba7d5','Azul',0,'ADMIN@TIENDASDAKA.COM','2024-05-16 23:20:02',NULL,NULL,0),(66,2,'66bcbea3-0f11-0a59-0e71-0a1d22fba7d5','Amarillo',10,'ADMIN@TIENDASDAKA.COM','2024-05-16 23:20:09','ADMIN@TIENDASDAKA.COM','2024-05-16 22:38:34',1),(67,2,'66bcbea3-0f11-0a59-0e71-0a1d22fba7d5','Rojo',0,'ADMIN@TIENDASDAKA.COM','2024-05-16 23:20:13',NULL,NULL,2);
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
  `UsrCrea` varchar(50) DEFAULT NULL,
  `FecCrea` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UsrAct` varchar(50) DEFAULT NULL,
  `FecAct` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`,`FecCrea`),
  KEY `INDEX` (`IdEncuesta`) /*!80000 INVISIBLE */,
  KEY `PK_QUESTIONS001_idx` (`IdQuestion`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (1,1,'3d878a30-1b01-0ec4-1bea-349955aec277','Indique su correo electronico',5,1,0,0,'ADMIN@TIENDASDAKA.COM','2024-05-16 16:33:45','ADMIN@TIENDASDAKA.COM','2024-05-16 13:55:53'),(2,1,'fc8721e0-8447-06d5-113b-02bd1d8b78e6','Tipo de Evaluacion',3,1,0,0,'ADMIN@TIENDASDAKA.COM','2024-05-16 16:33:55','ADMIN@TIENDASDAKA.COM','2024-05-16 13:55:57'),(3,1,'f568ffe6-5d7e-07ef-1825-d2e5c820fd6e','Sucursal',3,1,0,0,'ADMIN@TIENDASDAKA.COM','2024-05-16 16:34:49','ADMIN@TIENDASDAKA.COM','2024-05-16 13:56:03'),(4,1,'1772630c-1f69-0236-1d81-d9f4cae5f027','Mes a Evaluar',3,1,0,0,'ADMIN@TIENDASDAKA.COM','2024-05-16 17:48:14','ADMIN@TIENDASDAKA.COM','2024-05-16 13:56:07'),(5,1,'a0913e23-8e0c-08ad-34b4-e0945acc0a14','Ano a Evaluar',1,1,0,0,'ADMIN@TIENDASDAKA.COM','2024-05-16 17:49:10','ADMIN@TIENDASDAKA.COM','2024-05-16 13:56:11'),(6,1,'01c5a673-7772-06ff-0383-136d1336ce9b','Total de puntos obtenidos',4,0,0,0,'ADMIN@TIENDASDAKA.COM','2024-05-16 17:49:40',NULL,NULL),(7,1,'39793d78-57c4-085a-1030-5840cf6e487d','Cantidad de evaluaciones',4,0,0,0,'ADMIN@TIENDASDAKA.COM','2024-05-16 17:50:03',NULL,NULL),(8,2,'4f8ed0fb-a281-096a-0446-bb93a098b9a9','Esta evaluación corresponde al mes de Diciembre',8,0,0,0,'ADMIN@TIENDASDAKA.COM','2024-05-16 18:20:25',NULL,NULL),(9,2,'2733fdd9-50fe-09ef-1b9e-ca5bd0596a5c','Correo electrónico',5,1,0,0,'ADMIN@TIENDASDAKA.COM','2024-05-16 18:20:37','ADMIN@TIENDASDAKA.COM','2024-05-16 14:20:41'),(10,2,'3d23d7fe-134e-00a0-2e8e-e14923bd5378','Sucursal',3,1,0,0,'ADMIN@TIENDASDAKA.COM','2024-05-16 18:20:57','ADMIN@TIENDASDAKA.COM','2024-05-16 14:44:57'),(11,2,'a2540498-2e68-0807-165a-0bf40fddd274','Nombre del evaluado',4,1,0,0,'ADMIN@TIENDASDAKA.COM','2024-05-16 18:21:32','ADMIN@TIENDASDAKA.COM','2024-05-16 14:45:01'),(12,2,'0b5461b1-cc72-0c56-04da-988535c7c849','Cedula de identidad del evaluado',4,1,0,0,'ADMIN@TIENDASDAKA.COM','2024-05-16 18:21:51','ADMIN@TIENDASDAKA.COM','2024-05-16 14:45:06'),(13,2,'6db71f4f-95e1-049d-0cbc-45f41fdfcee6','Lea detenidamente las preguntas que a continuación se le realizan y elija la respuesta que considere correcta',8,0,0,0,'ADMIN@TIENDASDAKA.COM','2024-05-16 18:22:11',NULL,NULL),(14,2,'b2322978-2a65-0869-1d0b-e3ff694b3522','¿Que significa las siglas C2P?',1,1,1,1,'ADMIN@TIENDASDAKA.COM','2024-05-16 18:22:26','ADMIN@TIENDASDAKA.COM','2024-05-16 14:45:12'),(15,2,'fcde9f7a-5aba-00f5-1e58-45a0702ae66d','¿Que metodos de pago puedo recibir mediante Merchant?',1,1,1,1,'ADMIN@TIENDASDAKA.COM','2024-05-16 18:23:11','ADMIN@TIENDASDAKA.COM','2024-05-16 14:45:16'),(16,2,'e4d99d15-b39d-0def-151f-e430347c42c5','¿Es posible anular la forma de pago de Tarjeta?',1,1,1,1,'ADMIN@TIENDASDAKA.COM','2024-05-16 18:23:49','ADMIN@TIENDASDAKA.COM','2024-05-16 14:45:20'),(17,2,'6bfa2dff-036d-0ae6-0757-fedac5fb50de','¿Debo entregarle la factura original al cliente si los productos van por delivery?',1,1,1,1,'ADMIN@TIENDASDAKA.COM','2024-05-16 18:24:23','ADMIN@TIENDASDAKA.COM','2024-05-16 14:45:24'),(18,2,'63343721-ad46-02ba-2fd3-1c2c72dfa42f','¿Puedo emitir vueltos mixtos utilizando como opción Merchant?',1,1,1,1,'ADMIN@TIENDASDAKA.COM','2024-05-16 18:24:59','ADMIN@TIENDASDAKA.COM','2024-05-16 14:45:27'),(19,2,'8644f44d-a074-04ca-0e8d-6820ada3053c','¿ Qué tan receptivos fueron nuestros asesores de venta a tus preguntas e inquietudes y el trato recibido  ?',2,1,1,1,'ADMIN@TIENDASDAKA.COM','2024-05-16 21:01:49','ADMIN@TIENDASDAKA.COM','2024-05-16 22:38:24'),(20,2,'66bcbea3-0f11-0a59-0e71-0a1d22fba7d5','Elija los colores que le gusta',2,1,1,1,'ADMIN@TIENDASDAKA.COM','2024-05-16 23:19:59','ADMIN@TIENDASDAKA.COM','2024-05-16 22:38:35');
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `response`
--

LOCK TABLES `response` WRITE;
/*!40000 ALTER TABLE `response` DISABLE KEYS */;
INSERT INTO `response` VALUES (1,2,'2733fdd9-50fe-09ef-1b9e-ca5bd0596a5c',NULL,'ar_gg@hotmail.com','2024-05-17 14:18:42','string',NULL,NULL,'1','e1af4608-8051-06c2-1548-c180dc38fb2c'),(2,2,'3d23d7fe-134e-00a0-2e8e-e14923bd5378','38','Sucursal Acarigua-Araure','2024-05-17 14:18:42','number',NULL,0,'1','e1af4608-8051-06c2-1548-c180dc38fb2c'),(3,2,'a2540498-2e68-0807-165a-0bf40fddd274',NULL,'Anderson','2024-05-17 14:18:42','string',NULL,NULL,'1','e1af4608-8051-06c2-1548-c180dc38fb2c'),(4,2,'0b5461b1-cc72-0c56-04da-988535c7c849',NULL,'16570004','2024-05-17 14:18:42','string',NULL,NULL,'1','e1af4608-8051-06c2-1548-c180dc38fb2c'),(5,2,'b2322978-2a65-0869-1d0b-e3ff694b3522','48','Persona a Persona','2024-05-17 14:18:42','number',NULL,20,'1','e1af4608-8051-06c2-1548-c180dc38fb2c'),(6,2,'fcde9f7a-5aba-00f5-1e58-45a0702ae66d','52','4 formas de pago: C2P, P2C, Zelle, Tarjeta','2024-05-17 14:18:42','number',20,20,'1','e1af4608-8051-06c2-1548-c180dc38fb2c'),(7,2,'e4d99d15-b39d-0def-151f-e430347c42c5','55','Si, mediante el numero de secuencia del Voucher que imprime merchant','2024-05-17 14:18:42','number',20,20,'1','e1af4608-8051-06c2-1548-c180dc38fb2c'),(8,2,'6bfa2dff-036d-0ae6-0757-fedac5fb50de','57','Si','2024-05-17 14:18:42','number',NULL,20,'1','e1af4608-8051-06c2-1548-c180dc38fb2c'),(9,2,'63343721-ad46-02ba-2fd3-1c2c72dfa42f','60','No','2024-05-17 14:18:42','number',20,20,'1','e1af4608-8051-06c2-1548-c180dc38fb2c'),(10,2,'8644f44d-a074-04ca-0e8d-6820ada3053c','62','Agradables','2024-05-17 14:18:42','string',10,10,'1','e1af4608-8051-06c2-1548-c180dc38fb2c'),(11,2,'8644f44d-a074-04ca-0e8d-6820ada3053c','63','Poco agradables','2024-05-17 14:18:42','string',NULL,0,'1','e1af4608-8051-06c2-1548-c180dc38fb2c'),(12,2,'66bcbea3-0f11-0a59-0e71-0a1d22fba7d5','65','Azul','2024-05-17 14:18:42','string',NULL,0,'1','e1af4608-8051-06c2-1548-c180dc38fb2c'),(13,2,'66bcbea3-0f11-0a59-0e71-0a1d22fba7d5','66','Amarillo','2024-05-17 14:18:42','string',10,10,'1','e1af4608-8051-06c2-1548-c180dc38fb2c');
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
  PRIMARY KEY (`Id`),
  CONSTRAINT `PK_SURVEY001` FOREIGN KEY (`Id`) REFERENCES `questions` (`IdEncuesta`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `PK_SURVEY002` FOREIGN KEY (`Id`) REFERENCES `answer_options` (`IdEncuesta`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='ALMACENA LOS NOMBRES DE LAS ENCUESTAS';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `survey`
--

LOCK TABLES `survey` WRITE;
/*!40000 ALTER TABLE `survey` DISABLE KEYS */;
INSERT INTO `survey` VALUES (1,'INDICADOR DE EVALUACIONES ','0','0','Se registrarán el nombre, la foto y el correo electrónico asociados con tu Cuenta de Google cuando subas archivos y envíes este fo',1,0,'V','ADMIN@TIENDASDAKA.COM','2024-05-16 16:32:58','ADMIN@TIENDASDAKA.COM','2024-05-16 22:49:49','1715914189858'),(2,'MERCHANT','0','0','Sistema Integrado de Pago',1,8,'V','ADMIN@TIENDASDAKA.COM','2024-05-16 18:19:40','ADMIN@TIENDASDAKA.COM','2024-05-16 22:50:24','1715914224919');
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
INSERT INTO `uuid_session` VALUES ('526232fd-b05e-0638-25f9-eb173091e5b7','admin@tiendasdaka.com',1,'2024-05-17 13:51:16');
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

-- Dump completed on 2024-05-17 10:21:35
