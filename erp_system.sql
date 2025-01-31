-- MySQL dump 10.13  Distrib 9.1.0, for macos15.2 (arm64)
--
-- Host: localhost    Database: erp_system
-- ------------------------------------------------------
-- Server version	9.1.0

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
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commissions`
--

DROP TABLE IF EXISTS `commissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `commissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `sales_rep_id` bigint unsigned NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `commissions_sales_rep_id_foreign` (`sales_rep_id`),
  CONSTRAINT `commissions_sales_rep_id_foreign` FOREIGN KEY (`sales_rep_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commissions`
--

LOCK TABLES `commissions` WRITE;
/*!40000 ALTER TABLE `commissions` DISABLE KEYS */;
INSERT INTO `commissions` VALUES (1,13,673.41,'pending','2025-01-28 07:49:13','2025-01-28 07:49:13'),(2,14,562.49,'paid','2025-01-28 07:49:13','2025-01-28 07:49:13'),(3,15,847.86,'pending','2025-01-28 07:49:13','2025-01-28 07:49:13'),(4,16,128.26,'pending','2025-01-28 07:49:13','2025-01-28 07:49:13'),(5,17,595.32,'paid','2025-01-28 07:49:13','2025-01-28 07:49:13'),(6,18,934.10,'paid','2025-01-28 07:49:13','2025-01-28 07:49:13'),(7,19,124.53,'pending','2025-01-28 07:49:13','2025-01-28 07:49:13'),(8,20,679.22,'pending','2025-01-28 07:49:13','2025-01-28 07:49:13'),(9,21,356.15,'pending','2025-01-28 07:49:13','2025-01-28 07:49:13'),(10,22,945.24,'paid','2025-01-28 07:49:13','2025-01-28 07:49:13');
/*!40000 ALTER TABLE `commissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `customers_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoices`
--

DROP TABLE IF EXISTS `invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `sales_order_id` bigint unsigned NOT NULL,
  `amount_due` decimal(15,2) NOT NULL,
  `amount_paid` decimal(15,2) NOT NULL DEFAULT '0.00',
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `due_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `invoices_sales_order_id_foreign` (`sales_order_id`),
  CONSTRAINT `invoices_sales_order_id_foreign` FOREIGN KEY (`sales_order_id`) REFERENCES `sales_orders` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoices`
--

LOCK TABLES `invoices` WRITE;
/*!40000 ALTER TABLE `invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=211 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (190,'0001_01_01_000000_create_users_table',1),(191,'0001_01_01_000002_create_jobs_table',1),(192,'2025_01_19_192538_create_products_table',1),(193,'2025_01_20_013714_create_customers_table',1),(194,'2025_01_20_014024_create_suppliers_table',1),(195,'2025_01_20_014156_create_transactions_table',1),(196,'2025_01_20_014329_create_tenders_table',1),(197,'2025_01_20_033723_create_cache_table',1),(198,'2025_01_20_040000_create_roles_table',1),(200,'2025_01_20_194713_create_commissions_table',1),(201,'2025_01_20_194713_create_referrals_table',1),(202,'2025_01_20_194713_create_targets_table',1),(203,'2025_01_27_150556_create_quotations_table',1),(204,'2025_01_27_150557_create_sales_orders_table',1),(205,'2025_01_27_150558_create_invoices_table',1),(208,'2025_01_28_110435_create_roles_table',2),(210,'2025_01_20_041025_create_permissions_table',3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_unique` (`name`),
  KEY `permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (3,'manage_users',5,'2025-01-28 13:18:15','2025-01-28 13:18:15');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int NOT NULL DEFAULT '0',
  `price` decimal(10,2) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `products_sku_unique` (`sku`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quotations`
--

DROP TABLE IF EXISTS `quotations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quotations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `tender_id` bigint unsigned DEFAULT NULL,
  `total_amount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'draft',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `quotations_customer_id_foreign` (`customer_id`),
  KEY `quotations_tender_id_foreign` (`tender_id`),
  CONSTRAINT `quotations_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `quotations_tender_id_foreign` FOREIGN KEY (`tender_id`) REFERENCES `tenders` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quotations`
--

LOCK TABLES `quotations` WRITE;
/*!40000 ALTER TABLE `quotations` DISABLE KEYS */;
/*!40000 ALTER TABLE `quotations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `referrals`
--

DROP TABLE IF EXISTS `referrals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `referrals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `referrer_id` bigint unsigned NOT NULL,
  `referred_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `commission` decimal(10,2) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `referrals_referrer_id_foreign` (`referrer_id`),
  CONSTRAINT `referrals_referrer_id_foreign` FOREIGN KEY (`referrer_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `referrals`
--

LOCK TABLES `referrals` WRITE;
/*!40000 ALTER TABLE `referrals` DISABLE KEYS */;
INSERT INTO `referrals` VALUES (1,23,'kiana21@example.net',349.43,'confirmed','2025-01-28 07:49:13','2025-01-28 07:49:13'),(2,24,'jabari99@example.org',243.00,'confirmed','2025-01-28 07:49:13','2025-01-28 07:49:13'),(3,25,'ellis.marks@example.net',489.80,'pending','2025-01-28 07:49:13','2025-01-28 07:49:13'),(4,26,'rhianna.gulgowski@example.net',290.96,'pending','2025-01-28 07:49:13','2025-01-28 07:49:13'),(5,27,'kelsi91@example.com',319.58,'confirmed','2025-01-28 07:49:13','2025-01-28 07:49:13'),(6,28,'mhettinger@example.com',49.22,'confirmed','2025-01-28 07:49:13','2025-01-28 07:49:13'),(7,29,'kuhic.maida@example.com',307.50,'pending','2025-01-28 07:49:13','2025-01-28 07:49:13'),(8,30,'ekoepp@example.net',212.44,'confirmed','2025-01-28 07:49:13','2025-01-28 07:49:13'),(9,31,'becker.tabitha@example.org',38.64,'confirmed','2025-01-28 07:49:13','2025-01-28 07:49:13'),(10,32,'thiel.immanuel@example.org',423.80,'pending','2025-01-28 07:49:13','2025-01-28 07:49:13');
/*!40000 ALTER TABLE `referrals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (5,'Admin','2025-01-28 13:18:06','2025-01-28 13:18:06'),(6,'Manager','2025-01-28 13:22:03','2025-01-28 13:22:03');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_orders`
--

DROP TABLE IF EXISTS `sales_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales_orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `quotation_id` bigint unsigned DEFAULT NULL,
  `total_amount` decimal(15,2) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sales_orders_customer_id_foreign` (`customer_id`),
  KEY `sales_orders_quotation_id_foreign` (`quotation_id`),
  CONSTRAINT `sales_orders_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `sales_orders_quotation_id_foreign` FOREIGN KEY (`quotation_id`) REFERENCES `quotations` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_orders`
--

LOCK TABLES `sales_orders` WRITE;
/*!40000 ALTER TABLE `sales_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suppliers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `rating` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `suppliers_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliers`
--

LOCK TABLES `suppliers` WRITE;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `targets`
--

DROP TABLE IF EXISTS `targets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `targets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `manager_id` bigint unsigned NOT NULL,
  `sales_target` decimal(10,2) NOT NULL,
  `achieved` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `targets_manager_id_foreign` (`manager_id`),
  CONSTRAINT `targets_manager_id_foreign` FOREIGN KEY (`manager_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `targets`
--

LOCK TABLES `targets` WRITE;
/*!40000 ALTER TABLE `targets` DISABLE KEYS */;
INSERT INTO `targets` VALUES (1,33,35062.00,0,'2025-01-28 07:49:13','2025-01-28 07:49:13'),(2,34,13400.00,0,'2025-01-28 07:49:13','2025-01-28 07:49:13'),(3,35,20129.00,1,'2025-01-28 07:49:13','2025-01-28 07:49:13'),(4,36,23913.00,1,'2025-01-28 07:49:13','2025-01-28 07:49:13'),(5,37,47603.00,0,'2025-01-28 07:49:13','2025-01-28 07:49:13'),(6,38,32520.00,1,'2025-01-28 07:49:13','2025-01-28 07:49:13'),(7,39,21931.00,0,'2025-01-28 07:49:13','2025-01-28 07:49:13'),(8,40,21996.00,1,'2025-01-28 07:49:13','2025-01-28 07:49:13'),(9,41,41891.00,0,'2025-01-28 07:49:13','2025-01-28 07:49:13'),(10,42,30457.00,1,'2025-01-28 07:49:13','2025-01-28 07:49:13');
/*!40000 ALTER TABLE `targets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tenders`
--

DROP TABLE IF EXISTS `tenders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tenders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `deadline` date NOT NULL,
  `budget` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tenders`
--

LOCK TABLES `tenders` WRITE;
/*!40000 ALTER TABLE `tenders` DISABLE KEYS */;
/*!40000 ALTER TABLE `tenders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `quantity` int NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `transactions_customer_id_foreign` (`customer_id`),
  KEY `transactions_product_id_foreign` (`product_id`),
  CONSTRAINT `transactions_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  CONSTRAINT `transactions_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Neil Marquardt','lsteuber@example.net','+1-740-258-2872','user','2025-01-28 07:32:21','$2y$12$OxPOLOYb/V7Cwcj0FZhdleVP1DwAjwrqGuaqSQGYIikESDimHjURe','eUrO9GO8xI','2025-01-28 07:32:22','2025-01-28 07:32:22'),(2,'Dr. Joan Luettgen','candido.graham@example.com','+1 (828) 987-7119','user','2025-01-28 07:32:22','$2y$12$OxPOLOYb/V7Cwcj0FZhdleVP1DwAjwrqGuaqSQGYIikESDimHjURe','DIFffza4tP','2025-01-28 07:32:22','2025-01-28 07:32:22'),(3,'Mr. Hershel Lehner','willms.juwan@example.net','(985) 281-3841','user','2025-01-28 07:32:22','$2y$12$OxPOLOYb/V7Cwcj0FZhdleVP1DwAjwrqGuaqSQGYIikESDimHjURe','kWZ8GDHtlr','2025-01-28 07:32:22','2025-01-28 07:32:22'),(4,'Ms. Ursula Schinner MD','kaycee.emmerich@example.com','+1.610.841.3573','user','2025-01-28 07:32:22','$2y$12$OxPOLOYb/V7Cwcj0FZhdleVP1DwAjwrqGuaqSQGYIikESDimHjURe','s2ReQLWnHs','2025-01-28 07:32:22','2025-01-28 07:32:22'),(5,'Elenora Schoen','mspencer@example.com','1-956-821-1012','user','2025-01-28 07:32:22','$2y$12$OxPOLOYb/V7Cwcj0FZhdleVP1DwAjwrqGuaqSQGYIikESDimHjURe','c37vQFKGeA','2025-01-28 07:32:22','2025-01-28 07:32:22'),(6,'Delores Bins PhD','helena75@example.com','+1 (364) 709-3099','user','2025-01-28 07:32:22','$2y$12$OxPOLOYb/V7Cwcj0FZhdleVP1DwAjwrqGuaqSQGYIikESDimHjURe','m4uxqxsorq','2025-01-28 07:32:22','2025-01-28 07:32:22'),(7,'Prof. Shea Rodriguez MD','mcclure.claudine@example.net','979-793-5966','user','2025-01-28 07:32:22','$2y$12$OxPOLOYb/V7Cwcj0FZhdleVP1DwAjwrqGuaqSQGYIikESDimHjURe','osUB5Fm3zs','2025-01-28 07:32:22','2025-01-28 07:32:22'),(8,'Dr. Salvatore Morissette','ron84@example.org','+1-276-342-2015','user','2025-01-28 07:32:22','$2y$12$OxPOLOYb/V7Cwcj0FZhdleVP1DwAjwrqGuaqSQGYIikESDimHjURe','DFfvr47F6J','2025-01-28 07:32:22','2025-01-28 07:32:22'),(9,'Joana Harris MD','quitzon.maximillian@example.org','1-463-629-5349','user','2025-01-28 07:32:22','$2y$12$OxPOLOYb/V7Cwcj0FZhdleVP1DwAjwrqGuaqSQGYIikESDimHjURe','o4LtiwTvpS','2025-01-28 07:32:22','2025-01-28 07:32:22'),(10,'Katelynn Schimmel','blaise47@example.net','+1-520-384-7380','user','2025-01-28 07:32:22','$2y$12$OxPOLOYb/V7Cwcj0FZhdleVP1DwAjwrqGuaqSQGYIikESDimHjURe','gZlzRrEX6x','2025-01-28 07:32:22','2025-01-28 07:32:22'),(11,'Admin User','admin@example.com','123456789','admin',NULL,'$2y$12$jPG1Bg2S2XeGlHg2jEOASuw4xTgRpuXOk/C8ZUcWRaMonNaJT.HM.',NULL,'2025-01-28 07:49:12','2025-01-28 07:49:12'),(12,'Regular User','user@example.com','987654321','user',NULL,'$2y$12$ZI8J5G5txaRwgYZd6mX.l.kyJpP7L8SyCE1wzWv2q3Yr7KyAUYn5G',NULL,'2025-01-28 07:49:13','2025-01-28 07:49:13'),(13,'Kaleb Hartmann DDS','freichel@example.org','(747) 954-6838','user','2025-01-28 07:49:13','$2y$12$Va1/MCf/00fHtCZPSCmAQOTDRXaTL2sxZV0mC.w5DqtAsboXGbKOS','NKdtBpJ6MW','2025-01-28 07:49:13','2025-01-28 07:49:13'),(14,'Audrey Hartmann','trantow.emilio@example.org','+1.930.651.2500','user','2025-01-28 07:49:13','$2y$12$Va1/MCf/00fHtCZPSCmAQOTDRXaTL2sxZV0mC.w5DqtAsboXGbKOS','bmUDs2g97k','2025-01-28 07:49:13','2025-01-28 07:49:13'),(15,'Edna Ward','dklocko@example.com','1-680-231-2180','user','2025-01-28 07:49:13','$2y$12$Va1/MCf/00fHtCZPSCmAQOTDRXaTL2sxZV0mC.w5DqtAsboXGbKOS','vCxQAX7vGI','2025-01-28 07:49:13','2025-01-28 07:49:13'),(16,'Prof. Jewel Davis','kacie87@example.com','(681) 394-0514','user','2025-01-28 07:49:13','$2y$12$Va1/MCf/00fHtCZPSCmAQOTDRXaTL2sxZV0mC.w5DqtAsboXGbKOS','av24Io16Ne','2025-01-28 07:49:13','2025-01-28 07:49:13'),(17,'Axel Rohan','icie77@example.org','(630) 464-8885','user','2025-01-28 07:49:13','$2y$12$Va1/MCf/00fHtCZPSCmAQOTDRXaTL2sxZV0mC.w5DqtAsboXGbKOS','V7lwoESxhy','2025-01-28 07:49:13','2025-01-28 07:49:13'),(18,'Abner Stark','ritchie.katlyn@example.com','+1.518.580.7778','user','2025-01-28 07:49:13','$2y$12$Va1/MCf/00fHtCZPSCmAQOTDRXaTL2sxZV0mC.w5DqtAsboXGbKOS','kMgEeRQ0mG','2025-01-28 07:49:13','2025-01-28 07:49:13'),(19,'Jenifer Kiehn','vbernhard@example.net','1-346-836-4515','user','2025-01-28 07:49:13','$2y$12$Va1/MCf/00fHtCZPSCmAQOTDRXaTL2sxZV0mC.w5DqtAsboXGbKOS','Hp5uza1eyU','2025-01-28 07:49:13','2025-01-28 07:49:13'),(20,'Jennie Will','kilback.brandi@example.net','(612) 336-1032','user','2025-01-28 07:49:13','$2y$12$Va1/MCf/00fHtCZPSCmAQOTDRXaTL2sxZV0mC.w5DqtAsboXGbKOS','J4UDZVkZui','2025-01-28 07:49:13','2025-01-28 07:49:13'),(21,'Orpha Schultz','carolina02@example.org','+1 (712) 531-5489','user','2025-01-28 07:49:13','$2y$12$Va1/MCf/00fHtCZPSCmAQOTDRXaTL2sxZV0mC.w5DqtAsboXGbKOS','ORIzPIGQYu','2025-01-28 07:49:13','2025-01-28 07:49:13'),(22,'Naomie Schamberger','donny.waelchi@example.net','+16418066519','user','2025-01-28 07:49:13','$2y$12$Va1/MCf/00fHtCZPSCmAQOTDRXaTL2sxZV0mC.w5DqtAsboXGbKOS','pSO70tz1Jj','2025-01-28 07:49:13','2025-01-28 07:49:13'),(23,'Jonatan Bogisich','alexa30@example.org','+1-513-395-4864','user','2025-01-28 07:49:13','$2y$12$Va1/MCf/00fHtCZPSCmAQOTDRXaTL2sxZV0mC.w5DqtAsboXGbKOS','V0Sssv9aXE','2025-01-28 07:49:13','2025-01-28 07:49:13'),(24,'Bruce Little','jkutch@example.net','+1 (657) 698-7468','user','2025-01-28 07:49:13','$2y$12$Va1/MCf/00fHtCZPSCmAQOTDRXaTL2sxZV0mC.w5DqtAsboXGbKOS','49ByONsCgF','2025-01-28 07:49:13','2025-01-28 07:49:13'),(25,'Agustina Collins V','freda.lockman@example.com','352-203-9349','user','2025-01-28 07:49:13','$2y$12$Va1/MCf/00fHtCZPSCmAQOTDRXaTL2sxZV0mC.w5DqtAsboXGbKOS','RVpvkSzhAM','2025-01-28 07:49:13','2025-01-28 07:49:13'),(26,'Rafaela Kerluke','kthompson@example.com','+1.678.476.7646','user','2025-01-28 07:49:13','$2y$12$Va1/MCf/00fHtCZPSCmAQOTDRXaTL2sxZV0mC.w5DqtAsboXGbKOS','BeuFh2CgnD','2025-01-28 07:49:13','2025-01-28 07:49:13'),(27,'Douglas Cole Sr.','howe.ladarius@example.net','1-754-734-6365','user','2025-01-28 07:49:13','$2y$12$Va1/MCf/00fHtCZPSCmAQOTDRXaTL2sxZV0mC.w5DqtAsboXGbKOS','zP70WQBsfk','2025-01-28 07:49:13','2025-01-28 07:49:13'),(28,'Dean Stokes','hickle.lauretta@example.org','+1-740-862-0362','user','2025-01-28 07:49:13','$2y$12$Va1/MCf/00fHtCZPSCmAQOTDRXaTL2sxZV0mC.w5DqtAsboXGbKOS','p6rodWr8ki','2025-01-28 07:49:13','2025-01-28 07:49:13'),(29,'Mr. Alphonso Wisozk III','qokuneva@example.org','(920) 605-6396','user','2025-01-28 07:49:13','$2y$12$Va1/MCf/00fHtCZPSCmAQOTDRXaTL2sxZV0mC.w5DqtAsboXGbKOS','I8OrzystMP','2025-01-28 07:49:13','2025-01-28 07:49:13'),(30,'Candice Larkin','wilfrid48@example.org','+17026717875','user','2025-01-28 07:49:13','$2y$12$Va1/MCf/00fHtCZPSCmAQOTDRXaTL2sxZV0mC.w5DqtAsboXGbKOS','TcQFgTz9IP','2025-01-28 07:49:13','2025-01-28 07:49:13'),(31,'Creola Leannon','alexandrea.heaney@example.com','(828) 264-1433','user','2025-01-28 07:49:13','$2y$12$Va1/MCf/00fHtCZPSCmAQOTDRXaTL2sxZV0mC.w5DqtAsboXGbKOS','ARITRJ1Bj9','2025-01-28 07:49:13','2025-01-28 07:49:13'),(32,'Keely Eichmann','mayra.weissnat@example.org','(339) 335-5243','user','2025-01-28 07:49:13','$2y$12$Va1/MCf/00fHtCZPSCmAQOTDRXaTL2sxZV0mC.w5DqtAsboXGbKOS','tw6Ah0wuHt','2025-01-28 07:49:13','2025-01-28 07:49:13'),(33,'Raoul Collier','kozey.eugene@example.org','+19402896980','user','2025-01-28 07:49:13','$2y$12$Va1/MCf/00fHtCZPSCmAQOTDRXaTL2sxZV0mC.w5DqtAsboXGbKOS','xsYri3FEFP','2025-01-28 07:49:13','2025-01-28 07:49:13'),(34,'Laisha Franecki','ebahringer@example.net','1-678-624-3550','user','2025-01-28 07:49:13','$2y$12$Va1/MCf/00fHtCZPSCmAQOTDRXaTL2sxZV0mC.w5DqtAsboXGbKOS','ylGjYhJ0g3','2025-01-28 07:49:13','2025-01-28 07:49:13'),(35,'Ms. Vicenta Friesen','caterina.klein@example.net','(269) 377-0892','user','2025-01-28 07:49:13','$2y$12$Va1/MCf/00fHtCZPSCmAQOTDRXaTL2sxZV0mC.w5DqtAsboXGbKOS','lUOg4gfvfV','2025-01-28 07:49:13','2025-01-28 07:49:13'),(36,'Ms. Laurine Runolfsson','hayes.elwyn@example.org','864-325-8528','user','2025-01-28 07:49:13','$2y$12$Va1/MCf/00fHtCZPSCmAQOTDRXaTL2sxZV0mC.w5DqtAsboXGbKOS','6o7OaBSStj','2025-01-28 07:49:13','2025-01-28 07:49:13'),(37,'Miss Mittie Waelchi','ddenesik@example.org','(210) 655-6482','user','2025-01-28 07:49:13','$2y$12$Va1/MCf/00fHtCZPSCmAQOTDRXaTL2sxZV0mC.w5DqtAsboXGbKOS','XAALEELzOL','2025-01-28 07:49:13','2025-01-28 07:49:13'),(38,'Alivia Brakus III','bconsidine@example.com','+1-629-877-0852','user','2025-01-28 07:49:13','$2y$12$Va1/MCf/00fHtCZPSCmAQOTDRXaTL2sxZV0mC.w5DqtAsboXGbKOS','QSwX2TwDlX','2025-01-28 07:49:13','2025-01-28 07:49:13'),(39,'Sim Brown','stacey.howe@example.org','+1.785.764.5660','user','2025-01-28 07:49:13','$2y$12$Va1/MCf/00fHtCZPSCmAQOTDRXaTL2sxZV0mC.w5DqtAsboXGbKOS','ZB1AgK5G75','2025-01-28 07:49:13','2025-01-28 07:49:13'),(40,'Hans Grimes','jacobs.anahi@example.com','(779) 535-4126','user','2025-01-28 07:49:13','$2y$12$Va1/MCf/00fHtCZPSCmAQOTDRXaTL2sxZV0mC.w5DqtAsboXGbKOS','TtCBwKulbo','2025-01-28 07:49:13','2025-01-28 07:49:13'),(41,'Jasper Moen','june.gleason@example.net','341-271-4435','user','2025-01-28 07:49:13','$2y$12$Va1/MCf/00fHtCZPSCmAQOTDRXaTL2sxZV0mC.w5DqtAsboXGbKOS','mGJ9FW5NOu','2025-01-28 07:49:13','2025-01-28 07:49:13'),(42,'Jesus Abernathy','hpfeffer@example.net','956-424-8269','user','2025-01-28 07:49:13','$2y$12$Va1/MCf/00fHtCZPSCmAQOTDRXaTL2sxZV0mC.w5DqtAsboXGbKOS','2FFrQRHGvo','2025-01-28 07:49:13','2025-01-28 07:49:13');
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

-- Dump completed on 2025-01-28 16:46:35
