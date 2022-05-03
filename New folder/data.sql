-- MySQL dump 10.16  Distrib 10.1.26-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: db
-- ------------------------------------------------------
-- Server version	10.1.26-MariaDB-0+deb9u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` varchar(0) DEFAULT NULL,
  `name` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` varchar(0) DEFAULT NULL,
  `group_id` varchar(0) DEFAULT NULL,
  `permission_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` tinyint(4) DEFAULT NULL,
  `content_type_id` tinyint(4) DEFAULT NULL,
  `codename` varchar(18) DEFAULT NULL,
  `name` varchar(23) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,1,'add_logentry','Can add log entry'),(2,1,'change_logentry','Can change log entry'),(3,1,'delete_logentry','Can delete log entry'),(4,1,'view_logentry','Can view log entry'),(5,2,'add_permission','Can add permission'),(6,2,'change_permission','Can change permission'),(7,2,'delete_permission','Can delete permission'),(8,2,'view_permission','Can view permission'),(9,3,'add_group','Can add group'),(10,3,'change_group','Can change group'),(11,3,'delete_group','Can delete group'),(12,3,'view_group','Can view group'),(13,4,'add_contenttype','Can add content type'),(14,4,'change_contenttype','Can change content type'),(15,4,'delete_contenttype','Can delete content type'),(16,4,'view_contenttype','Can view content type'),(17,5,'add_session','Can add session'),(18,5,'change_session','Can change session'),(19,5,'delete_session','Can delete session'),(20,5,'view_session','Can view session'),(21,6,'add_user','Can add user'),(22,6,'change_user','Can change user'),(23,6,'delete_user','Can delete user'),(24,6,'view_user','Can view user'),(25,7,'add_flight','Can add flight'),(26,7,'change_flight','Can change flight'),(27,7,'delete_flight','Can delete flight'),(28,7,'view_flight','Can view flight'),(29,8,'add_place','Can add place'),(30,8,'change_place','Can change place'),(31,8,'delete_place','Can delete place'),(32,8,'view_place','Can view place'),(33,9,'add_weekday','Can add week day'),(34,9,'change_weekday','Can change week day'),(35,9,'delete_weekday','Can delete week day'),(36,9,'view_weekday','Can view week day'),(37,10,'add_passenger','Can add passenger'),(38,10,'change_passenger','Can change passenger'),(39,10,'delete_passenger','Can delete passenger'),(40,10,'view_passenger','Can view passenger'),(41,11,'add_week','Can add week'),(42,11,'change_week','Can change week'),(43,11,'delete_week','Can delete week'),(44,11,'view_week','Can view week'),(45,12,'add_ticket','Can add ticket'),(46,12,'change_ticket','Can change ticket'),(47,12,'delete_ticket','Can delete ticket'),(48,12,'view_ticket','Can view ticket');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` smallint(6) DEFAULT NULL,
  `action_time` varchar(10) DEFAULT NULL,
  `object_id` tinyint(4) DEFAULT NULL,
  `object_repr` varchar(55) DEFAULT NULL,
  `change_message` varchar(74) DEFAULT NULL,
  `content_type_id` tinyint(4) DEFAULT NULL,
  `user_id` tinyint(4) DEFAULT NULL,
  `action_flag` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2020-11-01',1,'Sunday (1)','[{\"added\": {}}]',9,1,1),(2,'2020-11-01',1,'Sunday (1)','[]',9,1,2),(3,'2020-11-01',2,'Monday (2)','[{\"added\": {}}]',9,1,1),(4,'2020-11-01',3,'Tuesday (3)','[{\"added\": {}}]',9,1,1),(5,'2020-11-01',4,'Wednesday (4)','[{\"added\": {}}]',9,1,1),(6,'2020-11-01',5,'Thursday (5)','[{\"added\": {}}]',9,1,1),(7,'2020-11-01',6,'Friday (6)','[{\"added\": {}}]',9,1,1),(8,'2020-11-01',7,'Saturday (7)','[{\"added\": {}}]',9,1,1),(9,'2020-11-01',1,'New Delhi, India (DEL)','[{\"added\": {}}]',8,1,1),(10,'2020-11-01',2,'Mumbai, India (BOM)','[{\"added\": {}}]',8,1,1),(11,'2020-11-01',3,'Tokyo, Japan (HND)','[{\"added\": {}}]',8,1,1),(12,'2020-11-01',4,'Beijing, China (PEK)','[{\"added\": {}}]',8,1,1),(13,'2020-11-01',5,'Los Angeles, USA (LAX)','[{\"added\": {}}]',8,1,1),(14,'2020-11-01',6,'Dubai, UAE (DXB)','[{\"added\": {}}]',8,1,1),(15,'2020-11-01',7,'Chicago, USA (ORD)','[{\"added\": {}}]',8,1,1),(16,'2020-11-01',8,'London, United Kingdom (LHR)','[{\"added\": {}}]',8,1,1),(17,'2020-11-01',7,'Chicago, United States (ORD)','[{\"changed\": {\"fields\": [\"Country\"]}}]',8,1,2),(18,'2020-11-01',6,'Dubai, United Arab Emirates (DXB)','[{\"changed\": {\"fields\": [\"Country\"]}}]',8,1,2),(19,'2020-11-01',9,'Shanghai, China (PVG)','[{\"added\": {}}]',8,1,1),(20,'2020-11-01',10,'Paris, France (CDG)','[{\"added\": {}}]',8,1,1),(21,'2020-11-01',11,'Dallas, United States (DFW)','[{\"added\": {}}]',8,1,1),(22,'2020-11-01',12,'Guangzhou, China (CAN)','[{\"added\": {}}]',8,1,1),(23,'2020-11-01',13,'Amsterdam, Netherlands (AMS)','[{\"added\": {}}]',8,1,1),(24,'2020-11-01',14,'Hong Kong, Hong Kong SAR, China (HKG)','[{\"added\": {}}]',8,1,1),(25,'2020-11-01',15,'Seoul, South Korea (ICN)','[{\"added\": {}}]',8,1,1),(26,'2020-11-01',16,'Frankfurt, Germany (FRA)','[{\"added\": {}}]',8,1,1),(27,'2020-11-01',17,'Denver, United States (DEN)','[{\"added\": {}}]',8,1,1),(28,'2020-11-01',1,'Delhi, India (DEL)','[{\"changed\": {\"fields\": [\"City\"]}}]',8,1,2),(29,'2020-11-01',18,'Singapore, Singapore (SIN)','[{\"added\": {}}]',8,1,1),(30,'2020-11-01',19,'Bangkok, Thailand (BKK)','[{\"added\": {}}]',8,1,1),(31,'2020-11-01',20,'New York, United States (JFK)','[{\"added\": {}}]',8,1,1),(32,'2020-11-01',21,'Kuala Lumpur, Malaysia (KUL)','[{\"added\": {}}]',8,1,1),(33,'2020-11-01',22,'Madrid, Spain (MAD)','[{\"added\": {}}]',8,1,1),(34,'2020-11-01',23,'San Francisco, United States (SFO)','[{\"added\": {}}]',8,1,1),(35,'2020-11-01',24,'Chengdu, China (CTU)','[{\"added\": {}}]',8,1,1),(36,'2020-11-01',25,'Jakarta, Indonesia (CGK)','[{\"added\": {}}]',8,1,1),(37,'2020-11-01',26,'Shenzhen, China (SZX)','[{\"added\": {}}]',8,1,1),(38,'2020-11-01',27,'Barcelona, Spain (BCN)','[{\"added\": {}}]',8,1,1),(39,'2020-11-01',28,'Istanbul, Turkey (IST)','[{\"added\": {}}]',8,1,1),(40,'2020-11-01',29,'Seattle, United States (SEA)','[{\"added\": {}}]',8,1,1),(41,'2020-11-01',30,'Las Vegas, United States (LAS)','[{\"added\": {}}]',8,1,1),(42,'2020-11-01',31,'Orlando, United States (MCO)','[{\"added\": {}}]',8,1,1),(43,'2020-11-01',32,'Toronto, Canada (YYZ)','[{\"added\": {}}]',8,1,1),(44,'2020-11-01',33,'Mexico City, Mexico (MEX)','[{\"added\": {}}]',8,1,1),(45,'2020-11-01',34,'Charlotte, United States (CLT)','[{\"added\": {}}]',8,1,1),(46,'2020-11-01',35,'Moscow, Russia (SVO)','[{\"added\": {}}]',8,1,1),(47,'2020-11-01',36,'Taipei, Taiwan (TPE)','[{\"added\": {}}]',8,1,1),(48,'2020-11-01',37,'Kunming, China (KMG)','[{\"added\": {}}]',8,1,1),(49,'2020-11-01',38,'Munich, Germany (MUC)','[{\"added\": {}}]',8,1,1),(50,'2020-11-01',39,'Manila, Philippines (MNL)','[{\"added\": {}}]',8,1,1),(51,'2020-11-01',40,'Xi\'an, China (XIY)','[{\"added\": {}}]',8,1,1),(52,'2020-11-01',41,'London, United Kingdom (LGW)','[{\"added\": {}}]',8,1,1),(53,'2020-11-01',42,'Newark, United States (EWR)','[{\"added\": {}}]',8,1,1),(54,'2020-11-01',43,'Phoenix, United States (PHX)','[{\"added\": {}}]',8,1,1),(55,'2020-11-01',44,'Miami, United States (MIA)','[{\"added\": {}}]',8,1,1),(56,'2020-11-01',45,'Shanghai, China (SHA)','[{\"added\": {}}]',8,1,1),(57,'2020-11-01',46,'Houston, United States (IAH)','[{\"added\": {}}]',8,1,1),(58,'2020-11-01',47,'Chongqing, China (CKG)','[{\"added\": {}}]',8,1,1),(59,'2020-11-01',48,'Sydney, Australia (SYD)','[{\"added\": {}}]',8,1,1),(60,'2020-11-01',49,'Tokyo, Japan (NRT)','[{\"added\": {}}]',8,1,1),(61,'2020-11-01',50,'Bengaluru, India (BLR)','[{\"added\": {}}]',8,1,1),(62,'2020-11-01',51,'Chennai, India (MAA)','[{\"added\": {}}]',8,1,1),(63,'2020-11-01',52,'Kolkata, India (CCU)','[{\"added\": {}}]',8,1,1),(64,'2020-11-01',53,'Hyderabad, India (HYD)','[{\"added\": {}}]',8,1,1),(65,'2020-11-01',54,'Ahmedabad, India (AMD)','[{\"added\": {}}]',8,1,1),(66,'2020-11-01',55,'Kochi, India (COK)','[{\"added\": {}}]',8,1,1),(67,'2020-11-01',56,'Goa, India (GOI)','[{\"added\": {}}]',8,1,1),(68,'2020-11-01',57,'Pune, India (PNQ)','[{\"added\": {}}]',8,1,1),(69,'2020-11-01',58,'Guwahati, India (GAU)','[{\"added\": {}}]',8,1,1),(70,'2020-11-01',59,'Lucknow, India (LKO)','[{\"added\": {}}]',8,1,1),(71,'2020-11-01',60,'Jaipur, India (JAI)','[{\"added\": {}}]',8,1,1),(72,'2020-11-01',61,'Patna, India (PAT)','[{\"added\": {}}]',8,1,1),(73,'2020-11-01',62,'Siliguri, India (IXB)','[{\"added\": {}}]',8,1,1),(74,'2020-11-01',63,'Imphal, India (IMF)','[{\"added\": {}}]',8,1,1),(75,'2020-11-01',1,'1: Ayush Kumar','[{\"changed\": {\"fields\": [\"First name\", \"Last name\"]}}]',6,1,2),(76,'2020-11-01',1,'Sunday (1)','[{\"added\": {}}]',11,1,1),(77,'2020-11-01',2,'Monday (2)','[{\"added\": {}}]',11,1,1),(78,'2020-11-01',3,'Tuesday (3)','[{\"added\": {}}]',11,1,1),(79,'2020-11-01',4,'Wednesday (4)','[{\"added\": {}}]',11,1,1),(80,'2020-11-01',5,'Thursday (5)','[{\"added\": {}}]',11,1,1),(81,'2020-11-01',6,'Friday (6)','[{\"added\": {}}]',11,1,1),(82,'2020-11-01',7,'Saturday (7)','[{\"added\": {}}]',11,1,1),(83,'2020-11-01',1,'1: Delhi, India (DEL) to Guwahati, India (GAU)','[{\"added\": {}}]',7,1,1),(84,'2020-11-01',1,'1: Delhi, India (DEL) to Guwahati, India (GAU)','[{\"changed\": {\"fields\": [\"Fare\"]}}]',7,1,2),(85,'2020-11-01',1,'1: Delhi, India (DEL) to Guwahati, India (GAU)','[{\"changed\": {\"fields\": [\"Arrival time\", \"Business fare\", \"First fare\"]}}]',7,1,2),(86,'2020-11-01',1,'1: Delhi, India (DEL) to Guwahati, India (GAU)','[]',7,1,2),(87,'2020-11-01',1,'1: Delhi, India (DEL) to Guwahati, India (GAU)','[{\"changed\": {\"fields\": [\"Business fare\"]}}]',7,1,2),(88,'2020-11-01',2,'2: Delhi, India (DEL) to Guwahati, India (GAU)','[{\"added\": {}}]',7,1,1),(89,'2020-11-01',2,'2: Delhi, India (DEL) to Guwahati, India (GAU)','[]',7,1,2),(90,'2020-11-01',3,'3: Delhi, India (DEL) to Guwahati, India (GAU)','[{\"added\": {}}]',7,1,1),(91,'2020-11-01',4,'4: Delhi, India (DEL) to Guwahati, India (GAU)','[{\"added\": {}}]',7,1,1),(92,'2020-11-01',4,'4: Delhi, India (DEL) to Guwahati, India (GAU)','[{\"changed\": {\"fields\": [\"Duration\"]}}]',7,1,2),(93,'2020-11-01',4,'4: Delhi, India (DEL) to Guwahati, India (GAU)','[{\"changed\": {\"fields\": [\"Duration\"]}}]',7,1,2),(94,'2020-11-01',4,'4: Delhi, India (DEL) to Guwahati, India (GAU)','[{\"changed\": {\"fields\": [\"Duration\"]}}]',7,1,2),(95,'2020-11-01',4,'4: Delhi, India (DEL) to Guwahati, India (GAU)','[]',7,1,2),(96,'2020-11-01',5,'5: Delhi, India (DEL) to Guwahati, India (GAU)','[{\"added\": {}}]',7,1,1),(97,'2020-11-01',5,'5: Delhi, India (DEL) to Guwahati, India (GAU)','[]',7,1,2),(98,'2020-11-01',6,'6: Delhi, India (DEL) to Guwahati, India (GAU)','[{\"added\": {}}]',7,1,1),(99,'2020-11-01',6,'6: Delhi, India (DEL) to Guwahati, India (GAU)','[]',7,1,2),(100,'2020-11-01',7,'7: Guwahati, India (GAU) to Delhi, India (DEL)','[{\"added\": {}}]',7,1,1),(101,'2020-11-01',7,'7: Guwahati, India (GAU) to Delhi, India (DEL)','[]',7,1,2),(102,'2020-11-01',8,'8: Guwahati, India (GAU) to Delhi, India (DEL)','[{\"added\": {}}]',7,1,1),(103,'2020-11-01',9,'9: Guwahati, India (GAU) to Delhi, India (DEL)','[{\"added\": {}}]',7,1,1),(104,'2020-11-01',10,'10: Guwahati, India (GAU) to Delhi, India (DEL)','[{\"added\": {}}]',7,1,1),(105,'2020-11-02',2,'Monday (0)','[{\"changed\": {\"fields\": [\"Number\"]}}]',11,1,2),(106,'2020-11-02',3,'Tuesday (1)','[{\"changed\": {\"fields\": [\"Number\"]}}]',11,1,2),(107,'2020-11-02',4,'Wednesday (2)','[{\"changed\": {\"fields\": [\"Number\"]}}]',11,1,2),(108,'2020-11-02',5,'Thursday (3)','[{\"changed\": {\"fields\": [\"Number\"]}}]',11,1,2),(109,'2020-11-02',6,'Friday (4)','[{\"changed\": {\"fields\": [\"Number\"]}}]',11,1,2),(110,'2020-11-02',7,'Saturday (5)','[{\"changed\": {\"fields\": [\"Number\"]}}]',11,1,2),(111,'2020-11-02',1,'Sunday (6)','[{\"changed\": {\"fields\": [\"Number\"]}}]',11,1,2),(112,'2020-11-07',3,'3: Delhi, India (DEL) to Guwahati, India (GAU)','[{\"changed\": {\"fields\": [\"Duration\"]}}]',7,1,2),(113,'2020-11-16',11,'11: Delhi, India (DEL) to New York, United States (JFK)','[{\"added\": {}}]',7,1,1),(114,'2020-11-17',11,'11: Delhi, India (DEL) to New York, United States (JFK)','[{\"changed\": {\"fields\": [\"Arrival time\"]}}]',7,1,2),(115,'2020-11-19',10,'Passenger: Ayush Kumar, male','',10,1,3),(116,'2020-11-19',9,'Passenger: Ayush Kumar, male','',10,1,3),(117,'2020-11-19',8,'Passenger: Ayush Kumar, male','',10,1,3),(118,'2020-11-19',7,'Passenger: Ayush Kumar, male','',10,1,3),(119,'2020-11-19',6,'Passenger: Ayush Kumar, male','',10,1,3),(120,'2020-11-19',5,'Passenger: Ayush Kumar, male','',10,1,3),(121,'2020-11-19',4,'Passenger: Ayush Kumar, male','',10,1,3),(122,'2020-11-19',3,'Passenger: Ayush Kumar, male','',10,1,3),(123,'2020-11-19',2,'Passenger: Ayush Kumar, male','',10,1,3),(124,'2020-11-19',1,'Passenger: Ayush Kumar, male','',10,1,3),(125,'2020-11-19',2,'Ticket object (2)','',12,1,3),(126,'2020-11-19',5,'Ticket object (5)','',12,1,3),(127,'2020-11-19',4,'Ticket object (4)','',12,1,3),(128,'2020-11-19',3,'Ticket object (3)','',12,1,3),(129,'2020-11-19',1,'Ticket object (1)','',12,1,3),(130,'2020-11-19',17,'Passenger: Ayush Kumar, male','',10,1,3),(131,'2020-11-19',16,'Passenger: Ayush Kumar, male','',10,1,3),(132,'2020-11-19',15,'Passenger: Ayush Kumar, male','',10,1,3),(133,'2020-11-19',14,'Passenger: Ayush Kumar, male','',10,1,3),(134,'2020-11-19',13,'Passenger: Ayush Kumar, male','',10,1,3),(135,'2020-11-19',12,'Passenger: Ayush Kumar, male','',10,1,3),(136,'2020-11-19',11,'Passenger: Ayush Kumar, male','',10,1,3),(137,'2020-11-19',7,'Ticket object (7)','[{\"changed\": {\"fields\": [\"Status\"]}}]',12,1,2),(138,'2020-11-19',6,'Ticket object (6)','[{\"changed\": {\"fields\": [\"Status\"]}}]',12,1,2),(139,'2020-11-19',7,'Ticket object (7)','',12,1,3),(140,'2020-11-19',6,'Ticket object (6)','',12,1,3),(141,'2020-11-21',14,'Ticket object (14)','',12,1,3),(142,'2020-11-21',13,'Ticket object (13)','',12,1,3),(143,'2020-11-21',12,'Ticket object (12)','',12,1,3),(144,'2020-11-21',11,'Ticket object (11)','',12,1,3),(145,'2020-11-21',10,'Ticket object (10)','',12,1,3),(146,'2020-11-21',9,'Ticket object (9)','',12,1,3),(147,'2020-11-21',8,'Ticket object (8)','',12,1,3),(148,'2020-11-21',17,'Ticket object (17)','',12,1,3),(149,'2020-11-21',16,'Ticket object (16)','',12,1,3),(150,'2020-11-21',18,'Ticket object (18)','',12,1,3),(151,'2020-11-23',24,'Ticket object (24)','',12,1,3),(152,'2020-11-23',26,'Ticket object (26)','[{\"changed\": {\"fields\": [\"Status\"]}}]',12,1,2),(153,'2020-11-23',25,'Ticket object (25)','[{\"changed\": {\"fields\": [\"Status\"]}}]',12,1,2),(154,'2020-11-23',25,'Ticket object (25)','[{\"changed\": {\"fields\": [\"Status\"]}}]',12,1,2),(155,'2020-11-23',25,'Ticket object (25)','[{\"changed\": {\"fields\": [\"Status\"]}}]',12,1,2),(156,'2020-11-23',25,'Ticket object (25)','[{\"changed\": {\"fields\": [\"Status\"]}}]',12,1,2),(157,'2020-11-23',15,'Ticket object (15)','[{\"changed\": {\"fields\": [\"Status\"]}}]',12,1,2),(158,'2020-11-23',25,'Ticket object (25)','[{\"changed\": {\"fields\": [\"Status\"]}}]',12,1,2),(159,'2020-11-30',49,'AE2704','',12,1,3),(160,'2020-11-30',48,'C85B6F','',12,1,3),(161,'2020-11-30',47,'FFF246','',12,1,3),(162,'2020-11-30',45,'AA8A55','',12,1,3),(163,'2020-11-30',41,'28F6DD','',12,1,3),(164,'2020-11-30',40,'D78945','',12,1,3),(165,'2020-11-30',39,'20A00E','',12,1,3),(166,'2020-11-30',38,'28EC4F','',12,1,3),(167,'2020-11-30',46,'E2D697','',12,1,3),(168,'2020-11-30',44,'15E35B','',12,1,3),(169,'2020-11-30',43,'D645A2','',12,1,3),(170,'2020-11-30',42,'FA79CE','',12,1,3),(171,'2020-11-30',37,'F10FD2','',12,1,3),(172,'2020-11-30',36,'7E9243','',12,1,3),(173,'2020-11-30',35,'9034C4','',12,1,3),(174,'2020-11-30',34,'56391A','',12,1,3),(175,'2020-11-30',33,'9386E6','',12,1,3),(176,'2020-11-30',32,'83F425','',12,1,3),(177,'2020-11-30',31,'DC9454','',12,1,3),(178,'2020-11-30',30,'C5E42F','',12,1,3),(179,'2020-11-30',29,'5ECA9A','',12,1,3),(180,'2020-11-30',28,'AD7056','',12,1,3),(181,'2020-11-30',27,'0FF12D','',12,1,3),(182,'2020-11-30',54,'7B6D3E','',12,1,3),(183,'2020-11-30',53,'D15868','',12,1,3),(184,'2020-11-30',22,'5C7059','',12,1,3),(185,'2020-11-30',21,'0E0A6F','',12,1,3),(186,'2020-11-30',20,'67D46E','',12,1,3),(187,'2020-11-30',51,'986E4C','',12,1,3),(188,'2020-11-30',50,'2D7253','',12,1,3),(189,'2020-11-30',12,'12: London, United Kingdom (LHR) to Tokyo, Japan (HND)','[{\"added\": {}}]',7,1,1),(190,'2020-11-30',64,'Sydney, Australia (SYD)','[{\"added\": {}}]',8,1,1),(191,'2020-11-30',13,'13: Sydney, Australia (SYD) to Seoul, South Korea (ICN)','[{\"added\": {}}]',7,1,1),(192,'2020-11-30',14,'14: Delhi, India (DEL) to Imphal, India (IMF)','[{\"added\": {}}]',7,1,1),(193,'2020-11-30',15,'15: Imphal, India (IMF) to Delhi, India (DEL)','[{\"added\": {}}]',7,1,1),(194,'2020-11-30',16,'16: Imphal, India (IMF) to Delhi, India (DEL)','[{\"added\": {}}]',7,1,1),(195,'2020-11-30',17,'17: Delhi, India (DEL) to Imphal, India (IMF)','[{\"added\": {}}]',7,1,1),(196,'2020-11-30',18,'18: Delhi, India (DEL) to Imphal, India (IMF)','[{\"added\": {}}]',7,1,1),(197,'2020-11-30',19,'19: Delhi, India (DEL) to Imphal, India (IMF)','[{\"added\": {}}]',7,1,1),(198,'2020-11-30',20,'20: Imphal, India (IMF) to Delhi, India (DEL)','[{\"added\": {}}]',7,1,1),(199,'2020-11-30',21,'21: Delhi, India (DEL) to Imphal, India (IMF)','[{\"added\": {}}]',7,1,1),(200,'2020-11-30',22,'22: Delhi, India (DEL) to Imphal, India (IMF)','[{\"added\": {}}]',7,1,1),(201,'2020-11-30',22,'22: Delhi, India (DEL) to Imphal, India (IMF)','',7,1,3),(202,'2020-11-30',23,'23: Imphal, India (IMF) to Delhi, India (DEL)','[{\"added\": {}}]',7,1,1),(203,'2020-11-30',24,'24: Delhi, India (DEL) to Imphal, India (IMF)','[{\"added\": {}}]',7,1,1),(204,'2020-11-30',21,'21: Delhi, India (DEL) to Imphal, India (IMF)','[{\"changed\": {\"fields\": [\"Economy fare\"]}}]',7,1,2),(205,'2020-11-30',48,'Sydney, Australia (SYD)','',8,1,3),(206,'2020-11-30',59,'E52AB0','[{\"changed\": {\"fields\": [\"Booking date\", \"Status\"]}}]',12,1,2),(207,'2020-11-30',59,'E52AB0','[{\"changed\": {\"fields\": [\"Status\"]}}]',12,1,2),(208,'2020-11-30',61,'D18636','[{\"changed\": {\"fields\": [\"Status\"]}}]',12,1,2),(209,'2020-11-30',63,'B01037','',12,1,3),(210,'2020-11-30',62,'3BFE55','',12,1,3),(211,'2020-11-30',65,'6B4112','',12,1,3),(212,'2020-11-30',64,'6C9672','',12,1,3),(213,'2022-03-18',1,'1: Ayush Kumar','[{\"changed\": {\"fields\": [\"Password\"]}}]',6,5,2),(214,'2022-03-18',2,'2: Liu Yang','[{\"changed\": {\"fields\": [\"Password\"]}}]',6,5,2),(215,'2022-03-18',2,'2: Liu Yang','[{\"changed\": {\"fields\": [\"Last login\", \"Staff status\"]}}]',6,5,2),(216,'2022-03-18',2,'2: Liu Yang','[{\"changed\": {\"fields\": [\"Superuser status\"]}}]',6,5,2);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` tinyint(4) DEFAULT NULL,
  `app_label` varchar(12) DEFAULT NULL,
  `model` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'contenttypes','contenttype'),(7,'flight','flight'),(10,'flight','passenger'),(8,'flight','place'),(12,'flight','ticket'),(6,'flight','user'),(11,'flight','week'),(9,'flight','weekday'),(5,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` tinyint(4) DEFAULT NULL,
  `app` varchar(12) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `applied` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2020-11-01'),(2,'contenttypes','0002_remove_content_type_name','2020-11-01'),(3,'auth','0001_initial','2020-11-01'),(4,'auth','0002_alter_permission_name_max_length','2020-11-01'),(5,'auth','0003_alter_user_email_max_length','2020-11-01'),(6,'auth','0004_alter_user_username_opts','2020-11-01'),(7,'auth','0005_alter_user_last_login_null','2020-11-01'),(8,'auth','0006_require_contenttypes_0002','2020-11-01'),(9,'auth','0007_alter_validators_add_error_messages','2020-11-01'),(10,'auth','0008_alter_user_username_max_length','2020-11-01'),(11,'auth','0009_alter_user_last_name_max_length','2020-11-01'),(12,'auth','0010_alter_group_name_max_length','2020-11-01'),(13,'auth','0011_update_proxy_permissions','2020-11-01'),(14,'auth','0012_alter_user_first_name_max_length','2020-11-01'),(15,'flight','0001_initial','2020-11-01'),(16,'admin','0001_initial','2020-11-01'),(17,'admin','0002_logentry_remove_auto_add','2020-11-01'),(18,'admin','0003_logentry_add_action_flag_choices','2020-11-01'),(19,'sessions','0001_initial','2020-11-01'),(20,'flight','0002_auto_20201101_1756','2020-11-01'),(21,'flight','0003_auto_20201101_1758','2020-11-01'),(22,'flight','0004_flight_fare','2020-11-01'),(23,'flight','0005_auto_20201101_1816','2020-11-01'),(24,'flight','0006_flight_arrival_time','2020-11-01'),(25,'flight','0007_auto_20201102_1504','2020-11-02'),(26,'flight','0002_auto_20201102_1559','2020-11-02'),(27,'flight','0003_auto_20201102_1600','2020-11-02'),(28,'flight','0004_auto_20201102_1601','2020-11-02'),(29,'flight','0005_auto_20201118_2320','2020-11-18'),(30,'flight','0006_auto_20201118_2323','2020-11-18'),(31,'flight','0007_ticket','2020-11-18'),(32,'flight','0008_ticket_user','2020-11-19'),(33,'flight','0009_auto_20201119_1156','2020-11-19'),(34,'flight','0010_auto_20201119_1255','2020-11-19'),(35,'flight','0011_auto_20201119_1257','2020-11-19'),(36,'flight','0012_auto_20201119_1302','2020-11-19'),(37,'flight','0013_auto_20201121_1355','2020-11-21'),(38,'flight','0014_auto_20220322_0031','2022-03-21');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(32) DEFAULT NULL,
  `session_data` varchar(228) DEFAULT NULL,
  `expire_date` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('ugbpc2bgdb4gz4n41fm3sbcuundkfbs7','.eJxVjDsOwjAQBe_iGlmb2Lt2KOlzhmjXHxJAtpRPhbg7iZQC2jcz760G3tZx2JY0D1NUV9Woy-8mHJ6pHCA-uNyrDrWs8yT6UPRJF93XmF630_07GHkZ95qSbQWsz75DykwAvsuCQI4wIJJAJ9YYh4ChBXAhANJeGPapYSvq8wW0Rzam:1kZAjU:MotAzr4vhfhXb38_08OPUiARdEkpcF9R_lQj_KSJAbc','2020-11-15'),('rbxhcdkz4qgg20ebfac0yk5pk7hzby9q','.eJxVjDsOwjAQBe_iGlm2d-NkKelzBsvrDw4gR4qTCnF3EikFtDPz3ls4v63FbS0tboriKoy4_DL24ZnqIeLD1_ssw1zXZWJ5JPK0TY5zTK_b2f4dFN_KvrY5hRQjZvBEqC1xQtC5A9PtjDISE-ZB2R4HE3oTFJBCZZnBa7BRfL7nZDdT:1kfRA4:JIawdl1rh95Oox8KN69DyUEMGWCLC__v1Hh1vSeAPTo','2020-12-02'),('lspccn9d9ncmklmzwn4pgpn6tqosyi2d','.eJxVjDsOwjAQBe_iGlmb2Lt2KOlzhmjXHxJAtpRPhbg7iZQC2jcz760G3tZx2JY0D1NUV9Woy-8mHJ6pHCA-uNyrDrWs8yT6UPRJF93XmF630_07GHkZ95qSbQWsz75DykwAvsuCQI4wIJJAJ9YYh4ChBXAhANJeGPapYSvq8wW0Rzam:1kfmSw:dfMgdx1jfwMYRNMeip0LlVVmoeTsETUZpoDwUIYv_2Q','2020-12-03'),('z5hc1d2pcq1eishg8ci4yyy6hzaqok7x','.eJxVjDsOwjAQBe_iGlmb2Lt2KOlzhmjXHxJAtpRPhbg7iZQC2jcz760G3tZx2JY0D1NUV9Woy-8mHJ6pHCA-uNyrDrWs8yT6UPRJF93XmF630_07GHkZ95qSbQWsz75DykwAvsuCQI4wIJJAJ9YYh4ChBXAhANJeGPapYSvq8wW0Rzam:1kgP8t:nCskJr8TsVsGPN4YxiYrzHmvFysDzUxkZzxC5gXhEfM','2020-12-05'),('u4wbcjgfx7l381rf3llglivla2hv4uxz','.eJxVjDsOwjAQBe_iGlmb2Lt2KOlzhmjXHxJAtpRPhbg7iZQC2jcz760G3tZx2JY0D1NUV9Woy-8mHJ6pHCA-uNyrDrWs8yT6UPRJF93XmF630_07GHkZ95qSbQWsz75DykwAvsuCQI4wIJJAJ9YYh4ChBXAhANJeGPapYSvq8wW0Rzam:1kgswy:nEm9RNT2SQPM1mrnbCDB2ItxwAgwzJR8LKUnIA6DlPs','2020-12-06'),('06quypa3nnk072pyq9xx1u4a2nsfpgty','.eJxVjDsOwjAQBe_iGlmb2Lt2KOlzhmjXHxJAtpRPhbg7iZQC2jcz760G3tZx2JY0D1NUV9Woy-8mHJ6pHCA-uNyrDrWs8yT6UPRJF93XmF630_07GHkZ95qSbQWsz75DykwAvsuCQI4wIJJAJ9YYh4ChBXAhANJeGPapYSvq8wW0Rzam:1kh5bD:jvZpCx4jGhUMvvScrbJt8Woz1g-UyWZlkmEaEyNSjxg','2020-12-07'),('ujpqpcaemv2okg0sz19jura18ud08pww','.eJxVjDsOwjAQBe_iGlmb2Lt2KOlzhmjXHxJAtpRPhbg7iZQC2jcz760G3tZx2JY0D1NUV9Woy-8mHJ6pHCA-uNyrDrWs8yT6UPRJF93XmF630_07GHkZ95qSbQWsz75DykwAvsuCQI4wIJJAJ9YYh4ChBXAhANJeGPapYSvq8wW0Rzam:1kh5it:OClmifzqngXYrLWKTWcG7TTbqeaMblPr-JBpuxAjauk','2020-12-07'),('w28q0plq5e90kltefmqm7hbjke4gl4db','.eJxVjDsOwjAQBe_iGlmb2Lt2KOlzhmjXHxJAtpRPhbg7iZQC2jcz760G3tZx2JY0D1NUV9Woy-8mHJ6pHCA-uNyrDrWs8yT6UPRJF93XmF630_07GHkZ95qSbQWsz75DykwAvsuCQI4wIJJAJ9YYh4ChBXAhANJeGPapYSvq8wW0Rzam:1khETq:9--0hbmVjq26IJhJ1TvMIOpchhRSuosR9_D8whkOSV4','2020-12-07'),('y5loknb92zase2hysx0ufvx620ejfxtq','.eJxVjDsOwjAQBe_iGlmb2Lt2KOlzhmjXHxJAtpRPhbg7iZQC2jcz760G3tZx2JY0D1NUV9Woy-8mHJ6pHCA-uNyrDrWs8yT6UPRJF93XmF630_07GHkZ95qSbQWsz75DykwAvsuCQI4wIJJAJ9YYh4ChBXAhANJeGPapYSvq8wW0Rzam:1kjOlz:1tuzVZcnfl_PTMZzSp0W-JXFM51NE5kqIb8xWHdGS58','2020-12-13'),('tgb0z1ovtxmkpuzw0jksncgk1f704e3m','.eJxVjDsOwjAQBe_iGlmb2Lt2KOlzhmjXHxJAtpRPhbg7iZQC2jcz760G3tZx2JY0D1NUV9Woy-8mHJ6pHCA-uNyrDrWs8yT6UPRJF93XmF630_07GHkZ95qSbQWsz75DykwAvsuCQI4wIJJAJ9YYh4ChBXAhANJeGPapYSvq8wW0Rzam:1kjbvm:0e0OzAe8QWFNJ4UCkbYaf0iqbIirKYmpqsVTIU1ujZs','2020-12-14'),('73mk7yrvetogvzf243ant7m946ac8hj0','.eJxVjDsOwjAQBe_iGlm2d-NkKelzBsvrDw4gR4qTCnF3EikFtDPz3ls4v63FbS0tboriKoy4_DL24ZnqIeLD1_ssw1zXZWJ5JPK0TY5zTK_b2f4dFN_KvrY5hRQjZvBEqC1xQtC5A9PtjDISE-ZB2R4HE3oTFJBCZZnBa7BRfL7nZDdT:1kjxzp:eq9fLNkfJJrV1NJcTAUn_K1cPZr2poT_mg4nD5s0nTc','2020-12-15'),('yavrd7d7jkvghco6glb7ww43wzcivgq5','.eJxVjMEOwiAQRP-FsyEoBXY9evcbCOyuUjU0Ke3J-O_SpAed28ybmbeKaV1KXJvMcWR1Vk4dfrOc6Cl1A_xI9T5pmuoyj1lvFb3Tpq8Ty-uyd_8OSmqlrwU8MwkHzBZzNwTBOuIAMFDwjGARDXuxJ4cMgzMMN599tgaOXerzBfTNN3g:1nV4cw:AT4n4EepXuixrXGIrSwccJ_m4ypFto5gb6Q_hSC1tDk','2022-04-01'),('yvkc9bk0e0rf0arxvsyfzhkieafng3tw','.eJxVjMEOwiAQRP-FsyFYCux69N5vICyLUjWQlPZk_Hdp0oPObebNzFv4sK3Zby0tfmZxEYM4_WYU4jOVHfAjlHuVsZZ1mUnuFXnQJqfK6XU9un8HObTc1wksc0zskDRSNxGcNpEdwBidZQSNqNgmPRhkGI1iuFmypBWcu8TnC_MCN3U:1nV4vK:4P0c5yk9HwTYfGDbY6rN5NRodQDl4Nm5heiTs6X86Ns','2022-04-01');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flight_flight`
--

DROP TABLE IF EXISTS `flight_flight`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flight_flight` (
  `id` tinyint(4) DEFAULT NULL,
  `depart_time` varchar(8) DEFAULT NULL,
  `duration` bigint(20) DEFAULT NULL,
  `plane` varchar(10) DEFAULT NULL,
  `airline` varchar(18) DEFAULT NULL,
  `destination_id` tinyint(4) DEFAULT NULL,
  `origin_id` tinyint(4) DEFAULT NULL,
  `economy_fare` decimal(7,1) DEFAULT NULL,
  `business_fare` decimal(7,1) DEFAULT NULL,
  `first_fare` decimal(7,1) DEFAULT NULL,
  `arrival_time` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flight_flight`
--

LOCK TABLES `flight_flight` WRITE;
/*!40000 ALTER TABLE `flight_flight` DISABLE KEYS */;
INSERT INTO `flight_flight` VALUES (1,'05:25:00',8700000000,'A320','Indigo',58,1,3555.0,0.0,0.0,'07:50:00'),(2,'09:40:00',8700000000,'A320','Vistara',58,1,4780.0,26400.0,0.0,'12:05:00'),(3,'10:10:00',8100000000,'A320','Go Air',58,1,2785.0,0.0,0.0,'12:25:00'),(4,'17:30:00',9300000000,'B737','Spicejet',58,1,2785.0,0.0,0.0,'20:05:00'),(5,'06:05:00',8400000000,'A320','AirAsia',58,1,2830.0,0.0,0.0,'08:25:00'),(6,'14:55:00',8400000000,'A320','Air India',58,1,2830.0,0.0,0.0,'17:15:00'),(7,'12:40:00',10500000000,'A320','Vistara',1,58,0.0,26812.0,0.0,'15:35:00'),(8,'20:45:00',9600000000,'B737','Spicejet',1,58,3197.0,0.0,0.0,'23:25:00'),(9,'13:10:00',10200000000,'A320','Indigo',1,58,3197.0,0.0,0.0,'16:00:00'),(10,'13:00:00',10500000000,'A320','Go Air',1,58,3197.0,0.0,0.0,'15:55:00'),(11,'23:45:00',54600000000,'B777-300','United Airlines',20,1,45401.0,154012.0,300813.0,'14:55:00'),(12,'19:00:00',42600000000,'B777-300ER','All Nippon Airways',3,8,120865.0,371988.0,762828.0,'15:50:00'),(13,'21:15:00',39300000000,'A330-300','Korean Air',15,64,43383.0,172929.0,0.0,'06:10:00'),(14,'10:10:00',10200000000,'A320neo','Indigo',63,1,5780.0,0.0,0.0,'13:00:00'),(15,'13:40:00',12300000000,'A320neo','Indigo',1,63,5807.0,0.0,0.0,'17:05:00'),(16,'14:40:00',9000000000,'A320','Air Asia',1,63,5807.0,0.0,0.0,'17:10:00'),(17,'07:10:00',9000000000,'A320','Air Asia',63,1,5820.0,0.0,0.0,'09:40:00'),(18,'11:10:00',9600000000,'A320neo','Air India',63,1,5780.0,0.0,0.0,'14:00:00'),(19,'09:40:00',13200000000,'A320','Air Asia',63,1,5650.0,0.0,0.0,'13:20:00'),(20,'11:15:00',13200000000,'A320','Air Asia',1,63,5584.0,0.0,0.0,'14:55:00'),(21,'13:15:00',11400000000,'A320','Vistara',63,1,5997.0,7332.0,0.0,'16:25:00'),(23,'21:30:00',11400000000,'A320','Vistara',1,63,3997.0,7332.0,0.0,'00:40:00'),(24,'16:15:00',10200000000,'A321','Go Air',63,1,5850.0,0.0,0.0,'19:05:00');
/*!40000 ALTER TABLE `flight_flight` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flight_flight_depart_day`
--

DROP TABLE IF EXISTS `flight_flight_depart_day`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flight_flight_depart_day` (
  `id` smallint(6) DEFAULT NULL,
  `flight_id` tinyint(4) DEFAULT NULL,
  `week_id` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flight_flight_depart_day`
--

LOCK TABLES `flight_flight_depart_day` WRITE;
/*!40000 ALTER TABLE `flight_flight_depart_day` DISABLE KEYS */;
INSERT INTO `flight_flight_depart_day` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,2,1),(9,2,2),(10,2,3),(11,2,4),(12,2,5),(13,2,6),(14,2,7),(15,3,1),(16,3,2),(17,3,3),(18,3,4),(19,3,5),(20,3,6),(21,3,7),(22,4,1),(23,4,2),(24,4,3),(25,4,4),(26,4,5),(27,4,6),(28,4,7),(29,5,1),(30,5,2),(31,5,3),(32,5,4),(33,5,5),(34,5,6),(35,5,7),(36,6,1),(37,6,2),(38,6,3),(39,6,4),(40,6,5),(41,6,6),(42,6,7),(43,7,1),(44,7,2),(45,7,3),(46,7,4),(47,7,5),(48,7,6),(49,7,7),(50,8,1),(51,8,2),(52,8,3),(53,8,4),(54,8,5),(55,8,6),(56,8,7),(57,9,1),(58,9,2),(59,9,3),(60,9,4),(61,9,5),(62,9,6),(63,9,7),(64,10,1),(65,10,2),(66,10,3),(67,10,4),(68,10,5),(69,10,6),(70,10,7),(71,11,1),(72,11,2),(73,11,3),(74,11,4),(75,11,5),(76,11,6),(77,11,7),(78,12,1),(79,12,2),(80,12,3),(81,12,4),(82,12,5),(83,12,6),(84,12,7),(85,13,1),(86,13,2),(87,13,3),(88,13,4),(89,13,5),(90,13,6),(91,13,7),(92,14,1),(93,14,2),(94,14,3),(95,14,4),(96,14,5),(97,14,6),(98,14,7),(99,15,1),(100,15,2),(101,15,3),(102,15,4),(103,15,5),(104,15,6),(105,15,7),(106,16,1),(107,16,2),(108,16,3),(109,16,4),(110,16,5),(111,16,6),(112,16,7),(113,17,1),(114,17,2),(115,17,3),(116,17,4),(117,17,5),(118,17,6),(119,17,7),(120,18,1),(121,18,2),(122,18,3),(123,18,4),(124,18,5),(125,18,6),(126,18,7),(127,19,1),(128,19,2),(129,19,3),(130,19,4),(131,19,5),(132,19,6),(133,19,7),(134,20,1),(135,20,2),(136,20,3),(137,20,4),(138,20,5),(139,20,6),(140,20,7),(141,21,1),(142,21,2),(143,21,3),(144,21,4),(145,21,5),(146,21,6),(147,21,7),(155,23,1),(156,23,2),(157,23,3),(158,23,4),(159,23,5),(160,23,6),(161,23,7),(162,24,1),(163,24,2),(164,24,3),(165,24,4),(166,24,5),(167,24,6),(168,24,7);
/*!40000 ALTER TABLE `flight_flight_depart_day` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flight_passenger`
--

DROP TABLE IF EXISTS `flight_passenger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flight_passenger` (
  `id` tinyint(4) DEFAULT NULL,
  `first_name` varchar(8) DEFAULT NULL,
  `last_name` varchar(8) DEFAULT NULL,
  `gender` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flight_passenger`
--

LOCK TABLES `flight_passenger` WRITE;
/*!40000 ALTER TABLE `flight_passenger` DISABLE KEYS */;
INSERT INTO `flight_passenger` VALUES (18,'Ayush','Kumar','male'),(19,'Liu','Yang','female'),(20,'Liu','Yang','female'),(21,'Liu','Yang','female'),(22,'Liu','Yang','female'),(23,'Liu','Yang','female'),(24,'Liu','Yang','female'),(25,'Liu','Yang','female'),(26,'Liu','Yang','female'),(27,'Liu','Yang','female'),(28,'Ayush','Kumar','male'),(29,'Victoria','Predetti','female'),(30,'Ayush','Kumar','male'),(31,'Ayush','Kumar','male'),(32,'Victoria','Predetti','female'),(33,'Ayush','Kumar','male'),(34,'Victoria','Predetti','female'),(35,'Liu','Yang','female'),(36,'sjhkj','dcs','male'),(37,'Liu','Yang','female'),(38,'Ayush','Kumar','male'),(39,'Liu','Yang','female'),(40,'Ayush','Kumar','male'),(41,'Victoria','Predetti','female'),(42,'Temp','Temp','male'),(43,'Temp','Temp','male'),(44,'Temp','Temp','male'),(45,'Temp','Temp','male'),(46,'Temp','Temp','male'),(47,'Temp','Temp','male'),(48,'Temp','Temp','male'),(49,'Temp','Temp','male'),(50,'Temp','Temp','male'),(51,'Temp','Temp','male'),(52,'Temp','Temp','male'),(53,'Temp','Temp','male'),(54,'Temp','Temp','male'),(55,'Temp','Temp','male'),(56,'Tony','Stark','male'),(57,'Ayush','Kumar','male'),(58,'Liu','Yang','female'),(59,'Ayush','Kumar','male'),(60,'Victoria','Predetti','female'),(61,'Liu','Yang','female'),(62,'Ayush','Kumar','male'),(63,'Ayush','Kumar','male'),(64,'Ayush','Kumar','male'),(65,'Ayush','Kumar','male'),(66,'Ayush','Kumar','male'),(67,'Liu','Yang','female'),(68,'Liu','Yang','female');
/*!40000 ALTER TABLE `flight_passenger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flight_place`
--

DROP TABLE IF EXISTS `flight_place`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flight_place` (
  `id` tinyint(4) DEFAULT NULL,
  `city` varchar(13) DEFAULT NULL,
  `airport` varchar(48) DEFAULT NULL,
  `code` varchar(3) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flight_place`
--

LOCK TABLES `flight_place` WRITE;
/*!40000 ALTER TABLE `flight_place` DISABLE KEYS */;
INSERT INTO `flight_place` VALUES (1,'Delhi','Indira Gandhi International Airport','DEL','India'),(2,'Mumbai','Chhatrapati Shivaji International Airport','BOM','India'),(3,'Tokyo','Tokyo Haneda Airport','HND','Japan'),(4,'Beijing','Beijing Capital International Airport','PEK','China'),(5,'Los Angeles','Los Angeles International Airport','LAX','USA'),(6,'Dubai','Dubai International Airport','DXB','United Arab Emirates'),(7,'Chicago','O\'Hare International Airport','ORD','United States'),(8,'London','London Heathrow Airport','LHR','United Kingdom'),(9,'Shanghai','Shanghai Pudong International Airport','PVG','China'),(10,'Paris','Charles de Gaulle Airport','CDG','France'),(11,'Dallas','Dallas/Fort Worth International Airport','DFW','United States'),(12,'Guangzhou','Guangzhou Baiyun International Airport','CAN','China'),(13,'Amsterdam','Amsterdam Airport Schiphol','AMS','Netherlands'),(14,'Hong Kong','Hong Kong International Airport','HKG','Hong Kong SAR, China'),(15,'Seoul','Seoul Incheon International Airport','ICN','South Korea'),(16,'Frankfurt','Frankfurt Airport','FRA','Germany'),(17,'Denver','Denver International Airport','DEN','United States'),(18,'Singapore','Singapore Changi International Airport','SIN','Singapore'),(19,'Bangkok','Suvarnabhumi Airport','BKK','Thailand'),(20,'New York','John F. Kennedy International Airport','JFK','United States'),(21,'Kuala Lumpur','Kuala Lumpur International Airport','KUL','Malaysia'),(22,'Madrid','Madrid Barajas International Airport','MAD','Spain'),(23,'San Francisco','San Francisco International Airport','SFO','United States'),(24,'Chengdu','Chengdu Shuangliu International Airport','CTU','China'),(25,'Jakarta','Soekarno–Hatta International Airport','CGK','Indonesia'),(26,'Shenzhen','Shenzhen Bao\'an International Airport','SZX','China'),(27,'Barcelona','Barcelona–El Prat Airport','BCN','Spain'),(28,'Istanbul','Istanbul Airport','IST','Turkey'),(29,'Seattle','Seattle-Tacoma International Airport','SEA','United States'),(30,'Las Vegas','McCarran International Airport','LAS','United States'),(31,'Orlando','Orlando International Airport','MCO','United States'),(32,'Toronto','Toronto Pearson International Airport','YYZ','Canada'),(33,'Mexico City','Benito Juárez International Airport','MEX','Mexico'),(34,'Charlotte','Charlotte Douglas International Airport','CLT','United States'),(35,'Moscow','Sheremetyevo International Airport','SVO','Russia'),(36,'Taipei','Taiwan Taoyuan International Airport','TPE','Taiwan'),(37,'Kunming','Kunming Changshui International Airport','KMG','China'),(38,'Munich','Munich Airport','MUC','Germany'),(39,'Manila','Ninoy Aquino International Airport','MNL','Philippines'),(40,'Xi\'an','Xi\'an Xianyang International Airport','XIY','China'),(41,'London','London Gatwick Airport','LGW','United Kingdom'),(42,'Newark','Newark Liberty International Airport','EWR','United States'),(43,'Phoenix','Phoenix Sky Harbor International Airport','PHX','United States'),(44,'Miami','Miami International Airport','MIA','United States'),(45,'Shanghai','Shanghai Hongqiao International Airport','SHA','China'),(46,'Houston','George Bush Intercontinental Airport','IAH','United States'),(47,'Chongqing','Chongqing Jiangbei International Airport','CKG','China'),(49,'Tokyo','Narita International Airport','NRT','Japan'),(50,'Bengaluru','Kempegowda International Airport','BLR','India'),(51,'Chennai','Chennai International Airport','MAA','India'),(52,'Kolkata','Netaji Subhas Chandra Bose International Airport','CCU','India'),(53,'Hyderabad','Rajiv Gandhi International Airport','HYD','India'),(54,'Ahmedabad','Sardar Vallabhbhai Patel International Airport','AMD','India'),(55,'Kochi','Cochin International Airport','COK','India'),(56,'Goa','Dabolim Airport','GOI','India'),(57,'Pune','Pune Airport','PNQ','India'),(58,'Guwahati','Lokpriya Gopinath Bordoloi International Airport','GAU','India'),(59,'Lucknow','Chaudhary Charan Singh International Airport','LKO','India'),(60,'Jaipur','Jaipur International Airport','JAI','India'),(61,'Patna','Jaya Prakash Narayan Airport','PAT','India'),(62,'Siliguri','Bagdogra International Airport','IXB','India'),(63,'Imphal','Imphal Airport','IMF','India'),(64,'Sydney','Sydney Kingsford Smith International Airport','SYD','Australia');
/*!40000 ALTER TABLE `flight_place` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flight_ticket`
--

DROP TABLE IF EXISTS `flight_ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flight_ticket` (
  `id` tinyint(4) DEFAULT NULL,
  `ref_no` varchar(6) DEFAULT NULL,
  `seat_class` varchar(8) DEFAULT NULL,
  `booking_date` varchar(10) DEFAULT NULL,
  `flight_id` tinyint(4) DEFAULT NULL,
  `user_id` tinyint(4) DEFAULT NULL,
  `email` varchar(16) DEFAULT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `flight_ddate` varchar(0) DEFAULT NULL,
  `coupon_discount` decimal(2,1) DEFAULT NULL,
  `coupon_used` varchar(0) DEFAULT NULL,
  `flight_adate` varchar(0) DEFAULT NULL,
  `flight_fare` decimal(7,1) DEFAULT NULL,
  `other_charges` decimal(4,1) DEFAULT NULL,
  `total_fare` decimal(7,1) DEFAULT NULL,
  `status` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flight_ticket`
--

LOCK TABLES `flight_ticket` WRITE;
/*!40000 ALTER TABLE `flight_ticket` DISABLE KEYS */;
INSERT INTO `flight_ticket` VALUES (15,'E2C2A3','economy','',11,2,'liuyang@mail.com','+91 9988772345','',0.0,'','',45401.0,0.0,45401.0,'CONFIRMED'),(19,'D9EC00','business','2020-11-21',7,1,'ayush@mail.com','+91 9783552271','',0.0,'','',53624.0,0.0,53624.0,'CONFIRMED'),(23,'34566A','economy','2020-11-23',9,2,'dghd@mail.com','+91 1234567890','',0.0,'','',3197.0,0.0,3197.0,'CONFIRMED'),(25,'C10F0F','business','2020-11-23',11,2,'liu@mail.com','+91 8399773993','',0.0,'','',308024.0,100.0,308124.0,'CONFIRMED'),(26,'218DD7','economy','',9,2,'liu@mail.com','+91 7777777722','',0.0,'','',3197.0,100.0,3297.0,'CANCELLED'),(52,'2F93D8','economy','2020-11-25',8,2,'temp@mail.com','+91 9387726437','',0.0,'','',3197.0,100.0,3297.0,'PENDING'),(55,'030253','economy','2020-11-29',5,2,'liu@mail.com','+91 8826375271','',0.0,'','',2830.0,100.0,2930.0,'CONFIRMED'),(56,'0ED405','economy','2020-11-29',9,2,'liu@mail.com','+91 8826375271','',0.0,'','',3197.0,100.0,3297.0,'CONFIRMED'),(57,'BE4219','business','2020-11-30',11,1,'ayush@mail.com','+91 9937576283','',0.0,'','',308024.0,100.0,308124.0,'CONFIRMED'),(58,'FDE28E','economy','2020-11-30',13,1,'ayush@mail.com','+91 8928632743','',0.0,'','',43383.0,100.0,43483.0,'CONFIRMED'),(59,'E52AB0','economy','',2,1,'ayush@mail.com','+91 738676962','',0.0,'','',4780.0,100.0,4880.0,'CANCELLED'),(60,'323688','economy','2020-11-30',9,1,'ayush@mail.com','+91 7738925263','',0.0,'','',3197.0,100.0,3297.0,'PENDING'),(61,'D18636','economy','',12,1,'ayush@mail.com','+91 8762636425','',0.0,'','',120865.0,100.0,120965.0,'CONFIRMED'),(66,'A0CF14','economy','2020-11-30',21,1,'ayush@mail.com','+91 8888888888','',0.0,'','',5997.0,100.0,6097.0,'CANCELLED'),(67,'770B95','economy','2020-11-30',20,1,'ayush@mail.com','+91 8888888888','',0.0,'','',5584.0,100.0,5684.0,'CONFIRMED'),(68,'B674F2','economy','2020-11-30',6,1,'ayush@mail.com','+91 8888888888','',0.0,'','',2830.0,100.0,2930.0,'CONFIRMED'),(69,'B375E7','economy','2020-12-01',3,2,'liu@mail.com','+91 76834578364','',0.0,'','',2785.0,100.0,2885.0,'CONFIRMED'),(70,'1C3B56','economy','2020-12-01',8,2,'liu@mail.com','+91 76834578364','',0.0,'','',3197.0,100.0,3297.0,'CONFIRMED'),(71,'C8B111','economy','2020-12-01',19,2,'liu@mail.com','+91 6543243244','',0.0,'','',5650.0,100.0,5750.0,'CONFIRMED'),(72,'8E4668','economy','2020-12-01',23,2,'liu@mail.com','+91 6543243244','',0.0,'','',3997.0,100.0,4097.0,'CONFIRMED');
/*!40000 ALTER TABLE `flight_ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flight_ticket_passengers`
--

DROP TABLE IF EXISTS `flight_ticket_passengers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flight_ticket_passengers` (
  `id` tinyint(4) DEFAULT NULL,
  `ticket_id` tinyint(4) DEFAULT NULL,
  `passenger_id` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flight_ticket_passengers`
--

LOCK TABLES `flight_ticket_passengers` WRITE;
/*!40000 ALTER TABLE `flight_ticket_passengers` DISABLE KEYS */;
INSERT INTO `flight_ticket_passengers` VALUES (15,15,27),(21,19,33),(22,19,34),(26,23,36),(29,25,39),(30,25,40),(31,26,41),(57,52,54),(60,55,56),(61,56,56),(62,57,57),(63,57,58),(64,58,59),(65,59,60),(66,60,61),(67,61,62),(72,66,65),(73,67,65),(74,68,66),(75,69,67),(76,70,67),(77,71,68),(78,72,68);
/*!40000 ALTER TABLE `flight_ticket_passengers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flight_user`
--

DROP TABLE IF EXISTS `flight_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flight_user` (
  `id` tinyint(4) DEFAULT NULL,
  `password` varchar(78) DEFAULT NULL,
  `last_login` varchar(10) DEFAULT NULL,
  `is_superuser` tinyint(4) DEFAULT NULL,
  `username` varchar(7) DEFAULT NULL,
  `first_name` varchar(6) DEFAULT NULL,
  `last_name` varchar(11) DEFAULT NULL,
  `email` varchar(26) DEFAULT NULL,
  `is_staff` tinyint(4) DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT NULL,
  `date_joined` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flight_user`
--

LOCK TABLES `flight_user` WRITE;
/*!40000 ALTER TABLE `flight_user` DISABLE KEYS */;
INSERT INTO `flight_user` VALUES (1,'pbkdf2_sha256$216000$eXSVVApNfj10$jkV1nkqidSAphngsYPdjXqhYs9eTwMf1aegDyvnAwvs=','2022-03-18',1,'ayush','Ayush','Kumar','ayush@mail.com',1,1,''),(2,'pbkdf2_sha256$216000$eXSVVApNfj10$jkV1nkqidSAphngsYPdjXqhYs9eTwMf1aegDyvnAwvs=','2022-03-18',1,'liuyang','Liu','Yang','liu@mail.com',1,1,''),(3,'pbkdf2_sha256$216000$3xhGWjBWawAN$RlXiu13TlMFBdjJP/xX+APOxpmHvcquEE/y685/ghis=','2022-02-28',0,'rushan','Rushan','Jayasundara','rushanthasindu10@gmail.com',0,1,'2022-02-28'),(4,'pbkdf2_sha256$216000$bPSAefRZDztT$NQM6tbQWvDnp0XIobxPdVOzXHT+J6Nx+3GIHhsJOKQ0=','2022-02-28',0,'ashen','Ashen','Dinujaya','ashen@gmail.com',0,1,'2022-02-28'),(5,'pbkdf2_sha256$216000$eXSVVApNfj10$jkV1nkqidSAphngsYPdjXqhYs9eTwMf1aegDyvnAwvs=','2022-03-18',1,'admin','','','admin@admin.com',1,1,'2022-03-18');
/*!40000 ALTER TABLE `flight_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flight_user_groups`
--

DROP TABLE IF EXISTS `flight_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flight_user_groups` (
  `id` varchar(0) DEFAULT NULL,
  `user_id` varchar(0) DEFAULT NULL,
  `group_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flight_user_groups`
--

LOCK TABLES `flight_user_groups` WRITE;
/*!40000 ALTER TABLE `flight_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `flight_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flight_user_user_permissions`
--

DROP TABLE IF EXISTS `flight_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flight_user_user_permissions` (
  `id` varchar(0) DEFAULT NULL,
  `user_id` varchar(0) DEFAULT NULL,
  `permission_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flight_user_user_permissions`
--

LOCK TABLES `flight_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `flight_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `flight_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flight_week`
--

DROP TABLE IF EXISTS `flight_week`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flight_week` (
  `id` tinyint(4) DEFAULT NULL,
  `number` tinyint(4) DEFAULT NULL,
  `name` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flight_week`
--

LOCK TABLES `flight_week` WRITE;
/*!40000 ALTER TABLE `flight_week` DISABLE KEYS */;
INSERT INTO `flight_week` VALUES (1,6,'Sunday'),(2,0,'Monday'),(3,1,'Tuesday'),(4,2,'Wednesday'),(5,3,'Thursday'),(6,4,'Friday'),(7,5,'Saturday');
/*!40000 ALTER TABLE `flight_week` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sqlite_sequence`
--

DROP TABLE IF EXISTS `sqlite_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sqlite_sequence` (
  `name` varchar(24) DEFAULT NULL,
  `seq` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sqlite_sequence`
--

LOCK TABLES `sqlite_sequence` WRITE;
/*!40000 ALTER TABLE `sqlite_sequence` DISABLE KEYS */;
INSERT INTO `sqlite_sequence` VALUES ('django_migrations',38),('django_content_type',12),('auth_permission',48),('auth_group',0),('django_admin_log',216),('flight_user',5),('flight_place',64),('flight_week',7),('flight_flight_depart_day',168),('flight_flight',24),('flight_passenger',68),('flight_ticket_passengers',78),('flight_ticket',72);
/*!40000 ALTER TABLE `sqlite_sequence` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-22 15:20:29
