-- MySQL dump 10.13  Distrib 5.7.27, for Linux (x86_64)
--
-- Host: localhost    Database: soloadventure
-- ------------------------------------------------------
-- Server version	5.7.27-0ubuntu0.18.04.1

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
-- Table structure for table `links`
--

DROP TABLE IF EXISTS `links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `story_id` int(10) unsigned NOT NULL,
  `target_id` int(10) unsigned NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `story_id` (`story_id`),
  KEY `target_id` (`target_id`),
  CONSTRAINT `links_ibfk_1` FOREIGN KEY (`story_id`) REFERENCES `story` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `links_ibfk_2` FOREIGN KEY (`target_id`) REFERENCES `story` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `links`
--

LOCK TABLES `links` WRITE;
/*!40000 ALTER TABLE `links` DISABLE KEYS */;
INSERT INTO `links` VALUES (3,1,3,'Sanningen'),(4,1,2,'Ljuger'),(5,3,5,'Plocka bär'),(6,5,7,'Plocka bär så att ni kan gå hem någon gång.'),(7,3,4,'Ni går vidare in i skogen i ett försök att hitta något roligt'),(8,2,7,'Plocka bär så att ni kan gå hem någon gång.'),(9,2,4,'Ni går vidare in i skogen i ett försök att hitta något roligt.'),(10,4,8,'Greta vill inte gå dit men du känner hur det drar i dig nyfikenheten blir snart olidlig.Vad gör du?'),(11,8,12,'Strunta i huset eftersom Greta verkar vara så rädd för det.'),(12,8,10,'Går dit själv'),(13,8,9,'Tvingar Greta att följa med till huset.'),(14,12,7,'PLocka bär istället så att ni kan bli insläppta ui huset igen.'),(15,12,9,'Ger vika för nyfikenheten'),(16,9,13,'Ni kommer fram till huset så nära att ni skulle kunna titta in.'),(17,13,16,'Smyger in i huset trots Gretas protester'),(18,13,15,'Lyssnar på Greta eftrsom du får en olycksbådande klump i magen nu när du faktiskt kommit nära huset.'),(19,13,11,'Tittar in genom ett fönster'),(20,16,18,'Fråga varför hon är så rädd det är ju bara ett hus'),(21,18,20,'Skit i det '),(22,18,18,'Säg att du inte bryr dig. Tvingar ut svaret'),(23,16,21,'Försök trösta Greta');
/*!40000 ALTER TABLE `links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `story`
--

DROP TABLE IF EXISTS `story`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `story` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `body` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `story`
--

LOCK TABLES `story` WRITE;
/*!40000 ALTER TABLE `story` DISABLE KEYS */;
INSERT INTO `story` VALUES (1,'Hans och Greta vaknar upp i skogen efter att ha blivit utslängda från deras hem eftersom de inte gjort sin sysslor. Greta berättar om drömmen hon hade den här natten. Ni har drömt exakt samma dröm Vad gör du? Ni måste fylla en hink med bär innan ni får gå hem.'),(2,'säger ingenting om det.'),(3,'Du säger \"nämen vad underligt jag drömde samma sak\"'),(4,'Ni ser ett hus i skogen som gömmer sig bakom grenarna Vad gör ni.'),(5,'Plocka bär'),(6,'Buuu'),(7,'Hinken är full ni kan nu gå säkert hem till den misär ni kallar liv uatn att göra något speciellt i era liv och ångra att du inte tagit chansen att utforska världen. Nu är ni fast med att laga sockar och gå hungriga varje dag efetrsom ni inte har råd med mat '),(8,'Greta vill inte gå dit men du känner hur det drar i dig nyfikenheten blir snart olidlig.Vad gör du?'),(9,'\"Vill du aldrig göra något roligt det är ju bara ett hus vi kan ju i alla fall kolla lite närmare.\"'),(10,'Du blir aldrig sedd igen du anses vara död. Great hittar aldrig hem och börjar leva i skogen. Era föräldrar dör av sorgen av att tappa deras enda barn.'),(11,'Du ser ingenting ovanligt det ser bara ut som ett tomt hus så ni går tillbaka till hinken men uptcker att ni inte kan hitta tillbaka till den. '),(12,'Strunta i huset eftersom Greta verkar vara så rädd för det.'),(13,'Vad gör du?'),(14,'Greta är vettskrämt med ett hjärta bultande så hårt att till och med du kan höra det om det intte är ditt bultande hjärta du hör. Ni står i hallen Vad gör du?'),(15,'Ni  hittar inte hem så ni söker skydd i en grotta i närheten där ni kan sova för natten. I grottan finner ni en massa ben från djur troligen men det är svårt att veta efteersom ni inte har något att lysa upp marken eftersom ingen av er kan göra upp en eld. '),(16,'Greta är vettskrämt med ett hjärta bultande så hårt att till och med du kan höra det om det intte är ditt bultande hjärta du hör. Ni står i hallen Vad gör du?'),(18,'Hon vill inte berätta. Hon säger att det för med sig et dåligtomen att prata om det.'),(19,'Hon ger vika och följer med dig för att hon inte vill bli ensam kvar, eller att du ska dö.'),(20,'Försök trösta Greta. Du vill inte gå själv '),(21,'Hon är så rädd att hon inte vågar gå någon stans.');
/*!40000 ALTER TABLE `story` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-24 14:58:40
