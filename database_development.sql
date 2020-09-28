-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 28 sep. 2020 à 10:25
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP : 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `database_development`
--

-- --------------------------------------------------------

--
-- Structure de la table `loginlogs`
--

CREATE TABLE `loginlogs` (
  `id` int(11) NOT NULL,
  `user` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `loginlogs`
--

INSERT INTO `loginlogs` (`id`, `user`, `action`, `date`, `createdAt`, `updatedAt`) VALUES
(3, 'afif@gmail.com', 'login', '2020-12-12 20:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'user2@gmail.com', 'logout', '2020-12-12 21:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'user3@gmail.com', 'logout', '2020-12-23 12:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'user4@gmail.com', 'logout', '2020-12-24 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'user4@gmail.com', 'login', '2020-12-24 01:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'user5@gmail.com', 'logout', '2020-12-11 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'user6@gmail.com', 'logout', '2020-12-11 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'user7@gmail.com', 'logout', '2020-12-01 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'user8@gmail.com', 'login', '2020-09-27 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'user9@gmail.com', 'login', '2020-09-27 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `sequelizemeta`
--

CREATE TABLE `sequelizemeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sequelizemeta`
--

INSERT INTO `sequelizemeta` (`name`) VALUES
('20200925085934-create-login-logs.js');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `loginlogs`
--
ALTER TABLE `loginlogs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sequelizemeta`
--
ALTER TABLE `sequelizemeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `loginlogs`
--
ALTER TABLE `loginlogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
