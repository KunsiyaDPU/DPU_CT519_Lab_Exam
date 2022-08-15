-- MySQL dump 10.13  Distrib 5.7.39, for Linux (x86_64)
--
-- Host: localhost    Database: 0009_Lab_Exam
-- ------------------------------------------------------
-- Server version	5.7.39-0ubuntu0.18.04.2

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
-- Current Database: `0009_Lab_Exam`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `0009_Lab_Exam` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `0009_Lab_Exam`;

--
-- Table structure for table `Hero`
--

DROP TABLE IF EXISTS `Hero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Hero` (
  `Hero_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
  `Detail` varchar(255) NOT NULL,
  `Picture_link` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Hero_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Hero`
--

LOCK TABLES `Hero` WRITE;
/*!40000 ALTER TABLE `Hero` DISABLE KEYS */;
INSERT INTO `Hero` VALUES (1,'The Hulk','As the Hulk, he possesses superhuman abilities including increased strength and durability.','https://upload.wikimedia.org/wikipedia/th/c/c0/20160206183115%21Hulk_%28comics%29_Character_Image.jpg'),(2,'Super man','Superman is a superhero who appears in American comic books published by DC Comics.','https://sites.google.com/a/rpg15.ac.th/dc-univures/_/rsrc/1501222539869/suppexr-maen-super-man/supes.png?height=300&width=400'),(3,'Spider man','Spider-Man is a superhero appearing in American comic books published by Marvel Comics.','https://www.prachachat.net/wp-content/uploads/2019/08/spider-man-far-from-home.jpg');
/*!40000 ALTER TABLE `Hero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Hero_in_movie`
--

DROP TABLE IF EXISTS `Hero_in_movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Hero_in_movie` (
  `Hero_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Movie_id` int(11) NOT NULL,
  PRIMARY KEY (`Hero_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Hero_in_movie`
--

LOCK TABLES `Hero_in_movie` WRITE;
/*!40000 ALTER TABLE `Hero_in_movie` DISABLE KEYS */;
INSERT INTO `Hero_in_movie` VALUES (1,1),(2,2),(3,3);
/*!40000 ALTER TABLE `Hero_in_movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Movie`
--

DROP TABLE IF EXISTS `Movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Movie` (
  `Hero_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Movie_id` int(11) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Trailer_link` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Hero_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Movie`
--

LOCK TABLES `Movie` WRITE;
/*!40000 ALTER TABLE `Movie` DISABLE KEYS */;
INSERT INTO `Movie` VALUES (1,1,'THEHULK','https://www.youtube.com/watch?v=pwsh4FjLavU'),(2,2,'Super man','https://www.youtube.com/watch?v=jV-nV8pBaXM'),(3,3,'Spider-Man','https://www.youtube.com/watch?v=t06RUxPbp_c');
/*!40000 ALTER TABLE `Movie` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-15  3:22:08
