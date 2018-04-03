-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: veronikab
-- ------------------------------------------------------
-- Server version	5.7.21-log

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
-- Table structure for table `actors`
--

DROP TABLE IF EXISTS `actors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actors` (
  `actor_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(45) NOT NULL,
  `lastName` varchar(45) NOT NULL,
  PRIMARY KEY (`actor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actors`
--

LOCK TABLES `actors` WRITE;
/*!40000 ALTER TABLE `actors` DISABLE KEYS */;
INSERT INTO `actors` VALUES (1,'Alicia','Vikander'),(2,'Krysten','Ritter'),(3,'Robert','Downey Jr.'),(4,'Chris','Evens'),(5,'Mark','Ruffalo'),(6,'Chris','Hemsworth'),(7,'Scarlett','Johansson'),(8,'Cobie','Smulders'),(9,'Stellan','Skarsgård'),(10,'Samuel L.','Jackson'),(11,'Gwyneth','Paltrow'),(12,'Jennifer','Lawrence'),(13,'Rose','Byrne'),(14,'Michael','Fassbender'),(15,'Hugh','Jackman'),(16,'Ryan','Renolds'),(17,'Leonardo','DiCaprio'),(18,'Kate','Hudson');
/*!40000 ALTER TABLE `actors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `street` varchar(45) NOT NULL,
  `zipCode` int(11) NOT NULL,
  `city` varchar(45) NOT NULL,
  `country` varchar(45) NOT NULL,
  PRIMARY KEY (`address_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'Gränden 4',58732,'Perstorp','Sweden'),(2,'Snigelvägen 34',93067,'Örebro','Sweden'),(3,'Grävaregatan 12',67501,'Själevad','Sweden'),(4,'Stigen 43',54784,'Sundbyberg','Sweden'),(5,'Essinge brogatan 14',13564,'Stockholm','Sweden'),(6,'Skepparegatan 4',64342,'Linköping','Sweden'),(7,'Skogsvägen 3',14365,'Karlskrona','Sweden'),(8,'Sveavägen 67',15963,'Stockholm','Sweden'),(9,'Slottsstigen 1',36419,'Linköping','Sweden'),(10,'Fågelvägen 5',38980,'Johanneshov','Sweden'),(11,'Dunteberget 76',37105,'Bromma','Sweden'),(12,'Skidbacken 32',51043,'Sunne','Sweden'),(13,'Korsvägen 61',48323,'Västerås','Sweden'),(14,'Ullevigatan 9',60724,'Kalmar','Sweden'),(15,'Bananvägen 13',32892,'Vadstena','Sweden'),(16,'Äpplegatan 10',64684,'Uppsala','Sweden'),(17,'Kiwigränd 21',43012,'Uppsala','Sweden'),(18,'Ananasstigen 56',77921,'Ellös','Sweden'),(19,'Mangogatan 7',45964,'Norberg','Sweden'),(20,'Bråstorpsvägen 45',21345,'Hallsberg','Sweden'),(21,'Fågelstigen 20',14370,'Hammarbyhöjden','Sweden'),(22,'Trumpetvägen',12398,'Globen','Sweden'),(23,'Gruvgatan',34256,'Kalmar','Sweden'),(24,'Klövervägen 4',34561,'Solna','Sweden'),(25,'Kungshamravägen 8',32176,'Bergshamra','Sweden'),(26,'Skepparegatan 31',54687,'Mjölby','Sweden'),(27,'Äppelvägen 43',16589,'Linköping','Sweden'),(28,'Vindruvervägen 3',58254,'Norrköping','Sweden'),(29,'Grävaregatan 20',67985,'Jönköping','Sweden');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(45) NOT NULL,
  `lastName` varchar(45) NOT NULL,
  `e-mail` varchar(45) NOT NULL,
  `phoneNumber` varchar(45) NOT NULL,
  `personalNumber` varchar(45) NOT NULL,
  `address_id` int(11) NOT NULL,
  `employees_id` int(11) NOT NULL,
  PRIMARY KEY (`customer_id`),
  KEY `fk_customers_address1_idx` (`address_id`),
  KEY `fk_customers_employees1_idx` (`employees_id`),
  CONSTRAINT `fk_customers_address1` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_customers_employees1` FOREIGN KEY (`employees_id`) REFERENCES `employees` (`employees_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Eva','Larsson','eva.larsson@gmail.com','070-6780943','760403-1978',3,5),(2,'Kalle','Svensson','kalle.svensson@gmail.com','070-5867403','550918-4502',19,3),(3,'Per','Larsson','per.lasson@hotmail.com','070-3209856','840310-3420',20,4),(4,'Stina','Andersson','stina.andersson@hotmail.com','070-0973415','620419-4501',26,7),(5,'David','Holmlund','david.holmlund@yahoo.com','070-3409863','790627-5038',23,9),(6,'Dennis','Granath','d.granath@office.se','070-3209865','940203-5749',24,6),(7,'Roger','Brunh','roger.b@telia.se','070-2109873','871130-2320',28,9),(8,'Jennifer','Jansson','jennifer.jansson@gmail.com','070-0033998','531231-1456',5,9),(9,'Annie','Öberg','a.oberg@hotmail.com','070-1086643','760826-4365',10,3),(10,'Anette','Öberg','nettan_o@mail.nu','070-2109810','840513-2425',6,5),(11,'Fredrik','Karlsson','karlsson86@gmail.com','070-0011338','860914-1013',6,5),(12,'Kim','Johansson','kimpa1975@hotmail.com','070-0984326','750302-1439',4,7),(13,'Lina','Johansson','linajohansson_76@yahoo.com','070-4397564','760914-5498',7,7),(14,'Lilian','Lundblad','lilian1963Lundblad@gmail.com','070-2340942','630124-2301',4,6),(15,'Gun','Ljungqvist','gunnsan74@mail.nu','073-2301435','741023-0931',15,9),(16,'Ingvar','Karlström','ingvar.karlström@gmail.com','073-0951437','701205-4078',15,4),(17,'Sanna','Muhic','sanna.muhic@hotmail.com','072-0998322','911004-5023',11,7),(18,'Mirza','Kalludra','Kalludra.m@gmail.com','072-4409493','920930-3402',3,9),(19,'Dino','Muhic','Dino1958@hotmail.com','070-4238972','580423-2454',11,4);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directors`
--

DROP TABLE IF EXISTS `directors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directors` (
  `director_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(45) NOT NULL,
  `lastName` varchar(45) NOT NULL,
  PRIMARY KEY (`director_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directors`
--

LOCK TABLES `directors` WRITE;
/*!40000 ALTER TABLE `directors` DISABLE KEYS */;
INSERT INTO `directors` VALUES (1,'Gavin','Hood'),(2,'Joss','Whedon'),(3,'Gary','Ross'),(4,'David','Russell'),(5,'Tim','Miller'),(6,'David','Soren'),(7,'Kirk','De Micco'),(8,'Martin','Campbell'),(9,'Quentin','Tarantino'),(10,'Steven','Spielberg'),(11,'James','Cameron'),(12,'Tim','Burton'),(13,'Lasse','Hallberg'),(14,'Christopher','Nolan'),(15,'Fisher','Stevens');
/*!40000 ALTER TABLE `directors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employees` (
  `employees_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(45) DEFAULT NULL,
  `lastName` varchar(45) DEFAULT NULL,
  `e-mail` varchar(45) DEFAULT NULL,
  `phoneNumber` varchar(45) DEFAULT NULL,
  `jobtitle` varchar(45) DEFAULT NULL,
  `address_id` int(11) NOT NULL,
  PRIMARY KEY (`employees_id`),
  KEY `fk_employees_address1_idx` (`address_id`),
  CONSTRAINT `fk_employees_address1` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'Violetta','Karlström','violetta.karlstrom@maxfilmer.se','070-3480643','Administratör',1),(2,'Max','Näslund','max.naslund@maxfilmer.se','070-1236578','VD',1),(3,'Camilla','Svensson','camilla.svensson@maxfilmer.se','073-6590304','Säljare',1),(4,'Jonas','Gustavsson','jonas.gustavsson@maxfilmer.se','073-9085463','Säljare',1),(5,'Maximilian','Ibrahimovic','maximilian.ibrahmovic@maxfilmer.se','072-5467809','Säljare',1),(6,'Daniel','Svärd','daniel.svard@maxfilmer.se','072-4569801','Säljare',1),(7,'Fredrika','Brolin','fredrika.brolin@maxfilmer.se','073-1239803','Säljare',1),(8,'Olof','Mellberg','olof.mellberg@maxfilmer.se','070-3450921','Webbutvecklare',1),(9,'Fredrik','Ljungberg','fredrik.ljungber9@maxfilmer.se','073-0983452','Säljare',1),(10,'Henrik','Larsson','henrik.larsson@maxfilmer.se','070-3247687','Webbutvecklare',1);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genre` (
  `genre_id` int(11) NOT NULL AUTO_INCREMENT,
  `genre` varchar(45) NOT NULL,
  PRIMARY KEY (`genre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre`
--

LOCK TABLES `genre` WRITE;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
INSERT INTO `genre` VALUES (1,'Comedies'),(2,'Romance'),(3,'Action'),(4,'Animation'),(5,'Drama'),(6,'Sci-fi'),(7,'Crime');
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movies` (
  `movie_id` int(11) NOT NULL AUTO_INCREMENT,
  `movieName` varchar(45) NOT NULL,
  `releaseYear` year(4) NOT NULL,
  `genre_id` int(11) NOT NULL,
  `actor_id` int(11) NOT NULL,
  `director_id` int(11) NOT NULL,
  `description` varchar(45) DEFAULT NULL,
  `rentalTime` int(11) NOT NULL,
  `InStock` int(11) DEFAULT NULL,
  PRIMARY KEY (`movie_id`),
  KEY `fk_movies_genre1_idx` (`genre_id`),
  KEY `fk_movies_directors1_idx` (`director_id`),
  KEY `fk_movies_actors1_idx` (`actor_id`),
  CONSTRAINT `fk_movies_actors1` FOREIGN KEY (`actor_id`) REFERENCES `actors` (`actor_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_movies_directors1` FOREIGN KEY (`director_id`) REFERENCES `directors` (`director_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_movies_genre1` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`genre_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (1,'IronMan',2010,6,3,3,'IronMan fighting agains bad creatures',4,10),(2,'Sliding Doors',1998,5,11,2,'Ramantic movie about how two people meet',4,15),(3,'Avengers',2012,6,3,10,'A couple of Heros Fighting',4,20),(4,'The Danish Girl',2015,5,1,7,'Boy becomes girl',4,10),(35,'Captain America',2016,3,4,6,'A strong Captain against the world',4,20),(36,'Titanic',1997,2,17,14,'Sinking ship',4,30),(37,'Hunger Games',2012,6,12,12,'young kids forced to war on each other',4,10),(38,'Silver linings',2012,2,12,4,'Boy meets girl',4,15),(39,'The Wolf of Wallstreet',2013,1,17,7,'rich man throwing money around him',4,30),(40,'How to Lose a guy in 10 Days',2016,1,18,6,'How to Lose a guy in 10 Days',4,10),(41,'Gifted',2017,5,13,8,NULL,4,20),(42,'Sherlock Holmes',2009,7,3,3,'Crime master',4,10),(43,'Her',2013,5,7,2,'How to become friends with a voice',4,15),(44,'Sing',2016,4,7,4,'Singing animals',4,20),(45,'Deadpool',2014,3,16,9,'Guy in red suit',4,10),(46,'X-men',2001,6,15,10,'Guy with metal claws',4,20),(47,'Turbo',2013,4,10,15,'racing snail',4,25),(48,'Light between oceans',2016,2,14,11,'Romance between a lighthouse',4,30),(49,'Good Will Hunting',1997,5,6,7,'Oh captain my captain',4,15),(50,'Borg',2017,5,9,2,'Tennis in the 80`s',4,20);
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rental`
--

DROP TABLE IF EXISTS `rental`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rental` (
  `rental_id` int(11) NOT NULL AUTO_INCREMENT,
  `rentalDate` date NOT NULL,
  `returnDate` date NOT NULL,
  `status` tinyint(4) NOT NULL,
  `comment` varchar(45) DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  PRIMARY KEY (`rental_id`),
  KEY `fk_rental_customers1_idx` (`customer_id`),
  KEY `fk_rental_movies1_idx` (`movie_id`),
  CONSTRAINT `fk_rental_customers1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_rental_movies1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rental`
--

LOCK TABLES `rental` WRITE;
/*!40000 ALTER TABLE `rental` DISABLE KEYS */;
INSERT INTO `rental` VALUES (1,'2017-09-01','2017-09-05',0,'returned in time',8,38),(2,'2018-01-03','2018-04-12',1,'not returned in time',10,36),(3,'2018-03-05','2018-03-09',0,'returned in time',14,3),(4,'2018-04-12','2018-04-16',1,'not returned in time',19,43),(5,'2018-01-06','2018-01-10',0,'returned in time',3,50),(6,'2018-01-06','2018-01-20',1,'not returned in time',3,2),(7,'2017-10-13','2017-10-19',1,'not returned in time',5,35),(8,'2017-01-13','2017-10-19',1,'not returned in time',5,40),(9,'2017-11-01','2017-11-05',0,'returned in time',9,41),(10,'2017-11-23','2017-11-27',0,'returned in time',11,1),(11,'2018-02-03','2018-02-07',0,'returned in time',11,48),(12,'2018-02-15','2018-02-19',0,'returned in time',15,49),(13,'2018-03-23','2018-03-27',0,'returned in time',1,39),(14,'2018-03-08','2018-03-12',0,'returned in time',2,37),(15,'2018-02-04','2018-03-12',1,'not returned in time',4,39),(16,'2018-01-24','2018-01-28',0,'returned in time',4,41);
/*!40000 ALTER TABLE `rental` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-03 13:54:48
