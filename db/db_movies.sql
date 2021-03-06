CREATE DATABASE  IF NOT EXISTS `db_movies` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `db_movies`;
-- MySQL dump 10.16  Distrib 10.1.28-MariaDB, for Win32 (AMD64)
--
-- Host: 127.0.0.1    Database: db_movies
-- ------------------------------------------------------
-- Server version	10.1.28-MariaDB

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
-- Table structure for table `tbl_arating`
--

DROP TABLE IF EXISTS `tbl_arating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_arating` (
  `arating_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `arating_name` varchar(125) NOT NULL,
  `arating_desc` text NOT NULL,
  PRIMARY KEY (`arating_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_arating`
--

LOCK TABLES `tbl_arating` WRITE;
/*!40000 ALTER TABLE `tbl_arating` DISABLE KEYS */;
INSERT INTO `tbl_arating` VALUES (1,'G','G – General Audiences\r\nAll ages admitted. Nothing that would offend parents for viewing by children. '),(2,'PG','PG – Parental Guidance Suggested\r\nSome material may not be suitable for children. Parents urged to give  	&ldquo;parental guidance&rdquo;. '),(3,'PG-13','PG-13 – Parents Strongly Cautioned\r\nSome material may be inappropriate for children under 13. Parents are urged to be cautious. Some material may be inappropriate for pre-teenagers.'),(4,'R','R – Restricted\r\nUnder 17 requires accompanying parent or adult guardian. Contains some adult material. Parents are urged to learn more about the film before taking their young children with them. '),(5,'NC-17','NC-17 – Adults Only\r\nNo One 17 and Under Admitted. Clearly adult. Children are not admitted. ');
/*!40000 ALTER TABLE `tbl_arating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_cast`
--

DROP TABLE IF EXISTS `tbl_cast`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_cast` (
  `cast_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `cast_name` varchar(250) NOT NULL,
  PRIMARY KEY (`cast_id`),
  UNIQUE KEY `cast_name` (`cast_name`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cast`
--

LOCK TABLES `tbl_cast` WRITE;
/*!40000 ALTER TABLE `tbl_cast` DISABLE KEYS */;
INSERT INTO `tbl_cast` VALUES (36,'Amy Adams'),(26,'Andrew Garfield'),(8,'Aneurin Barnard'),(42,'Anna Kendrick'),(14,'Boyd Holbrook'),(5,'Bradley Cooper'),(1,'Chris Pratt'),(19,'Colm Hill'),(13,'Dafne Keen'),(7,'Damien Bonnard'),(22,'Dan Stevens'),(30,'Darcy Bryce'),(3,'Dave Bautista'),(33,'Ed Skrein'),(21,'Emma Watson'),(6,'Fionn Whitehead'),(38,'Forest Whitaker'),(46,'Harrison Ford'),(11,'Hugh Jackman'),(28,'Jacob Warner'),(10,'James Bloor'),(37,'Jeremy Renner'),(45,'Joseph Gordon-Levitt'),(24,'Josh Gad'),(32,'Karan Soni'),(20,'Kathryn Kirkpatrick'),(25,'Kevin Kline'),(9,'Lee Armstrong'),(43,'Leonardo DiCaprio'),(23,'Luke Evans'),(40,'Mark OBrien'),(34,'Michael Benyaer'),(18,'Michael Mitton'),(39,'Michael Stuhlbarg'),(47,'Miles Teller'),(29,'Milo Gibson'),(12,'Patrick Stewart'),(27,'Richard Pyros'),(31,'Ryan Reynolds'),(52,'Sandra Bullock'),(44,'Saoirse Ronan'),(17,'Sheena Kamal'),(35,'Stefan Kapicic'),(15,'Stephen Merchant'),(53,'Suraj Sharma'),(16,'Tilda Swinton'),(41,'Tom Costello'),(4,'Vin Diesel'),(2,'Zoe Saldana');
/*!40000 ALTER TABLE `tbl_cast` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_comments`
--

DROP TABLE IF EXISTS `tbl_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_comments` (
  `comments_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `comments_auth` varchar(125) NOT NULL,
  `comments_copy` text NOT NULL,
  `comments_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`comments_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_comments`
--

LOCK TABLES `tbl_comments` WRITE;
/*!40000 ALTER TABLE `tbl_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_country`
--

DROP TABLE IF EXISTS `tbl_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_country` (
  `country_id` smallint(3) NOT NULL AUTO_INCREMENT,
  `country_name` varchar(100) NOT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=195 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_country`
--

LOCK TABLES `tbl_country` WRITE;
/*!40000 ALTER TABLE `tbl_country` DISABLE KEYS */;
INSERT INTO `tbl_country` VALUES (1,'Albania'),(2,'Algeria'),(3,'Andorra'),(4,'Angola'),(5,'Anguilla'),(6,'Antarctica'),(7,'Antigua'),(8,'Antilles'),(9,'Argentina'),(10,'Armenia'),(11,'Aruba'),(12,'Australia'),(13,'Austria'),(14,'Azerbaijan'),(15,'Bahamas'),(16,'Bangladesh'),(17,'Barbados'),(18,'Belarus'),(19,'Belgium'),(20,'Belize'),(21,'Benin'),(22,'Bermuda'),(23,'Bhutan'),(24,'Bolivia'),(25,'Bosnia'),(26,'Botswana'),(27,'Brazil'),(28,'Brunei'),(29,'Bulgaria'),(30,'Burkina Faso'),(31,'Burundi'),(32,'Cambodia'),(33,'Cameroon'),(34,'Canada'),(35,'Cape Verde'),(36,'Cayman Islands'),(37,'Central Africa'),(38,'Chad'),(39,'Chile'),(40,'China'),(41,'Colombia'),(42,'Comoros'),(43,'Congo'),(44,'Cook Islands'),(45,'Costa Rica'),(46,'Cote D\'Ivoire'),(47,'Croatia'),(48,'Cuba'),(49,'Cyprus'),(50,'Czech Republic'),(51,'Denmark'),(52,'Djibouti'),(53,'Dominica'),(54,'Dominican Rep.'),(55,'Ecuador'),(56,'Egypt'),(57,'El Salvador'),(58,'Eritrea'),(59,'Estonia'),(60,'Ethiopia'),(61,'Fiji'),(62,'Finland'),(63,'Falkland Islands'),(64,'France'),(65,'Gabon'),(66,'Gambia'),(67,'Georgia'),(68,'Germany'),(69,'Ghana'),(70,'Gibraltar'),(71,'Greece'),(72,'Greenland'),(73,'Grenada'),(74,'Guam'),(75,'Guatemala'),(76,'Guiana'),(77,'Guinea'),(78,'Guyana'),(79,'Haiti'),(80,'Hondoras'),(81,'Hong Kong'),(82,'Hungary'),(83,'Iceland'),(84,'India'),(85,'Indonesia'),(86,'Iran'),(87,'Iraq'),(88,'Ireland'),(89,'Israel'),(90,'Italy'),(91,'Jamaica'),(92,'Japan'),(93,'Jordan'),(94,'Kazakhstan'),(95,'Kenya'),(96,'Kiribati'),(97,'Korea'),(98,'Kyrgyzstan'),(99,'Lao'),(100,'Latvia'),(101,'Lesotho'),(102,'Liberia'),(103,'Liechtenstein'),(104,'Lithuania'),(105,'Luxembourg'),(106,'Macau'),(107,'Macedonia'),(108,'Madagascar'),(109,'Malawi'),(110,'Malaysia'),(111,'Maldives'),(112,'Mali'),(113,'Malta'),(114,'Marshal Islands'),(115,'Martinique'),(116,'Mauritania'),(117,'Mauritius'),(118,'Mayotte'),(119,'Mexico'),(120,'Micronesia'),(121,'Moldova'),(122,'Monaco'),(123,'Mongolia'),(124,'Montserrat'),(125,'Morocco'),(126,'Mozambique'),(127,'Myanmar'),(128,'Namibia'),(129,'Nauru'),(130,'Nepal'),(131,'Netherlands'),(132,'New Caledonia'),(133,'New Guinea'),(134,'New Zealand'),(135,'Nicaragua'),(136,'Nigeria'),(137,'Niue'),(138,'Norfolk Island'),(139,'Norway'),(140,'Palau'),(141,'Panama'),(142,'Paraguay'),(143,'Peru'),(144,'Puerto'),(145,'Philippines'),(146,'Poland'),(147,'Polynesia'),(148,'Portugal'),(149,'Romania'),(150,'Russia'),(151,'Rwanda'),(152,'Saint Lucia'),(153,'Samoa'),(154,'San Marino'),(155,'Senegal'),(156,'Seychelles'),(157,'Sierra Leone'),(158,'Singapore'),(159,'Slovakia'),(160,'Slovenia'),(161,'Somalia'),(162,'South Africa'),(163,'Spain'),(164,'Sri Lanka'),(165,'St. Helena'),(166,'Sudan'),(167,'Suriname'),(168,'Swaziland'),(169,'Sweden'),(170,'Switzerland'),(171,'Taiwan'),(172,'Tajikistan'),(173,'Tanzania'),(174,'Thailand'),(175,'Togo'),(176,'Tokelau'),(177,'Tonga'),(178,'Trinidad'),(179,'Tunisia'),(180,'Turkey'),(181,'Uganda'),(182,'Ukraine'),(183,'United Kingdom'),(184,'United States'),(185,'Uruguay'),(186,'Uzbekistan'),(187,'Vanuatu'),(188,'Venezuela'),(189,'Vietnam'),(190,'Virgin Islands'),(191,'Yugoslavia'),(192,'Zaire'),(193,'Zambia'),(194,'Zimbabwe');
/*!40000 ALTER TABLE `tbl_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_director`
--

DROP TABLE IF EXISTS `tbl_director`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_director` (
  `director_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `director_name` varchar(250) NOT NULL,
  PRIMARY KEY (`director_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_director`
--

LOCK TABLES `tbl_director` WRITE;
/*!40000 ALTER TABLE `tbl_director` DISABLE KEYS */;
INSERT INTO `tbl_director` VALUES (1,'James Gunn'),(2,'Christopher Nolan'),(3,'James Mangold'),(4,'Joon-ho Bong'),(5,'Bill Condon'),(6,'Mel Gibson'),(7,'Tim Miller'),(8,'Denis Villeneuve '),(9,'Dexter Fletcher'),(10,'Mike Mitchell'),(11,'Walt Dohrn'),(12,'Alejandro Gonzalez Inarritu'),(13,'John Crowley '),(14,'Robert Zemeckis'),(15,'Florian Gallenberger '),(16,'J.J. Abrams'),(17,'Damien Chazelle'),(18,'Joseph Gordon-Levitt '),(19,'Alfonso Cuaron'),(20,'Ang Lee'),(21,'David O. Russell');
/*!40000 ALTER TABLE `tbl_director` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_genre`
--

DROP TABLE IF EXISTS `tbl_genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_genre` (
  `genre_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `genre_name` varchar(125) NOT NULL,
  PRIMARY KEY (`genre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_genre`
--

LOCK TABLES `tbl_genre` WRITE;
/*!40000 ALTER TABLE `tbl_genre` DISABLE KEYS */;
INSERT INTO `tbl_genre` VALUES (1,'Action'),(2,'Adventure'),(3,'Comedy'),(4,'Crime'),(5,'Drama'),(6,'Historical'),(7,'Horror'),(8,'Musical'),(9,'Science Fiction'),(10,'War'),(11,'Western'),(12,'Animation'),(13,'Family'),(14,'Fantasy'),(15,'Romance'),(16,'Sport');
/*!40000 ALTER TABLE `tbl_genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_language`
--

DROP TABLE IF EXISTS `tbl_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_language` (
  `lang_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(250) NOT NULL,
  PRIMARY KEY (`lang_id`)
) ENGINE=InnoDB AUTO_INCREMENT=216 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_language`
--

LOCK TABLES `tbl_language` WRITE;
/*!40000 ALTER TABLE `tbl_language` DISABLE KEYS */;
INSERT INTO `tbl_language` VALUES (1,'Abkhaz'),(2,'Afar'),(3,'Afrikaans'),(4,'Akan'),(5,'Albanian'),(6,'Amharic'),(7,'Arabic'),(8,'Aragonese'),(9,'Armenian'),(10,'Assamese'),(11,'Avaric'),(12,'Avestan'),(13,'Aymara'),(14,'Azerbaijani'),(15,'Bambara'),(16,'Bashkir'),(17,'Basque'),(18,'Belarusian'),(19,'Bengali'),(20,'Bihari'),(21,'Bislama'),(22,'Bosnian'),(23,'Breton'),(24,'Bulgarian'),(25,'Burmese'),(26,'Catalan'),(27,'Valencian'),(28,'Chamorro'),(29,'Chechen'),(30,'Chichewa'),(31,'Chewa'),(32,'Nyanja'),(33,'Chinese'),(34,'Chuvash'),(35,'Cornish'),(36,'Corsican'),(37,'Cree'),(38,'Croatian'),(39,'Czech'),(40,'Danish'),(41,'Divehi'),(42,'Dhivehi'),(43,'Maldivian'),(44,'Dutch'),(45,'English'),(46,'Esperanto'),(47,'Estonian'),(48,'Ewe'),(49,'Faroese'),(50,'Fijian'),(51,'Finnish'),(52,'French'),(53,'Fula'),(54,'Fulah'),(55,'Pulaar'),(56,'Pular'),(57,'Galician'),(58,'Georgian'),(59,'German'),(60,'Greek'),(61,'Guaraní'),(62,'Gujarati'),(63,'Haitian'),(64,'Haitian Creole'),(65,'Hausa'),(66,'Hebrew'),(67,'Herero'),(68,'Hindi'),(69,'Hiri Motu'),(70,'Hungarian'),(71,'Interlingua'),(72,'Indonesian'),(73,'Interlingue'),(74,'Irish'),(75,'Igbo'),(76,'Inupiaq'),(77,'Ido'),(78,'Icelandic'),(79,'Italian'),(80,'Inuktitut'),(81,'Japanese'),(82,'Javanese'),(83,'Kalaallisut'),(84,'Greenlandic'),(85,'Kannada'),(86,'Kanuri'),(87,'Kashmiri'),(88,'Kazakh'),(89,'Khmer'),(90,'Kikuyu'),(91,'Gikuyu'),(92,'Kinyarwanda'),(93,'Kirghiz'),(94,'Kyrgyz'),(95,'Komi'),(96,'Kongo'),(97,'Korean'),(98,'Kurdish'),(99,'Kwanyama'),(100,'Kuanyama'),(101,'Latin'),(102,'Luxembourgish'),(103,'Letzeburgesch'),(104,'Luganda'),(105,'Limburgish'),(106,'Limburgan'),(107,'Limburger'),(108,'Lingala'),(109,'Lao'),(110,'Lithuanian'),(111,'Luba-Katanga'),(112,'Latvian'),(113,'Manx'),(114,'Macedonian'),(115,'Malagasy'),(116,'Malay'),(117,'Malayalam'),(118,'Maltese'),(119,'Maori'),(120,'Marathi'),(121,'Marshallese'),(122,'Mongolian'),(123,'Nauru'),(124,'Navajo'),(125,'Navaho'),(126,'Norwegian Bokmal'),(127,'North Ndebele'),(128,'Nepali'),(129,'Ndonga'),(130,'Norwegian Nynorsk'),(131,'Norwegian'),(132,'Nuosu'),(133,'South Ndebele'),(134,'Occitan'),(135,'Ojibwe'),(136,'Ojibwa'),(137,'Old Church Slavonic'),(138,'Church Slavic'),(139,'Church Slavonic'),(140,'Old Bulgarian'),(141,'Old Slavonic'),(142,'Oromo'),(143,'Oriya'),(144,'Ossetian'),(145,'Ossetic'),(146,'Panjabi'),(147,'Punjabi'),(148,'Pali'),(149,'Persian'),(150,'Polish'),(151,'Pashto'),(152,'Pushto'),(153,'Portuguese'),(154,'Quechua'),(155,'Romansh'),(156,'Kirundi'),(157,'Romanian'),(158,'Moldavian'),(159,'Moldovan'),(160,'Russian'),(161,'Sanskrit'),(162,'Sardinian'),(163,'Sindhi'),(164,'Northern Sami'),(165,'Samoan'),(166,'Sango'),(167,'Serbian'),(168,'Scottish Gaelic'),(169,'Gaelic'),(170,'Shona'),(171,'Sinhala'),(172,'Sinhalese'),(173,'Slovak'),(174,'Slovene'),(175,'Somali'),(176,'Southern Sotho'),(177,'Spanish'),(178,'Castilian'),(179,'Sundanese'),(180,'Swahili'),(181,'Swati'),(182,'Swedish'),(183,'Tamil'),(184,'Telugu'),(185,'Tajik'),(186,'Thai'),(187,'Tigrinya'),(188,'Tibetan Standard'),(189,'Tibetan'),(190,'Turkmen'),(191,'Tagalog'),(192,'Tswana'),(193,'Tonga'),(194,'Turkish'),(195,'Tsonga'),(196,'Tatar'),(197,'Twi'),(198,'Tahitian'),(199,'Uighur'),(200,'Uyghur'),(201,'Ukrainian'),(202,'Urdu'),(203,'Uzbek'),(204,'Venda'),(205,'Vietnamese'),(206,'Volapuk'),(207,'Walloon'),(208,'Welsh'),(209,'Wolof'),(210,'Western Frisian'),(211,'Xhosa'),(212,'Yiddish'),(213,'Yoruba'),(214,'Zhuang'),(215,'Chuang');
/*!40000 ALTER TABLE `tbl_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_mov_cast`
--

DROP TABLE IF EXISTS `tbl_mov_cast`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_mov_cast` (
  `mov_cast_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `movies_id` mediumint(9) NOT NULL,
  `cast_id` mediumint(9) NOT NULL,
  PRIMARY KEY (`mov_cast_id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_mov_cast`
--

LOCK TABLES `tbl_mov_cast` WRITE;
/*!40000 ALTER TABLE `tbl_mov_cast` DISABLE KEYS */;
INSERT INTO `tbl_mov_cast` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,2,6),(7,2,7),(8,2,8),(9,2,9),(10,2,10),(11,3,11),(12,3,12),(13,3,13),(14,3,14),(15,3,15),(16,4,16),(17,4,17),(18,4,18),(19,4,19),(20,4,20),(21,5,21),(22,5,22),(23,5,23),(24,5,24),(25,5,25),(26,6,26),(27,6,27),(28,6,28),(29,6,29),(30,6,30),(31,7,31),(32,7,32),(33,7,33),(34,7,34),(35,7,35),(36,8,36),(37,8,37),(38,8,38),(39,8,39),(40,8,40),(41,9,41),(42,10,42),(43,11,43),(44,12,44),(45,13,45),(46,14,21),(47,15,46),(48,16,47),(49,17,1),(50,18,45),(51,19,52),(52,20,53),(53,21,5);
/*!40000 ALTER TABLE `tbl_mov_cast` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_mov_country`
--

DROP TABLE IF EXISTS `tbl_mov_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_mov_country` (
  `mov_country_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `movies_id` mediumint(9) NOT NULL,
  `country_id` smallint(6) NOT NULL,
  PRIMARY KEY (`mov_country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_mov_country`
--

LOCK TABLES `tbl_mov_country` WRITE;
/*!40000 ALTER TABLE `tbl_mov_country` DISABLE KEYS */;
INSERT INTO `tbl_mov_country` VALUES (1,1,34),(2,1,134),(3,1,184),(4,2,184),(5,2,183),(6,2,131),(7,2,64),(8,3,12),(9,3,34),(10,3,184),(11,4,184),(12,4,97),(13,5,183),(14,5,184),(15,6,184),(16,6,12),(17,7,184),(18,8,184),(19,9,183),(20,9,184),(21,9,68),(22,10,184),(23,11,184),(24,11,81),(25,11,171);
/*!40000 ALTER TABLE `tbl_mov_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_mov_director`
--

DROP TABLE IF EXISTS `tbl_mov_director`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_mov_director` (
  `mov_director_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `movies_id` mediumint(9) NOT NULL,
  `director_id` smallint(6) NOT NULL,
  PRIMARY KEY (`mov_director_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_mov_director`
--

LOCK TABLES `tbl_mov_director` WRITE;
/*!40000 ALTER TABLE `tbl_mov_director` DISABLE KEYS */;
INSERT INTO `tbl_mov_director` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7),(8,8,8),(9,9,9),(10,10,10),(11,10,11),(12,11,12),(13,12,13),(14,13,14),(15,14,15),(16,15,16),(17,16,17),(18,17,1),(19,18,19),(20,19,20),(21,20,21);
/*!40000 ALTER TABLE `tbl_mov_director` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_mov_genre`
--

DROP TABLE IF EXISTS `tbl_mov_genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_mov_genre` (
  `mov_genre_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `movies_id` mediumint(9) NOT NULL,
  `genre_id` mediumint(9) NOT NULL,
  PRIMARY KEY (`mov_genre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_mov_genre`
--

LOCK TABLES `tbl_mov_genre` WRITE;
/*!40000 ALTER TABLE `tbl_mov_genre` DISABLE KEYS */;
INSERT INTO `tbl_mov_genre` VALUES (1,1,1),(2,1,2),(3,1,9),(4,2,1),(5,2,5),(6,2,6),(7,2,10),(8,3,1),(9,3,5),(10,3,9),(11,4,1),(12,4,2),(13,4,5),(14,4,9),(15,5,8),(16,5,13),(17,5,14),(18,6,5),(19,6,6),(20,6,10),(21,7,1),(22,7,2),(23,7,3),(24,7,15),(25,8,5),(26,8,9),(27,9,3),(28,9,5),(29,9,16),(30,10,14),(31,10,2),(32,10,3),(33,10,8),(34,10,13),(35,11,2),(36,11,5),(37,22,1);
/*!40000 ALTER TABLE `tbl_mov_genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_mov_lang`
--

DROP TABLE IF EXISTS `tbl_mov_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_mov_lang` (
  `mov_lang_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `movies_id` mediumint(9) NOT NULL,
  `language_id` smallint(6) NOT NULL,
  PRIMARY KEY (`mov_lang_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_mov_lang`
--

LOCK TABLES `tbl_mov_lang` WRITE;
/*!40000 ALTER TABLE `tbl_mov_lang` DISABLE KEYS */;
INSERT INTO `tbl_mov_lang` VALUES (1,1,45),(2,2,45),(3,2,52),(4,2,59),(5,3,45),(6,3,177),(7,4,45),(8,4,177),(9,4,97),(10,5,45),(11,6,45),(12,6,81),(13,7,45),(14,8,45),(15,8,33),(16,8,160),(17,9,45),(18,9,126),(19,9,59),(20,10,45),(21,11,45),(22,11,52);
/*!40000 ALTER TABLE `tbl_mov_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_mov_studio`
--

DROP TABLE IF EXISTS `tbl_mov_studio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_mov_studio` (
  `mov_studio_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `movies_id` mediumint(9) NOT NULL,
  `studio_id` smallint(6) NOT NULL,
  PRIMARY KEY (`mov_studio_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_mov_studio`
--

LOCK TABLES `tbl_mov_studio` WRITE;
/*!40000 ALTER TABLE `tbl_mov_studio` DISABLE KEYS */;
INSERT INTO `tbl_mov_studio` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7),(8,8,8),(9,9,9),(10,10,10),(11,11,11),(12,12,12),(13,13,13),(14,14,14),(15,15,15),(16,16,16),(17,17,1),(18,18,17),(19,19,18),(20,20,19),(21,21,20);
/*!40000 ALTER TABLE `tbl_mov_studio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_movies`
--

DROP TABLE IF EXISTS `tbl_movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_movies` (
  `movies_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `movies_cover` varchar(75) NOT NULL DEFAULT 'cover_default.jpg',
  `movies_title` varchar(125) NOT NULL,
  `movies_year` varchar(5) NOT NULL,
  `movies_runtime` varchar(25) NOT NULL,
  `movies_storyline` text NOT NULL,
  `movies_trailer` varchar(75) NOT NULL DEFAULT 'trailer_default.jpg',
  `movies_release` varchar(125) NOT NULL,
  PRIMARY KEY (`movies_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_movies`
--

LOCK TABLES `tbl_movies` WRITE;
/*!40000 ALTER TABLE `tbl_movies` DISABLE KEYS */;
INSERT INTO `tbl_movies` VALUES (1,'allure.jpg','Allure','2017','2h 20m','A house cleaner meets a teenaged girl and convinces her to run away and live with her in secret','','2017'),(2,'backtothefuture.jpeg','Back to the Future','1985','1h 56m','Marty McFly, a 17-year-old high school student, is accidentally sent thirty years into the past in a time-traveling DeLorean invented by his close friend, the maverick scientist Doc Brown.\n','','1985'),(3,'batmandarkknight.jpg','Batman : The dark knight ','2008','2h 30m','When the menace known as the Joker emerges from his mysterious past, he wreaks havoc and chaos on the people of Gotham, the Dark Knight must accept one of the greatest psychological and physical tests of his ability to fight injustice.','','2008'),(4,'blackpanther.jpg','Black Panther 2018','2018','2h 20m','T\'Challa, the King of Wakanda, rises to the throne in the isolated, technologically advanced African nation, but his claim is challenged by a vengeful outsider who was a childhood victim of T\'Challa\'s father\'s mistake.','','2018'),(5,'cityofgod.jpeg','City of God','2002','2h 15m','Two boys growing up in a violent neighborhood of Rio de Janeiro take different paths: one becomes a photographer, the other a drug dealer\n','','2002'),(6,'deathwish.jpeg','Death Wish','2018','2h','Dr. Paul Kersey is an experienced trauma surgeon, a man who has spent his life saving lives. After an attack on his family, Paul embarks on his own mission for justice.','','2018'),(7,'figthclub.jpg','Fight Club ','1999','2h 30m','An insomniac office worker, looking for a way to change his life, crosses paths with a devil-may-care soapmaker, forming an underground fight club that evolves into something much, much more.','','1999'),(8,'forrestgump.jpg','Forrest Gump','1994','2h 20m','The presidencies of Kennedy and Johnson, Vietnam, Watergate, and other history unfold through the perspective of an Alabama man with an IQ of 75.','','1994'),(9,'inception.jpg','Inception','2010','2h 28m','A thief, who steals corporate secrets through the use of dream-sharing technology, is given the inverse task of planting an idea into the mind of a CEO.','','2010'),(10,'inglorious.jpg','Inglorious Basterds','2009','2h 33m','In Nazi-occupied France during World War II, a plan to assassinate Nazi leaders by a group of Jewish U.S. soldiers coincides with a theatre owner\'s vengeful plans for the same.\n','','1983'),(11,'interstellar.jpg','Interstellar','2014','2h 30m','A team of explorers travel through a wormhole in space in an attempt to ensure humanity\'s survival.','','2014'),(12,'josie.jpeg','Josie','2017','1h 50 m','Hank, a solitary man living a dull existence in the sleepy, Southern town raises eyebrows when he develops a questionable relationship with Josie, a recently transplanted high school student.','','2017'),(13,'jumanji.jpeg','Jumanji: Welcome to the Jungle','2017','2h 20m','Four teenagers are sucked into a magical video game, and the only way they can escape is to work together to finish the game.','','2017'),(14,'leon.jpg','Leon: The professional','1994','2h','Mathilda, a 12-year-old girl, is reluctantly taken in by Léon, a professional assassin, after her family is murdered. Léon and Mathilda form an unusual relationship, as she becomes his protégée and learns the assassin\'s trade.','','1994'),(15,'life.jpg','Life is Beautiful','1997','2h 2m','\nWhen an open-minded Jewish librarian and his son become victims of the Holocaust, he uses a perfect mixture of will, humor, and imagination to protect his son from the dangers around their camp.','','1997'),(16,'cuckosnest.jpg','One Flew Over the Cuckoo’s Nest','1975','2h 14m','\nA criminal pleads insanity after getting into trouble again and once in the mental institution rebels against the oppressive nurse and rallies up the scared patients.','','1975'),(17,'princess.jpg','Princess Mononoke','1997','1h 45m','On a journey to find the cure for a Tatarigami\'s curse, Ashitaka finds himself in the middle of a war between the forest gods and Tatara, a mining colony. In this quest he also meets San, the Mononoke Hime.','','1997'),(18,'redsparrow.jpeg','Red Sparrow','2018','1h 50m','Ballerina Dominika Egorova is recruited to \'Sparrow School,\' a Russian intelligence service where she is forced to use her body as a weapon. Her first mission, targeting a C.I.A. agent, threatens to unravel the security of both nations','','2018'),(19,'scarface.jpg','Scarface','1983','2h 50m','In Miami in 1980, a determined Cuban immigrant takes over a drug cartel and succumbs to greed.','','2009'),(20,'se7en.jpg','Se7en','1995','2h 8m','Two detectives, a rookie and a veteran, hunt a serial killer who uses the seven deadly sins as his motives.','','1995'),(21,'intouchables.jpg','The Intouchables','2011','2h','After he becomes a quadriplegic from a paragliding accident, an aristocrat hires a young man from the projects to be his caregiver.','','2011'),(22,'redemption.jpg','The Shawshank Redemption ','1994','2h 20m','Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.','','2017'),(23,'tmbraider.jpg','Tomb Raider','2018','2h','Lara Croft, the fiercely independent daughter of a missing adventurer, must push herself beyond her limits when she finds herself on the island where her father disappeared.\n','','2018'),(24,'up.jpg','Up','2009','1h 36m','Seventy-eight year old Carl Fredricksen travels to Paradise Falls in his home equipped with balloons, inadvertently taking a young stowaway.','','2009'),(25,'whiplash.jpg','Whiplash','2014','2h','A promising young drummer enrolls at a cut-throat music conservatory where his dreams of greatness are mentored by an instructor who will stop at nothing to realize a student\'s potential.','','2014');
/*!40000 ALTER TABLE `tbl_movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_studio`
--

DROP TABLE IF EXISTS `tbl_studio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_studio` (
  `studio_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `studio_name` varchar(125) NOT NULL,
  PRIMARY KEY (`studio_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_studio`
--

LOCK TABLES `tbl_studio` WRITE;
/*!40000 ALTER TABLE `tbl_studio` DISABLE KEYS */;
INSERT INTO `tbl_studio` VALUES (1,'Marvel Studios'),(2,'Syncopy'),(3,'Donners Company'),(4,'Kate Street Picture Company'),(5,'Mandeville Films'),(6,'Cross Creek Pictures'),(7,'Twentieth Century Fox Film Corporation'),(8,'Lava Bear Films'),(9,'Hurwitz Creative'),(10,'DreamWorks Animation'),(11,'Regency Enterprises'),(12,'Wildgaze Films'),(13,'Sony Pictures Entertainment (SPE)'),(14,'Majestic Filmproduktion'),(15,'Lucasfilm'),(16,'Bold Films'),(17,'Voltage Pictures'),(18,'Warner Bros.'),(19,'Fox 2000 Pictures'),(20,'Weinstein Company');
/*!40000 ALTER TABLE `tbl_studio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_urating`
--

DROP TABLE IF EXISTS `tbl_urating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_urating` (
  `rating_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `rating_number` tinyint(4) NOT NULL,
  PRIMARY KEY (`rating_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_urating`
--

LOCK TABLES `tbl_urating` WRITE;
/*!40000 ALTER TABLE `tbl_urating` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_urating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_user` (
  `user_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_fname` varchar(250) NOT NULL,
  `user_name` varchar(250) NOT NULL,
  `user_pass` varchar(250) NOT NULL,
  `user_email` varchar(250) NOT NULL,
  `user_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_ip` varchar(50) NOT NULL DEFAULT 'no',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_user`
--

LOCK TABLES `tbl_user` WRITE;
/*!40000 ALTER TABLE `tbl_user` DISABLE KEYS */;
INSERT INTO `tbl_user` VALUES (1,'admin','admin','202cb962ac59075b964b07152d234b70','test@test.ca','2018-03-30 00:06:55','::1');
/*!40000 ALTER TABLE `tbl_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-02 17:17:40
