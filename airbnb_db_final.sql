-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: airbnb_db
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `acc_category`
--

DROP TABLE IF EXISTS `acc_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `acc_category` (
  `acc_category_id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`acc_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acc_category`
--

LOCK TABLES `acc_category` WRITE;
/*!40000 ALTER TABLE `acc_category` DISABLE KEYS */;
INSERT INTO `acc_category` VALUES (1,'Castle'),(2,'Beach House'),(3,'Ski Chalet'),(4,'Urban Apartment'),(5,'Mountain Retreat'),(6,'Lakefront Cabin'),(7,'City Loft'),(8,'Countryside Villa'),(9,'Treehouse'),(10,'Historic Mansion'),(11,'Cottage'),(12,'Luxury Penthouse'),(13,'Desert Oasis'),(14,'Tropical Paradise'),(15,'Rural Farmhouse'),(16,'Modern Condo'),(17,'Seaside Bungalow'),(18,'Alpine Lodge'),(19,'Artistic Studio'),(20,'Island Getaway');
/*!40000 ALTER TABLE `acc_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acc_dimensions`
--

DROP TABLE IF EXISTS `acc_dimensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `acc_dimensions` (
  `acc_id` int NOT NULL,
  `max_guests` int DEFAULT NULL,
  `n_bedrooms` int DEFAULT NULL,
  `n_bathrooms` int DEFAULT NULL,
  `n_beds` int DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`acc_id`),
  CONSTRAINT `acc_dimensions_ibfk_1` FOREIGN KEY (`acc_id`) REFERENCES `accommodation` (`acc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acc_dimensions`
--

LOCK TABLES `acc_dimensions` WRITE;
/*!40000 ALTER TABLE `acc_dimensions` DISABLE KEYS */;
INSERT INTO `acc_dimensions` VALUES (1,4,1,1,2,'60 sqm'),(2,6,2,1,3,'80 sqm'),(3,6,1,1,1,'83 sqm'),(4,2,1,1,1,'15 sqm'),(5,4,2,1,4,'55 sqm'),(6,2,1,1,1,'20 sqm'),(7,4,2,2,3,'70 sqm'),(8,2,1,1,1,'20 sqm'),(9,6,3,2,4,'75 sqm'),(10,2,1,1,1,'35 sqm'),(11,4,1,2,2,'72 sqm'),(12,4,2,2,3,'90 sqm'),(13,2,1,1,1,'24 sqm'),(14,4,2,1,2,'68 sqm'),(15,2,1,1,1,'18 sqm'),(16,3,1,1,2,'75 sqm'),(17,2,1,1,1,'32 sqm'),(18,4,2,2,2,'67 sqm'),(19,2,1,1,1,'22 sqm'),(20,6,3,2,4,'80 sqm');
/*!40000 ALTER TABLE `acc_dimensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acc_picture`
--

DROP TABLE IF EXISTS `acc_picture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `acc_picture` (
  `pic_id` int NOT NULL AUTO_INCREMENT,
  `acc_id` int DEFAULT NULL,
  `pic_url` blob,
  PRIMARY KEY (`pic_id`),
  KEY `acc_id` (`acc_id`),
  CONSTRAINT `acc_picture_ibfk_1` FOREIGN KEY (`acc_id`) REFERENCES `accommodation` (`acc_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acc_picture`
--

LOCK TABLES `acc_picture` WRITE;
/*!40000 ALTER TABLE `acc_picture` DISABLE KEYS */;
INSERT INTO `acc_picture` VALUES (1,1,_binary 'https://www.freepik.com/premium-photo/modern-apartment-buildings-sunny-day-with-blue-sky_75597640.htm#fromView=\n    search&page=2&position=6&uuid=e32c58e6-d8c1-4751-81b6-e6a26ada7ec7'),(2,2,_binary 'https://www.freepik.com/premium-ai-image/house-with-red-brick-facade-trees-vector-illustration-flat-\n    stylered-house-with-white-facade_80928089.htm#fromView=search&page=1&position=16&uuid=e32c58e6-d8c1-4751-81b6-e6a26ada7ec7'),(3,3,_binary 'https://www.freepik.com/free-photo/stylish-scandinavian-living-room-with-design-mint-sofa-furnitures-mock-up-\n    poster-map-plants-eleg_38852655.htm#fromView=search&page=1&position=20&uuid=e32c58e6-d8c1-4751-81b6-e6a26ada7ec7'),(4,4,_binary 'https://www.freepik.com/premium-photo/exterior-view-building_30520435.htm#fromView=search&page=1&position=\n    13&uuid=e32c58e6-d8c1-4751-81b6-e6a26ada7ec7'),(5,5,_binary 'https://www.freepik.com/free-photo/luxury-pool-villa-spectacular-contemporary-design-digital-art-real-\n    estate-home-house-property-ge_38067205.htm#fromView=search&page=1&position=32&uuid=e32c58e6-d8c1-4751-81b6-e6a26ada7ec7'),(6,6,_binary 'https://www.freepik.com/free-photo/cottage-with-green-trees_909203.htm#fromView=search&page=\n    1&position=36&uuid=e32c58e6-d8c1-4751-81b6-e6a26ada7ec7'),(7,7,_binary 'https://www.freepik.com/free-ai-image/photorealistic-wooden-house-with-timber-structure_152575292.\n    htm#fromView=search&page=1&position=35&uuid=e32c58e6-d8c1-4751-81b6-e6a26ada7ec7'),(8,8,_binary 'https://www.freepik.com/premium-photo/view-delightful-city-with-high-rise-buildingd_\n    20880865.htm#fromView=search&page=1&position=48&uuid=e32c58e6-d8c1-4751-81b6-e6a26ada7ec7'),(9,9,_binary 'https://www.freepik.com/free-photo/vertical-shot-white-building-clear-sky_8281219.htm#fromView=search&page=\n    1&position=37&uuid=e32c58e6-d8c1-4751-81b6-e6a26ada7ec7'),(10,10,_binary 'https://www.freepik.com/free-photo/vertical-shot-white-building-clear-sky_8281219.htm#fromView=search&page=1&position=\n    37&uuid=e32c58e6-d8c1-4751-81b6-e6a26ada7ec7'),(11,11,_binary 'https://www.freepik.com/premium-photo/3d-visualization-modern-house-bright-colors-house-facade-design-modern-architecture_\n    33225368.htm#fromView=search&page=1&position=56&uuid=e32c58e6-d8c1-4751-81b6-e6a26ada7ec7'),(12,12,_binary 'https://www.freepik.com/premium-photo/exterior-image-new-modern-house-with-large-windows-with-garden-rural-area-\n    beautiful-sky-generative-ai_40838377.htm#fromView=search&page=1&position=46&uuid=e32c58e6-d8c1-4751-81b6-e6a26ada7ec7'),(13,13,_binary 'https://www.freepik.com/premium-photo/european-suburban-house_9769488.htm#fromView=search&page=1&position=59&uuid=e32c58e6-\n    d8c1-4751-81b6-e6a26ada7ec7'),(14,14,_binary 'https://www.freepik.com/free-psd/modern-farmhouse-meadow-hill-generative-ai_47893786.htm#fromView=search&page=1&position=\n    58&uuid=e32c58e6-d8c1-4751-81b6-e6a26ada7ec7'),(15,15,_binary 'https://www.freepik.com/free-photo/3d-rendering-loft-luxury-living-room-with-bookshelf-near-bookshelf_36105151.\n    htm#fromView=search&page=1&position=54&uuid=e32c58e6-d8c1-4751-81b6-e6a26ada7ec7'),(16,16,_binary 'https://www.freepik.com/premium-ai-image/modern-house-exterior_139785615.htm#fromView=search&page=1&position=47&uuid\n    =e32c58e6-d8c1-4751-81b6-e6a26ada7ec7'),(17,17,_binary 'https://www.freepik.com/free-ai-image/photorealistic-house-with-wooden-architecture-timber-structure_152578949.\n    htm#fromView=search&page=1&position=34&uuid=e32c58e6-d8c1-4751-81b6-e6a26ada7ec7'),(18,18,_binary 'https://www.freepik.com/premium-ai-image/modern-farmhouse-house-exterior-with-view-countryside-rolling-hills_47305891.\n    htm#fromView=search&page=1&position=31&uuid=e32c58e6-d8c1-4751-81b6-e6a26ada7ec7'),(19,19,_binary 'https://www.freepik.com/free-photo/living-room-mid-century-style-with-warm-colors-ai-generative_41369780.htm#fromView=\n    search&page=2&position=4&uuid=e32c58e6-d8c1-4751-81b6-e6a26ada7ec7'),(20,20,_binary 'https://www.freepik.com/free-ai-image/modern-house-architectural-design-photography_92123290.htm#fromView=search&page=\n    2&position=0&uuid=e32c58e6-d8c1-4751-81b6-e6a26ada7ec7');
/*!40000 ALTER TABLE `acc_picture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acc_review`
--

DROP TABLE IF EXISTS `acc_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `acc_review` (
  `booking_id` int NOT NULL,
  `review_id` int NOT NULL,
  PRIMARY KEY (`booking_id`,`review_id`),
  KEY `review_id` (`review_id`),
  CONSTRAINT `acc_review_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`booking_id`),
  CONSTRAINT `acc_review_ibfk_2` FOREIGN KEY (`review_id`) REFERENCES `review` (`review_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acc_review`
--

LOCK TABLES `acc_review` WRITE;
/*!40000 ALTER TABLE `acc_review` DISABLE KEYS */;
INSERT INTO `acc_review` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,40);
/*!40000 ALTER TABLE `acc_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accommodation`
--

DROP TABLE IF EXISTS `accommodation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accommodation` (
  `acc_id` int NOT NULL AUTO_INCREMENT,
  `location_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `acc_type` varchar(50) DEFAULT NULL,
  `acc_name` varchar(255) DEFAULT NULL,
  `acc_description` text,
  `price_p_night` float DEFAULT NULL,
  `service_fee` float DEFAULT NULL,
  `cleaning_fee` float DEFAULT NULL,
  PRIMARY KEY (`acc_id`),
  KEY `location_id` (`location_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `accommodation_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`),
  CONSTRAINT `accommodation_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `airbnb_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accommodation`
--

LOCK TABLES `accommodation` WRITE;
/*!40000 ALTER TABLE `accommodation` DISABLE KEYS */;
INSERT INTO `accommodation` VALUES (1,1,1,'Entire Home','Cozy Studio in London','A comfortable studio apartment in the heart of London, perfect for solo travelers or couples.',280,15,20),(2,2,2,'Entire Home','Spacious Family Home in Berlin','A large and welcoming family home with a beautiful garden, ideal for families or groups.',220,20,25),(3,4,4,'Entire Home','Luxury Villa in Lisbon','An exquisite villa with panoramic views of Lisbon, featuring a private pool and elegant interiors.',150,10,15),(4,5,5,'Room','Charming Parisian Flat','A charming room in the heart of Paris, within walking distance to iconic landmarks.',300,25,30),(5,11,19,'Entire Home','Canal View in Amsterdam','Enjoy canal views from this stylish entire apartment in Amsterdam, within walking distance to major attractions.',270,12,18),(6,6,7,'Room','City Center Retreat in Rome','A comfortable room in a centrally located apartment in Rome with easy access to historic sites and vibrant neighborhoods.',190,18,22),(7,3,8,'Entire Home','Modern Penthouse in Madrid','A stylish penthouse apartment with panoramic views of Madrid, perfect for urban explorers.',80,10,15),(8,12,15,'Room','Scandinavian Cottage in Copenhagen','Experience Scandinavian charm in a cozy room in this cottage in Copenhagen, surrounded by nature.',175,12,20),(9,7,14,'Entire Home','Classic Elegance in Vienna','Experience classic elegance in this Vienna apartment, with historic architecture and modern amenities.',145,8,12),(10,20,38,'Room','Mediterranean Retreat in Athens','Experience a Mediterranean-style retreat in Athens by staying in a comfortable room with a private garden and panoramic views.',85,20,25),(11,13,21,'Entire Home','Modern Apartment in Oslo','A sleek and modern apartment located in the heart of Oslo, offering stunning views of the city.',195,15,20),(12,8,37,'Entire Home','Cozy Retreat in Bern','Escape to this cozy retreat in Bern, surrounded by picturesque landscapes and close to the city center.',330,25,30),(13,17,33,'Room','Historic Charm in Valletta','Experience the historic charm of Valletta by staying in a comfortable room with traditional Maltese architecture.',65,10,15),(14,9,6,'Entire Home','Elegant Duplex in Brussels','An elegant duplex apartment in the heart of Brussels, perfect for exploring the city\'s cultural attractions.',80,15,20),(15,10,29,'Room','Luxury Suite in Luxembourg','Indulge in luxury by staying in a spacious suite in Luxembourg, with top-notch amenities and a central location.',65,12,18),(16,14,35,'Entire Home','Scandinavian Gem in Stockholm','Discover a Scandinavian gem in Stockholm, with stylish interiors and a prime location.',290,18,22),(17,19,39,'Room','Monaco Riviera View','Enjoy breathtaking views of the Monaco Riviera from this comfortable room, \n        perfect for a romantic getaway.',555,45,95),(18,15,28,'Entire Home','Cosy Apartment in Helsinki','Experience the coziness of Helsinki by staying in this well-appointed apartment, close to the city\'s attractions.',125,15,20),(19,16,10,'Room','Northern Lights Retreat in Reykjavik','Stay in a comfortable room in Reykjavik, the perfect base for experiencing the magical Northern Lights in Iceland.',160,12,18),(20,18,26,'Entire Home','Warsaw City Center Loft','Explore Warsaw from this stylish loft in the city center, offering modern amenities and proximity to historical sites.',65,20,25);
/*!40000 ALTER TABLE `accommodation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `airbnb_host`
--

DROP TABLE IF EXISTS `airbnb_host`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `airbnb_host` (
  `user_id` int NOT NULL,
  `acc_id` int DEFAULT NULL,
  `host_since` date DEFAULT NULL,
  `host_type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `acc_id` (`acc_id`),
  CONSTRAINT `airbnb_host_ibfk_1` FOREIGN KEY (`acc_id`) REFERENCES `accommodation` (`acc_id`),
  CONSTRAINT `airbnb_host_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `airbnb_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `airbnb_host`
--

LOCK TABLES `airbnb_host` WRITE;
/*!40000 ALTER TABLE `airbnb_host` DISABLE KEYS */;
INSERT INTO `airbnb_host` VALUES (1,1,'2022-01-15','superhost'),(2,2,'2021-11-30','regular'),(4,3,'2021-02-15','regular'),(5,4,'2020-11-30','superhost'),(6,14,'2021-04-30','professional'),(7,6,'2021-11-20','superhost'),(8,7,'2020-11-15','regular'),(10,19,'2020-11-15','regular'),(14,9,'2020-01-05','regular'),(15,8,'2021-11-30','professional'),(19,5,'2019-01-15','professional'),(21,11,'2021-01-15','regular'),(26,20,'2021-04-05','professional'),(28,18,'2016-11-30','superhost'),(29,15,'2018-06-15','regular'),(33,13,'2021-03-15','regular'),(35,16,'2021-12-30','regular'),(37,12,'2021-11-11','superhost'),(38,10,'2020-11-30','superhost'),(39,17,'2019-01-11','professional1');
/*!40000 ALTER TABLE `airbnb_host` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `airbnb_user`
--

DROP TABLE IF EXISTS `airbnb_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `airbnb_user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `user_password` varchar(20) DEFAULT NULL,
  `date_of_creation` date DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `image_url` blob,
  `email` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `airbnb_user`
--

LOCK TABLES `airbnb_user` WRITE;
/*!40000 ALTER TABLE `airbnb_user` DISABLE KEYS */;
INSERT INTO `airbnb_user` VALUES (1,'John','Smith','password123','2022-02-01','1990-05-15','Male',_binary 'https://www.freepik.com/free-psd/3d-illustration-person-with-sunglasses_27470334.htm#query=user%20profile&position=7&from_\nview=keyword&track=ais&uuid=5a1812b5-3509-4b27-8cf5-12757facdba4','john.smith@example.com','+44 20 1234 5678'),(2,'Emma','Jones','securepass','2022-02-02','1985-09-22','Female',_binary 'https://www.freepik.com/free-vector/businessman-character-avatar-isolated_6769264.htm#query=user%20profile&position=9&from_\nview=keyword&track=ais&uuid=5a1812b5-3509-4b27-8cf5-12757facdba4','emma.jones@example.com','+49 30 9876 5432'),(3,'Luca','Müller','myp@ssw0rd','2022-02-03','1988-12-10','Male',_binary 'https://www.freepik.com/premium-vector/people-avatars-with-young-people-s-faces-concept-colored-flat-vector-\nillustration-isolated_68189451.htm#query=user%20profile&position=6&from_view=keyword&track=ais&uuid=5a1812b5-3509-4b27-8cf5-\n12757facdba4','luca.muller@example.com','+49 30 8765 4321'),(4,'Isabella','Silva','airbnb2022','2022-02-04','1992-03-07','Female',_binary 'https://www.freepik.com/free-psd/3d-icon-social-media-app_36190320.htm#query=user%20profile&position=1&from_\nview=keyword&track=ais&uuid=5a1812b5-3509-4b27-8cf5-12757facdba4','isabella.silva@example.com','+351 91 234 5678'),(5,'Antoine','Martin','traveler','2022-02-05','1987-06-18','Male',_binary 'https://www.freepik.com/free-photo/smiling-man_5402018.htm#query=user%20profile&position=16&from_\nview=keyword&track=ais&uuid=5a1812b5-3509-4b27-8cf5-12757facdba4','antoine.martin@example.com','+33 1 2345 6789'),(6,'Sophie','Dupont','pass1234','2022-02-06','1983-11-25','Female',_binary 'https://www.freepik.com/free-vector/illustration-user-avatar-icon_2606573.htm#query=user%20profile&position=29&from_\nview=keyword&track=ais&uuid=5a1812b5-3509-4b27-8cf5-12757facdba4','sophie.dupont@example.com','+33 1 9876 5432'),(7,'Mario','Rossi','letsgo!','2022-02-07','1989-08-14','Male',_binary 'https://www.freepik.com/free-photo/portrait-hapy-young-smart-man-glasses-white-wall_15181130.htm#query=\nuser%20profile&position=33&from_view=keyword&track=ais&uuid=5a1812b5-3509-4b27-8cf5-12757facdba4','mario.rossi@example.com','+39 06 1234 5678'),(8,'Luis','González','vacation21','2022-02-08','1995-01-29','Male',_binary 'https://www.freepik.com/free-photo/pleasant-looking-caucasian-female-with-long-hair-wearing-yellow-casual-shirt-having-good-mood-\nlooking-happily-camera_10113938.htm#query=user%20profile&position=57&from_view=keyword&track=ais&uuid=5a1812b5-3509-4b27-8cf5-\n12757facdba4','luis.gonzalez@example.com','+34 91 1234 5678'),(9,'Elena','Fernández','sunshine','2022-02-09','1993-04-03','Female',_binary 'https://www.freepik.com/free-photo/handsome-happy-bearded-man_6447727.htm#query=user%20profile&position=54&from\n_view=keyword&track=ais&uuid=5a1812b5-3509-4b27-8cf5-12757facdba4','elena.fernandez@example.com','+34 91 8765 4321'),(10,'Tom','Johnson','explore12','2022-02-10','1986-07-12','Male',_binary 'https://www.freepik.com/free-photo/portrait-man-laughing_12478216.htm#query=user%20profile&position=47&from\n_view=keyword&track=ais&uuid=5a1812b5-3509-4b27-8cf5-12757facdba4','tom.johnson@example.com','+44 20 1234 5678'),(11,'Sophia','Van den Berg','enjoyinglife','2022-02-11','1991-02-20','Female',_binary 'https://www.freepik.com/premium-photo/icon-with-girl-blue-background-3d-rendering_23319514.\nhtm#page=2&query=user%20profile&position=33&from_view=keyword&track=ais&uuid=5a1812b5-3509-4b27-8cf5-12757facdba4','sophia.vandenberg@example.com','+31 20 1234 5678'),(12,'Matteo','Conti','italiano','2022-02-12','1994-05-28','Male',_binary 'https://www.freepik.com/premium-vector/anonymous-user-circle-icon-vector-illustration-flat-style-with-long-shadow\n_19871451.htm#query=user%20profile&position=55&from_view=keyword&track=ais&uuid=5a1812b5-3509-4b27-8cf5-12757facdba4','matteo.conti@example.com','+39 06 1234 5678'),(13,'Carmen','Rodriguez','seaside21','2022-02-13','1984-10-08','Female',_binary 'https://www.freepik.com/premium-vector/user-interface-icon-cartoon-style-illustration_35671362.htm#query=\nuser%20profile&position=46&from_view=keyword&track=ais&uuid=5a1812b5-3509-4b27-8cf5-12757facdba4','carmen.rodriguez@example.com','+34 91 1234 5678'),(14,'Martin','Schmidt','mountainlover','2022-02-14','1980-12-15','Male',_binary 'https://www.freepik.com/free-photo/user-profile-front-side_41949677.htm#query=user%20profile&position=51&from\n_view=keyword&track=ais&uuid=5a1812b5-3509-4b27-8cf5-12757facdba4','martin.schmidt@example.com','+43 1 2345 6789'),(15,'Emily','White','beachbum','2022-02-15','1996-03-22','Female',_binary 'https://www.freepik.com/premium-photo/neon-icon-women-security-guard-black-background-3d-rendering-illustration\n_27349214.htm#query=user%20profile&position=39&from_view=keyword&track=ais&uuid=5a1812b5-3509-4b27-8cf5-12757facdba4','emily.white@example.com','+44 20 1234 5678'),(16,'Andreas','Weber','germany22','2022-02-16','1982-06-30','Male',_binary 'https://www.freepik.com/premium-vector/avatar-user-icon-vector_30596072.htm#page=2&query=\nuser%20profile&position=22&from_view=keyword&track=ais&uuid=5a1812b5-3509-4b27-8cf5-12757facdba4','andreas.weber@example.com','+43 1 9876 5432'),(17,'Ana','Costa','sunnydays','2022-02-17','1981-09-07','Female',_binary 'https://www.freepik.com/premium-vector/girl-cv-icon-cartoon-vector-work-candidate-man-agreement_\n70938621.htm#page=2&query=user%20profile&position=29&from_view=keyword&track=ais&uuid=5a1812b5-3509-4b27-8cf5-12757facdba4','ana.costa@example.com','+34 91 1234 5678'),(18,'Giulia','Ricci','bellaitalia','2022-02-18','1997-02-14','Female',_binary 'https://www.freepik.com/premium-vector/avatar-icon003_35347833.htm#page=2&query=\nuser%20profile&position=34&from_view=keyword&track=ais&uuid=5a1812b5-3509-4b27-8cf5-12757facdba4','giulia.ricci@example.com','+351 91 234 5678'),(19,'Hans','Van der Meer','dutchwindmills','2022-02-19','1986-04-18','Male',_binary 'https://www.freepik.com/free-vector/minimalist-geometric-judith-s-tiktok-profile-picture_\n137381672.htm#page=2&query=user%20profile&position=37&from_view=keyword&track=ais&uuid=5a1812b5-3509-4b27-8cf5-12757facdba4','hans.vandermeer@example.com','+31 20 1234 5678'),(20,'Marta','Santos','oceanbreeze','2022-02-20','1989-07-26','Female',_binary 'https://www.freepik.com/premium-vector/influencer-flat-illustration_129898670.htm#page=\n2&query=user%20profile&position=40&from_view=keyword&track=ais&uuid=5a1812b5-3509-4b27-8cf5-12757facdba4','marta.santos@example.com','+351 21 123 4567'),(21,'Frederik','Jørgensen','hygge123','2022-02-21','1990-10-31','Male',_binary 'https://www.freepik.com/free-psd/3d-illustration-person-with-sunglasses_\n27470334.htm#query=user%20profile&position=7&from_view=keyword&track=ais&uuid=5a1812b5-3509-4b27-8cf5-12757facdba4','frederik.jorgensen@example.com','+45 12 345 6789'),(22,'Alicia','Lopez','spanishflair','2022-02-22','1994-02-08','Female',NULL,'alicia.lopez@example.com','+34 91 8765 4321'),(23,'Andrea','Ferrari','fastcars','2022-02-23','1983-05-16','Male',NULL,'andrea.ferrari@example.com','+39 06 1234 5678'),(24,'Eva','Hernández','siestatime','2022-02-24','1991-08-23','Female',NULL,'eva.hernandez@example.com','+34 91 1234 5678'),(25,'Ricardo','Molina','surfsup','2022-02-25','1987-11-29','Male',NULL,'ricardo.molina@example.com','+34 91 8765 4321'),(26,'Katarzyna','Nowak','poland2022','2022-02-26','1995-04-06','Female',NULL,'katarzyna.nowak@example.com','+48 22 123 4567'),(27,'Giovanni','Moretti','ciao2022','2022-02-27','1984-07-14','Male',NULL,'giovanni.moretti@example.com','+39 06 1234 5678'),(28,'Maria','Silveira','portugal22','2022-02-28','1993-10-19','Female',NULL,'maria.silveira@example.com','+351 91 234 5678'),(29,'Jan','Schulz','germanadventures','2022-03-01','1988-01-25','Male',NULL,'jan.schulz@example.com','+49 30 9876 5432'),(30,'Sophie','Lefèvre','parisianlife','2022-03-02','1994-05-03','Female',NULL,'sophie.lefevre@example.com','+33 1 2345 6789'),(31,'Luigi','Bernini','vespalover','2022-03-03','1981-08-09','Male',NULL,'luigi.bernini@example.com','+39 06 1234 5678'),(32,'Elena','Sánchez','sunnysevilla','2022-03-04','1986-11-15','Female',NULL,'elena.sanchez@example.com','+34 91 1234 5678'),(33,'David','Brown','uktraveler','2022-03-05','1992-02-21','Male',NULL,'david.brown@example.com','+44 20 1234 5678'),(34,'Claudia','Rossi','dolcevita','2022-03-06','1987-05-29','Female',NULL,'claudia.rossi@example.com','+39 06 1234 5678'),(35,'Niklas','Andersen','danishcharm','2022-03-07','1990-09-03','Male',NULL,'niklas_andersen@example.com','+51 08 3322 5544'),(36,'Lucía','Fuentes','barcelonabeauty','2022-03-08','1983-12-10','Female',NULL,'lucia.fuentes@example.com','+34 91 8765 4321'),(37,'Sebastian','Koch','bavariancharm','2022-03-09','1989-03-17','Male',NULL,'sebastian.koch@example.com','+49 89 1234 5678'),(38,'Céline','Dubois','frenchcharm','2022-03-10','1995-06-23','Female',NULL,'celine.dubois@example.com','+33 1 2345 6789'),(39,'Marco','Ferrara','pizzalover','2022-03-11','1980-09-30','Male',NULL,'marco.ferrara@example.com','+39 06 1234 5678'),(40,'Anaïs','Lemoine','rivieralife','2022-03-12','1996-01-05','Female',NULL,'anais.lemoine@example.com','+33 1 9876 5432');
/*!40000 ALTER TABLE `airbnb_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `amenity`
--

DROP TABLE IF EXISTS `amenity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `amenity` (
  `amenity_id` int NOT NULL AUTO_INCREMENT,
  `amenity_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`amenity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amenity`
--

LOCK TABLES `amenity` WRITE;
/*!40000 ALTER TABLE `amenity` DISABLE KEYS */;
INSERT INTO `amenity` VALUES (1,'Free Wi-Fi'),(2,'Air Conditioning'),(3,'Kitchen'),(4,'Parking'),(5,'Swimming Pool'),(6,'Pet-Friendly'),(7,'Garden or Patio'),(8,'Hot Tub'),(9,'Fireplace'),(10,'Gym'),(11,'Breakfast Included'),(12,'Ocean View'),(13,'Private Entrance'),(14,'Smart TV'),(15,'Washer and Dryer'),(16,'Elevator'),(17,'Game Room'),(18,'BBQ Grill'),(19,'Beach Access'),(20,'Security System');
/*!40000 ALTER TABLE `amenity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `amenity_relation`
--

DROP TABLE IF EXISTS `amenity_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `amenity_relation` (
  `amenity_id` int NOT NULL,
  `acc_id` int NOT NULL,
  PRIMARY KEY (`amenity_id`,`acc_id`),
  KEY `acc_id` (`acc_id`),
  CONSTRAINT `amenity_relation_ibfk_1` FOREIGN KEY (`acc_id`) REFERENCES `accommodation` (`acc_id`),
  CONSTRAINT `amenity_relation_ibfk_2` FOREIGN KEY (`amenity_id`) REFERENCES `amenity` (`amenity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amenity_relation`
--

LOCK TABLES `amenity_relation` WRITE;
/*!40000 ALTER TABLE `amenity_relation` DISABLE KEYS */;
INSERT INTO `amenity_relation` VALUES (7,1),(13,1),(7,2),(15,2),(1,3),(13,3),(6,4),(14,4),(8,5),(19,5),(2,6),(20,6),(4,7),(15,7),(9,8),(12,8),(2,9),(3,9),(14,10),(16,10),(10,11),(11,11),(4,12),(5,12),(16,13),(17,13),(2,14),(11,14),(5,15),(18,15),(8,16),(18,16),(12,17),(17,17),(6,18),(10,18),(1,19),(19,19),(9,20),(20,20);
/*!40000 ALTER TABLE `amenity_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking` (
  `booking_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `acc_id` int DEFAULT NULL,
  `check_in_date` date DEFAULT NULL,
  `check_out_date` date DEFAULT NULL,
  `n_nights` int GENERATED ALWAYS AS ((to_days(`check_out_date`) - to_days(`check_in_date`))) STORED,
  `n_guests` int DEFAULT NULL,
  `booking_status` varchar(50) DEFAULT NULL,
  `booking_timestamp` timestamp NULL DEFAULT NULL,
  `total_price` float DEFAULT NULL,
  PRIMARY KEY (`booking_id`),
  KEY `acc_id` (`acc_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`acc_id`) REFERENCES `accommodation` (`acc_id`),
  CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `airbnb_user` (`user_id`),
  CONSTRAINT `booking_chk_1` CHECK ((`check_in_date` < `check_out_date`))
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` (`booking_id`, `user_id`, `acc_id`, `check_in_date`, `check_out_date`, `n_guests`, `booking_status`, `booking_timestamp`, `total_price`) VALUES (1,3,1,'2023-05-15','2023-05-20',2,'Confirmed','2023-04-10 06:30:00',1435),(2,9,2,'2023-06-01','2023-06-05',5,'Confirmed','2023-04-12 10:45:00',925),(3,11,3,'2023-07-10','2023-07-15',6,'pending','2023-04-15 07:15:00',775),(4,12,4,'2023-08-03','2023-08-10',2,'Confirmed','2023-04-18 13:20:00',2155),(5,13,5,'2023-09-12','2023-09-15',2,'Confirmed','2023-04-20 16:45:00',840),(6,16,6,'2023-10-05','2023-10-10',2,'Confirmed','2023-04-23 08:30:00',990),(7,17,7,'2023-11-08','2023-11-15',1,'pending','2023-04-26 12:15:00',585),(8,18,8,'2023-12-20','2023-12-25',2,'Confirmed','2023-04-28 18:00:00',907),(9,20,9,'2024-01-15','2024-01-20',2,'pending','2023-05-02 07:45:00',745),(10,22,10,'2024-02-01','2024-02-05',2,'Confirmed','2023-05-05 09:30:00',385),(11,23,11,'2024-03-10','2024-03-15',3,'Confirmed','2023-05-08 11:20:00',1010),(12,24,12,'2024-04-03','2024-04-10',2,'Confirmed','2023-05-11 15:10:00',2365),(13,25,13,'2024-05-15','2024-05-20',1,'Confirmed','2023-05-14 19:00:00',350),(14,27,14,'2024-06-01','2024-06-05',2,'Confirmed','2023-05-17 06:30:00',355),(15,30,15,'2024-07-10','2024-07-15',2,'Confirmed','2023-05-20 08:45:00',355),(16,31,16,'2024-08-03','2024-08-10',3,'Confirmed','2023-05-23 12:20:00',2070),(17,32,17,'2024-09-12','2024-09-15',2,'pending','2023-05-26 14:30:00',1805),(18,34,18,'2024-10-05','2024-10-10',2,'Confirmed','2023-05-29 16:15:00',660),(19,36,19,'2024-11-08','2024-11-15',2,'pending','2023-06-01 18:45:00',1150),(20,40,20,'2024-12-20','2024-12-25',2,'pending','2023-06-04 21:00:00',370);
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_relation`
--

DROP TABLE IF EXISTS `category_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category_relation` (
  `acc_category_id` int NOT NULL,
  `acc_id` int NOT NULL,
  PRIMARY KEY (`acc_category_id`,`acc_id`),
  KEY `acc_id` (`acc_id`),
  CONSTRAINT `category_relation_ibfk_1` FOREIGN KEY (`acc_id`) REFERENCES `accommodation` (`acc_id`),
  CONSTRAINT `category_relation_ibfk_2` FOREIGN KEY (`acc_category_id`) REFERENCES `acc_category` (`acc_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_relation`
--

LOCK TABLES `category_relation` WRITE;
/*!40000 ALTER TABLE `category_relation` DISABLE KEYS */;
INSERT INTO `category_relation` VALUES (6,1),(13,1),(7,2),(15,2),(7,3),(14,3),(8,4),(18,4),(1,5),(4,5),(15,6),(20,6),(8,7),(9,7),(2,8),(13,8),(3,9),(16,9),(1,10),(17,10),(10,11),(3,12),(9,12),(10,12),(2,13),(11,13),(4,14),(11,14),(16,15),(18,15),(5,16),(12,16),(5,17),(17,17),(14,18),(19,18),(19,19),(20,19),(6,20),(12,20);
/*!40000 ALTER TABLE `category_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `house_rules`
--

DROP TABLE IF EXISTS `house_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `house_rules` (
  `rule_id` int NOT NULL AUTO_INCREMENT,
  `rule_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rule_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `house_rules`
--

LOCK TABLES `house_rules` WRITE;
/*!40000 ALTER TABLE `house_rules` DISABLE KEYS */;
INSERT INTO `house_rules` VALUES (1,'No smoking allowed'),(2,'No pets allowed'),(3,'No parties or events'),(4,'Quiet hours after 10 PM'),(5,'Check-in time: After 3 PM'),(6,'No shoes inside the apartment'),(7,'Keep noise levels down'),(8,'No unauthorized guests allowed'),(9,'Dispose of garbage properly'),(10,'Respect neighbors and community rules'),(11,'Lock all doors and windows when leaving'),(12,'Turn off lights and appliances when not in use'),(13,'Keep the kitchen clean and tidy'),(14,'Separate recycling from regular garbage'),(15,'Check-out time: Before 11 AM'),(16,'Pets allowed'),(17,'Report any damages or issues immediately'),(18,'Do not rearrange furniture'),(19,'Respect check-in and check-out times'),(20,'Follow check-out instructions provided');
/*!40000 ALTER TABLE `house_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `house_rules_relation`
--

DROP TABLE IF EXISTS `house_rules_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `house_rules_relation` (
  `acc_id` int NOT NULL,
  `rule_id` int NOT NULL,
  PRIMARY KEY (`acc_id`,`rule_id`),
  KEY `rule_id` (`rule_id`),
  CONSTRAINT `house_rules_relation_ibfk_1` FOREIGN KEY (`acc_id`) REFERENCES `accommodation` (`acc_id`),
  CONSTRAINT `house_rules_relation_ibfk_2` FOREIGN KEY (`rule_id`) REFERENCES `house_rules` (`rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `house_rules_relation`
--

LOCK TABLES `house_rules_relation` WRITE;
/*!40000 ALTER TABLE `house_rules_relation` DISABLE KEYS */;
INSERT INTO `house_rules_relation` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20);
/*!40000 ALTER TABLE `house_rules_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location` (
  `location_id` int NOT NULL AUTO_INCREMENT,
  `location_name` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `house_number` varchar(50) DEFAULT NULL,
  `postal_code` char(5) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state_province` varchar(255) DEFAULT NULL,
  `country_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`location_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (1,'Westminster','Abbey Road','123','SW1A0','London','Greater London','United Kingdom'),(2,'Neukölln','Karl-Marx-Strasse','456','10115','Berlin','Berlin','Germany'),(3,'Chueca','Calle Fuencarral','789','28001','Madrid','Community of Madrid','Spain'),(4,'Bairro Alto','Rua da Rosa','101','10001','Lisbon','Lisbon','Portugal'),(5,'Montmartre','Rue des Abbesses','202','75001','Paris','Île-de-France','France'),(6,'Trastevere','Via della Lungara','303','00100','Rome','Lazio','Italy'),(7,'Innere Stadt','Graben','404','10100','Vienna','Vienna','Austria'),(8,'Old Town','Kramgasse','505','30000','Bern','Bern','Switzerland'),(9,'Ixelles','Avenue Louise','606','10000','Brussels','Brussels','Belgium'),(10,'Grund','Rue Munster','707','L1000','Luxembourg City','Luxembourg','Luxembourg'),(11,'Jordaan','Prinsengracht','808','1000B','Amsterdam','North Holland','Netherlands'),(12,'Nørrebro','Elmegade','909','10000','Copenhagen','Capital Region','Denmark'),(13,'Grünerløkka','Thorvald Meyers Gate','10010','0101','Oslo','Oslo','Norway'),(14,'Södermalm','Hornsgatan','1111','10000','Stockholm','Stockholm','Sweden'),(15,'Kallio','Helsinginkatu','1212','00100','Helsinki','Uusimaa','Finland'),(16,'Laugardalur','Sundlaugarvegur','13130','101','Reykjavik','Capital Region','Iceland'),(17,'Valletta Waterfront','Old Bakery Street','14014','VLT','Valletta','South Eastern Region','Malta'),(18,'Praga','Targowa','1515','10001','Warsaw','Masovian Voivodeship','Poland'),(19,'Monte Carlo','Avenue des Spélugues','16216','98000','Monaco','Monaco','Monaco'),(20,'Plaka','Kydathineon','1717','GR100','Athens','Attica','Greece');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `message` (
  `message_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `host_id` int DEFAULT NULL,
  `acc_id` int DEFAULT NULL,
  `msg_text` text,
  `msg_timestamp` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`message_id`),
  KEY `acc_id` (`acc_id`),
  KEY `user_id` (`user_id`),
  KEY `host_id` (`host_id`),
  CONSTRAINT `message_ibfk_1` FOREIGN KEY (`acc_id`) REFERENCES `accommodation` (`acc_id`),
  CONSTRAINT `message_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `airbnb_user` (`user_id`),
  CONSTRAINT `message_ibfk_3` FOREIGN KEY (`host_id`) REFERENCES `airbnb_host` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES (1,3,1,1,'Hello, I\'m interested in your flat.','2023-02-15 09:30:00'),(2,9,2,2,'Is the apartment available next month?','2023-02-16 11:45:00'),(3,11,4,3,'I love the views from your villa!','2023-02-17 14:20:00'),(4,12,5,4,'Could you provide more details about your penthouse?','2023-02-18 17:10:00'),(5,13,19,5,'Interested in booking your modern apartment.','2023-02-19 08:00:00'),(6,16,7,6,'How far is the room from the city center?','2023-02-20 13:30:00'),(7,17,8,7,'Tell me more about the amenities in your duplex.','2023-02-21 15:45:00'),(8,18,15,8,'Is there a minimum stay required for your apartment?','2023-02-22 10:20:00'),(9,20,14,9,'Can I bring my pet to your family home?','2023-02-23 07:15:00'),(10,22,38,10,'Looking for a quiet retreat, is your place suitable?','2023-02-24 12:05:00'),(11,22,38,10,'Yes, our place is perfect for a quiet retreat. Feel free to book!','2023-02-24 12:45:00'),(12,17,8,7,'The duplex has a fully equipped kitchen and a cozy living room. You\'ll love it!','2023-02-21 16:30:00'),(13,20,14,9,'Unfortunately, we do not allow pets in our family home. Apologies for any inconvenience.','2023-02-23 08:00:00'),(14,18,15,8,'There is no minimum stay required for our apartment. You can book for your desired duration.','2023-02-22 11:00:00'),(15,16,7,6,'The room is approximately 15 minutes away from the city center. Its easily accessible!','2023-02-20 14:10:00'),(16,13,19,5,'The modern apartment is available for your desired dates. You can proceed with the booking.','2023-02-19 09:15:00'),(17,11,4,3,'Thank you! We re glad you love the views from our villa. It s a unique experience!','2023-02-17 14:45:00'),(18,9,2,2,'Yes, the apartment is available next month. You can check the calendar and make a reservation.','2023-02-16 12:15:00'),(19,3,1,1,'Hello! Thank you for your interest in our flat. It s available for booking. Let us know if you have any questions!','2023-02-15 10:00:00'),(20,12,5,4,'Certainly! I ll provide detailed information about the penthouse shortly. Thank you for your patience.','2023-02-18 18:00:00');
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `payment_id` int NOT NULL AUTO_INCREMENT,
  `booking_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `credit_card_name` varchar(255) DEFAULT NULL,
  `payment_timestamp` timestamp NULL DEFAULT NULL,
  `total_value` float DEFAULT NULL,
  `payment_status` varchar(50) DEFAULT NULL,
  `currency` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`payment_id`),
  KEY `booking_id` (`booking_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`booking_id`),
  CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `airbnb_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,1,3,'Visa','2023-04-11 10:30:00',1435,'Completed','EUR'),(2,2,9,'Mastercard','2023-04-13 12:20:00',925,'Pending','EUR'),(3,3,11,'American Express','2023-04-16 08:15:00',775,'Completed','EUR'),(4,4,12,'Visa','2023-04-19 09:30:00',2155,'Pending','EUR'),(5,5,13,'Mastercard','2023-04-21 14:45:00',840,'Completed','EUR'),(6,6,16,'Visa','2023-04-24 07:30:00',990,'Pending','EUR'),(7,7,17,'American Express','2023-04-27 09:45:00',585,'Completed','EUR'),(8,8,18,'Mastercard','2023-04-29 12:30:00',907,'Pending','EUR'),(9,9,20,'Visa','2023-05-03 08:45:00',745,'Completed','EUR'),(10,10,22,'American Express','2023-05-06 10:30:00',385,'Pending','EUR'),(11,11,23,'Mastercard','2023-05-12 13:15:00',1010,'Completed','EUR'),(12,12,24,'Visa','2023-05-15 07:30:00',2365,'Pending','EUR'),(13,13,25,'American Express','2023-05-20 09:45:00',350,'Completed','EUR'),(14,14,27,'Mastercard','2023-05-22 12:30:00',355,'Pending','EUR'),(15,15,30,'Visa','2023-05-25 14:45:00',355,'Completed','EUR'),(16,16,31,'American Express','2023-05-20 08:30:00',2070,'Pending','EUR'),(17,17,32,'Mastercard','2023-05-27 10:15:00',1805,'Completed','EUR'),(18,18,34,'Visa','2023-05-30 12:30:00',660,'Pending','EUR'),(19,19,36,'American Express','2023-06-05 14:45:00',1150,'Completed','EUR'),(20,20,40,'Mastercard','2023-06-10 09:30:00',370,'Pending','EUR');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `region`
--

DROP TABLE IF EXISTS `region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `region` (
  `region_id` int NOT NULL AUTO_INCREMENT,
  `region_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`region_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `region`
--

LOCK TABLES `region` WRITE;
/*!40000 ALTER TABLE `region` DISABLE KEYS */;
INSERT INTO `region` VALUES (1,'Europe'),(2,'Northern Europe'),(3,'Southern Europe'),(4,'Western Europe'),(5,'Central Europe'),(6,'Eastern Europe'),(7,'Scandinavia'),(8,'Mediterranean'),(9,'Baltic States'),(10,'Alps Region'),(11,'Iberian Peninsula'),(12,'Benelux'),(13,'Nordic Countries'),(14,'British Isles'),(15,'Eastern Mediterranean'),(16,'Nordic and Baltic'),(17,'Western Mediterranean'),(18,'Northern Germany'),(19,'Southern Germany'),(20,'Central Germany');
/*!40000 ALTER TABLE `region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `region_relation`
--

DROP TABLE IF EXISTS `region_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `region_relation` (
  `region_id` int NOT NULL,
  `location_id` int NOT NULL,
  PRIMARY KEY (`region_id`,`location_id`),
  KEY `location_id` (`location_id`),
  CONSTRAINT `region_relation_ibfk_1` FOREIGN KEY (`region_id`) REFERENCES `region` (`region_id`),
  CONSTRAINT `region_relation_ibfk_2` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `region_relation`
--

LOCK TABLES `region_relation` WRITE;
/*!40000 ALTER TABLE `region_relation` DISABLE KEYS */;
INSERT INTO `region_relation` VALUES (1,1),(2,1),(4,1),(14,1),(1,2),(5,2),(18,2),(1,3),(3,3),(11,3),(1,4),(3,4),(11,4),(1,5),(5,5),(1,6),(5,6),(1,7),(6,7),(10,7),(1,8),(5,8),(10,8),(1,9),(5,9),(12,9),(1,10),(5,10),(12,10),(1,11),(5,11),(12,11),(1,12),(2,12),(7,12),(16,12),(1,13),(2,13),(7,13),(16,13),(1,14),(2,14),(7,14),(16,14),(1,15),(2,15),(7,15),(16,15),(1,16),(2,16),(7,16),(13,16),(16,16),(1,17),(3,17),(8,17),(1,18),(6,18),(1,19),(5,19),(8,19),(1,20),(3,20),(8,20),(15,20);
/*!40000 ALTER TABLE `region_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review` (
  `review_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `rating_stars` char(1) DEFAULT NULL,
  `review_text` text,
  `review_timestamp` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`review_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (1,'Amazing hospitality','5','The host was incredibly friendly and the accommodation exceeded our expectations.','2023-02-15 09:30:00'),(2,'Disappointing experience','2','The cleanliness was subpar, and there were issues with the amenities.','2023-02-16 11:45:00'),(3,'Highly recommended','5','A wonderful stay with excellent service. Will definitely come back!','2023-02-17 14:20:00'),(4,'Could be better','3','The location was good, but improvements are needed in terms of facilities.','2023-02-18 17:10:00'),(5,'Excellent service','5','The host was attentive, and the property was well-maintained. A perfect getaway!','2023-02-19 08:15:00'),(6,'Not worth the price','2','The accommodation did not justify the high cost, and the service was lacking.','2023-02-20 13:30:00'),(7,'Lovely stay','4','Comfortable and cozy accommodation. Minor issues, but overall a pleasant experience.','2023-02-21 15:45:00'),(8,'Disorganized host','2','The host seemed disorganized, and check-in/check-out processes were confusing.','2023-02-22 19:00:00'),(9,'Absolutely fantastic','5','A memorable experience with outstanding hospitality. Would recommend to everyone!','2023-02-23 10:45:00'),(10,'Room for improvement','3','Decent stay, but there are areas that could be improved for a better guest experience.','2023-02-24 12:30:00'),(11,'Pleasant surprise','4','The property exceeded our expectations. Clean, well-equipped, and great location.','2023-02-25 14:45:00'),(12,'Unpleasant stay','1','Major issues with cleanliness and communication with the host. Not recommended.','2023-02-26 16:00:00'),(13,'Home away from home','5','The host made us feel at home. Cozy atmosphere and excellent amenities.','2023-02-27 08:30:00'),(14,'Okay experience','3','Average stay with no major issues. Decent accommodation for the price.','2023-02-28 11:15:00'),(15,'Superb service','5','The host was accommodating, and the property was exceptional. Highly satisfied!','2023-03-01 13:45:00'),(16,'Not recommended','2','Several issues with the accommodation, and the host was unresponsive to concerns.','2023-03-02 15:30:00'),(17,'Great value','4','Affordable accommodation with good amenities. A positive experience overall.','2023-03-03 17:45:00'),(18,'Below expectations','2','The property did not meet expectations, and the service left much to be desired.','2023-03-04 20:00:00'),(19,'Exceptional stay','5','An outstanding experience with top-notch service. Will definitely return in the future.','2023-03-05 09:00:00'),(20,'Outstanding guest!',NULL,'It was a pleasure hosting this guest. They were respectful and left the place in great condition.','2023-02-15 09:30:00'),(21,'Exceptional guest',NULL,'Hosting this guest was a delight. They were considerate and followed all house rules.','2023-02-17 14:20:00'),(22,'Highly recommended guest',NULL,'This guest was fantastic. Clean and respectful. Would gladly host them again!','2023-02-19 08:15:00'),(23,'Smooth hosting',NULL,'Hosting this guest was hassle-free. They followed all guidelines, and the stay was pleasant.','2023-02-27 08:30:00'),(24,'Excellent guest',NULL,'It was a pleasure hosting this guest. They were respectful and left the place in great condition.','2023-03-01 13:45:00'),(25,'Amazing experience',NULL,'This guest made the stay amazing. Friendly and left the place spotless.','2023-03-05 11:10:00'),(26,'Top-notch guest',NULL,'Hosting this guest was a breeze. They were respectful and easy to communicate with.','2023-03-10 07:45:00'),(27,'A+\" guest',NULL,'Exceptional guest! Respectful, communicative, and a pleasure to host.','2023-03-15 16:20:00'),(28,'Great communication',NULL,'This guest communicated well and adhered to all rules. Would welcome them back anytime.','2023-03-20 13:30:00'),(29,'Perfect guest',NULL,'Hosting this guest was a delight. Everything went smoothly, and they were very respectful.','2023-03-25 10:15:00'),(30,'Wonderful stay',NULL,'It was a wonderful experience hosting this guest. They were polite and left the space immaculate.','2023-04-02 11:40:00'),(31,'Fantastic guest',NULL,'This guest was fantastic. Considerate, tidy, and a pleasure to host.','2023-04-07 08:05:00'),(32,'Great guest',NULL,'Hosting this guest was a great experience. They followed all instructions and left the place in great shape.','2023-04-12 14:30:00'),(33,'Highly satisfied',NULL,'I highly recommend this guest. They were courteous and left the accommodation in perfect condition.','2023-04-17 07:25:00'),(34,'Impressive guest',NULL,'This guest left a lasting impression. Polite, respectful, and easy to communicate with.','2023-04-22 12:15:00'),(35,'Spectacular stay',NULL,'Hosting this guest was a spectacular experience. They were clean, quiet, and respectful.','2023-04-28 09:50:00'),(36,'Excellent communication',NULL,'Communication with this guest was excellent. They were punctual and followed all guidelines.','2023-05-03 06:15:00'),(37,'Superb guest',NULL,'Superb guest! The stay was smooth, and they left the place in excellent condition.','2023-05-08 15:40:00'),(38,'Top-tier guest',NULL,'This guest is top-tier. Respectful, responsible, and an overall pleasure to host.','2023-05-13 11:05:00'),(39,'Outstanding experience',NULL,'Hosting this guest was an outstanding experience. \nThey were considerate and left the space in perfect condition.','2023-05-18 07:30:00'),(40,'great time','5','It was a pleasure staying in your place. They were very friendly and the accommodation looks great.','2023-03-01 13:49:00');
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review_relation`
--

DROP TABLE IF EXISTS `review_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review_relation` (
  `review_id` int NOT NULL,
  `value_id` int NOT NULL,
  PRIMARY KEY (`review_id`,`value_id`),
  KEY `value_id` (`value_id`),
  CONSTRAINT `review_relation_ibfk_1` FOREIGN KEY (`review_id`) REFERENCES `review` (`review_id`),
  CONSTRAINT `review_relation_ibfk_2` FOREIGN KEY (`value_id`) REFERENCES `review_value` (`value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review_relation`
--

LOCK TABLES `review_relation` WRITE;
/*!40000 ALTER TABLE `review_relation` DISABLE KEYS */;
INSERT INTO `review_relation` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(40,20);
/*!40000 ALTER TABLE `review_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review_value`
--

DROP TABLE IF EXISTS `review_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review_value` (
  `value_id` int NOT NULL AUTO_INCREMENT,
  `cleanliness` decimal(2,1) DEFAULT NULL,
  `accuracy` decimal(2,1) DEFAULT NULL,
  `check_in` decimal(2,1) DEFAULT NULL,
  `communication` decimal(2,1) DEFAULT NULL,
  `location` decimal(2,1) DEFAULT NULL,
  `general_value` decimal(2,1) DEFAULT NULL,
  PRIMARY KEY (`value_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review_value`
--

LOCK TABLES `review_value` WRITE;
/*!40000 ALTER TABLE `review_value` DISABLE KEYS */;
INSERT INTO `review_value` VALUES (1,4.5,5.0,4.0,4.8,4.2,4.6),(2,3.2,2.5,3.8,3.0,3.5,3.2),(3,5.0,4.7,4.9,5.0,4.8,4.9),(4,2.5,3.0,2.0,2.8,3.5,2.6),(5,4.0,4.2,4.5,4.6,4.0,4.2),(6,3.8,3.5,3.2,3.7,3.0,3.5),(7,4.7,4.8,4.5,4.9,4.2,4.6),(8,2.0,2.5,2.8,2.2,2.0,2.4),(9,4.2,4.0,4.8,4.5,4.7,4.4),(10,3.5,3.2,3.7,3.0,3.8,3.4),(11,4.9,4.7,4.5,4.8,4.6,4.7),(12,2.8,3.0,2.5,2.7,3.0,2.8),(13,4.3,4.5,4.2,4.6,4.0,4.4),(14,2.0,2.2,2.5,2.0,2.8,2.3),(15,4.6,4.8,4.5,4.9,4.2,4.7),(16,3.0,3.5,3.8,3.2,3.0,3.4),(17,4.8,4.7,4.9,5.0,4.5,4.8),(18,2.3,2.0,2.8,2.5,2.2,2.4),(19,4.4,4.5,4.2,4.6,4.0,4.3),(20,4.9,4.4,4.5,4.1,4.2,4.3);
/*!40000 ALTER TABLE `review_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_language`
--

DROP TABLE IF EXISTS `user_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_language` (
  `language_id` int NOT NULL AUTO_INCREMENT,
  `language_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`language_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_language`
--

LOCK TABLES `user_language` WRITE;
/*!40000 ALTER TABLE `user_language` DISABLE KEYS */;
INSERT INTO `user_language` VALUES (1,'English'),(2,'German'),(3,'Spanish'),(4,'French'),(5,'Italian'),(6,'Portuguese'),(7,'Dutch'),(8,'Swedish'),(9,'Norwegian'),(10,'Greek'),(11,'Russian'),(12,'Polish'),(13,'Czech'),(14,'Hungarian'),(15,'Romanian'),(16,'Danish'),(17,'Finnish'),(18,'Bulgarian'),(19,'Catalan'),(20,'Maltese');
/*!40000 ALTER TABLE `user_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_language_relation`
--

DROP TABLE IF EXISTS `user_language_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_language_relation` (
  `language_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`language_id`,`user_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `user_language_relation_ibfk_1` FOREIGN KEY (`language_id`) REFERENCES `user_language` (`language_id`),
  CONSTRAINT `user_language_relation_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `airbnb_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_language_relation`
--

LOCK TABLES `user_language_relation` WRITE;
/*!40000 ALTER TABLE `user_language_relation` DISABLE KEYS */;
INSERT INTO `user_language_relation` VALUES (1,1),(5,1),(10,1),(1,2),(2,2),(6,2),(2,4),(3,4),(3,5),(4,5),(4,6),(6,6),(6,7),(8,7),(7,8),(8,8),(9,8),(9,10),(1,14),(9,14),(8,15),(10,15),(4,19),(5,19),(7,19),(1,21),(3,21),(9,26),(10,26),(8,28),(5,29),(7,29),(3,33),(5,33),(6,35),(2,37),(4,37),(2,38),(10,38),(7,39);
/*!40000 ALTER TABLE `user_language_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_review`
--

DROP TABLE IF EXISTS `user_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_review` (
  `user_id` int NOT NULL,
  `acc_id` int NOT NULL,
  `review_id` int NOT NULL,
  `review_timestamp` timestamp NOT NULL,
  PRIMARY KEY (`acc_id`,`user_id`,`review_id`,`review_timestamp`),
  KEY `user_id` (`user_id`),
  KEY `review_id` (`review_id`),
  CONSTRAINT `user_review_ibfk_1` FOREIGN KEY (`acc_id`) REFERENCES `accommodation` (`acc_id`),
  CONSTRAINT `user_review_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `airbnb_user` (`user_id`),
  CONSTRAINT `user_review_ibfk_3` FOREIGN KEY (`review_id`) REFERENCES `review` (`review_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_review`
--

LOCK TABLES `user_review` WRITE;
/*!40000 ALTER TABLE `user_review` DISABLE KEYS */;
INSERT INTO `user_review` VALUES (1,6,25,'2023-06-15 10:30:00'),(2,7,26,'2023-07-20 09:15:00'),(3,1,20,'2023-01-15 09:30:00'),(4,9,28,'2023-09-05 11:00:00'),(5,10,29,'2023-10-12 08:00:00'),(6,11,30,'2023-11-03 08:30:00'),(7,12,31,'2023-12-10 07:45:00'),(8,13,32,'2024-01-05 06:00:00'),(9,2,21,'2023-02-17 14:20:00'),(10,15,34,'2024-03-20 14:45:00'),(11,3,22,'2023-03-25 08:45:00'),(12,4,23,'2023-04-10 12:00:00'),(13,5,24,'2023-05-01 06:00:00'),(14,19,38,'2024-07-20 14:15:00'),(15,20,39,'2024-08-30 10:00:00'),(16,8,27,'2023-08-30 14:45:00'),(17,14,33,'2024-02-15 13:30:00'),(18,16,35,'2024-04-25 09:00:00'),(19,17,36,'2024-05-10 07:15:00'),(20,18,37,'2024-06-15 15:00:00');
/*!40000 ALTER TABLE `user_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wishlist` (
  `user_id` int NOT NULL,
  `acc_id` int NOT NULL,
  PRIMARY KEY (`user_id`,`acc_id`),
  KEY `acc_id` (`acc_id`),
  CONSTRAINT `wishlist_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `airbnb_user` (`user_id`),
  CONSTRAINT `wishlist_ibfk_2` FOREIGN KEY (`acc_id`) REFERENCES `accommodation` (`acc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlist`
--

LOCK TABLES `wishlist` WRITE;
/*!40000 ALTER TABLE `wishlist` DISABLE KEYS */;
INSERT INTO `wishlist` VALUES (21,1),(40,1),(11,2),(2,3),(22,3),(12,4),(3,5),(23,5),(13,6),(4,7),(24,7),(14,8),(5,9),(25,9),(15,10),(6,11),(16,12),(7,13),(17,14),(8,15),(18,16),(9,17),(19,18),(10,19),(20,20);
/*!40000 ALTER TABLE `wishlist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-26 12:07:24
