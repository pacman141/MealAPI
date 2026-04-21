-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 21 avr. 2026 à 14:36
-- Version du serveur : 8.4.7
-- Version de PHP : 8.5.0

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `meal`
--

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8mb4_general_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20260421143442', '2026-04-21 14:34:51', 492);

-- --------------------------------------------------------

--
-- Structure de la table `ingredient`
--

DROP TABLE IF EXISTS `ingredient`;
CREATE TABLE IF NOT EXISTS `ingredient` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` longtext,
  `image` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `barcode` varchar(100) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `ingredient`
--

INSERT INTO `ingredient` (`id`, `name`, `description`, `image`, `price`, `barcode`, `created_at`, `updated_at`) VALUES
(1, 'Tomate', 'Tomates fraîches', NULL, 1.20, '111', '2026-04-21 11:45:08', '2026-04-21 11:45:08'),
(2, 'Oignon', 'Oignons jaunes', NULL, 0.80, '112', '2026-04-21 11:45:08', '2026-04-21 11:45:08'),
(3, 'Poulet', 'Blanc de poulet', NULL, 6.50, '113', '2026-04-21 11:45:08', '2026-04-21 11:45:08'),
(4, 'Riz', 'Riz basmati', NULL, 2.10, '114', '2026-04-21 11:45:08', '2026-04-21 11:45:08'),
(5, 'Pâtes', 'Spaghetti', NULL, 1.50, '115', '2026-04-21 11:45:08', '2026-04-21 11:45:08'),
(6, 'Ail', 'Gousse d ail', NULL, 0.50, '116', '2026-04-21 11:45:08', '2026-04-21 11:45:08'),
(7, 'Carotte', 'Carottes bio', NULL, 1.00, '117', '2026-04-21 11:45:08', '2026-04-21 11:45:08'),
(8, 'Pommes de terre', 'Patates', NULL, 2.30, '118', '2026-04-21 11:45:08', '2026-04-21 11:45:08'),
(9, 'Saumon', 'Filet de saumon', NULL, 9.90, '119', '2026-04-21 11:45:08', '2026-04-21 11:45:08'),
(10, 'Crème', 'Crème fraîche', NULL, 1.80, '120', '2026-04-21 11:45:08', '2026-04-21 11:45:08'),
(11, 'Fromage', 'Emmental', NULL, 2.50, '121', '2026-04-21 11:45:08', '2026-04-21 11:45:08'),
(12, 'Beurre', 'Beurre doux', NULL, 1.60, '122', '2026-04-21 11:45:08', '2026-04-21 11:45:08'),
(13, 'Boeuf', 'Steak haché', NULL, 7.00, '123', '2026-04-21 11:45:08', '2026-04-21 11:45:08'),
(14, 'Courgette', 'Courgettes', NULL, 1.40, '124', '2026-04-21 11:45:08', '2026-04-21 11:45:08'),
(15, 'Poivron', 'Poivron rouge', NULL, 1.70, '125', '2026-04-21 11:45:08', '2026-04-21 11:45:08'),
(16, 'Citron', 'Citron jaune', NULL, 0.90, '126', '2026-04-21 11:45:08', '2026-04-21 11:45:08'),
(17, 'Champignon', 'Champignons de Paris', NULL, 2.20, '127', '2026-04-21 11:45:08', '2026-04-21 11:45:08'),
(18, 'Lait', 'Lait demi-écrémé', NULL, 1.10, '128', '2026-04-21 11:45:08', '2026-04-21 11:45:08'),
(19, 'Œuf', 'Boîte de 6 œufs', NULL, 2.00, '129', '2026-04-21 11:45:08', '2026-04-21 11:45:08'),
(20, 'Salade', 'Laitue', NULL, 1.30, '130', '2026-04-21 11:45:08', '2026-04-21 11:45:08');

-- --------------------------------------------------------

--
-- Structure de la table `meal`
--

DROP TABLE IF EXISTS `meal`;
CREATE TABLE IF NOT EXISTS `meal` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) NOT NULL,
  `updated_at` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `meal`
--

INSERT INTO `meal` (`id`, `image`, `created_at`, `updated_at`) VALUES
(1, 'm1.jpg', '2026-04-21 11:45:21', '2026-04-21 11:45:21'),
(2, 'm2.jpg', '2026-04-21 11:45:21', '2026-04-21 11:45:21'),
(3, 'm3.jpg', '2026-04-21 11:45:21', '2026-04-21 11:45:21'),
(4, 'm4.jpg', '2026-04-21 11:45:21', '2026-04-21 11:45:21'),
(5, 'm5.jpg', '2026-04-21 11:45:21', '2026-04-21 11:45:21');

-- --------------------------------------------------------

--
-- Structure de la table `meal_recipe`
--

DROP TABLE IF EXISTS `meal_recipe`;
CREATE TABLE IF NOT EXISTS `meal_recipe` (
  `id` int NOT NULL AUTO_INCREMENT,
  `meal_id` int NOT NULL,
  `recipe_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_B5820C3E639666D6` (`meal_id`),
  KEY `IDX_B5820C3E59D8A214` (`recipe_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `meal_recipe`
--

INSERT INTO `meal_recipe` (`id`, `meal_id`, `recipe_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 3),
(4, 2, 4),
(5, 3, 5),
(6, 3, 6),
(7, 4, 7),
(8, 4, 8),
(9, 5, 9),
(10, 5, 10);

-- --------------------------------------------------------

--
-- Structure de la table `planning`
--

DROP TABLE IF EXISTS `planning`;
CREATE TABLE IF NOT EXISTS `planning` (
  `id` int NOT NULL AUTO_INCREMENT,
  `week_number` int NOT NULL,
  `year` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `planning`
--

INSERT INTO `planning` (`id`, `week_number`, `year`) VALUES
(1, 16, 2026),
(2, 17, 2026),
(3, 16, 2026),
(4, 17, 2026),
(5, 16, 2026);

-- --------------------------------------------------------

--
-- Structure de la table `planning_meal`
--

DROP TABLE IF EXISTS `planning_meal`;
CREATE TABLE IF NOT EXISTS `planning_meal` (
  `id` int NOT NULL AUTO_INCREMENT,
  `time_of_day` varchar(255) NOT NULL,
  `planning_id` int NOT NULL,
  `meal_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_562086D23D865311` (`planning_id`),
  KEY `IDX_562086D2639666D6` (`meal_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `planning_meal`
--

INSERT INTO `planning_meal` (`id`, `time_of_day`, `planning_id`, `meal_id`) VALUES
(1, 'morning', 1, 1),
(2, 'dinner', 1, 2),
(3, 'lunch', 2, 3),
(4, 'dinner', 2, 4),
(5, 'morning', 3, 1),
(6, 'morning', 3, 5);

-- --------------------------------------------------------

--
-- Structure de la table `recipe`
--

DROP TABLE IF EXISTS `recipe`;
CREATE TABLE IF NOT EXISTS `recipe` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `detail` longtext NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `recipe`
--

INSERT INTO `recipe` (`id`, `name`, `detail`, `image`, `price`, `created_at`, `updated_at`, `type`) VALUES
(1, 'Pâtes tomate', 'Pâtes + sauce tomate', 'r1.jpg', 3.00, '2026-04-21 11:45:14', '2026-04-21 11:45:14', 'mainCourse'),
(2, 'Poulet riz', 'Poulet avec riz', 'r2.jpg', 5.00, '2026-04-21 11:45:14', '2026-04-21 11:45:14', 'mainCourse'),
(3, 'Omelette', 'Oeufs et fromage', 'r3.jpg', 2.00, '2026-04-21 11:45:14', '2026-04-21 11:45:14', 'starter'),
(4, 'Salade saumon', 'Salade + saumon', 'r4.jpg', 7.00, '2026-04-21 11:45:14', '2026-04-21 11:45:14', 'starter'),
(5, 'Steak frites', 'Boeuf et pommes de terre', 'r5.jpg', 6.00, '2026-04-21 11:45:14', '2026-04-21 11:45:14', 'mainCourse'),
(6, 'Soupe légumes', 'Soupe maison', 'r6.jpg', 2.00, '2026-04-21 11:45:14', '2026-04-21 11:45:14', 'dessert'),
(7, 'Riz sauté', 'Riz + légumes', 'r7.jpg', 4.00, '2026-04-21 11:45:14', '2026-04-21 11:45:14', 'dessert'),
(8, 'Gratin', 'Pommes de terre + crème', 'r8.jpg', 5.00, '2026-04-21 11:45:14', '2026-04-21 11:45:14', 'mainCourse'),
(9, 'Wrap poulet', 'Wrap rapide', 'r9.jpg', 4.00, '2026-04-21 11:45:14', '2026-04-21 11:45:14', 'mainCourse'),
(10, 'Pâtes crème', 'Pâtes sauce crème', 'r10.jpg', 4.00, '2026-04-21 11:45:14', '2026-04-21 11:45:14', 'starter'),
(11, 'Poêlée légumes', 'Légumes sautés', 'r11.jpg', 3.00, '2026-04-21 11:45:14', '2026-04-21 11:45:14', 'mainCourse'),
(12, 'Burger maison', 'Burger boeuf', 'r12.jpg', 6.00, '2026-04-21 11:45:14', '2026-04-21 11:45:14', 'mainCourse'),
(13, 'Saumon citron', 'Saumon + citron', 'r13.jpg', 8.00, '2026-04-21 11:45:14', '2026-04-21 11:45:14', 'starter'),
(14, 'Omelette légumes', 'Omelette healthy', 'r14.jpg', 3.00, '2026-04-21 11:45:14', '2026-04-21 11:45:14', 'mainCourse'),
(15, 'Riz poulet curry', 'Curry maison', 'r15.jpg', 7.00, '2026-04-21 11:45:14', '2026-04-21 11:45:14', 'mainCourse'),
(16, 'Salade complète', 'Salade repas', 'r16.jpg', 4.00, '2026-04-21 11:45:14', '2026-04-21 11:45:14', 'mainCourse'),
(17, 'Gratin courgette', 'Courgettes gratin', 'r17.jpg', 5.00, '2026-04-21 11:45:14', '2026-04-21 11:45:14', 'starter'),
(18, 'Pâtes fromage', 'Pâtes + fromage', 'r18.jpg', 3.00, '2026-04-21 11:45:14', '2026-04-21 11:45:14', 'starter'),
(19, 'Poulet grillé', 'Poulet simple', 'r19.jpg', 6.00, '2026-04-21 11:45:14', '2026-04-21 11:45:14', 'starter'),
(20, 'Riz légumes', 'Riz healthy', 'r20.jpg', 4.00, '2026-04-21 11:45:14', '2026-04-21 11:45:14', 'dessert');

-- --------------------------------------------------------

--
-- Structure de la table `recipe_ingredient`
--

DROP TABLE IF EXISTS `recipe_ingredient`;
CREATE TABLE IF NOT EXISTS `recipe_ingredient` (
  `id` int NOT NULL AUTO_INCREMENT,
  `quantity` double DEFAULT NULL,
  `unit` varchar(50) DEFAULT NULL,
  `recipe_id` int NOT NULL,
  `ingredient_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_22D1FE1359D8A214` (`recipe_id`),
  KEY `IDX_22D1FE13933FE08C` (`ingredient_id`)
) ENGINE=MyISAM AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `recipe_ingredient`
--

INSERT INTO `recipe_ingredient` (`id`, `quantity`, `unit`, `recipe_id`, `ingredient_id`) VALUES
(1, 200, 'g', 1, 5),
(2, 3, 'pcs', 1, 1),
(3, 1, 'pcs', 1, 2),
(4, 1, 'gousse', 1, 6),
(5, 150, 'g', 2, 3),
(6, 100, 'g', 2, 4),
(7, 1, 'pcs', 2, 2),
(8, 2, 'pcs', 3, 19),
(9, 30, 'g', 3, 11),
(10, 10, 'g', 3, 12),
(11, 1, 'pcs', 4, 20),
(12, 120, 'g', 4, 9),
(13, 0.5, 'pcs', 4, 16),
(14, 150, 'g', 5, 13),
(15, 200, 'g', 5, 8),
(16, 10, 'g', 5, 12),
(17, 2, 'pcs', 6, 7),
(18, 2, 'pcs', 6, 8),
(19, 1, 'pcs', 6, 2),
(20, 120, 'g', 7, 4),
(21, 1, 'pcs', 7, 7),
(22, 1, 'pcs', 7, 2),
(23, 300, 'g', 8, 8),
(24, 100, 'ml', 8, 10),
(25, 50, 'g', 8, 11),
(26, 120, 'g', 9, 3),
(27, 1, 'pcs', 9, 20),
(28, 30, 'g', 9, 10),
(29, 200, 'g', 10, 5),
(30, 100, 'ml', 10, 10),
(31, 1, 'gousse', 10, 6),
(32, 2, 'pcs', 11, 7),
(33, 1, 'pcs', 11, 14),
(34, 1, 'pcs', 11, 15),
(35, 150, 'g', 12, 13),
(36, 30, 'g', 12, 11),
(37, 1, 'pcs', 12, 20),
(38, 150, 'g', 13, 9),
(39, 1, 'pcs', 13, 16),
(40, 10, 'g', 13, 12),
(41, 3, 'pcs', 14, 19),
(42, 1, 'pcs', 14, 14),
(43, 1, 'pcs', 14, 2),
(44, 150, 'g', 15, 3),
(45, 120, 'g', 15, 4),
(46, 50, 'ml', 15, 10),
(47, 1, 'pcs', 16, 20),
(48, 2, 'pcs', 16, 19),
(49, 2, 'pcs', 16, 1),
(50, 2, 'pcs', 17, 14),
(51, 100, 'ml', 17, 10),
(52, 50, 'g', 17, 11),
(53, 200, 'g', 18, 5),
(54, 50, 'g', 18, 11),
(55, 10, 'g', 18, 12),
(56, 180, 'g', 19, 3),
(57, 1, 'gousse', 19, 6),
(58, 0.5, 'pcs', 19, 16),
(59, 120, 'g', 20, 4),
(60, 1, 'pcs', 20, 7),
(61, 1, 'pcs', 20, 14);

-- --------------------------------------------------------

--
-- Structure de la table `shop`
--

DROP TABLE IF EXISTS `shop`;
CREATE TABLE IF NOT EXISTS `shop` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `shop`
--

INSERT INTO `shop` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Carrefour', 'shop.jpg', '2026-04-21 11:44:54', '2026-04-21 11:44:54'),
(2, 'Auchan', 'shop.jpg', '2026-04-21 11:44:54', '2026-04-21 11:44:54'),
(3, 'Lidl', 'shop.jpg', '2026-04-21 11:44:54', '2026-04-21 11:44:54'),
(4, 'Monoprix', 'shop.jpg', '2026-04-21 11:44:54', '2026-04-21 11:44:54'),
(5, 'Bio c Bon', 'shop.jpg', '2026-04-21 11:44:54', '2026-04-21 11:44:54');

-- --------------------------------------------------------

--
-- Structure de la table `shopping_list_item`
--

DROP TABLE IF EXISTS `shopping_list_item`;
CREATE TABLE IF NOT EXISTS `shopping_list_item` (
  `id` int NOT NULL AUTO_INCREMENT,
  `is_checked` tinyint NOT NULL,
  `user_id` int NOT NULL,
  `planning_id` int NOT NULL,
  `ingredient_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_4FB1C224A76ED395` (`user_id`),
  KEY `IDX_4FB1C2243D865311` (`planning_id`),
  KEY `IDX_4FB1C224933FE08C` (`ingredient_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `shopping_list_item`
--

INSERT INTO `shopping_list_item` (`id`, `is_checked`, `user_id`, `planning_id`, `ingredient_id`) VALUES
(1, 0, 1, 1, 1),
(2, 0, 1, 1, 2),
(3, 0, 1, 1, 3),
(4, 0, 1, 1, 4),
(5, 0, 1, 1, 5),
(6, 0, 1, 1, 6),
(7, 1, 2, 3, 7),
(8, 0, 2, 3, 8),
(9, 0, 2, 3, 9),
(10, 0, 2, 3, 10),
(11, 0, 3, 5, 11),
(12, 0, 3, 5, 12),
(13, 0, 3, 5, 13),
(14, 0, 3, 5, 14);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(180) NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) NOT NULL,
  `username` varchar(100) NOT NULL,
  `image` varchar(255) NOT NULL,
  `date_of_birth` date NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_IDENTIFIER_EMAIL` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `username`, `image`, `date_of_birth`, `created_at`, `updated_at`, `first_name`, `last_name`) VALUES
(1, 'alex@test.com', '[\"ROLE_USER\"]', 'pass', 'alex', 'img1.jpg', '1995-01-01', '2026-04-21 11:44:54', '2026-04-21 11:44:54', '', ''),
(2, 'lea@test.com', '[\"ROLE_USER\"]', 'pass', 'lea', 'img2.jpg', '1996-02-02', '2026-04-21 11:44:54', '2026-04-21 11:44:54', '', ''),
(3, 'tom@test.com', '[\"ROLE_USER\"]', 'pass', 'tom', 'img3.jpg', '1994-03-03', '2026-04-21 11:44:54', '2026-04-21 11:44:54', '', ''),
(4, 'emma@test.com', '[\"ROLE_USER\"]', 'pass', 'emma', 'img4.jpg', '1993-04-04', '2026-04-21 11:44:54', '2026-04-21 11:44:54', '', ''),
(5, 'admin@test.com', '[\"ROLE_ADMIN\"]', 'pass', 'admin', 'img5.jpg', '1990-05-05', '2026-04-21 11:44:54', '2026-04-21 11:44:54', '', '');
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
