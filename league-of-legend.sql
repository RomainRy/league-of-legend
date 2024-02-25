-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : dim. 25 fév. 2024 à 16:36
-- Version du serveur : 8.0.30
-- Version de PHP : 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `league-of-legend`
--

-- --------------------------------------------------------

--
-- Structure de la table `champion`
--

CREATE TABLE `champion` (
  `id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `champion`
--

INSERT INTO `champion` (`id`, `name`, `type`, `createdAt`, `updatedAt`) VALUES
(13, 'Alistar', 'support', '2024-02-25 14:13:18.146', '2024-02-25 16:31:27.113'),
(14, 'Ivern', 'support', '2024-02-25 14:13:18.146', '2024-02-25 16:08:33.792'),
(65, 'Blitzcrank', 'Tank', '2024-02-25 14:39:44.817', '2024-02-25 14:39:44.817'),
(67, 'Ahri', 'Mage', '2024-02-25 14:41:18.535', '2024-02-25 14:41:18.535'),
(68, 'Elise', 'Mage', '2024-02-25 14:41:37.378', '2024-02-25 14:41:37.378'),
(69, 'Kalista', 'marksmen', '2024-02-25 15:42:16.517', '2024-02-25 15:42:16.517'),
(70, 'Viego', 'fighter', '2024-02-25 15:42:16.517', '2024-02-25 15:42:16.517'),
(71, 'Lee Sin', 'fighter', '2024-02-25 15:42:16.517', '2024-02-25 15:42:16.517'),
(72, 'Alistar', 'support', '2024-02-25 15:42:16.517', '2024-02-25 15:42:16.517'),
(73, 'Ivern', 'support', '2024-02-25 15:42:16.517', '2024-02-25 15:42:16.517'),
(74, 'Gnar', 'tank', '2024-02-25 15:42:16.517', '2024-02-25 15:42:16.517'),
(75, 'Briar', 'assassin', '2024-02-25 15:42:16.517', '2024-02-25 15:42:16.517'),
(76, 'Aatrox', 'tank', '2024-02-25 15:42:16.517', '2024-02-25 15:42:16.517'),
(77, 'Ahri', 'assassin', '2024-02-25 15:42:16.517', '2024-02-25 15:42:16.517'),
(78, 'Lilia', 'fighter', '2024-02-25 15:42:16.517', '2024-02-25 15:42:16.517'),
(79, 'Jax', 'fighter', '2024-02-25 15:42:16.517', '2024-02-25 15:42:16.517'),
(80, 'Kennen', 'mage', '2024-02-25 15:42:16.517', '2024-02-25 15:42:16.517'),
(81, 'Leblanc', 'mage', '2024-02-25 15:42:16.517', '2024-02-25 15:42:16.517'),
(82, 'Ezreal', 'marksmen', '2024-02-25 15:42:16.517', '2024-02-25 15:42:16.517'),
(83, 'Vayne', 'marksmen', '2024-02-25 15:42:16.517', '2024-02-25 15:42:16.517'),
(84, 'Zed', 'assassin', '2024-02-25 15:42:16.517', '2024-02-25 15:42:16.517'),
(85, 'Jarvan IV', 'tank', '2024-02-25 15:42:16.517', '2024-02-25 15:42:16.517'),
(86, 'Kayn', 'assassin', '2024-02-25 15:42:16.517', '2024-02-25 15:42:16.517'),
(87, 'Sett', 'fighter', '2024-02-25 15:42:16.517', '2024-02-25 15:42:16.517'),
(88, 'Swain', 'tank', '2024-02-25 15:42:16.517', '2024-02-25 15:42:16.517'),
(89, 'Draven', 'marksmen', '2024-02-25 15:42:16.517', '2024-02-25 15:42:16.517'),
(90, 'Bard', 'Support', '2024-02-25 14:42:38.212', '2024-02-25 14:42:38.212'),
(91, 'Ahri', 'Mage', '2024-02-25 14:43:15.375', '2024-02-25 14:43:15.375'),
(92, 'Aurelion Sol', 'Mage', '2024-02-25 14:44:28.612', '2024-02-25 14:44:28.612'),
(93, 'Cassiopeia', 'Mage', '2024-02-25 14:45:51.389', '2024-02-25 14:45:51.389'),
(94, 'Ahri', 'Mage', '2024-02-25 14:46:31.548', '2024-02-25 14:46:31.548'),
(97, 'Aatrox', 'Fighter', '2024-02-25 14:52:51.347', '2024-02-25 14:52:51.347'),
(98, 'Ahri', 'Mage', '2024-02-25 14:52:55.312', '2024-02-25 14:52:55.312'),
(99, 'Amumu', 'Tank', '2024-02-25 15:17:59.793', '2024-02-25 15:17:59.793'),
(100, 'Brand', 'Mage', '2024-02-25 15:18:06.917', '2024-02-25 15:18:06.917'),
(101, 'Chogath', 'Tank', '2024-02-25 16:09:35.331', '2024-02-25 16:09:35.331'),
(102, 'Kalista', 'marksmen', '2024-02-25 17:16:48.217', '2024-02-25 17:16:48.217'),
(103, 'Viego', 'fighter', '2024-02-25 17:16:48.217', '2024-02-25 17:16:48.217'),
(104, 'Lee Sin', 'fighter', '2024-02-25 17:16:48.217', '2024-02-25 17:16:48.217'),
(105, 'Alistar', 'support', '2024-02-25 17:16:48.217', '2024-02-25 17:16:48.217'),
(106, 'Ivern', 'support', '2024-02-25 17:16:48.217', '2024-02-25 17:16:48.217'),
(107, 'Gnar', 'tank', '2024-02-25 17:16:48.217', '2024-02-25 17:16:48.217'),
(108, 'Briar', 'assassin', '2024-02-25 17:16:48.217', '2024-02-25 17:16:48.217'),
(109, 'Aatrox', 'tank', '2024-02-25 17:16:48.217', '2024-02-25 17:16:48.217'),
(110, 'Ahri', 'assassin', '2024-02-25 17:16:48.217', '2024-02-25 17:16:48.217'),
(111, 'Lilia', 'fighter', '2024-02-25 17:16:48.217', '2024-02-25 17:16:48.217'),
(112, 'Jax', 'fighter', '2024-02-25 17:16:48.217', '2024-02-25 17:16:48.217'),
(113, 'Kennen', 'mage', '2024-02-25 17:16:48.217', '2024-02-25 17:16:48.217'),
(114, 'Leblanc', 'mage', '2024-02-25 17:16:48.217', '2024-02-25 17:16:48.217'),
(115, 'Ezreal', 'marksmen', '2024-02-25 17:16:48.217', '2024-02-25 17:16:48.217'),
(116, 'Vayne', 'marksmen', '2024-02-25 17:16:48.217', '2024-02-25 17:16:48.217'),
(117, 'Zed', 'assassin', '2024-02-25 17:16:48.217', '2024-02-25 17:16:48.217'),
(118, 'Jarvan IV', 'tank', '2024-02-25 17:16:48.217', '2024-02-25 17:16:48.217'),
(119, 'Kayn', 'assassin', '2024-02-25 17:16:48.217', '2024-02-25 17:16:48.217'),
(120, 'Sett', 'fighter', '2024-02-25 17:16:48.217', '2024-02-25 17:16:48.217'),
(121, 'Swain', 'tank', '2024-02-25 17:16:48.217', '2024-02-25 17:16:48.217'),
(122, 'Draven', 'marksmen', '2024-02-25 17:16:48.217', '2024-02-25 17:16:48.217');

-- --------------------------------------------------------

--
-- Structure de la table `_prisma_migrations`
--

CREATE TABLE `_prisma_migrations` (
  `id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checksum` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `finished_at` datetime(3) DEFAULT NULL,
  `migration_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logs` text COLLATE utf8mb4_unicode_ci,
  `rolled_back_at` datetime(3) DEFAULT NULL,
  `started_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `applied_steps_count` int UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `_prisma_migrations`
--

INSERT INTO `_prisma_migrations` (`id`, `checksum`, `finished_at`, `migration_name`, `logs`, `rolled_back_at`, `started_at`, `applied_steps_count`) VALUES
('7d4c56b0-f7ac-4451-9224-a4ec0e1a3f53', 'cd10c09364f3758c2263429e8ccf13ed2bdebc067221b31bab3b420bcca9e8b0', '2024-02-25 13:13:10.711', '20240225131310_update_migration', NULL, NULL, '2024-02-25 13:13:10.697', 1),
('cfcf049c-0ebc-468f-8c08-8b340bd45731', '45bd9193a44f7293bcc89e1bb2194e25d5d68b41ef15923e77f67d52155e44e2', '2024-02-25 09:12:59.499', '20240225091259_create_champion', NULL, NULL, '2024-02-25 09:12:59.479', 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `champion`
--
ALTER TABLE `champion`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `_prisma_migrations`
--
ALTER TABLE `_prisma_migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `champion`
--
ALTER TABLE `champion`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
