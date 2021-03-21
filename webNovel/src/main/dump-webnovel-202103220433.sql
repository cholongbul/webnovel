-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: webnovel
-- ------------------------------------------------------
-- Server version	8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `author`
--

DROP TABLE IF EXISTS `author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `author` (
  `a_id` int NOT NULL AUTO_INCREMENT,
  `a_name` varchar(20) NOT NULL COMMENT '필명',
  `gender` int DEFAULT NULL COMMENT '0=남, 1=여, 2=불명, 그외',
  `a_history` varchar(300) NOT NULL,
  PRIMARY KEY (`a_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='작가';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `author`
--

LOCK TABLES `author` WRITE;
/*!40000 ALTER TABLE `author` DISABLE KEYS */;
/*!40000 ALTER TABLE `author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `char_ctag`
--

DROP TABLE IF EXISTS `char_ctag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `char_ctag` (
  `ct_id` int NOT NULL,
  `c_id` int NOT NULL,
  KEY `NewTable_FK` (`c_id`),
  KEY `NewTable_FK_1` (`ct_id`),
  CONSTRAINT `NewTable_FK` FOREIGN KEY (`c_id`) REFERENCES `character` (`c_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `NewTable_FK_1` FOREIGN KEY (`ct_id`) REFERENCES `ctag` (`ct_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `char_ctag`
--

LOCK TABLES `char_ctag` WRITE;
/*!40000 ALTER TABLE `char_ctag` DISABLE KEYS */;
/*!40000 ALTER TABLE `char_ctag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character`
--

DROP TABLE IF EXISTS `character`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character` (
  `c_id` int NOT NULL AUTO_INCREMENT,
  `c_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `gender` int NOT NULL COMMENT '0=남자, 1=여자, 3=그외',
  `age` int NOT NULL COMMENT '0=불명',
  `profile` varchar(300) DEFAULT NULL,
  `c_img` varchar(100) DEFAULT NULL,
  `ca_name` varchar(100) DEFAULT NULL,
  `c_birth` varchar(100) DEFAULT NULL,
  `bloodtype` varchar(100) DEFAULT NULL,
  `height` int DEFAULT NULL,
  `weight` int DEFAULT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character`
--

LOCK TABLES `character` WRITE;
/*!40000 ALTER TABLE `character` DISABLE KEYS */;
/*!40000 ALTER TABLE `character` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ctag`
--

DROP TABLE IF EXISTS `ctag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ctag` (
  `ct_id` int NOT NULL AUTO_INCREMENT,
  `ct_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ct_description` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`ct_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctag`
--

LOCK TABLES `ctag` WRITE;
/*!40000 ALTER TABLE `ctag` DISABLE KEYS */;
/*!40000 ALTER TABLE `ctag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ctag_order`
--

DROP TABLE IF EXISTS `ctag_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ctag_order` (
  `subctag_id` int NOT NULL,
  `superctag_id` int NOT NULL,
  PRIMARY KEY (`subctag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctag_order`
--

LOCK TABLES `ctag_order` WRITE;
/*!40000 ALTER TABLE `ctag_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `ctag_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mediamix`
--

DROP TABLE IF EXISTS `mediamix`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mediamix` (
  `n_id` int NOT NULL,
  `mediamix` int DEFAULT NULL COMMENT '0=웹툰, 1=영화, 2=드라마, 3=라디오 드라마',
  KEY `mediamix_FK` (`n_id`),
  CONSTRAINT `mediamix_FK` FOREIGN KEY (`n_id`) REFERENCES `novel` (`n_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mediamix`
--

LOCK TABLES `mediamix` WRITE;
/*!40000 ALTER TABLE `mediamix` DISABLE KEYS */;
/*!40000 ALTER TABLE `mediamix` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `novel`
--

DROP TABLE IF EXISTS `novel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `novel` (
  `n_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `n_description` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `image` varchar(15) DEFAULT NULL,
  `ending` varchar(50) NOT NULL DEFAULT '' COMMENT '0=미완, 1=연재중 2=완결',
  PRIMARY KEY (`n_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='작품 테이블';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `novel`
--

LOCK TABLES `novel` WRITE;
/*!40000 ALTER TABLE `novel` DISABLE KEYS */;
/*!40000 ALTER TABLE `novel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `novel_author`
--

DROP TABLE IF EXISTS `novel_author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `novel_author` (
  `a_id` int NOT NULL,
  `n_id` int NOT NULL,
  KEY `Novel_author_FK` (`n_id`),
  KEY `Novel_author_FK_1` (`a_id`),
  CONSTRAINT `Novel_author_FK` FOREIGN KEY (`n_id`) REFERENCES `novel` (`n_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Novel_author_FK_1` FOREIGN KEY (`a_id`) REFERENCES `author` (`a_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `novel_author`
--

LOCK TABLES `novel_author` WRITE;
/*!40000 ALTER TABLE `novel_author` DISABLE KEYS */;
/*!40000 ALTER TABLE `novel_author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `novel_char`
--

DROP TABLE IF EXISTS `novel_char`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `novel_char` (
  `n_id` int NOT NULL,
  `c_id` int NOT NULL,
  KEY `Novel_char_FK` (`n_id`),
  KEY `novel_char_FK2` (`c_id`),
  CONSTRAINT `Novel_char_FK` FOREIGN KEY (`n_id`) REFERENCES `novel` (`n_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Novel_char_FK_1` FOREIGN KEY (`c_id`) REFERENCES `character` (`c_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `novel_char`
--

LOCK TABLES `novel_char` WRITE;
/*!40000 ALTER TABLE `novel_char` DISABLE KEYS */;
/*!40000 ALTER TABLE `novel_char` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `novel_ntag`
--

DROP TABLE IF EXISTS `novel_ntag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `novel_ntag` (
  `n_id` int NOT NULL,
  `nt_id` int NOT NULL,
  KEY `Novel_tag_FK` (`n_id`),
  KEY `Novel_tag_FK_1` (`nt_id`),
  CONSTRAINT `Novel_tag_FK` FOREIGN KEY (`n_id`) REFERENCES `novel` (`n_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Novel_tag_FK_1` FOREIGN KEY (`nt_id`) REFERENCES `ntag` (`nt_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `novel_ntag`
--

LOCK TABLES `novel_ntag` WRITE;
/*!40000 ALTER TABLE `novel_ntag` DISABLE KEYS */;
/*!40000 ALTER TABLE `novel_ntag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `novel_pub`
--

DROP TABLE IF EXISTS `novel_pub`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `novel_pub` (
  `p_id` int NOT NULL,
  `n_id` int NOT NULL,
  KEY `Novel_pub_FK` (`n_id`),
  KEY `Novel_pub_FK_1` (`p_id`),
  CONSTRAINT `Novel_pub_FK` FOREIGN KEY (`n_id`) REFERENCES `novel` (`n_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Novel_pub_FK_1` FOREIGN KEY (`p_id`) REFERENCES `publisher` (`p_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `novel_pub`
--

LOCK TABLES `novel_pub` WRITE;
/*!40000 ALTER TABLE `novel_pub` DISABLE KEYS */;
/*!40000 ALTER TABLE `novel_pub` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `novel_user`
--

DROP TABLE IF EXISTS `novel_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `novel_user` (
  `u_id` varchar(20) NOT NULL,
  `n_id` int NOT NULL,
  `label` int NOT NULL COMMENT '0=미독, 1=읽는 중, 2=읽기 중단, 3=완독',
  `vote` int NOT NULL COMMENT '0~10',
  KEY `Novel_User_FK` (`n_id`),
  KEY `Novel_User_FK_1` (`u_id`),
  CONSTRAINT `Novel_User_FK` FOREIGN KEY (`n_id`) REFERENCES `novel` (`n_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Novel_User_FK_1` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `novel_user`
--

LOCK TABLES `novel_user` WRITE;
/*!40000 ALTER TABLE `novel_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `novel_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `novel_web`
--

DROP TABLE IF EXISTS `novel_web`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `novel_web` (
  `w_id` int NOT NULL,
  `n_id` int NOT NULL,
  `started` date NOT NULL,
  `ended` date DEFAULT NULL,
  `CompleteNum` int DEFAULT NULL,
  KEY `novel_web_FK` (`n_id`),
  KEY `novel_web_FK_1` (`w_id`),
  CONSTRAINT `novel_web_FK` FOREIGN KEY (`n_id`) REFERENCES `novel` (`n_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `novel_web_FK_1` FOREIGN KEY (`w_id`) REFERENCES `webplatform` (`w_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `novel_web`
--

LOCK TABLES `novel_web` WRITE;
/*!40000 ALTER TABLE `novel_web` DISABLE KEYS */;
/*!40000 ALTER TABLE `novel_web` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ntag`
--

DROP TABLE IF EXISTS `ntag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ntag` (
  `nt_id` int NOT NULL AUTO_INCREMENT,
  `nt_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `remark` varchar(300) NOT NULL,
  PRIMARY KEY (`nt_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='태그';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ntag`
--

LOCK TABLES `ntag` WRITE;
/*!40000 ALTER TABLE `ntag` DISABLE KEYS */;
/*!40000 ALTER TABLE `ntag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ntag_order`
--

DROP TABLE IF EXISTS `ntag_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ntag_order` (
  `subntag_id` int NOT NULL,
  `superntag_id` int NOT NULL,
  PRIMARY KEY (`subntag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ntag_order`
--

LOCK TABLES `ntag_order` WRITE;
/*!40000 ALTER TABLE `ntag_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `ntag_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publisher`
--

DROP TABLE IF EXISTS `publisher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `publisher` (
  `p_id` int NOT NULL AUTO_INCREMENT,
  `p_name` varchar(100) NOT NULL,
  `url` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publisher`
--

LOCK TABLES `publisher` WRITE;
/*!40000 ALTER TABLE `publisher` DISABLE KEYS */;
/*!40000 ALTER TABLE `publisher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `u_id` varchar(20) NOT NULL,
  `pwd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(50) NOT NULL,
  `gender` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '0=남, 1=여',
  `birth` date NOT NULL,
  `created` date NOT NULL,
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='유저';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('aaa','1234','ejatkdml@naver.com','1','2020-12-01','2020-12-27'),('ejatkdml','120541','ejatkdml@gmail.com','1','1993-04-01','2020-12-21');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webplatform`
--

DROP TABLE IF EXISTS `webplatform`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webplatform` (
  `w_id` int NOT NULL AUTO_INCREMENT,
  `w_name` varchar(20) NOT NULL,
  `url` varchar(100) NOT NULL,
  PRIMARY KEY (`w_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='웹 플랫폼';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webplatform`
--

LOCK TABLES `webplatform` WRITE;
/*!40000 ALTER TABLE `webplatform` DISABLE KEYS */;
/*!40000 ALTER TABLE `webplatform` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'webnovel'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-22  4:33:02
