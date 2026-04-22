-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 22 avr. 2026 à 09:08
-- Version du serveur : 8.4.7
-- Version de PHP : 8.5.0

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
  `version` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20260422083339', '2026-04-22 08:33:44', 142),
('DoctrineMigrations\\Version20260422082234', '2026-04-22 08:22:40', 129),
('DoctrineMigrations\\Version20260422081923', '2026-04-22 08:19:30', 133),
('DoctrineMigrations\\Version20260422081831', '2026-04-22 08:18:36', 114),
('DoctrineMigrations\\Version20260422075007', '2026-04-22 07:50:14', 102),
('DoctrineMigrations\\Version20260422070814', '2026-04-22 07:08:20', 103),
('DoctrineMigrations\\Version20260422084541', '2026-04-22 08:45:58', 92),
('DoctrineMigrations\\Version20260422085430', '2026-04-22 08:54:56', 262);

-- --------------------------------------------------------

--
-- Structure de la table `ingredient`
--

DROP TABLE IF EXISTS `ingredient`;
CREATE TABLE IF NOT EXISTS `ingredient` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` longtext,
  `ingredient_picture` varchar(255) DEFAULT NULL,
  `barcode` varchar(100) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `ingredient`
--

INSERT INTO `ingredient` (`id`, `name`, `description`, `ingredient_picture`, `barcode`, `created_at`, `updated_at`) VALUES
(1, 'Spaghetti', 'Pâtes italiennes longues', NULL, NULL, '2026-04-22 10:00:00', '2026-04-22 10:00:00'),
(2, 'Œufs', 'Œufs frais fermiers', NULL, NULL, '2026-04-22 10:00:00', '2026-04-22 10:00:00'),
(3, 'Pancetta', 'Charcuterie italienne', NULL, NULL, '2026-04-22 10:00:00', '2026-04-22 10:00:00'),
(4, 'Parmesan', 'Fromage italien râpé', NULL, NULL, '2026-04-22 10:00:00', '2026-04-22 10:00:00'),
(5, 'Poivre noir', 'Poivre moulu', NULL, NULL, '2026-04-22 10:00:00', '2026-04-22 10:00:00'),
(6, 'Laitue', 'Salade verte', NULL, NULL, '2026-04-22 10:00:00', '2026-04-22 10:00:00'),
(7, 'Poulet', 'Blanc de poulet', NULL, NULL, '2026-04-22 10:00:00', '2026-04-22 10:00:00'),
(8, 'Croûtons', 'Pain grillé en cubes', NULL, NULL, '2026-04-22 10:00:00', '2026-04-22 10:00:00'),
(9, 'Sauce César', 'Sauce salade César', NULL, NULL, '2026-04-22 10:00:00', '2026-04-22 10:00:00'),
(10, 'Chocolat', 'Chocolat noir pâtissier', NULL, NULL, '2026-04-22 10:00:00', '2026-04-22 10:00:00'),
(11, 'Farine', 'Farine de blé', NULL, NULL, '2026-04-22 10:00:00', '2026-04-22 10:00:00'),
(12, 'Sucre', 'Sucre blanc', NULL, NULL, '2026-04-22 10:00:00', '2026-04-22 10:00:00'),
(13, 'Beurre', 'Beurre doux', NULL, NULL, '2026-04-22 10:00:00', '2026-04-22 10:00:00'),
(14, 'Fromage', 'Fromage râpé', NULL, NULL, '2026-04-22 10:00:00', '2026-04-22 10:00:00'),
(15, 'Lait', 'Lait entier', NULL, NULL, '2026-04-22 10:00:00', '2026-04-22 10:00:00'),
(16, 'Oignon', 'Oignon jaune', NULL, NULL, '2026-04-22 10:00:00', '2026-04-22 10:00:00'),
(17, 'Carotte', 'Carotte fraîche', NULL, NULL, '2026-04-22 10:00:00', '2026-04-22 10:00:00'),
(18, 'Pomme de terre', 'Pommes de terre', NULL, NULL, '2026-04-22 10:00:00', '2026-04-22 10:00:00'),
(19, 'Courgette', 'Courgette fraîche', NULL, NULL, '2026-04-22 10:00:00', '2026-04-22 10:00:00'),
(20, 'Bouillon légumes', 'Bouillon de légumes', NULL, NULL, '2026-04-22 10:00:00', '2026-04-22 10:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `ingredient_shop`
--

DROP TABLE IF EXISTS `ingredient_shop`;
CREATE TABLE IF NOT EXISTS `ingredient_shop` (
  `id` int NOT NULL AUTO_INCREMENT,
  `price` decimal(10,2) DEFAULT NULL,
  `ingredient_id` int NOT NULL,
  `shop_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_F23BFC34933FE08C` (`ingredient_id`),
  KEY `IDX_F23BFC344D16C4DD` (`shop_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `ingredient_shop`
--

INSERT INTO `ingredient_shop` (`id`, `price`, `ingredient_id`, `shop_id`) VALUES
(1, 1.20, 1, 2),
(2, 2.50, 2, 1),
(3, 3.20, 3, 1),
(4, 2.80, 4, 1),
(5, 0.50, 5, 2),
(6, 1.10, 6, 2),
(7, 6.00, 7, 1),
(8, 1.50, 8, 2),
(9, 2.20, 9, 1),
(10, 3.50, 10, 1),
(11, 1.00, 11, 2),
(12, 0.90, 12, 2),
(13, 1.80, 13, 1),
(14, 2.00, 14, 1),
(15, 1.20, 15, 2),
(16, 0.80, 16, 2),
(17, 0.70, 17, 2),
(18, 1.10, 18, 2),
(19, 1.50, 19, 2),
(20, 1.00, 20, 2);

-- --------------------------------------------------------

--
-- Structure de la table `planning`
--

DROP TABLE IF EXISTS `planning`;
CREATE TABLE IF NOT EXISTS `planning` (
  `id` int NOT NULL AUTO_INCREMENT,
  `week_number` int NOT NULL,
  `year` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_D499BFF6A76ED395` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `planning`
--

INSERT INTO `planning` (`id`, `week_number`, `year`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 17, 2026, 2, '2026-04-22 10:24:21', '2026-04-22 10:24:21'),
(2, 17, 2026, 1, '2026-04-22 10:24:21', '2026-04-22 10:24:21'),
(3, 17, 2026, 3, '2026-04-22 10:24:21', '2026-04-22 10:24:21'),
(4, 17, 2026, 4, '2026-04-22 10:24:21', '2026-04-22 10:24:21'),
(5, 17, 2026, 5, '2026-04-22 10:24:21', '2026-04-22 10:24:21'),
(6, 17, 2026, 6, '2026-04-22 10:24:21', '2026-04-22 10:24:21'),
(7, 17, 2026, 7, '2026-04-22 10:24:21', '2026-04-22 10:24:21'),
(8, 17, 2026, 8, '2026-04-22 10:24:21', '2026-04-22 10:24:21'),
(9, 17, 2026, 9, '2026-04-22 10:24:21', '2026-04-22 10:24:21'),
(10, 17, 2026, 10, '2026-04-22 10:24:21', '2026-04-22 10:24:21');

-- --------------------------------------------------------

--
-- Structure de la table `planning_recipe`
--

DROP TABLE IF EXISTS `planning_recipe`;
CREATE TABLE IF NOT EXISTS `planning_recipe` (
  `id` int NOT NULL AUTO_INCREMENT,
  `time_of_day` varchar(255) NOT NULL,
  `planning_id` int NOT NULL,
  `recipe_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_BAA993583D865311` (`planning_id`),
  KEY `IDX_BAA9935859D8A214` (`recipe_id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `planning_recipe`
--

INSERT INTO `planning_recipe` (`id`, `time_of_day`, `planning_id`, `recipe_id`) VALUES
(1, 'breakfast', 1, 2),
(2, 'lunch', 1, 1),
(3, 'dinner', 1, 3),
(4, 'breakfast', 2, 5),
(5, 'lunch', 2, 4),
(6, 'dinner', 2, 1),
(7, 'breakfast', 3, 2),
(8, 'lunch', 3, 3),
(9, 'dinner', 3, 5),
(10, 'breakfast', 4, 1),
(11, 'lunch', 4, 4),
(12, 'dinner', 4, 2),
(13, 'breakfast', 5, 5),
(14, 'lunch', 5, 1),
(15, 'dinner', 5, 3),
(16, 'breakfast', 6, 2),
(17, 'lunch', 6, 4),
(18, 'dinner', 6, 5),
(19, 'breakfast', 7, 1),
(20, 'lunch', 7, 3),
(21, 'dinner', 7, 4),
(22, 'breakfast', 8, 5),
(23, 'lunch', 8, 2),
(24, 'dinner', 8, 1),
(25, 'breakfast', 9, 3),
(26, 'lunch', 9, 4),
(27, 'dinner', 9, 2),
(28, 'breakfast', 10, 1),
(29, 'lunch', 10, 5),
(30, 'dinner', 10, 3);

-- --------------------------------------------------------

--
-- Structure de la table `recipe`
--

DROP TABLE IF EXISTS `recipe`;
CREATE TABLE IF NOT EXISTS `recipe` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `recipe_picture` varchar(255) DEFAULT NULL,
  `description` longtext,
  `course_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `recipe`
--

INSERT INTO `recipe` (`id`, `name`, `recipe_picture`, `description`, `course_type`) VALUES
(1, 'Pâtes carbonara', NULL, 'Recette italienne classique', 'main'),
(2, 'Salade César', NULL, 'Salade fraîche au poulet', 'starter'),
(3, 'Brownie chocolat', NULL, 'Dessert fondant', 'dessert'),
(4, 'Omelette fromage', NULL, 'Simple et rapide', 'main'),
(5, 'Soupe légumes', NULL, 'Légère et saine', 'starter');

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
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `recipe_ingredient`
--

INSERT INTO `recipe_ingredient` (`id`, `quantity`, `unit`, `recipe_id`, `ingredient_id`) VALUES
(1, 100, 'g', 1, 1),
(2, 2, 'unit', 1, 2),
(3, 80, 'g', 1, 3),
(4, 30, 'g', 1, 4),
(5, 1, 'pinch', 1, 5),
(6, 100, 'g', 2, 6),
(7, 120, 'g', 2, 7),
(8, 30, 'g', 2, 8),
(9, 40, 'g', 2, 9),
(10, 20, 'g', 2, 4),
(11, 150, 'g', 3, 10),
(12, 80, 'g', 3, 11),
(13, 100, 'g', 3, 12),
(14, 100, 'g', 3, 13),
(15, 2, 'unit', 3, 2),
(16, 3, 'unit', 4, 2),
(17, 50, 'g', 4, 14),
(18, 30, 'ml', 4, 15),
(19, 10, 'g', 4, 13),
(20, 1, 'unit', 5, 16),
(21, 2, 'unit', 5, 17),
(22, 2, 'unit', 5, 18),
(23, 1, 'unit', 5, 19),
(24, 500, 'ml', 5, 20);

-- --------------------------------------------------------

--
-- Structure de la table `shop`
--

DROP TABLE IF EXISTS `shop`;
CREATE TABLE IF NOT EXISTS `shop` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `shop_picture` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `shop`
--

INSERT INTO `shop` (`id`, `name`, `shop_picture`, `created_at`, `updated_at`) VALUES
(1, 'Carrefour', NULL, '2026-04-22 10:00:00', '2026-04-22 10:00:00'),
(2, 'Lidl', NULL, '2026-04-22 10:00:00', '2026-04-22 10:00:00'),
(3, 'Monoprix', NULL, '2026-04-22 10:00:00', '2026-04-22 10:00:00');

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
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `profile_picture` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_IDENTIFIER_EMAIL` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `first_name`, `last_name`, `user_name`, `created_at`, `updated_at`, `date_of_birth`, `profile_picture`) VALUES
(10, 'user10@test.com', '[\"ROLE_USER\"]', 'hashed_password', 'Sophia', 'Martin', 'user10', '2026-04-22 10:28:47', '2026-04-22 10:28:47', '1999-10-01', NULL),
(9, 'user9@test.com', '[\"ROLE_USER\"]', 'hashed_password', 'Ethan', 'Moore', 'user9', '2026-04-22 10:28:47', '2026-04-22 10:28:47', '1997-02-25', NULL),
(8, 'user8@test.com', '[\"ROLE_USER\"]', 'hashed_password', 'Mia', 'Thomas', 'user8', '2026-04-22 10:28:47', '2026-04-22 10:28:47', '1994-06-08', NULL),
(6, 'user6@test.com', '[\"ROLE_USER\"]', 'hashed_password', 'Ava', 'Taylor', 'user6', '2026-04-22 10:28:47', '2026-04-22 10:28:47', '1996-12-12', NULL),
(4, 'user4@test.com', '[\"ROLE_USER\"]', 'hashed_password', 'Olivia', 'Johnson', 'user4', '2026-04-22 10:28:47', '2026-04-22 10:28:47', '1998-11-05', NULL),
(7, 'user7@test.com', '[\"ROLE_USER\"]', 'hashed_password', 'Liam', 'Anderson', 'user7', '2026-04-22 10:28:47', '2026-04-22 10:28:47', '1991-04-18', NULL),
(5, 'user5@test.com', '[\"ROLE_USER\"]', 'hashed_password', 'Noah', 'Williams', 'user5', '2026-04-22 10:28:47', '2026-04-22 10:28:47', '1993-09-30', NULL),
(3, 'user3@test.com', '[\"ROLE_USER\"]', 'hashed_password', 'Lucas', 'Brown', 'user3', '2026-04-22 10:28:47', '2026-04-22 10:28:47', '1990-07-14', NULL),
(2, 'user2@test.com', '[\"ROLE_USER\"]', 'hashed_password', 'Emma', 'Smith', 'user2', '2026-04-22 10:28:47', '2026-04-22 10:28:47', '1992-03-22', NULL),
(1, 'user1@test.com', '[\"ROLE_USER\"]', 'hashed_password', 'John', 'Doe', 'user1', '2026-04-22 10:28:47', '2026-04-22 10:28:47', '1995-01-10', NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
