-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le :  mar. 03 déc. 2019 à 18:47
-- Version du serveur :  10.1.37-MariaDB
-- Version de PHP :  7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `BaseForm`
--
CREATE DATABASE IF NOT EXISTS `BaseForm` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `BaseForm`;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_10_18_235435_create_tbl_admin_table', 1),
(2, '2019_10_19_005559_create_tbl_admin_table', 2),
(3, '2019_10_19_012330_create_tbl_admin_table', 3),
(4, '2019_10_21_093416_create_tbl_admin_table', 4),
(5, '2019_10_22_133249_create_tbl_of_table', 5),
(6, '2019_10_22_134105_create_tbl_of_table', 6),
(7, '2019_10_22_140902_create_tbl_of_table', 7),
(8, '2019_10_22_153857_create_tbl_of_table', 8),
(9, '2019_10_22_154814_create_tbl_of_table', 9),
(10, '2019_10_22_162027_create_tbl_of_table', 10),
(11, '2019_10_23_091540_create_tbl_eu_table', 11),
(12, '2019_10_23_105400_create_tbl_eu_table', 12),
(13, '2019_10_23_110938_create_tbl_eu_table', 13),
(14, '2019_10_23_111247_create_tbl_eu_table', 14),
(15, '2019_10_23_115430_create_tbl_ei_table', 15),
(16, '2019_10_23_140817_create_tbl_itv_table', 16),
(17, '2019_10_24_094533_create_tbl_formateurs_table', 17),
(18, '2019_10_24_113657_create_tbl_formations_table', 18),
(19, '2019_10_24_140521_create_tbl_formations_table', 19),
(20, '2019_10_24_151703_create_tbl_evenements_table', 20),
(21, '2019_10_24_152242_create_tbl_evenements_table', 21),
(22, '2019_10_24_152345_create_tbl_evenements_table', 22),
(23, '2019_10_24_165106_create_tbl_evenements_table', 23),
(24, '2019_10_25_124703_create_tbl_documents_table', 24),
(25, '2019_10_30_133852_create_tbl_entreprise_utilisatrices_table', 25),
(26, '2019_10_31_155614_create_tbl_admin_table', 26),
(27, '2019_10_31_175023_create_tbl_admin_table', 27),
(28, '2019_10_31_180232_create_tbl_admin_table', 28),
(29, '2019_11_02_213142_create_tbl_organisme_formation_table', 29),
(30, '2019_11_02_230922_create_tbl_stagiaires_table', 30),
(31, '2019_11_03_000509_create_tbl_entreprise_utilisatrices', 30),
(32, '2019_11_03_000829_create_tbl_organisme_formation_', 30),
(33, '2019_11_03_034318_create_tbl_stagiaires_table', 31),
(34, '2019_11_03_040807_create_tbl_stagiaires_table', 32),
(35, '2019_11_03_073745_create_tbl_entreprise_intervenantes_table', 33),
(36, '2019_11_03_080653_create_tbl_entreprise_intervenantes_table', 34),
(37, '2019_11_04_134403_create_tbl_documents_table', 35),
(38, '2019_11_04_152600_create_tbl_documents_table', 36),
(39, '2019_11_04_183104_create_tbl_documents_table', 37),
(40, '2019_11_08_203502_create_tbl_formateurs_table', 38),
(41, '2019_11_08_211102_create_tbl_organisme_formation_table', 39),
(42, '2019_11_08_223129_create_tbl_formations_table', 39),
(43, '2019_11_09_015022_create_tbl_organisme_formation_table', 40),
(44, '2019_11_10_183949_create_tbl_formateurs_table', 41),
(45, '2019_11_11_111242_create_tbl_stagiaires_table', 42),
(46, '2019_11_11_120213_create_tbl_stagiaires_table', 43),
(47, '2019_11_11_135410_create_tbl_stagiaires_table', 44),
(48, '2019_11_11_172120_create_tbl_stagiaires_table', 45),
(49, '2019_11_11_172325_create_tbl_formateurs_table', 46),
(50, '2019_11_11_173401_create_tbl_entreprise_utilisatrices_table', 47),
(51, '2019_11_11_173836_create_tbl_entreprise_utilisatrices_table', 48),
(52, '2019_11_11_174014_create_tbl_entreprise_utilisatrices_table', 49),
(53, '2019_11_11_190433_create_tbl_entreprise_intervenantes_table', 50),
(54, '2019_11_11_193057_create_tbl_entreprise_intervenantes_table', 51),
(55, '2019_11_11_193125_create_tbl_entreprise_utilisatrices_table', 51),
(56, '2019_11_11_205112_create_tbl_organisme_formation_table', 52),
(57, '2019_11_12_154908_create_tbl_entreprise_intervenantes_table', 53),
(58, '2019_11_13_145220_create_tbl_organisme_formation_table', 54),
(59, '2019_11_13_210704_create_tbl_organisme_formation_table', 55),
(60, '2019_11_13_225200_create_tbl_organisme_formation_table', 56),
(61, '2019_11_14_132451_create_tbl_intervenants_table', 57),
(62, '2019_11_14_134517_create_tbl_intervenants_table', 58);

-- --------------------------------------------------------

--
-- Structure de la table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(10) UNSIGNED NOT NULL,
  `admin_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_structure` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_phone` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_role` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_status` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_role` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_prenom` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_image` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_email`, `admin_password`, `admin_structure`, `admin_phone`, `admin_role`, `admin_status`, `user_role`, `admin_prenom`, `token`, `admin_image`, `created_at`, `updated_at`) VALUES
(1, 'masesenegal@gmail.com', '1c597cb038f9a2a514b2bf1348c317b4', NULL, '0775963185', '1', '1', NULL, 'Mase-sénégal', '', 'image/4GrUvgHAFFV5jINy4SFx.png', '2019-11-04 15:59:55', '2019-11-14 13:14:49'),
(2, 'dihambouroslyn@gmail.com', '1c597cb038f9a2a514b2bf1348c317b4', 'APAVE', '0775963185', '3', '1', '3', 'apave', '', 'image/0BGderYPDw2cZ1WY8d3g.jpg', '2019-11-14 15:16:12', '2019-11-14 15:16:57');

-- --------------------------------------------------------

--
-- Structure de la table `tbl_documents`
--

CREATE TABLE `tbl_documents` (
  `doc_id` int(10) UNSIGNED NOT NULL,
  `doc_name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `doc_contenu` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `doc_file` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `tbl_documents`
--

INSERT INTO `tbl_documents` (`doc_id`, `doc_name`, `doc_contenu`, `doc_file`, `created_at`, `updated_at`) VALUES
(1, 'Cahier de charge', 'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n\'a pas fait que survivre cinq siècles, mais s\'est aussi adapté à la bureautique informatique, sans que son contenu n\'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.', 'guide_administration_mase.pdf', '2019-11-06 10:44:07', '2019-11-12 12:41:53');

-- --------------------------------------------------------

--
-- Structure de la table `tbl_entreprise_intervenantes`
--

CREATE TABLE `tbl_entreprise_intervenantes` (
  `ei_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ei_adresse` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ei_email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ei_secteurA` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ei_phone` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ei_time` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ei_etat` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ei_date_fin` varchar(90) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ei_date_ad` varchar(90) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ei_date_debut` varchar(90) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ei_eu` varchar(90) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ei_a_eu` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ei_nameDi` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_role` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ei_status` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `tbl_entreprise_intervenantes`
--

INSERT INTO `tbl_entreprise_intervenantes` (`ei_id`, `name`, `ei_adresse`, `ei_email`, `ei_secteurA`, `ei_phone`, `ei_time`, `ei_etat`, `ei_date_fin`, `ei_date_ad`, `ei_date_debut`, `ei_eu`, `ei_a_eu`, `ei_nameDi`, `user_role`, `ei_status`, `created_at`, `updated_at`) VALUES
(4, 'Total', 'castor', 'esmt@gmail.com', 'Informatique', '0775963185', '3 ans', 'certifie', '2019-11-24', '2019-11-10', '2019-11-24', NULL, NULL, 'Dihambou rosiss', '2', '0', '2019-11-14 15:13:05', '2019-11-14 15:13:05'),
(5, 'Saris congo', 'castor', 'dihambouroslyn@gmail.com', 'Informatique', '0775963185', NULL, 'en demarche', NULL, '2019-11-16', NULL, NULL, NULL, 'Dihambou rosiss', '2', '0', '2019-11-14 15:13:44', '2019-11-14 15:13:44'),
(6, 'Saris congo', 'castor', 'sa@gmail.com', 'Informatique', '0775963185', NULL, 'en demarche', NULL, '2019-11-07', NULL, NULL, NULL, 'Dihambou rosiss', '2', '0', '2019-11-14 15:14:03', '2019-11-14 15:14:03');

-- --------------------------------------------------------

--
-- Structure de la table `tbl_entreprise_utilisatrices`
--

CREATE TABLE `tbl_entreprise_utilisatrices` (
  `eu_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `eu_adresse` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `eu_email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `eu_secteurA` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `eu_efectif` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `eu_phone` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL,
  `eu_time` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eu_etat` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `eu_date_fin` varchar(90) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eu_date_ad` varchar(90) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eu_date_debut` varchar(90) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eu_ei` varchar(90) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eu_contactDe` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `eu_nameDi` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_role` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `eu_status` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `tbl_entreprise_utilisatrices`
--

INSERT INTO `tbl_entreprise_utilisatrices` (`eu_id`, `name`, `eu_adresse`, `eu_email`, `eu_secteurA`, `eu_efectif`, `eu_phone`, `eu_time`, `eu_etat`, `eu_date_fin`, `eu_date_ad`, `eu_date_debut`, `eu_ei`, `eu_contactDe`, `eu_nameDi`, `user_role`, `eu_status`, `created_at`, `updated_at`) VALUES
(1, 'Sococim', 'castor', 'dihambouroslyn@gmail.com', 'Informatique', '1000 membres', '0775963185', NULL, 'normal', '2019-11-15', '2019-11-09', '2019-11-10', NULL, 'diop', 'Dihambou rosiss', '1', '0', '2019-11-14 15:11:56', '2019-11-14 15:11:56');

-- --------------------------------------------------------

--
-- Structure de la table `tbl_evenements`
--

CREATE TABLE `tbl_evenements` (
  `even_id` int(10) UNSIGNED NOT NULL,
  `even_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `even_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `even_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `tbl_evenements`
--

INSERT INTO `tbl_evenements` (`even_id`, `even_name`, `even_date`, `even_description`, `created_at`, `updated_at`) VALUES
(1, 'Mase sortie officiel', '2019-11-30', 'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n\'a pas fait que survivre cinq siècles, mais s\'est aussi adapté à la bureautique informatique, sans que son contenu n\'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.', '2019-11-06 13:31:09', '2019-11-06 13:31:09');

-- --------------------------------------------------------

--
-- Structure de la table `tbl_formateurs`
--

CREATE TABLE `tbl_formateurs` (
  `form_id` int(10) UNSIGNED NOT NULL,
  `form_name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `form_prenom` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `form_adresse` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `form_phone` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `form_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `form_sexe` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `form_etat` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `form_status` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `form_of` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `tbl_formateurs`
--

INSERT INTO `tbl_formateurs` (`form_id`, `form_name`, `form_prenom`, `form_adresse`, `form_phone`, `form_email`, `form_sexe`, `form_etat`, `form_status`, `form_of`, `created_at`, `updated_at`) VALUES
(1, 'rosiss', 'Dihambou', 'castor, dakar', '0775963185', 'rosiss@gmail.com', '1', 'agréé', '1', 'APAVE', '2019-11-14 15:18:37', '2019-11-14 15:23:44');

-- --------------------------------------------------------

--
-- Structure de la table `tbl_formations`
--

CREATE TABLE `tbl_formations` (
  `formt_id` int(10) UNSIGNED NOT NULL,
  `formt_name` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL,
  `formt_time` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `formt_type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `formt_contenu` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `formt_file` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `tbl_formations`
--

INSERT INTO `tbl_formations` (`formt_id`, `formt_name`, `formt_time`, `formt_type`, `formt_contenu`, `formt_file`, `created_at`, `updated_at`) VALUES
(2, 'Risque Industriel (R.I.1)', '2 jours', 'certifie', 'e Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte', 'guide_administration_mase.pdf', '2019-11-09 01:09:09', '2019-11-11 17:11:34'),
(3, 'Risque Industriel (R.I.2)', '4 jours', 'certifie', 'e Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte', 'guide_administration_mase.pdf', '2019-11-09 01:10:19', '2019-11-11 17:11:38'),
(4, 'Appareil Respiration Intégré (A.R.I)', '1 semaines', 'certifie', 'e Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte', 'guide_administration_mase.pdf', '2019-11-09 01:13:22', '2019-11-11 17:11:21'),
(5, 'Jointage', '1 semaines', 'certifie', 'Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte', 'guide_administration_mase.pdf', '2019-11-09 01:14:11', '2019-11-11 17:11:30'),
(6, 'Atmosphère explosible (ATEX)', '1 jours', 'certifie', 'Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte', 'guide_administration_mase.pdf', '2019-11-09 01:17:30', '2019-11-12 13:00:08'),
(7, 'Equipement de production', '1 moi', 'non certif', 'Tzettthsysushss', 'guide_administration_mase (1).pdf', '2019-11-12 10:35:33', '2019-11-13 11:55:11');

-- --------------------------------------------------------

--
-- Structure de la table `tbl_intervenants`
--

CREATE TABLE `tbl_intervenants` (
  `itv_id` int(10) UNSIGNED NOT NULL,
  `itv_code` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `itv_numsec` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `itv_name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `itv_prenom` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `itv_sex` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `itv_date_naiss` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `itv_Lieu_naiss` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `itv_status` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `itv_ei` varchar(90) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `itv_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `tbl_organisme_formation`
--

CREATE TABLE `tbl_organisme_formation` (
  `of_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL,
  `of_adresse` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL,
  `of_email` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL,
  `of_phone` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `of_formation` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `of_etat` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `of_date_debut` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `of_date_fin` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `of_date_ad` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `of_time` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `of_certi` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `of_tok` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `of_status` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_role` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `tbl_organisme_formation`
--

INSERT INTO `tbl_organisme_formation` (`of_id`, `name`, `of_adresse`, `of_email`, `of_phone`, `of_formation`, `of_etat`, `of_date_debut`, `of_date_fin`, `of_date_ad`, `of_time`, `of_certi`, `of_tok`, `of_status`, `user_role`, `created_at`, `updated_at`) VALUES
(1, 'APAVE', 'castor, dakar', 'apave@gmail.com', '0775963185', 'Risque Industriel (R.I.1)', 'agrée', '2019-11-15', '2019-11-16', '2019-11-23', '3 ans', '1', 'xxGBKIRx3M8iDiyNjz2ZYsRvfE4Qnw7MqttkzTOVfUKE0xu1pt', '1', '3', '2019-11-14 15:06:25', '2019-11-14 15:22:34'),
(2, 'APAVE', 'castor, dakar', 'apave@gmail.com', '0775963185', 'Risque Industriel (R.I.2)', 'agrée', '2019-11-16', '2021-04-10', '2019-11-23', '3 ans', '2', 'xxGBKIRx3M8iDiyNjz2ZYsRvfE4Qnw7MqttkzTOVfUKE0xu1pt', '1', '3', '2019-11-14 15:07:42', '2019-11-14 15:23:23');

-- --------------------------------------------------------

--
-- Structure de la table `tbl_stagiaires`
--

CREATE TABLE `tbl_stagiaires` (
  `stag_id` int(10) UNSIGNED NOT NULL,
  `stag_name` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stag_prenom` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stag_email` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stag_adresse` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stag_phone` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stag_structure` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stag_formation` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stag_formateur` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stag_sexe` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stag_date_debu` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stag_date_fin` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stag_status` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stag_validation` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stag_image` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `tbl_stagiaires`
--

INSERT INTO `tbl_stagiaires` (`stag_id`, `stag_name`, `stag_prenom`, `stag_email`, `stag_adresse`, `stag_phone`, `stag_structure`, `stag_formation`, `stag_formateur`, `stag_sexe`, `stag_date_debu`, `stag_date_fin`, `stag_status`, `stag_validation`, `stag_image`, `created_at`, `updated_at`) VALUES
(1, 'rosiss', 'Dihambou', 'dihambouroslyn@gmail.com', 'castor', '0775963185', 'APAVE', 'Risque Industriel (R.I.1)', 'rosiss', '1', '2019-11-17', '2019-11-28', '0', 'certifie', 'image/saTRVryZ5RYNkdppyl0r.jpg', '2019-11-14 15:24:32', '2019-11-14 15:25:01');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `tbl_admin_admin_email_unique` (`admin_email`);

--
-- Index pour la table `tbl_documents`
--
ALTER TABLE `tbl_documents`
  ADD PRIMARY KEY (`doc_id`);

--
-- Index pour la table `tbl_entreprise_intervenantes`
--
ALTER TABLE `tbl_entreprise_intervenantes`
  ADD PRIMARY KEY (`ei_id`);

--
-- Index pour la table `tbl_entreprise_utilisatrices`
--
ALTER TABLE `tbl_entreprise_utilisatrices`
  ADD PRIMARY KEY (`eu_id`);

--
-- Index pour la table `tbl_evenements`
--
ALTER TABLE `tbl_evenements`
  ADD PRIMARY KEY (`even_id`);

--
-- Index pour la table `tbl_formateurs`
--
ALTER TABLE `tbl_formateurs`
  ADD PRIMARY KEY (`form_id`);

--
-- Index pour la table `tbl_formations`
--
ALTER TABLE `tbl_formations`
  ADD PRIMARY KEY (`formt_id`);

--
-- Index pour la table `tbl_intervenants`
--
ALTER TABLE `tbl_intervenants`
  ADD PRIMARY KEY (`itv_id`);

--
-- Index pour la table `tbl_organisme_formation`
--
ALTER TABLE `tbl_organisme_formation`
  ADD PRIMARY KEY (`of_id`);

--
-- Index pour la table `tbl_stagiaires`
--
ALTER TABLE `tbl_stagiaires`
  ADD PRIMARY KEY (`stag_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT pour la table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `tbl_documents`
--
ALTER TABLE `tbl_documents`
  MODIFY `doc_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `tbl_entreprise_intervenantes`
--
ALTER TABLE `tbl_entreprise_intervenantes`
  MODIFY `ei_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `tbl_entreprise_utilisatrices`
--
ALTER TABLE `tbl_entreprise_utilisatrices`
  MODIFY `eu_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `tbl_evenements`
--
ALTER TABLE `tbl_evenements`
  MODIFY `even_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `tbl_formateurs`
--
ALTER TABLE `tbl_formateurs`
  MODIFY `form_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `tbl_formations`
--
ALTER TABLE `tbl_formations`
  MODIFY `formt_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `tbl_intervenants`
--
ALTER TABLE `tbl_intervenants`
  MODIFY `itv_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `tbl_organisme_formation`
--
ALTER TABLE `tbl_organisme_formation`
  MODIFY `of_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `tbl_stagiaires`
--
ALTER TABLE `tbl_stagiaires`
  MODIFY `stag_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Base de données :  `dba_jee`
--
CREATE DATABASE IF NOT EXISTS `dba_jee` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `dba_jee`;

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `libelle` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `libelle`) VALUES
(1, 'admin'),
(2, 'user');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `login` varchar(60) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(2200) NOT NULL,
  `nom` varchar(60) NOT NULL,
  `prenom` varchar(60) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `role` int(11) NOT NULL,
  `changed` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `login`, `password`, `email`, `nom`, `prenom`, `photo`, `role`, `changed`) VALUES
(1, 'rosiss', 'admin', 'dihambouroslyn@gmail.com', 'Dihambou', 'Sagesse', NULL, 1, 0),
(2, 'admin', 'admin', 'dihambouroslyn@gmail.com', 'Dihambou', 'Sagesse', NULL, 1, 0);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role` (`role`),
  ADD KEY `role_2` (`role`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role`) REFERENCES `roles` (`id`);
--
-- Base de données :  `dbLaravel`
--
CREATE DATABASE IF NOT EXISTS `dbLaravel` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `dbLaravel`;
--
-- Base de données :  `dbReact`
--
CREATE DATABASE IF NOT EXISTS `dbReact` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `dbReact`;

-- --------------------------------------------------------

--
-- Structure de la table `people`
--

CREATE TABLE `people` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `telp` varchar(20) NOT NULL,
  `jk` enum('0','1') NOT NULL,
  `pekerjaan` varchar(60) NOT NULL,
  `date_create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `people`
--

INSERT INTO `people` (`id`, `name`, `email`, `tgl_lahir`, `telp`, `jk`, `pekerjaan`, `date_create`) VALUES
(1, 'Sagesse', 'Sagess@gmail.com', '2001-06-09', '666888', '0', 'wiraswasta', '2019-05-27 14:22:16'),
(2, '', '', '1970-01-01', '', '0', '', '2019-05-28 02:17:23');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `people`
--
ALTER TABLE `people`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `people`
--
ALTER TABLE `people`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Base de données :  `dbtest`
--
CREATE DATABASE IF NOT EXISTS `dbtest` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `dbtest`;

-- --------------------------------------------------------

--
-- Structure de la table `agent`
--

CREATE TABLE `agent` (
  `id` int(11) NOT NULL,
  `nom` varchar(60) NOT NULL,
  `prenom` varchar(60) NOT NULL,
  `sage` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `role` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `agent`
--
ALTER TABLE `agent`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sage` (`sage`);

--
-- Index pour la table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `agent`
--
ALTER TABLE `agent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `agent`
--
ALTER TABLE `agent`
  ADD CONSTRAINT `agent_ibfk_1` FOREIGN KEY (`sage`) REFERENCES `role` (`id`);
--
-- Base de données :  `db_crudionic`
--
CREATE DATABASE IF NOT EXISTS `db_crudionic` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_crudionic`;

-- --------------------------------------------------------

--
-- Structure de la table `master_customer`
--

CREATE TABLE `master_customer` (
  `customer_id` int(11) NOT NULL,
  `name_customer` varchar(50) DEFAULT NULL,
  `desc_customer` text,
  `created_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `master_customer`
--

INSERT INTO `master_customer` (`customer_id`, `name_customer`, `desc_customer`, `created_at`) VALUES
(1, 'Chandra Gustiya', 'Yea simple easy', '2019-05-15'),
(2, 'Hi Digital Update IONIC 4', 'Work it yes', '2019-05-15'),
(3, 'GOOD IONIC', 'Channel recommened', '2019-05-15'),
(17, 'IONIC 4 CRUD PHP MYSQL', 'Simple Description', '2019-05-18'),
(18, 'IONIC 4 LOGIN PHP MYSQL', 'Simple Description', '2019-05-18'),
(19, 'IONIC SIMPLE', 'Ionic Simple Description', '2019-05-18'),
(20, 'HAPPY CODING', 'IOnic Happy Simple Description', '2019-05-19'),
(21, 'IONIC EASY', 'Easy Simple Description', '2019-05-19'),
(22, 'IONIC HAPPY', 'Ionic Simple', '2019-05-19'),
(23, 'IONIC', 'Simple Description', '2019-05-19'),
(24, 'IONIC FRAMEWORK XXXXX', 'Simple Description Framework', '2019-05-19'),
(26, 'Une machine Ã  faire', 'desktop', '2019-06-20');

-- --------------------------------------------------------

--
-- Structure de la table `master_user`
--

CREATE TABLE `master_user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `status` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `master_user`
--

INSERT INTO `master_user` (`user_id`, `username`, `password`, `status`) VALUES
(4, 'dev', '5e8edd851d2fdfbd7415232c67367cc3', 'y'),
(5, 'sagesse', '1c597cb038f9a2a514b2bf1348c317b4', 'y');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `master_customer`
--
ALTER TABLE `master_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Index pour la table `master_user`
--
ALTER TABLE `master_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `master_customer`
--
ALTER TABLE `master_customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT pour la table `master_user`
--
ALTER TABLE `master_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Base de données :  `db_firstsite`
--
CREATE DATABASE IF NOT EXISTS `db_firstsite` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_firstsite`;

-- --------------------------------------------------------

--
-- Structure de la table `tbl_first`
--

CREATE TABLE `tbl_first` (
  `no` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tbl_first`
--

INSERT INTO `tbl_first` (`no`, `name`, `address`) VALUES
(3, 'Mugiwara D', 'East Blue'),
(4, '123', '123'),
(5, 'Roronoa zoro', 'East Blue');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `tbl_first`
--
ALTER TABLE `tbl_first`
  ADD PRIMARY KEY (`no`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `tbl_first`
--
ALTER TABLE `tbl_first`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Base de données :  `db_medical`
--
CREATE DATABASE IF NOT EXISTS `db_medical` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_medical`;

-- --------------------------------------------------------

--
-- Structure de la table `medicaments`
--

CREATE TABLE `medicaments` (
  `id` int(11) NOT NULL,
  `libelle` varchar(60) NOT NULL,
  `prix` int(11) NOT NULL,
  `molecul` varchar(60) NOT NULL,
  `quantite` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `medicaments`
--

INSERT INTO `medicaments` (`id`, `libelle`, `prix`, `molecul`, `quantite`) VALUES
(1, 'Verzol', 840, 'albendazole', 10),
(2, 'Doliprane', 1500, 'paracetamol', 5);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `pseudo` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `profil` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `pseudo`, `email`, `password`, `profil`) VALUES
(13, 'sagesse', 'sagesse@gmail.com', 'admin', 'Admin');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `medicaments`
--
ALTER TABLE `medicaments`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `medicaments`
--
ALTER TABLE `medicaments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- Base de données :  `db_notif`
--
CREATE DATABASE IF NOT EXISTS `db_notif` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_notif`;

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `comment_subject` varchar(60) NOT NULL,
  `comment_text` text NOT NULL,
  `comment_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Base de données :  `hollywood`
--
CREATE DATABASE IF NOT EXISTS `hollywood` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `hollywood`;

-- --------------------------------------------------------

--
-- Structure de la table `ACTEUR`
--

CREATE TABLE `ACTEUR` (
  `idActeur` int(11) NOT NULL,
  `nom` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `ACTEUR`
--

INSERT INTO `ACTEUR` (`idActeur`, `nom`) VALUES
(1, 'Johnny Deep'),
(2, 'Al Pacino'),
(3, 'Suraj Sharma'),
(4, 'Brad Pitt'),
(5, 'Edward Norton'),
(44, 'mmm');

-- --------------------------------------------------------

--
-- Structure de la table `FILM`
--

CREATE TABLE `FILM` (
  `idFilm` int(11) NOT NULL,
  `titre` text NOT NULL,
  `realisateur` text NOT NULL,
  `annee` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `FILM`
--

INSERT INTO `FILM` (`idFilm`, `titre`, `realisateur`, `annee`) VALUES
(1, 'Les évadés', 'Darabont', '1994'),
(2, 'Le parrain', 'Coppola', '1972'),
(3, 'Le parrain 2', 'Coppola', '1974'),
(4, 'L\"odyssée de Pi', 'Ang Lee', '2013'),
(5, 'Chocolat', 'Hallstrom', '2000'),
(6, 'Scarface', 'De Palma', '1983'),
(7, 'Rango', 'Verbinski', '2011');

-- --------------------------------------------------------

--
-- Structure de la table `FILMOGRAPHIE`
--

CREATE TABLE `FILMOGRAPHIE` (
  `idActeur` int(11) NOT NULL,
  `idFilm` int(11) NOT NULL,
  `role` text NOT NULL,
  `salaire` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `FILMOGRAPHIE`
--

INSERT INTO `FILMOGRAPHIE` (`idActeur`, `idFilm`, `role`, `salaire`) VALUES
(2, 2, 'Michael Corleone', '10000'),
(2, 3, 'Michael Corleone', '20000'),
(3, 4, 'Pi', '20000'),
(1, 5, 'Roux', '5000'),
(2, 6, 'Tony Montana', '15000'),
(1, 7, 'Rango', '10000');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `ACTEUR`
--
ALTER TABLE `ACTEUR`
  ADD PRIMARY KEY (`idActeur`);

--
-- Index pour la table `FILM`
--
ALTER TABLE `FILM`
  ADD PRIMARY KEY (`idFilm`);

--
-- Index pour la table `FILMOGRAPHIE`
--
ALTER TABLE `FILMOGRAPHIE`
  ADD PRIMARY KEY (`idFilm`,`idActeur`),
  ADD KEY `fk2` (`idActeur`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `FILMOGRAPHIE`
--
ALTER TABLE `FILMOGRAPHIE`
  ADD CONSTRAINT `fk1` FOREIGN KEY (`idFilm`) REFERENCES `FILM` (`idFilm`),
  ADD CONSTRAINT `fk2` FOREIGN KEY (`idActeur`) REFERENCES `ACTEUR` (`idActeur`);
--
-- Base de données :  `house_rent`
--
CREATE DATABASE IF NOT EXISTS `house_rent` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `house_rent`;

-- --------------------------------------------------------

--
-- Structure de la table `flat`
--

CREATE TABLE `flat` (
  `flat_id` int(11) NOT NULL,
  `flat_name` varchar(20) NOT NULL,
  `flat_contact` varchar(20) NOT NULL,
  `skin` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `flat`
--

INSERT INTO `flat` (`flat_id`, `flat_name`, `flat_contact`, `skin`) VALUES
(1, 'A1', '07-48563', 'red'),
(2, 'A2', '09-546546', 'purple'),
(3, 'A3', '12-87554', 'black'),
(4, 'A4', '23-674346', 'green');

-- --------------------------------------------------------

--
-- Structure de la table `history_log`
--

CREATE TABLE `history_log` (
  `log_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `action` varchar(100) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `history_log`
--

INSERT INTO `history_log` (`log_id`, `user_id`, `action`, `date`) VALUES
(1, 1, 'added 5 of LG 43\" UHD TV UH6100', '2017-02-04 01:10:41'),
(2, 1, 'added 100 of Lotion', '2017-02-04 01:10:49'),
(3, 1, 'added 10 of Rice Cooker', '2017-02-04 01:10:55'),
(4, 1, 'added 5 of Samsung', '2017-02-04 01:11:07'),
(5, 1, 'has logged in the system at ', '2017-02-04 08:22:52'),
(6, 1, 'has logged in the system at ', '2017-02-04 08:51:11'),
(7, 1, 'has logged in the system at ', '2017-02-04 13:13:53'),
(8, 1, 'has logged in the system at ', '2017-02-21 18:56:56'),
(9, 1, 'added a payment of -76.6 for , ', '2017-02-21 00:00:00'),
(10, 1, 'has logged in the system at ', '2018-09-11 02:07:59'),
(11, 1, 'added 10 of LG 43\" UHD TV UH6100', '2018-09-11 02:15:19'),
(12, 1, 'has logged in the system at ', '2018-09-11 22:13:29'),
(13, 6, 'has logged out the system at ', '2018-09-11 22:24:41'),
(14, 7, 'has logged in the system at ', '2018-09-11 22:24:49'),
(15, 7, 'has logged out the system at ', '2018-09-11 22:26:46'),
(16, 1, 'has logged in the system at ', '2018-09-11 22:27:14'),
(17, 1, 'has logged in the system at ', '2018-09-11 22:29:01'),
(18, 6, 'added 500 of Napa', '2018-09-11 23:51:29'),
(19, 7, 'has logged in the system at ', '2018-09-12 12:33:50'),
(20, 6, 'added 5000 of Civit', '2018-09-12 12:43:02'),
(21, 6, 'added 350 of Detol', '2018-09-12 12:43:15'),
(22, 6, 'added 30 of Savlon', '2018-09-12 12:43:25'),
(23, 1, 'has logged in the system at ', '2018-09-12 12:48:29'),
(24, 7, 'has logged in the system at ', '2018-09-28 14:24:42'),
(25, 1, 'has logged in the system at ', '2018-09-28 14:44:29'),
(26, 1, 'has logged in the system at ', '2018-09-28 15:11:24'),
(27, 1, 'has logged in the system at ', '2018-09-29 01:50:14'),
(28, 1, 'has logged out the system at ', '2018-09-29 01:50:18'),
(29, 0, 'has logged out the system at ', '2018-09-29 01:53:20'),
(30, 1, 'has logged in the system at ', '2018-09-29 01:53:28'),
(31, 1, 'has logged out the system at ', '2018-09-29 01:54:01'),
(32, 1, 'has logged in the system at ', '2018-09-29 02:11:35'),
(33, 1, 'has logged out the system at ', '2018-09-29 02:12:12'),
(34, 7, 'has logged in the system at ', '2018-09-29 02:12:32'),
(35, 7, 'added 100 of Savlon', '2018-09-29 02:30:43'),
(36, 7, 'has logged out the system at ', '2018-09-29 02:46:47'),
(37, 7, 'has logged in the system at ', '2018-10-01 18:22:01'),
(38, 7, 'has logged out the system at ', '2018-10-01 18:22:14'),
(39, 7, 'has logged in the system at ', '2018-10-01 18:22:32'),
(40, 7, 'has logged out the system at ', '2018-10-01 18:23:10'),
(41, 7, 'has logged in the system at ', '2018-10-02 14:41:29'),
(42, 7, 'added 789 of Abomin', '2018-10-02 14:45:59'),
(43, 7, 'added 5000 of Acom', '2018-10-02 14:46:05'),
(44, 7, 'added 70 of Auno', '2018-10-02 14:46:11'),
(45, 7, 'added 600 of Hexisol', '2018-10-02 14:46:53'),
(46, 7, 'added 80 of Kelin', '2018-10-02 14:47:07'),
(47, 7, 'added 900 of Oxitosin', '2018-10-02 14:47:16'),
(48, 1, 'has logged in the system at ', '2018-10-14 13:27:18'),
(49, 1, 'has logged out the system at ', '2018-10-25 03:31:07'),
(50, 1, 'has logged in the system at ', '2018-10-25 03:31:15'),
(51, 1, 'has logged out the system at ', '2018-10-25 03:31:17'),
(52, 1, 'has logged in the system at ', '2018-10-27 22:02:17'),
(53, 1, 'has logged out the system at ', '2018-10-27 22:02:21'),
(54, 0, 'has logged out the system at ', '2018-10-27 22:02:25'),
(55, 1, 'has logged in the system at ', '2018-10-27 22:03:09'),
(56, 1, 'has logged out the system at ', '2018-10-27 22:03:12'),
(57, 0, 'has logged out the system at ', '2018-10-27 22:03:16'),
(58, 2, 'has logged out the system at ', '2018-10-27 22:04:21'),
(59, 0, 'has logged out the system at ', '2018-10-27 22:04:26'),
(60, 0, 'has logged out the system at ', '2018-10-27 22:04:39'),
(61, 1, 'has logged in the system at ', '2018-10-31 13:29:45'),
(62, 1, 'has logged out the system at ', '2018-10-31 13:29:49'),
(63, 1, 'has logged in the system at ', '2018-10-31 14:53:43'),
(64, 1, 'has logged out the system at ', '2018-10-31 14:53:46'),
(65, 1, 'has logged in the system at ', '2018-11-06 22:18:55'),
(66, 1, 'has logged in the system at ', '2018-11-06 22:27:55'),
(67, 1, 'has logged out the system at ', '2018-11-06 22:28:12'),
(68, 1, 'has logged in the system at ', '2018-11-06 22:28:30'),
(69, 1, 'has logged in the system at ', '2018-11-06 22:38:15'),
(70, 1, 'has logged out the system at ', '2018-11-06 23:02:41'),
(71, 1, 'has logged in the system at ', '2018-11-10 14:04:53'),
(72, 1, 'has logged in the system at ', '2018-11-11 12:27:00'),
(73, 1, 'has logged out the system at ', '2018-11-11 12:31:10'),
(74, 0, 'has logged out the system at ', '2018-11-11 12:31:17'),
(75, 1, 'has logged in the system at ', '2018-11-11 12:46:14'),
(76, 1, 'has logged out the system at ', '2018-11-11 12:46:18'),
(77, 1, 'has logged in the system at ', '2018-11-11 12:47:50'),
(78, 1, 'has logged in the system at ', '2018-11-11 21:08:49'),
(79, 1, 'has logged out the system at ', '2018-11-11 21:33:24'),
(80, 1, 'has logged in the system at ', '2018-11-11 22:48:50'),
(81, 1, 'has logged out the system at ', '2018-11-11 23:01:35'),
(82, 1, 'has logged in the system at ', '2018-11-11 23:06:17'),
(83, 1, 'has logged in the system at ', '2018-11-11 23:22:33'),
(84, 1, 'has logged in the system at ', '2018-11-12 00:00:44'),
(85, 1, 'has logged in the system at ', '2018-11-12 00:28:20'),
(86, 1, 'has logged out the system at ', '2018-11-12 00:43:16'),
(87, 1, 'has logged in the system at ', '2018-11-12 12:45:44'),
(88, 1, 'has logged in the system at ', '2018-11-12 12:49:41'),
(89, 1, 'has logged in the system at ', '2018-11-12 12:52:59'),
(90, 1, 'has logged out the system at ', '2018-11-12 12:53:56'),
(91, 1, 'has logged in the system at ', '2018-11-12 12:54:03'),
(92, 1, 'has logged out the system at ', '2018-11-12 12:54:34'),
(93, 1, 'has logged in the system at ', '2018-11-12 13:01:54'),
(94, 1, 'has logged out the system at ', '2018-11-12 13:10:17'),
(95, 1, 'has logged in the system at ', '2018-11-12 13:11:27'),
(96, 1, 'has logged out the system at ', '2018-11-12 13:11:30'),
(97, 1, 'has logged in the system at ', '2018-11-12 13:14:27'),
(98, 1, 'has logged out the system at ', '2018-11-12 13:14:50'),
(99, 1, 'has logged in the system at ', '2018-11-12 13:51:56'),
(100, 1, 'has logged out the system at ', '2018-11-12 13:54:26'),
(101, 1, 'has logged in the system at ', '2018-11-12 13:55:03'),
(102, 1, 'has logged in the system at ', '2018-11-12 22:37:50'),
(103, 1, 'has logged out the system at ', '2018-11-13 00:35:37'),
(104, 1, 'has logged in the system at ', '2018-11-17 03:34:28'),
(105, 1, 'has logged out the system at ', '2018-11-17 03:35:51'),
(106, 1, 'has logged in the system at ', '2018-11-21 20:47:28'),
(107, 1, 'has logged out the system at ', '2018-11-21 20:48:03'),
(108, 1, 'has logged in the system at ', '2018-11-21 21:21:24'),
(109, 1, 'has logged in the system at ', '2019-03-12 04:41:25'),
(110, 1, 'has logged out the system at ', '2019-03-12 04:55:55'),
(111, 1, 'has logged in the system at ', '2019-03-12 10:31:06'),
(112, 1, 'has logged in the system at ', '2019-03-13 01:45:58');

-- --------------------------------------------------------

--
-- Structure de la table `owner_info`
--

CREATE TABLE `owner_info` (
  `owner_id` int(8) NOT NULL,
  `owner_name` varchar(15) NOT NULL,
  `owner_contact` int(15) NOT NULL,
  `owner_email` varchar(15) NOT NULL,
  `owner_nid_pp` int(17) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `owner_info`
--

INSERT INTO `owner_info` (`owner_id`, `owner_name`, `owner_contact`, `owner_email`, `owner_nid_pp`) VALUES
(15, 'Joyanta Sarker', 1673975520, 'jsarker96@gmail', 19986753),
(16, 'Rihab Rahman', 2147483647, 'rihab@gmail.com', 2147483647),
(17, 'Sabbir Rahman', 9869234, 'gifgsdg@gmail.c', 2147483647),
(18, 'hgfhth', 657567567, 'hfgdhfgh', 2147483647),
(19, 'hfdhfgh', 657657, 'fhfgjuhghj', 2147483647),
(20, 'limon', 0, 'thfdhfghu', 76743234),
(21, 'bbbbbbbbb', 2147483647, 'aaaaaaaaaaaaaa', 2147483647),
(22, 'aaaaaaaaaaaaaaa', 4444, 'fdsds', 4444),
(23, 'Likhon', 1865234, 'likhon@gmail.xo', 0);

-- --------------------------------------------------------

--
-- Structure de la table `rent`
--

CREATE TABLE `rent` (
  `rent_id` int(11) NOT NULL,
  `renter_name` varchar(20) NOT NULL,
  `issue_date` varchar(20) NOT NULL,
  `gas_bill` varchar(20) NOT NULL,
  `electric_bill` varchar(20) NOT NULL,
  `water_bill` varchar(20) NOT NULL,
  `service_charge` varchar(20) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `rent`
--

INSERT INTO `rent` (`rent_id`, `renter_name`, `issue_date`, `gas_bill`, `electric_bill`, `water_bill`, `service_charge`, `status`) VALUES
(1, 'Tad', '2018-11-01', '67', '3253', '35436', '657', 'Unpaid'),
(2, 'Tad', '2018-10-01', '34324', '6546', '767', '532', 'Paid'),
(3, 'Alan', '2018-11-01', '34234', '5345', '546', '657', 'Unpaid');

-- --------------------------------------------------------

--
-- Structure de la table `renter_info`
--

CREATE TABLE `renter_info` (
  `renter_id` int(11) NOT NULL,
  `renter_name` varchar(20) NOT NULL,
  `renter_fname` varchar(19) NOT NULL,
  `renter_mname` varchar(20) NOT NULL,
  `renter_dob` date NOT NULL,
  `renter_contact` int(40) NOT NULL,
  `renter_nid_pp` varchar(17) NOT NULL,
  `renter_address` varchar(50) NOT NULL,
  `renter_occupation` varchar(15) NOT NULL,
  `renter_family_mem` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `renter_info`
--

INSERT INTO `renter_info` (`renter_id`, `renter_name`, `renter_fname`, `renter_mname`, `renter_dob`, `renter_contact`, `renter_nid_pp`, `renter_address`, `renter_occupation`, `renter_family_mem`) VALUES
(1, 'Buckminster', 'Coby', 'Christine', '2017-11-18', 800, '10909345-9', 'Ap #666-420 Justo Road', 'Student', 3),
(2, 'Edward', 'Walter', 'Clementine', '2017-11-26', 803, '36173070-4', '5899 Lacus. Street', 'Student', 7),
(3, 'Jeremy', 'Cooper', 'Melinda', '2017-12-15', 0, '7295340-1', '2964 Natoque Rd.', 'Student', 4),
(4, 'Acton', 'Thor', 'Aiko', '2019-09-19', 845, '13008283-1', 'Ap #227-1205 Sagittis Street', 'Student', 6),
(5, 'Beck', 'Evan', 'Dana', '2018-01-28', 70, '40859319-0', 'Ap #447-6030 Lorem Av.', 'Student', 4),
(6, 'Kennedy', 'Hunter', 'Violet', '2018-03-01', 500, '15847836-6', '6934 Consectetuer St.', 'Student', 3),
(7, 'Dillon', 'Jakeem', 'Tatiana', '2019-11-08', 500, '19467402-3', '4131 Molestie Ave', 'Student', 10),
(8, 'Vaughan', 'Peter', 'Hedwig', '2019-03-01', 56, '34941673-5', '5403 Aenean Av.', 'Student', 10),
(9, 'Joseph', 'Nathan', 'Marny', '2019-07-08', 845, '43047049-3', 'Ap #823-2900 Id, Avenue', 'Student', 10),
(10, 'Oren', 'Tiger', 'Jenna', '2018-06-27', 70, '10071262-8', 'Ap #695-9846 Nec, Av.', 'Student', 6),
(11, 'Barrett', 'Tyler', 'Aimee', '2018-05-04', 800, '26678289-6', '559-9021 Lorem, Av.', 'Student', 10),
(12, 'Dale', 'Nero', 'Cheyenne', '2018-10-25', 800, '11618964-K', '6472 Lacus. Avenue', 'Student', 8),
(13, 'Aquila', 'Ulysses', 'Delilah', '2019-04-02', 0, '12089653-9', 'P.O. Box 347, 7131 Aliquam Av.', 'Student', 4),
(14, 'Alec', 'Howard', 'Dakota', '2017-11-19', 845, '13962861-6', '2564 Et Ave', 'Student', 9),
(15, 'Tad', 'Caldwell', 'Lara', '2019-03-17', 0, '47368047-5', '2226 Donec St.', 'Student', 3),
(16, 'Carl', 'Benedict', 'Audrey', '2018-06-26', 7624, '27872611-8', '2019 Nunc St.', 'Student', 1),
(17, 'Burke', 'Charles', 'Rhea', '2019-01-06', 56, '34618637-2', '198-9697 Diam Av.', 'Student', 9),
(18, 'Bruno', 'Kennan', 'May', '2019-03-08', 0, '49250136-0', 'P.O. Box 695, 3528 In Avenue', 'Student', 1),
(19, 'Alan', 'Jin', 'Ila', '2018-03-20', 0, '45627738-1', '132-7771 Quisque Ave', 'Student', 4),
(20, 'Allistair', 'Gary', 'Orli', '2019-01-18', 822, '36317177-K', '240-9468 Congue. Av.', 'Student', 5),
(21, 'Ali', 'Griffith', 'Ruby', '2018-07-24', 818, '10152574-0', 'P.O. Box 993, 5377 Risus. Avenue', 'Student', 10),
(22, 'Brendan', 'Basil', 'Velma', '2017-11-27', 500, '24649539-4', '251-5317 Erat. Road', 'Student', 2),
(23, 'Xander', 'Duncan', 'Fallon', '2018-11-07', 0, '44763446-5', 'Ap #448-2528 Auctor St.', 'Student', 8),
(24, 'Cain', 'Magee', 'Yetta', '2017-12-06', 70, '21625210-1', 'Ap #327-3005 Felis. Ave', 'Student', 10),
(25, 'Benedict', 'Carlos', 'Sasha', '2018-12-17', 0, '50203414-6', 'P.O. Box 781, 9931 Placerat Road', 'Student', 8),
(26, 'Blaze', 'Paul', 'Autumn', '2019-08-23', 800, '50242988-4', 'P.O. Box 376, 1615 Ultrices Rd.', 'Student', 8),
(27, 'Jack', 'Basil', 'Callie', '2017-12-22', 7624, '47453302-6', '306 Magna St.', 'Student', 3),
(28, 'Hyatt', 'Kadeem', 'Paula', '2019-02-05', 800, '49040202-0', '477-6326 Lacinia St.', 'Student', 7),
(29, 'Hu', 'Micah', 'Leigh', '2019-09-03', 0, '10230068-8', '630-2257 Convallis St.', 'Student', 8),
(30, 'Keaton', 'Guy', 'Sylvia', '2018-12-03', 902, '6092544-5', '534-8106 Interdum Rd.', 'Student', 4),
(31, 'Grant', 'Sawyer', 'Nelle', '2019-07-18', 0, '39521784-4', 'Ap #562-9466 Orci. Av.', 'Student', 2),
(32, 'Edan', 'Fulton', 'Leigh', '2018-11-05', 76, '24664963-4', 'Ap #425-9210 Interdum Rd.', 'Student', 2),
(33, 'Coby', 'Hammett', 'Leah', '2019-08-05', 0, '39240865-7', 'P.O. Box 451, 4564 Est St.', 'Student', 6),
(34, 'Eric', 'Gray', 'Dominique', '2019-02-15', 326, '10285185-4', 'P.O. Box 195, 4783 Placerat Rd.', 'Student', 3),
(35, 'Stephen', 'Kato', 'Octavia', '2018-08-09', 800, '30899677-8', 'P.O. Box 641, 2123 Vestibulum Rd.', 'Student', 7),
(36, 'Theodore', 'Mark', 'Kyla', '2019-06-08', 845, '29171874-4', '968-2732 Diam. Ave', 'Student', 3),
(37, 'Curran', 'Brody', 'Kylee', '2018-01-29', 312, '45839944-1', '345-388 Vitae, Avenue', 'Student', 8),
(38, 'Raja', 'Macaulay', 'Nelle', '2019-10-11', 7755, '31064912-0', '226 Sodales. Av.', 'Student', 6),
(39, 'Jasper', 'Bruce', 'Chiquita', '2018-06-08', 0, '36002556-K', '9741 Non St.', 'Student', 8),
(40, 'Garrison', 'Akeem', 'Alfreda', '2018-10-02', 892, '27618450-4', '727-816 Donec Rd.', 'Student', 5),
(41, 'Igor', 'Clayton', 'Kessie', '2019-10-31', 0, '24716594-0', 'P.O. Box 542, 5855 Consequat St.', 'Student', 4),
(42, 'Burton', 'Ferris', 'Germaine', '2018-10-02', 914, '26573335-2', '900-5721 Amet Road', 'Student', 10),
(43, 'Drake', 'Hamilton', 'Naida', '2019-08-02', 0, '16939355-9', '4029 Eleifend, Road', 'Student', 6),
(44, 'Devin', 'Quentin', 'Germane', '2018-07-28', 0, '45488296-2', 'Ap #436-5078 Sollicitudin St.', 'Student', 8),
(45, 'Slade', 'Jarrod', 'Lacy', '2018-01-18', 997, '13518483-7', '2705 Lectus Rd.', 'Student', 3),
(46, 'Griffin', 'Nathan', 'Maile', '2019-05-23', 888, '7655205-3', '812-9606 Mauris Rd.', 'Student', 9),
(47, 'Nigel', 'Addison', 'Keely', '2019-01-03', 0, '37679915-8', 'Ap #609-1476 Vehicula Ave', 'Student', 7),
(48, 'Guy', 'Oleg', 'Skyler', '2018-09-26', 0, '31888437-4', 'Ap #438-7813 Sit Rd.', 'Student', 2),
(49, 'Nigel', 'Chaim', 'Lana', '2018-12-21', 0, '7763825-3', '488-6873 Libero Road', 'Student', 3),
(50, 'Kaseem', 'Brian', 'Avye', '2019-02-24', 70, '42158807-4', '7440 A, Road', 'Student', 8),
(51, 'Garrett', 'Dolan', 'Ginger', '2019-07-20', 0, '29029674-9', '782-8117 Molestie St.', 'Student', 10),
(52, 'Calvin', 'Jonas', 'Maya', '2019-01-15', 55, '14601639-1', '237-6586 Orci Avenue', 'Student', 8),
(53, 'Reece', 'Timothy', 'Quail', '2019-04-14', 55, '15905299-0', 'P.O. Box 281, 2246 Magna Rd.', 'Student', 4),
(54, 'Colton', 'Isaiah', 'Kirby', '2019-03-15', 70, '34385022-0', '316-5265 Sed Ave', 'Student', 8),
(55, 'Fuller', 'Gregory', 'Leandra', '2019-04-12', 389, '35943806-0', 'P.O. Box 414, 6105 A Avenue', 'Student', 6),
(56, 'Guy', 'Channing', 'Karleigh', '2018-04-15', 76, '25250202-5', 'Ap #919-9378 Sapien. Avenue', 'Student', 6),
(57, 'Shad', 'Adam', 'Fleur', '2019-02-13', 0, '20005085-1', 'Ap #422-3030 Augue. Rd.', 'Student', 3),
(58, 'Igor', 'George', 'Quin', '2019-07-21', 0, '8038279-0', 'P.O. Box 429, 1969 Et St.', 'Student', 2),
(59, 'Gil', 'Connor', 'Shannon', '2018-10-06', 56, '21525669-3', 'Ap #505-9393 Eget, Ave', 'Student', 9),
(60, 'Xander', 'Igor', 'Hanae', '2017-12-26', 0, '35656445-6', '692-8198 Ut Rd.', 'Student', 8),
(61, 'Rajah', 'Jakeem', 'Jescie', '2018-09-17', 0, '40853160-8', '368-8215 Pharetra St.', 'Student', 10),
(62, 'Myles', 'Jack', 'Leslie', '2019-10-11', 362, '39887243-6', '916-6100 A Street', 'Student', 4),
(63, 'Nathan', 'Paul', 'Florence', '2017-12-01', 0, '42096890-6', '463 Erat, Av.', 'Student', 5),
(64, 'Aquila', 'Colt', 'Ina', '2019-05-19', 7624, '37148193-1', 'P.O. Box 575, 6646 Velit Ave', 'Student', 8),
(65, 'Oleg', 'Quinn', 'Macey', '2018-08-13', 800, '32122254-4', '376-5863 Lorem Road', 'Student', 5),
(66, 'Ferdinand', 'Wylie', 'Adele', '2019-10-23', 0, '38069277-5', '897 Accumsan St.', 'Student', 8),
(67, 'Philip', 'Neville', 'Wilma', '2019-01-17', 800, '38235873-2', 'Ap #399-5993 Nisi Avenue', 'Student', 7),
(68, 'Cooper', 'Stephen', 'Sade', '2018-02-01', 7624, '28461215-9', 'Ap #574-6288 Dapibus St.', 'Student', 6),
(69, 'Daquan', 'Hasad', 'Guinevere', '2018-06-08', 56, '49935942-K', 'Ap #836-6793 Nonummy Road', 'Student', 2),
(70, 'Kaseem', 'Dillon', 'Victoria', '2017-11-13', 800, '23249672-K', 'Ap #551-6479 Nulla Street', 'Student', 9),
(71, 'Barrett', 'Griffin', 'Cheyenne', '2018-03-27', 0, '7677042-5', 'Ap #303-717 Suspendisse Rd.', 'Student', 5),
(72, 'Castor', 'Bradley', 'Aileen', '2018-09-16', 7221, '11488241-0', '7968 A, Street', 'Student', 2),
(73, 'Emmanuel', 'Norman', 'Isadora', '2018-11-13', 0, '40497741-5', '8733 Nec, Av.', 'Student', 10),
(74, 'Tad', 'Steven', 'Glenna', '2019-08-03', 500, '21767550-2', '781-8347 Nam St.', 'Student', 1),
(75, 'Graiden', 'Jackson', 'Molly', '2019-02-25', 55, '16675617-0', '649-6254 Sed Street', 'Student', 3),
(76, 'Amery', 'Marvin', 'Yael', '2019-07-15', 56, '35137178-1', '608-2401 Cras Rd.', 'Student', 8),
(77, 'Jermaine', 'Gareth', 'Pandora', '2018-11-20', 55, '8356233-1', 'P.O. Box 980, 2347 Est Road', 'Student', 7),
(78, 'Reed', 'Linus', 'Maia', '2018-12-04', 0, '47214255-0', 'P.O. Box 260, 3169 Elit, Rd.', 'Student', 5),
(79, 'Samuel', 'Lucas', 'Yuri', '2019-05-28', 55, '10248726-5', 'P.O. Box 410, 525 Ullamcorper. Avenue', 'Student', 10),
(80, 'Phelan', 'Leonard', 'Maggy', '2018-06-08', 500, '25196756-3', 'P.O. Box 835, 5646 Cras Street', 'Student', 7),
(81, 'Colt', 'Elvis', 'Galena', '2018-05-31', 56, '43341959-6', '6980 Dolor St.', 'Student', 1),
(82, 'Jason', 'Beau', 'Geraldine', '2018-02-15', 0, '45633745-7', 'Ap #693-7448 Fringilla Street', 'Student', 8),
(83, 'Tate', 'Roth', 'Cleo', '2018-07-20', 70, '24189470-3', 'Ap #421-8812 Magna Avenue', 'Student', 6),
(84, 'Noble', 'Barclay', 'Jana', '2018-08-17', 899, '50240594-2', 'P.O. Box 713, 8056 Sed Av.', 'Student', 6),
(85, 'Ezra', 'Boris', 'Sade', '2017-12-01', 56, '20840523-3', '7907 Ac, St.', 'Student', 8),
(86, 'Lane', 'Palmer', 'Tanya', '2018-12-18', 7624, '22528663-9', '5689 Non, Avenue', 'Student', 8),
(87, 'Levi', 'Randall', 'Carly', '2018-11-24', 800, '21223074-K', 'Ap #588-201 Ac Road', 'Student', 6),
(88, 'Owen', 'Odysseus', 'Colette', '2019-05-23', 845, '11575764-4', '9969 Semper Street', 'Student', 3),
(89, 'Tucker', 'Flynn', 'Calista', '2019-06-09', 800, '40471746-4', '512-1783 Erat Avenue', 'Student', 8),
(90, 'Price', 'Geoffrey', 'Ciara', '2018-05-10', 76, '10353944-7', 'Ap #199-1850 Sapien. Road', 'Student', 10),
(91, 'Ignatius', 'Murphy', 'Maxine', '2019-10-26', 70, '15631567-2', '969-8154 Natoque Street', 'Student', 5),
(92, 'Lars', 'Cairo', 'September', '2018-07-27', 800, '42716798-4', '682-539 A, Avenue', 'Student', 2),
(93, 'Judah', 'Keane', 'Ivory', '2018-08-11', 379, '10889690-6', 'P.O. Box 613, 9623 Neque Rd.', 'Student', 3),
(94, 'Kadeem', 'Edward', 'Isabella', '2018-11-19', 56, '7059213-4', '2283 Sem St.', 'Student', 1),
(95, 'Cameron', 'August', 'Tana', '2018-06-03', 0, '18346723-9', 'P.O. Box 660, 1154 Consequat, Av.', 'Student', 10),
(96, 'Yardley', 'Gregory', 'Ivory', '2018-03-08', 56, '18058379-3', '228-570 Eu Ave', 'Student', 3),
(97, 'Harper', 'Nigel', 'Madison', '2019-02-26', 800, '24859774-7', 'P.O. Box 248, 2778 Nibh Av.', 'Student', 8),
(98, 'Kennedy', 'Louis', 'Lilah', '2019-09-15', 800, '19805872-6', 'P.O. Box 991, 1781 Sed Ave', 'Student', 10),
(99, 'Luke', 'Graham', 'Rebecca', '2017-12-17', 55, '49450100-7', '9562 Sapien, Av.', 'Student', 4),
(100, 'Stuart', 'Hayden', 'Mia', '2018-02-21', 7624, '35552691-7', '1061 Quisque Street', 'Student', 4);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL,
  `flat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `name`, `status`, `flat_id`) VALUES
(1, 'admin', 'a1Bz20ydqelm8m1wql21232f297a57a5a743894a0e4a801fc3', 'Durjoy Kumar Sarker', 'active', 1),
(8, 'Joy', 'a1Bz20ydqelm8m1wqlc2c8e798aecbc26d86e4805114b03c51', 'Joyanta Kumar Sarker', 'active', 0),
(9, 'master', 'a1Bz20ydqelm8m1wqleb0a191797624dd3a48fa681d3061212', 'Tushar Pharmacy', 'inactive', 15),
(10, 'sabbir', 'a1Bz20ydqelm8m1wql9f0032f3345e3d8b5a210921ea78b188', 'Sabbir Ahmed', 'inactive', 2),
(11, 'rihab123', 'a1Bz20ydqelm8m1wqldebe9606f46df8ad9dd22c4b45c00aa6', 'Rihab Rahman', 'active', 5),
(12, 'master', 'a1Bz20ydqelm8m1wqleb0a191797624dd3a48fa681d3061212', 'Tushar Pharmacy', 'active', 4),
(13, 'rosiss', '6c7ca345f63f835cb353ff15bd6c5e052ec08e7a', 'Sagesse', 'active', 0);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `flat`
--
ALTER TABLE `flat`
  ADD PRIMARY KEY (`flat_id`);

--
-- Index pour la table `history_log`
--
ALTER TABLE `history_log`
  ADD PRIMARY KEY (`log_id`);

--
-- Index pour la table `owner_info`
--
ALTER TABLE `owner_info`
  ADD PRIMARY KEY (`owner_id`);

--
-- Index pour la table `rent`
--
ALTER TABLE `rent`
  ADD PRIMARY KEY (`rent_id`);

--
-- Index pour la table `renter_info`
--
ALTER TABLE `renter_info`
  ADD PRIMARY KEY (`renter_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `flat`
--
ALTER TABLE `flat`
  MODIFY `flat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `history_log`
--
ALTER TABLE `history_log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT pour la table `owner_info`
--
ALTER TABLE `owner_info`
  MODIFY `owner_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT pour la table `rent`
--
ALTER TABLE `rent`
  MODIFY `rent_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `renter_info`
--
ALTER TABLE `renter_info`
  MODIFY `renter_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- Base de données :  `introjee`
--
CREATE DATABASE IF NOT EXISTS `introjee` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `introjee`;

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `id` int(11) NOT NULL,
  `numPiece` varchar(30) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `dateNaise` date NOT NULL,
  `tel` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `location`
--

CREATE TABLE `location` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `nbJour` int(11) NOT NULL,
  `montant` float NOT NULL,
  `idVehicule` int(11) NOT NULL,
  `idClient` int(11) NOT NULL,
  `remarque` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `marque`
--

CREATE TABLE `marque` (
  `id` int(11) NOT NULL,
  `libelle` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `marque`
--

INSERT INTO `marque` (`id`, `libelle`) VALUES
(1, 'mercedes'),
(2, 'citroen');

-- --------------------------------------------------------

--
-- Structure de la table `modele`
--

CREATE TABLE `modele` (
  `id` int(11) NOT NULL,
  `libelle` varchar(50) NOT NULL,
  `idMarque` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `modele`
--

INSERT INTO `modele` (`id`, `libelle`, `idMarque`) VALUES
(1, 'amg', 1),
(2, 'c4', 2),
(3, 'classe G', 1),
(6, 'classe S', 1);

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `libelle` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `libelle`) VALUES
(1, 'admin'),
(2, 'user'),
(3, 'super user');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id` int(11) NOT NULL,
  `login` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `photo` varchar(1000) DEFAULT NULL,
  `role` int(11) NOT NULL,
  `changed` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `login`, `password`, `nom`, `prenom`, `photo`, `role`, `changed`) VALUES
(1, 'moussa', 'passer', 'diop', 'moussa', NULL, 1, 0),
(3, 'admin', 'passer', 'war', 'war', 'ecouteur3.jpg', 2, 0),
(4, 'sfall1', 'passer', 'fall', 'serigne fallou', 'avatar04.png', 1, 0),
(6, 'lsarr1', 'passer', 'sarr', 'lamin', 'ph.jpg', 2, 0),
(9, 'asylla7', 'passer', 'sylla', 'abdou', 'laclasse.png', 1, 0),
(10, 'asylla10', 'passer', 'sylla', 'abdou', 'laclasse.png', 1, 0),
(16, 'tlars11', 'passer', 'lars', 'thonny', 'colorant - Copie.jpg', 2, 0),
(17, 'tlars17', 'passer', 'lars', 'thonny', 'colorant - Copie.jpg', 2, 0),
(18, 'swar18', 'passer', 'war', 'serigne falllou', 'colorant - Copie.jpg', 1, 0),
(19, 'abbbb19', 'passer', 'bbbb', 'aaaa', 'cle2.jpg', 2, 0),
(20, 'SDIhambou20', 'passer', 'DIhambou', 'Sagesse', 'Capture du 2019-05-03 21-43-24.png', 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `vehicule`
--

CREATE TABLE `vehicule` (
  `id` int(11) NOT NULL,
  `matricule` varchar(30) NOT NULL,
  `idModele` int(11) NOT NULL,
  `couleur` varchar(30) NOT NULL,
  `prixJour` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idVehicule` (`idVehicule`),
  ADD KEY `idClient` (`idClient`);

--
-- Index pour la table `marque`
--
ALTER TABLE `marque`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `modele`
--
ALTER TABLE `modele`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idMarque` (`idMarque`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role` (`role`);

--
-- Index pour la table `vehicule`
--
ALTER TABLE `vehicule`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idModele` (`idModele`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `location`
--
ALTER TABLE `location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `marque`
--
ALTER TABLE `marque`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `modele`
--
ALTER TABLE `modele`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `vehicule`
--
ALTER TABLE `vehicule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `location`
--
ALTER TABLE `location`
  ADD CONSTRAINT `location_ibfk_1` FOREIGN KEY (`idClient`) REFERENCES `client` (`id`),
  ADD CONSTRAINT `location_ibfk_2` FOREIGN KEY (`idVehicule`) REFERENCES `vehicule` (`id`);

--
-- Contraintes pour la table `modele`
--
ALTER TABLE `modele`
  ADD CONSTRAINT `modele_ibfk_1` FOREIGN KEY (`idMarque`) REFERENCES `marque` (`id`);

--
-- Contraintes pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD CONSTRAINT `utilisateur_ibfk_1` FOREIGN KEY (`role`) REFERENCES `roles` (`id`);

--
-- Contraintes pour la table `vehicule`
--
ALTER TABLE `vehicule`
  ADD CONSTRAINT `vehicule_ibfk_1` FOREIGN KEY (`idModele`) REFERENCES `modele` (`id`);
--
-- Base de données :  `inventory`
--
CREATE DATABASE IF NOT EXISTS `inventory` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `inventory`;

-- --------------------------------------------------------

--
-- Structure de la table `branch`
--

CREATE TABLE `branch` (
  `branch_id` int(11) NOT NULL,
  `branch_name` varchar(50) NOT NULL,
  `branch_address` varchar(100) NOT NULL,
  `branch_contact` varchar(50) NOT NULL,
  `skin` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `branch`
--

INSERT INTO `branch` (`branch_id`, `branch_name`, `branch_address`, `branch_contact`, `skin`) VALUES
(1, 'Jhunu Medical Store', 'Dhaka_Rangpur High Way,Palashbari,Gaibandha', '+8801716161368,+8801799114899', 'red');

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`) VALUES
(5, 'Hormone replacements'),
(6, 'Mood stabilizers'),
(7, 'Oral contraceptives'),
(8, 'Antimalarial drugs'),
(9, 'Antibiotics'),
(10, 'Analgesics'),
(11, 'Antiseptics'),
(12, 'Antipyretics'),
(13, 'Stimulants'),
(14, 'Tranquilizers'),
(15, 'Statins');

-- --------------------------------------------------------

--
-- Structure de la table `customer`
--

CREATE TABLE `customer` (
  `cust_id` int(11) NOT NULL,
  `cust_first` varchar(50) NOT NULL,
  `cust_last` varchar(30) NOT NULL,
  `cust_address` varchar(100) NOT NULL,
  `cust_contact` varchar(30) NOT NULL,
  `balance` decimal(10,2) NOT NULL,
  `cust_pic` varchar(300) NOT NULL,
  `bday` date NOT NULL,
  `nickname` varchar(30) NOT NULL,
  `house_status` varchar(30) NOT NULL,
  `years` varchar(20) NOT NULL,
  `rent` varchar(10) NOT NULL,
  `emp_name` varchar(100) NOT NULL,
  `emp_no` varchar(30) NOT NULL,
  `emp_address` varchar(100) NOT NULL,
  `emp_year` varchar(10) NOT NULL,
  `occupation` varchar(30) NOT NULL,
  `salary` varchar(30) NOT NULL,
  `spouse` varchar(30) NOT NULL,
  `spouse_no` varchar(30) NOT NULL,
  `spouse_emp` varchar(50) NOT NULL,
  `spouse_details` varchar(100) NOT NULL,
  `spouse_income` decimal(10,2) NOT NULL,
  `comaker` varchar(30) NOT NULL,
  `comaker_details` varchar(100) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `credit_status` varchar(10) NOT NULL,
  `ci_remarks` varchar(1000) NOT NULL,
  `ci_name` varchar(50) NOT NULL,
  `ci_date` date NOT NULL,
  `payslip` int(11) NOT NULL,
  `valid_id` int(11) NOT NULL,
  `cert` int(11) NOT NULL,
  `cedula` int(11) NOT NULL,
  `income` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `customer`
--

INSERT INTO `customer` (`cust_id`, `cust_first`, `cust_last`, `cust_address`, `cust_contact`, `balance`, `cust_pic`, `bday`, `nickname`, `house_status`, `years`, `rent`, `emp_name`, `emp_no`, `emp_address`, `emp_year`, `occupation`, `salary`, `spouse`, `spouse_no`, `spouse_emp`, `spouse_details`, `spouse_income`, `comaker`, `comaker_details`, `branch_id`, `credit_status`, `ci_remarks`, `ci_name`, `ci_date`, `payslip`, `valid_id`, `cert`, `cedula`, `income`) VALUES
(1, 'Kenneth', 'Aboy', 'Silay City\r\n', '09098', '0.00', 'default.gif', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0.00', '', '', 1, '', '', '', '0000-00-00', 0, 0, 0, 0, 0),
(3, 'Joyanta', 'Sarker', 'House#12 ,Road#12/B,Uttara Model Town,Dhaka', '01673975520', '0.00', 'default.gif', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0.00', '', '', 1, '', '', '', '0000-00-00', 0, 0, 0, 0, 0),
(4, 'MIlon', 'Sarker', 'Kamarpara,Dhaka', '01724620277', '0.00', 'default.gif', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0.00', '', '', 1, '', '', '', '0000-00-00', 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `history_log`
--

CREATE TABLE `history_log` (
  `log_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `action` varchar(100) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `history_log`
--

INSERT INTO `history_log` (`log_id`, `user_id`, `action`, `date`) VALUES
(1, 1, 'added 5 of LG 43\" UHD TV UH6100', '2017-02-04 01:10:41'),
(2, 1, 'added 100 of Lotion', '2017-02-04 01:10:49'),
(3, 1, 'added 10 of Rice Cooker', '2017-02-04 01:10:55'),
(4, 1, 'added 5 of Samsung', '2017-02-04 01:11:07'),
(5, 1, 'has logged in the system at ', '2017-02-04 08:22:52'),
(6, 1, 'has logged in the system at ', '2017-02-04 08:51:11'),
(7, 1, 'has logged in the system at ', '2017-02-04 13:13:53'),
(8, 1, 'has logged in the system at ', '2017-02-21 18:56:56'),
(9, 1, 'added a payment of -76.6 for , ', '2017-02-21 00:00:00'),
(10, 1, 'has logged in the system at ', '2018-09-11 02:07:59'),
(11, 1, 'added 10 of LG 43\" UHD TV UH6100', '2018-09-11 02:15:19'),
(12, 1, 'has logged in the system at ', '2018-09-11 22:13:29'),
(13, 6, 'has logged out the system at ', '2018-09-11 22:24:41'),
(14, 7, 'has logged in the system at ', '2018-09-11 22:24:49'),
(15, 7, 'has logged out the system at ', '2018-09-11 22:26:46'),
(16, 1, 'has logged in the system at ', '2018-09-11 22:27:14'),
(17, 1, 'has logged in the system at ', '2018-09-11 22:29:01'),
(18, 6, 'added 500 of Napa', '2018-09-11 23:51:29'),
(19, 7, 'has logged in the system at ', '2018-09-12 12:33:50'),
(20, 6, 'added 5000 of Civit', '2018-09-12 12:43:02'),
(21, 6, 'added 350 of Detol', '2018-09-12 12:43:15'),
(22, 6, 'added 30 of Savlon', '2018-09-12 12:43:25'),
(23, 1, 'has logged in the system at ', '2018-09-12 12:48:29'),
(24, 1, 'has logged in the system at ', '2019-03-12 05:22:59');

-- --------------------------------------------------------

--
-- Structure de la table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `payment` decimal(10,2) NOT NULL,
  `payment_date` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `payment_for` date NOT NULL,
  `due` decimal(10,2) NOT NULL,
  `interest` decimal(10,2) NOT NULL,
  `remaining` decimal(10,2) NOT NULL,
  `status` varchar(20) NOT NULL,
  `rebate` decimal(10,2) NOT NULL,
  `or_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `payment`
--

INSERT INTO `payment` (`payment_id`, `cust_id`, `sales_id`, `payment`, `payment_date`, `user_id`, `branch_id`, `payment_for`, `due`, `interest`, `remaining`, `status`, `rebate`, `or_no`) VALUES
(3156, 1, 6, '550.00', '2017-02-21 19:57:12', 1, 1, '2017-02-21', '550.00', '0.00', '0.00', 'paid', '0.00', 1901),
(3157, 2, 7, '550.00', '2017-02-21 19:57:29', 1, 1, '2017-02-21', '550.00', '0.00', '0.00', 'paid', '0.00', 1902),
(3163, 2, 9, '113.30', '2017-02-21 21:31:20', 1, 1, '2017-03-21', '113.30', '0.00', '0.00', 'paid', '0.00', 0),
(3164, 2, 9, '36.70', '2017-02-21 21:31:20', 1, 1, '2017-04-21', '113.30', '9.10', '122.10', 'partially paid', '0.00', 0),
(3165, 2, 9, '0.00', '0000-00-00 00:00:00', 1, 1, '2017-05-21', '113.30', '9.10', '158.80', '', '0.00', 0),
(3166, 2, 9, '0.00', '0000-00-00 00:00:00', 1, 1, '2017-06-21', '113.30', '9.10', '158.80', '', '0.00', 0),
(3167, 2, 9, '113.30', '2017-02-21 00:00:00', 1, 1, '2017-02-21', '113.30', '0.00', '0.00', 'paid', '0.00', 3151),
(3168, 3, 10, '450.00', '2018-09-11 23:42:14', 6, 1, '2018-09-11', '450.00', '0.00', '0.00', 'paid', '0.00', 1903),
(3169, 3, 11, '2400.00', '2018-09-11 23:52:13', 6, 1, '2018-09-11', '2400.00', '0.00', '0.00', 'paid', '0.00', 1904),
(3170, 4, 12, '19700.00', '2018-09-12 12:59:34', 1, 1, '2018-09-12', '19700.00', '0.00', '0.00', 'paid', '0.00', 1905);

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

CREATE TABLE `product` (
  `prod_id` int(11) NOT NULL,
  `prod_name` varchar(100) NOT NULL,
  `prod_desc` varchar(500) NOT NULL,
  `prod_price` decimal(10,2) NOT NULL,
  `prod_pic` varchar(300) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `prod_qty` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `reorder` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `serial` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`prod_id`, `prod_name`, `prod_desc`, `prod_price`, `prod_pic`, `cat_id`, `prod_qty`, `branch_id`, `reorder`, `supplier_id`, `serial`) VALUES
(17, 'Napa', '', '12.00', 'default.gif', 12, 200, 1, 0, 11, '0001'),
(18, 'Savlon', '', '30.00', 'default.gif', 11, 5, 1, 0, 9, '0002'),
(19, 'Detol', '', '35.00', 'default.gif', 11, 200, 1, 0, 12, '0003'),
(20, 'Civit', '', '5.00', 'default.gif', 8, 2500, 1, 0, 10, '0004');

-- --------------------------------------------------------

--
-- Structure de la table `purchase_request`
--

CREATE TABLE `purchase_request` (
  `pr_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `request_date` date NOT NULL,
  `branch_id` int(11) NOT NULL,
  `purchase_status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `sales`
--

CREATE TABLE `sales` (
  `sales_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cash_tendered` decimal(10,2) DEFAULT NULL,
  `discount` decimal(10,2) DEFAULT NULL,
  `amount_due` decimal(10,2) NOT NULL,
  `cash_change` decimal(10,2) DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `modeofpayment` varchar(15) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `sales`
--

INSERT INTO `sales` (`sales_id`, `cust_id`, `user_id`, `cash_tendered`, `discount`, `amount_due`, `cash_change`, `date_added`, `modeofpayment`, `branch_id`, `total`) VALUES
(1, 1, 1, '500.00', '50.00', '500.00', '0.00', '2017-02-04 01:33:28', 'cash', 1, '450.00'),
(2, 1, 1, '550.00', '0.00', '550.00', '0.00', '2017-02-21 18:57:26', 'cash', 1, '550.00'),
(3, 1, 1, '0.00', '550.00', '0.00', '0.00', '2017-02-21 19:49:41', 'cash', 1, '-550.00'),
(4, 1, 1, '550.00', '0.00', '550.00', '0.00', '2017-02-21 19:55:57', 'cash', 1, '550.00'),
(5, 2, 1, '110.00', '0.00', '110.00', '0.00', '2017-02-21 19:56:17', 'cash', 1, '110.00'),
(6, 1, 1, '550.00', '0.00', '550.00', '0.00', '2017-02-21 19:57:12', 'cash', 1, '550.00'),
(7, 2, 1, '550.00', '0.00', '550.00', '0.00', '2017-02-21 19:57:29', 'cash', 1, '550.00'),
(9, 2, 1, NULL, NULL, '0.00', NULL, '2017-02-21 21:16:52', 'credit', 1, '550.00'),
(10, 3, 6, '0.00', '0.00', '450.00', '0.00', '2018-09-11 23:42:14', 'cash', 1, '450.00'),
(11, 3, 6, '2400.00', '0.00', '2400.00', '0.00', '2018-09-11 23:52:13', 'cash', 1, '2400.00'),
(12, 4, 1, '19000.00', '0.00', '19700.00', '-700.00', '2018-09-12 12:59:34', 'cash', 1, '19700.00');

-- --------------------------------------------------------

--
-- Structure de la table `sales_details`
--

CREATE TABLE `sales_details` (
  `sales_details_id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `sales_details`
--

INSERT INTO `sales_details` (`sales_details_id`, `sales_id`, `prod_id`, `price`, `qty`) VALUES
(1, 1, 13, '550.00', 1),
(2, 2, 13, '550.00', 1),
(3, 3, 13, '550.00', 1),
(4, 4, 13, '550.00', 1),
(5, 5, 16, '110.00', 1),
(6, 6, 13, '550.00', 1),
(7, 7, 13, '550.00', 1),
(8, 8, 13, '550.00', 1),
(9, 9, 13, '550.00', 1),
(10, 10, 5, '45000.00', 10),
(11, 11, 17, '12.00', 200),
(12, 12, 20, '5.00', 2500),
(13, 12, 19, '35.00', 150),
(14, 12, 17, '12.00', 100),
(15, 12, 18, '30.00', 25);

-- --------------------------------------------------------

--
-- Structure de la table `stockin`
--

CREATE TABLE `stockin` (
  `stockin_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `qty` int(6) NOT NULL,
  `date` datetime NOT NULL,
  `branch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `stockin`
--

INSERT INTO `stockin` (`stockin_id`, `prod_id`, `qty`, `date`, `branch_id`) VALUES
(1, 5, 5, '2017-02-04 01:10:41', 1),
(2, 15, 100, '2017-02-04 01:10:49', 1),
(3, 13, 10, '2017-02-04 01:10:55', 1),
(4, 14, 5, '2017-02-04 01:11:07', 1),
(5, 5, 10, '2018-09-11 02:15:19', 1),
(6, 17, 500, '2018-09-11 23:51:29', 1),
(7, 20, 5000, '2018-09-12 12:43:02', 1),
(8, 19, 350, '2018-09-12 12:43:15', 1),
(9, 18, 30, '2018-09-12 12:43:25', 1);

-- --------------------------------------------------------

--
-- Structure de la table `supplier`
--

CREATE TABLE `supplier` (
  `supplier_id` int(11) NOT NULL,
  `supplier_name` varchar(100) NOT NULL,
  `supplier_address` varchar(300) NOT NULL,
  `supplier_contact` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `supplier`
--

INSERT INTO `supplier` (`supplier_id`, `supplier_name`, `supplier_address`, `supplier_contact`) VALUES
(8, 'MEDI-HEART', '15/2, Topkhana Road\r\nBMA Bhaban, Room # 36, 37, 38\r\nDhaka-1000, Bangladesh', '+88-02-9564242'),
(9, 'Khawja Trade Fair KHAWJA SURGICAL MART', 'BMA Bhaban, Shop # 39\r\n15/2, Topkhana Road\r\nDhaka-1000, Bangladesh', '+8801922-750701 '),
(10, 'Bio-Fair Surgical House', 'Shop No - 11, 15\r\n15/2, Topkhana Road\r\nBMA Bhaban, Dhaka - 1000\r\nBangladesh', '+8801912-393134'),
(11, 'Tushar Pharmacy', '2/1 Mayakanoon, \r\nKadomtola, Basaboo, \r\nDhaka - 1214, \r\nBangladesh', '+88 01712-507969'),
(12, 'Aftab Drug Store', '9, Shahbagh Biponi Bitan, Dhaka - 1000, Bangladesh', ' +880-2-8627959'),
(13, 'Lucky Medicine Store', '208/3 New Circular Road, \r\nMoghbazar, \r\nDhaka - 1217, \r\nBangladesh', '+880-2-9332390'),
(14, 'Alfa Scientific Co.', '33/3, Hatkhola Road.\r\nDhaka-1203, Bangladesh', '+88-02-9567736'),
(15, 'Central Scientific Company', '33/3, Shahid Nazrul Islam Road, Hatkhola, Dhaka - 1203,Bangladesh', '01727-334033');

-- --------------------------------------------------------

--
-- Structure de la table `temp_trans`
--

CREATE TABLE `temp_trans` (
  `temp_trans_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `term`
--

CREATE TABLE `term` (
  `term_id` int(11) NOT NULL,
  `sales_id` int(11) DEFAULT NULL,
  `payable_for` varchar(10) NOT NULL,
  `term` varchar(11) NOT NULL,
  `due` decimal(10,2) NOT NULL,
  `payment_start` date NOT NULL,
  `down` decimal(10,2) NOT NULL,
  `due_date` date NOT NULL,
  `interest` decimal(10,2) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `term`
--

INSERT INTO `term` (`term_id`, `sales_id`, `payable_for`, `term`, `due`, `payment_start`, `down`, `due_date`, `interest`, `status`) VALUES
(1, 8, '4', 'monthly', '113.30', '2017-02-21', '113.30', '2017-06-21', '16.50', ''),
(2, 9, '4', 'monthly', '113.30', '2017-02-21', '113.30', '2017-06-21', '16.50', '');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL,
  `branch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `name`, `status`, `branch_id`) VALUES
(1, 'admin', 'a1Bz20ydqelm8m1wql21232f297a57a5a743894a0e4a801fc3', 'Durjoy Kumar Sarker', 'active', 1),
(6, 'admin', 'a1Bz20ydqelm8m1wql21232f297a57a5a743894a0e4a801fc3', 'Joyanta Kumar Sarker', 'active', 0),
(7, 'Jhunu', 'a1Bz20ydqelm8m1wql0b9307b8409dc0a43dd65d55bec4373b', 'Jhunu Chondra Sarker', 'active', 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`branch_id`);

--
-- Index pour la table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Index pour la table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cust_id`);

--
-- Index pour la table `history_log`
--
ALTER TABLE `history_log`
  ADD PRIMARY KEY (`log_id`);

--
-- Index pour la table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Index pour la table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`prod_id`);

--
-- Index pour la table `purchase_request`
--
ALTER TABLE `purchase_request`
  ADD PRIMARY KEY (`pr_id`);

--
-- Index pour la table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`sales_id`);

--
-- Index pour la table `sales_details`
--
ALTER TABLE `sales_details`
  ADD PRIMARY KEY (`sales_details_id`);

--
-- Index pour la table `stockin`
--
ALTER TABLE `stockin`
  ADD PRIMARY KEY (`stockin_id`);

--
-- Index pour la table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supplier_id`);

--
-- Index pour la table `temp_trans`
--
ALTER TABLE `temp_trans`
  ADD PRIMARY KEY (`temp_trans_id`);

--
-- Index pour la table `term`
--
ALTER TABLE `term`
  ADD PRIMARY KEY (`term_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `branch`
--
ALTER TABLE `branch`
  MODIFY `branch_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `customer`
--
ALTER TABLE `customer`
  MODIFY `cust_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `history_log`
--
ALTER TABLE `history_log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT pour la table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3171;

--
-- AUTO_INCREMENT pour la table `product`
--
ALTER TABLE `product`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `purchase_request`
--
ALTER TABLE `purchase_request`
  MODIFY `pr_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `sales`
--
ALTER TABLE `sales`
  MODIFY `sales_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `sales_details`
--
ALTER TABLE `sales_details`
  MODIFY `sales_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `stockin`
--
ALTER TABLE `stockin`
  MODIFY `stockin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `temp_trans`
--
ALTER TABLE `temp_trans`
  MODIFY `temp_trans_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `term`
--
ALTER TABLE `term`
  MODIFY `term_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Base de données :  `laravel_post`
--
CREATE DATABASE IF NOT EXISTS `laravel_post` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `laravel_post`;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_11_27_204615_create_posts_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `title`, `slug`, `excerpt`, `body`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 'Quo et sit fugiat sunt est voluptatum.', 'deserunt-laborum-distinctio-iusto-rem-ea-repellendus', 'Voluptatum culpa aut sit molestiae et iste. Magnam libero ullam amet eveniet molestiae amet sed. Quod aspernatur quis ad deleniti distinctio est.', 'Quam pariatur voluptatibus ex iusto. Omnis quia molestiae accusantium et officiis numquam. Soluta dolor voluptatem est aut ducimus rerum optio.\n\nFugiat blanditiis consequatur aut praesentium amet aut qui. Officiis sed rem eum ex aut odio.\n\nEnim debitis error ex quaerat quae culpa at. Consequatur nihil occaecati est. Eius ea in quia consequuntur consequuntur quibusdam pariatur. Iste laudantium sequi quia architecto.\n\nDolorem quisquam animi sunt officia facilis mollitia numquam architecto. Aut at qui et corporis. Eum error quisquam molestias illo qui maiores.\n\nError dignissimos est quam dolorem illum. Itaque amet sit pariatur cum. Est eaque maiores odit officia quam tempora quasi eos.\n\nOmnis asperiores libero aut explicabo. Aut repellendus distinctio sit earum aut. Aut voluptatem quidem quas voluptatem non architecto.\n\nAut nostrum aut aspernatur natus. Magni hic quam odit nobis voluptatum nesciunt quod. Omnis aut pariatur sit dolores laboriosam similique. Nihil et repellendus in ducimus consequatur repudiandae.\n\nNon consequatur facere harum aut adipisci architecto consequatur est. Tenetur eaque labore ut reprehenderit. Reiciendis eum error possimus explicabo ducimus enim. Est quis quibusdam iste qui.\n\nCulpa voluptatem dolores possimus minus est. Est ipsam et minima quia sunt ipsa modi. Aut cumque dolor aliquid. Ipsum molestias sed minus illum aut.\n\nEaque reiciendis sed sint recusandae vero provident quo. Recusandae dolorem dolores nostrum exercitationem in libero. Id repellat assumenda possimus assumenda minima.', NULL, '2017-07-19 08:00:00', '2017-07-19 08:00:00'),
(2, 1, 'Unde exercitationem vitae voluptas consequatur fugiat laudantium id tenetur voluptas occaecati placeat temporibus aut at.', 'fuga-minima-aliquam-nemo-pariatur-quisquam', 'Beatae amet corrupti excepturi. Voluptas labore voluptatem incidunt enim qui nihil. Expedita hic quidem et consectetur blanditiis ab exercitationem qui. Dicta sit tempore corporis quia sed neque laudantium distinctio.', 'Architecto porro sint sed. Et incidunt consequuntur voluptatem deleniti animi. Et illum assumenda animi quibusdam labore explicabo ducimus.\n\nQuae sunt doloribus nihil delectus architecto voluptatum. Repellendus occaecati cumque dolore corrupti magnam. Commodi cupiditate ipsum accusamus repudiandae in in qui.\n\nNon consectetur provident cupiditate occaecati. Architecto ut dolorem doloremque vero itaque. Id dolore voluptate ab repellendus et.\n\nNihil mollitia dolore commodi qui voluptatem rerum. Nihil magni cupiditate aut harum ut enim vero. Repudiandae officia dolor dignissimos rerum eos. Qui sed rerum enim voluptatem asperiores.\n\nMinima debitis et voluptates ut. Dolores quo non hic autem quas. Maxime non quia aliquid molestias ex molestiae et.\n\nVoluptatem dolores tenetur dolores ipsa vitae. Corrupti ducimus dolor dolor sapiente ipsa. Et veniam sit neque porro tempora quibusdam. Error iste eligendi omnis inventore tenetur repellendus officiis.\n\nQui ut repellat saepe et error consequatur. Voluptatem delectus delectus similique veniam. Ut quod molestias voluptate ducimus quidem. Optio earum animi praesentium sit reprehenderit ad quas.\n\nEnim voluptatem quaerat dignissimos expedita. Minima molestiae nulla repudiandae hic delectus. Aut autem amet autem itaque iusto dicta.\n\nFugiat esse laudantium inventore porro nam corrupti rem. Nostrum sed quis sunt rerum iusto similique molestiae. Non ad voluptatum sit rerum perferendis. Dolores fuga sit accusamus maiores ut.\n\nAssumenda dicta culpa rerum quibusdam repudiandae. Ipsum sint et et fugit enim officiis. Rerum iusto ut fugit fuga.', NULL, '2017-07-20 08:00:00', '2017-07-20 08:00:00'),
(3, 1, 'Voluptatem repellat rerum consequatur officiis.', 'quia-illum-eos-porro-quisquam-ab-sunt-quibusdam', 'Non harum assumenda vel eius. Excepturi recusandae voluptates eum vero in. Dolores id illo eos aperiam odit. Qui quod et libero distinctio sunt omnis maxime. Laborum illum maiores cupiditate natus qui et. In in molestiae vel amet.', 'Voluptatum dolorem saepe qui ut consequatur eveniet. Necessitatibus hic voluptatem minus dolore qui eos. Quia sit culpa consequatur dolores illo est.\n\nNatus dolore dolor dolores esse et qui dolorem. Quidem aliquam natus deleniti voluptas omnis. Et repellat molestiae quo aliquid.\n\nConsequatur non ad pariatur minima. Tenetur quia natus voluptas facere doloremque itaque eos. Aliquid in dolores et.\n\nNon veniam non odio debitis nulla itaque autem. Et temporibus qui repudiandae debitis non eum. Et vitae earum impedit est ipsam in ut.\n\nAt aliquid at vitae sed corrupti et autem praesentium. Numquam fugit in consectetur consequatur sed et aut.\n\nEt odit iusto iusto quod rerum corporis dolor. Explicabo nemo sapiente saepe libero. Rerum voluptatem qui veritatis est.\n\nOptio aliquid ex dolore. Eos blanditiis aut dignissimos laboriosam placeat eum enim. Provident voluptas dolor eum nam quisquam dolores.\n\nMinima sed vero iusto. Voluptatem ut qui natus ea quis. Possimus dolor repudiandae tenetur quam voluptas fugiat minus dolores.\n\nMagnam eum non eos id molestiae. Nesciunt tempore voluptatem voluptates autem. Doloremque ut rerum reiciendis et. Beatae sint non atque ea.\n\nVoluptate sint et aut amet tenetur. Natus quam laborum est suscipit qui pariatur qui. Ad saepe tempore rerum voluptas voluptates sint iste.', 'Post_image3jpg', '2017-07-21 08:00:00', '2017-07-21 08:00:00'),
(4, 3, 'Quibusdam veritatis cum ex voluptatem iste vitae nulla odit qui omnis et quis magnam repellat.', 'molestiae-aut-velit-voluptatibus-est-asperiores', 'Cum sit nihil est voluptas aut dolorem. Quia quae officiis ut a dicta eaque nisi. Velit est voluptatem itaque labore soluta occaecati aut.', 'Dolores libero accusamus cum ut accusantium doloremque sapiente ut. Pariatur voluptas consequatur id. Qui reiciendis earum possimus sit recusandae cum. Nemo numquam odit deserunt assumenda sed cumque odio.\n\nAperiam dolores odit non distinctio omnis. Voluptatem provident quidem libero qui repudiandae earum delectus. In laborum modi harum quod eum illo ullam.\n\nNostrum deleniti soluta sit est et magnam nihil porro. Repudiandae dolorem nostrum velit totam. Et et at deleniti quia ad aspernatur.\n\nNeque quo aut quas quos. Debitis cumque consequatur nam saepe et rerum. Excepturi dolor et voluptas neque in fuga. Qui numquam aperiam explicabo recusandae sint id et.\n\nVoluptas recusandae sunt est sit quia doloribus fugiat. Sunt nam culpa iusto dolores qui ipsum possimus. Qui earum accusantium est qui et molestias neque. Ut quibusdam culpa ut dicta eos et voluptas.\n\nIpsa velit praesentium sunt eos dolorem perspiciatis molestiae. Amet non esse exercitationem suscipit magnam laborum. Assumenda id libero in vero. Ratione et blanditiis placeat.\n\nCommodi officia facere nam sit vitae. Aut architecto neque totam incidunt. Ab soluta fugiat et quis. Temporibus itaque omnis molestiae necessitatibus nostrum. Consequatur fuga aperiam vitae harum sit harum.\n\nMagni dignissimos velit debitis ratione voluptatem et doloribus reprehenderit. Dicta et fuga omnis libero tempore. Quod magnam laboriosam deserunt quam ut.\n\nOfficiis sapiente molestiae vel aut nam. In unde nostrum odit earum totam impedit consequatur. Inventore molestiae aut molestiae eveniet placeat ut qui.\n\nCorporis vel eos dolores nesciunt et autem. Nesciunt quasi aliquid fugit fugit enim. Voluptas et provident vel sint aut et iure.\n\nDebitis labore debitis nihil perferendis sit sint. Doloremque doloribus aut mollitia possimus debitis. Voluptates pariatur nihil est numquam natus. Fuga consequuntur fuga dignissimos quis provident voluptas aut qui. Molestiae tempora aliquam consequuntur cupiditate esse iste possimus.\n\nQuod quisquam maxime dolores nulla ab enim similique. Dolorem aut asperiores ipsum quis qui et. Molestias molestias quo dicta voluptatem quas.\n\nAlias voluptates quas necessitatibus. Nihil quo quisquam unde. Amet corporis est maxime aut debitis quia. Explicabo ex voluptas repellendus omnis repellendus amet voluptates.', 'Post_image5jpg', '2017-07-22 08:00:00', '2017-07-22 08:00:00'),
(5, 2, 'Ut eaque adipisci velit eos molestias omnis.', 'aliquam-ut-voluptatem-culpa-fugiat-sed', 'Quis quod voluptatibus ut quidem. Eum deleniti labore ut fuga fugit ut enim. Rerum perferendis numquam ut dolorem excepturi qui. Labore hic fugiat et sint voluptatem aut.', 'Autem est voluptas asperiores laudantium aut. Sed dolorum corporis rem est est aut minima praesentium. Nulla labore pariatur tenetur soluta et. At voluptas nihil expedita reiciendis ab rerum.\n\nNon molestiae cum sit autem. Aut odit fugit possimus. Doloremque voluptatibus quasi ipsam sapiente sed.\n\nNemo quo explicabo dolor quasi maxime veritatis odit. Et accusantium rerum nam dolores rerum maxime. Reprehenderit quasi consectetur nostrum qui quos quia.\n\nAutem fugit rerum corrupti consequuntur et dolorem. Molestiae est ut fuga reiciendis nostrum ut. Consequatur aut nisi ipsam aut quas. Quos provident cumque autem id.\n\nLaborum eos nemo quibusdam et aperiam distinctio. Dolorum soluta sit vel eius. Sit voluptatum molestiae omnis quasi modi.\n\nQui distinctio id minima laboriosam sequi omnis non. Minima atque sit quo expedita modi eaque magnam porro. Rerum ut quaerat corrupti omnis quo. Tempora veniam autem magni velit omnis.\n\nAut minima sit quidem dolor qui. Eum voluptas rerum ratione quo. Error quo et omnis fuga eum.\n\nVoluptatum velit ut assumenda laboriosam est. Commodi officia voluptatem architecto quia voluptas.\n\nQui excepturi excepturi nesciunt unde aut dolorum debitis. Vel architecto architecto unde pariatur ad velit omnis in. Sit quisquam ad necessitatibus quas veniam blanditiis suscipit. Natus qui vel debitis et.\n\nUt dolorum non recusandae provident. Non nisi id quod qui quo eaque molestiae. Voluptas et in alias aut vero dolor. Sed nesciunt adipisci ad ut repellendus deleniti.', NULL, '2017-07-23 08:00:00', '2017-07-23 08:00:00'),
(6, 1, 'Soluta earum sit est maiores minus ut soluta amet repellendus non qui incidunt odio exercitationem sint.', 'dolorum-sit-libero-excepturi-labore-ducimus', 'Qui consequatur iure voluptas aut velit soluta rerum. Illum ipsa eius quod animi facere facere. Laboriosam aut consequatur odit beatae rerum quas quia. Quo recusandae et veritatis labore corrupti.', 'Corporis quam impedit sint cum. Voluptate magnam distinctio aut odit non autem exercitationem. Vitae numquam esse atque pariatur velit non. Autem nobis sunt rerum explicabo.\n\nUnde reiciendis aut eaque aperiam laudantium dicta. Beatae nostrum eum officiis dolor. Autem aperiam eaque repellendus a reprehenderit rerum ipsum. Molestias laborum hic magni est vel iure.\n\nEst dignissimos et maiores a. Tempora ut saepe sint minus ipsa sed. Et modi at voluptatem temporibus. Voluptatem pariatur minus similique ut quibusdam deserunt.\n\nQuis temporibus eum quasi dolores est. Ratione officiis dolorem qui nesciunt. Minus dolorum possimus suscipit qui. Mollitia nisi eaque aut.\n\nVoluptas eius itaque adipisci eaque repellendus veritatis corrupti. Repudiandae aut ipsam cumque enim ullam nihil. Magni et beatae consectetur.\n\nExercitationem corrupti ut harum sint dolor facilis qui. Iure dolore autem quo non aliquam. Non qui libero in.\n\nVeniam veniam sed est ut error cupiditate. Est praesentium quis rerum quaerat exercitationem. Laudantium non voluptates quidem eveniet facere quae. Molestias reprehenderit debitis labore sit.\n\nUt at voluptatem fugit quia atque quasi dignissimos. Non totam laboriosam possimus corrupti. Iste ullam corrupti et enim nesciunt quo facere quas. Sed unde ut aut velit dignissimos quod ut. Distinctio culpa et dolores et et.\n\nMaxime cum rerum provident ut libero quia. Expedita et vel impedit saepe hic molestiae. Sint dolorem molestiae placeat rerum numquam delectus sint. In in nesciunt ut molestias.\n\nAlias autem et voluptatem dolor at. Ut itaque sint consequatur deserunt quaerat vero. Rem earum voluptate vel quod. Sit laudantium consequatur amet consequatur.', 'Post_image1jpg', '2017-07-24 08:00:00', '2017-07-24 08:00:00'),
(7, 2, 'Inventore est suscipit illum facere delectus neque officiis saepe corporis ut vero et.', 'autem-neque-in-dolorem-aut', 'Atque dolorem consequatur error minima. Debitis voluptate aut omnis omnis tenetur voluptatem. Similique id praesentium recusandae eaque et. Veniam repudiandae facere quis ad voluptatem.', 'Enim qui eos et. Error quo nobis quis quae impedit laboriosam dicta. Et eos enim eum perspiciatis. Sit aut eum id qui dicta. Odit temporibus dolore facere sed.\n\nEligendi dolore minus aut. Est reprehenderit voluptatum libero. Adipisci ut ut qui beatae placeat nam.\n\nNeque natus rerum sed explicabo natus et quia. Eum odit aliquam voluptatum sunt non. Ut accusantium a enim beatae.\n\nUnde autem id dolorum id nisi possimus et. Repudiandae iusto ratione illo aut. Quidem aspernatur omnis inventore illum.\n\nExercitationem itaque odio similique qui architecto est. Vel et voluptatem nemo magnam nesciunt eum expedita. Temporibus voluptas aut voluptas blanditiis.\n\nVoluptatem est inventore veniam adipisci. In quam sed consectetur qui eos id. Qui vel quia non aut ea.\n\nEx laudantium perspiciatis nihil in. Ex impedit excepturi vel necessitatibus illo atque repellendus dolorem. Ratione itaque corrupti explicabo. Consequatur eos fugit quo aliquid velit sapiente asperiores.\n\nAut sit ut repellat dolores ipsum ut. Aspernatur voluptatem et reiciendis mollitia repellat. Modi ducimus ratione deleniti magnam laborum nihil. Rerum ab maxime necessitatibus quae quia debitis.\n\nEt ex et enim ducimus voluptatem facere repellendus. Animi nisi quo aperiam enim quas. Ut assumenda esse dignissimos voluptas.\n\nVoluptatem delectus velit nam tempore et. Doloremque aperiam quo sit. Nihil exercitationem dolor fuga totam neque eveniet.\n\nFacilis quod fuga maxime. Possimus et temporibus sapiente expedita omnis. Sapiente incidunt sed corporis sint delectus magni et dicta.\n\nVoluptate sed reiciendis enim ullam eum saepe. Et facilis optio nihil assumenda magnam quo aspernatur neque. Dolorem eum ad aut labore dolorum iste.\n\nRecusandae deserunt perferendis placeat nihil aspernatur. Quia blanditiis autem explicabo facilis est. Ratione atque sit magnam facilis.', 'Post_image4jpg', '2017-07-25 08:00:00', '2017-07-25 08:00:00'),
(8, 2, 'Hic rerum ducimus voluptatibus ut commodi natus quo.', 'vitae-velit-porro-nulla-ut-aut-eveniet-ipsam', 'Repellat id iusto aliquid commodi quae vel. Temporibus voluptatem aliquam excepturi reiciendis magnam aliquid nisi ipsum. Ut porro quisquam officia commodi asperiores ut quos. Voluptate sed tempore sed deleniti eum rerum rem. Quia sed magni magnam tempora.', 'Labore cupiditate saepe neque sint. Rem ipsa quia est non magnam itaque molestiae. Officiis id qui itaque ipsa numquam nobis illo deserunt. Ipsam inventore asperiores sed qui veniam reprehenderit ut et.\n\nDicta consequatur voluptatem ut possimus ullam qui reiciendis. Dolorem quis rerum sed. Enim enim neque cupiditate. Et at molestias et maiores sunt ut quod.\n\nAutem voluptatibus incidunt nihil omnis quia amet numquam. Enim dolorem ut voluptas vero ducimus illo. Incidunt aliquid ipsa quisquam sunt aut. Qui eveniet explicabo voluptatem ea velit et.\n\nQuia ratione sit reprehenderit et officiis ipsum itaque facere. Dolorem cum explicabo perferendis non. Et ab repellat qui quibusdam in. Ipsam molestiae sequi ut voluptatum.\n\nEa dolor fuga voluptates velit hic unde sint. Est quos cupiditate pariatur consectetur consequuntur voluptas. Ea aut quia soluta doloribus. Debitis a porro repellendus sunt laudantium minima voluptatem at.\n\nAperiam sequi et voluptates ratione doloribus blanditiis qui. Harum distinctio praesentium repudiandae provident ullam fuga ab. Omnis omnis pariatur maxime dolor beatae et. Recusandae sint eius nobis voluptates.\n\nSequi ut laudantium fuga et non natus quis. Sed omnis aperiam saepe in eveniet in. Quo velit nam veniam quidem. Unde nihil reiciendis rerum id enim.\n\nQuisquam voluptatum voluptatem omnis. Dolorem debitis iusto iste molestiae. Nisi illo nisi voluptas a odit magni laboriosam. Consectetur ut in eos est consequuntur quos.\n\nMinima fuga autem minima perspiciatis provident. Voluptate eos enim distinctio. Ducimus est et illum.\n\nId qui provident doloribus sed animi culpa reiciendis officia. Ut harum eos placeat distinctio voluptas aut et. Praesentium necessitatibus iste qui nesciunt odit. Voluptatem aliquam sequi repellendus delectus consequatur aut saepe.\n\nVelit accusantium rem ratione quia. Asperiores voluptate ipsam totam est totam dolorum et. Aut non tempore natus. Ipsa iusto quam molestias sint consequatur ad.', 'Post_image3jpg', '2017-07-26 08:00:00', '2017-07-26 08:00:00'),
(9, 3, 'Aperiam nihil magni nemo exercitationem a corrupti inventore harum quibusdam perspiciatis.', 'voluptatibus-cumque-praesentium-cum-molestiae-quis-quam', 'Officiis sed cupiditate soluta numquam delectus voluptas quas quaerat. Recusandae ut laudantium dolorem odio pariatur consequatur delectus. Unde reprehenderit recusandae aliquam deleniti non. Harum itaque iste reprehenderit tempora qui.', 'Qui dicta architecto aut aliquid. Ex neque ipsa molestiae qui magnam dolor natus. Saepe consequatur modi qui officia ut est quos asperiores.\n\nNam sint fugit facere nobis unde veritatis quas. Ut neque dolore rerum. Unde explicabo corrupti corrupti quae culpa omnis minus. Dolores libero veritatis ut error natus neque. Dolor repellat est ratione consequatur.\n\nOmnis commodi et officia veniam. Iste cumque dolor nam autem. Eum est eos molestiae repellat sit.\n\nRatione dolorem beatae ullam minima magnam sit. Assumenda dolorem nisi perferendis. Quia recusandae veniam vel ex accusamus. Ut impedit rem ullam cumque.\n\nQuo enim et ducimus delectus. Libero culpa et blanditiis quia at delectus dolor.\n\nPlaceat libero optio fugiat autem quaerat. Dolorem quo et voluptatum amet tempora. Est praesentium dicta ratione sapiente exercitationem et accusantium. Non dolor vero et dolor aut dolorem.\n\nSapiente consequuntur cupiditate atque velit nesciunt dolorum ex provident. Temporibus voluptatum accusantium iste et. Commodi iste debitis nihil voluptate ut quae eum. Quo amet vel accusamus voluptas quas quis exercitationem nesciunt.\n\nVoluptate omnis quia doloremque. Sed quisquam aliquam nihil ipsum optio consequatur perspiciatis. Unde excepturi eveniet sunt quas consequatur molestias magni quia.\n\nSaepe qui culpa ut enim. Recusandae odio sit quae sunt temporibus. Dolores explicabo consequatur quidem porro. Et fugiat voluptate error ullam quidem similique voluptatibus. Quos repudiandae et ducimus sit atque illum dolorum.\n\nQui optio quia culpa quasi ab distinctio facere. Consequatur omnis et autem asperiores. Consequatur error aspernatur cumque magnam mollitia et voluptas.\n\nMinima quia ut sit sit. Nam nobis laboriosam dolor necessitatibus quaerat vitae fugiat. Rem dolorem doloribus vel esse deserunt velit. Ipsum dicta maiores praesentium modi deserunt provident.\n\nQuidem at vel tempore est. Accusamus eligendi amet ratione voluptas quia soluta quia. Ea magnam cum odit. Et numquam iusto fuga ut aut.', NULL, '2017-07-27 08:00:00', '2017-07-27 08:00:00'),
(10, 3, 'Voluptas deserunt enim totam veritatis sit qui vero numquam sapiente expedita reprehenderit.', 'necessitatibus-maiores-amet-voluptatem-distinctio-laborum-veniam-nam', 'Dicta maiores architecto maiores qui sit perferendis. Quia explicabo quasi laborum modi voluptas quia ut enim. Voluptatem consequatur debitis enim. Fugit saepe consectetur saepe est aut. Consequuntur architecto sint cupiditate reprehenderit iste.', 'Officia sequi est ipsum aut nam dignissimos ullam. Quia totam perferendis officiis et ut tempora qui. Sit qui nesciunt ipsam ad occaecati eum. Aspernatur libero vitae porro.\n\nIpsam odio maxime voluptas ut dolor culpa. Est aperiam veniam ratione qui dolorum aspernatur optio. Est iusto est illo debitis eos incidunt qui. Consequuntur eos et quia distinctio. Dolorem aut sunt harum sapiente.\n\nAt impedit omnis ea debitis numquam fuga. Alias non libero exercitationem aut incidunt sit ipsam eos. Molestiae iste dolorum sed neque sit. Et ea quis molestiae aut vel ex itaque.\n\nQuod nemo dolor veniam quo laborum est. Dolor tenetur qui tempore vel. Aut aliquam non accusantium laudantium.\n\nQui quia dicta ea quia sit ipsa quod. Porro consectetur cupiditate exercitationem iusto perferendis fugit rerum beatae. Debitis distinctio magnam odit id est. Et iste et autem nisi consectetur voluptas necessitatibus.\n\nCommodi ut nam qui quidem minus. Qui voluptatibus odio aut voluptatem qui consequatur quas. Fuga laboriosam eligendi dolores molestias.\n\nEum blanditiis provident quod error vel cumque ipsam ipsum. Facere qui voluptatem ratione voluptate aliquid placeat. Eligendi repudiandae consequatur reiciendis explicabo delectus. Et ut est ut iste voluptatem. Sed quis accusantium ullam tempore a qui.\n\nIste quia vel saepe quo id non. Dolores saepe hic expedita alias. Excepturi dolorem beatae nesciunt dicta quod ad molestiae. Quod dolor quaerat aut voluptas magni voluptas cupiditate molestias. Sed qui eligendi qui amet et voluptatem facere sint.\n\nMinus ex iure doloribus aut nesciunt architecto quos temporibus. Voluptatem quo sint nihil perferendis necessitatibus. Natus non ut facilis excepturi neque.\n\nQui blanditiis natus nobis voluptatibus. Enim soluta ut similique quas eaque aspernatur et in. Quam laudantium rerum magni voluptas inventore quidem. Sit exercitationem sed totam id.', NULL, '2017-07-28 08:00:00', '2017-07-28 08:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Sagesse Diham', 'sagesse@gmail.com', '$2y$10$Dw1FLQR6a9CqzV.tSjBei.eevuGOKvCZXoh/iB/hmDVFalC8NkXWe', NULL, NULL, NULL),
(2, 'melissa Diham', 'melissa@gmail.com', '$2y$10$2eLIKwwBhfDt2KZp2Fq5du7HpM0oV4GdbuAaPGPv.6ySeXvBByasq', NULL, NULL, NULL),
(3, 'Germi Diham', 'Germi@gmail.com', '$2y$10$KE85dtwrOK/Y4fdXyKCfLu4SyQO8eaXwwSGr179y7ALngA4gy4pSC', NULL, NULL, NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_author_id_foreign` (`author_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`);
--
-- Base de données :  `location_db`
--
CREATE DATABASE IF NOT EXISTS `location_db` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `location_db`;

-- --------------------------------------------------------

--
-- Structure de la table `bien`
--

CREATE TABLE `bien` (
  `id_bien` int(11) NOT NULL,
  `libelle` varchar(60) NOT NULL,
  `description` text NOT NULL,
  `prix` double NOT NULL,
  `ville` varchar(60) NOT NULL,
  `adresse` varchar(60) NOT NULL,
  `date` varchar(60) NOT NULL,
  `etat` int(11) NOT NULL DEFAULT '0',
  `proprietaire` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `bien`
--

INSERT INTO `bien` (`id_bien`, `libelle`, `description`, `prix`, `ville`, `adresse`, `date`, `etat`, `proprietaire`) VALUES
(1, 'Maison studio', 'In publishing and graphic design, lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document without relying on meaningful content. Replacing the actual content with placeholder text allows designers to design the form of the content before the content itself has been produced.', 25, 'dakar', 'villa 6 castor', '22/6/2019', 1, 1),
(2, 'Maison de 4 chambre', 'e Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n\'a pas fait que survivre cinq siècles, mais s\'est aussi adapté à la bureautique informatique, sans que son contenu n\'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.', 250, 'Dakar', 'castor', '6/9/2019', 0, 2),
(3, 'Studio', 'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n\'a pas fait que survivre cinq siècles, mais s\'est aussi adapté à la bureautique informatique, sans que son contenu n\'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.', 75, 'Dakar', 'Derkle', '22/6/2019', 0, 1),
(4, 'Maison de 1 chambre', 'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n\'a pas fait que survivre cinq siècles, mais s\'est aussi adapté à la bureautique informatique, sans que son contenu n\'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.', 250, 'Dakar', 'castor', '22/5/2019', 0, 1),
(5, 'Maison 2 chambres', 'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n\'a pas fait que survivre cinq siècles, mais s\'est aussi adapté à la bureautique informatique, sans que son contenu n\'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.', 65, 'Saint-louis', 'Jet d\'eau', '22/9/2019', 0, 1),
(6, 'Maison de 2 chambres', 'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n\'a pas fait que survivre cinq siècles, mais s\'est aussi adapté à la bureautique informatique, sans que son contenu n\'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.', 75, 'Dakar', 'Sacre Coeur', '22/5/2019', 0, 2),
(7, 'Maison de 3 chambres', 'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n\'a pas fait que survivre cinq siècles, mais s\'est aussi adapté à la bureautique informatique, sans que son contenu n\'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.', 65, 'Saint-louis', 'Jet d\'eau villa 2', '22/6/2019', 0, 2),
(8, 'Studio + cuisine ', 'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n\'a pas fait que survivre cinq siècles, mais s\'est aussi adapté à la bureautique informatique, sans que son contenu n\'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.', 200, 'Dakar', 'jet-d\'eau', '14/3/2016', 0, 1),
(9, 'Sutdio sans cuisine avec douche', 'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n\'a pas fait que survivre cinq siècles, mais s\'est aussi adapté à la bureautique informatique, sans que son contenu n\'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.', 65, 'Saint-louis', 'Jet d\'eau villa 9', '22/6/2019', 1, 1),
(10, 'Sagesse', 'mmmmmmmmmmmmm', 55.66, 'ssssssssssss', 'ùùùùùùùùùù', '2019-07-23', 1, 1),
(11, 'Lars', 'kkskskksksk', 56.66, 'dakar', 'catso', '2019-07-23', 1, 2),
(12, 'Maison de 4 chambres', 'sjsjnjnljljljnjnnljnlnlj', 20, 'Dakar', 'Castor', '2019-07-23', 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `location`
--

CREATE TABLE `location` (
  `id_fac` int(11) NOT NULL,
  `libelle_client` varchar(60) NOT NULL,
  `telephone` varchar(60) NOT NULL,
  `cni` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `quotions` double NOT NULL,
  `date` varchar(30) NOT NULL,
  `bien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `location`
--

INSERT INTO `location` (`id_fac`, `libelle_client`, `telephone`, `cni`, `email`, `quotions`, `date`, `bien`) VALUES
(1, 'Sagesse', '555', 'MMM', 'mariedihambou@yahoo.fr', 55.25, '2019-07-22', 2),
(2, 'Sagesse', '555', '99999', 'mariedihambou@yahoo.fr', 55.25, '2019-07-22', 1),
(3, 'Sagesse', 'MMM', '99999', 'mariedihambou@yahoo.fr', 55.25, '2019-07-23', 10),
(4, 'Sagesse', '78962456', '99999', 'mariedihambou@yahoo.fr', 55.25, '2019-07-23', 1),
(5, 'MM', '555', '99999', 'mariedihambou@yahoo.fr', 55.25, '2019-07-23', 11),
(6, 'Sagesse', '78962456', '99999', 'mariedihambou@yahoo.fr', 55.25, '2019-07-23', 12),
(7, 'dia', '555', '99999', 'mariedihambou@yahoo.fr', 55.25, '2019-07-23', 9);

-- --------------------------------------------------------

--
-- Structure de la table `payement`
--

CREATE TABLE `payement` (
  `id_pay` int(11) NOT NULL,
  `nom_client` varchar(60) NOT NULL,
  `date` varchar(60) NOT NULL,
  `mois` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `telephone` varchar(60) NOT NULL,
  `adresse` varchar(60) NOT NULL,
  `prix` varchar(60) NOT NULL,
  `ville` varchar(60) NOT NULL,
  `location` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `payement`
--

INSERT INTO `payement` (`id_pay`, `nom_client`, `date`, `mois`, `email`, `telephone`, `adresse`, `prix`, `ville`, `location`) VALUES
(1, 'Sagesse', '2019-07-23', 'Janvier', 'mariedihambou@yahoo.fr', '78962456', 'Castor', '55.66', 'Brazzaville', 1),
(2, 'Lars', '2019-07-23', 'Janviers', 'mariedihambou@yahoo.fr', '78962456', 'Castor', '55.66', 'Brazzaville', 11),
(3, 'Sagesse', '2019-07-23', 'Decembre', 'mariedihambou@yahoo.fr', '78962456', 'Castor', '25.000', 'Saint-louis', 9);

-- --------------------------------------------------------

--
-- Structure de la table `proprietaire`
--

CREATE TABLE `proprietaire` (
  `id_pro` int(11) NOT NULL,
  `nom` varchar(60) NOT NULL,
  `prenom` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `tel` varchar(30) NOT NULL,
  `date` varchar(30) NOT NULL,
  `nationalite` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `proprietaire`
--

INSERT INTO `proprietaire` (`id_pro`, `nom`, `prenom`, `email`, `tel`, `date`, `nationalite`) VALUES
(1, 'Thonny', 'Lars', 'lars@gmail.com', '78565306', '22/5/2019', 'Congolaise'),
(2, 'David', 'Mokoko', 'david@gmail.com', '7789560', '22/6/2019', 'Congolaise');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id` int(11) NOT NULL,
  `prenom` varchar(60) NOT NULL,
  `login` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `prenom`, `login`, `password`) VALUES
(1, 'Sagesse', 'sagesse@gmail.com', 'adminsagesse');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `bien`
--
ALTER TABLE `bien`
  ADD PRIMARY KEY (`id_bien`),
  ADD KEY `proprietaire` (`proprietaire`);

--
-- Index pour la table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id_fac`),
  ADD KEY `bien` (`bien`);

--
-- Index pour la table `payement`
--
ALTER TABLE `payement`
  ADD PRIMARY KEY (`id_pay`),
  ADD KEY `location` (`location`);

--
-- Index pour la table `proprietaire`
--
ALTER TABLE `proprietaire`
  ADD PRIMARY KEY (`id_pro`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `bien`
--
ALTER TABLE `bien`
  MODIFY `id_bien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `location`
--
ALTER TABLE `location`
  MODIFY `id_fac` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `payement`
--
ALTER TABLE `payement`
  MODIFY `id_pay` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `proprietaire`
--
ALTER TABLE `proprietaire`
  MODIFY `id_pro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `bien`
--
ALTER TABLE `bien`
  ADD CONSTRAINT `bien_ibfk_1` FOREIGN KEY (`proprietaire`) REFERENCES `proprietaire` (`id_pro`);

--
-- Contraintes pour la table `location`
--
ALTER TABLE `location`
  ADD CONSTRAINT `location_ibfk_1` FOREIGN KEY (`id_fac`) REFERENCES `bien` (`id_bien`);

--
-- Contraintes pour la table `payement`
--
ALTER TABLE `payement`
  ADD CONSTRAINT `payement_ibfk_1` FOREIGN KEY (`location`) REFERENCES `bien` (`id_bien`);
--
-- Base de données :  `mailverification`
--
CREATE DATABASE IF NOT EXISTS `mailverification` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `mailverification`;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_10_21_095931_create_users_activation_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_activated` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `is_activated`) VALUES
(8, 'Dihambou rosiss', 'dihambouroslyn@gmail.com', '$2y$10$GCl.eCwMAv72ZCO2rs0NsuPxD40C/9dr2SS78gCu3UpXZ9xwo5vUm', NULL, '2019-10-21 13:32:51', '2019-10-21 13:32:51', 0);

-- --------------------------------------------------------

--
-- Structure de la table `users_activation`
--

CREATE TABLE `users_activation` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users_activation`
--

INSERT INTO `users_activation` (`id`, `id_user`, `token`, `create_at`) VALUES
(1, 2, 'l74gH1MNIhxzgsd7vz5BHABs8cKDbE', '2019-10-21 12:26:42');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users_activation`
--
ALTER TABLE `users_activation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_activation_id_user_foreign` (`id_user`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `users_activation`
--
ALTER TABLE `users_activation`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `users_activation`
--
ALTER TABLE `users_activation`
  ADD CONSTRAINT `users_activation_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE;
--
-- Base de données :  `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Structure de la table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Structure de la table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

--
-- Déchargement des données de la table `pma__central_columns`
--

INSERT INTO `pma__central_columns` (`db_name`, `col_name`, `col_type`, `col_length`, `col_collation`, `col_isNull`, `col_extra`, `col_default`) VALUES
('BaseForm', 'of_id', 'int', '10', '', 0, 'auto_increment,UNSIGNED', '');

-- --------------------------------------------------------

--
-- Structure de la table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Déchargement des données de la table `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"angular_direct\":\"angular\",\"snap_to_grid\":\"off\",\"relation_lines\":\"true\"}');

-- --------------------------------------------------------

--
-- Structure de la table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Déchargement des données de la table `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'database', 'db', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"structure_or_data_forced\":\"0\",\"table_select[]\":[\"consultation\",\"medecin\",\"patient\",\"service\",\"specialite\"],\"table_structure[]\":[\"consultation\",\"medecin\",\"patient\",\"service\",\"specialite\"],\"table_data[]\":[\"consultation\",\"medecin\",\"patient\",\"service\",\"specialite\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@DATABASE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure de la table @TABLE@\",\"latex_structure_continued_caption\":\"Structure de la table @TABLE@ (suite)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Contenu de la table @TABLE@\",\"latex_data_continued_caption\":\"Contenu de la table @TABLE@ (suite)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"structure_and_data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"structure_and_data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_procedure_function\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_create_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Structure de la table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Structure de la table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Structure de la table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Déchargement des données de la table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"laravel_post\",\"table\":\"posts\"},{\"db\":\"laravel_post\",\"table\":\"users\"},{\"db\":\"laravel_post\",\"table\":\"tbl_posts\"},{\"db\":\"laravel_post\",\"table\":\"migrations\"},{\"db\":\"laravel_post\",\"table\":\"password_resets\"},{\"db\":\"BaseForm\",\"table\":\"tbl_admin\"},{\"db\":\"BaseForm\",\"table\":\"tbl_intervenants\"},{\"db\":\"BaseForm\",\"table\":\"tbl_entreprise_intervenantes\"},{\"db\":\"BaseForm\",\"table\":\"tbl_itv\"},{\"db\":\"BaseForm\",\"table\":\"tbl_organisme_formation\"}]');

-- --------------------------------------------------------

--
-- Structure de la table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Structure de la table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Structure de la table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Structure de la table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

--
-- Déchargement des données de la table `pma__table_info`
--

INSERT INTO `pma__table_info` (`db_name`, `table_name`, `display_field`) VALUES
('dbexam', 'consultation', 'commenatire'),
('dbexam', 'medecin', 'code'),
('dbtest', 'agent', 'nom'),
('test_java', 'Agent', 'Nom');

-- --------------------------------------------------------

--
-- Structure de la table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Déchargement des données de la table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'BaseForm', 'tbl_formations', '{\"sorted_col\":\"`tbl_formations`.`formt_name`  ASC\"}', '2019-11-11 10:53:02'),
('root', 'dba_jee', 'users', '[]', '2019-04-23 15:36:37');

-- --------------------------------------------------------

--
-- Structure de la table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Déchargement des données de la table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('', '2019-09-04 22:41:35', '{\"lang\":\"fr\"}'),
('root', '2019-12-03 17:45:29', '{\"lang\":\"fr\",\"Console\\/Mode\":\"show\",\"NavigationWidth\":303}');

-- --------------------------------------------------------

--
-- Structure de la table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Structure de la table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Index pour la table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Index pour la table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Index pour la table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Index pour la table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Index pour la table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Index pour la table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Index pour la table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Index pour la table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Index pour la table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Index pour la table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Index pour la table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Index pour la table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Index pour la table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Index pour la table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Index pour la table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Index pour la table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Index pour la table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Base de données :  `projet_jee`
--
CREATE DATABASE IF NOT EXISTS `projet_jee` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `projet_jee`;

-- --------------------------------------------------------

--
-- Structure de la table `bien`
--

CREATE TABLE `bien` (
  `id` int(8) NOT NULL,
  `surface` varchar(30) NOT NULL,
  `nbreChambre` int(11) NOT NULL,
  `adresse` varchar(30) NOT NULL,
  `Ville` int(8) NOT NULL,
  `MontantLocation` double NOT NULL,
  `Info` varchar(500) NOT NULL,
  `type` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `bien`
--

INSERT INTO `bien` (`id`, `surface`, `nbreChambre`, `adresse`, `Ville`, `MontantLocation`, `Info`, `type`) VALUES
(1, '200', 1, 'Sacré coeur 2', 1, 20000, 'Douche Interne - Balcon', 3),
(2, '20000', 4, 'grand dakar', 1, 2000000, '2 chambres + 1 salon + 1cuisine', 2),
(3, '3000', 1, 'rue 12', 2, 6000, 'bla bla bla', 1),
(4, '3000', 1, 'rue 12', 2, 6000, 'bla bla bla', 1),
(5, '288888', 1, 'JJJ', 3, 8000000, 'lllll kkkkkkkk nnnnnnnnn', 3),
(6, '30000', 4, 'fkjkj', 3, 566000, 'bla bla bla bla', 2),
(7, '30000', 4, 'fkjkj', 3, 566000, 'bla bla bla bla', 2),
(8, '30000', 4, 'fkjkj', 3, 566000, 'bla bla bla bla', 2);

-- --------------------------------------------------------

--
-- Structure de la table `etat`
--

CREATE TABLE `etat` (
  `id` int(8) NOT NULL,
  `lib` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `Bien` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `facture`
--

CREATE TABLE `facture` (
  `id` int(8) NOT NULL,
  `num` varchar(30) NOT NULL,
  `Montant` double NOT NULL,
  `mois` varchar(30) NOT NULL,
  `etat` int(11) NOT NULL,
  `Location` int(8) NOT NULL,
  `TypeFacture` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `facture`
--

INSERT INTO `facture` (`id`, `num`, `Montant`, `mois`, `etat`, `Location`, `TypeFacture`) VALUES
(11, 'Fact-354310210-A', 2000000, 'JULY', 0, 16, 1),
(12, 'Fact-354310210-B', 2000000, 'JULY', 0, 16, 1);

-- --------------------------------------------------------

--
-- Structure de la table `location`
--

CREATE TABLE `location` (
  `id` int(8) NOT NULL,
  `num` varchar(30) NOT NULL,
  `montantLocation` double NOT NULL,
  `dateDebut` date NOT NULL,
  `dateFin` date DEFAULT NULL,
  `Bien` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `location`
--

INSERT INTO `location` (`id`, `num`, `montantLocation`, `dateDebut`, `dateFin`, `Bien`) VALUES
(1, 'LOC0001', 2000, '2019-07-12', NULL, 1),
(2, 'LOC0002', 30000, '2019-07-12', '2019-07-13', 1),
(10, 'LOC-1046837438', 6000, '2019-07-20', NULL, 3),
(11, 'LOC-1659292562', 2000000, '2019-07-21', NULL, 2),
(12, 'LOC-1002817750', 2000000, '2019-07-21', NULL, 2),
(13, 'LOC-1483872182', 2000000, '2019-07-21', NULL, 2),
(14, 'LOC-1262812348', 2000000, '2019-07-21', NULL, 2),
(15, 'LOC-2120791513', 2000000, '2019-07-21', NULL, 2),
(16, 'LOC-56801389', 2000000, '2019-07-21', NULL, 2);

-- --------------------------------------------------------

--
-- Structure de la table `louer`
--

CREATE TABLE `louer` (
  `Location` int(8) NOT NULL,
  `Client` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `louer`
--

INSERT INTO `louer` (`Location`, `Client`) VALUES
(10, 4),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1);

-- --------------------------------------------------------

--
-- Structure de la table `moyenpaiement`
--

CREATE TABLE `moyenpaiement` (
  `id` int(8) NOT NULL,
  `lib` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `moyenpaiement`
--

INSERT INTO `moyenpaiement` (`id`, `lib`) VALUES
(1, 'Virement'),
(2, 'cheque'),
(3, 'Espèce');

-- --------------------------------------------------------

--
-- Structure de la table `paiement`
--

CREATE TABLE `paiement` (
  `id` int(8) NOT NULL,
  `num` varchar(30) NOT NULL,
  `date` date NOT NULL,
  `montant` double NOT NULL,
  `moyenPaiement` int(8) NOT NULL,
  `Facture` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `personne`
--

CREATE TABLE `personne` (
  `id` int(8) NOT NULL,
  `cni` varchar(30) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `adresse` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `tel` varchar(15) NOT NULL,
  `raison_social` varchar(100) DEFAULT NULL,
  `type` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `personne`
--

INSERT INTO `personne` (`id`, `cni`, `nom`, `prenom`, `adresse`, `email`, `tel`, `raison_social`, `type`) VALUES
(1, 'OA001', 'Sagesse', 'Roslyn', 'castor', 's@g.com', '771234567', NULL, 2),
(2, 'OA0012', 'nel', 'david', 'yoff', 'd@g.com', '775455454', 'embêter les gens', 1),
(3, 'OA0012', 'nel', 'david', 'yoff', 'd@g.com', '775455454', 'embêter les gens', 1),
(4, 'OA0014', 'Thonny', 'Lars', 'sac 2', 'g@g.com', '775105357', '', 1);

-- --------------------------------------------------------

--
-- Structure de la table `photo`
--

CREATE TABLE `photo` (
  `id` int(8) NOT NULL,
  `lib` varchar(64) NOT NULL,
  `Bien` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `posseder`
--

CREATE TABLE `posseder` (
  `Bailleur` int(8) NOT NULL,
  `Bien` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `posseder`
--

INSERT INTO `posseder` (`Bailleur`, `Bien`) VALUES
(1, 2),
(4, 3);

-- --------------------------------------------------------

--
-- Structure de la table `preavis`
--

CREATE TABLE `preavis` (
  `id` int(8) NOT NULL,
  `date` date NOT NULL,
  `motif` varchar(500) NOT NULL,
  `Location` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `typebien`
--

CREATE TABLE `typebien` (
  `id` int(8) NOT NULL,
  `lib` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `typebien`
--

INSERT INTO `typebien` (`id`, `lib`) VALUES
(1, 'Studio'),
(2, 'Appartement'),
(3, 'chambre');

-- --------------------------------------------------------

--
-- Structure de la table `typefacture`
--

CREATE TABLE `typefacture` (
  `id` int(8) NOT NULL,
  `lib` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `typefacture`
--

INSERT INTO `typefacture` (`id`, `lib`) VALUES
(1, 'Client'),
(2, 'Bailleur');

-- --------------------------------------------------------

--
-- Structure de la table `typepersonne`
--

CREATE TABLE `typepersonne` (
  `id` int(8) NOT NULL,
  `lib` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `typepersonne`
--

INSERT INTO `typepersonne` (`id`, `lib`) VALUES
(1, 'Entreprise'),
(2, 'Particulier');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `matricule` varchar(30) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `login` varchar(30) NOT NULL,
  `mdp` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `matricule`, `nom`, `prenom`, `login`, `mdp`) VALUES
(1, 'PT-3866', 'Thonny', 'Lars', 'l@g.com', 'azerty');

-- --------------------------------------------------------

--
-- Structure de la table `ville`
--

CREATE TABLE `ville` (
  `id` int(8) NOT NULL,
  `lib` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `ville`
--

INSERT INTO `ville` (`id`, `lib`) VALUES
(1, 'Dakar'),
(2, 'Louga'),
(3, 'Saint Louis'),
(4, 'Kaolak');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `bien`
--
ALTER TABLE `bien`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`),
  ADD KEY `Ville` (`Ville`);

--
-- Index pour la table `etat`
--
ALTER TABLE `etat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Bien` (`Bien`);

--
-- Index pour la table `facture`
--
ALTER TABLE `facture`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Location` (`Location`),
  ADD KEY `TypeFacture` (`TypeFacture`);

--
-- Index pour la table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Bien` (`Bien`);

--
-- Index pour la table `louer`
--
ALTER TABLE `louer`
  ADD KEY `Location` (`Location`),
  ADD KEY `Client` (`Client`);

--
-- Index pour la table `moyenpaiement`
--
ALTER TABLE `moyenpaiement`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `paiement`
--
ALTER TABLE `paiement`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Facture` (`Facture`),
  ADD KEY `moyenPaiement` (`moyenPaiement`);

--
-- Index pour la table `personne`
--
ALTER TABLE `personne`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`);

--
-- Index pour la table `photo`
--
ALTER TABLE `photo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Bien` (`Bien`);

--
-- Index pour la table `posseder`
--
ALTER TABLE `posseder`
  ADD KEY `Bailleur` (`Bailleur`),
  ADD KEY `Bien` (`Bien`);

--
-- Index pour la table `preavis`
--
ALTER TABLE `preavis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Location` (`Location`);

--
-- Index pour la table `typebien`
--
ALTER TABLE `typebien`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `typefacture`
--
ALTER TABLE `typefacture`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `typepersonne`
--
ALTER TABLE `typepersonne`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `ville`
--
ALTER TABLE `ville`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `bien`
--
ALTER TABLE `bien`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `etat`
--
ALTER TABLE `etat`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `facture`
--
ALTER TABLE `facture`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `location`
--
ALTER TABLE `location`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `moyenpaiement`
--
ALTER TABLE `moyenpaiement`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `paiement`
--
ALTER TABLE `paiement`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `personne`
--
ALTER TABLE `personne`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `photo`
--
ALTER TABLE `photo`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `preavis`
--
ALTER TABLE `preavis`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `typebien`
--
ALTER TABLE `typebien`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `typefacture`
--
ALTER TABLE `typefacture`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `typepersonne`
--
ALTER TABLE `typepersonne`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `ville`
--
ALTER TABLE `ville`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `bien`
--
ALTER TABLE `bien`
  ADD CONSTRAINT `bien_ibfk_1` FOREIGN KEY (`type`) REFERENCES `typebien` (`id`),
  ADD CONSTRAINT `bien_ibfk_2` FOREIGN KEY (`Ville`) REFERENCES `ville` (`id`);

--
-- Contraintes pour la table `etat`
--
ALTER TABLE `etat`
  ADD CONSTRAINT `etat_ibfk_1` FOREIGN KEY (`Bien`) REFERENCES `bien` (`id`);

--
-- Contraintes pour la table `facture`
--
ALTER TABLE `facture`
  ADD CONSTRAINT `facture_ibfk_1` FOREIGN KEY (`TypeFacture`) REFERENCES `typefacture` (`id`),
  ADD CONSTRAINT `facture_ibfk_2` FOREIGN KEY (`Location`) REFERENCES `location` (`id`);

--
-- Contraintes pour la table `location`
--
ALTER TABLE `location`
  ADD CONSTRAINT `location_ibfk_1` FOREIGN KEY (`Bien`) REFERENCES `bien` (`id`);

--
-- Contraintes pour la table `louer`
--
ALTER TABLE `louer`
  ADD CONSTRAINT `louer_ibfk_1` FOREIGN KEY (`Location`) REFERENCES `location` (`id`),
  ADD CONSTRAINT `louer_ibfk_2` FOREIGN KEY (`Client`) REFERENCES `personne` (`id`);

--
-- Contraintes pour la table `paiement`
--
ALTER TABLE `paiement`
  ADD CONSTRAINT `paiement_ibfk_1` FOREIGN KEY (`moyenPaiement`) REFERENCES `moyenpaiement` (`id`),
  ADD CONSTRAINT `paiement_ibfk_2` FOREIGN KEY (`Facture`) REFERENCES `facture` (`id`);

--
-- Contraintes pour la table `personne`
--
ALTER TABLE `personne`
  ADD CONSTRAINT `personne_ibfk_1` FOREIGN KEY (`type`) REFERENCES `typepersonne` (`id`);

--
-- Contraintes pour la table `photo`
--
ALTER TABLE `photo`
  ADD CONSTRAINT `photo_ibfk_1` FOREIGN KEY (`Bien`) REFERENCES `bien` (`id`);

--
-- Contraintes pour la table `posseder`
--
ALTER TABLE `posseder`
  ADD CONSTRAINT `posseder_ibfk_1` FOREIGN KEY (`Bailleur`) REFERENCES `personne` (`id`),
  ADD CONSTRAINT `posseder_ibfk_2` FOREIGN KEY (`Bien`) REFERENCES `bien` (`id`);

--
-- Contraintes pour la table `preavis`
--
ALTER TABLE `preavis`
  ADD CONSTRAINT `preavis_ibfk_1` FOREIGN KEY (`Location`) REFERENCES `location` (`id`);
--
-- Base de données :  `sonar`
--
CREATE DATABASE IF NOT EXISTS `sonar` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `sonar`;
--
-- Base de données :  `staff_appraisal`
--
CREATE DATABASE IF NOT EXISTS `staff_appraisal` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `staff_appraisal`;

-- --------------------------------------------------------

--
-- Structure de la table `departments`
--

CREATE TABLE `departments` (
  `dept_no` varchar(2) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `electives`
--

CREATE TABLE `electives` (
  `id` int(11) NOT NULL,
  `usn` varchar(10) NOT NULL,
  `sub_code` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `hod`
--

CREATE TABLE `hod` (
  `staff_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `department` varchar(2) NOT NULL,
  `email` varchar(50) NOT NULL,
  `confirmation` varchar(50) NOT NULL,
  `activated` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `ratings`
--

CREATE TABLE `ratings` (
  `id` int(11) NOT NULL,
  `usn` varchar(10) NOT NULL,
  `subject` varchar(10) NOT NULL,
  `staff` int(11) NOT NULL,
  `section` varchar(2) NOT NULL,
  `command` int(11) NOT NULL,
  `ability` int(11) NOT NULL,
  `practical` int(11) NOT NULL,
  `dress` int(11) NOT NULL,
  `discipline` int(11) NOT NULL,
  `project` int(11) NOT NULL,
  `social` int(11) NOT NULL,
  `teacher` int(11) NOT NULL,
  `language` int(11) NOT NULL,
  `interest` int(11) NOT NULL,
  `punctuality` int(11) NOT NULL,
  `assesment` int(11) NOT NULL,
  `availability` int(11) NOT NULL,
  `knowledge` int(11) NOT NULL,
  `opinion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `sections`
--

CREATE TABLE `sections` (
  `section_id` varchar(2) NOT NULL,
  `department` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `staff`
--

CREATE TABLE `staff` (
  `staff_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `department` varchar(2) NOT NULL,
  `email` varchar(50) NOT NULL,
  `confirmation` varchar(50) NOT NULL,
  `activated` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `subjects`
--

CREATE TABLE `subjects` (
  `subject_code` varchar(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `section_id` varchar(2) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `semester` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `usn` varchar(10) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `semester` int(11) NOT NULL,
  `section_id` varchar(2) NOT NULL,
  `confirmation` varchar(50) NOT NULL,
  `activated` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`dept_no`),
  ADD KEY `dept_no` (`dept_no`);

--
-- Index pour la table `electives`
--
ALTER TABLE `electives`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_code` (`sub_code`);

--
-- Index pour la table `hod`
--
ALTER TABLE `hod`
  ADD PRIMARY KEY (`staff_id`);

--
-- Index pour la table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `staff` (`staff`),
  ADD KEY `subject` (`subject`),
  ADD KEY `staff_2` (`staff`),
  ADD KEY `section` (`section`);

--
-- Index pour la table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`section_id`),
  ADD KEY `department` (`department`),
  ADD KEY `department_2` (`department`);

--
-- Index pour la table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staff_id`,`department`),
  ADD KEY `department` (`department`),
  ADD KEY `department_2` (`department`);

--
-- Index pour la table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`subject_code`,`section_id`),
  ADD KEY `staff_id` (`staff_id`),
  ADD KEY `section_id` (`section_id`),
  ADD KEY `section_id_2` (`section_id`),
  ADD KEY `section_id_3` (`section_id`),
  ADD KEY `subject_code` (`subject_code`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `section` (`section_id`),
  ADD KEY `section_id` (`section_id`),
  ADD KEY `section_id_2` (`section_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `electives`
--
ALTER TABLE `electives`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_ibfk_1` FOREIGN KEY (`section`) REFERENCES `sections` (`section_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ratings_ibfk_2` FOREIGN KEY (`staff`) REFERENCES `staff` (`staff_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `sections`
--
ALTER TABLE `sections`
  ADD CONSTRAINT `sections_ibfk_1` FOREIGN KEY (`department`) REFERENCES `departments` (`dept_no`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `subjects`
--
ALTER TABLE `subjects`
  ADD CONSTRAINT `subjects_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`staff_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `subjects_ibfk_2` FOREIGN KEY (`section_id`) REFERENCES `sections` (`section_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`section_id`) REFERENCES `sections` (`section_id`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Base de données :  `tekela`
--
CREATE DATABASE IF NOT EXISTS `tekela` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `tekela`;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_09_13_221900_create_tbl_admin_table', 1),
(2, '2019_09_13_223914_create_tbl_category_table', 2),
(3, '2019_09_13_224324_create_tbl_manufacture_table', 3),
(4, '2019_09_13_224818_create_tbl_products_table', 4),
(5, '2019_09_14_003558_create_slider_table', 5),
(6, '2019_09_19_164115_create_tbl_customer_table', 6),
(7, '2019_09_19_185914_create_tbl_shipping_table', 7),
(8, '2019_10_03_211132_create_tbl_payment_table', 8),
(9, '2019_10_03_211232_create_tbl_order_table', 8),
(10, '2019_10_03_211905_create_tbl_order_details_table', 8);

-- --------------------------------------------------------

--
-- Structure de la table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(10) UNSIGNED NOT NULL,
  `admin_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_email`, `admin_password`, `admin_name`, `admin_image`, `admin_phone`, `created_at`, `updated_at`) VALUES
(1, 'dihambouroslyn@gmail.com', '1c597cb038f9a2a514b2bf1348c317b4', 'Sagesse', 'image/pf.jpg', '781578366', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` int(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`, `category_description`, `publication_status`, `created_at`, `updated_at`) VALUES
(1, 'Homme', 'Pour tous les produits et accessoires  de type Masculin', 1, NULL, NULL),
(2, 'Femme', 'Pour tous les produits et accessoires  de type Féminin.', 1, NULL, NULL),
(3, 'Téléphones', 'Pour tous les produits et accessoires  des téléphones portables', 1, NULL, NULL),
(4, 'Vétements', 'Pour tous les produits et accessoires  concernant l\'habillage', 1, NULL, NULL),
(5, 'Electronique', 'Pour tous les produits et accessoires  de type Électroniques', 1, NULL, NULL),
(6, 'Ordianateurs', 'Pour tous les produits et accessoires de type pc, laptop', 1, NULL, NULL),
(7, 'Sport', 'Pour tous les produits et accessoires de type sportif', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `tbl_country`
--

CREATE TABLE `tbl_country` (
  `id` int(11) NOT NULL,
  `country` varchar(60) DEFAULT NULL,
  `state` varchar(60) DEFAULT NULL,
  `city` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tbl_country`
--

INSERT INTO `tbl_country` (`id`, `country`, `state`, `city`) VALUES
(1, 'Congo', 'Brazzavile', 'Madibou'),
(2, 'Congo', 'Pointe Noir', 'Madibou'),
(3, 'Congo', 'Dolisie', 'Madigou'),
(4, 'Congo', 'Infondo', 'Dakar');

-- --------------------------------------------------------

--
-- Structure de la table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `customer_id` int(10) UNSIGNED NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `tbl_customer`
--

INSERT INTO `tbl_customer` (`customer_id`, `customer_name`, `customer_email`, `customer_number`, `customer_password`, `created_at`, `updated_at`) VALUES
(1, 'Sagesse', 'dihambouroslyn@gmail.com', '781578366', '1c597cb038f9a2a514b2bf1348c317b4', NULL, NULL),
(2, 'rosiss', 'dihambouroslyn1@gmail.com', '0775963185', '1c597cb038f9a2a514b2bf1348c317b4', NULL, NULL),
(3, 'Dihambou rosiss', 'dihambouroslyn@gmail.com', '0775963185', '1c597cb038f9a2a514b2bf1348c317b4', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `tbl_manufacture`
--

CREATE TABLE `tbl_manufacture` (
  `manufacture_id` int(10) UNSIGNED NOT NULL,
  `manufacture_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `manufacture_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` int(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `tbl_manufacture`
--

INSERT INTO `tbl_manufacture` (`manufacture_id`, `manufacture_name`, `manufacture_description`, `publication_status`, `created_at`, `updated_at`) VALUES
(1, 'Samsung', 'Pour tous les produits et accessoires de la marque Samsung.', 1, NULL, NULL),
(2, 'Apple', 'Pour tous les produits et accessoires de la marque Apple.', 1, NULL, NULL),
(3, 'Zara', 'Pour tous les produits et accessoires de la marque Zara', 1, NULL, NULL),
(4, 'Nike', 'Pour tous les produits et accessoires de la marque Nike.', 1, NULL, NULL),
(5, 'Techno', 'Pour tous les produits et accessoires  de la marque Techno', 1, NULL, NULL),
(6, 'Model africain', 'pour tous les produits hommes ou femmes africains', 1, NULL, NULL),
(7, 'Adiddas', 'Pour tous les produits et accessoire de  la marque Adiddas', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `order_total` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `tbl_order`
--

INSERT INTO `tbl_order` (`order_id`, `customer_id`, `shipping_id`, `payment_id`, `order_total`, `order_status`, `created_at`, `updated_at`) VALUES
(1, 1, 12, 6, '265.00', 'en attente', '2019-10-04 22:09:47', NULL),
(2, 1, 13, 7, '78.00', 'en attente', '2019-10-07 22:34:36', NULL),
(3, 1, 14, 8, '84.00', 'en attente', '2019-10-08 21:41:09', NULL),
(4, 1, 14, 9, '84.00', 'en attente', '2019-10-08 21:41:20', NULL),
(5, 1, 14, 10, '84.00', 'en attente', '2019-10-08 21:43:50', NULL),
(6, 1, 14, 11, '84.00', 'en attente', '2019-10-08 21:44:14', NULL),
(7, 1, 14, 12, '84.00', 'en attente', '2019-10-08 21:44:29', NULL),
(8, 1, 14, 13, '84.00', 'en attente', '2019-10-08 21:47:35', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `tbl_order_details`
--

CREATE TABLE `tbl_order_details` (
  `order_details_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_sales_quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `tbl_order_details`
--

INSERT INTO `tbl_order_details` (`order_details_id`, `order_id`, `product_id`, `product_name`, `product_price`, `product_sales_quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 26, 'Huawei', '253', '1', '2019-10-04 22:09:47', NULL),
(2, 1, 11, 'Chemise africaine', '12', '1', '2019-10-04 22:09:47', NULL),
(3, 2, 25, 'robe simple', '78', '1', '2019-10-07 22:34:36', NULL),
(4, 3, 23, 'Chemise cal moa', '42', '2', '2019-10-08 21:41:09', NULL),
(5, 4, 23, 'Chemise cal moa', '42', '2', '2019-10-08 21:41:20', NULL),
(6, 5, 23, 'Chemise cal moa', '42', '2', '2019-10-08 21:43:50', NULL),
(7, 6, 23, 'Chemise cal moa', '42', '2', '2019-10-08 21:44:14', NULL),
(8, 7, 23, 'Chemise cal moa', '42', '2', '2019-10-08 21:44:29', NULL),
(9, 8, 23, 'Chemise cal moa', '42', '2', '2019-10-08 21:47:35', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `payment_id` int(10) UNSIGNED NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `tbl_payment`
--

INSERT INTO `tbl_payment` (`payment_id`, `payment_method`, `payment_status`, `created_at`, `updated_at`) VALUES
(1, 'handcash', 'en attente', '2019-10-04 21:39:23', NULL),
(2, 'visa', 'en attente', '2019-10-04 21:46:22', NULL),
(3, 'visa', 'en attente', '2019-10-04 21:46:32', NULL),
(4, 'paypal', 'en attente', '2019-10-04 21:49:38', NULL),
(5, 'visa', 'en attente', '2019-10-04 21:50:13', NULL),
(6, 'handcash', 'en attente', '2019-10-04 22:09:47', NULL),
(7, 'visa', 'en attente', '2019-10-07 22:34:36', NULL),
(8, 'paypal', 'en attente', '2019-10-08 21:41:09', NULL),
(9, 'handcash', 'en attente', '2019-10-08 21:41:20', NULL),
(10, 'handcash', 'en attente', '2019-10-08 21:43:50', NULL),
(11, 'handcash', 'en attente', '2019-10-08 21:44:14', NULL),
(12, 'handcash', 'en attente', '2019-10-08 21:44:29', NULL),
(13, 'handcash', 'en attente', '2019-10-08 21:47:35', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `tbl_products`
--

CREATE TABLE `tbl_products` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `manufacture_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_short_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_long_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` double(8,2) NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` int(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `tbl_products`
--

INSERT INTO `tbl_products` (`product_id`, `category_id`, `manufacture_id`, `product_name`, `product_short_description`, `product_long_description`, `product_price`, `product_image`, `product_size`, `product_color`, `publication_status`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 'Chemise', 'La nouvelle chemise à la mode chez les jeunes', 'La nouvelle chemise à la mode chez les jeunes La nouvelle chemise à la mode chez les jeunes', 1500.00, 'image/u7sMW4eZrIOiLoVngaPg.jpg', '15 cm', 'noir', NULL, NULL, NULL),
(2, 2, 3, 'Robe', 'pour les femmes de petites tailles', 'pour les femmes de petites tailles pour les femmes de petites tailles', 900.00, 'image/M5UI37vY5NFHa1HJPpgb.jpeg', '12 cm', 'bleu ciel', 1, NULL, NULL),
(3, 3, 2, 'I phone 11', 'Le tout nouveau téléphone de la firme  Apple', 'Le tout nouveau téléphone de la firme  Apple Le tout nouveau téléphone de la firme  Apple', 9000.00, 'image/izqNaUswF9drrUz2mfbh.jpg', '12 cm', 'gris', 1, NULL, NULL),
(4, 7, 4, 'Air-max 90', 'Nicke frappe fort avec ce nouveau produit', 'Nicke frappe fort avec ce nouveau produit  aimé de tout le monde Nicke frappe fort avec ce nouveau produit  aimé de tout le monde', 250.00, 'image/pJVdXzJS0lKMX0VbeQF8.jpg', '15 cm', 'rouge blanc', 1, NULL, NULL),
(5, 3, 1, 'Samsung A80', 'Le tout nouveau téléphone de la firme  Samsung', 'Le tout nouveau téléphone de la firme  Samsung  Le tout nouveau téléphone de la firme  Samsung', 450.00, 'image/VabHRyonQuNfLazJtORu.jpg', '15', 'gris', 1, NULL, NULL),
(6, 3, 5, 'fantome 10', 'Le tout nouveau téléphone de la firme  Techno', 'Le tout nouveau téléphone de la firme  Techno Le tout nouveau téléphone de la firme  Techno', 780.00, 'image/etCUY1KwoXpuzYGg00iS.jpg', '15', 'bleu ciel', 1, NULL, NULL),
(7, 3, 5, 'Camon 11', 'Le tout nouveau téléphone de la firme  Techno', 'Le tout nouveau téléphone de la firme  Techno Le tout nouveau téléphone de la firme  Techno', 887.00, 'image/1c35Eagv413WsfCE3eqr.png', '12cm', 'noir', 1, NULL, NULL),
(8, 3, 5, 'Spark 3', 'Le tout nouveau téléphone de la firme  Techno', 'Le tout nouveau téléphone de la firme  TechnoLe tout nouveau téléphone de la firme  Techno', 980.00, 'image/rxk5Ui5zCUlpHnl2Uz8G.jpg', '6', 'or', 1, NULL, NULL),
(9, 3, 2, 'I phone 6', 'Le tout nouveau téléphone de la firme  Apple', 'Le tout nouveau téléphone de la firme  Apple Le tout nouveau téléphone de la firme  Apple', 982.00, 'image/yCTdEMkxdyVsuZDrsu4g.jpg', '12', 'noir', 1, NULL, NULL),
(10, 3, 2, 'I phone 8', 'Le tout nouveau téléphone de la firme  Apple', 'Le tout nouveau téléphone de la firme  Apple Le tout nouveau téléphone de la firme  Apple', 450.00, 'image/DyQlt5YpZStOTmWw8ThL.png', '6', 'noir', 1, NULL, NULL),
(11, 1, 3, 'Chemise africaine', 'La nouvelle chemise à la mode chez les jeunes africains', 'La nouvelle chemise à la mode chez les jeunes africains La nouvelle chemise à la mode chez les jeunes africains', 12.00, 'image/iOs3WlJtiH4cBrgbOOck.jpg', '15 cm', 'blanche', 1, NULL, NULL),
(12, 1, 6, 'Chemise africaine courte', 'La nouvelle chemise à la mode chez les jeunes africains', 'La nouvelle chemise à la mode chez les jeunes africains La nouvelle chemise à la mode chez les jeunes africains', 17.00, 'image/2VnsnIW9Qo2IPyQMjTym.jpeg', '14', 'noir', 1, NULL, NULL),
(13, 1, 6, 'Ensemble africain', 'La nouvelle chemise à la mode chez les jeunes africains', 'La nouvelle chemise à la mode chez les jeunes africains La nouvelle chemise à la mode chez les jeunes africains', 15.00, 'image/1G0rnWBLSGl3iVqVLivY.jpg', '45', 'noir', 1, NULL, NULL),
(14, 1, 6, 'Veste style africain', 'La nouvelle chemise à la mode chez les jeunes africains', 'La nouvelle chemise à la mode chez les jeunes africains La nouvelle chemise à la mode chez les jeunes africains', 25.00, 'image/yqbpBOirOluTSHo4B0or.jpg', '15 cm', 'noir', 1, NULL, NULL),
(15, 1, 6, 'Veste', 'La nouvelle chemise à la mode chez les jeunes africains', 'La nouvelle chemise à la mode chez les jeunes africains La nouvelle chemise à la mode chez les jeunes africains', 14.00, 'image/oQGcsNYXl5u3csN9PUo1.jpg', '12', 'rouge', 1, NULL, NULL),
(16, 7, 4, 'Puma Flyer Runner', 'le nouvelle chaussure puma à la mode', 'le nouvelle chaussure puma à la mode le nouvelle chaussure puma à la mode', 12.00, 'image/BSvwfi8a9qh1iSbdiWwr.jpg', '12cm', 'noir', 1, NULL, NULL),
(17, 7, 7, 'adidas Men\'s adizero 8.0', 'Vivre le style de vie de changeur de jeu est une combinaison d\'habileté', 'Vivre le style de vie de changeur de jeu est une combinaison d\'habileté, Vivre le style de vie de changeur de jeu est une combinaison d\'habileté,', 45.00, 'image/50h957uBiICxkpD0d3HQ.jpg', '7', 'noir', NULL, NULL, NULL),
(18, 7, 7, 'Stan Smith J', 'la Stan Smith J la plus cool de ce moment', 'la Stan Smith J la plus cool de ce moment  la Stan Smith J la plus cool de ce moment', 63.00, 'image/nbIMVmGRbMJXzy8u9qXn.jpg', '56', 'blanc vert', 1, NULL, NULL),
(19, 7, 7, 'Adiddas EQT', 'pour les hommes classes aiment cettte chaussure.', 'pour les hommes classes aiment cettte chaussure. pour les hommes classes aiment cettte chaussure.', 69.00, 'image/MtTcLAoX94lV0O36Pikp.jpg', '45', 'rouge blanc', 1, NULL, NULL),
(20, 7, 4, 'Air-max 27-C', 'pour les hommes classes aiment cettte chaussure.', 'pour les hommes classes aiment cettte chaussure. pour les hommes classes aiment cettte chaussure.', 45.00, 'image/BQYQ92cwcrPM4cKFfKEE.jpg', '74', 'noir gris', 1, NULL, NULL),
(21, 2, 6, 'Ankara tissu', 'pour les femmes de petites tailles', 'pour les femmes de petites tailles pour les femmes de petites tailles', 25.00, 'image/P6SVumwfVxvdFSOMorHE.jpg', '14', 'multi color', 1, NULL, NULL),
(22, 2, 3, 'Chemise femme demin', 'pour les femmes de petites tailles', 'pour les femmes de petites tailles pour les femmes de petites tailles', 78.00, 'image/lUjP9yUMTPYTSKtDFdUJ.jpg', '45', 'rose', 1, NULL, NULL),
(23, 2, 3, 'Chemise cal moa', 'pour les femmes de petites tailles', 'pour les femmes de petites tailles pour les femmes de petites tailles', 42.00, 'image/6NORJz0F9W0P0P57ln0D.jpg', '45', 'marron', 1, NULL, NULL),
(24, 2, 3, 'robe class', 'pour les femmes de petites tailles', 'pour les femmes de petites tailles pour les femmes de petites tailles', 36.00, 'image/qXHSblQeS7JPt7ButjTA.jpg', '12', 'noir', 1, NULL, NULL),
(25, 2, 6, 'robe simple', 'pour les femmes de petites tailles', 'pour les femmes de petites tailles pour les femmes de petites tailles', 78.00, 'image/q8CK4EqwXlNNhazKtczY.jpg', '1', 'blanche', 1, NULL, NULL),
(26, 6, 2, 'Huawei', 'Un produit de Marque: Huawei', 'Un produit de Marque: Huawei Un produit de Marque: Huawei', 570000.00, 'image/059T8jFRF25QU5bWjzPl.jpg', '7', 'gris', 1, NULL, NULL),
(27, 6, 2, 'Schneider', '14\" Full HD 1920x1080 px – RAM 2 Go – Intel Atom x5-8350 Quad Core Processor – Stockage 32 Go eMMC', '14\" Full HD 1920x1080 px – RAM 2 Go – Intel Atom x5-8350 Quad Core Processor – Stockage 32 Go eMMC 14\" Full HD 1920x1080 px – RAM 2 Go – Intel Atom x5-8350 Quad Core Processor – Stockage 32 Go eMMC', 350.00, 'image/CRs7JFr7tlD9iAbI2NmC.jpg', '14', 'noir', 1, NULL, NULL),
(28, 6, 5, 'Ordinateur Hp', 'Au cours des dernières années, la technologie n’a pas cessé d’évoluer.', 'Au cours des dernières années, la technologie n’a pas cessé d’évoluer. Au cours des dernières années, la technologie n’a pas cessé d’évoluer.', 450.00, 'image/PeXSXP4XPDqw1ziuaBjs.jpg', '14', 'noir', 1, NULL, NULL),
(29, 2, 6, 'Phalonne', 'La nouvelle chemise à la mode chez les jeunes africains', 'La nouvelle chemise à la mode chez les jeunes africains La nouvelle chemise à la mode chez les jeunes africains', 12500.00, 'image/ONCaTLjG0cFTScPlXtxz.jpg', '12', 'blanche', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `tbl_shipping`
--

CREATE TABLE `tbl_shipping` (
  `shipping_id` int(10) UNSIGNED NOT NULL,
  `shipping_email` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_adresse` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_mobile_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `tbl_shipping`
--

INSERT INTO `tbl_shipping` (`shipping_id`, `shipping_email`, `shipping_first_name`, `shipping_last_name`, `shipping_adresse`, `shipping_city`, `shipping_mobile_number`, `created_at`, `updated_at`) VALUES
(1, 'diham@gmail.com', 'Dihambou', 'rosiss', 'castor', 'Dakarn', '0775963185', NULL, NULL),
(2, 'diham@gmail.com', 'Dihambou', 'rosiss', 'castor', 'Dakarn', '0775963185', NULL, NULL),
(3, 'diham@gmail.com', 'Dihambou', 'rosiss', 'castor', 'Dakarn', '0775963185', NULL, NULL),
(4, 'diham@gmail.com', 'Dihambou', 'rosiss', 'castor', 'Dakarn', '0775963185', NULL, NULL),
(5, 'diham@gmail.com', 'Dihambou', 'rosiss', 'castor', 'Dakarn', '0775963185', NULL, NULL),
(6, 'diham@gmail.com', 'Dihambou', 'rosiss', 'castor', 'Dakarn', '0775963185', NULL, NULL),
(7, 'diham@gmail.com', 'Dihambou', 'rosiss', 'castor', 'dakar', '0775963185', NULL, NULL),
(8, 'diham@gmail.com', 'Dihambou', 'rosiss', 'castor', 'dakar', '0775963185', NULL, NULL),
(9, 'diham@gmail.com', 'Dihambou', 'rosiss', 'castor', 'dakar', '0775963185', NULL, NULL),
(10, 'diham@gmail.com', 'Dihambou', 'rosiss', 'castor', 'dakar', '0775963185', NULL, NULL),
(11, 'diham@gmail.com', 'Dihambou', 'rosiss', 'castor', 'dakar', '0775963185', NULL, NULL),
(12, 'diham@gmail.com', 'Dihambou', 'rosiss', 'castor', 'dakar', '0775963185', NULL, NULL),
(13, 'diham@gmail.com', 'Dihambou', 'rosiss', 'castor', 'dakar', '0775963185', NULL, NULL),
(14, 'diham@gmail.com', 'Dihambou', 'rosiss', 'castor', 'dakar', '0775963185', NULL, NULL),
(15, 'diham@gmail.com', 'Dihambou', 'rosiss', 'castor', 'dakar', '0775963185', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `slider_id` int(10) UNSIGNED NOT NULL,
  `slider_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slider_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slider_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` int(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `tbl_slider`
--

INSERT INTO `tbl_slider` (`slider_id`, `slider_name`, `slider_description`, `slider_image`, `publication_status`, `created_at`, `updated_at`) VALUES
(1, 'La chemise qui cartonne en ce moment', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'slider/39RHGCIZH9Bzsd567bFZ.jpg', 1, NULL, NULL),
(2, 'Nouvelle arrivage de Robe pour les femmes chics !', 'Pour faire plaisir à  toutes les femmes qui aiment bien s\'habiller...', 'slider/CxqtKtnJ6EMVCwaVmBEt.jpeg', 1, NULL, NULL),
(3, 'Le nouveau Ordinateur Hp à la mode', 'Au cours des dernières années, la technologie n’a pas cessé d’évoluer, surtout en ce qui concerne les ordinateurs', 'slider/DuZhLdWb15WbafbWDcWw.jpg', 0, NULL, NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Index pour la table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Index pour la table `tbl_country`
--
ALTER TABLE `tbl_country`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Index pour la table `tbl_manufacture`
--
ALTER TABLE `tbl_manufacture`
  ADD PRIMARY KEY (`manufacture_id`);

--
-- Index pour la table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Index pour la table `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  ADD PRIMARY KEY (`order_details_id`);

--
-- Index pour la table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Index pour la table `tbl_products`
--
ALTER TABLE `tbl_products`
  ADD PRIMARY KEY (`product_id`);

--
-- Index pour la table `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  ADD PRIMARY KEY (`shipping_id`);

--
-- Index pour la table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `tbl_country`
--
ALTER TABLE `tbl_country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `customer_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `tbl_manufacture`
--
ALTER TABLE `tbl_manufacture`
  MODIFY `manufacture_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  MODIFY `order_details_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `payment_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `tbl_products`
--
ALTER TABLE `tbl_products`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT pour la table `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  MODIFY `shipping_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `slider_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Base de données :  `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Base de données :  `test22`
--
CREATE DATABASE IF NOT EXISTS `test22` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test22`;
--
-- Base de données :  `testing`
--
CREATE DATABASE IF NOT EXISTS `testing` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `testing`;

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL,
  `comment_subject` varchar(250) NOT NULL,
  `comment_text` text NOT NULL,
  `comment_status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Base de données :  `test_java`
--
CREATE DATABASE IF NOT EXISTS `test_java` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test_java`;

-- --------------------------------------------------------

--
-- Structure de la table `Agent`
--

CREATE TABLE `Agent` (
  `id_client` int(7) NOT NULL,
  `Nom` varchar(50) NOT NULL,
  `Prenom` varchar(50) NOT NULL,
  `Sexe` varchar(50) NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `Agent`
--

INSERT INTO `Agent` (`id_client`, `Nom`, `Prenom`, `Sexe`, `role`) VALUES
(1, 'sagesse', 'Roslyn', 'Masculin', 0);

-- --------------------------------------------------------

--
-- Structure de la table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `role` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Agent`
--
ALTER TABLE `Agent`
  ADD KEY `role` (`role`);

--
-- Index pour la table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Base de données :  `test_jee`
--
CREATE DATABASE IF NOT EXISTS `test_jee` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test_jee`;

-- --------------------------------------------------------

--
-- Structure de la table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `lib` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `role`
--

INSERT INTO `role` (`id`, `lib`) VALUES
(1, 'admin'),
(2, 'simple');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `login` varchar(30) NOT NULL,
  `pwd` varchar(30) NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `nom`, `prenom`, `photo`, `login`, `pwd`, `role`) VALUES
(1, 'thonny', 'lars', '', 'flamme', 'azerty', 1),
(2, 'Th', 'kj', '7.jpg', 'Th2kj', 'passer', 1),
(3, 'Thonny', 'Lars', '13.jpg', 'Thonny3Lars', 'passer', 1),
(4, 'T', 'h', '13.jpg', 'T4h', 'passer', 2),
(5, 'sagesse', 'le cÃ©libataire', 'IMG-07bvks7o.jpg', 'sagesse5le cÃ©libataire', 'passer', 1),
(9, 'sagesse', 'admin', 'ico.png', 'sagesse6admin', 'passer', 1),
(10, 'Papa', 'mmm', 'ico.png', 'Papa10mmm', 'passer', 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role` (`role`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`role`) REFERENCES `role` (`id`);
--
-- Base de données :  `transfert`
--
CREATE DATABASE IF NOT EXISTS `transfert` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `transfert`;

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `num_piece` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `commission`
--

CREATE TABLE `commission` (
  `id` int(11) NOT NULL,
  `comm` float NOT NULL,
  `montant_max` float NOT NULL,
  `montant_min` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `compte`
--

CREATE TABLE `compte` (
  `id` int(11) NOT NULL,
  `numero` varchar(255) DEFAULT NULL,
  `solde` float DEFAULT NULL,
  `partenaire_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `partenaire`
--

CREATE TABLE `partenaire` (
  `id` int(11) NOT NULL,
  `adresse` varchar(255) DEFAULT NULL,
  `mail` varchar(255) DEFAULT NULL,
  `ninea` varchar(255) DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `comm` float NOT NULL,
  `comm_dest` float NOT NULL,
  `comm_exp` float NOT NULL,
  `comm_sys` float NOT NULL,
  `date` datetime DEFAULT NULL,
  `montant` float NOT NULL,
  `taxe` float NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `id_dest` int(11) DEFAULT NULL,
  `id_exped` int(11) DEFAULT NULL,
  `id_user_dest` int(11) DEFAULT NULL,
  `id_user_exp` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `login` varchar(255) DEFAULT NULL,
  `nom_complet` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `profil` varchar(255) DEFAULT NULL,
  `pwd` varchar(255) DEFAULT NULL,
  `id_compte` int(11) DEFAULT NULL,
  `id_partenaire` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `versement`
--

CREATE TABLE `versement` (
  `id` int(11) NOT NULL,
  `date` datetime DEFAULT NULL,
  `montant` float NOT NULL,
  `id_compte` int(11) DEFAULT NULL,
  `id_createur` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `commission`
--
ALTER TABLE `commission`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `compte`
--
ALTER TABLE `compte`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK75b2g5omugyr5g8vnmmqjx3yw` (`partenaire_id`);

--
-- Index pour la table `partenaire`
--
ALTER TABLE `partenaire`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK7b659lgn8e0nhw0oubv3n4t7c` (`id_dest`),
  ADD KEY `FKhd5gu9ye2rglsiydmluxt3t3v` (`id_exped`),
  ADD KEY `FKc5rs1xn9fo2ueq8wl9ldufqfe` (`id_user_dest`),
  ADD KEY `FKk5wqk1xmjplbpyh17qs8ogs53` (`id_user_exp`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKj8uac34ls8l9cpuyiwkk800w5` (`id_compte`),
  ADD KEY `FK7opn9bek5p16od64w7tt6garl` (`id_partenaire`);

--
-- Index pour la table `versement`
--
ALTER TABLE `versement`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKo4f2v4pske52pees91mn0jvfd` (`id_compte`),
  ADD KEY `FKkf58gx49j7qi336k7glt74nt5` (`id_createur`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `commission`
--
ALTER TABLE `commission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `compte`
--
ALTER TABLE `compte`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `partenaire`
--
ALTER TABLE `partenaire`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `versement`
--
ALTER TABLE `versement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Base de données :  `Ventes`
--
CREATE DATABASE IF NOT EXISTS `Ventes` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `Ventes`;
--
-- Base de données :  `wordpress`
--
CREATE DATABASE IF NOT EXISTS `wordpress` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `wordpress`;

-- --------------------------------------------------------

--
-- Structure de la table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un commentateur WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-10-16 12:47:21', '2019-10-16 10:47:21', 'Bonjour, ceci est un commentaire.\nPour débuter avec la modération, la modification et la suppression de commentaires, veuillez visiter l’écran des Commentaires dans le Tableau de bord.\nLes avatars des personnes qui commentent arrivent depuis <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wordpress', 'yes'),
(2, 'home', 'http://localhost/wordpress', 'yes'),
(3, 'blogname', 'nataal_test', 'yes'),
(4, 'blogdescription', 'Une expertise digitale certifiée', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'mailtrapmail@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G \\h i \\m\\i\\n', 'yes'),
(25, 'links_updated_date_format', 'j F Y G \\h i \\m\\i\\n', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:89:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'twentyseventeen', 'yes'),
(41, 'stylesheet', 'twentyseventeen', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:5:{i:2;a:4:{s:5:\"title\";s:14:\"Retrouvez-nous\";s:4:\"text\";s:189:\"<strong>Adresse</strong>\nAvenue des Champs-Élysées\n75008, Paris\n\n<strong>Heures d’ouverture</strong>\nDu lundi au vendredi : 9h00&ndash;17h00\nLes samedi et dimanche : 11h00&ndash;15h00\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:3;a:4:{s:5:\"title\";s:20:\"À propos de ce site\";s:4:\"text\";s:99:\"C’est peut-être le bon endroit pour vous présenter et votre site ou insérer quelques crédits.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:4;a:4:{s:5:\"title\";s:14:\"Retrouvez-nous\";s:4:\"text\";s:189:\"<strong>Adresse</strong>\nAvenue des Champs-Élysées\n75008, Paris\n\n<strong>Heures d’ouverture</strong>\nDu lundi au vendredi : 9h00&ndash;17h00\nLes samedi et dimanche : 11h00&ndash;15h00\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:5;a:4:{s:5:\"title\";s:20:\"À propos de ce site\";s:4:\"text\";s:99:\"C’est peut-être le bon endroit pour vous présenter et votre site ou insérer quelques crédits.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'Europe/Paris', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '38590', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '1', 'yes'),
(96, 'WPLANG', 'fr_FR', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'cron', 'a:4:{i:1571251643;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1571266043;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1571309262;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(113, 'theme_mods_twentyseventeen', 'a:1:{s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(125, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:5:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.2.4.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.2.4.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.4\";s:7:\"version\";s:5:\"5.2.4\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.4.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.4.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.4-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.4-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.4\";s:7:\"version\";s:5:\"5.2.4\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.2.4.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.2.4.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.4\";s:7:\"version\";s:5:\"5.2.4\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:3;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.1.3.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.1.3.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.1.3\";s:7:\"version\";s:5:\"5.1.3\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:4;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.0.7.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.0.7.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.0.7\";s:7:\"version\";s:5:\"5.0.7\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1571222856;s:15:\"version_checked\";s:6:\"4.9.12\";s:12:\"translations\";a:0:{}}', 'no'),
(126, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1571247605;s:7:\"checked\";a:3:{s:13:\"twentyfifteen\";s:3:\"2.0\";s:15:\"twentyseventeen\";s:3:\"1.7\";s:13:\"twentysixteen\";s:3:\"1.5\";}s:8:\"response\";a:3:{s:13:\"twentyfifteen\";a:6:{s:5:\"theme\";s:13:\"twentyfifteen\";s:11:\"new_version\";s:3:\"2.5\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentyfifteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentyfifteen.2.5.zip\";s:8:\"requires\";s:3:\"4.1\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentyseventeen\";a:6:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"2.2\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.2.2.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:13:\"twentysixteen\";a:6:{s:5:\"theme\";s:13:\"twentysixteen\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentysixteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentysixteen.2.0.zip\";s:8:\"requires\";s:3:\"4.4\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}', 'no'),
(127, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1571222859;s:7:\"checked\";a:2:{s:19:\"akismet/akismet.php\";s:3:\"4.1\";s:9:\"hello.php\";s:3:\"1.7\";}s:8:\"response\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.2.4\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:9:\"hello.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.2.4\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:11:\"hello-dolly\";s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:3:\"1.6\";s:7:\"updated\";s:19:\"2018-04-27 10:03:32\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/translation/plugin/hello-dolly/1.6/fr_FR.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:0:{}}', 'no'),
(128, '_site_transient_timeout_browser_a525287c4d4a5afc2d0462817cb69643', '1571827663', 'no'),
(129, '_site_transient_browser_a525287c4d4a5afc2d0462817cb69643', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"77.0.3865.120\";s:8:\"platform\";s:5:\"Linux\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(131, '_transient_timeout_feed_3ca2a73478cc83bbe37e39039b345a78', '1571266065', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(132, '_transient_feed_3ca2a73478cc83bbe37e39039b345a78', 'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"\n\n\n\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:49:\"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"https://wpfr.net\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Site officiel de la communauté\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:13:\"lastBuildDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 21 Aug 2019 17:44:56 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"fr-FR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:10:{i:0;a:6:{s:4:\"data\";s:51:\"\n		\n		\n				\n				\n		\n				\n\n		\n				\n						\n		\n							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:23:\"Les WordCamps en France\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/CmWTgxgCesc/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:50:\"https://wpfr.net/les-wordcamps-en-france/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 21 Aug 2019 12:55:20 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"WordCamp\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=2274328\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1472:\"Nous avons récemment lancé un appel aux leaders de WordCamps afin de discuter des prochaines dates de leurs évènements et avons souhaité faire une sorte de récap des WordCamps possiblement organisables en France. À cette réunion étaient présents et présentes Valérie G. Amaury B., Julio P, F-X B., Marie C., Maylis L, les autres leads<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=CmWTgxgCesc:gbMYgRzO46U:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=CmWTgxgCesc:gbMYgRzO46U:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=CmWTgxgCesc:gbMYgRzO46U:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=CmWTgxgCesc:gbMYgRzO46U:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=CmWTgxgCesc:gbMYgRzO46U:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=CmWTgxgCesc:gbMYgRzO46U:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/CmWTgxgCesc\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"Julio\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:46:\"https://wpfr.net/les-wordcamps-en-france/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"12\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:41:\"https://wpfr.net/les-wordcamps-en-france/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:51:\"\n		\n		\n				\n				\n		\n				\n\n		\n				\n						\n		\n							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"Liste des candidats au bureau 2019\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/OXrrV0szEo4/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"https://wpfr.net/liste-des-candidats-au-bureau-2019/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 24 Apr 2019 17:20:17 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"Association WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=2257794\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1471:\"Suite à l&#8217;appel à candidature qui s&#8217;est terminé le 21 avril 2019 à minuit, voici la liste des participants : Valérie Galassi Amaury Balmer Julio Potier Etant donné que : le nombre de candidats est de trois cette année, que le bureau doit être composé au minimum d&#8217;un Président, Trésorier et Secrétaire, et en accord<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=OXrrV0szEo4:PP7KZOQ07VE:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=OXrrV0szEo4:PP7KZOQ07VE:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=OXrrV0szEo4:PP7KZOQ07VE:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=OXrrV0szEo4:PP7KZOQ07VE:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=OXrrV0szEo4:PP7KZOQ07VE:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=OXrrV0szEo4:PP7KZOQ07VE:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/OXrrV0szEo4\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Benjamin Denis\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://wpfr.net/liste-des-candidats-au-bureau-2019/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"4\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:52:\"https://wpfr.net/liste-des-candidats-au-bureau-2019/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:51:\"\n		\n		\n				\n				\n		\n				\n\n		\n				\n						\n		\n							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:46:\"Compte rendu de l’assemblée générale 2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/Stm97xB9WpM/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"https://wpfr.net/compte-rendu-de-lassemblee-generale-2018/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 09 May 2019 12:13:45 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"Association WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=2256946\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1494:\"L&#8217;Assemblée Générale Ordinaire a été réalisée le mercredi 03 avril 2019. Les membres présents étaient Aurélien Denis, Benjamin Denis, Willy Bahuaud et Julio Potier. Ordre du jour : Bilan moral Bilan financier Projets en cours et à venir Renouvellement du bureau Réunions Rapport moral Que retenir de cette année 2018 ? Des adhérents en augmentation<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=Stm97xB9WpM:3418vZ02tO0:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=Stm97xB9WpM:3418vZ02tO0:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=Stm97xB9WpM:3418vZ02tO0:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=Stm97xB9WpM:3418vZ02tO0:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=Stm97xB9WpM:3418vZ02tO0:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=Stm97xB9WpM:3418vZ02tO0:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/Stm97xB9WpM\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"Julio\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:63:\"https://wpfr.net/compte-rendu-de-lassemblee-generale-2018/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wpfr.net/compte-rendu-de-lassemblee-generale-2018/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:38:\"\n		\n		\n				\n		\n				\n\n		\n				\n									\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"L’élection du bureau WPFR 2019\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/yOlKQg5_xTg/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 05 Apr 2019 07:00:42 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"Association WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=2254834\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1489:\"Le bureau actuellement en place voit son mandat terminé, de nouvelles élections doivent donc avoir lieu afin de le renouveler. Ces élections sont prévues pour le 6 mai 2019 et nous invitons les membres de l&#8217;association désireux d&#8217;occuper des responsabilités nationales à se faire connaitre sans délai. Qu’est-ce que le bureau ? Comme vous le<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=yOlKQg5_xTg:TAoc392goww:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=yOlKQg5_xTg:TAoc392goww:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=yOlKQg5_xTg:TAoc392goww:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=yOlKQg5_xTg:TAoc392goww:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=yOlKQg5_xTg:TAoc392goww:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=yOlKQg5_xTg:TAoc392goww:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/yOlKQg5_xTg\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Benjamin Denis\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:43:\"https://wpfr.net/election-bureau-wpfr-2019/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:54:\"\n		\n		\n				\n				\n		\n				\n		\n\n		\n				\n						\n		\n							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"WPFR sponsor du WordCamp Bordeaux 2019, évènement éco-responsable\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/5usiKNtvjdc/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:88:\"https://wpfr.net/wpfr-sponsor-wordcamp-bordeaux-2019-evenement-eco-responsable/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 16 Feb 2019 09:13:18 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:11:\"Evènements\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=2246905\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1505:\"Le 23 mars 2019, Bordeaux accueillera la seconde édition de son WordCamp à la cité Mondiale Centre des Congrès.  Profitez-en pour aller à la rencontre de passionnés de WordPress au cours d&#8217;une journée riche en conférences. Cette édition 2019 sera axée autour de l&#8217;éco-responsabilité et de l&#8217;impact colossal du Web sur notre environnement. Pas moins<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=5usiKNtvjdc:BXFb-UGLCJ0:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=5usiKNtvjdc:BXFb-UGLCJ0:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=5usiKNtvjdc:BXFb-UGLCJ0:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=5usiKNtvjdc:BXFb-UGLCJ0:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=5usiKNtvjdc:BXFb-UGLCJ0:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=5usiKNtvjdc:BXFb-UGLCJ0:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/5usiKNtvjdc\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Aurélien Denis\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:84:\"https://wpfr.net/wpfr-sponsor-wordcamp-bordeaux-2019-evenement-eco-responsable/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:79:\"https://wpfr.net/wpfr-sponsor-wordcamp-bordeaux-2019-evenement-eco-responsable/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:54:\"\n		\n		\n				\n				\n		\n				\n		\n\n		\n				\n						\n		\n							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"Think WP, le documentaire vidéo sur WordPress enfin disponible !\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/BFWuQgyALjg/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:63:\"https://wpfr.net/thinkwp-documentaire-video-wordpress/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 05 Nov 2018 13:03:41 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:9:\"WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:21:\"WordPress Francophone\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=2220300\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1538:\"Découvrez WordPress en 30 minutes au travers de ce documentaire inédit d&#8217;interviews de la communauté française. Sur une idée originale de Déborah Donnier, entrepreneurs, chefs d&#8217;entreprises, freelances, agences web, développeurs, intégrateurs&#8230; de toute la France se succèdent pour nous parler de notre CMS favori WordPress. Financé uniquement par des dons et sponsors, le projet Think<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=BFWuQgyALjg:KhIgVVs-X9Q:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=BFWuQgyALjg:KhIgVVs-X9Q:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=BFWuQgyALjg:KhIgVVs-X9Q:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=BFWuQgyALjg:KhIgVVs-X9Q:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=BFWuQgyALjg:KhIgVVs-X9Q:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=BFWuQgyALjg:KhIgVVs-X9Q:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/BFWuQgyALjg\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Benjamin Denis\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"https://wpfr.net/thinkwp-documentaire-video-wordpress/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"4\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"https://wpfr.net/thinkwp-documentaire-video-wordpress/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:41:\"\n		\n		\n				\n		\n				\n		\n\n		\n				\n									\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:52:\"WP BootCamp 2018 : retours sur la deuxième édition\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/73jXJKLX5xI/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 23 Oct 2018 06:05:16 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:16:\"Association WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:9:\"WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=2215483\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1487:\"Soutenu par l&#8217;association WordPress Francophone, retours sur la seconde édition du WP BootCamp. Qu&#8217;est ce que le WP BootCamp ? Le WP BootCamp est un événement réunissant des passionnés de WordPress et du web en général sur un week-end de 3 jours. L&#8217;édition 2018, portée par Rémi Corson, Aurélien Denis et Benjamin Denis, se déroula<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=73jXJKLX5xI:kXAjLDU4P-c:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=73jXJKLX5xI:kXAjLDU4P-c:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=73jXJKLX5xI:kXAjLDU4P-c:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=73jXJKLX5xI:kXAjLDU4P-c:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=73jXJKLX5xI:kXAjLDU4P-c:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=73jXJKLX5xI:kXAjLDU4P-c:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/73jXJKLX5xI\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Benjamin Denis\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"https://wpfr.net/wp-bootcamp-2018-retours-sur-la-deuxieme-edition/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:60:\"\n		\n		\n				\n				\n		\n				\n		\n		\n		\n\n		\n				\n						\n		\n							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"Tout savoir sur l’arrivée de Gutenberg en quelques points essentiels\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/i6NQjnc9uiQ/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:46:\"https://wpfr.net/wordpress-gutenberg/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 23 Apr 2018 09:00:07 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:4:{i:0;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:9:\"WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:15:\"éditeur visuel\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:9:\"Gutenberg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=2117903\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1474:\"Gutenberg arrive à grand pas, alors voici un résumé de tout ce qu&#8217;il faut savoir sur le nouvel éditeur visuel de WordPress au travers de questions / réponses ! Difficile de marcher tranquillement dans le quartier WordPress sans entendre parler de ce fameux Gutenberg ! C&#8217;est un nouvel éditeur ? C&#8217;est un nouveau page builder<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i6NQjnc9uiQ:TQYicJ8IHdE:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i6NQjnc9uiQ:TQYicJ8IHdE:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=i6NQjnc9uiQ:TQYicJ8IHdE:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i6NQjnc9uiQ:TQYicJ8IHdE:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i6NQjnc9uiQ:TQYicJ8IHdE:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=i6NQjnc9uiQ:TQYicJ8IHdE:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/i6NQjnc9uiQ\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"maximebj\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:42:\"https://wpfr.net/wordpress-gutenberg/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"13\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:37:\"https://wpfr.net/wordpress-gutenberg/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:54:\"\n		\n		\n				\n				\n		\n				\n		\n\n		\n				\n						\n		\n							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"Résultats des élections du bureau 2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/qvTDw6NqY5Q/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wpfr.net/resultats-elections-bureau-2018/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 05 Mar 2018 08:00:52 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:16:\"Association WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=2107099\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1521:\"Suite à la votation électronique qui s&#8217;est déroulée du 24 février au 3 mars 2018, nous vous communiquons les résultats pour l&#8217;élection du bureau 2018. Vous avez été 40% des adhérents à participer au vote, soit 85 suffrages exprimés. C&#8217;est pratiquement autant de votants que l&#8217;an passé avec un nombre d&#8217;adhérents moins élevé, l&#8217;abstention reste<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=qvTDw6NqY5Q:LD0dZBWRJa4:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=qvTDw6NqY5Q:LD0dZBWRJa4:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=qvTDw6NqY5Q:LD0dZBWRJa4:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=qvTDw6NqY5Q:LD0dZBWRJa4:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=qvTDw6NqY5Q:LD0dZBWRJa4:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=qvTDw6NqY5Q:LD0dZBWRJa4:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/qvTDw6NqY5Q\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Aurélien Denis\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"https://wpfr.net/resultats-elections-bureau-2018/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"13\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"https://wpfr.net/resultats-elections-bureau-2018/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:54:\"\n		\n		\n				\n				\n		\n				\n		\n\n		\n				\n						\n		\n							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"Liste des candidats au bureau 2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/mYCnwrPtTAY/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"https://wpfr.net/liste-candidats-bureau-2018/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 16 Feb 2018 11:45:20 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:16:\"Association WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=2092699\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1508:\"Les élections pour le renouvellement du bureau auront lieu du 24 février au 3 mars 2018 par voie électronique. Nous vous communiquons dès à présent la liste des candidats validée par l&#8217;actuel bureau, classés par ordre alphabétique. Les candidats Willy Bahuaud Présentation Je suis développeur full-stack. Après quelques années passées en agence à Nantes, j’ai<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=mYCnwrPtTAY:g4F7i0PDxEQ:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=mYCnwrPtTAY:g4F7i0PDxEQ:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=mYCnwrPtTAY:g4F7i0PDxEQ:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=mYCnwrPtTAY:g4F7i0PDxEQ:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=mYCnwrPtTAY:g4F7i0PDxEQ:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=mYCnwrPtTAY:g4F7i0PDxEQ:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/mYCnwrPtTAY\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Aurélien Denis\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:50:\"https://wpfr.net/liste-candidats-bureau-2018/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:45:\"https://wpfr.net/liste-candidats-bureau-2018/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:44:\"http://purl.org/rss/1.0/modules/syndication/\";a:2:{s:12:\"updatePeriod\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"\n	hourly	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:15:\"updateFrequency\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"\n	1	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:2:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";s:4:\"href\";s:48:\"http://feeds.feedburner.com/WordpressFrancophone\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:3:\"rel\";s:3:\"hub\";s:4:\"href\";s:32:\"http://pubsubhubbub.appspot.com/\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:4:{s:4:\"info\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:3:\"uri\";s:20:\"wordpressfrancophone\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:14:\"emailServiceId\";a:1:{i:0;a:5:{s:4:\"data\";s:20:\"WordpressFrancophone\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:18:\"feedburnerHostname\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://feedburner.google.com\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"feedFlare\";a:9:{i:0;a:5:{s:4:\"data\";s:24:\"Subscribe with NewsGator\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:112:\"http://www.newsgator.com/ngs/subscriber/subext.aspx?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:42:\"http://www.newsgator.com/images/ngsub1.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:24:\"Subscribe with Bloglines\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:77:\"http://www.bloglines.com/sub/http://feeds.feedburner.com/WordpressFrancophone\";s:3:\"src\";s:48:\"http://www.bloglines.com/images/sub_modern11.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:23:\"Subscribe with Netvibes\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:98:\"http://www.netvibes.com/subscribe.php?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:39:\"//www.netvibes.com/img/add2netvibes.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:21:\"Subscribe with Google\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:93:\"http://fusion.google.com/add?feedurl=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:51:\"http://buttons.googlesyndication.com/fusion/add.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:4;a:5:{s:4:\"data\";s:25:\"Subscribe with Pageflakes\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:101:\"http://www.pageflakes.com/subscribe.aspx?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:87:\"http://www.pageflakes.com/ImageFile.ashx?instanceId=Static_4&fileName=ATP_blu_91x17.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:5;a:5:{s:4:\"data\";s:21:\"Subscribe with Plusmo\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:86:\"http://www.plusmo.com/add?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:43:\"http://plusmo.com/res/graphics/fbplusmo.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:6;a:5:{s:4:\"data\";s:23:\"Subscribe with Live.com\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:81:\"http://www.live.com/?add=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:141:\"http://tkfiles.storage.msn.com/x1piYkpqHC_35nIp1gLE68-wvzLZO8iXl_JMledmJQXP-XTBOLfmQv4zhj4MhcWEJh_GtoBIiAl1Mjh-ndp9k47If7hTaFno0mxW9_i3p_5qQw\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:7;a:5:{s:4:\"data\";s:25:\"Subscribe with Mon Yahoo!\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:99:\"https://add.my.yahoo.com/content?lg=fr&url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:60:\"http://us.i1.yimg.com/us.yimg.com/i/us/my/bn/intatm_fr_1.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:8;a:5:{s:4:\"data\";s:25:\"Subscribe with Excite MIX\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:89:\"http://mix.excite.eu/add?feedurl=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:42:\"http://image.excite.co.uk/mix/addtomix.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:52:\"http://backend.userland.com/creativeCommonsRssModule\";a:1:{s:7:\"license\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"http://creativecommons.org/licenses/by-nc-sa/3.0/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:11:{s:12:\"content-type\";s:23:\"text/xml; charset=UTF-8\";s:4:\"etag\";s:27:\"WY5QQdpBDfqtnnsfPR2fJSr73Dc\";s:13:\"last-modified\";s:29:\"Wed, 16 Oct 2019 10:23:50 GMT\";s:16:\"content-encoding\";s:4:\"gzip\";s:4:\"date\";s:29:\"Wed, 16 Oct 2019 10:47:45 GMT\";s:7:\"expires\";s:29:\"Wed, 16 Oct 2019 10:47:45 GMT\";s:13:\"cache-control\";s:18:\"private, max-age=0\";s:22:\"x-content-type-options\";s:7:\"nosniff\";s:16:\"x-xss-protection\";s:13:\"1; mode=block\";s:6:\"server\";s:3:\"GSE\";s:7:\"alt-svc\";s:115:\"quic=\":443\"; ma=2592000; v=\"46,43\",h3-Q048=\":443\"; ma=2592000,h3-Q046=\":443\"; ma=2592000,h3-Q043=\":443\"; ma=2592000\";}}s:5:\"build\";s:14:\"20130911040210\";}', 'no'),
(133, '_site_transient_timeout_community-events-d41d8cd98f00b204e9800998ecf8427e', '1571266065', 'no'),
(134, 'can_compress_scripts', '1', 'no'),
(135, '_transient_timeout_feed_mod_3ca2a73478cc83bbe37e39039b345a78', '1571266065', 'no'),
(136, '_site_transient_community-events-d41d8cd98f00b204e9800998ecf8427e', 'a:3:{s:9:\"sandboxed\";b:0;s:8:\"location\";a:1:{s:2:\"ip\";b:0;}s:6:\"events\";a:0:{}}', 'no'),
(137, '_transient_feed_mod_3ca2a73478cc83bbe37e39039b345a78', '1571222865', 'no'),
(138, '_transient_timeout_feed_76f8d9281c01f21e505004d0986f50c6', '1571266066', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(139, '_transient_feed_76f8d9281c01f21e505004d0986f50c6', 'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:5:\"\n		\n	\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:86:\"\n		\n		\n		\n		\n		\n		\n					\n						\n						\n						\n						\n						\n						\n						\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"Planète WordPress Francophone\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"https://wpfr.net/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"Toute l’actualité de WordPress en français !\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"fr-FR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:9:{i:0;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"3 Erreurs Courantes de WordPress et Comment les réparer\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/czBmBAtM5_U/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:50:\"https://bloginfos.com/erreurs-courantes-wordpress/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 28 Sep 2019 15:15:28 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:378:\"\n		        Des erreurs, des erreurs, des erreurs ! Il ne manquait plus que çà ! Votre site WordPress ne réponds plus ! L&#8217;écran est tout blanc ? Une erreur apparaît à l&#8217;écran ? Comment réparer et remettre votre site sur les rails ? Comment réparer les erreurs courantes de WordPress WordPress est une merveilleuse plate-forme à la fois [&#8230;]		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:448:\"Des erreurs, des erreurs, des erreurs ! Il ne manquait plus que çà ! Votre site WordPress ne réponds plus ! L&#8217;écran est tout blanc ? Une erreur apparaît à l&#8217;écran ? Comment réparer et remettre votre site sur les rails ? Comment réparer les erreurs courantes de WordPress WordPress est une merveilleuse plate-forme à la fois [&#8230;]<img src=\"http://feeds.feedburner.com/~r/wpfr/~4/czBmBAtM5_U\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:50:\"https://bloginfos.com/erreurs-courantes-wordpress/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"WPS Hide Login : Changez votre URL de connexion WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/5Pfpi5iNwjI/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:63:\"https://wpformation.com/wps-hide-login-url-connexion-wordpress/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 25 Sep 2019 07:00:32 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:584:\"\n		        Tout le monde connait l&#8217;URL traditionnelle de connexion à un site WordPress ! De base, on se connecte généralement via : wp-login.php ou encore via /wp-admin/. Et c&#8217;est bien le problème, cette URL si connue peut permettre des attaques par force brute ou des tentatives de connexion. Il est donc évident qu&#8217;il convient de se [&#8230;]\n\nL’article WPS Hide Login : Changez votre URL de connexion WordPress est apparu en premier sur WPFormation. Tutoriels WordPress, Formation WordPress, Woocommerce, SEO. Abonnez-vous pour ne rien manquer !\n		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"WP Formation\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1416:\"<p><img width=\"994\" height=\"452\" src=\"https://wpformation.com/wp-content/uploads/2019/09/wps-hide-login.jpg\" class=\"attachment-Large size-Large wp-post-image\" alt=\"wps hide login\" style=\"margin-left: 0px;margin-right: auto;margin-top:10px;margin-bottom:10px;max-width: 640px;max-height: 400px\" />Tout le monde connait l&#8217;URL traditionnelle de connexion à un site WordPress ! De base, on se connecte généralement via : wp-login.php ou encore via /wp-admin/. Et c&#8217;est bien le problème, cette URL si connue peut permettre des attaques par force brute ou des tentatives de connexion. Il est donc évident qu&#8217;il convient de se [&#8230;]</p>\n<hr />\nL’article <a rel=\"nofollow\" href=\"https://wpformation.com/wps-hide-login-url-connexion-wordpress/\">WPS Hide Login : Changez votre URL de connexion WordPress</a> est apparu en premier sur <a href=\"https://wpformation.com/\">WPFormation</a>.<br /> <a href=\"https://wpformation.com/wordpress/\">Tutoriels WordPress</a>, <a href=\"https://wpformation.com/formation-wordpress/\">Formation WordPress</a>, <a href=\"https://wpformation.com/formation-woocommerce-e-commerce/\">Woocommerce</a>, <a href=\"https://wpformation.com/formation-wordpress-pro/\">SEO</a>. <a href=\"https://wpformation.com/abonnement-newsletter-wpf/\">Abonnez-vous</a> pour ne rien manquer !</p>\n<hr /><img src=\"http://feeds.feedburner.com/~r/wpfr/~4/5Pfpi5iNwjI\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:63:\"https://wpformation.com/wps-hide-login-url-connexion-wordpress/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"5 raisons pour lesquelles votre projet WordPress échoue\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/My1O8xp-jx4/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:80:\"https://www.whodunit.fr/5-raisons-pour-lesquelles-votre-projet-wordpress-echoue/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 24 Sep 2019 12:10:17 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:454:\"\n		        Seize ans après sa création, WordPress est devenu le support de près de 35% des sites les plus visités du Web. Le succès du CMS n’est plus à prouver mais de nombreux projets sont encore source de frustrations aussi bien pour les agences qui les créent que pour les clients qui les commandent. Passons en [&#8230;]\nThe post 5 raisons pour lesquelles votre projet WordPress échoue appeared first on Agence WordPress Whodunit.		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"Whodunit\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:701:\"<p>Seize ans après sa création, WordPress est devenu le support de près de 35% des sites les plus visités du Web. Le succès du CMS n’est plus à prouver mais de nombreux projets sont encore source de frustrations aussi bien pour les agences qui les créent que pour les clients qui les commandent. Passons en [&#8230;]</p>\n<p>The post <a rel=\"nofollow\" href=\"https://www.whodunit.fr/5-raisons-pour-lesquelles-votre-projet-wordpress-echoue/\">5 raisons pour lesquelles votre projet WordPress échoue</a> appeared first on <a rel=\"nofollow\" href=\"https://www.whodunit.fr\">Agence WordPress Whodunit</a>.</p><img src=\"http://feeds.feedburner.com/~r/wpfr/~4/My1O8xp-jx4\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:80:\"https://www.whodunit.fr/5-raisons-pour-lesquelles-votre-projet-wordpress-echoue/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"Quel plugin anti spam choisir pour un site WordPress bien propre ?\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/VFD51muiGYM/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:117:\"https://wpmarmite.com/anti-spam-wordpress/?utm_source=rss&#038;utm_medium=rss&%23038;utm_campaign=anti-spam-wordpress\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 24 Sep 2019 06:00:58 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:344:\"\n		        \nJe ne sais pas vous, mais personnellement, je trouve toujours très drôle d’aller faire un tour dans la partie “Indésirables” de mes commentaires WordPress. Du “meilleur site de rencontres pour...\nL’article Quel plugin anti spam choisir pour un site WordPress bien propre ? est apparu en premier sur WPMarmite.		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"WP Marmite\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:720:\"<p><img width=\"1500\" height=\"830\" src=\"https://wpmarmite.com/wp-content/uploads/2019/09/spam-wordpress.jpg\" class=\"attachment-full size-full wp-post-image\" alt=\"\" /></p>\n<p>Je ne sais pas vous, mais personnellement, je trouve toujours très drôle d’aller faire un tour dans la partie “Indésirables” de mes commentaires WordPress. Du “meilleur site de rencontres pour...</p>\n<p>L’article <a rel=\"nofollow\" href=\"https://wpmarmite.com/anti-spam-wordpress/\">Quel plugin anti spam choisir pour un site WordPress bien propre ?</a> est apparu en premier sur <a rel=\"nofollow\" href=\"https://wpmarmite.com\">WPMarmite</a>.</p><img src=\"http://feeds.feedburner.com/~r/wpfr/~4/VFD51muiGYM\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:117:\"https://wpmarmite.com/anti-spam-wordpress/?utm_source=rss&#038;utm_medium=rss&%23038;utm_campaign=anti-spam-wordpress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:75:\"🔎WP 5.3 Beta 1: quelques screenshots de ce qui arrive dans WordPress 5.3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/hmMoyo2CuZE/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:110:\"https://jeanbaptisteaudras.com/2019/09/wp-5-3-beta-1-quelques-screenshots-de-ce-qui-arrive-dans-wordpress-5-3/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 23 Sep 2019 22:27:32 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:603:\"\n		        L’article 🔎WP 5.3 Beta 1: quelques screenshots de ce qui arrive dans WordPress 5.3 provient de Jean-Baptiste Audras - CTO @ Whodunit &amp; WordPress Core Developer\nEn tant que l&#8217;un des release focus leads WordPress 5.3, je ne peux pas résister à publier un (vraiment) tout petit aperçu de ce qui arrive dans cette nouvelle version majeure du CMS, prévue le 12 novembre 2019&#160;! Plus de [&#8230;]\nL’article 🔎WP 5.3 Beta 1: quelques screenshots de ce qui arrive dans WordPress 5.3 provient de Jean-Baptiste Audras - CTO @ Whodunit &amp; WordPress Core Developer		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"JB Audras\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:7744:\"<p>L’article <a rel=\"nofollow\" href=\"https://jeanbaptisteaudras.com/2019/09/wp-5-3-beta-1-quelques-screenshots-de-ce-qui-arrive-dans-wordpress-5-3/\">🔎WP 5.3 Beta 1: quelques screenshots de ce qui arrive dans WordPress 5.3</a> provient de <a rel=\"nofollow\" href=\"https://jeanbaptisteaudras.com\">Jean-Baptiste Audras - CTO @ Whodunit &amp; WordPress Core Developer</a></p>\n\n<p>En tant que l&rsquo;un des <em>release focus leads</em> WordPress 5.3, je ne peux pas résister à publier un (vraiment) tout petit aperçu de ce qui arrive dans cette nouvelle version majeure du CMS, prévue le 12 novembre 2019&nbsp;!</p>\n\n\n\n<p>Plus de 400 tickets ont été clôturés pour la première version beta de WP 5.3 livrée cette nuit. On est clairement parti pour une nouvelle version assez énorme. Dans cet article, je vous partage quelques captures d&rsquo;écrans de cette version béta toute fraîche !</p>\n\n\n\n<p>L&rsquo;article d&rsquo;annonce de WP 5.3 Beta 1 (en anglais) :</p>\n\n\n\n<figure class=\"wp-block-embed-wordpress wp-block-embed is-type-wp-embed is-provider-wordpress-news\"><div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"wp-embedded-content\" data-secret=\"Jw2YRvLjAR\"><a href=\"https://wordpress.org/news/2019/09/wordpress-5-3-beta-1/\">WordPress 5.3 Beta 1</a></blockquote>\n</div></figure>\n\n\n\n<h2 class=\"alignwide\"><img src=\"https://s.w.org/images/core/emoji/12.0.0-1/72x72/1f3a8.png\" alt=\"🎨\" class=\"wp-smiley\" style=\"height: 1em;max-height: 1em\" />Nouveau design de l&rsquo;administration pour une meilleure accessibilité et cohérence avec l&rsquo;éditeur Gutenberg</h2>\n\n\n\n<p>C&rsquo;était l&rsquo;une des parties les plus importantes où j&rsquo;étais impliqué, avec 6 tickets « épiques » gérés à la fois par les équipe d’accessibilité et de design de WordPress, afin de porter une partie des styles de l&rsquo;éditeur Gutenberg vers l&rsquo;ensemble de WP-Admin.</p>\n\n\n\n<p>Une meilleure accessibilité et une meilleure cohérence pour une meilleure expérience d&rsquo;administration&nbsp;!</p>\n\n\n\n<p class=\"has-text-align-left\"><em>(cliquer sur les images pour les voir en plus grand)</em></p>\n\n\n\n<div class=\"wp-block-columns alignwide\">\n<div class=\"wp-block-column\">\n<figure class=\"wp-block-image alignwide size-large\"><a href=\"https://jeanbaptisteaudras.com/2019/wp-content/uploads/2019/09/53-1.png\"><img src=\"https://jeanbaptisteaudras.com/2019/wp-content/uploads/2019/09/53-1-1024x515.png\" alt=\"\" class=\"wp-image-8603\" /></a><figcaption>Tableau de bord</figcaption></figure>\n\n\n\n<figure class=\"wp-block-image size-large\"><a href=\"https://jeanbaptisteaudras.com/2019/wp-content/uploads/2019/09/53-3.png\"><img src=\"https://jeanbaptisteaudras.com/2019/wp-content/uploads/2019/09/53-3-1024x403.png\" alt=\"\" class=\"wp-image-8605\" /></a><figcaption>Écran des extensions</figcaption></figure>\n\n\n\n<figure class=\"wp-block-image size-large\"><a href=\"https://jeanbaptisteaudras.com/2019/wp-content/uploads/2019/09/53-6.png\"><img src=\"https://jeanbaptisteaudras.com/2019/wp-content/uploads/2019/09/53-6-1024x571.png\" alt=\"\" class=\"wp-image-8608\" /></a><figcaption>Gestionnaire de menus</figcaption></figure>\n</div>\n\n\n\n<div class=\"wp-block-column\">\n<figure class=\"wp-block-image size-large\"><a href=\"https://jeanbaptisteaudras.com/2019/wp-content/uploads/2019/09/53-2.png\"><img src=\"https://jeanbaptisteaudras.com/2019/wp-content/uploads/2019/09/53-2-1024x386.png\" alt=\"\" class=\"wp-image-8604\" /></a><figcaption>Bibliothèque de médias</figcaption></figure>\n\n\n\n<figure class=\"wp-block-image size-large\"><a href=\"https://jeanbaptisteaudras.com/2019/wp-content/uploads/2019/09/53-4.png\"><img src=\"https://jeanbaptisteaudras.com/2019/wp-content/uploads/2019/09/53-4-1024x556.png\" alt=\"\" class=\"wp-image-8606\" /></a><figcaption>Écran des réglages</figcaption></figure>\n\n\n\n<figure class=\"wp-block-image size-large\"><a href=\"https://jeanbaptisteaudras.com/2019/wp-content/uploads/2019/09/53-45.png\"><img src=\"https://jeanbaptisteaudras.com/2019/wp-content/uploads/2019/09/53-45-1024x520.png\" alt=\"\" class=\"wp-image-8612\" /></a><figcaption>Édition des médias</figcaption></figure>\n</div>\n</div>\n\n\n\n<h2 class=\"alignwide\"><img src=\"https://s.w.org/images/core/emoji/12.0.0-1/72x72/1f9f1.png\" alt=\"🧱\" class=\"wp-smiley\" style=\"height: 1em;max-height: 1em\" />Évolution de l&rsquo;éditeur de blocs Gutenberg</h2>\n\n\n\n<p>Les évolutions proposées sur l&rsquo;éditeur de blocs sont vraiment top&nbsp;! Ces captures d&rsquo;écran sont un vraiment tout petit aperçu des fonctinnalités de Gutenberg qui arrive avec WordPress 5.3. Personnellement, je ne peux déjà plus m&rsquo;en passer&nbsp;! <br>(ce site tourne toujours sur une version de développement de WP)</p>\n\n\n\n<div class=\"wp-block-columns alignwide\">\n<div class=\"wp-block-column\">\n<figure class=\"wp-block-image size-large\"><a href=\"https://jeanbaptisteaudras.com/2019/wp-content/uploads/2019/09/53-7.png\"><img src=\"https://jeanbaptisteaudras.com/2019/wp-content/uploads/2019/09/53-7-1024x563.png\" alt=\"\" class=\"wp-image-8609\" /></a><figcaption>Nouvelles fonctionnalités de mise en page pour le bloc colonnes&nbsp;!</figcaption></figure>\n\n\n\n<figure class=\"wp-block-image size-large\"><a href=\"https://jeanbaptisteaudras.com/2019/wp-content/uploads/2019/09/d3e90370d30f613c00e106bae2e34772.gif\"><img src=\"https://jeanbaptisteaudras.com/2019/wp-content/uploads/2019/09/d3e90370d30f613c00e106bae2e34772.gif\" alt=\"\" class=\"wp-image-8617\" /></a><figcaption>Gestion en live de la mise en page du bloc colonnes</figcaption></figure>\n</div>\n\n\n\n<div class=\"wp-block-column\">\n<figure class=\"wp-block-image size-large\"><a href=\"https://jeanbaptisteaudras.com/2019/wp-content/uploads/2019/09/53-8.png\"><img src=\"https://jeanbaptisteaudras.com/2019/wp-content/uploads/2019/09/53-8-1024x464.png\" alt=\"\" class=\"wp-image-8610\" /></a><figcaption>Ajouter d&rsquo;autres types de blocs à l&rsquo;intérieur du bloc Bannière</figcaption></figure>\n\n\n\n<figure class=\"wp-block-image size-large\"><a href=\"https://jeanbaptisteaudras.com/2019/wp-content/uploads/2019/09/53-9.png\"><img src=\"https://jeanbaptisteaudras.com/2019/wp-content/uploads/2019/09/53-9.png\" alt=\"\" class=\"wp-image-8611\" /></a><figcaption>Bloc réseaux sociaux</figcaption></figure>\n</div>\n</div>\n\n\n\n<h2 class=\"alignwide\"><img src=\"https://s.w.org/images/core/emoji/12.0.0-1/72x72/1f919.png\" alt=\"🤙\" class=\"wp-smiley\" style=\"height: 1em;max-height: 1em\" />Coucou, Twenty Twenty&nbsp;!</h2>\n\n\n\n<p>Pas encore beaucoup de captures d&rsquo;écrans à disposition car je ne l&rsquo;ai pas encore beaucoup utilisé en contexte de production, mais vous pouvez parcourir le site de l&rsquo;un des développeurs core <a href=\"https://jjj.blog/\">John James Jacoby</a> dont le site tourne déjà sur Twenty Twenty <img src=\"https://s.w.org/images/core/emoji/12.0.0-1/72x72/1f642.png\" alt=\"🙂\" class=\"wp-smiley\" style=\"height: 1em;max-height: 1em\" /></p>\n\n\n\n<figure class=\"wp-block-image size-large align\"><a href=\"https://jeanbaptisteaudras.com/2019/wp-content/uploads/2019/09/53-5.png\"><img src=\"https://jeanbaptisteaudras.com/2019/wp-content/uploads/2019/09/53-5-1024x580.png\" alt=\"\" class=\"wp-image-8607\" /></a><figcaption>Twenty Twenty en mode « feuille blanche » dans l&rsquo;outil de personnalisation (customizer)</figcaption></figure>\n<p>L’article <a rel=\"nofollow\" href=\"https://jeanbaptisteaudras.com/2019/09/wp-5-3-beta-1-quelques-screenshots-de-ce-qui-arrive-dans-wordpress-5-3/\">🔎WP 5.3 Beta 1: quelques screenshots de ce qui arrive dans WordPress 5.3</a> provient de <a rel=\"nofollow\" href=\"https://jeanbaptisteaudras.com\">Jean-Baptiste Audras - CTO @ Whodunit &amp; WordPress Core Developer</a></p><img src=\"http://feeds.feedburner.com/~r/wpfr/~4/hmMoyo2CuZE\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:110:\"https://jeanbaptisteaudras.com/2019/09/wp-5-3-beta-1-quelques-screenshots-de-ce-qui-arrive-dans-wordpress-5-3/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"🛠Supprimer le menu « More » par défaut de Twenty Nineteen\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/Q07AE5XS2ms/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:92:\"https://jeanbaptisteaudras.com/2019/09/supprimer-le-menu-more-par-defaut-de-twenty-nineteen/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sun, 22 Sep 2019 18:54:54 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:590:\"\n		        L’article 🛠Supprimer le menu « More » par défaut de Twenty Nineteen provient de Jean-Baptiste Audras - CTO @ Whodunit &amp; WordPress Core Developer\nIl y a quelques mois j&#8217;ai lancé une petite refonte de mon site perso. Je suis alors passé du thème Maker au thème Twenty Nineteen. Bien évidemment je l&#8217;ai pas mal relooké pour qu&#8217;il me corresponde mieux, en créant un [&#8230;]\nL’article 🛠Supprimer le menu « More » par défaut de Twenty Nineteen provient de Jean-Baptiste Audras - CTO @ Whodunit &amp; WordPress Core Developer		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"JB Audras\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:4739:\"<p>L’article <a rel=\"nofollow\" href=\"https://jeanbaptisteaudras.com/2019/09/supprimer-le-menu-more-par-defaut-de-twenty-nineteen/\">🛠Supprimer le menu « More » par défaut de Twenty Nineteen</a> provient de <a rel=\"nofollow\" href=\"https://jeanbaptisteaudras.com\">Jean-Baptiste Audras - CTO @ Whodunit &amp; WordPress Core Developer</a></p>\n\n<p>Il y a quelques mois j&rsquo;ai lancé une petite refonte de mon site perso. Je suis alors passé du thème <em>Maker</em> au thème <em>Twenty Nineteen</em>. Bien évidemment je l&rsquo;ai pas mal relooké pour qu&rsquo;il me corresponde mieux, en créant un thème enfant.</p>\n\n\n\n<p>Twenty Nineteen est un super thème natif, et je suis d&rsquo;ailleurs très content d&rsquo;avoir contribué à son développement, mais il y a quand même un truc qui me chiffonnait avec ce thème, c&rsquo;est le menu «&nbsp;More&nbsp;».</p>\n\n\n\n<p>Par défaut, Twenty Nineteen filtre le fonctionnement natif du menu de navigation principale afin de le couper en deux s&rsquo;il contient trop d&rsquo;éléments. Un bouton avec trois petits points apparait alors afin de fournir le reste des éléments du menu. Voilà à quoi ressemble ce bouton portant la classe <code>main-menu-more</code>:</p>\n\n\n\n<figure class=\"wp-block-image alignwide size-large\"><img src=\"https://jeanbaptisteaudras.com/2019/wp-content/uploads/2019/09/63f3a17c3e32e62cac90bbdc61e612a7.gif\" alt=\"\" class=\"wp-image-8180\" /></figure>\n\n\n\n<p>Bon bien sûr là j&rsquo;ai pris un exemple avec des dizaines d&rsquo;items dans mon menu, donc forcément, c&rsquo;est pas plus mal d&rsquo;avoir ce bouton «&nbsp;More&nbsp;» <img src=\"https://s.w.org/images/core/emoji/12.0.0-1/72x72/1f602.png\" alt=\"😂\" class=\"wp-smiley\" style=\"height: 1em;max-height: 1em\" /></p>\n\n\n\n<p>Mais sur mobile, avec simplement trois items de menu (comme sur mon site perso), c&rsquo;est déjà plus embêtant&nbsp;:</p>\n\n\n\n<figure class=\"wp-block-image size-large\"><img src=\"https://jeanbaptisteaudras.com/2019/wp-content/uploads/2019/09/4268ad9dbeab72888b7a896e101f6c87.gif\" alt=\"\" class=\"wp-image-8181\" /></figure>\n\n\n\n<h2 class=\"alignwide\"><img src=\"https://s.w.org/images/core/emoji/12.0.0-1/72x72/1f449.png\" alt=\"👉\" class=\"wp-smiley\" style=\"height: 1em;max-height: 1em\" />Que faire si l&rsquo;on souhaite avoir un menu classique sur Twenty Nineteen&nbsp;?</h2>\n\n\n\n<p>Ce n&rsquo;est pas hyper compliqué <img src=\"https://s.w.org/images/core/emoji/12.0.0-1/72x72/1f60c.png\" alt=\"😌\" class=\"wp-smiley\" style=\"height: 1em;max-height: 1em\" /></p>\n\n\n\n<p>Il faut bien entendu commencer par créer un thème enfant, puis suffit de supprimer les filtres utilisés par Twenty Nineteen pour faire fonctionner ce système de menu « More ». Dans l&rsquo;exemple ci-dessous, je crée dans le fichier <em>functions.php</em> de mon thème enfant une fonction afin de supprimer ces filtres :</p>\n\n\n\n<pre class=\"wp-block-code language-php line-numbers alignwide\"><code class=\"language-php line-numbers\">function jba_remove_twentynineteen_menu_filters() {\n	remove_filter( \'wp_nav_menu\', \'twentynineteen_add_ellipses_to_nav\' );\n	remove_filter( \'wp_nav_menu_objects\', \'twentynineteen_add_mobile_parent_nav_menu_items\' );\n	remove_filter( \'walker_nav_menu_start_el\', \'twentynineteen_add_dropdown_icons\' );\n	remove_filter( \'nav_menu_link_attributes\', \'twentynineteen_nav_menu_link_attributes\' );\n}\nadd_action( \'init\', \'jba_remove_twentynineteen_menu_filters\' );</code></pre>\n\n\n\n<p>Une fois ces filtres supprimés, des erreurs JavaScript risquent encore de s&rsquo;afficher dans la console de votre navigateur.</p>\n\n\n\n<p>Pour corriger cela, il suffit de supprimer (pour être plus précis, de <code>dequeue</code>) les scripts JS permettant de faire fonctionner le menu «&nbsp;More&nbsp;»&nbsp;:</p>\n\n\n\n<pre class=\"wp-block-code language-php line-numbers alignwide\"><code class=\"language-php line-numbers\">function jba_dequeue_twentynineteen_menu_scripts() {\n	wp_dequeue_script( \'twentynineteen-priority-menu\' );\n	wp_dequeue_script( \'twentynineteen-touch-navigation\' );\n}\nadd_action( \'wp_print_scripts\', \'jba_dequeue_twentynineteen_menu_scripts\', 100 );</code></pre>\n\n\n\n<p>Et voilà <img src=\"https://s.w.org/images/core/emoji/12.0.0-1/72x72/1f389.png\" alt=\"🎉\" class=\"wp-smiley\" style=\"height: 1em;max-height: 1em\" /></p>\n<p>L’article <a rel=\"nofollow\" href=\"https://jeanbaptisteaudras.com/2019/09/supprimer-le-menu-more-par-defaut-de-twenty-nineteen/\">🛠Supprimer le menu « More » par défaut de Twenty Nineteen</a> provient de <a rel=\"nofollow\" href=\"https://jeanbaptisteaudras.com\">Jean-Baptiste Audras - CTO @ Whodunit &amp; WordPress Core Developer</a></p><img src=\"http://feeds.feedburner.com/~r/wpfr/~4/Q07AE5XS2ms\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:92:\"https://jeanbaptisteaudras.com/2019/09/supprimer-le-menu-more-par-defaut-de-twenty-nineteen/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:85:\"Les actions à réaliser toutes les semaines pour une bonne maintenance de votre site\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/fX8NvkmkiC4/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:108:\"https://www.whodunit.fr/les-actions-a-realiser-toutes-les-semaines-pour-une-bonne-maintenance-de-votre-site/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 19 Sep 2019 11:53:54 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:569:\"\n		        Après un premier article sur les actions quotidiennes à effecteur, nous abordons aujourd&#8217;hui les actions à faire chaque semaine. En fonction de la complexité de votre site, du thème et du nombre d&#8217;extensions installées, les actions hebdomadaires pour une bonne maintenance WordPress sont principalement liées aux mises à jours. Sont effectivement concernées&#160;: Les mises à [&#8230;]\nThe post Les actions à réaliser toutes les semaines pour une bonne maintenance de votre site appeared first on Agence WordPress Whodunit.		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"Whodunit\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:844:\"<p>Après un premier article sur les actions quotidiennes à effecteur, nous abordons aujourd&#8217;hui les actions à faire chaque semaine. En fonction de la complexité de votre site, du thème et du nombre d&#8217;extensions installées, les actions hebdomadaires pour une bonne maintenance WordPress sont principalement liées aux mises à jours. Sont effectivement concernées&#160;: Les mises à [&#8230;]</p>\n<p>The post <a rel=\"nofollow\" href=\"https://www.whodunit.fr/les-actions-a-realiser-toutes-les-semaines-pour-une-bonne-maintenance-de-votre-site/\">Les actions à réaliser toutes les semaines pour une bonne maintenance de votre site</a> appeared first on <a rel=\"nofollow\" href=\"https://www.whodunit.fr\">Agence WordPress Whodunit</a>.</p><img src=\"http://feeds.feedburner.com/~r/wpfr/~4/fX8NvkmkiC4\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:108:\"https://www.whodunit.fr/les-actions-a-realiser-toutes-les-semaines-pour-une-bonne-maintenance-de-votre-site/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:62:\"💬 34,5%… et surtout une influence grandissante sur le web\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/nKxw_BZOl48/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:86:\"https://jeanbaptisteaudras.com/2019/09/influence-grandissante-de-wordpress-sur-le-web/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 19 Sep 2019 04:59:43 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:584:\"\n		        L’article 💬 34,5%… et surtout une influence grandissante sur le web provient de Jean-Baptiste Audras - CTO @ Whodunit &amp; WordPress Core Developer\nWordPress, c&#8217;est aujourd&#8217;hui 34,5% du web… enfin plus précisément 34,5% des 10 millions de sites internet les plus visités au monde sur le web. Ce qui est tout de même un indicateur assez fiable de la popularité de ce CMS. [&#8230;]\nL’article 💬 34,5%… et surtout une influence grandissante sur le web provient de Jean-Baptiste Audras - CTO @ Whodunit &amp; WordPress Core Developer		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"JB Audras\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:13149:\"<p>L’article <a rel=\"nofollow\" href=\"https://jeanbaptisteaudras.com/2019/09/influence-grandissante-de-wordpress-sur-le-web/\">💬 34,5%… et surtout une influence grandissante sur le web</a> provient de <a rel=\"nofollow\" href=\"https://jeanbaptisteaudras.com\">Jean-Baptiste Audras - CTO @ Whodunit &amp; WordPress Core Developer</a></p>\n\n<p>WordPress, c&rsquo;est aujourd&rsquo;hui 34,5% du web… enfin plus précisément 34,5% des 10 millions de sites internet les plus visités au monde sur le web. Ce qui est tout de même un indicateur assez fiable de la popularité de ce CMS. Depuis quelques temps, cette popularité place de fait notre CMS favori en tant qu&rsquo;acteur incontournable pour bâtir le web de demain. Pour le meilleur ou pour le pire… visons le meilleur&nbsp;!</p>\n\n\n\n<figure class=\"wp-block-image alignwide\"><img src=\"https://jeanbaptisteaudras.com/2019/wp-content/uploads/2019/09/market-share-cms-wordpress-september-2019.png\" alt=\"\" class=\"wp-image-7085\" /><figcaption>Source: <a href=\"https://w3techs.com/technologies/overview/content_management/all\">w3techs &#8211; septembre 2019</a><br>En fait, si on voulait avoir une vision plus juste de ce que représente les parts de marché de WordPress actuellement, la simple stat de « 34,5% du web » est insuffisante : elle sous-entend que le reste des CMS se partagent les 65,5% restants. On prendrait plutôt le pourcentage d&rsquo;utilisation de WordPress parmi les sites web utilisant un système de gestion de contenu&nbsp;: <strong>61,3%</strong>. Ci-dessus, la courbe rouge montre les parts de marché de WordPress et la courbe verte montre la « part de marché » des sites n&rsquo;utilisant aucun CMS connu. Le reste des « courbes » (entre guillemets car ces courbes sont objectivement plutôt plates) montrent les parts de marché des autres CMS… </figcaption></figure>\n\n\n\n<h2><img src=\"https://s.w.org/images/core/emoji/12.0.0-1/72x72/1f37f.png\" alt=\"🍿\" class=\"wp-smiley\" style=\"height: 1em;max-height: 1em\" /> Un p’tit <em>revert</em> pas si anodin</h2>\n\n\n\n<p>Davantage que simplement représenter un peu + de 34% du web en tant que solution n°1 pour mette en ligne du contenu sur le web, <em>WordPress est un acteur de </em><strong><em>référence</em></strong>. J&rsquo;insiste sur ce terme car je le trouve intéressant à plus d&rsquo;un titre. Nous allons voir que nous passons d&rsquo;un positionnement de <em>suiveur</em> à un positionnement <strong>d&rsquo;acteur du web de demain</strong>, ce qui n&rsquo;est pas de la petite limonade. Et nous n&rsquo;y sommes peut-être pas prêts. <em>Challenge accepted?</em></p>\n\n\n\n<div class=\"wp-block-columns alignwide has-2-columns\">\n<div class=\"wp-block-column\">\n<p>Initialement remonté par Darren Ethier sur le Slack de <a href=\"https://poststatus.com/\"><em>Post Status</em></a>, un <em>commit</em> récent de l&rsquo;un des développeurs de Chromium est particulièrement intéressant.</p>\n\n\n\n<p>Il ne s&rsquo;agit pas d&rsquo;un simple <em>commit</em>. Il s&rsquo;agit d&rsquo;un <em>revert</em>, soit une action visant à annuler du code précédemment intégré dans le code source du projet. Le projet dont il est question, c&rsquo;est <em>Chromium</em>, la base servant à propulser <em>Google Chrome</em>, qui est tout simplement le navigateur qui représente globalement environ <a href=\"https://gs.statcounter.com/browser-market-share\">64%</a> de parts de marché sur les outils permettant d&rsquo;accéder au web.</p>\n</div>\n\n\n\n<div class=\"wp-block-column\">\n<figure class=\"wp-block-image\"><img src=\"https://jeanbaptisteaudras.com/2019/wp-content/uploads/2019/09/chromium-wordpress.png\" alt=\"\" class=\"wp-image-7081\" /></figure>\n</div>\n</div>\n\n\n\n<p>Dans tout <em>commit</em> normalement constitué, un commentaire accompagne la raison ou le contexte du changement effectué. Ici, le contexte était de définir l&rsquo;interprétation d&rsquo;une propriété CSS flexbox par Chromium. </p>\n\n\n\n<figure class=\"wp-block-pullquote alignright is-style-default\" style=\"border-color:#FFF\"><blockquote class=\"has-text-color has-dark-gray-color\"><p>Reason for revert: <br>Broke WordPress.</p></blockquote></figure>\n\n\n\n<p>Puis ce <em>commit</em> à été <em>revert</em>, ce qui veut dire qu&rsquo;on l&rsquo;annule et qu&rsquo;on revient à ce qu&rsquo;on avait avant. Avec le commentaire suivant&nbsp;:</p>\n\n\n\n<p><em>Oups, on a cassé WordPress</em> <img src=\"https://s.w.org/images/core/emoji/12.0.0-1/72x72/1f648.png\" alt=\"🙈\" class=\"wp-smiley\" style=\"height: 1em;max-height: 1em\" /></p>\n\n\n\n<h3><img src=\"https://s.w.org/images/core/emoji/12.0.0-1/72x72/1f449.png\" alt=\"👉\" class=\"wp-smiley\" style=\"height: 1em;max-height: 1em\" /> Pourquoi c&rsquo;est si intéressant ?</h3>\n\n\n\n<p>Les navigateurs web sont des <em>user-agents</em> (agents utilisateurs). C&rsquo;est à dire qu&rsquo;ils sont chargés d&rsquo;interpréter les standards du web (langages HTML, CSS, JavaScript…) notamment définis par le W3C (et le WHATWG, je ne rentre pas dans le détail dans le cadre de ce billet) afin de restituer le contenu des pages web aux visiteurs des sites.</p>\n\n\n\n<p>Petit à petit, certains sont devenus <strong>gros</strong>. Et Chromium&nbsp;– Google&nbsp;Chrome – est un <strong>gros</strong> navigateur. Tellement gros qu&rsquo;il a même fini par rapidement peser dans les décisions des organismes de standardisation. <br><em><small>(La question plus complexe et très « politique » de la relation entre W3C et WHATWG n&rsquo;est pas l&rsquo;objet de cet article, qui concerne essentiellement le rôle de WP dans tout ça)</small></em></p>\n\n\n\n<figure class=\"wp-block-pullquote alignright\"><blockquote class=\"has-text-color has-primary-color\"><p>Ce rollback de Chromium sur un changement du moteur de rendu CSS pour ne pas <br>«&nbsp;casser&nbsp;WP&nbsp;» pose la question de l&rsquo;influence du projet WP sur le web.</p></blockquote></figure>\n\n\n\n<p>Normalement, lorsque l&rsquo;interprétation des standards par les navigateurs conduit à des bugs sur WordPress, on corrige tout simplement le CMS. Normal : nous ne jouons pas sur le même tableau. WordPress est en bout de chaine. Ou du moins WordPress <em>était</em> en bout de chaîne.</p>\n\n\n\n<p>Aujourd&rsquo;hui on voit que le projet WordPress commence à peser sur les décisions des navigateurs, eux-mêmes chargés d&rsquo;interpréter les décisions des organismes de normalisation comme le W3C ou le WHATWG… dont ils ont fini par faire partie. </p>\n\n\n\n<p>En tant que développeuse ou développeur de thème, d’extensions, de fonctionnalités WordPress pour votre clientèle, auriez-vous ne serait-ce qu&rsquo;imaginé un instant que Chrome, Firefox, Edge, Safari, Opéra ou IE allait patcher son code source pour faire que votre site web s&rsquo;affiche correctement&nbsp;? Non c&rsquo;est évidemment à nous, prestataires et travailleur·se·s du web de patcher tout cela. Et l&rsquo;inverse aurait été un non-sens. C&rsquo;est pourtant ce qui s&rsquo;est – pour moi – passé avec ce <em>revert</em>. Un jeu de chaises musicales où pour le coup, le projet WP a été défini comme une contrainte à prendre en compte du fait de sa popularité.</p>\n\n\n\n<p><a href=\"https://medinathoughts.com/2018/01/29/wordpress-google/\">L&rsquo;investissement progressif de Google</a> dans la contribution à WordPress en témoigne, ce type d&rsquo;acteur souhaite évidemment prendre le train en marche. En toute franchise, c&rsquo;est <em>à mon sens</em> plutôt une bonne chose de les voir maintenant contribuer au développement du cœur WP et recruter plusieurs développeurs historiques du CMS. Et cela peut apporter un paquet d&rsquo;opportunités aux acteurs qui vivent de WordPress, qu&rsquo;il s&rsquo;agisse de prestataires ou d&rsquo;éditeurs d&rsquo;extensions.</p>\n\n\n\n<p class=\"has-large-font-size\"><em>Mais il faut savoir raison garder.</em></p>\n\n\n\n<p>On parle d&rsquo;un <em>commit</em> au milieu de milliers d&rsquo;autres… mais ça reste un changement dans le rapport de force normal – disons plutôt <em>classique</em> entre navigateurs et applications web. Il convient de le suivre avec intérêt <img src=\"https://s.w.org/images/core/emoji/12.0.0-1/72x72/1f913.png\" alt=\"🤓\" class=\"wp-smiley\" style=\"height: 1em;max-height: 1em\" /></p>\n\n\n\n<h3><img src=\"https://s.w.org/images/core/emoji/12.0.0-1/72x72/1f425.png\" alt=\"🐥\" class=\"wp-smiley\" style=\"height: 1em;max-height: 1em\" /> Réactions diverses sur Twitter</h3>\n\n\n\n<div class=\"wp-block-columns alignwide has-2-columns\">\n<div class=\"wp-block-column\">\n<figure class=\"wp-block-embed-twitter wp-block-embed is-type-rich is-provider-twitter\"><div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"twitter-tweet\" data-width=\"550\" data-dnt=\"true\"><p lang=\"en\" dir=\"ltr\">When a browser reverts a change because it&#039;s breaking <a href=\"https://twitter.com/hashtag/WordPress?src=hash&amp;ref_src=twsrc%5Etfw\">#WordPress</a>… <br>That&#039;s the cool thing when you represent 35% of the web <img src=\"https://s.w.org/images/core/emoji/12.0.0-1/72x72/1f60a.png\" alt=\"😊\" class=\"wp-smiley\" style=\"height: 1em;max-height: 1em\" /> <a href=\"https://t.co/JMDABBYa9o\">pic.twitter.com/JMDABBYa9o</a></p>&mdash; Jb Audras (@AudrasJb) <a href=\"https://twitter.com/AudrasJb/status/1174429507698221061?ref_src=twsrc%5Etfw\">September 18, 2019</a></blockquote>\n</div></figure>\n\n\n\n<figure class=\"wp-block-embed-twitter wp-block-embed is-type-rich is-provider-twitter\"><div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"twitter-tweet\" data-width=\"550\" data-dnt=\"true\"><p lang=\"en\" dir=\"ltr\">I love this all so much <img src=\"https://s.w.org/images/core/emoji/12.0.0-1/72x72/1f913.png\" alt=\"🤓\" class=\"wp-smiley\" style=\"height: 1em;max-height: 1em\" /></p>&mdash; Mary Baum (@marybaum) <a href=\"https://twitter.com/marybaum/status/1174701181723168770?ref_src=twsrc%5Etfw\">September 19, 2019</a></blockquote>\n</div></figure>\n\n\n\n<figure class=\"wp-block-embed-twitter wp-block-embed is-type-rich is-provider-twitter\"><div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"twitter-tweet\" data-width=\"550\" data-dnt=\"true\"><p lang=\"en\" dir=\"ltr\">what about when WordPress breaks browsers? <a href=\"https://t.co/GfOvAoeLX0\">https://t.co/GfOvAoeLX0</a></p>&mdash; Morten @ home (@mor10) <a href=\"https://twitter.com/mor10/status/1174435351118536704?ref_src=twsrc%5Etfw\">September 18, 2019</a></blockquote>\n</div></figure>\n</div>\n\n\n\n<div class=\"wp-block-column\">\n<figure class=\"wp-block-embed-twitter wp-block-embed is-type-rich is-provider-twitter\"><div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"twitter-tweet\" data-width=\"550\" data-dnt=\"true\"><p lang=\"en\" dir=\"ltr\">…as if it was totally obvious that they had to correct that on their side.</p>&mdash; Jb Audras (@AudrasJb) <a href=\"https://twitter.com/AudrasJb/status/1174445076933746689?ref_src=twsrc%5Etfw\">September 18, 2019</a></blockquote>\n</div></figure>\n\n\n\n<figure class=\"wp-block-embed-twitter wp-block-embed is-type-rich is-provider-twitter\"><div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"twitter-tweet\" data-width=\"550\" data-dnt=\"true\"><p lang=\"en\" dir=\"ltr\">&quot;Reason for revert: Broke wordpress&quot; <a href=\"https://t.co/l8Y1Q83npM\">https://t.co/l8Y1Q83npM</a> <a href=\"https://t.co/uv2a7rJuac\">https://t.co/uv2a7rJuac</a></p>&mdash; Mark Root-Wiley (@MRWweb) <a href=\"https://twitter.com/MRWweb/status/1174423305106780160?ref_src=twsrc%5Etfw\">September 18, 2019</a></blockquote>\n</div></figure>\n\n\n\n<figure class=\"wp-block-embed-twitter wp-block-embed is-type-rich is-provider-twitter\"><div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"twitter-tweet\" data-width=\"550\" data-dnt=\"true\"><p lang=\"en\" dir=\"ltr\">THIS. IS. SCARY.<br>Like 2001 scary. <a href=\"https://t.co/m1ts4onYRD\">https://t.co/m1ts4onYRD</a></p>&mdash; ᴀxᴇʟ ᴠᴀʟᴅᴇᴢ (@axelvaldezmx) <a href=\"https://twitter.com/axelvaldezmx/status/1174442389987037184?ref_src=twsrc%5Etfw\">September 18, 2019</a></blockquote>\n</div></figure>\n\n\n\n<figure class=\"wp-block-embed-twitter wp-block-embed is-type-rich is-provider-twitter\"><div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"twitter-tweet\" data-width=\"550\" data-dnt=\"true\"><p lang=\"en\" dir=\"ltr\">Ok I see what you meant. Thats a great question.<br><br>Also, worth noting main browsers are already implementing standards in a way that forces standards to follow suit… <img src=\"https://s.w.org/images/core/emoji/12.0.0-1/72x72/1f643.png\" alt=\"🙃\" class=\"wp-smiley\" style=\"height: 1em;max-height: 1em\" /></p>&mdash; Jb Audras (@AudrasJb) <a href=\"https://twitter.com/AudrasJb/status/1174443796198756352?ref_src=twsrc%5Etfw\">September 18, 2019</a></blockquote>\n</div></figure>\n</div>\n</div>\n<p>L’article <a rel=\"nofollow\" href=\"https://jeanbaptisteaudras.com/2019/09/influence-grandissante-de-wordpress-sur-le-web/\">💬 34,5%… et surtout une influence grandissante sur le web</a> provient de <a rel=\"nofollow\" href=\"https://jeanbaptisteaudras.com\">Jean-Baptiste Audras - CTO @ Whodunit &amp; WordPress Core Developer</a></p><img src=\"http://feeds.feedburner.com/~r/wpfr/~4/nKxw_BZOl48\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:86:\"https://jeanbaptisteaudras.com/2019/09/influence-grandissante-de-wordpress-sur-le-web/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:85:\"10 meilleurs plugins WordPress de FAQ (+ Comment créer manuellement une section FAQ)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/VFNJzljPz7U/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"https://kinsta.com/fr/blog/plugins-faq-wordpress/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 30 Sep 2019 12:54:30 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:356:\"\n		        Offrir un soutien de haute qualité à la clientèle est essentiel au maintien d&#8217;une entreprise prospère. Cependant, la mise en service des requêtes peut devenir longue ...\nThe post 10 meilleurs plugins WordPress de FAQ (+ Comment créer manuellement une section FAQ) appeared first on Hébergement WordPress infogéré Kinsta.		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:6:\"Kinsta\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:26593:\"<p>Offrir un soutien de haute qualité à la clientèle est essentiel au maintien d&rsquo;une entreprise prospère. Cependant, la mise en service des requêtes peut devenir longue et répétitive. C&rsquo;est là qu&rsquo;interviennent les extensions WordPress de FAQ.</p>\n<p>Pour diminuer le temps que vous avez à passer à répondre aux mêmes questions encore et encore, vous voudrez peut-être ajouter une section Foire aux questions (FAQ) à votre site. Bien que vous puissiez toujours en créer une à la main, l&rsquo;utilisation d&rsquo;une extension peut simplifier le processus et intégrer un style avancé.</p>\n<p>Dans cet article, nous allons approfondir les avantages d&rsquo;inclure une page de FAQ sur votre site WordPress. Ensuite, nous partagerons quelques-unes des meilleures extensions WordPress de FAQ sur le marché, et discuterons comment créer une section FAQ sans outils supplémentaires. Commençons tout de suite !</p>\n<aside id=\"aside-cta-mini\">\n  <div id=\"aside-cta-mini-aligner\">\n    <div class=\"cta-mini cta-mini--floating\">\n      <div class=\"cta-mini--light\">\n        <div class=\"heading--normal mb--30 text--superbold\">Êtes-vous fatigué de la lenteur de l&#039;hébergement WordPress &amp; du support inférieur ? Nous faisons les choses différemment chez Kinsta.</div>\n        <div class=\"mt--10\">\n          <a class=\"button--purple button--small\" href=\"https://kinsta.com/fr/plans/?article-sidebar-floating\">Découvrez nos plans d&#039;hébergement</a>\n        </div>\n      </div>\n    </div>\n  </div>\n</aside>\n  <aside class=\"toc pb--50 pt--50 mt--50 mb--50\" data-heading=\"Table des matières\" data-exclude=\"last\" data-list-style=\"arrow\" data-selector=\"h2\"></aside>\n  \n<h2 id=\"why\">Pourquoi votre site peut avoir besoin d&rsquo;une page de FAQ</h2>\n<p>Il n&rsquo;y a pas à nier<a href=\"https://kinsta.com/fr/blog/croissance-entreprise-saas/\"> l&rsquo;importance du support</a> à la clientèle. Aider les personnes qui utilisent vos produits ou services lorsqu&rsquo;elles rencontrent des problèmes contribue à rehausser la réputation de votre entreprise et à améliorer ses chances de succès.</p>\n<p>De plus, si vos clients ont une bonne expérience avec votre entreprise, vous avez plus de chances de réussir à <a href=\"https://kinsta.com/fr/blog/fidelisation-client/\">les conserver</a>. Puisque c’est <a href=\"https://www.huffpost.com/entry/50-important-customer-exp_b_8295772\">six à sept fois plus cher</a> de recruter de nouveaux clients que de conserver ceux que vous avez, cela peut vous permettre de stabiliser vos revenus.</p>\n<p><a href=\"https://kinsta.com/clients/\">Les clients satisfaits</a> sont également plus susceptibles de recommander votre entreprise à leurs amis et à leur famille. Il s&rsquo;agit d&rsquo;une excellente occasion de faire connaître votre marque sans frais pour vous. Vos clients peuvent devenir vos plus grands défenseurs, tant qu&rsquo;ils continuent d&rsquo;avoir une expérience positive avec votre entreprise.</p>\n<p>Cela dit, la gestion des demandes de support n&rsquo;est pas toujours facile. Surtout si vous débutez ou si votre entreprise est encore petite, il peut être difficile de trouver du temps à consacrer à répondre aux questions. C&rsquo;est vraiment difficile et exigeant en ressources de mettre sur pied un service à la clientèle 24/7 pour de nombreux propriétaires d&rsquo;entreprise.</p>\n<p>C&rsquo;est pourquoi il est sage de fournir les réponses de façon proactive, afin que les clients n&rsquo;aient pas à vous contacter.</p>\n<p>Le fait d&rsquo;avoir des réponses à vos questions fréquemment posées sur votre site garantit que, peu importe où ils se trouvent dans le monde ou quand ils utilisent vos produits ou services, les clients seront en mesure de résoudre les problèmes de base par eux-mêmes. De cette façon, vous pouvez soulager rapidement leurs frustrations sans lever le petit doigt.</p>\n<h2 id=\"best-plugins\">Les 10 meilleures extensions WordPress de FAQ</h2>\n<p>Pour les utilisateurs de WordPress, il est assez facile d&rsquo;ajouter une section FAQ à leur site en utilisant une extension. Il y en a plusieurs au choix :</p>\n<ol>\n<li><a href=\"#ultimate-FAQ\">Ultimate FAQ</a></li>\n<li><a href=\"#accordion-FAQ\">Accordion FAQ</a></li>\n<li><a href=\"#easy-accordion\">Easy Accordion</a></li>\n<li><a href=\"#wp-responsive-FAQ\">WP Responsive FAQ</a></li>\n<li><a href=\"#knowledge\">Knowledge Base for Documents and FAQs</a></li>\n<li><a href=\"#html5-responsive-FAQ\">HTML5 Responsive FAQ</a></li>\n<li><a href=\"#FAQ-by-10Web\">FAQ by 10Web</a></li>\n<li><a href=\"#spider-FAQ\">Spider FAQ</a></li>\n<li><a href=\"#quick\">Quick and Easy FAQs</a></li>\n<li><a href=\"#yith\">YITH WooCommerce Questions and Answers</a></li>\n</ol>\n<p>Regardons de plus près !</p>\n<h3 id=\"ultimate-FAQ\">1. Ultimate FAQ</h3>\n<div class=\"wp-caption alignnone\" style=\"max-width: 1539px\"><a href=\"https://wordpress.org/plugins/ultimate-faqs/\" target=\"_blank\" rel=\"noopener noreferrer\"><img src=\"https://kinsta.com/fr/wp-content/uploads/sites/4/2019/08/ultimate-faq.jpg\" alt=\"Ultimate FAQ plugin\" width=\"1539\" height=\"495\" /></a><p class=\"wp-caption-text\">Ultimate FAQ plugin</p></div>\n<p>Comme son nom l&rsquo;indique, l’extension <a href=\"https://wordpress.org/plugins/ultimate-faqs/\">Ultimate FAQ</a> s&rsquo;efforce de tout faire quand il s&rsquo;agit de FAQs. Avec l&rsquo;intégration de WooCommerce et l&rsquo;optimisation de l&rsquo;éditeur de blocs, Ultimate FAQ est extrêmement flexible et peut s&rsquo;adapter à presque tous les sites et niveaux d&rsquo;utilisateurs.</p>\n<p>Voici quelques caractéristiques clés :</p>\n<ul>\n<li>Trois blocs liés à la FAQ</li>\n<li>Un onglet FAQ pour les pages de produits WooCommerce</li>\n<li>Catégories et étiquettes de FAQ</li>\n<li>Options de style CSS personnalisées</li>\n</ul>\n<p>Vous pouvez télécharger Ultimate FAQ gratuitement à partir du dépot des extensions ou investir dans<a href=\"http://www.etoilewebdesign.com/plugins/ultimate-faq/\"> la version premium</a>. Les licences commencent à partir de 30$ par année et vous aurez accès à des options et à des fonctionnalités de style avancées.</p>\n<h3 id=\"accordion-FAQ\">2. Accordion FAQ</h3>\n<div class=\"wp-caption alignnone\" style=\"max-width: 1539px\"><a href=\"https://wordpress.org/plugins/responsive-accordion-and-collapse/\" target=\"_blank\" rel=\"noopener noreferrer\"><img src=\"https://kinsta.com/fr/wp-content/uploads/sites/4/2019/08/extension-accordion-faq.jpg\" alt=\"Extension Accordion FAQ\" width=\"1539\" height=\"495\" /></a><p class=\"wp-caption-text\">Extension Accordion FAQ</p></div>\n<p>L&rsquo;une des difficultés des pages FAQ est qu&rsquo;elles peuvent rapidement devenir longues et encombrées. Les mises en page pliables de style accordéon sont une solution populaire à ce problème, car elles évitent aux utilisateurs d&rsquo;avoir à faire défiler excessivement les documents.</p>\n<p><a href=\"https://wordpress.org/plugins/responsive-accordion-and-collapse/\">Accordion FAQ</a> facilite la réalisation de cette fonctionnalité. Avec cette extension, vous pouvez :</p>\n<ul>\n<li>Créer plusieurs FAQ en accordéons</li>\n<li>Incorporer des listes de FAQ avec des codes courts</li>\n<li>Personnaliser votre accordéon avec différents choix de couleurs</li>\n<li>Accéder et ajouter des icônes Font Awesome</li>\n<li>Organiser vos questions à l&rsquo;aide d&rsquo;un générateur en glisser-déposer</li>\n</ul>\n<p>Si votre budget est serré, c&rsquo;est aussi un choix judicieux. Vous pouvez télécharger gratuitement FAQ Accordion ou accéder à des animations, <a href=\"https://kinsta.com/fr/blog/meilleures-polices-google-fonts/\">Google Fonts</a>, et d&rsquo;autres effets avancés avec <a href=\"https://wpshopmart.com/plugins/accordion-pro/\">Accordion Pro</a>. Cette extension premium est très abordable à seulement 9$ pour une licence de six mois ou 27$ pour une utilisation à vie sur un nombre illimité de sites.</p>\n<h3 id=\"easy-accordion\">3. Easy Accordion</h3>\n<div class=\"wp-caption alignnone\" style=\"max-width: 1539px\"><a href=\"https://wordpress.org/plugins/easy-accordion-free/\" target=\"_blank\" rel=\"noopener noreferrer\"><img src=\"https://kinsta.com/fr/wp-content/uploads/sites/4/2019/08/extension-easy-accordion.jpg\" alt=\"Extension Easy Accordion\" width=\"1539\" height=\"495\" /></a><p class=\"wp-caption-text\">Extension Easy Accordion</p></div>\n<p>Considérant les avantages d&rsquo;utiliser une disposition en accordéon pour votre page FAQ, il n&rsquo;est pas surprenant qu&rsquo;il y ait plus d&rsquo;une extension dédiée pour vous aider à intégrer cette fonctionnalité. <a href=\"https://wordpress.org/plugins/easy-accordion-free/\">Easy Accordion</a> est très similaire à Accordion FAQ, offrant une expérience similaire de construction en glisser-déposer et un design réactif.</p>\n<p>Cependant, Easy Accordion propose également des thèmes uniques pour la mise en forme de vos FAQs. Vous aurez accès à un thème dans la version gratuite, ou vous pouvez mettre à niveau vers <a href=\"https://shapedplugin.com/plugin/easy-accordion-pro/\">Easy Accordion Pro</a> pour acquérir 16 options premium de thèmes. Ce niveau offre une gamme beaucoup plus large d&rsquo;options de style et commence à partir de 29$.</p>\n<h3 id=\"wp-responsive-FAQ\">4. WP Responsive FAQ</h3>\n<div class=\"wp-caption alignnone\" style=\"max-width: 1539px\"><a href=\"https://wordpress.org/plugins/sp-faq/\" target=\"_blank\" rel=\"noopener noreferrer\"><img src=\"https://kinsta.com/fr/wp-content/uploads/sites/4/2019/08/extension-wp-responsive-faq.jpg\" alt=\"Extension WP Responsive FAQ\" width=\"1539\" height=\"495\" /></a><p class=\"wp-caption-text\">Extension WP Responsive FAQ</p></div>\n<p>Avec <a href=\"https://wearesocial.com/blog/2019/01/digital-2019-global-internet-use-accelerates\">l&rsquo;utilisation de l&rsquo;internet mobile à la hausse</a>, la réactivité est indispensable de nos jours. <a href=\"https://wordpress.org/plugins/sp-faq/\">WP Responsive FAQ</a> a fait de cette fonction une priorité avec sa conception de FAQ pliable. De plus, son système de code court unique vous permet d&rsquo;afficher exactement les bonnes questions dans des emplacements optimaux.</p>\n<p>D&rsquo;autres caractéristiques incluent :</p>\n<ul>\n<li>La possibilité de créer des FAQs individuelles comme vous créeriez des articles WordPress</li>\n<li>Paramètres des codes courts pour la personnalisation des affichages</li>\n<li>Catégories pour l&rsquo;organisation et l&rsquo;affichage de vos FAQs</li>\n<li>FAQ sur les produits WooCommerce (Premium uniquement)</li>\n</ul>\n<p>En plus d&rsquo;une meilleure intégration WooCommerce, <a href=\"https://www.wponlinesupport.com/wp-plugin/sp-responsive-wp-faq-with-category-plugin/\">la version premium</a> de cette extension inclut 15 paramètres supplémentaires de codes courts pour plus de flexibilité en matière de personnalisation. Vous pouvez acheter une licence à partir de 69$ par an.</p>\n<h3 id=\"knowledge\">5. Knowledge Base for Documents and FAQs</h3>\n<div class=\"wp-caption alignnone\" style=\"max-width: 1539px\"><a href=\"https://wordpress.org/plugins/echo-knowledge-base/\" target=\"_blank\" rel=\"noopener noreferrer\"><img src=\"https://kinsta.com/fr/wp-content/uploads/sites/4/2019/08/extension-knowledge-base-faqs.jpg\" alt=\"Extension Knowledge Base FAQs\" width=\"1539\" height=\"495\" /></a><p class=\"wp-caption-text\">Extension Knowledge Base FAQs</p></div>\n<p>Choisir une extension WordPress de FAQ peut être particulièrement difficile parce que beaucoup d&rsquo;entre elles sont similaires. L&rsquo;une des bonnes choses à propos de <a href=\"https://wordpress.org/plugins/echo-knowledge-base/\">Knowledge Base for Documents FAQs</a> est qu&rsquo;elle apporte quelque chose de différent. Au lieu de simplement créer une liste de FAQ de type accordéon, cette extension construit votre site et toute votre base de connaissances.</p>\n<p>Cela signifie que vous le pouvez :</p>\n<ul>\n<li>Intégrer des documents téléchargeables pour partager les guides de l&rsquo;utilisateur et d&rsquo;autres informations</li>\n<li>Permettre aux utilisateurs de rechercher dans vos documents et FAQs pour trouver exactement ce dont ils ont besoin.</li>\n<li>Styliser votre base de connaissances avec des thèmes prédéfinis</li>\n</ul>\n<p>Si une simple page de FAQ ne suffit pas, ou si vous voulez fournir des manuels détaillés pour vos produits, cette extension peut être plus efficace que beaucoup d&rsquo;autres sur cette liste. L’extension elle-même est gratuite, mais il y a plusieurs <a href=\"https://www.echoknowledgebase.com/wordpress-add-ons/\">modules payants</a> que vous pouvez utiliser pour l&rsquo;étendre. Les prix varient de 15 à 80$ par an.</p>\n<h3 id=\"html5-responsive-FAQ\">6. HTML5 Responsive FAQ</h3>\n<div class=\"wp-caption alignnone\" style=\"max-width: 1539px\"><a href=\"https://wordpress.org/plugins/html5-responsive-faq/\" target=\"_blank\" rel=\"noopener noreferrer\"><img src=\"https://kinsta.com/fr/wp-content/uploads/sites/4/2019/08/extension-html5-responsive-faq.jpg\" alt=\"Extension HTML5 Responsive FAQ\" width=\"1539\" height=\"495\" /></a><p class=\"wp-caption-text\">Extension HTML5 Responsive FAQ</p></div>\n<p>La dernière chose que vous voulez quand vous ajoutez une section FAQ à votre site, c&rsquo;est qu&rsquo;elle dépasse. Pouvoir intégrer cette fonctionnalité à votre thème et style WordPress actuel est indispensable si vous voulez que votre site reste d&rsquo;aspect professionnel.</p>\n<p><a href=\"https://wordpress.org/plugins/html5-responsive-faq/\">HTML5 Responsive FAQ</a> offre des fonctionnalités pour vous aider dans ce domaine, y compris :</p>\n<ul>\n<li>Personnalisation facile de la couleur, de la taille de police et d&rsquo;autres éléments pour correspondre à votre thème</li>\n<li>Options de tri personnalisées pour donner le contrôle aux utilisateurs</li>\n<li>Catégories de FAQ et titres de catégories personnalisés</li>\n<li>Codes courts pour incorporer les FAQs où vous le souhaitez</li>\n<li>Styles en accordéon pour des pages sans encombrement</li>\n</ul>\n<p>L&rsquo;utilisation de cette extension est totalement gratuite, aucune version premium n&rsquo;est disponible.</p>\n<h3 id=\"FAQ-by-10Web\">7. FAQ by 10Web</h3>\n<div class=\"wp-caption alignnone\" style=\"max-width: 1539px\"><a href=\"https://wordpress.org/plugins/faq-wd/\" target=\"_blank\" rel=\"noopener noreferrer\"><img src=\"https://kinsta.com/fr/wp-content/uploads/sites/4/2019/08/extension-faq-10web.jpg\" alt=\"Extension FAQ by 10Web\" width=\"1539\" height=\"495\" /></a><p class=\"wp-caption-text\">Extension FAQ by 10Web</p></div>\n<p>L&rsquo;inconvénient de fournir un soutien à la clientèle libre-service est qu&rsquo;il peut être plus difficile de déterminer si vos réponses sont efficaces. La prochaine extension sur notre liste, <a href=\"https://wordpress.org/plugins/faq-wd/\">FAQ by 10Web</a>, offre quelques fonctionnalités clés qui peuvent vous aider à résoudre ce problème.</p>\n<p>Vous pouvez :</p>\n<ul>\n<li>Incorporer un appel à action (CTA) de ressenti à la fin de chaque question, afin que les utilisateurs puissent en évaluer l&rsquo;utilité.</li>\n<li>Fournir une section de commentaires, afin que les utilisateurs puissent laisser des réponses à vos questions et réponses.</li>\n<li>Activer le partage social, qui permet aux visiteurs de diffuser votre contenu et d&rsquo;attirer plus de trafic sur votre site.</li>\n<li>Accéder à tous les éléments de base de l’extension de FAQ, y compris le style en accordéon, la réactivité mobile, la réorganisation en glisser-déposer, les catégories et la fonctionnalité de recherche.</li>\n</ul>\n<p>Vous obtiendrez tout cela avec la version gratuite de l’extension. Si vous choisissez de mettre à niveau vers <a href=\"https://web-dorado.com/products/wordpress-faq-wd.html\">une licence premium</a>, vous pourrez accéder à d&rsquo;autres options de support et de personnalisation via un système de thème. Les prix commencent à 20$ pour une licence de six mois.</p>\n<h3 id=\"spider-FAQ\">8. Spider FAQ</h3>\n<div class=\"wp-caption alignnone\" style=\"max-width: 1539px\"><a href=\"https://wordpress.org/plugins/spider-faq/\" target=\"_blank\" rel=\"noopener noreferrer\"><img src=\"https://kinsta.com/fr/wp-content/uploads/sites/4/2019/08/extension-spider-faq-1.jpg\" alt=\"Extension Spider FAQ\" width=\"1539\" height=\"495\" /></a><p class=\"wp-caption-text\">Extension Spider FAQ</p></div>\n<p>Parfois, quand il s&rsquo;agit d’extensions WordPress, le plus simple est préférable. <a href=\"https://wordpress.org/plugins/spider-faq/\">Spider FAQ</a> se concentre sur les fonctionnalités les plus importantes pour toute page de questions-réponses, y compris les catégories, la fonctionnalité de recherche et les sections repliables pour gagner de la place et améliorer l&rsquo;organisation.</p>  <div class=\"in-post-container\">\n  <div class=\"vertical newsletter-promo flip-container\">\n	<div class=\"flipper\">\n		<div class=\"front\">\n      <div style=\"width:100%\">\n        <div class=\"default\">\n					<div>\n	          <div class=\'title\'>Nous avons augmenté notre trafic de 1187 % avec WordPress.</br>Nous allons vous montrer comment.</div>\n	          <div class=\"subtitle text--small mt--10 mb--30\">Rejoignez plus de 20 000 autres personnes qui reçoivent notre bulletin hebdomadaire avec des conseils WordPress !</div>\n					</div>\n\n          <span class=\"button--purple\">S\'abonner </span>\n        </div>\n        <div class=\"success\">\n          <div class=\'title row nocol middle-xs\'>\n            <span class=\"mr--10\"></span>\n            <span>Bravo ! Merci pour votre abonnement</span>\n          </div>\n          <p style=\"margin-left:34px\" class=\"text--small\">Vous recevrez le prochain numéro de la Newsletter de Kinsta dans un délai d\'une semaine.</p>\n        </div>\n      </div>\n		</div>\n		<div class=\"back\">\n      <div style=\"width:100%\" class=\"kinsta-form--darkbg color--white\">\n        <div class=\'title\'>Abonnez-vous à la newsletter de Kinsta</div>\n        \n\n  <div class=\'row nocol xs-all-12-centered\'>\n    <div class=\'flex--1\'>\n  \n  \n  \n\n\n</div>\n    <button class=\'button--ghost--purple ml--10 ml--xs--0 mt--xs--10\'>Abonnez-vous</button>\n  </div>\n\n  <div style=\'margin-left:16px\'>\n    <div class=\'form-control mt--15 terms-checkbox\' data-state=\"neutral\">\n  <div class=\'control-container row nocol middle-xs\'>\n    <label class=\'checkbox-label row nocol\'>\n      <span class=\'checkbox mr--6\'>\n        \n        <span class=\'indicator\'></span>\n      </span>\n      <div class=\'text--normal\'>\n      Je suis d\'accord avec les <a class=\"unslidelink--text\" target=\"_blank\" href=\"https://kinsta.com/fr/conditions-generales-utilisation-service/\">Termes et Conditions</a> et la <a class=\"unslidelink--text\" target=\"_blank\" href=\"https://kinsta.com/fr/politique-vie-privee-et-droits-auteur/\">Politique de vie privée</a>      </div>\n    </label>\n  </div>\n</div>\n  </div>\n\n      </div>\n		</div>\n	</div>\n</div>\n  </div>\n  \n<p>Les caractéristiques uniques de cette extension incluent des boutons « J’aime/J’aime pas » pour recueillir le ressenti des utilisateurs et un vaste système de thèmes pour le style. Pour accéder aux thèmes intégrés, vous aurez besoin d&rsquo;une <a href=\"https://web-dorado.com/products/wordpress-faq-plugin.html\">licence premium</a>. Le prix commence à 20$ pour six mois.</p>\n<h3 id=\"quick\">9. Quick and Easy FAQs</h3>\n<div class=\"wp-caption alignnone\" style=\"max-width: 1539px\"><a href=\"https://wordpress.org/plugins/quick-and-easy-faqs/\" target=\"_blank\" rel=\"noopener noreferrer\"><img src=\"https://kinsta.com/fr/wp-content/uploads/sites/4/2019/08/extension-quick-easy-faqs.jpg\" alt=\"Extension Quick and Easy FAQs\" width=\"1539\" height=\"495\" /></a><p class=\"wp-caption-text\">Extension Quick and Easy FAQs</p></div>\n<p><a href=\"https://wordpress.org/plugins/quick-and-easy-faqs/\">Quick and Easy FAQs</a> propose un système de types de publications personnalisés et de codes courts, que vous pouvez utiliser pour ajouter et afficher vos questions et réponses. Comme beaucoup d&rsquo;autres extensions que nous avons explorés, elle offre un affichage filtrable, à bascule et en accordéon.</p>\n<p>De plus, vous n&rsquo;avez pas à vous inquiéter de vous ruiner avec cette extension. Pas de version premium disponible.</p>\n<h3 id=\"yith\">10. YITH WooCommerce Questions and Answers</h3>\n<div class=\"wp-caption alignnone\" style=\"max-width: 1539px\"><a href=\"https://wordpress.org/plugins/yith-woocommerce-questions-and-answers/\" target=\"_blank\" rel=\"noopener noreferrer\"><img src=\"https://kinsta.com/fr/wp-content/uploads/sites/4/2019/08/extension-yith-woocommerce-questions-answers.jpg\" alt=\"Extension YITH WooCommerce Questions and Answers\" width=\"1539\" height=\"495\" /></a><p class=\"wp-caption-text\">Extension YITH WooCommerce Questions and Answers</p></div>\n<p>&nbsp;</p>\n<p><a href=\"https://kinsta.com/fr/blog/tutoriel-woocommerce/\">Les propriétaires de boutiques WooCommerce</a> ont des besoins spécifiques lorsqu&rsquo;il s&rsquo;agit d&rsquo;ajouter des FAQs à leurs sites. Par exemple, il est important de pouvoir ajouter des questions et des réponses concernant des articles spécifiques et d&rsquo;afficher facilement les FAQs sur les pages des produits.</p>\n<p>Nous avons vu quelques différentes extensions qui peuvent accomplir ces tâches, mais <a href=\"https://wordpress.org/plugins/yith-woocommerce-questions-and-answers/\">YITH WooCommerce Questions</a> and Answers va plus loin. Avec cette extension, vous pouvez :</p>\n<ul>\n<li>Permettre aux utilisateurs de poser des questions et de répondre à des questions sur des éléments individuels</li>\n<li>Afficher les questions et les réponses des utilisateurs sur l&rsquo;interface publique, afin que les acheteurs potentiels puissent lire les ressentis.</li>\n<li>Limiter la création de questions à l&rsquo;administration de votre site pour que seuls les utilisateurs autorisés puissent les modifier.</li>\n</ul>\n<p>De cette façon, vous pouvez garder le contrôle de votre FAQ tout en impliquant davantage vos clients. Vous gagnerez du temps en répondant aux questions puisque d&rsquo;autres utilisateurs expérimentés peuvent y répondre. De plus, les réactions à vos questions et réponses peuvent fonctionner de la même façon que les évaluations de produits et convaincre les acheteurs potentiels de donner suite à leurs achats.</p>\n<p>Avec <a href=\"https://yithemes.com/themes/plugins/yith-woocommerce-questions-and-answers/\">la version premium</a> de cette extension, vous pouvez également permettre aux utilisateurs de voter pour ou contre les réponses, leur demander de se connecter ou de soumettre leur adresse e-mail afin de répondre, configurer des notifications par e-mail, etc. Les licences commencent à 69,99$ par an.</p>\n<h2 id=\"how\">Comment ajouter une section FAQ à votre site WordPress sans extension</h2>\n<p>Bien qu&rsquo;il existe de nombreuses extensions pratiques, la façon la plus simple de créer votre page de FAQ est parfois de la faire à la main. Cette méthode présente plusieurs avantages et inconvénients.</p>\n<p>L&rsquo;avantage principal est que vous ne devriez pas avoir à vous soucier du fait que votre section FAQ ne s&rsquo;intègre pas avec <a href=\"https://kinsta.com/fr/blog/modifier-theme-wordpress/\">votre thème WordPress actif</a>. La FAQ héritera simplement du style de votre site, comme n&rsquo;importe quelle autre page. Cependant, à moins que vous n&rsquo;ayez confiance en vos capacités de codage, vous passerez probablement à côté d&rsquo;options telles que la mise en page et les animations en accordéon.</p>\n<p>Si vous voulez garder les choses simples et penser que construire votre page à la main est l&rsquo;itinéraire pour vous, tout ce que vous avez à faire est de naviguer vers <em>Pages &gt; Ajouter dans </em>votre tableau de bord WordPress. Vous pouvez ensuite saisir et formater toutes vos questions et réponses, tout comme vous ajouteriez du contenu à n&rsquo;importe quel autre article ou page :</p>\n<div class=\"wp-caption alignnone\" style=\"max-width: 1999px\"><img src=\"https://kinsta.com/fr/wp-content/uploads/sites/4/2019/08/editeur-wordpress.png\" alt=\"Éditeur WordPress\" width=\"1999\" height=\"1089\" /><p class=\"wp-caption-text\">Éditeur WordPress</p></div>\n<p>Cependant, il <em>est</em> possible d&rsquo;améliorer ce processus en utilisant <a href=\"https://kinsta.com/fr/blog/editeur-wordpress-gutenberg/\">l&rsquo;éditeur de bloc</a>. Il existe plusieurs blocs qui peuvent vous aider à réaliser des mises en page impressionnantes, y compris le bloc<em> Colonnes :</em></p>\n<div class=\"wp-caption alignnone\" style=\"max-width: 1999px\"><img src=\"https://kinsta.com/fr/wp-content/uploads/sites/4/2019/08/editeur-blocs.png\" alt=\"Éditeur de blocs\" width=\"1999\" height=\"1126\" /><p class=\"wp-caption-text\">Éditeur de blocs</p></div>\n<p>Vous pouvez également envisager d&rsquo;utiliser des blocs<em> Citation</em>, <em>Tableau</em>, ou <em>Médias &amp; Texte</em>, afin d&rsquo;obtenir une page FAQ professionnelle et lisible.</p>\n\n<h2>Résumé</h2>\n<p>Bien qu&rsquo;offrir du support aux clients soit une façon intelligente de les fidéliser et même d&rsquo;augmenter vos revenus, vous ne voulez probablement pas passer toute votre journée à répondre aux questions. La mise en place d&rsquo;une section de FAQ (ou mieux encore d&rsquo;une section de <a href=\"https://kinsta.com/resources/\">Centre de ressources</a>) sur votre site WordPress peut aider vos clients à résoudre leurs propres problèmes.</p>\n<p>Les extensions WordPress de FAQ peuvent simplifier considérablement l&rsquo;assistance à vos clients. En plus des nombreux outils qui peuvent vous aider à créer une section FAQ de base repliable, vous pouvez incorporer des manuels et autres documents avec <a href=\"https://kinsta.com/fr/blog/plugins-faq-wordpress/\">Knowledge Base for Documents and FAQs</a>, ou engagez les clients de votre boutique avec <a href=\"https://kinsta.com/fr/blog/plugins-faq-wordpress/\">YITH WooCommerce Questions and Answers</a>.</p>\n<p>Avez-vous des questions sur la configuration de votre page FAQ WordPress ? Faites-le nous savoir dans la section commentaires ci-dessous !</p>\n<p>The post <a rel=\"nofollow\" href=\"https://kinsta.com/fr/blog/plugins-faq-wordpress/\">10 meilleurs plugins WordPress de FAQ (+ Comment créer manuellement une section FAQ)</a> appeared first on <a rel=\"nofollow\" href=\"https://kinsta.com/fr\">Hébergement WordPress infogéré Kinsta</a>.</p><img src=\"http://feeds.feedburner.com/~r/wpfr/~4/VFNJzljPz7U\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"https://kinsta.com/fr/blog/plugins-faq-wordpress/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:52:\"http://backend.userland.com/creativeCommonsRssModule\";a:1:{s:7:\"license\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"http://creativecommons.org/licenses/by-nc-sa/3.0/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:2:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";s:4:\"href\";s:32:\"http://feeds.feedburner.com/wpfr\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:3:\"rel\";s:3:\"hub\";s:4:\"href\";s:32:\"http://pubsubhubbub.appspot.com/\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:4:\"info\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:3:\"uri\";s:4:\"wpfr\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:11:{s:12:\"content-type\";s:23:\"text/xml; charset=UTF-8\";s:4:\"etag\";s:27:\"N8oLpEMaJVgDHxPj+cZrn7LbKac\";s:13:\"last-modified\";s:29:\"Wed, 16 Oct 2019 10:31:34 GMT\";s:16:\"content-encoding\";s:4:\"gzip\";s:4:\"date\";s:29:\"Wed, 16 Oct 2019 10:47:46 GMT\";s:7:\"expires\";s:29:\"Wed, 16 Oct 2019 10:47:46 GMT\";s:13:\"cache-control\";s:18:\"private, max-age=0\";s:22:\"x-content-type-options\";s:7:\"nosniff\";s:16:\"x-xss-protection\";s:13:\"1; mode=block\";s:6:\"server\";s:3:\"GSE\";s:7:\"alt-svc\";s:115:\"quic=\":443\"; ma=2592000; v=\"46,43\",h3-Q048=\":443\"; ma=2592000,h3-Q046=\":443\"; ma=2592000,h3-Q043=\":443\"; ma=2592000\";}}s:5:\"build\";s:14:\"20130911040210\";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(140, '_transient_timeout_feed_mod_76f8d9281c01f21e505004d0986f50c6', '1571266067', 'no'),
(141, '_transient_feed_mod_76f8d9281c01f21e505004d0986f50c6', '1571222867', 'no'),
(142, '_transient_timeout_dash_v2_bd94b8f41e74bae2f4dc72e9bd8379af', '1571266067', 'no'),
(143, '_transient_dash_v2_bd94b8f41e74bae2f4dc72e9bd8379af', '<div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'http://feedproxy.google.com/~r/WordpressFrancophone/~3/CmWTgxgCesc/\'>Les WordCamps en France</a></li></ul></div><div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'http://feedproxy.google.com/~r/wpfr/~3/VFNJzljPz7U/\'>10 meilleurs plugins WordPress de FAQ (+ Comment créer manuellement une section FAQ)</a></li><li><a class=\'rsswidget\' href=\'http://feedproxy.google.com/~r/wpfr/~3/czBmBAtM5_U/\'>3 Erreurs Courantes de WordPress et Comment les réparer</a></li><li><a class=\'rsswidget\' href=\'http://feedproxy.google.com/~r/wpfr/~3/5Pfpi5iNwjI/\'>WPS Hide Login : Changez votre URL de connexion WordPress</a></li></ul></div>', 'no'),
(147, '_site_transient_timeout_available_translations', '1571234444', 'no'),
(148, '_site_transient_available_translations', 'a:114:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-05-16 12:53:39\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.12/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-10-05 21:58:47\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.12/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.7/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-22 18:59:07\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-12 20:34:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-05-14 14:59:20\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.9.12/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-11-05 11:37:23\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:22:\"Продължение\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2017-10-01 12:57:10\";s:12:\"english_name\";s:20:\"Bengali (Bangladesh)\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.6/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:23:\"এগিয়ে চল.\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-05-16 08:03:06\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.12/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"མུ་མཐུད།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-06-12 06:34:37\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.12/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-03-13 02:38:14\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.12/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-07-02 05:02:53\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.12/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-03-19 09:40:25\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.12/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-04-02 13:26:35\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.12/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Forts&#230;t\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-04-04 14:01:41\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.12/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Fortfahren\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-03-20 12:44:05\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/translation/core/4.9.12/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Fortfahren\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-07-28 11:47:36\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Fortfahren\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-07-28 11:48:22\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/core/4.9.8/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-10-10 13:43:20\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.12/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-03-13 07:19:03\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.12/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-03-13 07:15:15\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.12/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-03-13 09:05:53\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.12/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-05-03 20:13:34\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.12/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-03-13 02:09:13\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.12/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-04-24 14:32:41\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.12/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-10-07 16:37:48\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.12/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-04-22 17:01:37\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.12/es_CL.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2018-11-15 16:32:57\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.12/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-05-23 02:23:28\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.12/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-03-21 23:58:09\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.12/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:5:\"4.9.9\";s:7:\"updated\";s:19:\"2019-03-02 06:27:10\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.9/es_GT.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CR\";a:8:{s:8:\"language\";s:5:\"es_CR\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-10-01 17:54:52\";s:12:\"english_name\";s:20:\"Spanish (Costa Rica)\";s:11:\"native_name\";s:22:\"Español de Costa Rica\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.3/es_CR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-09 09:36:22\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/es_PE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-04-24 21:10:09\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.12/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-11-19 14:11:29\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.2/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-12-09 21:12:23\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.2/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-04-07 02:18:08\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.12/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-03-19 08:17:42\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.12/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-07-28 14:50:34\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.12/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-01-31 11:16:06\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-03-13 07:18:23\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.12/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:3:\"fur\";a:8:{s:8:\"language\";s:3:\"fur\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2018-01-29 17:32:35\";s:12:\"english_name\";s:8:\"Friulian\";s:11:\"native_name\";s:8:\"Friulian\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.6/fur.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"fur\";i:3;s:3:\"fur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-03-13 08:20:40\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.12/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-14 12:33:48\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"ચાલુ રાખવું\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:5:\"4.4.2\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-07-09 19:18:21\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.12/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"להמשיך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:5:\"4.9.7\";s:7:\"updated\";s:19:\"2018-06-17 09:33:44\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.7/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"जारी\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-03-14 19:18:02\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.12/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2018-12-16 15:53:35\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.12/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Tovább\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-07-28 13:16:13\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:6:\"4.7.11\";s:7:\"updated\";s:19:\"2018-09-20 11:13:37\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.7.11/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-09-02 18:22:51\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.12/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-03-13 02:04:21\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.12/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"続ける\";}}s:5:\"jv_ID\";a:8:{s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-24 13:53:29\";s:12:\"english_name\";s:8:\"Javanese\";s:11:\"native_name\";s:9:\"Basa Jawa\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/jv_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"jv\";i:2;s:3:\"jav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nutugne\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:5:\"4.9.9\";s:7:\"updated\";s:19:\"2019-02-18 10:06:00\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.9/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-21 14:15:57\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.8/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:2:\"kk\";a:8:{s:8:\"language\";s:2:\"kk\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-12 08:08:32\";s:12:\"english_name\";s:6:\"Kazakh\";s:11:\"native_name\";s:19:\"Қазақ тілі\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.5/kk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kk\";i:2;s:3:\"kaz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Жалғастыру\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-07 02:07:59\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:2:\"kn\";a:8:{s:8:\"language\";s:2:\"kn\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-05-08 04:00:57\";s:12:\"english_name\";s:7:\"Kannada\";s:11:\"native_name\";s:15:\"ಕನ್ನಡ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.12/kn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kn\";i:2;s:3:\"kan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"ಮುಂದುವರೆಸಿ\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-04-13 15:03:57\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.12/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:5:\"4.9.9\";s:7:\"updated\";s:19:\"2018-12-18 14:32:44\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.9/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"ຕໍ່\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-08-27 09:34:16\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.12/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:6:\"4.7.15\";s:7:\"updated\";s:19:\"2019-05-10 10:24:08\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.15/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-01-26 15:54:41\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.7/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:43:32\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-12 07:29:35\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"Үргэлжлүүлэх\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:6:\"4.8.11\";s:7:\"updated\";s:19:\"2018-02-13 07:38:55\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.11/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-30 20:27:25\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-26 15:57:42\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.20/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ေဆာင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-05-01 11:10:49\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.12/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-27 10:30:26\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"जारीराख्नु \";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-09-30 06:37:02\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.12/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-03-13 05:36:09\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/translation/core/4.9.12/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-03-13 05:36:23\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.12/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-06-19 21:14:43\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.12/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.3/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:7:\"Punjabi\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-03-13 06:40:44\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.12/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-29 22:19:48\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.1.20/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"دوام\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-07-02 08:08:11\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.12/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-03-13 18:00:56\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.12/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-09 09:30:48\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Português (AO90)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/4.9.5/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-10-13 16:57:09\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.12/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-03-13 06:58:14\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.12/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-03-22 15:02:38\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.12/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2018-01-04 13:33:13\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Nadaljujte\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-09-05 08:31:30\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.12/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2018-12-19 11:12:50\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.12/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-03-23 10:08:08\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.12/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-03-27 04:30:57\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.12/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-30 02:38:08\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-03-17 21:22:26\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.12/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-12 12:31:53\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:16:\"ئۇيغۇرچە\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-10-03 17:08:48\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.12/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-03-21 08:17:35\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.12/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-10-11 06:46:15\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-03-25 02:35:54\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.12/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-10-15 13:54:32\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.12/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-07-28 01:29:47\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.12/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-09 00:56:52\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:16:\"香港中文版	\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}}', 'no'),
(149, 'new_admin_email', 'mailtrapmail@gmail.com', 'yes'),
(159, '_transient_is_multi_author', '0', 'yes'),
(164, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1571258400', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(165, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:\"stdClass\":100:{s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4630;}s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:3694;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2643;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2517;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:1941;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1765;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1754;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1473;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1452;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1448;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1438;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1386;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1361;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1295;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1156;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:1139;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1108;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1076;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:1050;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:955;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:862;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:849;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:844;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:817;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:759;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:750;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:736;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:735;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:729;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:708;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:705;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:688;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:682;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:677;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:671;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:657;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:637;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:632;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:624;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:624;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:610;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:601;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:577;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:577;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:564;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:564;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:560;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:545;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:537;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:536;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:530;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:527;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:521;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:520;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:516;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:516;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:506;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:485;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:483;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:482;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:481;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:480;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:461;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:459;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:452;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:446;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:431;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:424;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:419;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:418;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:417;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:415;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:411;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:406;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:403;}s:9:\"gutenberg\";a:3:{s:4:\"name\";s:9:\"gutenberg\";s:4:\"slug\";s:9:\"gutenberg\";s:5:\"count\";i:399;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:397;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:390;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:387;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:386;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:381;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:381;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:371;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:365;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:364;}s:14:\"contact-form-7\";a:3:{s:4:\"name\";s:14:\"contact form 7\";s:4:\"slug\";s:14:\"contact-form-7\";s:5:\"count\";i:360;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:359;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:359;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:352;}s:11:\"performance\";a:3:{s:4:\"name\";s:11:\"performance\";s:4:\"slug\";s:11:\"performance\";s:5:\"count\";i:349;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:348;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:337;}s:16:\"custom-post-type\";a:3:{s:4:\"name\";s:16:\"custom post type\";s:4:\"slug\";s:16:\"custom-post-type\";s:5:\"count\";i:329;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:328;}s:11:\"advertising\";a:3:{s:4:\"name\";s:11:\"advertising\";s:4:\"slug\";s:11:\"advertising\";s:5:\"count\";i:326;}s:16:\"google-analytics\";a:3:{s:4:\"name\";s:16:\"google analytics\";s:4:\"slug\";s:16:\"google-analytics\";s:5:\"count\";i:325;}s:6:\"simple\";a:3:{s:4:\"name\";s:6:\"simple\";s:4:\"slug\";s:6:\"simple\";s:5:\"count\";i:322;}s:4:\"html\";a:3:{s:4:\"name\";s:4:\"html\";s:4:\"slug\";s:4:\"html\";s:5:\"count\";i:318;}s:6:\"author\";a:3:{s:4:\"name\";s:6:\"author\";s:4:\"slug\";s:6:\"author\";s:5:\"count\";i:315;}s:5:\"cache\";a:3:{s:4:\"name\";s:5:\"cache\";s:4:\"slug\";s:5:\"cache\";s:5:\"count\";i:315;}}', 'no'),
(166, '_site_transient_timeout_theme_roots', '1571249404', 'no'),
(167, '_site_transient_theme_roots', 'a:3:{s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Structure de la table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_wp_attached_file', '2019/10/espresso.jpg'),
(4, 5, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:20:\"2019/10/espresso.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"espresso-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"espresso-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"espresso-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"espresso-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:20:\"espresso-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(5, 5, '_starter_content_theme', 'twentyseventeen'),
(6, 5, '_customize_draft_post_name', 'expresso'),
(7, 6, '_wp_attached_file', '2019/10/sandwich.jpg'),
(8, 6, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:20:\"2019/10/sandwich.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"sandwich-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"sandwich-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"sandwich-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"sandwich-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:20:\"sandwich-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(9, 6, '_starter_content_theme', 'twentyseventeen'),
(10, 6, '_customize_draft_post_name', 'sandwich'),
(11, 7, '_wp_attached_file', '2019/10/coffee.jpg'),
(12, 7, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:18:\"2019/10/coffee.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"coffee-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"coffee-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"coffee-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"coffee-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:18:\"coffee-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(13, 7, '_starter_content_theme', 'twentyseventeen'),
(14, 7, '_customize_draft_post_name', 'cafe'),
(15, 8, '_customize_draft_post_name', 'accueil'),
(16, 8, '_customize_changeset_uuid', '117fa5b9-5ea7-48b3-8cd4-4b62a8274ac1'),
(17, 9, '_thumbnail_id', '6'),
(18, 9, '_customize_draft_post_name', 'a-propos-de'),
(19, 9, '_customize_changeset_uuid', '117fa5b9-5ea7-48b3-8cd4-4b62a8274ac1'),
(20, 10, '_thumbnail_id', '5'),
(21, 10, '_customize_draft_post_name', 'contact'),
(22, 10, '_customize_changeset_uuid', '117fa5b9-5ea7-48b3-8cd4-4b62a8274ac1'),
(23, 11, '_thumbnail_id', '7'),
(24, 11, '_customize_draft_post_name', 'blog'),
(25, 11, '_customize_changeset_uuid', '117fa5b9-5ea7-48b3-8cd4-4b62a8274ac1'),
(26, 12, '_thumbnail_id', '5'),
(27, 12, '_customize_draft_post_name', 'une-section-de-page-daccueil'),
(28, 12, '_customize_changeset_uuid', '117fa5b9-5ea7-48b3-8cd4-4b62a8274ac1');

-- --------------------------------------------------------

--
-- Structure de la table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-10-16 12:47:21', '2019-10-16 10:47:21', 'Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous !', 'Bonjour tout le monde !', '', 'publish', 'open', 'open', '', 'bonjour-tout-le-monde', '', '', '2019-10-16 12:47:21', '2019-10-16 10:47:21', '', 0, 'http://localhost/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2019-10-16 12:47:21', '2019-10-16 10:47:21', 'Voici un exemple de page. Elle est différente d’un article de blog, en cela qu’elle restera à la même place, et s’affichera dans le menu de navigation de votre site (en fonction de votre thème). La plupart des gens commencent par écrire une page « À Propos » qui les présente aux visiteurs potentiels du site. Vous pourriez y écrire quelque chose de ce tenant :\n\n<blockquote>Bonjour ! Je suis un mécanicien qui aspire à devenir un acteur, et ceci est mon blog. J’habite à Bordeaux, j’ai un super chien qui s’appelle Russell, et j’aime la vodka-ananas (ainsi que perdre mon temps à regarder la pluie tomber).</blockquote>\n\n...ou bien quelque chose comme cela :\n\n<blockquote>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis cette année. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</blockquote>\n\nÉtant donné que vous êtes un nouvel utilisateur ou une nouvelle utilisatrice de WordPress, vous devriez vous rendre sur votre <a href=\"http://localhost/wordpress/wp-admin/\">tableau de bord</a> pour effacer la présente page, et créer de nouvelles pages avec votre propre contenu. Amusez-vous bien !', 'Page d’exemple', '', 'publish', 'closed', 'open', '', 'page-d-exemple', '', '', '2019-10-16 12:47:21', '2019-10-16 10:47:21', '', 0, 'http://localhost/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-10-16 12:47:21', '2019-10-16 10:47:21', '<h2>Qui sommes-nous ?</h2><p>L’adresse de notre site Web est : http://localhost/wordpress.</p><h2>Utilisation des données personnelles collectées</h2><h3>Commentaires</h3><p>Quand vous laissez un commentaire sur notre site web, les données inscrites dans le formulaire de commentaire, mais aussi votre adresse IP et l’agent utilisateur de votre navigateur sont collectés pour nous aider à la détection des commentaires indésirables.</p><p>Une chaîne anonymisée créée à partir de votre adresse de messagerie (également appelée hash) peut être envoyée au service Gravatar pour vérifier si vous utilisez ce dernier. Les clauses de confidentialité du service Gravatar sont disponibles ici : https://automattic.com/privacy/. Après validation de votre commentaire, votre photo de profil sera visible publiquement à coté de votre commentaire.</p><h3>Médias</h3><p>Si vous êtes un utilisateur ou une utilisatrice enregistré·e et que vous téléversez des images sur le site web, nous vous conseillons d’éviter de téléverser des images contenant des données EXIF de coordonnées GPS. Les visiteurs de votre site web peuvent télécharger et extraire des données de localisation depuis ces images.</p><h3>Formulaires de contact</h3><h3>Cookies</h3><p>Si vous déposez un commentaire sur notre site, il vous sera proposé d’enregistrer votre nom, adresse de messagerie et site web dans des cookies. C’est uniquement pour votre confort afin de ne pas avoir à saisir ces informations si vous déposez un autre commentaire plus tard. Ces cookies expirent au bout d’un an.</p><p>Si vous avez un compte et que vous vous connectez sur ce site, un cookie temporaire sera créé afin de déterminer si votre navigateur accepte les cookies. Il ne contient pas de données personnelles et sera supprimé automatiquement à la fermeture de votre navigateur.</p><p>Lorsque vous vous connecterez, nous mettrons en place un certain nombre de cookies pour enregistrer vos informations de connexion et vos préférences d’écran. La durée de vie d’un cookie de connexion est de deux jours, celle d’un cookie d’option d’écran est d’un an. Si vous cochez « Se souvenir de moi », votre cookie de connexion sera conservé pendant deux semaines. Si vous vous déconnectez de votre compte, le cookie de connexion sera effacé.</p><p>En modifiant ou en publiant une publication, un cookie supplémentaire sera enregistré dans votre navigateur. Ce cookie ne comprend aucune donnée personnelle. Il indique simplement l’ID de la publication que vous venez de modifier. Il expire au bout d’un jour.</p><h3>Contenu embarqué depuis d’autres sites</h3><p>Les articles de ce site peuvent inclure des contenus intégrés (par exemple des vidéos, images, articles…). Le contenu intégré depuis d’autres sites se comporte de la même manière que si le visiteur se rendait sur cet autre site.</p><p>Ces sites web pourraient collecter des données sur vous, utiliser des cookies, embarquer des outils de suivis tiers, suivre vos interactions avec ces contenus embarqués si vous disposez d’un compte connecté sur leur site web.</p><h3>Statistiques et mesures d’audience</h3><h2>Utilisation et transmission de vos données personnelles</h2><h2>Durées de stockage de vos données</h2><p>Si vous laissez un commentaire, le commentaire et ses métadonnées sont conservés indéfiniment. Cela permet de reconnaître et approuver automatiquement les commentaires suivants au lieu de les laisser dans la file de modération.</p><p>Pour les utilisateurs et utilisatrices qui s’enregistrent sur notre site (si cela est possible), nous stockons également les données personnelles indiquées dans leur profil. Tous les utilisateurs et utilisatrices peuvent voir, modifier ou supprimer leurs informations personnelles à tout moment (à l’exception de leur nom d’utilisateur·ice). Les gestionnaires du site peuvent aussi voir et modifier ces informations.</p><h2>Les droits que vous avez sur vos données</h2><p>Si vous avez un compte ou si vous avez laissé des commentaires sur le site, vous pouvez demander à recevoir un fichier contenant toutes les données personnelles que nous possédons à votre sujet, incluant celles que vous nous avez fournies. Vous pouvez également demander la suppression des données personnelles vous concernant. Cela ne prend pas en compte les données stockées à des fins administratives, légales ou pour des raisons de sécurité.</p><h2>Transmission de vos données personnelles</h2><p>Les commentaires des visiteurs peuvent être vérifiés à l’aide d’un service automatisé de détection des commentaires indésirables.</p><h2>Informations de contact</h2><h2>Informations supplémentaires</h2><h3>Comment nous protégeons vos données</h3><h3>Procédures mises en œuvre en cas de fuite de données</h3><h3>Les services tiers qui nous transmettent des données</h3><h3>Opérations de marketing automatisé et/ou de profilage réalisées à l’aide des données personnelles</h3><h3>Affichage des informations liées aux secteurs soumis à des régulations spécifiques</h3>', 'Politique de confidentialité', '', 'draft', 'closed', 'open', '', 'politique-de-confidentialite', '', '', '2019-10-16 12:47:21', '2019-10-16 10:47:21', '', 0, 'http://localhost/wordpress/?page_id=3', 0, 'page', '', 0),
(4, 1, '2019-10-16 12:47:43', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-10-16 12:47:43', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=4', 0, 'post', '', 0),
(5, 1, '2019-10-16 13:03:28', '0000-00-00 00:00:00', '', 'Expresso', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2019-10-16 13:03:24', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/wp-content/uploads/2019/10/espresso.jpg', 0, 'attachment', 'image/jpeg', 0),
(6, 1, '2019-10-16 13:03:28', '0000-00-00 00:00:00', '', 'Sandwich', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2019-10-16 13:03:25', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/wp-content/uploads/2019/10/sandwich.jpg', 0, 'attachment', 'image/jpeg', 0),
(7, 1, '2019-10-16 13:03:28', '0000-00-00 00:00:00', '', 'Café', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2019-10-16 13:03:26', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/wp-content/uploads/2019/10/coffee.jpg', 0, 'attachment', 'image/jpeg', 0),
(8, 1, '2019-10-16 13:03:28', '0000-00-00 00:00:00', 'Bienvenue sur votre site ! C’est votre page d’accueil que vos visiteurs verront lorsqu’ils arriveront sur votre site la première fois.', 'Accueil', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-16 13:03:26', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=8', 0, 'page', '', 0),
(9, 1, '2019-10-16 13:03:28', '0000-00-00 00:00:00', 'Vous pourriez être un artiste et vouloir présenter vos travaux et vous même ou encore être une entreprise avec une mission à promouvoir.', 'À propos de', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-16 13:03:27', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=9', 0, 'page', '', 0),
(10, 1, '2019-10-16 13:03:28', '0000-00-00 00:00:00', 'C’est une page avec des informations de contact de base, comme l’adresse et le numéro de téléphone. Vous pouvez aussi essayer une extension pour ajouter un formulaire de contact.', 'Contact', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-16 13:03:27', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=10', 0, 'page', '', 0),
(11, 1, '2019-10-16 13:03:28', '0000-00-00 00:00:00', '', 'Blog', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-16 13:03:27', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=11', 0, 'page', '', 0),
(12, 1, '2019-10-16 13:03:28', '0000-00-00 00:00:00', 'C’est un exemple de section de page d’accueil. Les sections de page d’accueil peuvent être n’importe quelle page autre que la page d’accueil elle-même, y compris la page qui affiche vos derniers articles de blog.', 'Une section de page d’accueil', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-16 13:03:27', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=12', 0, 'page', '', 0),
(13, 1, '2019-10-16 13:03:28', '0000-00-00 00:00:00', '{\n    \"widget_text[2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjE0OiJSZXRyb3V2ZXotbm91cyI7czo0OiJ0ZXh0IjtzOjE4OToiPHN0cm9uZz5BZHJlc3NlPC9zdHJvbmc+CkF2ZW51ZSBkZXMgQ2hhbXBzLcOJbHlzw6llcwo3NTAwOCwgUGFyaXMKCjxzdHJvbmc+SGV1cmVzIGTigJlvdXZlcnR1cmU8L3N0cm9uZz4KRHUgbHVuZGkgYXUgdmVuZHJlZGnCoDogOWgwMCZuZGFzaDsxN2gwMApMZXMgc2FtZWRpIGV0IGRpbWFuY2hlwqA6IDExaDAwJm5kYXNoOzE1aDAwIjtzOjY6ImZpbHRlciI7YjoxO3M6NjoidmlzdWFsIjtiOjE7fQ==\",\n            \"title\": \"Retrouvez-nous\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"5f80006ed7d1bdf7c404e60e0d486eec\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-10-16 11:03:28\"\n    },\n    \"widget_search[3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjU6InRpdGxlIjtzOjEwOiJSZWNoZXJjaGVyIjt9\",\n            \"title\": \"Rechercher\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"4d597e8d47ae88e188132cb3de70d090\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-10-16 11:03:28\"\n    },\n    \"widget_text[3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjIwOiLDgCBwcm9wb3MgZGUgY2Ugc2l0ZSI7czo0OiJ0ZXh0IjtzOjk5OiJD4oCZZXN0IHBldXQtw6p0cmUgbGUgYm9uIGVuZHJvaXQgcG91ciB2b3VzIHByw6lzZW50ZXIgZXQgdm90cmUgc2l0ZSBvdSBpbnPDqXJlciBxdWVscXVlcyBjcsOpZGl0cy4iO3M6NjoiZmlsdGVyIjtiOjE7czo2OiJ2aXN1YWwiO2I6MTt9\",\n            \"title\": \"\\u00c0 propos de ce site\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"86edd67b900d67653432d90e247dce70\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-10-16 11:03:28\"\n    },\n    \"sidebars_widgets[sidebar-1]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-2\",\n            \"search-3\",\n            \"text-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-10-16 11:03:28\"\n    },\n    \"widget_text[4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjE0OiJSZXRyb3V2ZXotbm91cyI7czo0OiJ0ZXh0IjtzOjE4OToiPHN0cm9uZz5BZHJlc3NlPC9zdHJvbmc+CkF2ZW51ZSBkZXMgQ2hhbXBzLcOJbHlzw6llcwo3NTAwOCwgUGFyaXMKCjxzdHJvbmc+SGV1cmVzIGTigJlvdXZlcnR1cmU8L3N0cm9uZz4KRHUgbHVuZGkgYXUgdmVuZHJlZGnCoDogOWgwMCZuZGFzaDsxN2gwMApMZXMgc2FtZWRpIGV0IGRpbWFuY2hlwqA6IDExaDAwJm5kYXNoOzE1aDAwIjtzOjY6ImZpbHRlciI7YjoxO3M6NjoidmlzdWFsIjtiOjE7fQ==\",\n            \"title\": \"Retrouvez-nous\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"5f80006ed7d1bdf7c404e60e0d486eec\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-10-16 11:03:28\"\n    },\n    \"sidebars_widgets[sidebar-2]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-4\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-10-16 11:03:28\"\n    },\n    \"widget_text[5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjIwOiLDgCBwcm9wb3MgZGUgY2Ugc2l0ZSI7czo0OiJ0ZXh0IjtzOjk5OiJD4oCZZXN0IHBldXQtw6p0cmUgbGUgYm9uIGVuZHJvaXQgcG91ciB2b3VzIHByw6lzZW50ZXIgZXQgdm90cmUgc2l0ZSBvdSBpbnPDqXJlciBxdWVscXVlcyBjcsOpZGl0cy4iO3M6NjoiZmlsdGVyIjtiOjE7czo2OiJ2aXN1YWwiO2I6MTt9\",\n            \"title\": \"\\u00c0 propos de ce site\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"86edd67b900d67653432d90e247dce70\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-10-16 11:03:28\"\n    },\n    \"widget_search[4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjU6InRpdGxlIjtzOjEwOiJSZWNoZXJjaGVyIjt9\",\n            \"title\": \"Rechercher\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"4d597e8d47ae88e188132cb3de70d090\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-10-16 11:03:28\"\n    },\n    \"sidebars_widgets[sidebar-3]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-5\",\n            \"search-4\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-10-16 11:03:28\"\n    },\n    \"nav_menus_created_posts\": {\n        \"starter_content\": true,\n        \"value\": [\n            5,\n            6,\n            7,\n            8,\n            9,\n            10,\n            11,\n            12\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-10-16 11:03:28\"\n    },\n    \"nav_menu[-1]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"Menu sup\\u00e9rieur\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-10-16 11:03:28\"\n    },\n    \"nav_menu_item[-1]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"custom\",\n            \"title\": \"Accueil\",\n            \"url\": \"http://localhost/wordpress/\",\n            \"position\": 0,\n            \"nav_menu_term_id\": -1,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-10-16 11:03:28\"\n    },\n    \"nav_menu_item[-2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 9,\n            \"position\": 1,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"\\u00c0 propos de\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-10-16 11:03:28\"\n    },\n    \"nav_menu_item[-3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 11,\n            \"position\": 2,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"Blog\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-10-16 11:03:28\"\n    },\n    \"nav_menu_item[-4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 10,\n            \"position\": 3,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"Contact\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-10-16 11:03:28\"\n    },\n    \"twentyseventeen::nav_menu_locations[top]\": {\n        \"starter_content\": true,\n        \"value\": -1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-10-16 11:03:28\"\n    },\n    \"nav_menu[-5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"Menu des liens de r\\u00e9seaux sociaux\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-10-16 11:03:28\"\n    },\n    \"nav_menu_item[-5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Yelp\",\n            \"url\": \"https://www.yelp.com\",\n            \"position\": 0,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-10-16 11:03:28\"\n    },\n    \"nav_menu_item[-6]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Facebook\",\n            \"url\": \"https://www.facebook.com/wordpress\",\n            \"position\": 1,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-10-16 11:03:28\"\n    },\n    \"nav_menu_item[-7]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Twitter\",\n            \"url\": \"https://twitter.com/wordpress\",\n            \"position\": 2,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-10-16 11:03:28\"\n    },\n    \"nav_menu_item[-8]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Instagram\",\n            \"url\": \"https://www.instagram.com/explore/tags/wordcamp/\",\n            \"position\": 3,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-10-16 11:03:28\"\n    },\n    \"nav_menu_item[-9]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"E-mail\",\n            \"url\": \"mailto:wordpress@example.com\",\n            \"position\": 4,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-10-16 11:03:28\"\n    },\n    \"twentyseventeen::nav_menu_locations[social]\": {\n        \"starter_content\": true,\n        \"value\": -5,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-10-16 11:03:28\"\n    },\n    \"show_on_front\": {\n        \"starter_content\": true,\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-10-16 11:03:28\"\n    },\n    \"page_on_front\": {\n        \"starter_content\": true,\n        \"value\": 8,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-10-16 11:03:28\"\n    },\n    \"page_for_posts\": {\n        \"starter_content\": true,\n        \"value\": 11,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-10-16 11:03:28\"\n    },\n    \"twentyseventeen::panel_1\": {\n        \"starter_content\": true,\n        \"value\": 12,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-10-16 11:03:28\"\n    },\n    \"twentyseventeen::panel_2\": {\n        \"starter_content\": true,\n        \"value\": 9,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-10-16 11:03:28\"\n    },\n    \"twentyseventeen::panel_3\": {\n        \"starter_content\": true,\n        \"value\": 11,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-10-16 11:03:28\"\n    },\n    \"twentyseventeen::panel_4\": {\n        \"starter_content\": true,\n        \"value\": 10,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-10-16 11:03:28\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '117fa5b9-5ea7-48b3-8cd4-4b62a8274ac1', '', '', '2019-10-16 13:03:28', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=13', 0, 'customize_changeset', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"38606ff77693909f98bf6753425d2e4c1fdcf2d003ec55989b792b05691e974d\";a:4:{s:10:\"expiration\";i:1571395662;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:105:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36\";s:5:\"login\";i:1571222862;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'wp_user-settings', 'mfold=o'),
(19, 1, 'wp_user-settings-time', '1571223804');

-- --------------------------------------------------------

--
-- Structure de la table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BEhI1XRKz84BLyRo81mijT/CXH830B.', 'admin', 'mailtrapmail@gmail.com', '', '2019-10-16 10:47:20', '', 0, 'admin');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Index pour la table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Index pour la table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Index pour la table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Index pour la table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Index pour la table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Index pour la table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Index pour la table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;

--
-- AUTO_INCREMENT pour la table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT pour la table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
