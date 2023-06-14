-- MySQL dump 10.13  Distrib 8.0.33, for macos13.3 (arm64)
--
-- Host: localhost    Database: java_pos
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `Order_detail`
--

DROP TABLE IF EXISTS `Order_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Order_detail` (
  `product_id` int DEFAULT NULL,
  `order_id` int unsigned DEFAULT NULL,
  `quantity` int unsigned DEFAULT NULL,
  KEY `order_id` (`order_id`),
  CONSTRAINT `order_detail_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `Product` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Order_detail`
--

LOCK TABLES `Order_detail` WRITE;
/*!40000 ALTER TABLE `Order_detail` DISABLE KEYS */;
INSERT INTO `Order_detail` VALUES (1,1,3),(3,1,7),(5,1,1),(8,1,2),(8,2,10),(4,2,10),(3,2,7);
/*!40000 ALTER TABLE `Order_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Product`
--

DROP TABLE IF EXISTS `Product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Product` (
  `product_id` int unsigned NOT NULL AUTO_INCREMENT,
  `product_type` varchar(10) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `price` int unsigned DEFAULT NULL,
  `img` varchar(255) NOT NULL,
  `describe` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Product`
--

LOCK TABLES `Product` WRITE;
/*!40000 ALTER TABLE `Product` DISABLE KEYS */;
INSERT INTO `Product` VALUES (1,'主食','滷肉飯',60,'pork_rice.jpg','加了滷肉的飯'),(2,'主食','乾麵',55,'noodles.jpg','沒有湯了麵'),(3,'飲料','紅茶',15,'blackTea.jpg','黑色的紅茶?'),(4,'飲料','奶茶',50,'milkTea.jpg','假奶奶茶?'),(5,'飲料','綠茶',20,'greenTea.jpg','黃色的綠茶?'),(6,'小菜','米血',10,'rice_blood.jpg','流血的米?'),(7,'小菜','豆乾',20,'drysoy.jpg','干掉的黃豆?'),(8,'小菜','黑輪',10,'black_wheel.jpg','黑色的輪子?'),(9,'主食','牛肉麵',110,'beef_noodles.jpg','牟～');
/*!40000 ALTER TABLE `Product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-14 19:49:06
