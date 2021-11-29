-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : Dim 19 sep. 2021 à 17:26
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `tp-mise_en_route`
--

-- --------------------------------------------------------

--
-- Structure de la table `bateau`
--

DROP TABLE IF EXISTS `bateau`;
CREATE TABLE IF NOT EXISTS `bateau` (
  `bateauID` int(50) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `heure` time NOT NULL,
  `latitude` float NOT NULL,
  `longitude` float NOT NULL,
  `vitesse` int(100) NOT NULL,
  `vitesmoy` float NOT NULL,
  PRIMARY KEY (`bateauID`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `bateau`
--

INSERT INTO `bateau` (`bateauID`, `date`, `heure`, `latitude`, `longitude`, `vitesse`, `vitesmoy`) VALUES
(3, '2010-10-10', '10:10:10', -23.1682, 24.5929, 30, 24.6),
(4, '2015-11-21', '11:03:59', -18.4555, 29.7468, 34, 23.4),
(5, '2024-05-11', '23:12:04', 20.2158, -24.2158, 36, 27.8),
(6, '2056-12-14', '03:21:50', 15.6594, -12.2548, 29, 23.2),
(7, '2077-06-07', '08:10:02', -1.0254, 1.9521, 31, 22.1);

-- --------------------------------------------------------

--
-- Structure de la table `gps`
--

DROP TABLE IF EXISTS `gps`;
CREATE TABLE IF NOT EXISTS `gps` (
  `BateauID` int(50) NOT NULL AUTO_INCREMENT,
  `Date` date NOT NULL,
  `Heure` time NOT NULL,
  `Latitude` varchar(100) NOT NULL,
  `Longitude` varchar(100) NOT NULL,
  PRIMARY KEY (`BateauID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(50) CHARACTER SET utf8 NOT NULL,
  `mdp` varchar(50) CHARACTER SET utf8 NOT NULL,
  `admin` tinyint(1) NOT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`userID`, `login`, `mdp`, `admin`) VALUES
(3, 'Michel', '123', 1),
(5, 'Gérard', '456', 1),
(7, 'Yann', '147', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
