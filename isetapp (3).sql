-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  Dim 03 mars 2019 à 17:20
-- Version du serveur :  5.7.17
-- Version de PHP :  5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `isetapp`
--

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `idCategorie` int(11) NOT NULL,
  `nom` varchar(40) CHARACTER SET utf8 NOT NULL,
  `descripition` text NOT NULL,
  `image` varchar(30) NOT NULL,
  `dateCreation` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`idCategorie`, `nom`, `descripition`, `image`, `dateCreation`) VALUES
(1, 'Fourniture', 'les matÃ©riel nÃ©cessaire de bureau de l\'employeur', 'cat1.png', '2019-01-30 00:00:00'),
(2, 'Immobilier et services', 'dans cette catÃ©gorie on trouvÃ© tous ce qui est a relation a la eau ,electricite etc', 'cat2.jpg', '2019-01-30 00:00:00'),
(3, 'telecommunicatioon', ' ont trouve le rÃ©seau internet  ,    rÃ©seau tÃ©lÃ©phonique..', 'imag2.png', '2019-01-30 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `condidature`
--

CREATE TABLE `condidature` (
  `idCondidature` int(11) NOT NULL,
  `nom` varchar(20) NOT NULL,
  `prenom` varchar(10) NOT NULL,
  `dateNaissance` date NOT NULL,
  `lieuNaissance` varchar(10) NOT NULL,
  `mail` varchar(30) NOT NULL,
  `cin` int(8) NOT NULL,
  `tele` int(8) NOT NULL,
  `ville` varchar(10) NOT NULL,
  `codePostal` int(4) NOT NULL,
  `adresse` varchar(20) NOT NULL,
  `niveau` varchar(10) NOT NULL,
  `diplome` varchar(20) NOT NULL,
  `dateDiplome` date NOT NULL,
  `etabFormation` varchar(20) NOT NULL,
  `nbrAnneExperience` int(2) NOT NULL,
  `autreDiplome` text NOT NULL,
  `cv` varchar(30) NOT NULL,
  `lettreMotivation` varchar(30) NOT NULL,
  `idUtilisateur` int(11) NOT NULL,
  `idOffre` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `condidature`
--

INSERT INTO `condidature` (`idCondidature`, `nom`, `prenom`, `dateNaissance`, `lieuNaissance`, `mail`, `cin`, `tele`, `ville`, `codePostal`, `adresse`, `niveau`, `diplome`, `dateDiplome`, `etabFormation`, `nbrAnneExperience`, `autreDiplome`, `cv`, `lettreMotivation`, `idUtilisateur`, `idOffre`) VALUES
(16, 'ben tamansourt', 'amina', '1998-05-12', 'bizerte', 'aminabentamansourt@gmail.com', 13483291, 95337803, 'djerba', 4182, 'srandi', 'bac +2', 'dev web', '2019-01-31', 'isetjb', 0, '', 'cv/compte.pdf', 'lettre motivation/interface.pd', 3, 25);

-- --------------------------------------------------------

--
-- Structure de la table `credit`
--

CREATE TABLE `credit` (
  `idCredit` int(11) NOT NULL,
  `type` varchar(10) NOT NULL,
  `montant` float(12,3) NOT NULL,
  `date` date NOT NULL,
  `idOrganisme` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `credit`
--

INSERT INTO `credit` (`idCredit`, `type`, `montant`, `date`, `idOrganisme`) VALUES
(1, 'especes', 500.000, '2019-02-22', 14),
(2, 'especes', 600.000, '2019-02-22', 13),
(3, 'especes', 600.000, '2019-02-22', 16),
(4, 'especes', 0.000, '2019-03-01', 14);

-- --------------------------------------------------------

--
-- Structure de la table `debit`
--

CREATE TABLE `debit` (
  `idDebit` int(11) NOT NULL,
  `type` varchar(10) NOT NULL,
  `montant` float NOT NULL,
  `date` datetime NOT NULL,
  `idFacture` int(11) NOT NULL,
  `admin` varchar(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `debit`
--

INSERT INTO `debit` (`idDebit`, `type`, `montant`, `date`, `idFacture`, `admin`) VALUES
(1, 'especes', 50, '2019-02-22 14:16:48', 3, 'oumeima'),
(2, 'especes', 20, '2019-03-01 01:50:11', 4, 'Bessam'),
(3, 'especes', 150.25, '2019-03-01 10:41:55', 1, 'Bessam');

-- --------------------------------------------------------

--
-- Structure de la table `facture`
--

CREATE TABLE `facture` (
  `idFacture` int(11) NOT NULL,
  `date` date NOT NULL,
  `montant` float NOT NULL,
  `imgFacture` varchar(100) NOT NULL,
  `idSousCat` int(11) NOT NULL,
  `idOrganisme` int(11) NOT NULL,
  `etat` int(10) NOT NULL,
  `dateDelai` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `facture`
--

INSERT INTO `facture` (`idFacture`, `date`, `montant`, `imgFacture`, `idSousCat`, `idOrganisme`, `etat`, `dateDelai`) VALUES
(1, '2019-02-01', 150.25, 'aaSTEG.jpg', 4, 16, 1, '2019-02-16'),
(3, '2019-02-22', 50, 'facture.jpg', 1, 13, 1, '2019-02-22'),
(5, '2019-03-05', 2000, 'tÃ©lÃ©chargement (1).jpg', 3, 16, 0, '2019-03-06'),
(6, '2019-03-01', 50, 'tÃ©lÃ©chargement (1).jpg', 3, 13, 0, '2019-03-02');

-- --------------------------------------------------------

--
-- Structure de la table `historique`
--

CREATE TABLE `historique` (
  `idH` int(11) NOT NULL,
  `type` varchar(10) NOT NULL,
  `montant` float NOT NULL,
  `date` datetime NOT NULL,
  `idCredit` int(11) NOT NULL,
  `admin` varchar(30) NOT NULL,
  `typeOp` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `historique`
--

INSERT INTO `historique` (`idH`, `type`, `montant`, `date`, `idCredit`, `admin`, `typeOp`) VALUES
(1, 'especes', 500, '2019-02-22 14:14:21', 1, 'khaireddine', 'Ajouter'),
(2, 'especes', 600, '2019-02-22 14:14:42', 2, 'Bessam', 'Ajouter'),
(3, 'especes', 600, '2019-02-22 14:15:02', 3, 'oumeima', 'Ajouter'),
(4, 'especes', 10, '2019-03-01 01:47:24', 4, 'Bessam', 'Ajouter'),
(5, 'especes', 0, '2019-03-01 02:03:30', 4, 'Bessam', 'Modifier'),
(6, 'especes', 0, '2019-03-01 02:03:40', 4, 'Bessam', 'Modifier'),
(7, 'especes', 500, '2019-03-01 02:04:55', 1, 'Bessam', 'Modifier'),
(8, 'especes', 500, '2019-03-01 02:05:07', 1, 'Bessam', 'Modifier');

-- --------------------------------------------------------

--
-- Structure de la table `offre`
--

CREATE TABLE `offre` (
  `idOffre` int(11) NOT NULL,
  `titrePoste` varchar(30) CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL,
  `type` varchar(10) CHARACTER SET utf8 NOT NULL,
  `image` varchar(50) CHARACTER SET utf8 NOT NULL,
  `dateOffre` date NOT NULL,
  `dateDelais` date NOT NULL,
  `idUtilisateur` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `offre`
--

INSERT INTO `offre` (`idOffre`, `titrePoste`, `description`, `type`, `image`, `dateOffre`, `dateDelais`, `idUtilisateur`) VALUES
(25, 'Developpeur Web', 'Vous Ãªtes un passionnÃ© par le web et les nouvelles technologies, vous recherchez des projets\r\ninnovants et Ã  sensations fortes.\r\nVous avez des qualitÃ©s intrinsÃ¨ques de rigueur, dâ€™initiative, du sens de travail en Ã©quipe et du\r\npotentiel Ã©volutif.', 'emploi', 'promo347677522.jpeg', '2019-01-30', '2019-02-14', 1),
(24, 'PFE DEVELOPPEUR INFORMATIQUE N', 'dans une sociÃ©tÃ© Ã©ditrice de logiciel vous serez en charge de l\'etude, recherche et dÃ©veloppement selon un cahier des charges et spec fonctionnelle dÃ©taillÃ© ', 'stage', 'node-react.jpeg', '2019-01-30', '2019-02-02', 1),
(26, 'Graphiste  Infographiste Desig', 'De formation graphisme, infographie ou web design ou Ã©quivalent\r\nVous avez une parfaite maÃ®trise des outils :Adobe Indesign, Illustrator et Photoshop, Flashâ€¦\r\nVous savez produire des visuels Marketing forts et de qualitÃ©\r\net vous Ã©prouvez un intÃ©rÃªt pour la photo et la production audiovisuelle\r\nLa maÃ®trise dâ€™une langue internationale est souhaitÃ©e (FranÃ§ais ou anglais)', 'emploi', 'web-designing.jpg', '2019-01-30', '2019-02-28', 1),
(23, 'Developpeur Full Stack ', 'Vous etes etudiant(e) en master informatique ou Ã©cole dâ€™ingÃ©nieur informatique en 4Ã¨me/5Ã¨me annÃ©e ayant dÃ©jÃ  avec\r\nâ€¢ De bonnes compÃ©tences avec ES6 et Node.js\r\nâ€¢ CompÃ©tences avec un framework front-end (React/React-Native de prÃ©fÃ©rence)\r\nâ€¢ Avoir travaillÃ© sur des projets mis en production et maintenu.- ExpÃ©riences avec une base de donnÃ©es relationnelle (PostgreSQL ou MySQL).\r\nâ€¢ ExpÃ©riences avec AWS\r\nâ€¢ TrÃ¨s bon(ne) communicant(e) et team player.', 'stage', 'the-full-stack-web-development-1-638.jpg', '2019-01-30', '2019-02-28', 1);

-- --------------------------------------------------------

--
-- Structure de la table `organisme`
--

CREATE TABLE `organisme` (
  `idOrganisme` int(11) NOT NULL,
  `nom` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `organisme`
--

INSERT INTO `organisme` (`idOrganisme`, `nom`) VALUES
(12, 'G.N.R.-F'),
(14, 'ATB'),
(13, 'STEG'),
(16, 'SONEDE'),
(21, 'Banque');

-- --------------------------------------------------------

--
-- Structure de la table `souscategorie`
--

CREATE TABLE `souscategorie` (
  `idSousCat` int(11) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `image` varchar(30) NOT NULL,
  `dateCreation` date NOT NULL,
  `idCategorie` int(11) NOT NULL,
  `statut` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `souscategorie`
--

INSERT INTO `souscategorie` (`idSousCat`, `nom`, `image`, `dateCreation`, `idCategorie`, `statut`) VALUES
(1, 'fourniture de bureau', 'souscat.jpg', '2019-01-30', 1, 0),
(2, 'imprimes', 'imag1.jpg', '2019-01-30', 1, 0),
(3, 'energie', 'electricitÃ©.jpg', '2019-01-30', 2, 0),
(4, 'eau', 'eau.jpg', '2019-01-30', 2, 0),
(13, 'internet', 'images5.jpg', '2019-02-22', 3, 0),
(12, 'internet', 'images5', '2019-01-07', 3, 1);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `idUtilisateur` int(11) NOT NULL,
  `nom` varchar(20) NOT NULL,
  `prenom` varchar(20) NOT NULL,
  `mail` varchar(30) NOT NULL,
  `motDePasse` varchar(20) NOT NULL,
  `dateCreation` date NOT NULL,
  `type` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`idUtilisateur`, `nom`, `prenom`, `mail`, `motDePasse`, `dateCreation`, `type`) VALUES
(1, 'khaireddine', 'Bouras', 'khaireddine.BND@gmail.com', 'BND', '2019-01-14', 'admin'),
(2, 'Bessam', ' BEN YAHYA', 'bessam.BND@gmail.com', 'BND', '2019-02-14', 'admin'),
(3, ' oumeima ', 'lamineamri', ' oumeima.BND@gmail.com', 'BND', '2019-01-07', 'admin');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`idCategorie`);

--
-- Index pour la table `condidature`
--
ALTER TABLE `condidature`
  ADD PRIMARY KEY (`idCondidature`);

--
-- Index pour la table `credit`
--
ALTER TABLE `credit`
  ADD PRIMARY KEY (`idCredit`);

--
-- Index pour la table `debit`
--
ALTER TABLE `debit`
  ADD PRIMARY KEY (`idDebit`);

--
-- Index pour la table `facture`
--
ALTER TABLE `facture`
  ADD PRIMARY KEY (`idFacture`);

--
-- Index pour la table `historique`
--
ALTER TABLE `historique`
  ADD PRIMARY KEY (`idH`);

--
-- Index pour la table `offre`
--
ALTER TABLE `offre`
  ADD PRIMARY KEY (`idOffre`);

--
-- Index pour la table `organisme`
--
ALTER TABLE `organisme`
  ADD PRIMARY KEY (`idOrganisme`);

--
-- Index pour la table `souscategorie`
--
ALTER TABLE `souscategorie`
  ADD PRIMARY KEY (`idSousCat`),
  ADD KEY `idCategorie` (`idCategorie`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`idUtilisateur`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `idCategorie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `condidature`
--
ALTER TABLE `condidature`
  MODIFY `idCondidature` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT pour la table `credit`
--
ALTER TABLE `credit`
  MODIFY `idCredit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `debit`
--
ALTER TABLE `debit`
  MODIFY `idDebit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `facture`
--
ALTER TABLE `facture`
  MODIFY `idFacture` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `historique`
--
ALTER TABLE `historique`
  MODIFY `idH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `offre`
--
ALTER TABLE `offre`
  MODIFY `idOffre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT pour la table `organisme`
--
ALTER TABLE `organisme`
  MODIFY `idOrganisme` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT pour la table `souscategorie`
--
ALTER TABLE `souscategorie`
  MODIFY `idSousCat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `idUtilisateur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
