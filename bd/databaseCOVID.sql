-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: database
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `administrador`
--

DROP TABLE IF EXISTS `administrador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `administrador` (
  `idAdministrador` int(11) NOT NULL AUTO_INCREMENT,
  `Nombres` varchar(45) DEFAULT NULL,
  `Telefono` int(11) DEFAULT NULL,
  `Usuario` varchar(45) DEFAULT NULL,
  `contrasena` varchar(45) DEFAULT NULL,
  `Estado` int(11) DEFAULT NULL,
  PRIMARY KEY (`idAdministrador`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrador`
--

LOCK TABLES `administrador` WRITE;
/*!40000 ALTER TABLE `administrador` DISABLE KEYS */;
INSERT INTO `administrador` VALUES (1,'Miguel Huillca R',963723083,'admin01','1234',1),(3,'Diego Calle',925854125,'admin03','2345',1),(4,'Manuel Heredia',3652145,'admin04','8569',1);
/*!40000 ALTER TABLE `administrador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `distrito`
--

DROP TABLE IF EXISTS `distrito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `distrito` (
  `iddistrito` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`iddistrito`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `distrito`
--

LOCK TABLES `distrito` WRITE;
/*!40000 ALTER TABLE `distrito` DISABLE KEYS */;
INSERT INTO `distrito` VALUES (1,'San Juan de Lurigancho'),(2,'San Martin de Porres'),(3,'Ate '),(4,'Comas'),(5,'Villa el Salvador'),(6,'Villa Maria del Triunfo'),(7,'Callao'),(8,'San Juan de Miraflores'),(9,'Los Olivos'),(10,'Puente Piedra'),(11,'Ventanillo'),(12,'Surco'),(13,'Chorrillos'),(14,'Carabayllo'),(15,'Lima'),(16,'Santa Anita'),(17,'Lurigancho'),(18,'Independencia'),(19,'El Agustino'),(20,'La Molina'),(21,'La Victoria'),(22,'Rimac'),(23,'San Miguel');
/*!40000 ALTER TABLE `distrito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paciente`
--

DROP TABLE IF EXISTS `paciente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paciente` (
  `idpaciente` int(11) NOT NULL AUTO_INCREMENT,
  `dni` varchar(8) DEFAULT NULL,
  `nombresApellidos` varchar(250) DEFAULT NULL,
  `edad` varchar(45) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `sexo` varchar(45) DEFAULT NULL,
  `direccion` varchar(250) DEFAULT NULL,
  `condMedica` varchar(200) DEFAULT NULL,
  `Estado` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idpaciente`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paciente`
--

LOCK TABLES `paciente` WRITE;
/*!40000 ALTER TABLE `paciente` DISABLE KEYS */;
INSERT INTO `paciente` VALUES (1,'45236236','Diana Sanchez Quira','36','3625963','F','Mariscal Guterrez 251','Diabetes','En Riego'),(2,'52369652','Raul Rios Morales','50','963254150','M','Av Lina Vera aprt. 365 ','Obesidad','Grave'),(3,'85693652','Carlos Gamarra Senio','45','956321450','M','Av Cantuarias mz 3 lote 3','Diabetes','En Riesgo'),(4,'96587452','Nuria Rodriguez Nera','26','958745210','F','Psj. Diaz Gutierrez 523','Ninguno','En Riesgo'),(5,'98745210','Manuela Quispe Prado','21','3925140','F','Av. Las Cardenas 1002','Fibrosis Quistica','Riesgo Leve'),(6,'95214587','karina calmet Rios','66','3521450','F','Psj. Diaz Medrano 452','Hipertension','Grave'),(7,'41201254','Mauricio Derra Vera','25','3269584','M','Av. Jose Paredes 451','Ninguno','Ninguno'),(8,'10203251','Carmen Villalobos Rojas','61','965214580','F','Jr. Del Parodi 120','Dabetes','Grave'),(9,'54811155','Adrian Del Solar Rios','22','952362458','M','Av. Canizerz aprt. 1524','Ninguno','Ninguno'),(10,'12541254','Catalina Aguirre red','32','952145874','F','Av. Canto Grande 562','Cancer ','Grave'),(11,'20254488','Maria De la Fuente Rojas','42','963555414','F','Psj. 10 de Octubre 120','Dabetes','En Riesgo'),(12,'20136521','Carlos Uribe Patiño','57','955215478','M','Av. Los Sauces 1020','Ninguno','Grave'),(13,'20125415','Ximena Camacho Roel','50','987452141','F','Psj. De las Leyendas 854','Obesidad','Riesgo Leve'),(14,'25412365','Alexandra Delgado Derbez','56','912544875','F','Av. Nueva Peru 521','Hipertension','En Riesgo '),(15,'02302144','Catalina Gutierrez Prado','78','963214587','F','Psj. Del Indomable 784','Presion Alta','Grave'),(16,'20125448','Sebastian Rojas Rios','40','971254874','M','Av. Jose Mareategui 541','Fibrosis Quistica','Riesgo Leve'),(17,'25485874','Elena Santibañez Perez','44','912548544','F','Av. Wiesse 1002','Cancer','Riesgo Leve'),(18,'10236544','Jhoan Palacion Escobar','56','915874412','M','Jr. De Paseo de los Heroes 451','Diabetes','En Riesgo'),(19,'45214587','Lucia Ramirez Ceron','25','922999210','F','Av. Caranmancho 4487','Ninguno','Ninguno');
/*!40000 ALTER TABLE `paciente` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-18 15:56:38
