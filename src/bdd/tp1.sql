-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : dim. 12 sep. 2021 à 14:00
-- Version du serveur : 10.3.29-MariaDB-0+deb10u1
-- Version de PHP : 7.3.29-1~deb10u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `tp1`
--

-- --------------------------------------------------------

--
-- Structure de la table `bateau`
--

CREATE TABLE `bateau` (
  `BateauID` int(50) NOT NULL,
  `Date` date NOT NULL,
  `Heure` time NOT NULL,
  `Vitesse` int(100) NOT NULL,
  `Vitesmoy` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `gps`
--

CREATE TABLE `gps` (
  `BateauID` int(50) NOT NULL,
  `Date` date NOT NULL,
  `Heure` time NOT NULL,
  `Latitude` varchar(100) NOT NULL,
  `Longitude` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `Pseudo` varchar(50) NOT NULL,
  `Mdp` varchar(50) NOT NULL,
  `Admin` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `bateau`
--
ALTER TABLE `bateau`
  ADD PRIMARY KEY (`BateauID`);

--
-- Index pour la table `gps`
--
ALTER TABLE `gps`
  ADD PRIMARY KEY (`BateauID`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `bateau`
--
ALTER TABLE `bateau`
  MODIFY `BateauID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `gps`
--
ALTER TABLE `gps`
  MODIFY `BateauID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
