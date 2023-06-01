-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: storewala
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int NOT NULL,
  `category_title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_cqndt3y6pm7wefmdv4o83satd` (`category_title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (4,'Laptop'),(1,'Mobiles');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `id` int NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `comment_related_to` int DEFAULT NULL,
  `comment_added` datetime(6) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK8omq0tc18jd43bu5tjh6jvraq` (`user_id`),
  CONSTRAINT `FK8omq0tc18jd43bu5tjh6jvraq` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (14);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_images`
--

DROP TABLE IF EXISTS `product_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_images` (
  `product_id` int NOT NULL,
  `images` varchar(255) DEFAULT NULL,
  KEY `FKqnq71xsohugpqwf3c9gxmsuy` (`product_id`),
  CONSTRAINT `FKqnq71xsohugpqwf3c9gxmsuy` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_images`
--

LOCK TABLES `product_images` WRITE;
/*!40000 ALTER TABLE `product_images` DISABLE KEYS */;
INSERT INTO `product_images` VALUES (1,'aa.jpg'),(2,'bb.jpg'),(3,'cc.jpg'),(4,'dd.jpg'),(5,'ee.jpg'),(6,'ff.jpg'),(7,'gg.jpg'),(8,'hh.jpg'),(9,'ii.jpg'),(10,'jj.jpg'),(11,'kk.jpg'),(12,'ll.jpg'),(13,'mm.jpg'),(14,'nn.jpg'),(15,'oo.jpg'),(16,'pp.jpg');
/*!40000 ALTER TABLE `product_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL,
  `product_description` longtext,
  `product_discount` int NOT NULL,
  `product_highlights` varchar(200) DEFAULT NULL,
  `product_name` varchar(40) DEFAULT NULL,
  `product_price` int NOT NULL,
  `price_after_discount` int DEFAULT NULL,
  `product_seller_id` int DEFAULT NULL,
  `product_seller_name` varchar(255) DEFAULT NULL,
  `product_stocks` int NOT NULL,
  `category_id` int DEFAULT NULL,
  `flipkart_price` int NOT NULL,
  `amazon_url` varchar(255) DEFAULT NULL,
  `flipkart_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKog2rp4qthbtt2lfyhfo32lsw9` (`category_id`),
  CONSTRAINT `FKog2rp4qthbtt2lfyhfo32lsw9` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'The OnePlus Nord CE 2 Lite 5G is a budget-friendly smartphone with powerful features. It comes with a stunning 6.43-inch display and is powered by a Qualcomm Snapdragon processor. The phone offers a triple rear camera setup, a long-lasting battery, and supports 5G connectivity.',5,'Powerful performance, Impressive display, 5G connectivity','OnePlus Nord CE 2 Lite 5G',19999,18990,1001,'Seller 1',20,1,18724,'https://www.amazon.in/dp/B09WQY65HN/?tag=smartprix-21&ascsubtag=Tf7v5Ms001IjwRv&th=1','https://www.flipkart.com/oneplus-nord-ce-2-lite-5g-black-dusk-128-gb/p/itm537fc2aa73747?pid=MOBGHBZHB7YJT5HF&affid=adminsmart1&affExtParam1=Tf7vJLh001Fv4X3'),(2,'The Samsung Galaxy M14 5G is a feature-packed smartphone that combines performance and style. It features a large 6.5-inch display, a powerful processor, and a versatile camera system. With 5G capabilities and a long-lasting battery, it is perfect for your mobile needs.',22,'Large display, Powerful processor, Versatile camera system','Samsung Galaxy M14 5G',17990,13990,1002,'Seller 2',15,1,13990,'https://www.amazon.in/dp/B0BZCSMP95/?tag=smartprix-21&ascsubtag=Tf7wSBJ001OdXs4&th=1','https://www.flipkart.com/samsung-galaxy-m14-5g-berry-blue-128-gb/p/itm922004d76b4f7?pid=MOBGZWSWUGFFWCEB&affid=adminsmart1&affExtParam1=Tf7wn7z001QWuX0'),(3,'The realme narzo N55 is a budget-friendly smartphone that offers impressive features. It comes with a 6.5-inch display, a powerful MediaTek processor, and a dual-camera setup. With its long battery life and attractive design, it is a great choice for users on a budget.',15,'Budget-friendly, Powerful processor, Dual-camera setup','Realme narzo N55',12999,10999,1003,'Seller 3',30,1,11315,'https://www.amazon.in/dp/B0BZ479WZD/?tag=smartprix-21&ascsubtag=Tf7x158001KZudT&th=1','https://www.flipkart.com/realme-narzo-n55-prime-black-64-gb/p/itm599c1b2a46e04?pid=MOBGZUFTCNHEXR4G&affid=adminsmart1&affExtParam1=Tf7xGFO0014WSeB'),(4,'The Redmi 12C is a budget-friendly smartphone with great features. It features a 6.6-inch display, a MediaTek processor, and a dual-camera setup. With its affordable price and reliable performance, it is an excellent choice for users looking for a value-for-money device.',15,'Affordable price, Reliable performance, Dual-camera setup','Redmi 12C',13999,8799,1004,'Seller 4',25,1,8905,'https://www.amazon.in/dp/B0BYN5555J/?tag=smartprix-21&ascsubtag=Tf7xnSI001Nww5F&th=1','https://www.flipkart.com/redmi-12c-mint-green-64-gb/p/itm3fe4e598a0358?pid=MOBGZEVKSKT3T6GZ&affid=adminsmart1&affExtParam1=Tf7yDUB0017MYjr'),(5,'The iQOO Neo 7 5G is a powerful smartphone with cutting-edge features. It boasts a 6.62-inch display, a Snapdragon processor, and a triple-camera system. With its 5G connectivity and fast charging support, it offers a seamless mobile experience.',14,'Cutting-edge features, Snapdragon processor, Triple-camera system','iQOO Neo 7 5G',34999,29999,1005,'Seller 5',10,1,30499,'https://www.amazon.in/dp/B07WGPKNGT/?tag=smartprix-21&ascsubtag=Tf7ygDR001QYWce','https://www.flipkart.com/iqoo-neo-7-5g-interstellar-black-128-gb/p/itm58818bb276753?pid=MOBGN9W9HWH4FAEH&affid=adminsmart1&affExtParam1=Tf7yvOP001C3cRn'),(6,'The OnePlus 10R 5G is a flagship smartphone that offers top-of-the-line features. It features a stunning 6.7-inch display, a powerful Snapdragon processor, and a quad-camera system. With its 5G capabilities and premium design, it is the perfect choice for tech enthusiasts.',10,'Flagship features, Powerful performance, Quad-camera system','OnePlus 10R 5G',38999,34999,1006,'Seller 6',18,1,31499,'https://www.amazon.in/dp/B09WRMNJ9G/?tag=smartprix-21&ascsubtag=Tf7z9MG001TMeGx&th=1','https://www.flipkart.com/oneplus-10r-forest-green-128-gb/p/itm10b9b43146ada?pid=MOBGGFT7SVDZFATY&affid=adminsmart1&affExtParam1=Tf7zPVU001LmGJA'),(7,'The iQOO Z6 Lite 5G is a mid-range smartphone that provides a balance of performance and affordability. It sports a 6.58-inch display, a Snapdragon processor, and a triple-camera setup. With its 5G connectivity and large battery, it is suitable for various mobile tasks.',20,'Balanced performance, Snapdragon processor, Triple-camera setup','iQOO Z6 Lite 5G',19999,15999,1007,'Seller 7',20,1,14489,'https://www.amazon.in/iQOO-Stellar-Snapdragon-Segment-Included/dp/B07WHSR1NR?th=1','https://www.flipkart.com/iqoo-z6-lite-5g-without-charger-mystic-night-64-gb/p/itm24e9a12908458?pid=MOBGHYTNYSSW89MA&affid=adminsmart1&affExtParam1=Tf82nTk001knbJN'),(8,'The Oppo F23 5G is a stylish and feature-packed smartphone. It boasts a 6.5-inch display, a MediaTek processor, and a dual-camera system. With its 5G connectivity and ample storage capacity, it offers a seamless user experience.',15,'Stylish design, MediaTek processor, Dual-camera system','Oppo F23 5G',28999,24999,1008,'Seller 8',25,1,23749,'https://www.amazon.in/Oppo-Storage-Battery-SUPERVOOC-Microlens/dp/B082DSTWZ1?th=1','https://www.flipkart.com/iqoo-z6-lite-5g-without-charger-mystic-night-64-gb/p/itm24e9a12908458?pid=MOBGHYTNYSSW89MA&affid=adminsmart1&affExtParam1=Tf83U24001NWoZE'),(9,'The OnePlus 10 Pro 5G is a premium flagship smartphone with top-of-the-line specifications. It features a large 6.78-inch display, a Snapdragon processor, and a quad-camera system. With its 5G capabilities and cutting-edge features, it is designed for power users.',9,'Premium flagship, Snapdragon processor, Quad-camera system','OnePlus 10 Pro 5G',66999,60999,1009,'Seller 9',15,1,55800,'https://www.amazon.in/dp/B09V2LX1R4/?tag=smartprix-21&ascsubtag=Tf84TWO0011Octf&th=1','https://www.flipkart.com/oneplus-10-pro-5g-emerald-forest-128-gb/p/itmca601c423f05f?pid=MOBGHBZHP7QQFFE8&affid=adminsmart1&affExtParam1=Tf84hoP001NNum2'),(10,'The Redmi K50i 5G is a feature-packed smartphone with a pocket-friendly price tag. It offers a 6.67-inch display, a MediaTek processor, and a triple-camera system. With 5G connectivity and a large battery, it provides a great value for money.',8,'Affordable price, MediaTek processor, Triple-camera system','Redmi K50i 5G',31999,20999,1010,'Seller 10',12,1,20654,'https://www.amazon.in/dp/B0B4DZ14K7/?tag=smartprix-21&ascsubtag=Tf859vX001WdLHX&th=1','https://www.flipkart.com/redmi-k50i-5g-stealth-black-128-gb/p/itm8517785de01b8?pid=MOBGGHCWCNXRPZVT&affid=adminsmart1&affExtParam1=Tf85bfJ001FLGja'),(11,'The Lenovo Ideapad Slim 3 is a budget-friendly laptop with a sleek design and powerful performance. It features a 15.6-inch display, an Intel Core i5 processor, and 8GB of RAM. With its affordable price and reliable performance, it is perfect for everyday use.',52,'Sleek design, Powerful performance, Affordable price','Lenovo Ideapad Slim 3',81999,38999,1001,'Seller 1',20,4,23990,'https://www.amazon.in/Lenovo-Business-Graphics-Platinum-81WB012DIN/dp/B09DMT6V7G?th=1','https://www.flipkart.com/lenovo-ideapad-slim-3-celeron-dual-core-4-gb-256-gb-ssd-windows-10-home-15igl05-laptop/p/itmdcd90daec71cd'),(12,'The HP Pavilion 15 is a versatile laptop that offers a blend of performance and style. It comes with a 15.6-inch display, an AMD Ryzen 5 processor, and 16GB of RAM. With its sleek design and powerful specifications, it is suitable for both work and entertainment.',13,'Versatile performance, Sleek design, Ample RAM','HP Pavilion 15',69800,60444,1002,'Seller 2',15,4,68500,'https://www.amazon.in/HP-Pavilion-Micro-Edge-Anti-Glare-15-eh1101AU/dp/B09DGCZXQB','https://www.flipkart.com/hp-pavilion-ryzen-5-hexa-core-amd-r5-5600h-8-gb-512-gb-ssd-windows-10-4-graphics-nvidia-geforce-gtx-1650-144-hz-15-ec2004ax-gaming-laptop/p/itm98c94bbf9bc20'),(13,'The Dell XPS 13 is a premium ultrabook that combines power and portability. It features a 13.3-inch InfinityEdge display, an Intel Core i7 processor, and 16GB of RAM. With its stunning design and top-notch performance, it is the ideal choice for professionals on the go.',29,'Premium build, Powerful performance, Thin and lightweight','Dell XPS 13',150000,106400,1003,'Seller 3',10,4,145153,'https://www.amazon.in/Dell-Generation-Corei5-1021U-Windows-Laptop/dp/B07SGD54KK/ref=psdc_1375424031_t1_B07B462TJM','https://www.flipkart.com/dell-xps-13-core-i7-8th-gen-16-gb-512-gb-ssd-windows-10-home-9380-thin-light-laptop/p/itm69472c1ca364e'),(14,'The Acer Aspire 5 is a budget-friendly laptop with impressive features. It boasts a 15.6-inch Full HD display, an AMD Ryzen 7 processor, and 12GB of RAM. With its ample storage and reliable performance, it is suitable for both work and multimedia tasks.',10,'Affordable price, Full HD display, Ample storage','Acer Aspire 5',59999,53990,1004,'Seller 4',25,4,48490,'https://www.amazon.in/Acer-A515-56-Display-i5-1135G7-Processor/dp/B096SN1LYF?th=1','https://www.flipkart.com/acer-aspire-5-core-i5-11th-gen-8-gb-1-tb-hdd-256-gb-ssd-windows-10-home-a515-56-thin-light-laptop/p/itmdf83f58e7a903'),(15,'The ASUS ROG Zephyrus G14 is a gaming laptop that delivers exceptional performance. It features a 14-inch WQHD display, an AMD Ryzen 9 processor, and 32GB of RAM. With its powerful specifications and compact design, it is perfect for gaming enthusiasts.',18,'Gaming performance, High refresh rate display, Portable design','ASUS ROG Zephyrus G14',129999,106599,1005,'Seller 5',10,4,74990,'https://www.amazon.in/ASUS-Zephyrus-Gaming-GeForce-Moonlight/dp/B088PDB63Z','https://www.flipkart.com/asus-rog-zephyrus-g14-ryzen-7-octa-core-amd-r7-4800h-8-gb-1-tb-ssd-windows-10-home-4-gb-graphics-nvidia-geforce-gtx-1650-120-hz-ga401ihr-k2066ts-gaming-laptop/p/itm68e3c36bfaf2e'),(16,'The Apple MacBook Air is a sleek and powerful laptop designed for productivity. It features a 13.3-inch Retina display, an Apple M1 chip, and 8GB of RAM. With its long battery life and macOS ecosystem, it offers a seamless user experience.',10,'Sleek design, Apple M1 chip, Long battery life','Apple MacBook Air',99900,80999,1006,'Seller 6',15,4,82900,'https://www.amazon.in/Apple-MacBook-Chip-13-inch-256GB/dp/B08N5W4NNB?th=1','https://rb.gy/hqthj');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unban_requests`
--

DROP TABLE IF EXISTS `unban_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `unban_requests` (
  `id` int NOT NULL,
  `from_user` varchar(255) DEFAULT NULL,
  `user_message` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unban_requests`
--

LOCK TABLES `unban_requests` WRITE;
/*!40000 ALTER TABLE `unban_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `unban_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL,
  `regisered_date` datetime(6) DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `user_suspension_status` bit(1) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_pwd` varchar(255) DEFAULT NULL,
  `user_phone` varchar(255) DEFAULT NULL,
  `user_profile` varchar(255) DEFAULT NULL,
  `user_role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_33uo7vet9c79ydfuwg1w848f` (`user_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'2023-05-28 23:55:42.346000','admin@CompareAdda.com',_binary '','Nitish Raj','$2a$10$4S/DP3tuaf01qWxU7e7kZOdtgvRSJsblt6N6g8o5FQ75P0fvFb6KK','1234567890','admin.png','ROLE_ADMIN'),(12,'2023-05-25 00:42:45.574000','nitish@gmail.com',_binary '','Nitish Raj','$2a$10$.Ibz.pFJA.6Vt0U6uZOt4u4.50AQ2MNfm6vqFealY0oeb455DZc6u','9546312177','user.png','customer'),(13,'2023-05-26 02:19:43.929000','user@compareadda.com',_binary '','Aman','$2a$10$XeRcQZULNg5YMkUadyNDnuOKq6QwCcJ1GWsbif2RQbadGabcJtsi2','9835198351','user.png','customer');
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

-- Dump completed on 2023-05-30 14:22:56
