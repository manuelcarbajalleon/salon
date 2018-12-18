-- MySQL dump 10.13  Distrib 5.5.54, for debian-linux-gnu (x86_64)
--
-- Host: manuelcarbajalleon.mysql.pythonanywhere-services.com    Database: manuelcarbajalle$salon
-- ------------------------------------------------------
-- Server version	5.6.40-log

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
-- Table structure for table `ProductCategory`
--

DROP TABLE IF EXISTS `ProductCategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ProductCategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProductCategory`
--

LOCK TABLES `ProductCategory` WRITE;
/*!40000 ALTER TABLE `ProductCategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `ProductCategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `additional_products`
--

DROP TABLE IF EXISTS `additional_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `additional_products` (
  `event_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`event_id`,`product_id`),
  KEY `IDX_96BE68C71F7E88B` (`event_id`),
  KEY `IDX_96BE68C4584665A` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `additional_products`
--

LOCK TABLES `additional_products` WRITE;
/*!40000 ALTER TABLE `additional_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `additional_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` longtext COLLATE utf8_unicode_ci,
  `lastname` longtext COLLATE utf8_unicode_ci,
  `comment` longtext COLLATE utf8_unicode_ci,
  `address` longtext COLLATE utf8_unicode_ci,
  `telephone` longtext COLLATE utf8_unicode_ci,
  `email` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Luisa','Leon','VIP Customer','Francisco Bolognesi','2648362','luisitaleon@hotmail.com'),(4,'Manuel','Carbajal','','255 Chestnut St Kearny New Jersey','2017376938','manuelcarbajalleon@gmail.com'),(5,'Tatiana ','Chavez','','','',''),(7,'Alicia ','Mandamientos ','','Av arica 660 San miguel','949724013','Paulizmandamiento@gmail.com'),(9,'Lyly','Grados','','Jr bolognesi 695 h303 San Miguel ','997238997','Lygrados@hotmail. Com'),(10,'Veronica ','Muñoz','','','','Veronicamuñoz_peru@hotmail.com'),(11,'Sara','Antayhua','','parque caceres 32c Pueblo ibre','959709665','Saraantayhua@hotmail.com'),(12,'Shamella','Martin','','','',''),(13,'Jessica ','Chincha','','','',''),(14,'Dina','Vargas Lozada','','giron bolognesi apt 304','992835492',''),(15,'Erick','Ernau Venegas','','av san borja norte 1250 apt 1201','966311298','erick.ernau@hotmail.com'),(16,'Sra. del enfrente','','atendida el 01-11-18','bolognesi','',''),(17,'Cynthia','Varas','','santa natalia cercado de lima pueblo libre ','930185078','cynthiavaras1705@gmail.com'),(18,'Vanesa','Briceño','','Av. Universitaria 427 ','940147204','zelidett@gmail.com'),(19,'Silvia','Mauricio','','Bolognesi 831 de 504A San Miguel','996299981','Smauriciov@gmail.com'),(20,'Yahir ','Martinez','','A Girón Alfonso Ugarte 170 de 403 San Miguel ','942772759','Yair_55_7@hotmail.com'),(21,'Pablo','Adan','','Jr cuzco 893 dpto 403 San Miguel ','952263174','Pabloadan@d-unas.com.pe'),(22,'Rosio','Arteaga','','prolongacion cusco 340 San Miguel ','980425433','rosi.arteaga@hotmail.com'),(23,'Medali','Lopez','','mama runter 295 San miguelito','991097334','medalopez@hotmail.com'),(24,'Mary Carmen','Lopez','','francisco bolognesia 575 San Miguel','990432821','mlopez@artificescomunicadores.com'),(25,'Rosa','Saenz','','alfonso ugarte 270 San Miguel','2638648',''),(26,'Carla','Rodriguez','','alfonso ugarte 270 San Miguel','986897701','rodriguezsaenz83@gmail.com'),(27,'Nancy','Gamboa Kan','','bolognesia 837 b102 San Miguel','997673168','ngkenfermera2@hotmail.com'),(28,'Ana','Garros','','giron bolognesi 176 San Miguel','952864162',''),(29,'Marilu ','Herrera','','neptuno 568 pueblo libre','989378760','maluherrrag82@gmail.com'),(30,'Denisse','Tacho','','francisco bolognesi 750 San Miguel','983321039','denny_tachof@hotmail.com'),(31,'Marina','Iturizaga','','San Isidro ','',''),(32,'Pamela','','','','',''),(33,'Cecilia ','Leon ','','federico gallese 660 dep 301 San Miguel','963669367','clm0823@hotmail.com'),(35,'Consuelo ','Fuente','','Federico gallese 601 dep 504 San Miguel','994965840','Mifunu29@hotmail.com'),(36,'Rosa','Roncar','','','',''),(37,'Patricia ','Rojas','','calle grau 380 San Miguel','997089955','patty_ro@hotmail.com'),(38,'Lilian','Quintana','','cusco 615 magdalena','961783556','lilian.quintana@hotmail.com'),(39,'Lucy','Rodriguez','','calle sucre 700d San Miguel','',''),(40,'Sonia ','','','','',''),(41,'Francesca','Madico','','','',''),(42,'Bebe','','','','',''),(43,'Maggie','','','','',''),(44,'Anita ','Millones ','','bolognesi 875 blog 38bd San Miguel','992532680','anabea15@hotmai.com'),(45,'Noemi','Vasquez','','Alfonso Ugarte 153 San miguel','4608183',''),(46,'Isabel(chabeli) ','Cornejo vijil','','Bolognesi 234 dt 204 San Miguel ','949364170','Aida_cornejo@hotmail.com'),(47,'Nelly','Huamani','','','999924901',''),(48,'Carmen','Navarro','','','4608343',''),(49,'Maria','Lescano','','calle bolognesi 740 San Miguel','941363892','maria.lescano.68.12@gmail.com'),(50,'Jessica','Drexler gamarra','','Bolognesi 750 dpto 303 Torre a','997891474',''),(51,'Michelle ','Garay','','','953732769',''),(52,'Karina','Vasquez Seijas ','','giron miguel grau 325 dep 203 San Miguel','960662989','cavs15@hotmail.com'),(53,'Yovana','Vergara','','calle las chiras 132 San Miguel','949834990','givenci2@hotmail.com'),(54,'Veronica','Moncada','','San Miguel','973904295','veritomila6@hotmail.com'),(55,'Soledad ','Rufino','','','993811093','Marysolrufi@hotmail.com'),(56,'Laly ','Barragán ','','','',''),(57,'Acropolis','Herrera','','giron bolognesi 864 San Migue','972895753','aherrerehh@gmail.com'),(58,'Lilis Deivis','','','','4608411',''),(59,'Lucy','Vega Silva ','','av sucre 455 dp 205 ','995226232',''),(60,'Jaki ','Ayasta ','','giron suvre 700D San Miguel','997344049','jakelinayastajop@gmail.com'),(61,'Tatiana','Chavez Valdivia','','prolongacion cusco 235 dep 109 Sn Miguel','943257577','tatiana_raquel1@hotmail.com'),(62,'Maggi ( La gordis)','Macaguachi','','guron bolognesi 839 San Miguel','997350663','mmacaguachi@gmail.com'),(63,'Monica Prima','Ugarriza ','','la morena 7579 dp 401 surquillo','959239545','monicaugarriza@hotmail'),(64,'Yulisa','Delaguila','','giron camino del inca 458 San Miguel','965088880','yurisita_06_08@hotmail.com'),(65,'Erika','Contreras','','alfonso ugarte 330 San miguel','4608343','erica_contrera_nraba@hotmail.com');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8_unicode_ci,
  `telephone` longtext COLLATE utf8_unicode_ci,
  `email` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Patricia','Jr francisco bolognesi 876 San Miguel, Lima, Peru 36','51 992 801 747','manuelcarbajalleon@gmail.com');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8_unicode_ci,
  `start` datetime NOT NULL,
  `end` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `resource` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer` int(11) NOT NULL,
  `product` int(11) DEFAULT NULL,
  `employee` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `event_deleted` (`deleted`),
  KEY `event_start` (`start`),
  KEY `event_end` (`end`),
  KEY `event_customer` (`customer`),
  KEY `event_employee` (`employee`),
  KEY `event_product` (`product`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (1,'peinado y laceado','2018-10-03 09:00:00','2018-10-03 10:00:00',0,NULL,1,1,1),(2,'qqqqqq','2018-10-27 00:00:00',NULL,NULL,NULL,3,NULL,NULL),(3,'sssssssss','2018-10-27 00:00:00',NULL,NULL,NULL,4,NULL,NULL),(4,'corte de cabello','2018-10-27 00:00:00',NULL,NULL,NULL,1,NULL,NULL),(5,'tenido a rojo y tambien laciado','2018-10-27 00:00:00',NULL,NULL,NULL,1,NULL,NULL),(6,'sdadsd asdasd asdasdsa asdas asdasd asd asd asd asd ','2018-10-27 00:00:00',NULL,NULL,NULL,1,NULL,NULL),(7,'zzzzzz xxxxx cccc','2018-10-27 00:00:00',NULL,NULL,NULL,3,NULL,NULL),(8,'hola a todos es\r\neste servicio es nuevo','2018-10-27 00:00:00',NULL,NULL,NULL,1,NULL,NULL),(9,'Tinte ','2018-10-29 00:00:00',NULL,NULL,NULL,5,NULL,NULL),(10,'Tinte 60soles','2018-10-29 00:00:00',NULL,NULL,NULL,5,NULL,NULL),(11,'Tinte raíces nada más ','2018-10-30 00:00:00',NULL,NULL,NULL,7,NULL,NULL),(12,'Tinte de raíces ','2018-10-30 00:00:00',NULL,NULL,NULL,9,NULL,NULL),(13,'Pago rayos y corte de su mama','2018-10-30 00:00:00',NULL,NULL,NULL,7,NULL,NULL),(14,'Cepillado','2018-10-30 00:00:00',NULL,NULL,NULL,10,NULL,NULL),(15,'Retoques de raíces ','2018-10-31 00:00:00',NULL,NULL,NULL,14,NULL,NULL),(16,'Corte de cabello','2018-10-31 00:00:00',NULL,NULL,NULL,15,NULL,NULL),(17,'Tint raíces 01-11-18','2018-11-01 00:00:00',NULL,NULL,NULL,16,NULL,NULL),(18,'Tinte completo S/ 100 ( 2 tinte #7y pisca de  azul)','2018-11-01 00:00:00',NULL,NULL,NULL,17,NULL,NULL),(19,'Tinte completo, rayos, corte ','2018-11-04 00:00:00',NULL,NULL,NULL,18,NULL,NULL),(20,'Retoque de raíz y corte ','2018-11-06 00:00:00',NULL,NULL,NULL,19,NULL,NULL),(21,'Corte de cabello ','2018-11-06 00:00:00',NULL,NULL,NULL,20,NULL,NULL),(22,'Corte y tinte','2018-11-06 00:00:00',NULL,NULL,NULL,21,NULL,NULL),(23,'Retoque de raíces ','2018-11-06 00:00:00',NULL,NULL,NULL,22,NULL,NULL),(24,'Cepillado ','2018-11-06 00:00:00',NULL,NULL,NULL,23,NULL,NULL),(25,'Corte de Cabello','2018-11-06 00:00:00',NULL,NULL,NULL,24,NULL,NULL),(26,'Corte de cabello esposo ','2018-11-06 00:00:00',NULL,NULL,NULL,24,NULL,NULL),(27,'Tinte rayos y ampolla','2018-11-08 00:00:00',NULL,NULL,NULL,25,NULL,NULL),(28,'Retoque de tinte ','2018-11-08 00:00:00',NULL,NULL,NULL,26,NULL,NULL),(29,'Tinte completo','2018-11-08 00:00:00',NULL,NULL,NULL,27,NULL,NULL),(30,'Tinte y rayos con olaplex','2018-11-09 00:00:00',NULL,NULL,NULL,28,NULL,NULL),(31,'Tinte de raíces con baño y ampolla ','2018-11-09 00:00:00',NULL,NULL,NULL,29,NULL,NULL),(32,'Planchado de cabello ','2018-11-09 00:00:00',NULL,NULL,NULL,30,NULL,NULL),(33,'Lavado y cepillado de cabello','2018-11-09 00:00:00',NULL,NULL,NULL,31,NULL,NULL),(34,'Cepillado, moño y maquillaje','2018-11-09 00:00:00',NULL,NULL,NULL,32,NULL,NULL),(35,'Rayos ','2018-11-09 00:00:00',NULL,NULL,NULL,7,NULL,NULL),(36,'Corte de cabello de su hijo','2018-11-12 00:00:00',NULL,NULL,NULL,33,NULL,NULL),(37,'Cepillado de cabello','2018-11-13 00:00:00',NULL,NULL,NULL,27,NULL,NULL),(38,'Tinte, rayos, corte y ampolla ','2018-11-13 00:00:00',NULL,NULL,NULL,35,NULL,NULL),(39,'Corte de cabello','2018-11-14 00:00:00',NULL,NULL,NULL,36,NULL,NULL),(40,'Aplicación de tinte ','2018-11-15 00:00:00',NULL,NULL,NULL,37,NULL,NULL),(41,'Tinte de raíz con un pequeño baño ','2018-11-15 00:00:00',NULL,NULL,NULL,38,NULL,NULL),(42,'Corte de cabello','2018-11-15 00:00:00',NULL,NULL,NULL,15,NULL,NULL),(43,'Tinte de raiz , ampolla y secado ','2018-11-16 00:00:00',NULL,NULL,NULL,9,NULL,NULL),(44,'Tinte de raíz ','2018-11-16 00:00:00',NULL,NULL,NULL,39,NULL,NULL),(45,'Cepillado','2018-11-16 00:00:00',NULL,NULL,NULL,10,NULL,NULL),(46,'Retoque de raices','2018-11-16 00:00:00',NULL,NULL,NULL,40,NULL,NULL),(47,'Depilación rostro ','2018-11-16 00:00:00',NULL,NULL,NULL,41,NULL,NULL),(48,'Corte de cabello ','2018-11-16 00:00:00',NULL,NULL,NULL,42,NULL,NULL),(49,'Peinado, manicure, pedicure y pestañas','2018-11-16 00:00:00',NULL,NULL,NULL,43,NULL,NULL),(50,'Tinte con rayitos ','2018-11-16 00:00:00',NULL,NULL,NULL,44,NULL,NULL),(51,'Pago Netflix ','2018-11-16 00:00:00',NULL,NULL,NULL,44,NULL,NULL),(52,'Tinte y rayos corte ampolla','2018-11-16 00:00:00',NULL,NULL,NULL,45,NULL,NULL),(53,'Raíces corte ampollas cepillado manicura ','2018-11-16 00:00:00',NULL,NULL,NULL,46,NULL,NULL),(54,'Raíces corte y ampolla','2018-11-16 00:00:00',NULL,NULL,NULL,47,NULL,NULL),(55,'Tinte corte y depilación ','2018-11-19 00:00:00',NULL,NULL,NULL,48,NULL,NULL),(56,'Corte de cabello Diego','2018-11-19 00:00:00',NULL,NULL,NULL,49,NULL,NULL),(57,'Cepillado ','2018-11-19 00:00:00',NULL,NULL,NULL,10,NULL,NULL),(58,'Tinte completo ','2018-11-19 00:00:00',NULL,NULL,NULL,50,NULL,NULL),(59,'Depilación de cejas ','2018-11-19 00:00:00',NULL,NULL,NULL,51,NULL,NULL),(60,'Tinte completo','2018-11-20 00:00:00',NULL,NULL,NULL,52,NULL,NULL),(61,'Corte ','2018-11-20 00:00:00',NULL,NULL,NULL,52,NULL,NULL),(62,'Tinte y ampolla','2018-11-21 00:00:00',NULL,NULL,NULL,13,NULL,NULL),(63,'Cepillado','2018-11-23 00:00:00',NULL,NULL,NULL,9,NULL,NULL),(64,'Cepillado','2018-11-23 00:00:00',NULL,NULL,NULL,27,NULL,NULL),(65,'Tinte completo y ampolla','2018-11-23 00:00:00',NULL,NULL,NULL,53,NULL,NULL),(66,'Tinte completo, mechas, corte, ampolla y manicure ','2018-11-23 00:00:00',NULL,NULL,NULL,23,NULL,NULL),(67,'Laceado de raíz ','2018-11-23 00:00:00',NULL,NULL,NULL,54,NULL,NULL),(68,'Cepillado y planchado 30 soles','2018-11-23 00:00:00',NULL,NULL,NULL,55,NULL,NULL),(69,'Olaplex, tinte completo y ampolla','2018-11-23 00:00:00',NULL,NULL,NULL,11,NULL,NULL),(70,'Tinte raíz y corte ','2018-11-23 00:00:00',NULL,NULL,NULL,14,NULL,NULL),(71,'Regla de mi LALY ','2018-11-23 00:00:00',NULL,NULL,NULL,56,NULL,NULL),(72,'Tratamiento de olaplex ','2018-11-23 00:00:00',NULL,NULL,NULL,10,NULL,NULL),(73,'Tinte rubio de raíces y baño','2018-11-23 00:00:00',NULL,NULL,NULL,51,NULL,NULL),(74,'Corte de cabello','2018-11-23 00:00:00',NULL,NULL,NULL,57,NULL,NULL),(75,'Tinte de raiz , amoolla y cepillado','2018-11-23 00:00:00',NULL,NULL,NULL,9,NULL,NULL),(76,'Lavado y cepillado','2018-11-23 00:00:00',NULL,NULL,NULL,27,NULL,NULL),(77,'Planchado ','2018-11-23 00:00:00',NULL,NULL,NULL,41,NULL,NULL),(78,'Tinte de raíces y corte ( 70 soles )','2018-11-30 00:00:00',NULL,NULL,NULL,59,NULL,NULL),(79,'Tinte completo, ampolla y corte ','2018-11-30 00:00:00',NULL,NULL,NULL,60,NULL,NULL),(80,'Tinte de raiz , corte y ampolla','2018-11-30 00:00:00',NULL,NULL,NULL,35,NULL,NULL),(81,'laceado y tinte ','2018-11-30 00:00:00',NULL,NULL,NULL,61,NULL,NULL),(82,'Laceado y corte de su mama ','2018-11-30 00:00:00',NULL,NULL,NULL,62,NULL,NULL),(83,'Lavado y cepillado','2018-12-07 00:00:00',NULL,NULL,NULL,9,NULL,NULL),(84,'Tinte de raíz 06-12 Ampolla y cepillado','2018-12-07 00:00:00',NULL,NULL,NULL,27,NULL,NULL),(85,'TInte completo 80 soles, ampolla, cort , planchado y depilación de cejas ','2018-12-07 00:00:00',NULL,NULL,NULL,63,NULL,NULL),(86,'Lavado de cabello, peinado y cejas semipermanente','2018-12-07 00:00:00',NULL,NULL,NULL,51,NULL,NULL),(87,'Tinte con baño y ampolla','2018-12-07 00:00:00',NULL,NULL,NULL,62,NULL,NULL),(88,'Tinte completo 90 soles y tratamiento ','2018-12-07 00:00:00',NULL,NULL,NULL,64,NULL,NULL),(89,'Tinte completo, ampolla, corte y cepillado','2018-12-07 00:00:00',NULL,NULL,NULL,65,NULL,NULL),(90,'Cepillado y manicure','2018-12-07 00:00:00',NULL,NULL,NULL,46,NULL,NULL),(91,'Tinte mas baño y ampolla 07-12','2018-12-07 00:00:00',NULL,NULL,NULL,7,NULL,NULL);
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoiceNumber` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` datetime NOT NULL,
  `cash` double NOT NULL,
  `bank` double NOT NULL,
  `event` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_906517443BAE0AA7` (`event`),
  KEY `invoice_event` (`event`),
  KEY `invoice_invoicenumber` (`invoiceNumber`),
  KEY `invoice_date` (`date`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice`
--

LOCK TABLES `invoice` WRITE;
/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
INSERT INTO `invoice` VALUES (1,'R000000001','2018-10-03 12:52:41',30,0,1);
/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice_line`
--

DROP TABLE IF EXISTS `invoice_line`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoice_line` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quantity` int(11) NOT NULL,
  `price` double NOT NULL,
  `invoice` int(11) NOT NULL,
  `product` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `invoiceline_invoice` (`invoice`),
  KEY `invoiceline_product` (`product`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice_line`
--

LOCK TABLES `invoice_line` WRITE;
/*!40000 ALTER TABLE `invoice_line` DISABLE KEYS */;
INSERT INTO `invoice_line` VALUES (1,1,30,1,1);
/*!40000 ALTER TABLE `invoice_line` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `duration` int(11) DEFAULT NULL,
  `color` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Corte',30,15,'FFFFFF');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_productcategory`
--

DROP TABLE IF EXISTS `product_productcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_productcategory` (
  `product_id` int(11) NOT NULL,
  `productcategory_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`productcategory_id`),
  KEY `IDX_9156E6914584665A` (`product_id`),
  KEY `IDX_9156E691E26A32B1` (`productcategory_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_productcategory`
--

LOCK TABLES `product_productcategory` WRITE;
/*!40000 ALTER TABLE `product_productcategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_productcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reports`
--

DROP TABLE IF EXISTS `reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` longtext COLLATE utf8_unicode_ci NOT NULL,
  `font` longtext COLLATE utf8_unicode_ci,
  `fontsize` double DEFAULT NULL,
  `query` longtext COLLATE utf8_unicode_ci NOT NULL,
  `ask` longtext COLLATE utf8_unicode_ci,
  `sum` longtext COLLATE utf8_unicode_ci,
  `currency` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reports`
--

LOCK TABLES `reports` WRITE;
/*!40000 ALTER TABLE `reports` DISABLE KEYS */;
INSERT INTO `reports` VALUES (1,'revenue','Times',12,'SELECT\n						i.invoiceNumber AS invoiceNumber,\n						i.date AS date,\n						CONCAT(c.firstname, \' \', c.lastname) AS customer,\n						i.cash AS cash,\n						i.bank AS bank\n					FROM Models\\Invoice i\n					JOIN i.event e\n					JOIN e.customer c\n					WHERE DATE_DIFF(i.date, :startDate) >= 0\n					AND DATE_DIFF(i.date, :endDate) <= 0','startDate=date,endDate=date','3,4','3,4'),(2,'bestProducts','Times',12,'SELECT\n						p.name AS product,\n						SUM(il.quantity) AS numberSold,\n						SUM(il.price * il.quantity) AS totalPrice\n					FROM Models\\InvoiceLine il\n					JOIN il.invoice i\n					JOIN il.product p\n					WHERE DATE_DIFF(i.date, :startDate) >= 0\n					AND DATE_DIFF(i.date, :endDate) <= 0\n					GROUP BY p.name\n					ORDER BY numberSold DESC, totalPrice DESC','startDate=date,endDate=date','','2'),(3,'bestCustomers','Times',12,'SELECT\n						CONCAT(c.firstname, \' \', c.lastname) AS customer,\n						COUNT(i.id) AS amount,\n						SUM(i.cash + i.bank) as revenue\n					FROM Models\\Invoice i\n					JOIN i.event e\n					JOIN e.customer c\n					WHERE DATE_DIFF(i.date, :startDate) >= 0\n					AND DATE_DIFF(i.date, :endDate) <= 0\n					GROUP BY e.customer\n					ORDER BY revenue DESC','startDate=date,endDate=date','','2'),(4,'productsPerCustomer','Times',12,'SELECT\n						CONCAT(c.firstname, \' \', c.lastname) AS customer,\n						COUNT(p.id) AS products,\n						i.date AS date,\n						i.cash + i.bank AS price\n					FROM Models\\InvoiceLine il\n					JOIN il.product p\n					JOIN il.invoice i\n					JOIN i.event e\n					JOIN e.customer c\n					WHERE c.id = :customer\n					AND DATE_DIFF(i.date, :startDate) >= 0\n					AND DATE_DIFF(i.date, :endDate) <= 0\n					GROUP BY i.id\n					ORDER BY i.date DESC','customer=customer,startDate=date,endDate=date','3','3');
/*!40000 ALTER TABLE `reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES ('address1','Jr francisco bolognesi 876  San Miguel, Lima, Peru 36'),('address2',''),('calendarsPerRow',''),('company','Patricia Barragan SALON'),('currency','Soles'),('endTime','20'),('homepage','http://mclworld.net/patysalon'),('language','English'),('openInvoice','true'),('printInvoice','false'),('showMonths','1'),('startTime','8'),('taxId',''),('taxName','IGV'),('taxValue','18%'),('telephone','51 992 801 747'),('theme','calendar_white'),('timeFormat','Clock12Hours');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'patricia','b4b101f4b6a45841fd826b707f5934975e5fa99bfdb6ceeab8bd99e109af2fae');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-11 16:05:21
