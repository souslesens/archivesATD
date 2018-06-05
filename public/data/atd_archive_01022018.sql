-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Jeu 01 Février 2018 à 15:15
-- Version du serveur :  10.2.9-MariaDB-10.2.9+maria~stretch-log
-- Version de PHP :  7.0.27-0+deb9u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `atd_archive`
--

-- --------------------------------------------------------

--
-- Structure de la table `aa_r_cause_non_diff`
--

DROP TABLE IF EXISTS `aa_r_cause_non_diff`;
CREATE TABLE `aa_r_cause_non_diff` (
  `cnondiff_id` int(11) NOT NULL,
  `typ_ref_id` int(11) DEFAULT NULL,
  `lib` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELATIONS POUR LA TABLE `aa_r_cause_non_diff`:
--   `typ_ref_id`
--       `aa_r_type_reference` -> `typ_ref_id`
--

--
-- Vider la table avant d'insérer `aa_r_cause_non_diff`
--

TRUNCATE TABLE `aa_r_cause_non_diff`;
--
-- Contenu de la table `aa_r_cause_non_diff`
--

INSERT INTO `aa_r_cause_non_diff` (`cnondiff_id`, `typ_ref_id`, `lib`) VALUES
(1, 1, 'Confidentialité'),
(2, 1, 'Non accessible'),
(3, 1, 'Non diffusable par internet');

-- --------------------------------------------------------

--
-- Structure de la table `aa_r_communicabilite`
--

DROP TABLE IF EXISTS `aa_r_communicabilite`;
CREATE TABLE `aa_r_communicabilite` (
  `communic_id` int(11) NOT NULL,
  `typ_ref_id` int(11) DEFAULT NULL,
  `lib` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELATIONS POUR LA TABLE `aa_r_communicabilite`:
--   `typ_ref_id`
--       `aa_r_type_reference` -> `typ_ref_id`
--

--
-- Vider la table avant d'insérer `aa_r_communicabilite`
--

TRUNCATE TABLE `aa_r_communicabilite`;
--
-- Contenu de la table `aa_r_communicabilite`
--

INSERT INTO `aa_r_communicabilite` (`communic_id`, `typ_ref_id`, `lib`) VALUES
(1, 2, 'Public'),
(2, 2, 'Sur demande'),
(3, 2, 'Sous conditions');

-- --------------------------------------------------------

--
-- Structure de la table `aa_r_decision`
--

DROP TABLE IF EXISTS `aa_r_decision`;
CREATE TABLE `aa_r_decision` (
  `decision_id` int(11) NOT NULL,
  `typ_ref_id` int(11) DEFAULT NULL,
  `lib` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELATIONS POUR LA TABLE `aa_r_decision`:
--   `typ_ref_id`
--       `aa_r_type_reference` -> `typ_ref_id`
--

--
-- Vider la table avant d'insérer `aa_r_decision`
--

TRUNCATE TABLE `aa_r_decision`;
--
-- Contenu de la table `aa_r_decision`
--

INSERT INTO `aa_r_decision` (`decision_id`, `typ_ref_id`, `lib`) VALUES
(1, 3, 'Communication sur place'),
(2, 3, 'Communication Internet'),
(3, 3, 'Communication master'),
(4, 3, 'Refus'),
(5, 3, 'Impossibilité matérielle');

-- --------------------------------------------------------

--
-- Structure de la table `aa_r_etat_obj`
--

DROP TABLE IF EXISTS `aa_r_etat_obj`;
CREATE TABLE `aa_r_etat_obj` (
  `eta_obj_id` int(11) NOT NULL,
  `typ_ref_id` int(11) DEFAULT NULL,
  `lib` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELATIONS POUR LA TABLE `aa_r_etat_obj`:
--   `typ_ref_id`
--       `aa_r_type_reference` -> `typ_ref_id`
--

--
-- Vider la table avant d'insérer `aa_r_etat_obj`
--

TRUNCATE TABLE `aa_r_etat_obj`;
--
-- Contenu de la table `aa_r_etat_obj`
--

INSERT INTO `aa_r_etat_obj` (`eta_obj_id`, `typ_ref_id`, `lib`) VALUES
(1, 4, '01-Versé'),
(2, 4, '02-Classé/Trié'),
(3, 4, '03-Nettoyé'),
(4, 4, '04-Décrit'),
(5, 4, '05-Éliminé'),
(6, 4, '06-Renommé'),
(7, 4, '07-Formats Conformes'),
(8, 4, '08-Arborescence Vérifiée'),
(9, 4, '09-Instrument de Recherche'),
(10, 4, '10-Publié'),
(11, 4, '11-Numérisé');

-- --------------------------------------------------------

--
-- Structure de la table `aa_r_langue`
--

DROP TABLE IF EXISTS `aa_r_langue`;
CREATE TABLE `aa_r_langue` (
  `lang_id` int(11) NOT NULL,
  `typ_ref_id` int(11) DEFAULT NULL,
  `lang_codeiso` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `lang_utilise` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `lib` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELATIONS POUR LA TABLE `aa_r_langue`:
--   `typ_ref_id`
--       `aa_r_type_reference` -> `typ_ref_id`
--

--
-- Vider la table avant d'insérer `aa_r_langue`
--

TRUNCATE TABLE `aa_r_langue`;
--
-- Contenu de la table `aa_r_langue`
--

INSERT INTO `aa_r_langue` (`lang_id`, `typ_ref_id`, `lang_codeiso`, `lang_utilise`, `lib`) VALUES
(1, 5, 'EN', 'oui', 'Anglais'),
(2, 5, 'ES', 'oui', 'Espagnol'),
(3, 5, 'FR', 'oui', 'Français'),
(4, 5, 'PT', 'non', 'Portugais');

-- --------------------------------------------------------

--
-- Structure de la table `aa_r_lien_avec_ATD`
--

DROP TABLE IF EXISTS `aa_r_lien_avec_ATD`;
CREATE TABLE `aa_r_lien_avec_ATD` (
  `lien_atd_id` int(11) NOT NULL,
  `typ_ref_id` int(11) DEFAULT NULL,
  `lib` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELATIONS POUR LA TABLE `aa_r_lien_avec_ATD`:
--   `typ_ref_id`
--       `aa_r_type_reference` -> `typ_ref_id`
--

--
-- Vider la table avant d'insérer `aa_r_lien_avec_ATD`
--

TRUNCATE TABLE `aa_r_lien_avec_ATD`;
--
-- Contenu de la table `aa_r_lien_avec_ATD`
--

INSERT INTO `aa_r_lien_avec_ATD` (`lien_atd_id`, `typ_ref_id`, `lib`) VALUES
(1, 6, 'Allié'),
(2, 6, 'Ami'),
(3, 6, 'Extérieur'),
(4, 6, 'Bénévole'),
(5, 6, 'Militant'),
(6, 6, 'Salarié'),
(7, 6, 'Volontaire');

-- --------------------------------------------------------

--
-- Structure de la table `aa_r_motif`
--

DROP TABLE IF EXISTS `aa_r_motif`;
CREATE TABLE `aa_r_motif` (
  `motif_id` int(11) NOT NULL,
  `typ_ref_id` int(11) DEFAULT NULL,
  `lib` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELATIONS POUR LA TABLE `aa_r_motif`:
--   `typ_ref_id`
--       `aa_r_type_reference` -> `typ_ref_id`
--

--
-- Vider la table avant d'insérer `aa_r_motif`
--

TRUNCATE TABLE `aa_r_motif`;
--
-- Contenu de la table `aa_r_motif`
--

INSERT INTO `aa_r_motif` (`motif_id`, `typ_ref_id`, `lib`) VALUES
(1, 7, 'Action'),
(2, 7, 'Étude économique'),
(3, 7, 'Étude historique'),
(4, 7, 'Étude sociologique'),
(5, 7, 'Formation'),
(6, 7, 'Gestion d’archives'),
(7, 7, 'Histoire personnelle'),
(8, 7, 'Étude philosophique'),
(9, 7, 'Étude théologique'),
(10, 7, 'Témoignage'),
(11, 7, 'À préciser');

-- --------------------------------------------------------

--
-- Structure de la table `aa_r_pays`
--

DROP TABLE IF EXISTS `aa_r_pays`;
CREATE TABLE `aa_r_pays` (
  `pays_id` int(11) NOT NULL,
  `typ_ref_id` int(11) DEFAULT NULL,
  `pays_iso` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `lib` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELATIONS POUR LA TABLE `aa_r_pays`:
--   `typ_ref_id`
--       `aa_r_type_reference` -> `typ_ref_id`
--

--
-- Vider la table avant d'insérer `aa_r_pays`
--

TRUNCATE TABLE `aa_r_pays`;
--
-- Contenu de la table `aa_r_pays`
--

INSERT INTO `aa_r_pays` (`pays_id`, `typ_ref_id`, `pays_iso`, `lib`) VALUES
(1, 8, 'DE', 'Allemagne'),
(2, 8, 'ES', 'Espagne'),
(3, 8, 'US', 'Etat-Unis'),
(4, 8, 'FR', 'France'),
(5, 8, 'GB', 'Royaume-Uni');

-- --------------------------------------------------------

--
-- Structure de la table `aa_r_role`
--

DROP TABLE IF EXISTS `aa_r_role`;
CREATE TABLE `aa_r_role` (
  `role_id` int(11) NOT NULL,
  `typ_ref_id` int(11) DEFAULT NULL,
  `role_status` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `lib` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELATIONS POUR LA TABLE `aa_r_role`:
--   `typ_ref_id`
--       `aa_r_type_reference` -> `typ_ref_id`
--

--
-- Vider la table avant d'insérer `aa_r_role`
--

TRUNCATE TABLE `aa_r_role`;
--
-- Contenu de la table `aa_r_role`
--

INSERT INTO `aa_r_role` (`role_id`, `typ_ref_id`, `role_status`, `lib`) VALUES
(1, 9, 'ROLE_ADMINISTRATOR', 'Administrateur'),
(2, 9, 'ROLE_RESEARCHER', 'Chercheur'),
(3, 9, 'ROLE_ARCHIVIST', 'Archiviste'),
(4, 9, 'ROLE_ASSISTANT', 'Assistant archiviste'),
(5, 9, 'ROLE_PHOTOGRAPHER', 'Photographe'),
(6, 9, 'ROLE_MANAGER', 'Responsable d’archives'),
(7, 9, 'ROLE_SUPERVISOR', 'Superviseur');

-- --------------------------------------------------------

--
-- Structure de la table `aa_r_type_composant`
--

DROP TABLE IF EXISTS `aa_r_type_composant`;
CREATE TABLE `aa_r_type_composant` (
  `typ_comp_id` int(11) NOT NULL,
  `typ_ref_id` int(11) DEFAULT NULL,
  `lib` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELATIONS POUR LA TABLE `aa_r_type_composant`:
--   `typ_ref_id`
--       `aa_r_type_reference` -> `typ_ref_id`
--

--
-- Vider la table avant d'insérer `aa_r_type_composant`
--

TRUNCATE TABLE `aa_r_type_composant`;
--
-- Contenu de la table `aa_r_type_composant`
--

INSERT INTO `aa_r_type_composant` (`typ_comp_id`, `typ_ref_id`, `lib`) VALUES
(1, 11, 'Entretien'),
(2, 11, 'Extrait émission'),
(3, 11, 'Extrait film'),
(4, 11, 'Réunion privée'),
(5, 11, 'Réunion publique'),
(6, 11, 'Scène privée'),
(7, 11, 'Scène publique'),
(8, 11, 'Témoignage');

-- --------------------------------------------------------

--
-- Structure de la table `aa_r_type_reference`
--

DROP TABLE IF EXISTS `aa_r_type_reference`;
CREATE TABLE `aa_r_type_reference` (
  `typ_ref_id` int(11) NOT NULL,
  `typ_ref_lib` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELATIONS POUR LA TABLE `aa_r_type_reference`:
--

--
-- Vider la table avant d'insérer `aa_r_type_reference`
--

TRUNCATE TABLE `aa_r_type_reference`;
--
-- Contenu de la table `aa_r_type_reference`
--

INSERT INTO `aa_r_type_reference` (`typ_ref_id`, `typ_ref_lib`) VALUES
(1, 'Cause de non diffusion'),
(2, 'Communicabilité'),
(3, 'Décision'),
(4, 'État'),
(5, 'Langue'),
(6, 'Lien avec le Mouvement'),
(7, 'Motif'),
(8, 'Pays'),
(9, 'Rôle'),
(10, 'Type d’élément de structure'),
(11, 'Type de composant'),
(12, 'Type de fichier'),
(13, 'Type de thèque'),
(14, 'Typologie objet art'),
(15, 'Typologie objet audio'),
(16, 'Typologie objet écrit'),
(17, 'Typologie objet photo'),
(18, 'Typologie objet vidéo');

-- --------------------------------------------------------

--
-- Structure de la table `aa_r_type_theque`
--

DROP TABLE IF EXISTS `aa_r_type_theque`;
CREATE TABLE `aa_r_type_theque` (
  `typ_teq_id` int(11) NOT NULL,
  `typ_ref_id` int(11) DEFAULT NULL,
  `lib` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELATIONS POUR LA TABLE `aa_r_type_theque`:
--   `typ_ref_id`
--       `aa_r_type_reference` -> `typ_ref_id`
--

--
-- Vider la table avant d'insérer `aa_r_type_theque`
--

TRUNCATE TABLE `aa_r_type_theque`;
--
-- Contenu de la table `aa_r_type_theque`
--

INSERT INTO `aa_r_type_theque` (`typ_teq_id`, `typ_ref_id`, `lib`) VALUES
(1, 13, 'Artothèque'),
(2, 13, 'Audiothèque'),
(3, 13, 'Écrithèque '),
(4, 13, 'Photothèque'),
(5, 13, 'Vidéothèque'),
(6, 13, 'Polythèque');

-- --------------------------------------------------------

--
-- Structure de la table `aa_r_typ_elem_de_struct`
--

DROP TABLE IF EXISTS `aa_r_typ_elem_de_struct`;
CREATE TABLE `aa_r_typ_elem_de_struct` (
  `typ_el_struc_id` int(11) NOT NULL,
  `typ_ref_id` int(11) DEFAULT NULL,
  `lib` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELATIONS POUR LA TABLE `aa_r_typ_elem_de_struct`:
--   `typ_ref_id`
--       `aa_r_type_reference` -> `typ_ref_id`
--

--
-- Vider la table avant d'insérer `aa_r_typ_elem_de_struct`
--

TRUNCATE TABLE `aa_r_typ_elem_de_struct`;
--
-- Contenu de la table `aa_r_typ_elem_de_struct`
--

INSERT INTO `aa_r_typ_elem_de_struct` (`typ_el_struc_id`, `typ_ref_id`, `lib`) VALUES
(1, 10, 'Répertoire'),
(2, 10, 'Article');

-- --------------------------------------------------------

--
-- Structure de la table `aa_r_typ_fichier`
--

DROP TABLE IF EXISTS `aa_r_typ_fichier`;
CREATE TABLE `aa_r_typ_fichier` (
  `typ_fic_id` int(11) NOT NULL,
  `typ_ref_id` int(11) DEFAULT NULL,
  `lib` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELATIONS POUR LA TABLE `aa_r_typ_fichier`:
--   `typ_ref_id`
--       `aa_r_type_reference` -> `typ_ref_id`
--

--
-- Vider la table avant d'insérer `aa_r_typ_fichier`
--

TRUNCATE TABLE `aa_r_typ_fichier`;
--
-- Contenu de la table `aa_r_typ_fichier`
--

INSERT INTO `aa_r_typ_fichier` (`typ_fic_id`, `typ_ref_id`, `lib`) VALUES
(1, 12, 'PDF'),
(2, 12, 'JPEG'),
(3, 12, 'MP4'),
(4, 12, 'MP3'),
(5, 12, 'ODF'),
(6, 12, 'WAV');

-- --------------------------------------------------------

--
-- Structure de la table `aa_r_typ_obj_art`
--

DROP TABLE IF EXISTS `aa_r_typ_obj_art`;
CREATE TABLE `aa_r_typ_obj_art` (
  `typ_obj_art_id` int(11) NOT NULL,
  `typ_ref_id` int(11) DEFAULT NULL,
  `lib` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELATIONS POUR LA TABLE `aa_r_typ_obj_art`:
--   `typ_ref_id`
--       `aa_r_type_reference` -> `typ_ref_id`
--

--
-- Vider la table avant d'insérer `aa_r_typ_obj_art`
--

TRUNCATE TABLE `aa_r_typ_obj_art`;
--
-- Contenu de la table `aa_r_typ_obj_art`
--

INSERT INTO `aa_r_typ_obj_art` (`typ_obj_art_id`, `typ_ref_id`, `lib`) VALUES
(1, 14, 'Aquarelle'),
(2, 14, 'Céramique'),
(3, 14, 'Dessin'),
(4, 14, 'Peinture '),
(5, 14, 'Poterie'),
(6, 14, 'Sculpture'),
(7, 14, 'Statue'),
(8, 14, 'Tissus');

-- --------------------------------------------------------

--
-- Structure de la table `aa_r_typ_obj_audio`
--

DROP TABLE IF EXISTS `aa_r_typ_obj_audio`;
CREATE TABLE `aa_r_typ_obj_audio` (
  `typ_obj_aud_id` int(11) NOT NULL,
  `typ_ref_id` int(11) DEFAULT NULL,
  `lib` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELATIONS POUR LA TABLE `aa_r_typ_obj_audio`:
--   `typ_ref_id`
--       `aa_r_type_reference` -> `typ_ref_id`
--

--
-- Vider la table avant d'insérer `aa_r_typ_obj_audio`
--

TRUNCATE TABLE `aa_r_typ_obj_audio`;
--
-- Contenu de la table `aa_r_typ_obj_audio`
--

INSERT INTO `aa_r_typ_obj_audio` (`typ_obj_aud_id`, `typ_ref_id`, `lib`) VALUES
(1, 15, 'Fichier transcription'),
(2, 15, 'Galette'),
(3, 15, 'Index transcription'),
(4, 15, 'Micro cassette'),
(5, 15, 'Mini cassette'),
(6, 15, 'Rapport d\'écoute');

-- --------------------------------------------------------

--
-- Structure de la table `aa_r_typ_obj_ecrit`
--

DROP TABLE IF EXISTS `aa_r_typ_obj_ecrit`;
CREATE TABLE `aa_r_typ_obj_ecrit` (
  `typ_obj_ecr_id` int(11) NOT NULL,
  `typ_ref_id` int(11) DEFAULT NULL,
  `lib` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELATIONS POUR LA TABLE `aa_r_typ_obj_ecrit`:
--   `typ_ref_id`
--       `aa_r_type_reference` -> `typ_ref_id`
--

--
-- Vider la table avant d'insérer `aa_r_typ_obj_ecrit`
--

TRUNCATE TABLE `aa_r_typ_obj_ecrit`;
--
-- Contenu de la table `aa_r_typ_obj_ecrit`
--

INSERT INTO `aa_r_typ_obj_ecrit` (`typ_obj_ecr_id`, `typ_ref_id`, `lib`) VALUES
(1, 16, 'Article de presse'),
(2, 16, 'Courriel'),
(3, 16, 'Magazine'),
(4, 16, 'Tableur'),
(5, 16, 'Texte'),
(6, 16, 'Texte transcription'),
(7, 16, 'Présentation');

-- --------------------------------------------------------

--
-- Structure de la table `aa_r_typ_obj_photo`
--

DROP TABLE IF EXISTS `aa_r_typ_obj_photo`;
CREATE TABLE `aa_r_typ_obj_photo` (
  `typ_obj_pho_id` int(11) NOT NULL,
  `typ_ref_id` int(11) DEFAULT NULL,
  `lib` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELATIONS POUR LA TABLE `aa_r_typ_obj_photo`:
--   `typ_ref_id`
--       `aa_r_type_reference` -> `typ_ref_id`
--

--
-- Vider la table avant d'insérer `aa_r_typ_obj_photo`
--

TRUNCATE TABLE `aa_r_typ_obj_photo`;
--
-- Contenu de la table `aa_r_typ_obj_photo`
--

INSERT INTO `aa_r_typ_obj_photo` (`typ_obj_pho_id`, `typ_ref_id`, `lib`) VALUES
(1, 17, 'Diapositive'),
(2, 17, 'Pellicule'),
(3, 17, 'Photographie'),
(4, 17, 'Planche contact');

-- --------------------------------------------------------

--
-- Structure de la table `aa_r_typ_obj_video`
--

DROP TABLE IF EXISTS `aa_r_typ_obj_video`;
CREATE TABLE `aa_r_typ_obj_video` (
  `typ_obj_vid_id` int(11) NOT NULL,
  `typ_ref_id` int(11) DEFAULT NULL,
  `lib` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELATIONS POUR LA TABLE `aa_r_typ_obj_video`:
--   `typ_ref_id`
--       `aa_r_type_reference` -> `typ_ref_id`
--

--
-- Vider la table avant d'insérer `aa_r_typ_obj_video`
--

TRUNCATE TABLE `aa_r_typ_obj_video`;
--
-- Contenu de la table `aa_r_typ_obj_video`
--

INSERT INTO `aa_r_typ_obj_video` (`typ_obj_vid_id`, `typ_ref_id`, `lib`) VALUES
(1, 18, 'Bobine pelliculle cellulosique'),
(2, 18, 'Cassette BetaCAM'),
(3, 18, 'Cassette BetaSP'),
(4, 18, 'Cassette DigiBéta'),
(5, 18, 'Cassette DvCAM'),
(6, 18, 'Cassette Hi 8'),
(7, 18, 'Cassette MiniDV'),
(8, 18, 'Cassette Umatic'),
(9, 18, 'Cassette VCR'),
(10, 18, 'Cassette VHS'),
(11, 18, 'Cassette VHS VCR'),
(12, 18, 'CD'),
(13, 18, 'Clé USB'),
(14, 18, 'DVD'),
(15, 18, 'Fichier communication'),
(16, 18, 'Fichier conservation'),
(17, 18, 'Fichier de commentaires'),
(18, 18, 'Fichier de doublage'),
(19, 18, 'Fichier de sous titres'),
(20, 18, 'Fichier indexation'),
(21, 18, 'Fichier transcription');

-- --------------------------------------------------------

--
-- Structure de la table `aa_theque`
--

DROP TABLE IF EXISTS `aa_theque`;
CREATE TABLE `aa_theque` (
  `teq_id` int(11) NOT NULL,
  `pays_id` int(11) DEFAULT NULL,
  `typ_teq_id` int(11) DEFAULT NULL,
  `teq_nom` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `teq_courriel` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `teq_telephone` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `teq_voie` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `teq_cp` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `teq_ville` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `teq_dat_crea` date NOT NULL,
  `teq_dat_suppr` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELATIONS POUR LA TABLE `aa_theque`:
--   `pays_id`
--       `aa_r_pays` -> `pays_id`
--   `typ_teq_id`
--       `aa_r_type_theque` -> `typ_teq_id`
--

--
-- Vider la table avant d'insérer `aa_theque`
--

TRUNCATE TABLE `aa_theque`;
--
-- Contenu de la table `aa_theque`
--

INSERT INTO `aa_theque` (`teq_id`, `pays_id`, `typ_teq_id`, `teq_nom`, `teq_courriel`, `teq_telephone`, `teq_voie`, `teq_cp`, `teq_ville`, `teq_dat_crea`, `teq_dat_suppr`) VALUES
(1, 4, 1, 'Artothéques', 'Artothéques@gmail.com', '0123456789', '9', '38130', 'Echirolles', '2018-01-20', '2021-01-20'),
(2, 4, 2, 'Audiothéques', 'Audiothéques@gmail.com', '0123456789', '9', '38130', 'Echirolles', '2018-01-20', '2021-01-20'),
(3, 4, 3, 'Ecrithéques', 'Ecrithéques@gmail.com', '0123456789', '9', '38130', 'Echirolles', '2018-01-20', '2021-01-20'),
(4, 4, 4, 'Photothéques', 'Photothéques@gmail.com', '0123456789', '9', '38130', 'Echirolles', '2018-01-20', '2021-01-20'),
(5, 4, 5, 'Videothéques', 'Videothéques@gmail.com', '0123456789', '9', '38130', 'Echirolles', '2018-01-20', '2021-01-20'),
(6, 4, 6, 'Polythèques', 'Polythèques@gmail.com', '0123456789', '9', '38130', 'Echirolles', '2018-01-20', '2021-01-20');

-- --------------------------------------------------------

--
-- Structure de la table `aa_utilisateur`
--

DROP TABLE IF EXISTS `aa_utilisateur`;
CREATE TABLE `aa_utilisateur` (
  `usr_id` int(11) NOT NULL,
  `lang_id` int(11) DEFAULT NULL,
  `lien_atd_id` int(11) DEFAULT NULL,
  `motif_id` int(11) DEFAULT NULL,
  `usr_nom` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `usr_prenom` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `usr_courriel` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `usr_mdp` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `usr_date_mdp` date NOT NULL,
  `usr_objectif` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `usr_remarque` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `usr_pseudo` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `usr_dat_crea` date NOT NULL,
  `usr_dat_resil` date NOT NULL,
  `usr_indic_precnx` int(11) NOT NULL,
  `usr_salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELATIONS POUR LA TABLE `aa_utilisateur`:
--   `lang_id`
--       `aa_r_langue` -> `lang_id`
--   `motif_id`
--       `aa_r_motif` -> `motif_id`
--   `lien_atd_id`
--       `aa_r_lien_avec_ATD` -> `lien_atd_id`
--

--
-- Vider la table avant d'insérer `aa_utilisateur`
--

TRUNCATE TABLE `aa_utilisateur`;
--
-- Contenu de la table `aa_utilisateur`
--

INSERT INTO `aa_utilisateur` (`usr_id`, `lang_id`, `lien_atd_id`, `motif_id`, `usr_nom`, `usr_prenom`, `usr_courriel`, `usr_mdp`, `usr_date_mdp`, `usr_objectif`, `usr_remarque`, `usr_pseudo`, `usr_dat_crea`, `usr_dat_resil`, `usr_indic_precnx`, `usr_salt`) VALUES
(1, 1, 1, 1, 'chercheur', 'chercheur', 'chercheur@gmail.com', 'QEsdYf7CpH/89DEnxxDzH9KXXnjqyJrH/RunszBqLsTtVgrMsDVG2KhqtgfESsfVMQ6BhMvTn6IhAdSTYpPwGQ==', '2018-01-20', NULL, 'chercheur', 'chercheur', '2018-01-20', '2021-01-20', 1, 'chercheurATDQM'),
(2, 1, 1, 1, 'archiviste', 'archiviste', 'archiviste@gmail.com', '1kdlDeIPQySxdlnNhdOkAbAtuRqq3js2jYpQCut/LXoWVQA7xKxtUw2PFyc/yB4UpKyb4pAUm4MwJOCE6+mhsA==', '2018-01-20', NULL, 'archiviste', 'archiviste', '2018-01-20', '2021-01-20', 1, 'archivisteATDQM'),
(3, 1, 1, 1, 'assistant', 'assistant', 'assistant@gmail.com', 'BhMiXhS8Lr8xO+vI/+NoncTs478SLnsxvXhFQphUXjkqnCtgJfL43kVi3yN8OuVvmUglqFpzdZeJKjmi3T+pGA==', '2018-01-20', 'fnwdgn', 'assistant', 'assistant', '2018-01-20', '2021-01-20', 1, 'assistantATDQM'),
(4, 1, 1, 1, 'photographe', 'photographe', 'photographe@gmail.com', 'XBqlUDf+NxfBcl7OcILHOmHZUOqE2zfBxhuDRBRD39SONWBFteSbLjdQN6kFz1uG0AGIf+RWTEC0eXarnOBr0g==', '2018-01-20', NULL, 'photographe', 'photographe', '2018-01-20', '2021-01-20', 1, 'photographeATDQM'),
(5, 1, 1, 1, 'responsable', 'responsable', 'responsable@gmail.com', 'pnwkFDEzTUUdb0I/kr78dqSYdTQH3VKAl9XpbXgtLavvZn5N1k8auSZTZRxeyUbu3mHecMMUcXs8z7lYsXe8LA==', '2018-01-20', NULL, 'responsable', 'responsable', '2018-01-20', '2021-01-20', 0, 'responsableATDQM'),
(6, 1, 1, 1, 'superviser', 'superviser', 'superviser@gmail.com', 'LHOjpExwTVgYEP4KISirvsL36Zn5QarUWptcZaR2PkC3J+mHaYJrZ9qmtg+AWBlEnhX7H6a6SvNCUKQyYP0Uhw==', '2018-01-20', NULL, 'superviser', 'superviser', '2018-01-20', '2021-01-20', 1, 'superviserATDQM'),
(7, 1, 1, 1, 'admin', 'admin', 'admin@gmail.com', 'gmM84o2okrkZg9CpK3Y8qnN+dAvFoXk0FFFfCb4C/ycF+rJ1wNVgxoVkRCAt8N3/FG81YkvVGByPumH7j69kyw==', '2018-01-20', NULL, 'admin', 'admin', '2018-01-20', '2021-01-20', 0, 'adminATDQM'),
(8, 1, 1, 1, 'fredo', 'fredo', 'fredo@gmail.com', 'Zva0+lPAW335thZBvXSpniEv/gXcLIDtx4lgjQWqiIBZ/ffLyjVtw9ZYe5TbbSzXZGaARa6vnLRMyy+cLPqbww==', '2018-01-20', NULL, 'fredo', 'fredo', '2018-01-17', '2021-01-20', 1, 'fredoATDQM');

-- --------------------------------------------------------

--
-- Structure de la table `a_pour_role_aff`
--

DROP TABLE IF EXISTS `a_pour_role_aff`;
CREATE TABLE `a_pour_role_aff` (
  `pour_role_id` int(11) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `teq_id` int(11) DEFAULT NULL,
  `usr_id` int(11) DEFAULT NULL,
  `rol_aff_dat_suppr` date DEFAULT NULL,
  `rol_dat_deb` date NOT NULL,
  `rol_dat_fin` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELATIONS POUR LA TABLE `a_pour_role_aff`:
--   `teq_id`
--       `aa_theque` -> `teq_id`
--   `usr_id`
--       `aa_utilisateur` -> `usr_id`
--   `role_id`
--       `aa_r_role` -> `role_id`
--

--
-- Vider la table avant d'insérer `a_pour_role_aff`
--

TRUNCATE TABLE `a_pour_role_aff`;
--
-- Contenu de la table `a_pour_role_aff`
--

INSERT INTO `a_pour_role_aff` (`pour_role_id`, `role_id`, `teq_id`, `usr_id`, `rol_aff_dat_suppr`, `rol_dat_deb`, `rol_dat_fin`) VALUES
(1, 2, 1, 1, '2021-01-20', '2018-01-20', '2021-01-20'),
(2, 3, 1, 2, '2021-01-20', '2018-01-20', '2021-01-20'),
(3, 4, 1, 3, '2021-01-20', '2018-01-20', '2021-01-20'),
(4, 5, 1, 4, '2021-01-20', '2018-01-20', '2021-01-20'),
(5, 6, 1, 5, '2021-01-20', '2018-01-20', '2021-01-20'),
(6, 7, 1, 6, '2021-01-20', '2018-01-20', '2021-01-20'),
(7, 6, 2, 5, '2021-01-20', '2018-01-20', '2021-01-20'),
(8, 5, 3, 5, '2021-01-20', '2018-01-20', '2021-01-20');

-- --------------------------------------------------------

--
-- Structure de la table `est_administrateur`
--

DROP TABLE IF EXISTS `est_administrateur`;
CREATE TABLE `est_administrateur` (
  `estadmin_id` int(11) NOT NULL,
  `usr_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `admin_dat_deb` date NOT NULL,
  `admin_dat_fin` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELATIONS POUR LA TABLE `est_administrateur`:
--   `usr_id`
--       `aa_utilisateur` -> `usr_id`
--   `role_id`
--       `aa_r_role` -> `role_id`
--

--
-- Vider la table avant d'insérer `est_administrateur`
--

TRUNCATE TABLE `est_administrateur`;
--
-- Contenu de la table `est_administrateur`
--

INSERT INTO `est_administrateur` (`estadmin_id`, `usr_id`, `role_id`, `admin_dat_deb`, `admin_dat_fin`) VALUES
(1, 7, 1, '2018-01-20', '2021-01-20'),
(2, 8, 1, '2018-01-20', '2018-01-21');

-- --------------------------------------------------------

--
-- Structure de la table `ext_translations`
--

DROP TABLE IF EXISTS `ext_translations`;
CREATE TABLE `ext_translations` (
  `id` int(11) NOT NULL,
  `locale` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `object_class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `field` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `foreign_key` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELATIONS POUR LA TABLE `ext_translations`:
--

--
-- Vider la table avant d'insérer `ext_translations`
--

TRUNCATE TABLE `ext_translations`;
--
-- Contenu de la table `ext_translations`
--

INSERT INTO `ext_translations` (`id`, `locale`, `object_class`, `field`, `foreign_key`, `content`) VALUES
(1, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeReference', 'typRefLib', '1', 'EN_Cause de non diffusion'),
(2, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeReference', 'typRefLib', '1', 'EN_Cause de non diffusion'),
(3, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeReference', 'typRefLib', '1', 'ES_Cause de non diffusion'),
(4, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeReference', 'typRefLib', '2', 'EN_Communicabilité'),
(5, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeReference', 'typRefLib', '2', 'EN_Communicabilité'),
(6, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeReference', 'typRefLib', '2', ' ES_Communicabilité'),
(7, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeReference', 'typRefLib', '3', 'EN_Décision'),
(8, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeReference', 'typRefLib', '3', 'EN_Décision'),
(9, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeReference', 'typRefLib', '3', 'Decisión'),
(10, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeReference', 'typRefLib', '4', 'EN_État'),
(11, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeReference', 'typRefLib', '4', 'EN_État'),
(12, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeReference', 'typRefLib', '4', ' Estado'),
(13, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeReference', 'typRefLib', '5', 'EN_Langue'),
(14, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeReference', 'typRefLib', '5', 'EN_Langue'),
(15, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeReference', 'typRefLib', '5', 'Lengua'),
(16, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeReference', 'typRefLib', '6', 'EN_Lien avec le mouvement'),
(17, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeReference', 'typRefLib', '6', 'EN_Lien avec le mouvement'),
(18, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeReference', 'typRefLib', '6', 'Relación con el Movimiento'),
(19, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeReference', 'typRefLib', '7', 'EN_Motif'),
(20, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeReference', 'typRefLib', '7', 'EN_Motif'),
(21, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeReference', 'typRefLib', '7', 'Motivo'),
(22, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeReference', 'typRefLib', '8', 'Country'),
(23, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeReference', 'typRefLib', '8', 'Country'),
(24, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeReference', 'typRefLib', '8', 'Pais'),
(25, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeReference', 'typRefLib', '9', 'EN_Rôle'),
(26, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeReference', 'typRefLib', '9', 'EN_Rôle'),
(27, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeReference', 'typRefLib', '9', 'Función'),
(28, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeReference', 'typRefLib', '10', 'EN_Type d’élément de structure'),
(29, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeReference', 'typRefLib', '10', 'EN_Type d’élément de structure'),
(30, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeReference', 'typRefLib', '10', 'ES_Type d’élément de structure'),
(31, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeReference', 'typRefLib', '11', 'EN_Type de composant'),
(32, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeReference', 'typRefLib', '11', 'EN_Type de composant'),
(33, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeReference', 'typRefLib', '11', 'Tipo de componente'),
(34, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeReference', 'typRefLib', '12', 'EN_Type de fichier'),
(35, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeReference', 'typRefLib', '12', 'EN_Type de fichier'),
(36, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeReference', 'typRefLib', '12', 'Tipo de archivo'),
(37, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeReference', 'typRefLib', '13', 'EN_Type de thèque'),
(38, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeReference', 'typRefLib', '13', 'EN_Type de thèque'),
(39, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeReference', 'typRefLib', '13', 'ES_Type de thèque'),
(40, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeReference', 'typRefLib', '14', 'EN_Typologie objet art'),
(41, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeReference', 'typRefLib', '14', 'EN_Typologie objet art'),
(42, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeReference', 'typRefLib', '14', 'ES_Typologie objet art'),
(43, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeReference', 'typRefLib', '15', 'EN_Typologie objet audio'),
(44, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeReference', 'typRefLib', '15', 'EN_Typologie objet audio'),
(45, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeReference', 'typRefLib', '15', 'ES_Typologie objet audio'),
(46, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeReference', 'typRefLib', '16', 'EN_ Typologie objet écrit'),
(47, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeReference', 'typRefLib', '16', 'EN_ Typologie objet écrit'),
(48, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeReference', 'typRefLib', '16', 'ES_Typologie objet écrit'),
(49, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeReference', 'typRefLib', '17', 'EN_Typologie objet photo'),
(50, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeReference', 'typRefLib', '17', 'EN_Typologie objet photo'),
(51, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeReference', 'typRefLib', '17', 'ES_Typologie objet photo'),
(52, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeReference', 'typRefLib', '18', 'EN_Typologie objet vidéo'),
(53, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeReference', 'typRefLib', '18', 'EN_Typologie objet vidéo'),
(54, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeReference', 'typRefLib', '18', 'ES_Typologie objet vidéo'),
(55, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRRole', 'lib', '1', 'Manager'),
(56, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRRole', 'lib', '1', 'Manager'),
(57, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRRole', 'lib', '1', 'Administrador'),
(58, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRRole', 'lib', '2', 'Researcher'),
(59, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRRole', 'lib', '2', 'Researcher'),
(60, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRRole', 'lib', '2', 'Investigación'),
(61, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRRole', 'lib', '3', 'Archivist'),
(62, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRRole', 'lib', '3', 'Archivist'),
(63, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRRole', 'lib', '3', 'archivista'),
(64, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRRole', 'lib', '4', 'Archive assistant'),
(65, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRRole', 'lib', '4', 'Archive assistant'),
(66, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRRole', 'lib', '4', 'Archivo asistente'),
(67, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRRole', 'lib', '5', 'Photographer'),
(68, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRRole', 'lib', '5', 'Photographer'),
(69, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRRole', 'lib', '5', 'Fotógrafo'),
(70, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRRole', 'lib', '6', 'Archive Manager'),
(71, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRRole', 'lib', '6', 'Archive Manager'),
(72, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRRole', 'lib', '6', 'ES_Responsable d’archives'),
(73, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRRole', 'lib', '7', 'Supervisor'),
(74, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRRole', 'lib', '7', 'Supervisor'),
(75, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRRole', 'lib', '7', 'Supervisor'),
(76, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeTheque', 'lib', '1', 'Artwork'),
(77, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeTheque', 'lib', '1', 'Artwork'),
(78, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeTheque', 'lib', '1', 'Artístico'),
(79, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeTheque', 'lib', '2', 'Audio'),
(80, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeTheque', 'lib', '2', 'Audio'),
(81, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeTheque', 'lib', '2', 'Sonoro'),
(82, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeTheque', 'lib', '3', 'Written items'),
(83, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeTheque', 'lib', '3', 'Written items'),
(84, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeTheque', 'lib', '3', 'Documental'),
(85, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeTheque', 'lib', '4', 'Photo'),
(86, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeTheque', 'lib', '4', 'Photo'),
(87, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeTheque', 'lib', '4', 'Fotográfico'),
(88, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeTheque', 'lib', '5', 'Video'),
(89, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeTheque', 'lib', '5', 'Video'),
(90, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeTheque', 'lib', '5', 'Videográfico'),
(91, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeTheque', 'lib', '6', 'EN_Polythèque'),
(92, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeTheque', 'lib', '6', 'EN_Polythèque'),
(93, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeTheque', 'lib', '6', 'ES_Polythèque'),
(94, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRLienAvecAtd', 'lib', '1', 'Partner'),
(95, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRLienAvecAtd', 'lib', '1', 'Partner'),
(96, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRLienAvecAtd', 'lib', '1', 'Aliado'),
(97, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRLienAvecAtd', 'lib', '2', 'Friend'),
(98, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRLienAvecAtd', 'lib', '2', 'Friend'),
(99, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRLienAvecAtd', 'lib', '2', 'Amigo'),
(100, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRLienAvecAtd', 'lib', '3', 'EN_Extérieur'),
(101, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRLienAvecAtd', 'lib', '3', 'EN_Extérieur'),
(102, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRLienAvecAtd', 'lib', '3', 'ES_Extérieur'),
(103, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRLienAvecAtd', 'lib', '4', 'Unpaid worker'),
(104, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRLienAvecAtd', 'lib', '4', 'Unpaid worker'),
(105, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRLienAvecAtd', 'lib', '4', 'Colaborador'),
(106, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRLienAvecAtd', 'lib', '5', 'Activist'),
(107, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRLienAvecAtd', 'lib', '5', 'Activist'),
(108, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRLienAvecAtd', 'lib', '5', 'Militante'),
(109, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRLienAvecAtd', 'lib', '6', 'Salaried worker'),
(110, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRLienAvecAtd', 'lib', '6', 'Salaried worker'),
(111, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRLienAvecAtd', 'lib', '6', 'Asalariado'),
(112, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRLienAvecAtd', 'lib', '7', 'Volunteer'),
(113, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRLienAvecAtd', 'lib', '7', 'Volunteer'),
(114, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRLienAvecAtd', 'lib', '7', 'Voluntario'),
(115, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRLangue', 'lib', '1', 'English'),
(116, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRLangue', 'lib', '1', 'English'),
(117, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRLangue', 'lib', '1', 'Inglés'),
(118, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRLangue', 'lib', '2', 'Spanish'),
(119, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRLangue', 'lib', '2', 'Spanish'),
(120, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRLangue', 'lib', '2', 'Español'),
(121, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRLangue', 'lib', '3', 'French'),
(122, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRLangue', 'lib', '3', 'French'),
(123, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRLangue', 'lib', '3', 'Francés'),
(124, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRLangue', 'lib', '4', 'Portuguese'),
(125, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRLangue', 'lib', '4', 'Portuguese'),
(126, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRLangue', 'lib', '4', 'Portugués'),
(127, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRMotif', 'lib', '1', 'Action'),
(128, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRMotif', 'lib', '1', 'Action'),
(129, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRMotif', 'lib', '1', 'Acción'),
(130, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRMotif', 'lib', '2', 'Economical study'),
(131, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRMotif', 'lib', '2', 'Economical study'),
(132, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRMotif', 'lib', '2', 'Estudio económico'),
(133, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRMotif', 'lib', '3', 'Historical study'),
(134, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRMotif', 'lib', '3', 'Historical study'),
(135, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRMotif', 'lib', '3', 'Estudio histórico'),
(136, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRMotif', 'lib', '4', 'Sociological study'),
(137, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRMotif', 'lib', '4', 'Sociological study'),
(138, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRMotif', 'lib', '4', 'Estudio sociológico'),
(139, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRMotif', 'lib', '5', 'Training'),
(140, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRMotif', 'lib', '5', 'Training'),
(141, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRMotif', 'lib', '5', 'Formación'),
(142, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRMotif', 'lib', '6', 'Archive management'),
(143, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRMotif', 'lib', '6', 'Archive management'),
(144, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRMotif', 'lib', '6', 'Gestión de archivos'),
(145, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRMotif', 'lib', '7', 'Personal history'),
(146, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRMotif', 'lib', '7', 'Personal history'),
(147, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRMotif', 'lib', '7', 'Historia personal'),
(148, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRMotif', 'lib', '8', 'EN_Étude philosophique'),
(149, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRMotif', 'lib', '8', 'EN_Étude philosophique'),
(150, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRMotif', 'lib', '8', 'ES_Étude philosophique'),
(151, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRMotif', 'lib', '9', 'EN_Étude théologique'),
(152, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRMotif', 'lib', '9', 'EN_Étude théologique'),
(153, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRMotif', 'lib', '9', 'ES_Étude théologique'),
(154, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRMotif', 'lib', '10', 'Witness account'),
(155, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRMotif', 'lib', '10', 'Witness account'),
(156, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRMotif', 'lib', '10', 'Testimonio'),
(157, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRMotif', 'lib', '11', 'EN_À préciser'),
(158, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRMotif', 'lib', '11', 'EN_À préciser'),
(159, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRMotif', 'lib', '11', 'ES_À préciser'),
(160, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypElemDeStruct', 'lib', '1', 'Folder'),
(161, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypElemDeStruct', 'lib', '1', 'Folder'),
(162, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypElemDeStruct', 'lib', '1', 'Directorio'),
(163, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypElemDeStruct', 'lib', '2', 'EN_Article'),
(164, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypElemDeStruct', 'lib', '2', 'EN_Article'),
(165, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypElemDeStruct', 'lib', '2', 'ES_Article'),
(166, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjVideo', 'lib', '1', 'EN_Bobine pelliculle cellulosique'),
(167, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjVideo', 'lib', '1', 'EN_Bobine pelliculle cellulosique'),
(168, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjVideo', 'lib', '1', 'ES_Bobine pelliculle cellulosique'),
(169, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjVideo', 'lib', '2', 'BetaCAM cassette'),
(170, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjVideo', 'lib', '2', 'BetaCAM cassette'),
(171, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjVideo', 'lib', '2', 'Cinta BetaCAM'),
(172, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjVideo', 'lib', '3', 'EN_Cassette BetaSP'),
(173, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjVideo', 'lib', '3', 'EN_Cassette BetaSP'),
(174, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjVideo', 'lib', '3', 'ES_Cassette BetaSP'),
(175, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjVideo', 'lib', '4', 'EN_Cassette DigiBéta'),
(176, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjVideo', 'lib', '4', 'EN_Cassette DigiBéta'),
(177, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjVideo', 'lib', '4', 'ES_Cassette DigiBéta'),
(178, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjVideo', 'lib', '5', 'DvCAM cassette'),
(179, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjVideo', 'lib', '5', 'DvCAM cassette'),
(180, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjVideo', 'lib', '5', 'Cinta DvCAM'),
(181, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjVideo', 'lib', '6', 'Hi 8 Cassette'),
(182, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjVideo', 'lib', '6', 'Hi 8 Cassette'),
(183, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjVideo', 'lib', '6', 'Cinta Hi8'),
(184, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjVideo', 'lib', '7', 'EN_Cassette MiniDV'),
(185, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjVideo', 'lib', '7', 'EN_Cassette MiniDV'),
(186, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjVideo', 'lib', '7', 'ES_Cassette MiniDV'),
(187, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjVideo', 'lib', '8', 'EN_Cassette Umatic'),
(188, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjVideo', 'lib', '8', 'EN_Cassette Umatic'),
(189, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjVideo', 'lib', '8', 'ES_Cassette Umatic'),
(190, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjVideo', 'lib', '9', 'EN_Cassette VCR'),
(191, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjVideo', 'lib', '9', 'EN_Cassette VCR'),
(192, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjVideo', 'lib', '9', 'ES_Cassette VCR'),
(193, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjVideo', 'lib', '10', 'VHS cassette'),
(194, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjVideo', 'lib', '10', 'VHS cassette'),
(195, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjVideo', 'lib', '10', 'Cinta VHS'),
(196, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjVideo', 'lib', '11', 'EN_Cassette VHS VCR'),
(197, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjVideo', 'lib', '11', 'EN_Cassette VHS VCR'),
(198, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjVideo', 'lib', '11', 'ES_Cassette VHS VCR'),
(199, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjVideo', 'lib', '12', 'CD'),
(200, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjVideo', 'lib', '12', 'CD'),
(201, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjVideo', 'lib', '12', 'CD'),
(202, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjVideo', 'lib', '13', 'USB key'),
(203, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjVideo', 'lib', '13', 'USB key'),
(204, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjVideo', 'lib', '13', 'ES_Clé USB'),
(205, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjVideo', 'lib', '14', 'DVD'),
(206, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjVideo', 'lib', '14', 'DVD'),
(207, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjVideo', 'lib', '14', 'DVD'),
(208, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjVideo', 'lib', '15', 'Communication file'),
(209, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjVideo', 'lib', '15', 'Communication file'),
(210, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjVideo', 'lib', '15', 'Archivo comunicación'),
(211, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjVideo', 'lib', '16', 'Conservation file'),
(212, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjVideo', 'lib', '16', 'Conservation file'),
(213, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjVideo', 'lib', '16', 'Archivo conservación'),
(214, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjVideo', 'lib', '17', 'EN_Fichier de commentaires'),
(215, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjVideo', 'lib', '17', 'EN_Fichier de commentaires'),
(216, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjVideo', 'lib', '17', 'ES_Fichier de commentaires'),
(217, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjVideo', 'lib', '18', 'EN_Fichier de doublage'),
(218, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjVideo', 'lib', '18', 'EN_Fichier de doublage'),
(219, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjVideo', 'lib', '18', 'ES_Fichier de doublage'),
(220, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjVideo', 'lib', '19', 'EN_Fichier de sous titres'),
(221, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjVideo', 'lib', '19', 'EN_Fichier de sous titres'),
(222, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjVideo', 'lib', '19', 'ES_Fichier de sous titres'),
(223, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjVideo', 'lib', '20', 'Index file'),
(224, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjVideo', 'lib', '20', 'Index file'),
(225, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjVideo', 'lib', '20', 'Archivo indización'),
(226, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjVideo', 'lib', '21', 'Transcription file'),
(227, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjVideo', 'lib', '21', 'Transcription file'),
(228, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjVideo', 'lib', '21', 'Archivo transcripción'),
(229, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjAudio', 'lib', '1', 'Transcription file'),
(230, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjAudio', 'lib', '1', 'Transcription file'),
(231, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjAudio', 'lib', '1', 'Archivo transcripción'),
(232, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjAudio', 'lib', '2', 'magnetic tape'),
(233, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjAudio', 'lib', '2', 'magnetic tape'),
(234, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjAudio', 'lib', '2', 'Rollo de cinta magnética'),
(235, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjAudio', 'lib', '3', 'Transcription index'),
(236, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjAudio', 'lib', '3', 'Transcription index'),
(237, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjAudio', 'lib', '3', 'Índice transcripción'),
(238, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjAudio', 'lib', '4', 'micro cassette tape'),
(239, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjAudio', 'lib', '4', 'micro cassette tape'),
(240, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjAudio', 'lib', '4', 'Microcasete'),
(241, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjAudio', 'lib', '5', 'mini cassette tape'),
(242, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjAudio', 'lib', '5', 'mini cassette tape'),
(243, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjAudio', 'lib', '5', 'Minicasete'),
(244, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjAudio', 'lib', '6', 'Listening report'),
(245, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjAudio', 'lib', '6', 'Listening report'),
(246, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjAudio', 'lib', '6', 'informe de audio'),
(247, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjArt', 'lib', '1', 'Watercolour'),
(248, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjArt', 'lib', '1', 'Watercolour'),
(249, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjArt', 'lib', '1', 'Acuarela'),
(250, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjArt', 'lib', '2', 'Ceramics'),
(251, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjArt', 'lib', '2', 'Ceramics'),
(252, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjArt', 'lib', '2', 'Cerámica'),
(253, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjArt', 'lib', '3', 'Drawing'),
(254, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjArt', 'lib', '3', 'Drawing'),
(255, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjArt', 'lib', '3', 'Dibujo'),
(256, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjArt', 'lib', '4', 'Painting'),
(257, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjArt', 'lib', '4', 'Painting'),
(258, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjArt', 'lib', '4', 'Pintura'),
(259, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjArt', 'lib', '5', 'Pottery'),
(260, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjArt', 'lib', '5', 'Pottery'),
(261, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjArt', 'lib', '5', 'Alfarería'),
(262, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjArt', 'lib', '6', 'Sculpture'),
(263, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjArt', 'lib', '6', 'Sculpture'),
(264, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjArt', 'lib', '6', 'Escultura'),
(265, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjArt', 'lib', '7', 'Statue'),
(266, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjArt', 'lib', '7', 'Statue'),
(267, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjArt', 'lib', '7', 'Estatua'),
(268, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjArt', 'lib', '8', 'Fabrics'),
(269, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjArt', 'lib', '8', 'Fabrics'),
(270, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjArt', 'lib', '8', 'Tejidos'),
(271, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjPhoto', 'lib', '1', 'Slide'),
(272, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjPhoto', 'lib', '1', 'Slide'),
(273, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjPhoto', 'lib', '1', 'diapositiva'),
(274, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjPhoto', 'lib', '2', 'Film'),
(275, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjPhoto', 'lib', '2', 'Film'),
(276, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjPhoto', 'lib', '2', 'película'),
(277, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjPhoto', 'lib', '3', 'Photography'),
(278, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjPhoto', 'lib', '3', 'Photography'),
(279, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjPhoto', 'lib', '3', 'fotografía'),
(280, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjPhoto', 'lib', '4', 'Contact sheet'),
(281, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjPhoto', 'lib', '4', 'Contact sheet'),
(282, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjPhoto', 'lib', '4', 'Hoja de contactos'),
(283, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjEcrit', 'lib', '1', 'EN_Article de presse'),
(284, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjEcrit', 'lib', '1', 'EN_Article de presse'),
(285, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjEcrit', 'lib', '1', 'ES_Article de presse'),
(286, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjEcrit', 'lib', '2', 'E-mail '),
(287, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjEcrit', 'lib', '2', 'E-mail '),
(288, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjEcrit', 'lib', '2', 'Archivo de correo electrónico'),
(289, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjEcrit', 'lib', '3', 'EN_Magazine'),
(290, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjEcrit', 'lib', '3', 'EN_Magazine'),
(291, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjEcrit', 'lib', '3', 'ES_Magazine'),
(292, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjEcrit', 'lib', '4', 'Spreadsheet'),
(293, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjEcrit', 'lib', '4', 'Spreadsheet'),
(294, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjEcrit', 'lib', '4', 'Archivo de hoja de cálculo'),
(295, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjEcrit', 'lib', '5', 'Text'),
(296, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjEcrit', 'lib', '5', 'Text'),
(297, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjEcrit', 'lib', '5', 'Archivo de texto'),
(298, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjEcrit', 'lib', '6', 'Transcription text'),
(299, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjEcrit', 'lib', '6', 'Transcription text'),
(300, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjEcrit', 'lib', '6', 'Texto transcripción'),
(301, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjEcrit', 'lib', '7', 'Presentation'),
(302, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjEcrit', 'lib', '7', 'Presentation'),
(303, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypObjEcrit', 'lib', '7', 'Archivo de presentación'),
(304, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeComposant', 'lib', '1', 'Interview'),
(305, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeComposant', 'lib', '1', 'Interview'),
(306, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeComposant', 'lib', '1', 'Entrevista'),
(307, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeComposant', 'lib', '2', 'Programme extract'),
(308, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeComposant', 'lib', '2', 'Programme extract'),
(309, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeComposant', 'lib', '2', 'Fragmento programa'),
(310, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeComposant', 'lib', '3', 'Film extract'),
(311, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeComposant', 'lib', '3', 'Film extract'),
(312, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeComposant', 'lib', '3', 'Fragmento película'),
(313, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeComposant', 'lib', '4', 'EN_Réunion privée'),
(314, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeComposant', 'lib', '4', 'EN_Réunion privée'),
(315, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeComposant', 'lib', '4', 'ES_Réunion privée'),
(316, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeComposant', 'lib', '5', 'Meeting'),
(317, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeComposant', 'lib', '5', 'Meeting'),
(318, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeComposant', 'lib', '5', 'Reunión'),
(319, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeComposant', 'lib', '6', 'Private scene'),
(320, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeComposant', 'lib', '6', 'Private scene'),
(321, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeComposant', 'lib', '6', 'Esfera privada'),
(322, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeComposant', 'lib', '7', 'Public scene'),
(323, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeComposant', 'lib', '7', 'Public scene'),
(324, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeComposant', 'lib', '7', 'Esfera pública'),
(325, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeComposant', 'lib', '8', 'Witness account'),
(326, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeComposant', 'lib', '8', 'Witness account'),
(327, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypeComposant', 'lib', '8', 'Testimonio'),
(328, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypFichier', 'lib', '1', 'PDF'),
(329, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypFichier', 'lib', '1', 'PDF'),
(330, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypFichier', 'lib', '1', 'PDF'),
(331, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypFichier', 'lib', '2', 'JPEG'),
(332, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypFichier', 'lib', '2', 'JPEG'),
(333, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypFichier', 'lib', '2', 'JPEG'),
(334, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypFichier', 'lib', '3', 'MP4'),
(335, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypFichier', 'lib', '3', 'MP4'),
(336, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypFichier', 'lib', '3', 'MP4'),
(337, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypFichier', 'lib', '4', 'MP3'),
(338, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypFichier', 'lib', '4', 'MP3'),
(339, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypFichier', 'lib', '4', 'MP3'),
(340, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypFichier', 'lib', '5', 'ODF'),
(341, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypFichier', 'lib', '5', 'ODF'),
(342, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypFichier', 'lib', '5', 'ODF'),
(343, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypFichier', 'lib', '6', 'WAV'),
(344, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypFichier', 'lib', '6', 'WAV'),
(345, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRTypFichier', 'lib', '6', 'WAV'),
(346, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRCommunicabilite', 'lib', '1', 'Public'),
(347, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRCommunicabilite', 'lib', '1', 'Public'),
(348, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRCommunicabilite', 'lib', '1', 'Público'),
(349, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRCommunicabilite', 'lib', '2', 'On request'),
(350, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRCommunicabilite', 'lib', '2', 'On request'),
(351, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRCommunicabilite', 'lib', '2', 'Normal'),
(352, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRCommunicabilite', 'lib', '3', 'Confidential'),
(353, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRCommunicabilite', 'lib', '3', 'Confidential'),
(354, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRCommunicabilite', 'lib', '3', 'Confidencial'),
(355, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRDecision', 'lib', '1', 'Direct communication on the spot'),
(356, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRDecision', 'lib', '1', 'Direct communication on the spot'),
(357, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRDecision', 'lib', '1', 'Comunicación directa in situ'),
(358, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRDecision', 'lib', '2', 'Internet communication'),
(359, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRDecision', 'lib', '2', 'Internet communication'),
(360, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRDecision', 'lib', '2', 'Comunicación Internet'),
(361, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRDecision', 'lib', '3', 'Master communication'),
(362, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRDecision', 'lib', '3', 'Master communication'),
(363, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRDecision', 'lib', '3', 'Comunicación maestra'),
(364, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRDecision', 'lib', '4', 'Confidentiality refusal'),
(365, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRDecision', 'lib', '4', 'Confidentiality refusal'),
(366, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRDecision', 'lib', '4', 'Denegación confidencialidad'),
(367, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRDecision', 'lib', '5', 'Material refusal'),
(368, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRDecision', 'lib', '5', 'Material refusal'),
(369, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRDecision', 'lib', '5', 'Denegación material'),
(370, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRCauseNonDiff', 'lib', '1', 'EN_Confidentialité'),
(371, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRCauseNonDiff', 'lib', '1', 'EN_Confidentialité'),
(372, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRCauseNonDiff', 'lib', '1', 'ES_Confidentialité'),
(373, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRCauseNonDiff', 'lib', '2', 'EN_Non disponible'),
(374, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRCauseNonDiff', 'lib', '2', 'EN_Non disponible'),
(375, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRCauseNonDiff', 'lib', '2', 'ES_Non disponible'),
(376, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRCauseNonDiff', 'lib', '3', 'EN_Non transmissible par internet'),
(377, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRCauseNonDiff', 'lib', '3', 'EN_Non transmissible par internet'),
(378, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRCauseNonDiff', 'lib', '3', 'ES_Non transmissible par internet'),
(379, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaREtatObj', 'lib', '1', '01-Deposited'),
(380, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaREtatObj', 'lib', '1', '01-Deposited'),
(381, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaREtatObj', 'lib', '1', '01-Registrado'),
(382, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaREtatObj', 'lib', '2', '02-Sorted/filed'),
(383, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaREtatObj', 'lib', '2', '02-Sorted/filed'),
(384, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaREtatObj', 'lib', '2', '02-Separado/clasificado'),
(385, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaREtatObj', 'lib', '3', '03-Cleaned'),
(386, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaREtatObj', 'lib', '3', '03-Cleaned'),
(387, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaREtatObj', 'lib', '3', '03-Limpio'),
(388, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaREtatObj', 'lib', '4', '04-Described'),
(389, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaREtatObj', 'lib', '4', '04-Described'),
(390, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaREtatObj', 'lib', '4', '04-Descrito'),
(391, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaREtatObj', 'lib', '5', 'EN_05-Éliminé'),
(392, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaREtatObj', 'lib', '5', 'EN_05-Éliminé'),
(393, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaREtatObj', 'lib', '5', 'ES_05-Éliminé'),
(394, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaREtatObj', 'lib', '6', 'EN_06-Renommé'),
(395, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaREtatObj', 'lib', '6', 'EN_06-Renommé'),
(396, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaREtatObj', 'lib', '6', 'ES_06-Renommé'),
(397, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaREtatObj', 'lib', '7', 'EN_07-Formats Conformes'),
(398, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaREtatObj', 'lib', '7', 'EN_07-Formats Conformes'),
(399, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaREtatObj', 'lib', '7', 'ES_07-Formats Conformes'),
(400, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaREtatObj', 'lib', '8', 'EN_08-Arborescence Vérifiée'),
(401, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaREtatObj', 'lib', '8', 'EN_08-Arborescence Vérifiée'),
(402, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaREtatObj', 'lib', '8', 'ES_08-Arborescence Vérifiée'),
(403, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaREtatObj', 'lib', '9', 'EN_09-Instrument de Recherche'),
(404, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaREtatObj', 'lib', '9', 'EN_09-Instrument de Recherche'),
(405, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaREtatObj', 'lib', '9', 'ES_09-Instrument de Recherche'),
(406, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaREtatObj', 'lib', '10', '10-Published'),
(407, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaREtatObj', 'lib', '10', '10-Published'),
(408, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaREtatObj', 'lib', '10', '10-Publicado'),
(409, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaREtatObj', 'lib', '11', 'EN_11-Numérisé'),
(410, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaREtatObj', 'lib', '11', 'EN_11-Numérisé'),
(411, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaREtatObj', 'lib', '11', 'ES_11-Numérisé'),
(412, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRPays', 'lib', '1', 'Germany'),
(413, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRPays', 'lib', '1', 'Germany'),
(414, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRPays', 'lib', '1', 'Alemania'),
(415, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRPays', 'lib', '2', 'Spain'),
(416, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRPays', 'lib', '2', 'Spain'),
(417, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRPays', 'lib', '2', 'Espana'),
(418, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRPays', 'lib', '3', 'United States'),
(419, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRPays', 'lib', '3', 'United States'),
(420, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRPays', 'lib', '3', 'Etados Unidos'),
(421, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRPays', 'lib', '4', 'France'),
(422, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRPays', 'lib', '4', 'France'),
(423, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRPays', 'lib', '4', 'Francia'),
(424, 'en_EN', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRPays', 'lib', '5', 'United Kingdom'),
(425, 'en_US', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRPays', 'lib', '5', 'United Kingdom'),
(426, 'es_ES', 'Atdqmarch\\ArchivageBundle\\Entity\\AaRPays', 'lib', '5', 'Reino Unido');

-- --------------------------------------------------------

--
-- Structure de la table `migration_versions`
--

DROP TABLE IF EXISTS `migration_versions`;
CREATE TABLE `migration_versions` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELATIONS POUR LA TABLE `migration_versions`:
--

--
-- Vider la table avant d'insérer `migration_versions`
--

TRUNCATE TABLE `migration_versions`;
--
-- Contenu de la table `migration_versions`
--

INSERT INTO `migration_versions` (`version`) VALUES
('20171109094914'),
('20171109115301'),
('20171109133545'),
('20171109145150'),
('20171109153915'),
('20171109160524'),
('20171109163841'),
('20171109170052'),
('20171110084659'),
('20171110085704'),
('20171110090445'),
('20171110091208'),
('20171110092844'),
('20171110093832'),
('20171110094348'),
('20171110094908'),
('20171110100356'),
('20171110134704'),
('20171110144142'),
('20171111144142'),
('20171113133102'),
('20171113144416'),
('20180111130148'),
('20180111143828');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `aa_r_cause_non_diff`
--
ALTER TABLE `aa_r_cause_non_diff`
  ADD PRIMARY KEY (`cnondiff_id`),
  ADD KEY `IDX_567ED99DA990D0DE` (`typ_ref_id`),
  ADD KEY `FK_aa_r_cause_non_diff_typ_ref_id` (`cnondiff_id`);

--
-- Index pour la table `aa_r_communicabilite`
--
ALTER TABLE `aa_r_communicabilite`
  ADD PRIMARY KEY (`communic_id`),
  ADD KEY `IDX_49C7C713A990D0DE` (`typ_ref_id`),
  ADD KEY `FK_aa_r_communicabilite_typ_ref_id` (`communic_id`);

--
-- Index pour la table `aa_r_decision`
--
ALTER TABLE `aa_r_decision`
  ADD PRIMARY KEY (`decision_id`),
  ADD KEY `IDX_3A79F6FFA990D0DE` (`typ_ref_id`),
  ADD KEY `FK_aa_r_decision_typ_ref_id` (`decision_id`);

--
-- Index pour la table `aa_r_etat_obj`
--
ALTER TABLE `aa_r_etat_obj`
  ADD PRIMARY KEY (`eta_obj_id`),
  ADD KEY `IDX_BE684543A990D0DE` (`typ_ref_id`),
  ADD KEY `FK_aa_r_etat_obj_typ_ref_id` (`eta_obj_id`);

--
-- Index pour la table `aa_r_langue`
--
ALTER TABLE `aa_r_langue`
  ADD PRIMARY KEY (`lang_id`),
  ADD KEY `IDX_706EC263A990D0DE` (`typ_ref_id`),
  ADD KEY `FK_aa_r_langue_typ_ref_id` (`lang_id`);

--
-- Index pour la table `aa_r_lien_avec_ATD`
--
ALTER TABLE `aa_r_lien_avec_ATD`
  ADD PRIMARY KEY (`lien_atd_id`),
  ADD KEY `IDX_38C11001A990D0DE` (`typ_ref_id`),
  ADD KEY `FK_aa_r_lien_avec_ATD_typ_ref_id` (`lien_atd_id`);

--
-- Index pour la table `aa_r_motif`
--
ALTER TABLE `aa_r_motif`
  ADD PRIMARY KEY (`motif_id`),
  ADD KEY `IDX_DD6F8833A990D0DE` (`typ_ref_id`),
  ADD KEY `FK_aa_r_motif_typ_ref_id` (`motif_id`);

--
-- Index pour la table `aa_r_pays`
--
ALTER TABLE `aa_r_pays`
  ADD PRIMARY KEY (`pays_id`),
  ADD UNIQUE KEY `UNIQ_8DBFAF507B9B7619` (`pays_iso`),
  ADD KEY `IDX_8DBFAF50A990D0DE` (`typ_ref_id`),
  ADD KEY `FK_aa_r_pays_typ_ref_id` (`pays_id`);

--
-- Index pour la table `aa_r_role`
--
ALTER TABLE `aa_r_role`
  ADD PRIMARY KEY (`role_id`),
  ADD KEY `IDX_EE491994A990D0DE` (`typ_ref_id`),
  ADD KEY `FK_aa_r_role_typ_ref_id` (`role_id`);

--
-- Index pour la table `aa_r_type_composant`
--
ALTER TABLE `aa_r_type_composant`
  ADD PRIMARY KEY (`typ_comp_id`),
  ADD KEY `IDX_E9446D2DA990D0DE` (`typ_ref_id`),
  ADD KEY `FK_aa_r_type_composant_typ_ref_id` (`typ_comp_id`);

--
-- Index pour la table `aa_r_type_reference`
--
ALTER TABLE `aa_r_type_reference`
  ADD PRIMARY KEY (`typ_ref_id`);

--
-- Index pour la table `aa_r_type_theque`
--
ALTER TABLE `aa_r_type_theque`
  ADD PRIMARY KEY (`typ_teq_id`),
  ADD KEY `IDX_93B7AF8FA990D0DE` (`typ_ref_id`),
  ADD KEY `FK_aa_r_type_theque_typ_ref_id` (`typ_teq_id`);

--
-- Index pour la table `aa_r_typ_elem_de_struct`
--
ALTER TABLE `aa_r_typ_elem_de_struct`
  ADD PRIMARY KEY (`typ_el_struc_id`),
  ADD KEY `IDX_2AA92166A990D0DE` (`typ_ref_id`),
  ADD KEY `FK_aa_r_typ_elem_de_struct_typ_ref_id` (`typ_el_struc_id`);

--
-- Index pour la table `aa_r_typ_fichier`
--
ALTER TABLE `aa_r_typ_fichier`
  ADD PRIMARY KEY (`typ_fic_id`),
  ADD KEY `IDX_5B979D6CA990D0DE` (`typ_ref_id`),
  ADD KEY `FK_aa_r_typ_fichier_typ_ref_id` (`typ_fic_id`);

--
-- Index pour la table `aa_r_typ_obj_art`
--
ALTER TABLE `aa_r_typ_obj_art`
  ADD PRIMARY KEY (`typ_obj_art_id`),
  ADD KEY `IDX_26D7FA0EA990D0DE` (`typ_ref_id`),
  ADD KEY `FK_aa_r_typ_obj_art_typ_ref_id` (`typ_obj_art_id`);

--
-- Index pour la table `aa_r_typ_obj_audio`
--
ALTER TABLE `aa_r_typ_obj_audio`
  ADD PRIMARY KEY (`typ_obj_aud_id`),
  ADD KEY `IDX_6AF1354AA990D0DE` (`typ_ref_id`),
  ADD KEY `FK_aa_r_typ_obj_audio_typ_ref_id` (`typ_obj_aud_id`);

--
-- Index pour la table `aa_r_typ_obj_ecrit`
--
ALTER TABLE `aa_r_typ_obj_ecrit`
  ADD PRIMARY KEY (`typ_obj_ecr_id`),
  ADD KEY `IDX_78CD8DE7A990D0DE` (`typ_ref_id`),
  ADD KEY `FK_aa_r_typ_obj_ecrit_typ_ref_id` (`typ_obj_ecr_id`);

--
-- Index pour la table `aa_r_typ_obj_photo`
--
ALTER TABLE `aa_r_typ_obj_photo`
  ADD PRIMARY KEY (`typ_obj_pho_id`),
  ADD KEY `IDX_663B87C7A990D0DE` (`typ_ref_id`),
  ADD KEY `FK_aa_r_typ_obj_photo_typ_ref_id` (`typ_obj_pho_id`);

--
-- Index pour la table `aa_r_typ_obj_video`
--
ALTER TABLE `aa_r_typ_obj_video`
  ADD PRIMARY KEY (`typ_obj_vid_id`),
  ADD KEY `IDX_E4BD9F3A990D0DE` (`typ_ref_id`),
  ADD KEY `FK_aa_r_typ_obj_video_typ_ref_id` (`typ_obj_vid_id`);

--
-- Index pour la table `aa_theque`
--
ALTER TABLE `aa_theque`
  ADD PRIMARY KEY (`teq_id`),
  ADD KEY `IDX_6B67D65BA6E44244` (`pays_id`),
  ADD KEY `FK_aa_theque_ttq_id` (`typ_teq_id`);

--
-- Index pour la table `aa_utilisateur`
--
ALTER TABLE `aa_utilisateur`
  ADD PRIMARY KEY (`usr_id`),
  ADD KEY `IDX_2B780361D0EEB819` (`motif_id`),
  ADD KEY `FK_aa_utilisateur_lang_id` (`lang_id`),
  ADD KEY `FK_aa_utilisateur_lie_type_id` (`lien_atd_id`);

--
-- Index pour la table `a_pour_role_aff`
--
ALTER TABLE `a_pour_role_aff`
  ADD PRIMARY KEY (`pour_role_id`),
  ADD UNIQUE KEY `unique_usr_theque_role_periode` (`usr_id`,`role_id`,`teq_id`,`rol_dat_deb`,`rol_dat_fin`),
  ADD KEY `IDX_9DFB639BD60322AC` (`role_id`),
  ADD KEY `FK_a_pour_role_aff_usr_id` (`usr_id`),
  ADD KEY `FK_a_pour_role_aff_teq_id` (`teq_id`);

--
-- Index pour la table `est_administrateur`
--
ALTER TABLE `est_administrateur`
  ADD PRIMARY KEY (`estadmin_id`),
  ADD UNIQUE KEY `unique_usr_datdeb_datfin` (`usr_id`,`admin_dat_deb`,`admin_dat_fin`),
  ADD KEY `IDX_61120013C69D3FB` (`usr_id`),
  ADD KEY `IDX_61120013D60322AC` (`role_id`),
  ADD KEY `FK_est_administrateur_id` (`estadmin_id`);

--
-- Index pour la table `ext_translations`
--
ALTER TABLE `ext_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lookup_unique_idx` (`locale`,`object_class`,`field`,`foreign_key`),
  ADD KEY `translations_lookup_idx` (`locale`,`object_class`,`foreign_key`);

--
-- Index pour la table `migration_versions`
--
ALTER TABLE `migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `aa_r_cause_non_diff`
--
ALTER TABLE `aa_r_cause_non_diff`
  MODIFY `cnondiff_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `aa_r_communicabilite`
--
ALTER TABLE `aa_r_communicabilite`
  MODIFY `communic_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `aa_r_decision`
--
ALTER TABLE `aa_r_decision`
  MODIFY `decision_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `aa_r_etat_obj`
--
ALTER TABLE `aa_r_etat_obj`
  MODIFY `eta_obj_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT pour la table `aa_r_langue`
--
ALTER TABLE `aa_r_langue`
  MODIFY `lang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `aa_r_lien_avec_ATD`
--
ALTER TABLE `aa_r_lien_avec_ATD`
  MODIFY `lien_atd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `aa_r_motif`
--
ALTER TABLE `aa_r_motif`
  MODIFY `motif_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT pour la table `aa_r_pays`
--
ALTER TABLE `aa_r_pays`
  MODIFY `pays_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `aa_r_role`
--
ALTER TABLE `aa_r_role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `aa_r_type_composant`
--
ALTER TABLE `aa_r_type_composant`
  MODIFY `typ_comp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `aa_r_type_reference`
--
ALTER TABLE `aa_r_type_reference`
  MODIFY `typ_ref_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT pour la table `aa_r_type_theque`
--
ALTER TABLE `aa_r_type_theque`
  MODIFY `typ_teq_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `aa_r_typ_elem_de_struct`
--
ALTER TABLE `aa_r_typ_elem_de_struct`
  MODIFY `typ_el_struc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `aa_r_typ_fichier`
--
ALTER TABLE `aa_r_typ_fichier`
  MODIFY `typ_fic_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `aa_r_typ_obj_art`
--
ALTER TABLE `aa_r_typ_obj_art`
  MODIFY `typ_obj_art_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `aa_r_typ_obj_audio`
--
ALTER TABLE `aa_r_typ_obj_audio`
  MODIFY `typ_obj_aud_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `aa_r_typ_obj_ecrit`
--
ALTER TABLE `aa_r_typ_obj_ecrit`
  MODIFY `typ_obj_ecr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `aa_r_typ_obj_photo`
--
ALTER TABLE `aa_r_typ_obj_photo`
  MODIFY `typ_obj_pho_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `aa_r_typ_obj_video`
--
ALTER TABLE `aa_r_typ_obj_video`
  MODIFY `typ_obj_vid_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT pour la table `aa_theque`
--
ALTER TABLE `aa_theque`
  MODIFY `teq_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `aa_utilisateur`
--
ALTER TABLE `aa_utilisateur`
  MODIFY `usr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `a_pour_role_aff`
--
ALTER TABLE `a_pour_role_aff`
  MODIFY `pour_role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT pour la table `est_administrateur`
--
ALTER TABLE `est_administrateur`
  MODIFY `estadmin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `ext_translations`
--
ALTER TABLE `ext_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=427;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `aa_r_cause_non_diff`
--
ALTER TABLE `aa_r_cause_non_diff`
  ADD CONSTRAINT `FK_567ED99DA990D0DE` FOREIGN KEY (`typ_ref_id`) REFERENCES `aa_r_type_reference` (`typ_ref_id`);

--
-- Contraintes pour la table `aa_r_communicabilite`
--
ALTER TABLE `aa_r_communicabilite`
  ADD CONSTRAINT `FK_49C7C713A990D0DE` FOREIGN KEY (`typ_ref_id`) REFERENCES `aa_r_type_reference` (`typ_ref_id`);

--
-- Contraintes pour la table `aa_r_decision`
--
ALTER TABLE `aa_r_decision`
  ADD CONSTRAINT `FK_3A79F6FFA990D0DE` FOREIGN KEY (`typ_ref_id`) REFERENCES `aa_r_type_reference` (`typ_ref_id`);

--
-- Contraintes pour la table `aa_r_etat_obj`
--
ALTER TABLE `aa_r_etat_obj`
  ADD CONSTRAINT `FK_BE684543A990D0DE` FOREIGN KEY (`typ_ref_id`) REFERENCES `aa_r_type_reference` (`typ_ref_id`);

--
-- Contraintes pour la table `aa_r_langue`
--
ALTER TABLE `aa_r_langue`
  ADD CONSTRAINT `FK_706EC263A990D0DE` FOREIGN KEY (`typ_ref_id`) REFERENCES `aa_r_type_reference` (`typ_ref_id`);

--
-- Contraintes pour la table `aa_r_lien_avec_ATD`
--
ALTER TABLE `aa_r_lien_avec_ATD`
  ADD CONSTRAINT `FK_38C11001A990D0DE` FOREIGN KEY (`typ_ref_id`) REFERENCES `aa_r_type_reference` (`typ_ref_id`);

--
-- Contraintes pour la table `aa_r_motif`
--
ALTER TABLE `aa_r_motif`
  ADD CONSTRAINT `FK_DD6F8833A990D0DE` FOREIGN KEY (`typ_ref_id`) REFERENCES `aa_r_type_reference` (`typ_ref_id`);

--
-- Contraintes pour la table `aa_r_pays`
--
ALTER TABLE `aa_r_pays`
  ADD CONSTRAINT `FK_8DBFAF50A990D0DE` FOREIGN KEY (`typ_ref_id`) REFERENCES `aa_r_type_reference` (`typ_ref_id`);

--
-- Contraintes pour la table `aa_r_role`
--
ALTER TABLE `aa_r_role`
  ADD CONSTRAINT `FK_EE491994A990D0DE` FOREIGN KEY (`typ_ref_id`) REFERENCES `aa_r_type_reference` (`typ_ref_id`);

--
-- Contraintes pour la table `aa_r_type_composant`
--
ALTER TABLE `aa_r_type_composant`
  ADD CONSTRAINT `FK_E9446D2DA990D0DE` FOREIGN KEY (`typ_ref_id`) REFERENCES `aa_r_type_reference` (`typ_ref_id`);

--
-- Contraintes pour la table `aa_r_type_theque`
--
ALTER TABLE `aa_r_type_theque`
  ADD CONSTRAINT `FK_93B7AF8FA990D0DE` FOREIGN KEY (`typ_ref_id`) REFERENCES `aa_r_type_reference` (`typ_ref_id`);

--
-- Contraintes pour la table `aa_r_typ_elem_de_struct`
--
ALTER TABLE `aa_r_typ_elem_de_struct`
  ADD CONSTRAINT `FK_2AA92166A990D0DE` FOREIGN KEY (`typ_ref_id`) REFERENCES `aa_r_type_reference` (`typ_ref_id`);

--
-- Contraintes pour la table `aa_r_typ_fichier`
--
ALTER TABLE `aa_r_typ_fichier`
  ADD CONSTRAINT `FK_5B979D6CA990D0DE` FOREIGN KEY (`typ_ref_id`) REFERENCES `aa_r_type_reference` (`typ_ref_id`);

--
-- Contraintes pour la table `aa_r_typ_obj_art`
--
ALTER TABLE `aa_r_typ_obj_art`
  ADD CONSTRAINT `FK_26D7FA0EA990D0DE` FOREIGN KEY (`typ_ref_id`) REFERENCES `aa_r_type_reference` (`typ_ref_id`);

--
-- Contraintes pour la table `aa_r_typ_obj_audio`
--
ALTER TABLE `aa_r_typ_obj_audio`
  ADD CONSTRAINT `FK_6AF1354AA990D0DE` FOREIGN KEY (`typ_ref_id`) REFERENCES `aa_r_type_reference` (`typ_ref_id`);

--
-- Contraintes pour la table `aa_r_typ_obj_ecrit`
--
ALTER TABLE `aa_r_typ_obj_ecrit`
  ADD CONSTRAINT `FK_78CD8DE7A990D0DE` FOREIGN KEY (`typ_ref_id`) REFERENCES `aa_r_type_reference` (`typ_ref_id`);

--
-- Contraintes pour la table `aa_r_typ_obj_photo`
--
ALTER TABLE `aa_r_typ_obj_photo`
  ADD CONSTRAINT `FK_663B87C7A990D0DE` FOREIGN KEY (`typ_ref_id`) REFERENCES `aa_r_type_reference` (`typ_ref_id`);

--
-- Contraintes pour la table `aa_r_typ_obj_video`
--
ALTER TABLE `aa_r_typ_obj_video`
  ADD CONSTRAINT `FK_E4BD9F3A990D0DE` FOREIGN KEY (`typ_ref_id`) REFERENCES `aa_r_type_reference` (`typ_ref_id`);

--
-- Contraintes pour la table `aa_theque`
--
ALTER TABLE `aa_theque`
  ADD CONSTRAINT `FK_6B67D65BA6E44244` FOREIGN KEY (`pays_id`) REFERENCES `aa_r_pays` (`pays_id`),
  ADD CONSTRAINT `FK_6B67D65BB2075CE5` FOREIGN KEY (`typ_teq_id`) REFERENCES `aa_r_type_theque` (`typ_teq_id`);

--
-- Contraintes pour la table `aa_utilisateur`
--
ALTER TABLE `aa_utilisateur`
  ADD CONSTRAINT `FK_2B780361B213FA4` FOREIGN KEY (`lang_id`) REFERENCES `aa_r_langue` (`lang_id`),
  ADD CONSTRAINT `FK_2B780361D0EEB819` FOREIGN KEY (`motif_id`) REFERENCES `aa_r_motif` (`motif_id`),
  ADD CONSTRAINT `FK_2B780361F80D9313` FOREIGN KEY (`lien_atd_id`) REFERENCES `aa_r_lien_avec_ATD` (`lien_atd_id`);

--
-- Contraintes pour la table `a_pour_role_aff`
--
ALTER TABLE `a_pour_role_aff`
  ADD CONSTRAINT `FK_9DFB639B3A20CD92` FOREIGN KEY (`teq_id`) REFERENCES `aa_theque` (`teq_id`),
  ADD CONSTRAINT `FK_9DFB639BC69D3FB` FOREIGN KEY (`usr_id`) REFERENCES `aa_utilisateur` (`usr_id`),
  ADD CONSTRAINT `FK_9DFB639BD60322AC` FOREIGN KEY (`role_id`) REFERENCES `aa_r_role` (`role_id`);

--
-- Contraintes pour la table `est_administrateur`
--
ALTER TABLE `est_administrateur`
  ADD CONSTRAINT `FK_61120013C69D3FB` FOREIGN KEY (`usr_id`) REFERENCES `aa_utilisateur` (`usr_id`),
  ADD CONSTRAINT `FK_61120013D60322AC` FOREIGN KEY (`role_id`) REFERENCES `aa_r_role` (`role_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
