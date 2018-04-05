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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actors`
--

LOCK TABLES `actors` WRITE;
/*!40000 ALTER TABLE `actors` DISABLE KEYS */;
INSERT INTO `actors` VALUES (1,'Alicia','Vikander'),(2,'Krysten','Ritter'),(3,'Robert','Downey Jr.'),(4,'Chris','Evens'),(5,'Mark','Ruffalo'),(6,'Chris','Hemsworth'),(7,'Scarlett','Johansson'),(8,'Cobie','Smulders'),(9,'Stellan','Skarsgård'),(10,'Samuel L.','Jackson'),(11,'Gwyneth','Paltrow'),(12,'Jennifer','Lawrence'),(13,'Rose','Byrne'),(14,'Michael','Fassbender'),(15,'Hugh','Jackman'),(16,'Ryan','Renolds'),(17,'Leonardo','DiCaprio'),(18,'Kate','Hudson'),(19,'Ryan','Gossling'),(20,'Emma','Stone'),(21,'Steve','Carell'),(22,'Christian','Bale'),(23,'Brad','Pitt'),(24,'Jason','Segel'),(25,'Tim','Robbins'),(26,'Morgan','Freeman'),(27,'Liam','Neeson'),(28,'Edward','Norton'),(29,'Matthew','McConaughey'),(30,'Anne','Hathaway'),(31,'Damon ','Wayans Jr'),(32,'Ryan','Potter'),(33,'Hugh','Grant'),(34,'Julia','Roberts');
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Eva','Larsson','eva.larsson@gmail.com','070-6780943','760403-1978',3,5),(2,'Kalle','Svensson','kalle.svensson@gmail.com','070-5867403','550918-4502',19,3),(3,'Per','Larsson','per.lasson@hotmail.com','070-3209856','840310-3420',20,4),(4,'Stina','Andersson','stina.andersson@hotmail.com','070-0973415','620419-4501',26,7),(5,'David','Holmlund','david.holmlund@yahoo.com','070-3409863','790627-5038',23,9),(6,'Dennis','Granath','d.granath@office.se','070-3209865','940203-5749',24,6),(7,'Roger','Brunh','roger.b@telia.se','070-2109873','871130-2320',28,9),(8,'Jennifer','Jansson','jennifer.jansson@gmail.com','070-0033998','531231-1456',5,9),(9,'Annie','Öberg','a.oberg@hotmail.com','070-1086643','760826-4365',10,3),(10,'Anette','Öberg','nettan_o@mail.nu','070-2109810','840513-2425',6,5),(11,'Fredrik','Karlsson','karlsson86@gmail.com','070-0011338','860914-1013',6,5),(12,'Kim','Johansson','kimpa1975@hotmail.com','070-0984326','750302-1439',4,7),(13,'Lina','Johansson','linajohansson_76@yahoo.com','070-4397564','760914-5498',7,7),(14,'Lilian','Lundblad','lilian1963Lundblad@gmail.com','070-2340942','630124-2301',4,6),(15,'Gun','Ljungqvist','gunnsan74@mail.nu','073-2301435','741023-0931',15,9),(16,'Ingvar','Karlström','ingvar.karlström@gmail.com','073-0951437','701205-4078',15,4),(17,'Sanna','Muhic','sanna.muhic@hotmail.com','072-0998322','911004-5023',11,7),(18,'Mirza','Kalludra','Kalludra.m@gmail.com','072-4409493','920930-3402',3,9),(19,'Dino','Muhic','Dino1958@hotmail.com','070-4238972','580423-2454',11,4),(20,'Jessica','Danielsson','j.danielsson@outlook.se','073-5672898','930210-2426',29,5),(21,'Andreas','Svensson','andreas.svensson@yahoo.com','072-4560203','850315-4587',2,6),(22,'Lars','Fredriksson','lars.fredrik@hotmail.com','073-2357698','670516-3497',8,3),(23,'Denise','Hansson','denise_hansson@gmail.com','070-8904536','780402-0430',9,7),(24,'Anne','Karlberg','anne.karlberg@mail.com','070-4590323','891225-7803',12,9),(25,'Ronny','Otterborg','r_otterborg@hotmail.com','070-0034854','771030-3476',13,6),(26,'Tonny','Öberg','tonny83oberg@gmail.com','070-0312432','830808-4509',14,7),(27,'Christian','Sjöberg','christina_sjoberg@yahoo.se','070-3098565','730706-1023',16,9),(28,'Sara','Hjalmarsson','hjalmarsson76@gmail.com','070-2095463','761118-2309',17,3),(29,'Sophie','Kronlund','s_kronlund@hotmail.com','070-1005544','831113-2024',18,4),(30,'Isabelle','Börjesson','isabella84borjesson@gmail.com','070-9994599','710606-2026',21,5),(31,'Lovisa','Granqvist','lovisa.granqvist@mail.com','070-8833550','700123-2826',22,7),(32,'Frida','Ljungström','frida96ljungstrom@yahoo.com','070-7733254','680423-2628',25,9),(33,'Margareta','Scheelin','margareta.scheelin@hotmail.com','072-0123654','650914-2428',27,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directors`
--

LOCK TABLES `directors` WRITE;
/*!40000 ALTER TABLE `directors` DISABLE KEYS */;
INSERT INTO `directors` VALUES (1,'Gus','Van Sant'),(2,'Joss','Whedon'),(3,'Gary','Ross'),(4,'Roger','Michell'),(5,'Tim','Miller'),(6,'David','Soren'),(7,'Guy','Ritchie'),(8,'Spike','Jonze'),(9,'Damien','Chazelle'),(10,'Steven','Spielberg'),(11,'James','Cameron'),(12,'Donald','Petrie'),(13,'Mark','Webb'),(14,'Christopher','Nolan'),(15,'Tom','Hooper'),(16,'Don','Hall'),(17,'Adam','McKay'),(18,'Martin','Scorsese'),(19,'Frank','Darabont'),(20,'David','Fincher'),(21,'Tony','Kaye'),(22,'Pierre','Coffin'),(23,'Jon','Favreau'),(24,'Anthony','Russo'),(25,'Joe','Russo'),(26,'Garth','Jennings'),(27,'Christophe','Lourdelet'),(28,'Bryan','Singer'),(29,'Derek','Cianfrance'),(30,'Janus','Mets'),(31,'Glenn','Ficarra'),(32,'John','Requa'),(33,'Don','Hall'),(34,'Chris','Williams'),(35,'Peter','Howitt'),(36,'David','Russell');
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre`
--

LOCK TABLES `genre` WRITE;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
INSERT INTO `genre` VALUES (1,'Comedy'),(2,'Romance'),(3,'Action'),(4,'Animation'),(5,'Drama'),(6,'Sci-fi'),(7,'Crime'),(8,'Adventure'),(9,'Fantasy'),(10,'Biography'),(11,'Thriller'),(12,'Music');
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;
UNLOCK TABLES;

--

-- Temporary view structure for view `genre_movies`
--

DROP TABLE IF EXISTS `genre_movies`;
/*!50001 DROP VIEW IF EXISTS `genre_movies`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `genre_movies` AS SELECT 
 1 AS `Genre`,
 1 AS `Movies`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `movie_collection`
--

DROP TABLE IF EXISTS `movie_collection`;
/*!50001 DROP VIEW IF EXISTS `movie_collection`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `movie_collection` AS SELECT 
 1 AS `movieName`,
 1 AS `releaseYear`,
 1 AS `Actors`,
 1 AS `Directors`,
 1 AS `Genre`,
 1 AS `description`,
 1 AS `rentalTime`,
 1 AS `inStock`*/;
SET character_set_client = @saved_cs_client;

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
  `description` varchar(255) DEFAULT NULL,
  `rentalTime` int(11) NOT NULL,
  `inStock` int(11) NOT NULL,
  PRIMARY KEY (`movie_id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (1,'IronMan',2010,'IronMan fighting agains bad creatures',4,10),(2,'Sliding Doors',1998,'Ramantic movie about how two people meet',4,15),(3,'Avengers',2012,'A couple of Heros Fighting',4,20),(4,'The Danish Girl',2015,'Boy becomes girl',4,10),(35,'Captain America',2016,'A strong Captain against the world',4,20),(36,'Titanic',1997,'Sinking ship',4,30),(37,'Hunger Games',2012,'young kids forced to war on each other',4,10),(38,'Silver linings',2012,'Boy meets girl',4,15),(39,'The Wolf of Wallstreet',2013,'rich man throwing money around him',4,30),(40,'How to Lose a guy in 10 Days',2016,'How to Lose a guy in 10 Days',4,10),(41,'Gifted',2017,NULL,4,20),(42,'Sherlock Holmes',2009,'Crime master',4,10),(43,'Her',2013,'How to become friends with a voice',4,15),(44,'Sing',2016,'Singing animals',4,20),(45,'Deadpool',2014,'Guy in red suit',4,10),(46,'X-men: Days of Future Past',2014,'Guy with metal claws and friends',4,20),(47,'Turbo',2013,'racing snail',4,25),(48,'Light between oceans',2016,'Romance between a lighthouse',4,30),(49,'Good Will Hunting',1997,'Oh captain my captain',4,15),(50,'Borg',2017,'Tennis in the 80`s',4,20),(56,'Notting hill',1999,'bookstore owner meet the world`s most best-liked actress ',4,20),(57,'The Shawshank Redemption',1994,'Story of a American banker who finds himself to be an inmate for a crime he didn`t commit ',4,10),(58,'Schindler`s List',1993,'German greedy businessman who becomes an unlikely humanitarian',4,15),(59,'Fight Club',1999,'Underground fighting',4,15),(60,'Intersteller',2014,'Lost in space trying to save the human race',4,20),(61,'Big Hero 6',2014,'A good friend in need',4,10),(62,'Despicable Me',2010,'A lot of Minions',4,30),(63,'The Big Short',2015,'The true story of a handful of investors who bet against the US mortgage market in 2006-7',4,15),(64,'Crazy Stupid Love',2011,'A middle-aged husband`s life changes dramatically when his wife asks him for a divorce',4,10),(65,'La La Land',2016,'A musical with a lot of singing and dancing',4,30),(66,'American History X',1998,'A former neo-nazi skinhead tries to prevent his younger brother from going down the same wrong path that he did',4,10),(67,'Batman Begins',2005,'The story of the billionaire playboy Bruce Wayne',4,30);
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies_actors`
--

DROP TABLE IF EXISTS `movies_actors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movies_actors` (
  `movie_id` int(11) NOT NULL,
  `actor_id` int(11) NOT NULL,
  PRIMARY KEY (`movie_id`,`actor_id`),
  KEY `fk_movies_has_actors_actors1_idx` (`actor_id`),
  KEY `fk_movies_has_actors_movies1_idx` (`movie_id`),
  CONSTRAINT `fk_movies_has_actors_actors1` FOREIGN KEY (`actor_id`) REFERENCES `actors` (`actor_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_movies_has_actors_movies1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies_actors`
--

LOCK TABLES `movies_actors` WRITE;
/*!40000 ALTER TABLE `movies_actors` DISABLE KEYS */;
INSERT INTO `movies_actors` VALUES (4,1),(48,1),(1,3),(3,3),(35,3),(42,3),(3,4),(35,4),(41,4),(3,5),(3,6),(3,7),(43,7),(44,7),(3,8),(3,9),(49,9),(50,9),(3,10),(47,10),(1,11),(2,11),(3,11),(37,12),(38,12),(46,12),(46,14),(48,14),(46,15),(45,16),(47,16),(36,17),(39,17),(40,18),(63,19),(64,19),(65,19),(64,20),(65,20),(62,21),(63,21),(64,21),(63,22),(67,22),(59,23),(63,23),(62,24),(57,25),(57,26),(58,27),(67,27),(59,28),(66,28),(40,29),(44,29),(60,29),(60,30),(61,31),(61,32),(56,33),(56,34);
/*!40000 ALTER TABLE `movies_actors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies_directors`
--

DROP TABLE IF EXISTS `movies_directors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movies_directors` (
  `movie_id` int(11) NOT NULL,
  `director_id` int(11) NOT NULL,
  PRIMARY KEY (`movie_id`,`director_id`),
  KEY `fk_movies_has_directors_directors1_idx` (`director_id`),
  KEY `fk_movies_has_directors_movies1_idx` (`movie_id`),
  CONSTRAINT `fk_movies_has_directors_directors1` FOREIGN KEY (`director_id`) REFERENCES `directors` (`director_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_movies_has_directors_movies1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies_directors`
--

LOCK TABLES `movies_directors` WRITE;
/*!40000 ALTER TABLE `movies_directors` DISABLE KEYS */;
INSERT INTO `movies_directors` VALUES (49,1),(3,2),(37,3),(56,4),(45,5),(47,6),(42,7),(43,8),(65,9),(58,10),(36,11),(40,12),(41,13),(60,14),(67,14),(4,15),(63,17),(39,18),(57,19),(59,20),(66,21),(62,22),(1,23),(35,24),(35,25),(44,26),(44,27),(46,28),(48,29),(50,30),(64,31),(64,32),(61,33),(61,34),(2,35),(38,36);
/*!40000 ALTER TABLE `movies_directors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies_genre`
--

DROP TABLE IF EXISTS `movies_genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movies_genre` (
  `movie_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL,
  PRIMARY KEY (`movie_id`,`genre_id`),
  KEY `fk_movies_has_genre_genre1_idx` (`genre_id`),
  KEY `fk_movies_has_genre_movies1_idx` (`movie_id`),
  CONSTRAINT `fk_movies_has_genre_genre1` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`genre_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_movies_has_genre_movies1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies_genre`
--

LOCK TABLES `movies_genre` WRITE;
/*!40000 ALTER TABLE `movies_genre` DISABLE KEYS */;
INSERT INTO `movies_genre` VALUES (2,1),(38,1),(39,1),(40,1),(44,1),(45,1),(47,1),(56,1),(62,1),(63,1),(64,1),(65,1),(36,2),(38,2),(40,2),(43,2),(48,2),(56,2),(64,2),(1,3),(3,3),(35,3),(42,3),(45,3),(46,3),(61,3),(67,3),(44,4),(47,4),(61,4),(62,4),(2,5),(4,5),(36,5),(38,5),(41,5),(43,5),(48,5),(49,5),(50,5),(56,5),(57,5),(58,5),(59,5),(60,5),(63,5),(64,5),(65,5),(66,5),(1,6),(3,6),(35,6),(37,6),(43,6),(46,6),(60,6),(39,7),(42,7),(57,7),(66,7),(1,8),(3,8),(35,8),(37,8),(42,8),(45,8),(46,8),(47,8),(60,8),(61,8),(62,8),(67,8),(2,9),(4,10),(39,10),(50,10),(58,10),(63,10),(37,11),(67,11),(65,12);
/*!40000 ALTER TABLE `movies_genre` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rental`
--

LOCK TABLES `rental` WRITE;
/*!40000 ALTER TABLE `rental` DISABLE KEYS */;
INSERT INTO `rental` VALUES (1,'2017-09-01','2017-09-05',0,'returned in time',8,38),(2,'2018-01-03','2018-04-12',1,'not returned in time',10,36),(3,'2018-03-05','2018-03-09',0,'returned in time',14,3),(4,'2018-04-12','2018-04-16',1,'not returned in time',19,43),(5,'2018-01-06','2018-01-10',0,'returned in time',3,50),(6,'2018-01-06','2018-01-20',1,'not returned in time',3,2),(7,'2017-10-13','2017-10-19',1,'not returned in time',5,35),(8,'2017-01-13','2017-10-19',1,'not returned in time',5,40),(9,'2017-11-01','2017-11-05',0,'returned in time',9,41),(10,'2017-11-23','2017-11-27',0,'returned in time',11,1),(11,'2018-02-03','2018-02-07',0,'returned in time',11,48),(12,'2018-02-15','2018-02-19',0,'returned in time',15,49),(13,'2018-03-23','2018-03-27',0,'returned in time',1,39),(14,'2018-03-08','2018-03-12',0,'returned in time',2,37),(15,'2018-02-04','2018-03-12',1,'not returned in time',4,39),(16,'2018-01-24','2018-01-28',0,'returned in time',4,41),(57,'2018-03-04','2018-03-19',1,'not returned in time',17,56),(58,'2018-04-03','2018-04-22',1,'not returned in time',18,57),(59,'2017-12-31','2018-01-07',1,'not returned in time',19,58),(60,'2018-01-01','2018-01-04',0,'returned in time',20,59),(61,'2018-03-01','2018-03-04',0,'returned in time',23,60),(62,'2018-02-03','2018-02-07',0,'returned in time',22,61),(63,'2018-02-05','2018-02-09',0,'returned in time',30,62),(64,'2018-01-13','2018-01-17',0,'returned in time',31,63),(65,'2018-02-05','2018-02-11',1,'not returned in time',33,64),(66,'2018-01-15','2018-01-23',1,'not returned in time',32,65),(67,'2018-01-04','2018-01-08',0,'returned in time',25,66),(68,'2018-03-04','2018-03-08',0,'returned in time',26,67),(69,'2018-04-04','2018-04-08',0,'returned in time',29,56),(70,'2018-04-13','2018-04-20',1,'not returned in time',27,50),(71,'2018-04-01','2018-04-04',0,'returned in time',5,43),(72,'2018-03-31','2018-04-03',0,'returned in time',10,42),(73,'2018-02-27','2018-03-03',0,'returned in time',30,41),(74,'2018-02-17','2018-02-19',0,'returned in time',33,4),(75,'2018-03-03','2018-03-05',0,'returned in time',32,37),(76,'2018-02-17','2018-02-25',1,'not returned in time',31,39),(77,'2018-03-04','2018-03-15',1,'not returned in time',27,43),(78,'2018-01-31','2018-02-03',0,'returned in time',8,45);
/*!40000 ALTER TABLE `rental` ENABLE KEYS */;
UNLOCK TABLES;

--

-- Temporary view structure for view `rented_movies`
--

DROP TABLE IF EXISTS `rented_movies`;
/*!50001 DROP VIEW IF EXISTS `rented_movies`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `rented_movies` AS SELECT 
 1 AS `Movies`,
 1 AS `rentalDate`,
 1 AS `Customer`,
 1 AS `SalesPerson`*/;
SET character_set_client = @saved_cs_client;

--

-- Final view structure for view `genre_movies`
--

/*!50001 DROP VIEW IF EXISTS `genre_movies`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `genre_movies` AS select `g`.`genre` AS `Genre`,group_concat(`m`.`movieName` separator ' - ') AS `Movies` from ((`genre` `g` join `movies_genre` `mg` on((`g`.`genre_id` = `mg`.`genre_id`))) join `movies` `m` on((`mg`.`movie_id` = `m`.`movie_id`))) group by `g`.`genre` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `movie_collection`
--

/*!50001 DROP VIEW IF EXISTS `movie_collection`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `movie_collection` AS select `m`.`movieName` AS `movieName`,`m`.`releaseYear` AS `releaseYear`,group_concat(distinct `a`.`firstName`,' ',`a`.`lastName` separator ', ') AS `Actors`,group_concat(distinct `d`.`firstName`,' ',`d`.`lastName` separator ', ') AS `Directors`,group_concat(distinct `g`.`genre` separator ' - ') AS `Genre`,`m`.`description` AS `description`,`m`.`rentalTime` AS `rentalTime`,`m`.`inStock` AS `inStock` from ((((((`movies` `m` join `movies_actors` `ma` on((`m`.`movie_id` = `ma`.`movie_id`))) join `actors` `a` on((`ma`.`actor_id` = `a`.`actor_id`))) join `movies_genre` `mg` on((`m`.`movie_id` = `mg`.`movie_id`))) join `genre` `g` on((`mg`.`genre_id` = `g`.`genre_id`))) join `movies_directors` `md` on((`m`.`movie_id` = `md`.`movie_id`))) join `directors` `d` on((`md`.`director_id` = `d`.`director_id`))) group by `m`.`movieName` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `rented_movies`
--

/*!50001 DROP VIEW IF EXISTS `rented_movies`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `rented_movies` AS select `m`.`movieName` AS `Movies`,`r`.`rentalDate` AS `rentalDate`,concat(`c`.`firstName`,' ',`c`.`lastName`) AS `Customer`,concat(`e`.`firstName`,' ',`e`.`lastName`) AS `SalesPerson` from (((`rental` `r` join `movies` `m` on((`r`.`movie_id` = `m`.`movie_id`))) join `customers` `c` on((`r`.`customer_id` = `c`.`customer_id`))) join `employees` `e` on((`c`.`employees_id` = `e`.`employees_id`))) order by `m`.`movieName` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;


-- Dump completed on 2018-04-04 15:58:54

-- Dump completed on 2018-04-04 16:46:04

-- Dump completed on 2018-04-04 16:52:39

