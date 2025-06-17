-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: easy_traffic_db
-- ------------------------------------------------------
-- Server version	5.5.5-10.11.10-MariaDB

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
-- Table structure for table `blog`
--

DROP TABLE IF EXISTS `blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `hot` bit(1) NOT NULL,
  `last_modified_date` datetime(6) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `status` enum('DRAFT','PUBLISHED','UNPUBLISHED') NOT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `type` enum('EVENT','NEWS') NOT NULL,
  `author_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKrse7kjvydwev63jjbsm0dw4ey` (`slug`),
  KEY `FK4v4ymc0irlkpq9aowljw4mdrs` (`author_id`),
  CONSTRAINT `FK4v4ymc0irlkpq9aowljw4mdrs` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog`
--

/*!40000 ALTER TABLE `blog` DISABLE KEYS */;
INSERT INTO `blog` VALUES (1,'Sáng nay, nhiều tuyến đường ở Hà Nội như Giải Phóng, Nguyễn Trãi tắc nghẽn kéo dài hơn 2km.','2025-06-06 20:28:25.000000','Tin tức giao thông cập nhật lúc cao điểm sáng.',0x00,'2025-06-06 20:28:25.000000','Hà Nội','traffic-news-1','DRAFT',NULL,'Cập nhật tình hình kẹt xe sáng thứ 2','NEWS',1),(2,'Sáng nay, một vụ tai nạn liên hoàn xảy ra trên cao tốc TP.HCM - Trung Lương khiến giao thông ùn tắc nghiêm trọng.','2025-06-06 20:28:25.000000','Vụ tai nạn đang được cơ quan chức năng điều tra làm rõ.',0x01,'2025-06-06 20:28:25.000000','TP.HCM','traffic-news-2','PUBLISHED',NULL,'Tai nạn liên hoàn trên cao tốc TP.HCM - Trung Lương','EVENT',1),(3,'Trận mưa lớn kéo dài từ đêm qua đã khiến nhiều tuyến phố tại trung tâm TP Đà Nẵng bị ngập sâu.','2025-06-06 20:28:25.000000','Dự báo thời tiết sẽ tiếp tục mưa to trong 2 ngày tới.',0x00,'2025-06-06 20:28:25.000000','Đà Nẵng','traffic-news-3','UNPUBLISHED',NULL,'Cảnh báo ngập lụt cục bộ tại các tuyến phố trung tâm','NEWS',1),(4,'Vào khoảng 7h sáng 5/1/2025, nhiều tuyến đường chính tại Hà Nội như Giải Phóng, Trường Chinh, Nguyễn Trãi bị ùn tắc kéo dài do lượng phương tiện tăng đột biến. Mưa nhỏ khiến tình hình giao thông hỗn loạn hơn. Người dân được khuyến cáo nên xuất phát sớm hơn vào đầu tuần.','2025-01-05 08:15:00.000000','Tin tức giao thông sáng thứ Hai đầu tháng 1.',0x00,'2025-01-05 08:30:00.000000','Hà Nội','traffic-jam-monday','DRAFT',NULL,'Hà Nội: Ùn tắc kéo dài vào sáng thứ Hai','NEWS',1),(5,'Sáng 15/2/2025, tai nạn liên hoàn giữa ba xe ô tô trên cao tốc Trung Lương khiến giao thông tê liệt hơn 3 giờ. Cảnh sát giao thông đã có mặt kịp thời phân luồng và xử lý. Không có thương vong, nhưng giao thông bị ảnh hưởng nghiêm trọng.','2025-02-15 09:45:00.000000','Vụ tai nạn lớn làm tắc nghẽn cao tốc Trung Lương.',0x01,'2025-02-15 10:00:00.000000','TP.HCM','accident-tphcm-trung-luong','PUBLISHED',NULL,'TP.HCM: Tai nạn liên hoàn trên cao tốc Trung Lương','EVENT',1),(6,'Do ảnh hưởng của mưa lớn kéo dài từ đêm 9/4 đến sáng 10/4/2025, các tuyến phố như Lê Duẩn, Bạch Đằng, Hùng Vương bị ngập nặng. Thành phố Đà Nẵng đã phát cảnh báo và khuyến nghị người dân hạn chế ra đường. Lực lượng chức năng đang khẩn trương xử lý thoát nước.','2025-04-10 07:30:00.000000','Cảnh báo thời tiết và tình trạng ngập tại trung tâm TP. Đà Nẵng.',0x00,'2025-04-10 08:00:00.000000','Đà Nẵng','danang-flood-alert','UNPUBLISHED',NULL,'Cảnh báo ngập lụt ở trung tâm Đà Nẵng','NEWS',1),(7,'Vào sáng ngày 7/4/2025, nhiều tuyến đường chính tại Hà Nội như Giải Phóng, Cầu Giấy, và Nguyễn Trãi bị ùn tắc kéo dài do lượng phương tiện tăng cao sau kỳ nghỉ lễ. Mưa phùn và thời tiết âm u khiến việc di chuyển gặp nhiều khó khăn. Người dân được khuyến cáo sử dụng các phương tiện công cộng để hạn chế ùn tắc.','2025-06-06 13:58:06.862963','Tình trạng ùn tắc nghiêm trọng tại các tuyến đường chính ở Hà Nội vào sáng 7/4/2025.',0x00,'2025-06-06 13:58:06.862963',NULL,'cap-nhat-giao-thong-ha-noi-07-04-2025','PUBLISHED','https://example.com/images/traffic-hn-0704.jpg','Cập nhật giao thông Hà Nội sáng thứ Hai','NEWS',1),(8,'Sáng 10/01/2025, lượng xe đổ dồn về trung tâm TP.HCM qua cầu Sài Gòn khiến giao thông ùn ứ nghiêm trọng. Cảnh sát giao thông đã tăng cường lực lượng để điều tiết, tuy nhiên tình trạng kẹt xe kéo dài đến gần 10 giờ sáng.','2025-06-06 14:32:43.789881','Cảnh báo kẹt xe nghiêm trọng tại khu vực cầu Sài Gòn trong giờ cao điểm sáng.',0x00,'2025-06-06 14:32:43.789881',NULL,'un-tac-cau-sai-gon-10-01-2025','PUBLISHED','https://example.com/images/cau-sai-gon.jpg','Cảnh báo ùn tắc tại cầu Sài Gòn vào giờ cao điểm','NEWS',1),(9,'Chiều 20/02/2025, ba xe tải va chạm liên hoàn tại đoạn qua tỉnh Bình Thuận trên quốc lộ 1A. Vụ tai nạn khiến giao thông tê liệt hơn 3 giờ đồng hồ. Rất may không có thương vong, nhưng cả ba phương tiện đều hư hỏng nặng.','2025-06-06 14:33:01.425888','Va chạm giữa ba xe tải gây ách tắc kéo dài trên quốc lộ 1A.',0x00,'2025-06-06 14:33:01.425888',NULL,'tai-nan-quoc-lo-1a-20-02-2025','PUBLISHED','https://example.com/images/tai-nan-ql1a.jpg','Tai nạn giữa ba xe tải trên quốc lộ 1A','EVENT',1),(10,'Sau cơn mưa lớn kéo dài từ đêm 5/3 đến sáng 6/3/2025, nhiều tuyến đường ở TP. Tam Kỳ (Quảng Nam) bị ngập sâu. Giao thông đình trệ và nhiều phương tiện chết máy giữa đường. Cơ quan chức năng đang tích cực khắc phục.','2025-06-06 14:33:14.222692','Tình trạng ngập nặng tại Quảng Nam ảnh hưởng lớn đến giao thông.',0x00,'2025-06-06 14:33:14.222692',NULL,'ngap-lut-quang-nam-06-03-2025','UNPUBLISHED','https://example.com/images/ngap-quangnam.jpg','Ngập lụt nghiêm trọng sau mưa lớn ở Quảng Nam','NEWS',1),(11,'Để đảm bảo an toàn giao thông dịp nghỉ lễ 30/4, TP.HCM sẽ áp dụng kế hoạch phân luồng và cấm một số tuyến đường trung tâm từ ngày 29/4 đến hết ngày 1/5/2025. Người dân cần lưu ý để chủ động di chuyển.','2025-06-06 14:33:24.876816','Thông báo về kế hoạch phân luồng giao thông dịp lễ tại TP.HCM.',0x00,'2025-06-06 14:33:24.876816',NULL,'phan-luong-tphcm-30-04-2025','DRAFT','https://example.com/images/phanluong-304.jpg','TP.HCM lên kế hoạch phân luồng dịp lễ 30/4','EVENT',1),(12,'Từ ngày 15/04/2025, Sở GTVT Hà Nội bắt đầu thử nghiệm làn đường ưu tiên cho xe buýt tại một số tuyến phố như Kim Mã, Giảng Võ. Mục tiêu là giảm ùn tắc và tăng hiệu quả vận tải công cộng.','2025-06-06 14:33:33.292520','Thử nghiệm làn đường xe buýt tại Hà Nội để giảm ùn tắc giao thông.',0x00,'2025-06-06 14:33:33.292520',NULL,'lan-duong-xe-buyt-ha-noi-15-04-2025','PUBLISHED','https://example.com/images/xe-buyt-hn.jpg','Hà Nội thử nghiệm làn đường dành riêng cho xe buýt','NEWS',1);
/*!40000 ALTER TABLE `blog` ENABLE KEYS */;

--
-- Table structure for table `etc_machine`
--

DROP TABLE IF EXISTS `etc_machine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `etc_machine` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `lane` int(11) NOT NULL,
  `location` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKclcej25eu4b68d9vddyx1gc49` (`location`,`lane`),
  UNIQUE KEY `UKh3751fayiu6sj5sedf5plac4p` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `etc_machine`
--

/*!40000 ALTER TABLE `etc_machine` DISABLE KEYS */;
INSERT INTO `etc_machine` VALUES (1,2,'Cao tốc Hà Nội - Hải Phòng (Km10)','ETC-001',20000),(2,3,'Cao tốc Hà Nội - Bắc Giang (Km5)','ETC-002',42000),(3,2,'Cầu Rạch Miễu - Tiền Giang','ETC-003',32000),(4,4,'Cao tốc TP.HCM - Long Thành - Dầu Giây (Km20)','ETC-004',32000),(5,2,'Quốc lộ 5 - Hưng Yên','ETC-005',510000),(6,3,'Cao tốc Trung Lương - Mỹ Thuận (Km15)','ETC-006',55000),(7,2,'Trạm thu phí Định An - Nghệ An','ETC-007',50000),(8,3,'Cao tốc Nội Bài - Lào Cai (Km80)','ETC-008',10000),(9,1,'Trạm thu phí BOT Tân Đệ - Thái Bình','ETC-009',30000),(10,2,'QL1A - Trạm Nam Bình Định','ETC-010',40000);
/*!40000 ALTER TABLE `etc_machine` ENABLE KEYS */;

--
-- Table structure for table `etc_payment`
--

DROP TABLE IF EXISTS `etc_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `etc_payment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `amount` bigint(20) NOT NULL,
  `paid_at` datetime(6) NOT NULL,
  `etc_machine_id` bigint(20) NOT NULL,
  `etc_vehicle_id` bigint(20) NOT NULL,
  `invoice_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKmk2nd52bmvlarwpltoxro8kp2` (`invoice_id`),
  KEY `FKsmr85em138b1yppdqkrvpskr4` (`etc_machine_id`),
  KEY `FKlulk4iskej8tx3adk963kaify` (`etc_vehicle_id`),
  CONSTRAINT `FKlulk4iskej8tx3adk963kaify` FOREIGN KEY (`etc_vehicle_id`) REFERENCES `etc_vehicle` (`id`),
  CONSTRAINT `FKpaga0hxfavieuvx4rb2kkc528` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`),
  CONSTRAINT `FKsmr85em138b1yppdqkrvpskr4` FOREIGN KEY (`etc_machine_id`) REFERENCES `etc_machine` (`id`),
  CONSTRAINT `etc_payment_chk_1` CHECK (`amount` >= 0)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `etc_payment`
--

/*!40000 ALTER TABLE `etc_payment` DISABLE KEYS */;
INSERT INTO `etc_payment` VALUES (4,2000,'2025-06-12 12:11:18.000000',1,1,3),(5,2000,'2025-06-12 12:12:12.000000',1,1,4);
/*!40000 ALTER TABLE `etc_payment` ENABLE KEYS */;

--
-- Table structure for table `etc_vehicle`
--

DROP TABLE IF EXISTS `etc_vehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `etc_vehicle` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `amount` bigint(20) NOT NULL DEFAULT 0,
  `created_at` datetime(6) DEFAULT NULL,
  `due_date` datetime(6) DEFAULT NULL,
  `vehicle_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKgmb6kqkreafgwx0wuighagxb4` (`vehicle_id`,`created_at`),
  CONSTRAINT `FKqk83ac1qtei0c7nr4bbmsf0ul` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicle` (`id`),
  CONSTRAINT `etc_vehicle_chk_1` CHECK (`amount` >= 0)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `etc_vehicle`
--

/*!40000 ALTER TABLE `etc_vehicle` DISABLE KEYS */;
INSERT INTO `etc_vehicle` VALUES (1,996000,'2025-06-06 18:58:16.000000','2026-06-06 18:58:16.000000',3),(2,500000,'2025-06-06 18:58:16.000000','2026-06-06 18:58:16.000000',4),(3,0,'2025-06-12 13:28:03.000000',NULL,5);
/*!40000 ALTER TABLE `etc_vehicle` ENABLE KEYS */;

--
-- Table structure for table `insurance`
--

DROP TABLE IF EXISTS `insurance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `insurance` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `amount` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `type` enum('BIKE','CAR') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insurance`
--

/*!40000 ALTER TABLE `insurance` DISABLE KEYS */;
INSERT INTO `insurance` VALUES (1,480000,'Bảo hiểm trách nhiệm dân sự bắt buộc cho xe ô tô','Bảo Việt','CAR'),(2,66000,'Bảo hiểm trách nhiệm dân sự bắt buộc cho xe máy','PTI','BIKE');
/*!40000 ALTER TABLE `insurance` ENABLE KEYS */;

--
-- Table structure for table `insurance_detail`
--

DROP TABLE IF EXISTS `insurance_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `insurance_detail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `amount` int(11) NOT NULL,
  `end_date` datetime(6) DEFAULT NULL,
  `is_active` bit(1) NOT NULL,
  `start_date` datetime(6) DEFAULT NULL,
  `insurance_id` bigint(20) NOT NULL,
  `vehicle_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKrh5sr5xml031w7eybcck66avi` (`insurance_id`),
  KEY `FKp5fgw05dbnwohom4c7x9ki5q2` (`vehicle_id`),
  CONSTRAINT `FKp5fgw05dbnwohom4c7x9ki5q2` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicle` (`id`),
  CONSTRAINT `FKrh5sr5xml031w7eybcck66avi` FOREIGN KEY (`insurance_id`) REFERENCES `insurance` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insurance_detail`
--

/*!40000 ALTER TABLE `insurance_detail` DISABLE KEYS */;
INSERT INTO `insurance_detail` VALUES (1,480000,'2026-06-12 10:11:52.000000',0x01,'2025-06-12 10:11:52.000000',1,3),(2,66000,'2026-06-17 09:02:57.000000',0x01,'2025-06-17 09:02:57.000000',2,1);
/*!40000 ALTER TABLE `insurance_detail` ENABLE KEYS */;

--
-- Table structure for table `invoices`
--

DROP TABLE IF EXISTS `invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoices` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `invoice_date` datetime(6) NOT NULL,
  `payment_method` enum('CASH','CREDIT_CARD','DEBIT_CARD','ONLINE_TRANSFER') NOT NULL,
  `remitter` bigint(20) NOT NULL,
  `total_amount` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoices`
--

/*!40000 ALTER TABLE `invoices` DISABLE KEYS */;
INSERT INTO `invoices` VALUES (1,'2025-06-12 10:35:34.000000','ONLINE_TRANSFER',2,2000000),(2,'2025-06-12 10:40:40.000000','ONLINE_TRANSFER',2,70000000),(3,'2025-06-12 12:11:18.000000','ONLINE_TRANSFER',4,1000000),(4,'2025-06-12 12:12:12.000000','ONLINE_TRANSFER',4,2000),(5,'2025-06-12 13:47:45.000000','ONLINE_TRANSFER',4,1000000),(6,'2025-06-12 13:50:16.000000','ONLINE_TRANSFER',4,700000);
/*!40000 ALTER TABLE `invoices` ENABLE KEYS */;

--
-- Table structure for table `license`
--

DROP TABLE IF EXISTS `license`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `license` (
  `id` varchar(255) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `due_date` datetime(6) DEFAULT NULL,
  `place_of_issue` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `license_type_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK9p7c0ptwdf0dqpf7uppkp7q7c` (`license_type_id`),
  KEY `FKkur8ykl6c4jg32f7mp12mhr8m` (`user_id`),
  CONSTRAINT `FK9p7c0ptwdf0dqpf7uppkp7q7c` FOREIGN KEY (`license_type_id`) REFERENCES `license_type` (`id`),
  CONSTRAINT `FKkur8ykl6c4jg32f7mp12mhr8m` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `license_chk_1` CHECK (`status` between 0 and 3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `license`
--

/*!40000 ALTER TABLE `license` DISABLE KEYS */;
INSERT INTO `license` VALUES ('12345678','2025-06-12 10:10:43.000000',NULL,'Khánh Hoà',1,2,4),('LIC-001','2025-06-06 00:00:00.000000',NULL,'Hà Nội',1,2,2),('LIC-002','2025-06-06 00:00:00.000000','2035-06-06 00:00:00.000000','Hà Nội',1,5,2),('LIC-003','2025-06-06 00:00:00.000000','2030-06-06 00:00:00.000000','Hà Nội',2,7,2);
/*!40000 ALTER TABLE `license` ENABLE KEYS */;

--
-- Table structure for table `license_details`
--

DROP TABLE IF EXISTS `license_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `license_details` (
  `license_type_id` bigint(20) NOT NULL,
  `vehicle_type_id` bigint(20) NOT NULL,
  PRIMARY KEY (`license_type_id`,`vehicle_type_id`),
  KEY `FK51dom2ms8o8q77ym1y4cvkxlr` (`vehicle_type_id`),
  CONSTRAINT `FK51dom2ms8o8q77ym1y4cvkxlr` FOREIGN KEY (`vehicle_type_id`) REFERENCES `vehicle_type` (`id`),
  CONSTRAINT `FKafx37tdrydnk5wrl8fmd0ba1r` FOREIGN KEY (`license_type_id`) REFERENCES `license_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `license_details`
--

/*!40000 ALTER TABLE `license_details` DISABLE KEYS */;
INSERT INTO `license_details` VALUES (2,1),(3,1),(4,2),(5,2),(6,2),(7,2),(8,2),(9,3),(10,3),(11,3),(12,3),(13,3),(14,3),(15,3),(16,3);
/*!40000 ALTER TABLE `license_details` ENABLE KEYS */;

--
-- Table structure for table `license_type`
--

DROP TABLE IF EXISTS `license_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `license_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `min_age` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `valid_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `license_type`
--

/*!40000 ALTER TABLE `license_type` DISABLE KEYS */;
INSERT INTO `license_type` VALUES (2,18,'A1',NULL),(3,18,'A',NULL),(4,18,'B1',NULL),(5,18,'B',10),(6,18,'C1',10),(7,21,'C',5),(8,21,'BE',5),(9,24,'D1',5),(10,24,'D2',5),(11,24,'C1E',5),(12,24,'CE',5),(13,27,'D',5),(14,27,'D1E',5),(15,27,'D2E',5),(16,27,'DE',5);
/*!40000 ALTER TABLE `license_type` ENABLE KEYS */;

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notification` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL,
  `create_date` datetime(6) DEFAULT NULL,
  `enable_all` bit(1) NOT NULL,
  `object` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification`
--

/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
INSERT INTO `notification` VALUES (1,'Tình trạng ùn tắc nghiêm trọng tại các tuyến đường chính ở Hà Nội vào sáng 7/4/2025.','2025-06-06 13:58:07.021880',0x01,'{\"tableName\":\"blog\",\"tableName\":\"blog\",\"id\":\"7\",\"slug\":\"cap-nhat-giao-thong-ha-noi-07-04-2025\"}','Bài viết mới: Cập nhật giao thông Hà Nội sáng thứ Hai'),(2,'Cảnh báo kẹt xe nghiêm trọng tại khu vực cầu Sài Gòn trong giờ cao điểm sáng.','2025-06-06 14:32:43.867269',0x01,'{\"tableName\":\"blog\",\"tableName\":\"blog\",\"id\":\"8\",\"slug\":\"un-tac-cau-sai-gon-10-01-2025\"}','Bài viết mới: Cảnh báo ùn tắc tại cầu Sài Gòn vào giờ cao điểm'),(3,'Va chạm giữa ba xe tải gây ách tắc kéo dài trên quốc lộ 1A.','2025-06-06 14:33:01.441469',0x01,'{\"tableName\":\"blog\",\"tableName\":\"blog\",\"id\":\"9\",\"slug\":\"tai-nan-quoc-lo-1a-20-02-2025\"}','Bài viết mới: Tai nạn giữa ba xe tải trên quốc lộ 1A'),(4,'Thử nghiệm làn đường xe buýt tại Hà Nội để giảm ùn tắc giao thông.','2025-06-06 14:33:33.307645',0x01,'{\"tableName\":\"blog\",\"tableName\":\"blog\",\"id\":\"12\",\"slug\":\"lan-duong-xe-buyt-ha-noi-15-04-2025\"}','Bài viết mới: Hà Nội thử nghiệm làn đường dành riêng cho xe buýt'),(5,'Báo cáo vi phạm giao thông khu vực Cầu Giấy','2025-06-06 14:43:33.349160',0x00,'{\"tableName\":\"report\",\"tableName\":\"report\",\"id\":\"9\"}','Report has been created by admin: Báo cáo vi phạm giao thông khu vực Cầu Giấy'),(6,'Xe đỗ sai quy định tại trung tâm TP.HCM','2025-06-06 14:44:00.616138',0x00,'{\"tableName\":\"report\",\"tableName\":\"report\",\"id\":\"10\"}','Report has been created by admin: Xe đỗ sai quy định tại trung tâm TP.HCM'),(7,'Xe vượt đèn đỏ tại ngã tư Huỳnh Thúc Kháng','2025-06-06 14:44:25.267117',0x00,'{\"tableName\":\"report\",\"tableName\":\"report\",\"id\":\"11\"}','Report has been created by admin: Xe vượt đèn đỏ tại ngã tư Huỳnh Thúc Kháng'),(8,'Xe không bật đèn khi đi vào hầm Thủ Thiêm','2025-06-06 14:44:44.786588',0x00,'{\"tableName\":\"report\",\"tableName\":\"report\",\"id\":\"12\"}','Report has been created by admin: Xe không bật đèn khi đi vào hầm Thủ Thiêm'),(9,'Báo cáo vi phạm tại vòng xoay trung tâm Biên Hòa','2025-06-06 14:46:21.894655',0x00,'{\"tableName\":\"report\",\"tableName\":\"report\",\"id\":\"13\"}','Report has been created automatically: Báo cáo vi phạm tại vòng xoay trung tâm Biên Hòa'),(10,'Xe vượt đèn đỏ tại ngã tư Nguyễn Trãi - Hà Nội','2025-06-06 14:46:34.983330',0x00,'{\"tableName\":\"report\",\"tableName\":\"report\",\"id\":\"14\"}','Report has been created automatically: Xe vượt đèn đỏ tại ngã tư Nguyễn Trãi - Hà Nội'),(11,'Dừng xe sai quy định gần hồ Gươm','2025-06-06 14:46:46.569772',0x00,'{\"tableName\":\"report\",\"tableName\":\"report\",\"id\":\"15\"}','Report has been created automatically: Dừng xe sai quy định gần hồ Gươm'),(12,'Xe không bật đèn khi di chuyển ban đêm','2025-06-06 14:47:05.615235',0x00,'{\"tableName\":\"report\",\"tableName\":\"report\",\"id\":\"16\"}','Report has been created automatically: Xe không bật đèn khi di chuyển ban đêm'),(13,'Biên bản mẫu','2025-06-12 10:35:03.000000',0x00,'{\"tableName\":\"report\",\"tableName\":\"report\",\"id\":\"17\"}','Report has been created by admin: Biên bản mẫu'),(14,'2000000','2025-06-12 10:35:34.000000',0x00,'{\"tableName\":\"invoice\",\"tableName\":\"invoice\",\"id\":\"1\"}','Invoice has been created: 1'),(15,'Biên bản mẫu 2','2025-06-12 10:38:37.000000',0x00,'{\"tableName\":\"report\",\"tableName\":\"report\",\"id\":\"18\"}','Report has been created by admin: Biên bản mẫu 2'),(16,'70000000','2025-06-12 10:40:40.000000',0x00,'{\"tableName\":\"invoice\",\"tableName\":\"invoice\",\"id\":\"2\"}','Invoice has been created: 2'),(20,'Payment success:\nEtc machine info: com.group4.easy_traffic_webservice.etc.models.EtcMachine@7cd80d6\nVehicle info: EtcVehicle(id=1, vehicle=com.group4.easy_traffic_webservice.vehicles.models.Vehicle@5f13bfae, amount=998000, createdAt=2025-06-07T01:58:16, dueDate=2026-06-07T01:58:16, etcPayments=[com.group4.easy_traffic_webservice.etc.models.EtcPayment@4b09d257])\nTotal amount: 2000\nInvoice id: 3','2025-06-12 12:11:19.000000',0x00,'{\"tableName\":\"etc_payment\",\"tableName\":\"etcpayment\",\"id\":\"4\"}','Payment success at ETC-001'),(21,'Payment success:\nEtc machine info: com.group4.easy_traffic_webservice.etc.models.EtcMachine@115cb890\nVehicle info: EtcVehicle(id=1, vehicle=com.group4.easy_traffic_webservice.vehicles.models.Vehicle@50a51210, amount=996000, createdAt=2025-06-07T01:58:16, dueDate=2026-06-07T01:58:16, etcPayments=[com.group4.easy_traffic_webservice.etc.models.EtcPayment@640d5a5f, com.group4.easy_traffic_webservice.etc.models.EtcPayment@87f4f02])\nTotal amount: 2000\nInvoice id: 4','2025-06-12 12:12:12.000000',0x00,'{\"tableName\":\"etc_payment\",\"tableName\":\"etcpayment\",\"id\":\"5\"}','Payment success at ETC-001'),(22,'Biên bản mẫu','2025-06-12 13:46:07.000000',0x00,'{\"tableName\":\"report\",\"tableName\":\"report\",\"id\":\"19\"}','Report has been created by admin: Biên bản mẫu'),(23,'Biên bản mẫu 2','2025-06-12 13:47:01.000000',0x00,'{\"tableName\":\"report\",\"tableName\":\"report\",\"id\":\"20\"}','Report has been created by admin: Biên bản mẫu 2'),(24,'1000000','2025-06-12 13:47:45.000000',0x00,'{\"tableName\":\"invoice\",\"tableName\":\"invoice\",\"id\":\"5\"}','Invoice has been created: 5'),(25,'700000','2025-06-12 13:50:16.000000',0x00,'{\"tableName\":\"invoice\",\"tableName\":\"invoice\",\"id\":\"6\"}','Invoice has been created: 6');
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;

--
-- Table structure for table `notification_receiver`
--

DROP TABLE IF EXISTS `notification_receiver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notification_receiver` (
  `status` enum('DELETED','SEEN','UNREAD') DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  `notification_id` bigint(20) NOT NULL,
  PRIMARY KEY (`notification_id`,`user_id`),
  KEY `FK8v6lgvbnu3tvago5b9k1lbgct` (`user_id`),
  CONSTRAINT `FK8v6lgvbnu3tvago5b9k1lbgct` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `FKmkh5n7otyogidkltg6oh64psj` FOREIGN KEY (`notification_id`) REFERENCES `notification` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification_receiver`
--

/*!40000 ALTER TABLE `notification_receiver` DISABLE KEYS */;
INSERT INTO `notification_receiver` VALUES ('UNREAD',2,5),('UNREAD',3,5),('UNREAD',2,6),('UNREAD',3,6),('UNREAD',3,7),('UNREAD',4,7),('UNREAD',3,8),('UNREAD',4,8),('UNREAD',3,9),('UNREAD',4,9),('UNREAD',3,10),('UNREAD',4,10),('UNREAD',2,11),('UNREAD',3,11),('UNREAD',2,12),('UNREAD',3,12),('UNREAD',2,13),('UNREAD',3,13),('UNREAD',2,14),('UNREAD',2,15),('UNREAD',3,15),('UNREAD',2,16),('UNREAD',4,20),('UNREAD',4,21),('UNREAD',3,22),('UNREAD',4,22),('UNREAD',3,23),('UNREAD',4,23),('UNREAD',4,24),('UNREAD',4,25);
/*!40000 ALTER TABLE `notification_receiver` ENABLE KEYS */;

--
-- Table structure for table `report_detail`
--

DROP TABLE IF EXISTS `report_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `report_detail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `amount` int(11) NOT NULL,
  `report_id` bigint(20) NOT NULL,
  `report_fine_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKj8k2bq86ee5iuly5131us5hbf` (`report_id`),
  KEY `FKml14r5v3p1eryh5je11xl4slo` (`report_fine_id`),
  CONSTRAINT `FKj8k2bq86ee5iuly5131us5hbf` FOREIGN KEY (`report_id`) REFERENCES `reports` (`id`),
  CONSTRAINT `FKml14r5v3p1eryh5je11xl4slo` FOREIGN KEY (`report_fine_id`) REFERENCES `report_fine` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_detail`
--

/*!40000 ALTER TABLE `report_detail` DISABLE KEYS */;
INSERT INTO `report_detail` VALUES (8,200000,17,3),(9,600000,17,4),(10,1200000,17,5),(11,700000,18,6),(12,400000,19,2),(13,600000,19,4),(14,500000,20,1),(15,200000,20,3);
/*!40000 ALTER TABLE `report_detail` ENABLE KEYS */;

--
-- Table structure for table `report_fine`
--

DROP TABLE IF EXISTS `report_fine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `report_fine` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `amount` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK92ccm44cragt6smxih2l3hsb6` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_fine`
--

/*!40000 ALTER TABLE `report_fine` DISABLE KEYS */;
INSERT INTO `report_fine` VALUES (1,500000,'Vượt đèn đỏ','Vượt đèn đỏ'),(2,400000,'Đi sai làn đường','Đi sai làn đường'),(3,200000,'Không đội mũ bảo hiểm','Không đội mũ bảo hiểm'),(4,600000,'Điện thoại khi lái xe','Điện thoại khi lái xe'),(5,1200000,'Không có bằng lái','Không có bằng lái'),(6,700000,'Quá tốc độ cho phép','Quá tốc độ cho phép'),(7,15000,'Phí qua trạm ETC trên cao tốc Hà Nội - Hải Phòng','ETC - Trạm Hà Nội - Hải Phòng'),(8,12000,'Phí qua trạm ETC trên cao tốc Hà Nội - Bắc Giang','ETC - Trạm Bắc Giang'),(9,18000,'Phí ETC trên cao tốc TP.HCM - Long Thành - Dầu Giây','ETC - Trạm TP.HCM - Long Thành'),(10,10000,'Phí ETC trên QL5 thuộc Hưng Yên','ETC - Trạm Quốc lộ 5 Hưng Yên');
/*!40000 ALTER TABLE `report_fine` ENABLE KEYS */;

--
-- Table structure for table `report_image`
--

DROP TABLE IF EXISTS `report_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `report_image` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `image_url` varchar(255) NOT NULL,
  `uploaded_at` datetime(6) DEFAULT NULL,
  `report_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKrlnlqt6ruct43wbgw5jx1cw3u` (`report_id`),
  CONSTRAINT `FKrlnlqt6ruct43wbgw5jx1cw3u` FOREIGN KEY (`report_id`) REFERENCES `reports` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_image`
--

/*!40000 ALTER TABLE `report_image` DISABLE KEYS */;
INSERT INTO `report_image` VALUES (5,'https://example.com/img3.jpg','2025-06-06 08:20:00.000000',3),(6,'https://example.com/img4.jpg','2025-06-06 08:30:00.000000',4),(7,'https://example.com/img5.jpg','2025-06-06 08:40:00.000000',5),(8,'https://example.com/img6.jpg','2025-06-06 08:50:00.000000',6),(9,'https://example.com/images/report1-1.jpg','2025-06-06 14:43:33.326810',9),(10,'https://example.com/images/report1-2.jpg','2025-06-06 14:43:33.326810',9),(11,'https://example.com/images/report2-1.jpg','2025-06-06 14:44:00.614880',10),(12,'https://example.com/images/report3-1.jpg','2025-06-06 14:44:25.266066',11),(13,'https://example.com/images/report3-2.jpg','2025-06-06 14:44:25.266066',11),(14,'https://example.com/images/report3-3.jpg','2025-06-06 14:44:25.266066',11),(15,'https://example.com/images/report4-1.jpg','2025-06-06 14:44:44.786588',12),(16,'https://example.com/images/72b-111-22_1.jpg','2025-06-06 14:46:21.887050',13),(17,'https://example.com/images/30e-567-89_1.jpg','2025-06-06 14:46:34.980352',14),(18,'https://example.com/images/30e-567-89_2.jpg','2025-06-06 14:46:34.980352',14),(19,'https://example.com/images/29a-123-45_1.jpg','2025-06-06 14:46:46.566753',15),(20,'https://example.com/images/49a-456-49_1.jpg','2025-06-06 14:47:05.612226',16),(21,'https://example.com/images/49a-456-49_2.jpg','2025-06-06 14:47:05.612226',16),(22,'https://res.cloudinary.com/drgzcrye6/image/upload/v1749724503/x7syylrljbkpkl0gtuxy.jpg','2025-06-12 10:35:03.000000',17),(23,'https://res.cloudinary.com/drgzcrye6/image/upload/v1749724717/c67jxwh6nkdyaljyu0nk.webp','2025-06-12 10:38:37.000000',18),(24,'https://res.cloudinary.com/drgzcrye6/image/upload/v1749735968/deldcyeuorjae1tqudfu.jpg','2025-06-12 13:46:07.000000',19);
/*!40000 ALTER TABLE `report_image` ENABLE KEYS */;

--
-- Table structure for table `reports`
--

DROP TABLE IF EXISTS `reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reports` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `due_date` datetime(6) DEFAULT NULL,
  `location` text DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `reply_details` varchar(255) DEFAULT NULL,
  `report_type` enum('ADMINISTRATIVE','AUTOMATED_TRAFFIC') NOT NULL,
  `status` enum('DONE','PENDING','REJECTED') NOT NULL,
  `invoice_id` bigint(20) DEFAULT NULL,
  `police_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `vehicle_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKg2h00en6liecb5okh2rl1rdrt` (`invoice_id`),
  KEY `FKfch9o2argiqwqdgiu6o0atnq1` (`police_id`),
  KEY `FK2o32rer9hfweeylg7x8ut8rj2` (`user_id`),
  KEY `FK75khve83dy11trm92ck1yvaj9` (`vehicle_id`),
  CONSTRAINT `FK2o32rer9hfweeylg7x8ut8rj2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `FK75khve83dy11trm92ck1yvaj9` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicle` (`id`),
  CONSTRAINT `FK7u7d2t6hnuglx3uj0dk8jcov` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`),
  CONSTRAINT `FKfch9o2argiqwqdgiu6o0atnq1` FOREIGN KEY (`police_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reports`
--

/*!40000 ALTER TABLE `reports` DISABLE KEYS */;
INSERT INTO `reports` VALUES (3,'2025-06-06 08:00:00.000000','2025-06-13 08:00:00.000000','Ngã tư Trường Chinh - Tôn Thất Tùng','Vượt đèn đỏ',NULL,'AUTOMATED_TRAFFIC','PENDING',NULL,3,2,1),(4,'2025-06-06 08:10:00.000000','2025-06-13 08:10:00.000000','Đường Láng','Đi sai làn đường',NULL,'AUTOMATED_TRAFFIC','PENDING',NULL,3,2,1),(5,'2025-06-06 08:20:00.000000','2025-06-13 08:20:00.000000','Cầu Giấy','Không đội mũ bảo hiểm',NULL,'AUTOMATED_TRAFFIC','PENDING',NULL,3,4,3),(6,'2025-06-06 08:30:00.000000','2025-06-13 08:30:00.000000','Nguyễn Trãi','Sử dụng điện thoại khi lái xe',NULL,'AUTOMATED_TRAFFIC','PENDING',NULL,3,4,4),(9,'2025-06-06 14:43:33.289301',NULL,'Cầu Giấy, Hà Nội','Báo cáo vi phạm giao thông khu vực Cầu Giấy','','ADMINISTRATIVE','PENDING',NULL,3,2,1),(10,'2025-06-06 14:44:00.609935',NULL,'Quận 1, TP.HCM','Xe đỗ sai quy định tại trung tâm TP.HCM','','ADMINISTRATIVE','PENDING',NULL,3,2,2),(11,'2025-06-06 14:44:25.254476',NULL,'Đống Đa, Hà Nội','Xe vượt đèn đỏ tại ngã tư Huỳnh Thúc Kháng','','ADMINISTRATIVE','PENDING',NULL,3,4,3),(12,'2025-06-06 14:44:44.779026',NULL,'Hầm Thủ Thiêm, TP.HCM','Xe không bật đèn khi đi vào hầm Thủ Thiêm','','ADMINISTRATIVE','PENDING',NULL,3,4,4),(13,'2025-06-06 14:46:21.878499',NULL,'Biên Hòa, Đồng Nai','Báo cáo vi phạm tại vòng xoay trung tâm Biên Hòa','blank','AUTOMATED_TRAFFIC','PENDING',NULL,3,4,4),(14,'2025-06-06 14:46:34.976177',NULL,'Thanh Xuân, Hà Nội','Xe vượt đèn đỏ tại ngã tư Nguyễn Trãi - Hà Nội','blank','AUTOMATED_TRAFFIC','PENDING',NULL,3,4,3),(15,'2025-06-06 14:46:46.558051',NULL,'Hoàn Kiếm, Hà Nội','Dừng xe sai quy định gần hồ Gươm','blank','AUTOMATED_TRAFFIC','PENDING',NULL,3,2,2),(16,'2025-06-06 14:47:05.601161',NULL,'Đà Lạt, Lâm Đồng','Xe không bật đèn khi di chuyển ban đêm','blank','AUTOMATED_TRAFFIC','PENDING',NULL,3,2,1),(17,'2025-06-12 10:35:03.000000',NULL,'Ngã tư Thủ Đức','Biên bản mẫu','','ADMINISTRATIVE','DONE',1,3,2,4),(18,'2025-06-12 10:38:37.000000',NULL,'Ngã 3 ','Biên bản mẫu 2','','ADMINISTRATIVE','DONE',2,3,2,1),(19,'2025-06-12 13:46:07.000000',NULL,'Ngã tư Thủ Đức','Biên bản mẫu','','ADMINISTRATIVE','DONE',5,3,4,2),(20,'2025-06-12 13:47:01.000000',NULL,'Ngã tư Bồng Lai - Đức Trọng - Lâm Đồng','Biên bản mẫu 2','','ADMINISTRATIVE','DONE',6,3,4,5);
/*!40000 ALTER TABLE `reports` ENABLE KEYS */;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `indentity_number` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `status` enum('ACTIVE','HIDDEN','LOCKED','PENDING') NOT NULL,
  `user_type` enum('ADMIN','POLICE','RESIDENT') NOT NULL,
  `username` varchar(255) NOT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `google_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKr43af9ap4edm43mmtq01oddj6` (`username`),
  UNIQUE KEY `UK1drr8bhslhiv9m1s9inur8vff` (`email`,`phone`),
  UNIQUE KEY `UKovh8xmu9ac27t18m56gri58i1` (`google_id`),
  KEY `FKfji1yi89tedju7pajxn8paefw` (`admin_id`),
  CONSTRAINT `FKfji1yi89tedju7pajxn8paefw` FOREIGN KEY (`admin_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'khanh hoa','2025-06-06 04:56:27.268966','n21dccn133@student.ptithcm.edu.vn','n21dccn133','minh khang','$2a$10$lUgBiOnxRRVX8uMGS6lrJur9DtHe22Hyb.5b4sU05dgKkQJz80nAC','0901111111','ACTIVE','ADMIN','khang',NULL,NULL),(2,'lam dong','2025-06-06 04:56:54.000000','n21dccn167@student.ptithcm.edu.vn','n21dccn167','nam phuong','$2a$10$b.CmUY7cn2ao9OWqIEFYs.d9s4PLeNE8uSQ7YRUZq.3OydLZVbJP2','0907777777','ACTIVE','RESIDENT','phuong',NULL,'103529568907208040733'),(3,'khanh hoa','2025-06-06 04:57:14.809144','n21dccn156@student.ptithcm.edu.vn','n21dccn156','tan nguyen','$2a$10$VvqNxEazbFCBfQKL8OGdD.VIqdHDvQOLaMMQF/0pg/DrwdJDUdsmu','0703333333','ACTIVE','POLICE','nguyen',NULL,NULL),(4,'khanh hoa','2025-06-06 11:37:26.090017','n21dccn142@student.ptithcm.edu.vn','n21dccn142','phi long','$2a$10$GsxuuO0dZeAURttdaVx8puEMRNRjNS6urbXrMZCt2NmR8K7gzWI56','5283620161','ACTIVE','RESIDENT','long',NULL,NULL),(5,'Hà Nội','2025-06-06 12:14:04.884877','nguyenvana@gmail.com','012345678901','Nguyễn Văn A','$2a$10$sKxQs6Pe/OGhLA.FXer3leyPhrkzJSZ9Ny0YIMHmfW3fXq2SltfPO','0912345678','ACTIVE','ADMIN','admin01',NULL,NULL),(6,'Đà Nẵng','2025-06-06 12:14:21.581075','tranthib@gmail.com','123456789012','Trần Thị B','$2a$10$pO8WEfYDovgsbmT02kebAuaIoJefg3Rhl8iz4Jv7R4GYjso.uQVau','0987654321','ACTIVE','POLICE','police01',NULL,NULL),(7,'TP. Hồ Chí Minh','2025-06-06 12:14:33.271719','lehoangc@gmail.com','234567890123','Lê Hoàng C','$2a$10$Hp6PKKJAkJXxVzTp5iLGI.G1XH7nXCoS5JoHF7nxlvtfye3PJQZ0q','09481018776','ACTIVE','RESIDENT','resident01',NULL,NULL),(8,'','2025-06-12 10:28:42.000000','phambuinamphuong@gmail.com','','Bùi Nam Phương Phạm','$2a$10$Ay17CHkadU/DQYgo83iTLO72A8OqA4N5JtIYwlSEVo2Nd2NAKYGMa','','ACTIVE','RESIDENT','phambuinamphuong@gmail.com',NULL,'110747776678702876327');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

--
-- Table structure for table `vehicle`
--

DROP TABLE IF EXISTS `vehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `brand` varchar(255) NOT NULL,
  `capacity` int(11) NOT NULL,
  `chassis_number` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `engine_number` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `place_of_issue` varchar(255) NOT NULL,
  `plate_number` varchar(255) NOT NULL,
  `registration_date` datetime(6) NOT NULL,
  `sit_number` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `vehicle_type_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKbeffs1o2b4ykpx5mthi4iak6x` (`chassis_number`),
  UNIQUE KEY `UKthrejkp4d2l44xt2iiiuje193` (`engine_number`),
  UNIQUE KEY `UK4ev4i59xo72lddvd6uui0vtph` (`model`),
  UNIQUE KEY `UKavfc6x9pcl38sop7lqocxppbb` (`plate_number`),
  KEY `FKjsyud5fw7acrwvuoi3eoien3a` (`user_id`),
  KEY `FKddtxlc05rojc56bprvek17hnk` (`vehicle_type_id`),
  CONSTRAINT `FKddtxlc05rojc56bprvek17hnk` FOREIGN KEY (`vehicle_type_id`) REFERENCES `vehicle_type` (`id`),
  CONSTRAINT `FKjsyud5fw7acrwvuoi3eoien3a` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `vehicle_chk_1` CHECK (`status` between 0 and 3)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle`
--

/*!40000 ALTER TABLE `vehicle` DISABLE KEYS */;
INSERT INTO `vehicle` VALUES (1,'honda',49,'123456','Đỏ','123456','123456','Lâm Đồng','49A-456.49','2025-06-05 21:55:36.000000',2,1,2,1),(2,'Honda',125,'CHS1234567','Đen','ENG1234567','Vision','Hà Nội','29A-123.45','2025-06-06 18:46:02.000000',2,1,2,3),(3,'Toyota',1500,'CHS2345678','Trắng','ENG2345678','Vios','Hồ Chí Minh','30E-567.89','2025-06-06 18:46:02.000000',5,1,4,4),(4,'Hyundai',3900,'CHS3456789','Xanh','ENG3456789','County','Đà Nẵng','72B-111.22','2025-06-06 18:46:02.000000',29,1,4,5),(5,'Toyota',200,'h','h','h','h','Khánh Hòa','79Z-123321','2025-05-31 17:00:00.000000',4,0,4,4);
/*!40000 ALTER TABLE `vehicle` ENABLE KEYS */;

--
-- Table structure for table `vehicle_type`
--

DROP TABLE IF EXISTS `vehicle_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `registeretc` bit(1) NOT NULL,
  `vehicle_group` enum('OTOCON','OTOKHACH','XEHAIBANH') NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKelm7dknfxeji1hh96tdy7d5qh` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_type`
--

/*!40000 ALTER TABLE `vehicle_type` DISABLE KEYS */;
INSERT INTO `vehicle_type` VALUES (1,'xe duoi 50cc',0x00,'XEHAIBANH'),(2,'xe 50-175cc',0x00,'XEHAIBANH'),(3,'Xe Máy',0x00,'XEHAIBANH'),(4,'Ô tô con',0x01,'OTOCON'),(5,'Ô tô khách',0x01,'OTOKHACH');
/*!40000 ALTER TABLE `vehicle_type` ENABLE KEYS */;

--
-- Dumping routines for database 'easy_traffic_db'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-17 16:29:44
