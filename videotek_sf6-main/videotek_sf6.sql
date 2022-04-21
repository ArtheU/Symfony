-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : mar. 19 avr. 2022 à 12:34
-- Version du serveur : 5.7.33
-- Version de PHP : 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `videotek_sf6`
--
CREATE DATABASE IF NOT EXISTS `videotek_sf6` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `videotek_sf6`;

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `idClient` int(11) NOT NULL AUTO_INCREMENT,
  `nomClient` varchar(50) DEFAULT NULL,
  `prenomClient` varchar(50) DEFAULT NULL,
  `adresseClient` varchar(50) DEFAULT NULL,
  `cpClient` int(11) DEFAULT NULL,
  `villeClient` varchar(50) DEFAULT NULL,
  `loginClient` varchar(50) DEFAULT NULL,
  `pwdClient` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idClient`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id`, `nom_client`, `prenom_client`, `adresse_client`, `cp_client`, `ville_client`, `login_client`, `pwd_client`) VALUES
(1, 'Wilson', 'Dorothy', '363-7219 Ipsum Avenue', 57767, 'Edremit', 'HHU18GFB6VQ', 'WHN83XVE5AX'),
(2, 'Cruz', 'Amos ', '814-3138 A, Rd.', 832915, 'Kohima', 'ERL75WFD3HE', 'CVO42WPD3TD'),
(3, 'Hood', 'Victor', 'Ap #754-4533 Dignissim Ave', 531553, 'Miryang', 'YDO13MRO3HC', 'MBS26BZX4ZP'),
(4, 'Odom', 'Stacy', '702-3557 Orci Av.', 63892, 'Lelystad', 'NBG27NMK4SR', 'MNF89HXK5PR'),
(5, 'Mack', 'Darius', '622-9194 Justo Ave', 40712, 'Holyhead', 'QWI47RHX5IR', 'CQP92MSY3HV'),
(6, 'Aidan', 'Lamar', '36-7219 Ipsum Avenue', 57767, 'Edremit', 'HHU18GFB6VQ', 'WHN83XVE5AX'),
(7, 'Cadman', 'Erin', '814-3138 A, Rd.', 832915, 'Kohima', 'ERL75WFD3HE', 'CVO42WPD3TD'),
(8, 'Vernon', 'Victoria', 'Ap #754-4533 Dignissim Ave', 531553, 'Miryang', 'YDO13MRO3HC', 'MBS26BZX4ZP'),
(9, 'Ferdinand', 'Kellie', '702-3557 Orci Av.', 63892, 'Lelystad', 'NBG27NMK4SR', 'MNF89HXK5PR'),
(10, 'Fulton', 'Conan', '622-9195 Justo Ave', 40712, 'Holyhead', 'QWI47RHX5IR', 'CQP92MSY3HV'),
(11, 'Len', 'Felicia', '576-7595 Aenean Ave', 3153, 'Bergen Mons', 'WKE87ONP1MX', 'QSM40FNG7SP'),
(12, 'Brock', 'Basil', '893-4117 Nascetur St.', 2427, 'Mojokerto', 'TFQ42SQA1VH', 'GWL06EGT3CR'),
(13, 'Micah', 'Ali', 'Ap #450-7333 Lorem, St.', 763483, 'Täby', 'RZE35DNZ4XE', 'JAF20KGW9OV'),
(14, 'Cade', 'Jenette', 'P.O. Box 314, 2667 Dignissim Road', 52187, 'Bellante', 'XEF87DKV8GA', 'WDP58QXM2LT'),
(15, 'Coby', 'Amity', 'P.O. Box 943, 8976 Vivamus Street', 6249, 'Blumenau', 'LYS22PYH9CP', 'EAH60KLC9CH'),
(16, 'Adrian', 'Benedict', 'P.O. Box 538, 7419 Proin St.', 10177196, 'Chernivtsi', 'XNQ56VSI7OJ', 'BNL38BTL6WC'),
(17, 'Griffith', 'Zeus', 'P.O. Box 505, 4979 In, St.', 3438, 'Shangla', 'MLV75GLW3RS', 'PMJ08RLG6VQ'),
(18, 'Darius', 'Darrel', '731-4307 Id Avenue', 634116, 'Bridgend', 'WPQ88MDX5GC', 'WJK19VBB4SG'),
(19, 'Arsenio', 'Pamela', 'Ap #938-3598 Molestie Street', 233830, 'Tofield', 'DHR49LNW5MU', 'CXW18WAB9TU'),
(20, 'Maxwell', 'Brady', 'Ap #221-2653 Felis St.', 25844, 'Araban', 'QVP54EGC8EQ', 'MEF16RJN3PM');

-- --------------------------------------------------------

--
-- Structure de la table `film`
--

DROP TABLE IF EXISTS `film`;
CREATE TABLE IF NOT EXISTS `film` (
  `idFilm` int(11) NOT NULL AUTO_INCREMENT,
  `titreFilm` varchar(50) DEFAULT NULL,
  `idPersonne` int(11) NOT NULL,
  PRIMARY KEY (`idFilm`),
  KEY `idPersonne` (`idPersonne`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `film`
--

INSERT INTO `film` (`id`, `titre`, `realisateur_id`) VALUES
(1, 'Blade Runner (1982)', 1),
(2, 'Matrix (1999)', 6),
(3, '2001 : L\'Odyssée de l\'espace (1968)', 7),
(4, 'Interstellar (2014)', 8),
(5, 'Bienvenue à Gattaca (1997)', 10),
(6, 'OSS 117 - Le Caire, nid d\'espions (2006)', 19),
(7, 'The Big Lebowski (1998)', 18),
(8, 'Le Dîner de cons (1998)', 17),
(9, 'Astérix & Obélix - Mission Cléopâtre (2002)', 16),
(10, 'La Cité de la peur (1994)', 15),
(11, 'Monty Python - Sacré Graal ! (1975)', 14);

-- --------------------------------------------------------

--
-- Structure de la table `personne`
--

DROP TABLE IF EXISTS `personne`;
CREATE TABLE IF NOT EXISTS `personne` (
  `idPersonne` int(11) NOT NULL AUTO_INCREMENT,
  `nomPersonne` varchar(50) DEFAULT NULL,
  `PrenomPersonne` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idPersonne`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `personne`
--

INSERT INTO `personne` (`id`, `nom`, `prenom`) VALUES
(1, 'Scott', 'Ridley'),
(2, 'Ford', 'Harrison '),
(3, 'Weaver', 'Sigourney '),
(4, 'Dullea', 'Keir '),
(5, 'Reeves', 'Keanu '),
(6, 'Wachowski', ' Lilly '),
(7, 'Kubrick', 'Stanley'),
(8, 'Nolan', 'Christopher'),
(9, 'McConaughey', 'Matthew '),
(10, 'Niccol', ' Andrew'),
(11, 'Hawke', 'Ethan'),
(12, 'Thurman', 'Uma'),
(13, 'Law', 'Jude'),
(14, 'Gilliam', ' Terry'),
(15, 'Berbérian', ' Alain'),
(16, 'Chabat', 'Alain'),
(17, 'Veber', 'Francis'),
(18, 'Coen', 'Joel'),
(19, 'Hazanavicius', 'Michel');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `film`
--
ALTER TABLE `film`
  ADD CONSTRAINT `film_ibfk_1` FOREIGN KEY (`idPersonne`) REFERENCES `personne` (`idPersonne`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
