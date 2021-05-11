-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 20 mars 2021 à 23:35
-- Version du serveur :  10.4.17-MariaDB
-- Version de PHP : 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `rapc`
--

-- --------------------------------------------------------

--
-- Structure de la table `cas`
--

CREATE TABLE `cas` (
  `ID_Cas` int(11) NOT NULL,
  `ID_Description` int(11) NOT NULL,
  `ID_Traitement` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `cas`
--

INSERT INTO `cas` (`ID_Cas`, `ID_Description`, `ID_Traitement`) VALUES
(8, 17, 9),
(9, 18, 10),
(10, 19, 11),
(11, 20, 12),
(12, 21, 13);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `cas`
--
ALTER TABLE `cas`
  ADD PRIMARY KEY (`ID_Cas`),
  ADD KEY `ID_Description` (`ID_Description`),
  ADD KEY `ID_Traitement` (`ID_Traitement`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `cas`
--
ALTER TABLE `cas`
  MODIFY `ID_Cas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `cas`
--
ALTER TABLE `cas`
  ADD CONSTRAINT `ct1` FOREIGN KEY (`ID_Description`) REFERENCES `description` (`ID_Description`),
  ADD CONSTRAINT `ct2` FOREIGN KEY (`ID_Traitement`) REFERENCES `traitements` (`ID_Traitement`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
