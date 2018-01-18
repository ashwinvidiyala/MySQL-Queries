-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: localhost    Database: friendships
-- ------------------------------------------------------
-- Server version	5.7.20

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
-- Table structure for table `friendships`
--

DROP TABLE IF EXISTS `friendships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `friendships` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `friend_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_friendships_users_idx` (`user_id`),
  KEY `fk_friendships_users1_idx` (`friend_id`),
  CONSTRAINT `fk_friendships_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_friendships_users1` FOREIGN KEY (`friend_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friendships`
--

LOCK TABLES `friendships` WRITE;
/*!40000 ALTER TABLE `friendships` DISABLE KEYS */;
INSERT INTO `friendships` VALUES (1,'2018-01-18 08:42:39','2018-01-18 08:42:39',1,2),(2,'2018-01-18 08:42:45','2018-01-18 08:42:45',1,3),(3,'2018-01-18 08:42:48','2018-01-18 08:42:48',1,4),(4,'2018-01-18 08:42:49','2018-01-18 08:42:49',1,5),(5,'2018-01-18 08:42:54','2018-01-18 08:42:54',2,1),(6,'2018-01-18 08:42:56','2018-01-18 08:42:56',2,3),(7,'2018-01-18 08:42:58','2018-01-18 08:42:58',2,4),(8,'2018-01-18 08:42:59','2018-01-18 08:42:59',2,5),(9,'2018-01-18 08:43:04','2018-01-18 08:43:04',3,1),(10,'2018-01-18 08:43:04','2018-01-18 08:43:04',3,2),(11,'2018-01-18 08:43:06','2018-01-18 08:43:06',3,4),(12,'2018-01-18 08:43:07','2018-01-18 08:43:07',3,5),(13,'2018-01-18 08:43:11','2018-01-18 08:43:11',4,1),(14,'2018-01-18 08:43:12','2018-01-18 08:43:12',4,2),(15,'2018-01-18 08:43:13','2018-01-18 08:43:13',4,3),(16,'2018-01-18 08:43:15','2018-01-18 08:43:15',4,5),(17,'2018-01-18 08:43:17','2018-01-18 08:43:17',5,1),(18,'2018-01-18 08:43:18','2018-01-18 08:43:18',5,2),(19,'2018-01-18 08:43:20','2018-01-18 08:43:20',5,3),(20,'2018-01-18 08:43:20','2018-01-18 08:43:20',5,4);
/*!40000 ALTER TABLE `friendships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Bob','Fisher','2018-01-17 17:22:33','2018-01-17 17:22:33'),(2,'Chris','Baker','2018-01-17 17:23:27','2018-01-17 17:23:27'),(3,'Diana','Smith','2018-01-17 17:23:36','2018-01-17 17:23:36'),(4,'James','Johnson','2018-01-17 17:23:44','2018-01-17 17:23:44'),(5,'Jessica','Davidson','2018-01-17 17:23:55','2018-01-17 17:23:55');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-18 10:23:27
