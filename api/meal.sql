-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 30 avr. 2026 à 15:25
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
('DoctrineMigrations\\Version20260422085430', '2026-04-22 08:54:56', 262),
('DoctrineMigrations\\Version20260427184721', '2026-04-27 18:47:31', 259),
('DoctrineMigrations\\Version20260428070121', '2026-04-28 07:01:29', 186),
('DoctrineMigrations\\Version20260430152306', '2026-04-30 15:23:12', 256);

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
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `ingredient`
--

INSERT INTO `ingredient` (`id`, `name`, `description`, `ingredient_picture`, `barcode`, `created_at`, `updated_at`) VALUES
(21, 'Tomate', 'Tomates fraîches', NULL, '100000000001', '2026-04-27 11:26:45', '2026-04-27 11:26:45'),
(22, 'Poulet', 'Blanc de poulet', NULL, '100000000002', '2026-04-27 11:26:45', '2026-04-27 11:26:45'),
(23, 'Pâtes', 'Pâtes alimentaires', NULL, '100000000003', '2026-04-27 11:26:45', '2026-04-27 11:26:45'),
(24, 'Riz', 'Riz basmati', NULL, '100000000004', '2026-04-27 11:26:45', '2026-04-27 11:26:45'),
(25, 'Oignon', 'Oignons jaunes', NULL, '100000000005', '2026-04-27 11:26:45', '2026-04-27 11:26:45'),
(26, 'Ail', 'Gousses d’ail', NULL, '100000000006', '2026-04-27 11:26:45', '2026-04-27 11:26:45'),
(27, 'Carotte', 'Carottes fraîches', NULL, '100000000007', '2026-04-27 11:26:45', '2026-04-27 11:26:45'),
(28, 'Crème fraîche', 'Crème 30% MG', NULL, '100000000008', '2026-04-27 11:26:45', '2026-04-27 11:26:45'),
(29, 'Fromage râpé', 'Emmental râpé', NULL, '100000000009', '2026-04-27 11:26:45', '2026-04-27 11:26:45'),
(30, 'Boeuf', 'Viande de boeuf', NULL, '100000000010', '2026-04-27 11:26:45', '2026-04-27 11:26:45'),
(31, 'Poivron', 'Poivrons rouges', NULL, '100000000011', '2026-04-27 11:26:45', '2026-04-27 11:26:45'),
(32, 'Courgette', 'Courgettes fraîches', NULL, '100000000012', '2026-04-27 11:26:45', '2026-04-27 11:26:45'),
(33, 'Beurre', 'Beurre doux', NULL, '100000000013', '2026-04-27 11:26:45', '2026-04-27 11:26:45'),
(34, 'Huile d’olive', 'Huile vierge extra', NULL, '100000000014', '2026-04-27 11:26:45', '2026-04-27 11:26:45'),
(35, 'Sel', 'Sel fin', NULL, '100000000015', '2026-04-27 11:26:45', '2026-04-27 11:26:45'),
(36, 'Poivre', 'Poivre noir', NULL, '100000000016', '2026-04-27 11:26:45', '2026-04-27 11:26:45'),
(37, 'Champignons', 'Champignons de Paris', NULL, '100000000017', '2026-04-27 11:26:45', '2026-04-27 11:26:45'),
(38, 'Œufs', 'Œufs frais', NULL, '100000000018', '2026-04-27 11:26:45', '2026-04-27 11:26:45'),
(39, 'Lait', 'Lait entier', NULL, '100000000019', '2026-04-27 11:26:45', '2026-04-27 11:26:45'),
(40, 'Mozzarella', 'Fromage mozzarella', NULL, '100000000020', '2026-04-27 11:26:45', '2026-04-27 11:26:45');

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
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `ingredient_shop`
--

INSERT INTO `ingredient_shop` (`id`, `price`, `ingredient_id`, `shop_id`) VALUES
(1, 2.50, 21, 1),
(2, 2.20, 21, 2),
(3, 2.40, 21, 3),
(4, 8.90, 22, 1),
(5, 8.50, 22, 2),
(6, 9.10, 22, 3),
(7, 1.20, 23, 1),
(8, 1.10, 23, 2),
(9, 1.25, 23, 3),
(10, 2.00, 24, 1),
(11, 1.80, 24, 2),
(12, 1.95, 24, 3),
(13, 1.50, 25, 1),
(14, 1.30, 25, 2),
(15, 1.40, 25, 3),
(16, 0.90, 26, 1),
(17, 0.85, 26, 2),
(18, 0.95, 26, 3),
(19, 1.80, 27, 1),
(20, 1.60, 27, 2),
(21, 1.70, 27, 3),
(22, 2.10, 28, 1),
(23, 1.95, 28, 2),
(24, 2.05, 28, 3),
(25, 3.50, 29, 1),
(26, 3.20, 29, 2),
(27, 3.40, 29, 3),
(28, 12.90, 30, 1),
(29, 11.80, 30, 2),
(30, 12.50, 30, 3),
(31, 2.30, 31, 1),
(32, 2.10, 31, 2),
(33, 2.25, 31, 3),
(34, 2.00, 32, 1),
(35, 1.85, 32, 2),
(36, 1.95, 32, 3),
(37, 2.80, 33, 1),
(38, 2.60, 33, 2),
(39, 2.70, 33, 3),
(40, 6.90, 34, 1),
(41, 6.50, 34, 2),
(42, 6.80, 34, 3),
(43, 0.80, 35, 1),
(44, 0.75, 35, 2),
(45, 0.78, 35, 3),
(46, 1.20, 36, 1),
(47, 1.10, 36, 2),
(48, 1.15, 36, 3),
(49, 2.90, 37, 1),
(50, 2.70, 37, 2),
(51, 2.85, 37, 3),
(52, 3.20, 38, 1),
(53, 3.00, 38, 2),
(54, 3.10, 38, 3),
(55, 1.10, 39, 1),
(56, 1.05, 39, 2),
(57, 1.08, 39, 3),
(58, 2.50, 40, 1),
(59, 2.30, 40, 2),
(60, 2.45, 40, 3);

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
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `planning`
--

INSERT INTO `planning` (`id`, `week_number`, `year`, `user_id`, `created_at`, `updated_at`) VALUES
(13, 17, 2026, 37, '2026-04-27 11:27:01', '2026-04-27 11:27:01'),
(14, 17, 2026, 38, '2026-04-27 11:27:01', '2026-04-27 11:27:01'),
(15, 17, 2026, 39, '2026-04-27 11:27:01', '2026-04-27 11:27:01'),
(16, 17, 2026, 40, '2026-04-27 11:27:01', '2026-04-27 11:27:01'),
(17, 18, 2026, 37, '2026-04-27 11:27:01', '2026-04-27 11:27:01'),
(18, 18, 2026, 38, '2026-04-27 11:27:01', '2026-04-27 11:27:01'),
(19, 18, 2026, 39, '2026-04-27 11:27:01', '2026-04-27 11:27:01'),
(20, 18, 2026, 40, '2026-04-27 11:27:01', '2026-04-27 11:27:01'),
(21, 19, 2026, 37, '2026-04-27 11:27:01', '2026-04-27 11:27:01'),
(22, 19, 2026, 38, '2026-04-27 11:27:01', '2026-04-27 11:27:01'),
(23, 17, 2026, 37, '2026-04-27 11:27:01', '2026-04-27 11:27:01'),
(24, 17, 2026, 37, '2026-04-27 11:27:01', '2026-04-27 11:27:01');

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
  `day_of_week` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_BAA993583D865311` (`planning_id`),
  KEY `IDX_BAA9935859D8A214` (`recipe_id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `planning_recipe`
--

INSERT INTO `planning_recipe` (`id`, `time_of_day`, `planning_id`, `recipe_id`, `day_of_week`) VALUES
(31, 'lunch', 13, 6, 'monday'),
(32, 'dinner', 13, 8, 'tuesday'),
(33, 'lunch', 14, 7, 'tuesday'),
(34, 'dinner', 14, 9, 'wednesday'),
(35, 'lunch', 15, 10, 'wednesday'),
(36, 'dinner', 15, 11, 'thursday'),
(37, 'lunch', 16, 12, 'thursday'),
(38, 'dinner', 16, 13, 'friday'),
(39, 'lunch', 17, 14, 'friday'),
(40, 'dinner', 17, 15, 'saturday'),
(41, 'lunch', 18, 16, 'saturday'),
(42, 'dinner', 18, 17, 'sunday'),
(43, 'lunch', 19, 18, 'sunday'),
(44, 'dinner', 19, 19, 'monday'),
(45, 'lunch', 20, 20, 'monday'),
(46, 'dinner', 20, 6, 'tuesday'),
(47, 'lunch', 21, 7, 'tuesday'),
(48, 'dinner', 21, 8, 'wednesday'),
(49, 'lunch', 22, 9, 'wednesday'),
(50, 'dinner', 22, 10, 'thursday');

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
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `recipe`
--

INSERT INTO `recipe` (`id`, `name`, `recipe_picture`, `description`, `course_type`) VALUES
(6, 'Pâtes au poulet', NULL, 'Pâtes crémeuses au poulet', 'main'),
(7, 'Salade de tomates', NULL, 'Salade simple et fraîche', 'starter'),
(8, 'Poulet grillé', NULL, 'Poulet rôti au four', 'main'),
(9, 'Riz aux légumes', NULL, 'Riz sauté aux légumes', 'main'),
(10, 'Omelette fromage', NULL, 'Omelette moelleuse', 'main'),
(11, 'Spaghetti bolognaise', NULL, 'Sauce bolognaise maison', 'main'),
(12, 'Gratin dauphinois', NULL, 'Gratin de pommes de terre', 'main'),
(13, 'Soupe de légumes', NULL, 'Soupe maison', 'starter'),
(14, 'Poulet curry', NULL, 'Poulet sauce curry', 'main'),
(15, 'Quiche lorraine', NULL, 'Quiche traditionnelle', 'main'),
(16, 'Pizza maison', NULL, 'Pizza sauce tomate mozzarella', 'main'),
(17, 'Salade composée', NULL, 'Salade variée', 'starter'),
(18, 'Boeuf sauté', NULL, 'Boeuf aux légumes', 'main'),
(19, 'Pâtes carbonara', NULL, 'Recette italienne', 'main'),
(20, 'Courgettes farcies', NULL, 'Courgettes au four', 'main');

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
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `recipe_ingredient`
--

INSERT INTO `recipe_ingredient` (`id`, `quantity`, `unit`, `recipe_id`, `ingredient_id`) VALUES
(25, 200, 'g', 6, 23),
(26, 150, 'g', 6, 22),
(27, 100, 'ml', 6, 28),
(28, 2, 'unit', 7, 21),
(29, 1, 'unit', 7, 25),
(30, 1, 'unit', 8, 22),
(31, 150, 'g', 9, 24),
(32, 1, 'unit', 9, 27),
(33, 2, 'unit', 10, 38),
(34, 50, 'g', 10, 29),
(35, 200, 'g', 11, 30),
(36, 150, 'g', 11, 23),
(37, 300, 'g', 12, 24),
(38, 100, 'ml', 12, 39),
(39, 200, 'g', 13, 27),
(40, 150, 'g', 14, 22),
(41, 50, 'ml', 14, 34),
(42, 1, 'unit', 15, 38),
(43, 100, 'g', 15, 33),
(44, 1, 'unit', 16, 21),
(45, 100, 'g', 16, 40),
(46, 200, 'g', 18, 30),
(47, 100, 'g', 18, 31),
(48, 150, 'g', 19, 23),
(49, 50, 'g', 19, 29),
(50, 200, 'g', 20, 32);

-- --------------------------------------------------------

--
-- Structure de la table `refresh_tokens`
--

DROP TABLE IF EXISTS `refresh_tokens`;
CREATE TABLE IF NOT EXISTS `refresh_tokens` (
  `refresh_token` varchar(128) NOT NULL,
  `username` varchar(255) NOT NULL,
  `valid` datetime NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_9BACE7E1C74F2195` (`refresh_token`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `refresh_tokens`
--

INSERT INTO `refresh_tokens` (`refresh_token`, `username`, `valid`, `id`) VALUES
('61e64f0ce86cb1532f2c3a0fc5f9e5dbfcec4a779fba45ec0aa8cff1b5e34aa59ca688e7e4d3ded6557e6f064608861c7007e24c105e72a8c6a3db021919f688', 'test@test.com', '2026-05-28 07:18:42', 1),
('31f38c3de46733f71ec1e5aa4d2c6a17af09bfee274f79434f84d4dc42eb0aec3f8c0fb1350e08b423a57a084940d005f25e8531f0e5364fc45b60ef06ef3ad1', 'test@test.com', '2026-05-28 12:07:03', 2),
('b3c31d7ccee6eb5d76c7107e035ee048ec4a272cd18709df633612db921350250a6838ef0e05bcea2bf5a9620dd5d04bc6608cb1488369884bed462e3fd844ef', 'test@test.com', '2026-05-28 12:07:06', 3),
('558d0ba10d058cb19eb15ca561e1dd897dc50c274db979aa49d3579d080ff197ffba3fcaccf9c23b505be1c7cfdd39eb8076e2dc481a9115be44e1d81b69cfff', 'test@test.com', '2026-05-28 13:03:06', 4),
('5a318ac40bde3aad9c265cccaac0da035f45749212a049d810a4a65632821ac275ad4e1801f413e714b8cbb6ee0d68316be2ce3843b264bd254a7d86c81aec7d', 'test@test.com', '2026-05-28 14:03:40', 5),
('cb1a35861b4af691182396a32614cab17b7726c60fb2783add5b92fd3d3e7f31c164a2c52b1916dd887665f0bd2c77e77258d6f33b0f6b6905fe89f88b9ffc20', 'test@test.com', '2026-05-28 14:06:39', 6),
('25b57b70d677a067bd314ee63d73d7dda6fb7287b6549fa8345ea0fa73fec47ae30413bf2017b37268900dfcbe7ade9d601bc20530986c144fb8d467e9b2a0e2', 'test@test.com', '2026-05-28 14:20:23', 7),
('faf72553249bcc2087f38246de1d28065f4a5cb3796fcc0f52254ce4a5f06b441607348249dfb804499000bc4c5693c3aa2f81ae21f8af56e7a593458757f53c', 'test@test.com', '2026-05-28 14:21:44', 8),
('2769e8fc6a090e32f711b4ff82e1094419b1a326a9982ef884abeb20cae71b132d917741c8acf429d787a3c1757a04fbaa8c61703b3cc3c802414e4831686771', 'test@test.com', '2026-05-28 14:24:50', 9),
('6c23103ce1e3e16f9b895d4329673d8e57cc95a5eb4ae006582765f0f2365d33856ffaa9dc3f4cefb6715bd1d01b3bf15d1f76eee4b348ccc93b5383ceeb1434', 'test@test.com', '2026-05-28 17:52:47', 10),
('63a5b2e59b56cf014d5291a422d1f3c35d1f735a44ad10aab754009ee786417afa30e6a128588c681af74b78d5b6681cf0915705d403e102b6c408f10211a135', 'test@test.com', '2026-05-28 17:53:49', 11),
('a1ab21df7046d9fd6efb9ff61b823dce55c47aab9111c0818ae99616cf3e6dcc8522e6656a8cb997324914dd4c544eb7ab276f5ff733458964ae03f8f7c197ad', 'test@test.com', '2026-05-28 18:07:09', 12),
('25c67c9237200eeba6381711438980a94325fec9de99e1c74df8e42c7ddd32776e35bff8cec6989b44f83082afc15da479f7b12fea7ab35e2b0417d402315b0c', 'test@test.com', '2026-05-28 18:22:53', 13),
('1a050f8a0b2c92cc6fd2011921d336562460ac5350260ffdffbc112de4fa756366b1fecf8440eddc5fbca753122146aad4cd8a8ab8c622f43671f9a9d789919f', 'test@test.com', '2026-05-28 18:36:25', 14),
('27ae24a2076d397237aca460de90997c64411673f9af9c1d510181f216970fdc75cdcf6b59526c422c73c6c7f73d2faf541e9aa18533e98aede40bad2e0f3a74', 'test@test.com', '2026-05-28 19:39:29', 15),
('3e483e2bedc60c822f44dc0456727fbac272e3ffd0af8262560224e6c6f8a64c678ad0aa0ce65eee3032333fca322392eed9ffc2c6ca47aa36fb24052ae4d1d5', 'test@test.com', '2026-05-28 19:40:12', 16),
('fa3c536b00ec46af84814f73f5858b9477c16e763fae2cccd6b139e970754f0b43e8d2d865a4f5f7a6b2e35ddecdf323867ca17818f9fdbbd619615a685ec9d6', 'test@test.com', '2026-05-29 06:37:11', 17),
('7ff269c2f070ff56e514513eb64f0e6c1d9f42a26f0e9b73f8eb8e9c36656971f077c92d0f0886c5f6a04844a34c0ba57db2957f2fc568fa380173b01a999202', 'test@test.com', '2026-05-29 06:38:59', 18),
('17540ff18b5c01a1fdb02635632c5bd6612599cf6887a8f68a5774c5b11550c1ff2cba1db3bb55cbe0bd8367301763c588939de8fa213b3da94681192fe8102f', 'test@test.com', '2026-05-29 06:46:16', 19),
('aa9a6adab1210739319bc32852518466256e20bd686bc0bca18c974cb4c2aced64070bd2f594bed1b136ffa7dabd03eea69dccd4e017d06511f537194ce3020d', 'test@test.com', '2026-05-29 07:05:06', 20),
('757605caec2d13d53ebb11d95e7cb9359a3a967460bca723bef140d5dd8edeb68482f4cd633b0d32bd010abc5960b1249ca17556822f3f4211bc685984d676bb', 'test@test.com', '2026-05-29 07:05:24', 21),
('ea4b453d1c64333201c8c53766438fcce391a204008fc2e276ce5239daa4f34092855a61d338400117a5dd3cc99ae77a6ebd41c1d42aa7545b8f17a2afa06198', 'test@test.com', '2026-05-29 07:12:11', 22),
('782d3748059e72782e2c4298031b9c0e9222fec8c64a7ef0df5340b1216ef058c910f9e85f6ef0d0e0867cd0ee455e836e0547d33f522b3c00e39c87d790ec1b', 'test@test.com', '2026-05-29 07:14:31', 23),
('96353d1f16fe198178a4729ab9ac713c7f9004eb4d38c8bc038f52e08e3ddaddef7e25edbb23ea3d764a069b3daf100951235adfa7750d660defccfef83d5c7b', 'test@test.com', '2026-05-29 07:30:49', 24),
('071874e7e239e8c51f46a6f149d259434686b10bc50c1261af11aa0bfb785cc2a6714dbda1c5d9d38605789cf3a41279f9d6cfd3ac001c0fd54a484957069d90', 'test@test.com', '2026-05-29 07:33:19', 25),
('362cab6f4912633b07789dd1f2eff3f9b24d558fe4cee426ad947decfab504fa2e395ca52493941853555ffdc4081196833ef682d6b43340b392bfa4c625c259', 'test@test.com', '2026-05-29 07:39:05', 26),
('087915a1a353983ad9624aa3348c90f3ac49b715e46d20630a50f6dcbeb3e78c30a1efedc7a4ea3c51e45bb3002cfb76c1da45f840f6a51e3d1899f14eb9c224', 'test@test.com', '2026-05-29 07:41:01', 27),
('778a14f46adab43ab9557788c566676de9ce7b1c88fb2dcf628e2a0d8a459baf9703e9e2722cd0786f0199b80c28d3c38688a1d5d0fd67f44f471efe744718c1', 'test@test.com', '2026-05-29 11:21:35', 28),
('88e9d43606adc6d831060ba8dc27f2e2ac33ba8371dd6b015d61a9e5f802e8cca3b10443d57b0f804c3704aea864412d5f5607daa5b36bc504328321647185e8', 'test@test.com', '2026-05-29 08:12:52', 29),
('f76ca97803eadd997adc61a5cb8d4318f58caa5c3c7ac1cc98c88ca81baa68095f687d4874aeb7653c718cd1f510f9c1f0a1948cb74967e216ad0cdaad89c377', 'test@test.com', '2026-05-29 08:23:43', 30),
('c6359413cadcf87668a81653ca4a7a968cff071e8c992e606f41cc16bd600bb4df07fe4c1414cb80f7cdbf838b23fc9138a64823ba848a4093532bdc0276ae33', 'test@test.com', '2026-05-29 11:50:44', 31),
('0a7a37ac2ba535ddd860eae49cc63153c9f605ad0f696d321de7d3971f0bbc89b8189438820af8025911594b63e50d1b94c4fff64043afcdbaeccb80ac9f5ed5', 'test@test.com', '2026-05-29 12:08:18', 32),
('8afe2599448c22cde384fc3d13422e5bb7921dc78288d95cb49257c51b473b9c48042d769f3ddf8912c78dc919d0c699e6a075f980f315602d896d4acfaf485d', 'test@test.com', '2026-05-29 13:33:16', 33),
('dd7e42dafaa55d7e116cb45cc343e7f05bcc3624202779723351e3e6df093f37e65774ad066e0111380cc6b9e1ff85813d9593630716e9e83de3fad7bde8a56e', 'test@test.com', '2026-05-29 13:52:18', 34),
('f5ca0e45691beeb3e45202a47b906c0bf247e9f4190654ea5a92383bd764de4e522f6c7e3c7a200118ac3e2664302aab537b2a8be7388b418d34e733d0209e62', 'test@test.com', '2026-05-29 16:56:26', 35),
('7011c6575f53aaff0887287615ea414197c2c618ba277a4804393ef663ee46892c0be991af33992736792145d9678dc6f0f3db1d0913d251e73ab69cae5b3c9a', 'test@test.com', '2026-05-30 07:33:37', 36),
('3f0b9c06d5e0a5acf2607686fe8f03bb54cd257d7f8937b511d7c4850a9a4b6ea53cfbb94614e63f4d9793843507429f6b9d3acc4b68c57cef6117cb1b28cf46', 'test@test.com', '2026-05-30 12:19:56', 37),
('73e956a03d2b625263de6197b00b10296e2273608d766fee0badd1feef2a8f799257027743a1affc022cb9e6c1df23bcea39836e8186172accd88685f1ade063', 'test@test.com', '2026-05-30 13:55:01', 38),
('e61ead3f9dac1581d1ce79f6b28e094a975eb4efb86b3f95130591e866cd7921ddc9bd18beb8f64187c3a425a385adef518c3df0c18a3cdbd6b526a28ad58abd', 'test@test.com', '2026-05-30 12:55:32', 39),
('73c9dc037f6bc5b53a4abe183a3da99c80598d08b34c177750672efb6c8fc5457ef5e5ca033eeb73726c0da94490ec258be09a4f31a90d25ccc901bcae18b944', 'test@test.com', '2026-05-30 12:55:47', 40);

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
(1, 'Carrefour', NULL, '2026-04-27 11:27:40', '2026-04-27 11:27:40'),
(2, 'Leclerc', NULL, '2026-04-27 11:27:40', '2026-04-27 11:27:40'),
(3, 'Intermarché', NULL, '2026-04-27 11:27:40', '2026-04-27 11:27:40');

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
  `user_name` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `profile_picture` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_IDENTIFIER_EMAIL` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `first_name`, `last_name`, `user_name`, `created_at`, `updated_at`, `date_of_birth`, `profile_picture`) VALUES
(37, 'test@test.com', '[\"ROLE_USER\"]', '$2y$13$5Scqwa9E7SrKzoFW61cLoeWefuSGlO0wBmIq5NLxXaPDUOjuEVJy2', 'Yves', 'Lemée', 'FromagePower', '2026-04-23 13:33:43', '2026-04-23 13:33:43', '1979-03-22', ''),
(38, 'test2@test.com', '[\"ROLE_USER\"]', '$2y$13$5Scqwa9E7SrKzoFW61cLoeWefuSGlO0wBmIq5NLxXaPDUOjuEVJy2', 'Test', 'User', 'PatesSansLimite', '2026-04-23 13:33:43', '2026-04-23 13:33:43', '1979-03-22', 'https://artr2.pixilart.com/cfr2fe3aa94559aws3.png'),
(39, 'test3@test.com', '[\"ROLE_USER\"]', '$2y$13$5Scqwa9E7SrKzoFW61cLoeWefuSGlO0wBmIq5NLxXaPDUOjuEVJy2', 'Test', 'User', 'Mon pseudo', '2026-04-23 13:33:43', '2026-04-23 13:33:43', '1979-03-22', 'https://artr2.pixilart.com/cfr2fe3aa94559aws3.png'),
(40, 'test4@test.com', '[\"ROLE_USER\"]', '$2y$13$5Scqwa9E7SrKzoFW61cLoeWefuSGlO0wBmIq5NLxXaPDUOjuEVJy2', 'Test', 'User', 'Mon pseudo', '2026-04-23 13:33:43', '2026-04-23 13:33:43', '1979-03-22', 'https://artr2.pixilart.com/cfr2fe3aa94559aws3.png');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
