-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : Dim 21 mars 2021 à 19:30
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
(12, 21, 13),
(13, 26, 14),
(14, 27, 15),
(15, 28, 16),
(16, 29, 17),
(17, 30, 18),
(18, 31, 19);

-- --------------------------------------------------------

--
-- Structure de la table `description`
--

CREATE TABLE `description` (
  `ID_Description` int(11) NOT NULL,
  `Age` int(11) NOT NULL,
  `Poids` float NOT NULL,
  `Sexe` varchar(20) NOT NULL,
  `Temperature` float NOT NULL,
  `Toux` tinyint(1) NOT NULL,
  `MalDeTete` tinyint(1) NOT NULL,
  `MalDeGorge` tinyint(1) NOT NULL,
  `MalDeVentre` tinyint(1) NOT NULL,
  `NomMaladie` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `description`
--

INSERT INTO `description` (`ID_Description`, `Age`, `Poids`, `Sexe`, `Temperature`, `Toux`, `MalDeTete`, `MalDeGorge`, `MalDeVentre`, `NomMaladie`) VALUES
(17, 80, 70, 'Homme', 40, 1, 1, 1, 0, 'Angine'),
(18, 25, 80, 'Homme', 39, 1, 1, 1, 1, 'Grippe'),
(19, 40, 64, 'Femme', 39.5, 1, 0, 0, 1, 'Rhume'),
(20, 50, 95, 'Femme', 40, 0, 0, 0, 1, 'Crohn'),
(21, 12, 36, 'Femme', 39.5, 0, 1, 1, 0, 'Corona'),
(26, 62, 65, 'Homme', 40, 1, 1, 1, 1, 'Covid19'),
(27, 39, 63, 'Femme', 37, 1, 1, 0, 0, 'Asthme'),
(28, 20, 74, 'Homme', 38.6, 1, 1, 1, 1, 'Covid19'),
(29, 30, 60, 'Homme', 40, 1, 1, 0, 0, 'Grippe'),
(30, 22, 76, 'Homme', 42, 0, 0, 0, 0, 'Covid19'),
(31, 21, 80, 'Homme', 37, 0, 0, 0, 0, 'Covid19');

-- --------------------------------------------------------

--
-- Structure de la table `traitements`
--

CREATE TABLE `traitements` (
  `ID_Traitement` int(11) NOT NULL,
  `Med1` varchar(256) NOT NULL,
  `AgeMin1` int(11) NOT NULL DEFAULT 0,
  `Dur1` int(11) NOT NULL,
  `Quant1` float NOT NULL,
  `Freq1` int(11) NOT NULL,
  `Med2` varchar(256) DEFAULT NULL,
  `AgeMin2` int(11) NOT NULL DEFAULT 0,
  `Dur2` int(11) DEFAULT NULL,
  `Quant2` float DEFAULT NULL,
  `Freq2` int(11) DEFAULT NULL,
  `Med3` varchar(256) DEFAULT NULL,
  `AgeMin3` int(11) NOT NULL DEFAULT 0,
  `Dur3` int(11) DEFAULT NULL,
  `Quant3` float DEFAULT NULL,
  `Freq3` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `traitements`
--

INSERT INTO `traitements` (`ID_Traitement`, `Med1`, `AgeMin1`, `Dur1`, `Quant1`, `Freq1`, `Med2`, `AgeMin2`, `Dur2`, `Quant2`, `Freq2`, `Med3`, `AgeMin3`, `Dur3`, `Quant3`, `Freq3`) VALUES
(9, 'Amoxicilline', 0, 7, 500, 3, 'Doliprane', 0, 4, 750, 4, NULL, 0, NULL, NULL, NULL),
(10, 'Paracétamol', 0, 7, 500, 3, 'Spasfon', 0, 5, 200, 3, 'Rhinathiol', 0, 10, 200, 3),
(11, 'Aspirine', 0, 6, 200, 2, 'Spasfon', 0, 5, 500, 3, NULL, 0, NULL, NULL, NULL),
(12, 'Météoxane', 0, 10, 200, 3, 'Gaviscon', 0, 10, 250, 2, NULL, 0, NULL, NULL, NULL),
(13, 'Maxilase', 0, 10, 125, 3, 'Strepsils', 0, 7, 100, 4, 'Phytotux', 0, 5, 100, 4),
(14, 'Vitamine C', 0, 15, 500, 3, 'Hydroxychloroquine', 18, 10, 200, 2, NULL, 0, NULL, NULL, NULL),
(15, 'Acorspray', 6, 30, 150, 2, 'Miflasone', 12, 30, 250, 3, 'Qvar', 40, 60, 250, 1),
(16, 'Vitamine', 0, 15, 500, 3, 'Hydroxychloroquine', 20, 10, 100, 1, NULL, 0, NULL, NULL, NULL),
(17, 'Paracétamol', 0, 4, 200, 3, 'Rhumex', 12, 7, 100, 2, NULL, 0, NULL, NULL, NULL),
(18, 'Vitamine C', 0, 15, 500, 3, 'Hydroxychloroquine', 20, 10, 100, 1, 'Vitamine D', 6, 10, 100, 5),
(19, 'VitamineC', 0, 15, 500, 3, 'Hydroxychloroquine', 20, 10, 100, 1, 'VitamineD', 6, 10, 100, 5);

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
-- Index pour la table `description`
--
ALTER TABLE `description`
  ADD PRIMARY KEY (`ID_Description`);

--
-- Index pour la table `traitements`
--
ALTER TABLE `traitements`
  ADD PRIMARY KEY (`ID_Traitement`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `cas`
--
ALTER TABLE `cas`
  MODIFY `ID_Cas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `description`
--
ALTER TABLE `description`
  MODIFY `ID_Description` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT pour la table `traitements`
--
ALTER TABLE `traitements`
  MODIFY `ID_Traitement` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

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
