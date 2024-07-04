-- MySQL dump 10.13  Distrib 5.7.44, for Linux (x86_64)
--
-- Host: localhost    Database: dbROPA
-- ------------------------------------------------------
-- Server version	5.7.44

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'is the id of the categories',
  `name` varchar(50) NOT NULL COMMENT 'is the name of the category',
  `description` varchar(100) NOT NULL COMMENT 'is the description of the category',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COMMENT='This table will store relevant information of the categories';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'pantalones','esta categoria se enfoca en solo los productos que son pantalones'),(2,'polos','esta categoria se enfoca en solo los productos que son polos'),(3,'chompas','esta categoria se enfoca en solo los productos que son chompas'),(4,'short','esta categoria se enfoca en solo los productos que son short'),(5,'ropa interior','esta categoria se enfoca en solo los productos que son ropa interior');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'is the clients id',
  `dni` varchar(8) NOT NULL COMMENT 'es el dni  de los clientes',
  `name` varchar(100) NOT NULL COMMENT 'is the name of the clients',
  `address` varchar(300) NOT NULL COMMENT 'is the direction of the clients',
  `phone` varchar(20) NOT NULL COMMENT 'It is the clients phone number',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COMMENT='This table stores customer information';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'75080913','rosa','Calle santa rosa N° 300 San Vicente de cañete, lima Peru','953214562'),(2,'75084913','maria','Calle santa cruz N° 120 imperial de cañete, lima Peru','951414562'),(3,'75280913','rosa','Calle santa rosalia N° 190 San Vicente de cañete, lima Peru','953214562'),(4,'95080913','rosa','Calle santa rosa N° 200 San Vicente de cañete, lima Peru','959914562'),(5,'15080913','rosa','Calle santa rosa N° 100 San Vicente de cañete, lima Peru','991214562');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'is the id of the products',
  `name` varchar(20) NOT NULL COMMENT 'is the name of the products',
  `price` varchar(300) NOT NULL COMMENT 'is the current price of the products',
  `stocks` varchar(100) NOT NULL COMMENT 'is the state of the product',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COMMENT='This table will store the relevant information of the products';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'POLO MANGAS','20','Si'),(2,'POLO corto','30','NO'),(3,'Pantalon rasgado','80','NO'),(4,'Polo oversize','30','Si'),(5,'casaca polar','120','Si');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sales` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'is the sales id',
  `date` date NOT NULL COMMENT 'is the sales date',
  `customers` varchar(100) NOT NULL COMMENT 'is the sales customer',
  `product_detail` varchar(300) NOT NULL COMMENT 'that is the detail of the product sold',
  `final_amount` int(11) NOT NULL COMMENT 'is the final amount of the sale',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COMMENT='This table will store relevant sales information.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` VALUES (1,'2023-07-01','Juan Pérez','Camiseta roja, talla M',250),(2,'2023-07-02','María López','Pantalones vaqueros, talla 38',800),(3,'2023-07-03','Carlos García','Chaqueta de cuero, talla L',3500),(4,'2023-07-04','Ana Sánchez','Vestido de verano, talla S',1200),(5,'2023-07-05','Luis Martínez','Sudadera con capucha, talla XL',1500);
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `suppliers` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'is the table identifier',
  `ruc` varchar(11) NOT NULL COMMENT 'is the ruc number of the suppliers',
  `name` varchar(20) NOT NULL COMMENT 'is the name of the suppliers',
  `address` varchar(100) NOT NULL COMMENT 'is the address of the suppliers',
  `web_page` varchar(100) NOT NULL COMMENT 'It is the suppliers website',
  `phone` varchar(9) NOT NULL COMMENT 'It is the suppliers phone number',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 COMMENT='This table contains information about the suppliers';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliers`
--

LOCK TABLES `suppliers` WRITE;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
INSERT INTO `suppliers` VALUES (6,'20123456789','Textiles S.A.','Av. Principal 123, Lima','www.textiles.com','987654321'),(7,'20234567890','Ropa y Más','Calle Secundaria 456, Cusco','www.ropaymas.com','987654322'),(8,'20345678901','Moda Actual','Jr. Comercio 789, Arequipa','www.modaactual.com','987654323'),(9,'20456789012','Estilo Único','Av. Independencia 101, Trujillo','www.estilounico.com','987654324'),(10,'20567890123','Confecciones Mod','Calle Libertad 202, Piura','www.confeccionesmodernas.com','987654325');
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-04 15:49:17
