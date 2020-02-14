-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  ven. 14 fév. 2020 à 20:54
-- Version du serveur :  10.1.30-MariaDB
-- Version de PHP :  7.0.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `dev-restodujour-hanae`
--

-- --------------------------------------------------------

--
-- Structure de la table `abonnements`
--

CREATE TABLE `abonnements` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `restaurant_id` smallint(5) UNSIGNED NOT NULL,
  `compteFacturation_id` smallint(5) UNSIGNED NOT NULL,
  `subscriptionReference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subscriptionState` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `offerReference` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `features` varchar(10000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dateStart` datetime DEFAULT NULL,
  `dateCreation` datetime NOT NULL,
  `dateModification` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `abonnements`
--

INSERT INTO `abonnements` (`id`, `restaurant_id`, `compteFacturation_id`, `subscriptionReference`, `subscriptionState`, `offerReference`, `features`, `dateStart`, `dateCreation`, `dateModification`) VALUES
(1, 1, 1, '335657', 'Running', 'free', '[{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7749,\"refFeature\":\"inscription\",\"titleLocalized\":\"Inscription\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7748,\"refFeature\":\"menus_modification\",\"titleLocalized\":\"Modification et diffusion instantan\\u00e9e de votre menu du jour sur le site restodujour.com\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7747,\"refFeature\":\"adresse_affichage\",\"titleLocalized\":\"Diffusion du nom de votre restaurant et de votre adresse, lien avec le GPS mobile du client pour d\\u00e9clencher le guidage\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7745,\"refFeature\":\"menus_affichage_geo\",\"titleLocalized\":\"Diffusion de votre menu du jour en fonction des recherches g\\u00e9ographiques\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7744,\"refFeature\":\"ensavoirplus\",\"titleLocalized\":\"Bouton \'En savoir plus\' sur votre menu\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7743,\"refFeature\":\"envoyera\",\"titleLocalized\":\"Bouton \'Envoyer \\u00e0 ...\' sur votre menu\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7742,\"refFeature\":\"page_restaurant\",\"titleLocalized\":\"Page avec photo de pr\\u00e9sentation, adresse ...\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7741,\"refFeature\":\"carte_geoloc\",\"titleLocalized\":\"Carte de localisation\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":null,\"is_included\":null,\"typeFeature\":\"Consumption\",\"quantityIncluded\":0,\"quantityCurrent\":1,\"properties\":\"None\",\"id\":7746,\"refFeature\":\"traductions_menus\",\"titleLocalized\":\"Traductions menus\",\"descriptionLocalized\":null,\"is_visible\":true}]', '2019-07-10 15:00:07', '2019-07-10 17:00:22', '2019-07-18 13:12:42'),
(2, 2, 2, '335660', 'Running', 'premium_mensuel', '[{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7749,\"refFeature\":\"inscription\",\"titleLocalized\":\"Inscription\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7748,\"refFeature\":\"menus_modification\",\"titleLocalized\":\"Modification et diffusion instantan\\u00e9e de votre menu du jour sur le site restodujour.com\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7747,\"refFeature\":\"adresse_affichage\",\"titleLocalized\":\"Diffusion du nom de votre restaurant et de votre adresse, lien avec le GPS mobile du client pour d\\u00e9clencher le guidage\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7745,\"refFeature\":\"menus_affichage_geo\",\"titleLocalized\":\"Diffusion de votre menu du jour en fonction des recherches g\\u00e9ographiques\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7744,\"refFeature\":\"ensavoirplus\",\"titleLocalized\":\"Bouton \'En savoir plus\' sur votre menu\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7743,\"refFeature\":\"envoyera\",\"titleLocalized\":\"Bouton \'Envoyer \\u00e0 ...\' sur votre menu\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7742,\"refFeature\":\"page_restaurant\",\"titleLocalized\":\"Page avec photo de pr\\u00e9sentation, adresse ...\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7741,\"refFeature\":\"carte_geoloc\",\"titleLocalized\":\"Carte de localisation\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7740,\"refFeature\":\"btn_reserver_table\",\"titleLocalized\":\"Bouton \'R\\u00e9server ma table\' sur votre menu\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7739,\"refFeature\":\"menus_diffusion_facebook\",\"titleLocalized\":\"Diffusion automatique de votre menu du jour sur votre page Facebook\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7738,\"refFeature\":\"menus_diffusion_website\",\"titleLocalized\":\"Diffusion automatique de votre menu du jour sur votre site internet\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7737,\"refFeature\":\"menus_diffusion_tv\",\"titleLocalized\":\"Diffusion de votre menu du jour sur vos \\u00e9crans en salle\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7736,\"refFeature\":\"diaporamas_diffusion_tv\",\"titleLocalized\":\"Gestion et diffusion de votre diaporama sur vos \\u00e9crans en salle\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":null,\"is_included\":null,\"typeFeature\":\"Consumption\",\"quantityIncluded\":0,\"quantityCurrent\":0,\"properties\":\"None\",\"id\":7746,\"refFeature\":\"traductions_menus\",\"titleLocalized\":\"Traductions menus\",\"descriptionLocalized\":null,\"is_visible\":true}]', '2019-07-10 15:01:37', '2019-07-10 17:01:39', '2019-07-18 13:12:42'),
(3, 7, 3, '335661', 'Running', 'premium_mensuel', '[{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7749,\"refFeature\":\"inscription\",\"titleLocalized\":\"Inscription\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7748,\"refFeature\":\"menus_modification\",\"titleLocalized\":\"Modification et diffusion instantan\\u00e9e de votre menu du jour sur le site restodujour.com\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7747,\"refFeature\":\"adresse_affichage\",\"titleLocalized\":\"Diffusion du nom de votre restaurant et de votre adresse, lien avec le GPS mobile du client pour d\\u00e9clencher le guidage\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7745,\"refFeature\":\"menus_affichage_geo\",\"titleLocalized\":\"Diffusion de votre menu du jour en fonction des recherches g\\u00e9ographiques\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7744,\"refFeature\":\"ensavoirplus\",\"titleLocalized\":\"Bouton \'En savoir plus\' sur votre menu\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7743,\"refFeature\":\"envoyera\",\"titleLocalized\":\"Bouton \'Envoyer \\u00e0 ...\' sur votre menu\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7742,\"refFeature\":\"page_restaurant\",\"titleLocalized\":\"Page avec photo de pr\\u00e9sentation, adresse ...\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7741,\"refFeature\":\"carte_geoloc\",\"titleLocalized\":\"Carte de localisation\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7740,\"refFeature\":\"btn_reserver_table\",\"titleLocalized\":\"Bouton \'R\\u00e9server ma table\' sur votre menu\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7739,\"refFeature\":\"menus_diffusion_facebook\",\"titleLocalized\":\"Diffusion automatique de votre menu du jour sur votre page Facebook\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7738,\"refFeature\":\"menus_diffusion_website\",\"titleLocalized\":\"Diffusion automatique de votre menu du jour sur votre site internet\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7737,\"refFeature\":\"menus_diffusion_tv\",\"titleLocalized\":\"Diffusion de votre menu du jour sur vos \\u00e9crans en salle\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7736,\"refFeature\":\"diaporamas_diffusion_tv\",\"titleLocalized\":\"Gestion et diffusion de votre diaporama sur vos \\u00e9crans en salle\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":null,\"is_included\":null,\"typeFeature\":\"Consumption\",\"quantityIncluded\":0,\"quantityCurrent\":0,\"properties\":\"None\",\"id\":7746,\"refFeature\":\"traductions_menus\",\"titleLocalized\":\"Traductions menus\",\"descriptionLocalized\":null,\"is_visible\":true}]', '2019-07-10 15:02:21', '2019-07-10 17:02:24', '2019-07-18 13:12:42'),
(4, 14, 4, '335662', 'Running', 'free', '[{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7749,\"refFeature\":\"inscription\",\"titleLocalized\":\"Inscription\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7748,\"refFeature\":\"menus_modification\",\"titleLocalized\":\"Modification et diffusion instantan\\u00e9e de votre menu du jour sur le site restodujour.com\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7747,\"refFeature\":\"adresse_affichage\",\"titleLocalized\":\"Diffusion du nom de votre restaurant et de votre adresse, lien avec le GPS mobile du client pour d\\u00e9clencher le guidage\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7745,\"refFeature\":\"menus_affichage_geo\",\"titleLocalized\":\"Diffusion de votre menu du jour en fonction des recherches g\\u00e9ographiques\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7744,\"refFeature\":\"ensavoirplus\",\"titleLocalized\":\"Bouton \'En savoir plus\' sur votre menu\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7743,\"refFeature\":\"envoyera\",\"titleLocalized\":\"Bouton \'Envoyer \\u00e0 ...\' sur votre menu\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7742,\"refFeature\":\"page_restaurant\",\"titleLocalized\":\"Page avec photo de pr\\u00e9sentation, adresse ...\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7741,\"refFeature\":\"carte_geoloc\",\"titleLocalized\":\"Carte de localisation\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":null,\"is_included\":null,\"typeFeature\":\"Consumption\",\"quantityIncluded\":0,\"quantityCurrent\":0,\"properties\":\"None\",\"id\":7746,\"refFeature\":\"traductions_menus\",\"titleLocalized\":\"Traductions menus\",\"descriptionLocalized\":null,\"is_visible\":true}]', '2019-07-10 15:02:58', '2019-07-10 17:03:17', '2019-07-18 13:12:43'),
(5, 18, 7, '336823', 'Running', 'premium_mensuel', '[{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7749,\"refFeature\":\"inscription\",\"titleLocalized\":\"Inscription\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7748,\"refFeature\":\"menus_modification\",\"titleLocalized\":\"Modification et diffusion instantan\\u00e9e de votre menu du jour sur le site restodujour.com\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7747,\"refFeature\":\"adresse_affichage\",\"titleLocalized\":\"Diffusion du nom de votre restaurant et de votre adresse, lien avec le GPS mobile du client pour d\\u00e9clencher le guidage\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7745,\"refFeature\":\"menus_affichage_geo\",\"titleLocalized\":\"Diffusion de votre menu du jour en fonction des recherches g\\u00e9ographiques\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7744,\"refFeature\":\"ensavoirplus\",\"titleLocalized\":\"Bouton \'En savoir plus\' sur votre menu\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7743,\"refFeature\":\"envoyera\",\"titleLocalized\":\"Bouton \'Envoyer \\u00e0 ...\' sur votre menu\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7742,\"refFeature\":\"page_restaurant\",\"titleLocalized\":\"Page avec photo de pr\\u00e9sentation, adresse ...\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7741,\"refFeature\":\"carte_geoloc\",\"titleLocalized\":\"Carte de localisation\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7740,\"refFeature\":\"btn_reserver_table\",\"titleLocalized\":\"Bouton \'R\\u00e9server ma table\' sur votre menu\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7739,\"refFeature\":\"menus_diffusion_facebook\",\"titleLocalized\":\"Diffusion automatique de votre menu du jour sur votre page Facebook\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7738,\"refFeature\":\"menus_diffusion_website\",\"titleLocalized\":\"Diffusion automatique de votre menu du jour sur votre site internet\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7737,\"refFeature\":\"menus_diffusion_tv\",\"titleLocalized\":\"Diffusion de votre menu du jour sur vos \\u00e9crans en salle\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7736,\"refFeature\":\"diaporamas_diffusion_tv\",\"titleLocalized\":\"Gestion et diffusion de votre diaporama sur vos \\u00e9crans en salle\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":null,\"is_included\":null,\"typeFeature\":\"Consumption\",\"quantityIncluded\":0,\"quantityCurrent\":0,\"properties\":\"None\",\"id\":7746,\"refFeature\":\"traductions_menus\",\"titleLocalized\":\"Traductions menus\",\"descriptionLocalized\":null,\"is_visible\":true}]', '2019-07-18 10:59:32', '2019-07-10 17:03:57', '2019-07-18 17:06:28'),
(6, 19, 8, '335666', 'Running', 'premium_mensuel', '[{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7749,\"refFeature\":\"inscription\",\"titleLocalized\":\"Inscription\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7748,\"refFeature\":\"menus_modification\",\"titleLocalized\":\"Modification et diffusion instantan\\u00e9e de votre menu du jour sur le site restodujour.com\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7747,\"refFeature\":\"adresse_affichage\",\"titleLocalized\":\"Diffusion du nom de votre restaurant et de votre adresse, lien avec le GPS mobile du client pour d\\u00e9clencher le guidage\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7745,\"refFeature\":\"menus_affichage_geo\",\"titleLocalized\":\"Diffusion de votre menu du jour en fonction des recherches g\\u00e9ographiques\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7744,\"refFeature\":\"ensavoirplus\",\"titleLocalized\":\"Bouton \'En savoir plus\' sur votre menu\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7743,\"refFeature\":\"envoyera\",\"titleLocalized\":\"Bouton \'Envoyer \\u00e0 ...\' sur votre menu\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7742,\"refFeature\":\"page_restaurant\",\"titleLocalized\":\"Page avec photo de pr\\u00e9sentation, adresse ...\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7741,\"refFeature\":\"carte_geoloc\",\"titleLocalized\":\"Carte de localisation\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7740,\"refFeature\":\"btn_reserver_table\",\"titleLocalized\":\"Bouton \'R\\u00e9server ma table\' sur votre menu\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7739,\"refFeature\":\"menus_diffusion_facebook\",\"titleLocalized\":\"Diffusion automatique de votre menu du jour sur votre page Facebook\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7738,\"refFeature\":\"menus_diffusion_website\",\"titleLocalized\":\"Diffusion automatique de votre menu du jour sur votre site internet\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7737,\"refFeature\":\"menus_diffusion_tv\",\"titleLocalized\":\"Diffusion de votre menu du jour sur vos \\u00e9crans en salle\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7736,\"refFeature\":\"diaporamas_diffusion_tv\",\"titleLocalized\":\"Gestion et diffusion de votre diaporama sur vos \\u00e9crans en salle\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":null,\"is_included\":null,\"typeFeature\":\"Consumption\",\"quantityIncluded\":0,\"quantityCurrent\":0,\"properties\":\"None\",\"id\":7746,\"refFeature\":\"traductions_menus\",\"titleLocalized\":\"Traductions menus\",\"descriptionLocalized\":null,\"is_visible\":true}]', '2019-07-10 15:04:23', '2019-07-10 17:04:26', '2019-07-18 13:12:43'),
(7, 27, 12, '335960', 'Running', 'premium_mensuel', '[{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7749,\"refFeature\":\"inscription\",\"titleLocalized\":\"Inscription\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7748,\"refFeature\":\"menus_modification\",\"titleLocalized\":\"Modification et diffusion instantan\\u00e9e de votre menu du jour sur le site restodujour.com\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7747,\"refFeature\":\"adresse_affichage\",\"titleLocalized\":\"Diffusion du nom de votre restaurant et de votre adresse, lien avec le GPS mobile du client pour d\\u00e9clencher le guidage\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7745,\"refFeature\":\"menus_affichage_geo\",\"titleLocalized\":\"Diffusion de votre menu du jour en fonction des recherches g\\u00e9ographiques\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7744,\"refFeature\":\"ensavoirplus\",\"titleLocalized\":\"Bouton \'En savoir plus\' sur votre menu\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7743,\"refFeature\":\"envoyera\",\"titleLocalized\":\"Bouton \'Envoyer \\u00e0 ...\' sur votre menu\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7742,\"refFeature\":\"page_restaurant\",\"titleLocalized\":\"Page avec photo de pr\\u00e9sentation, adresse ...\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7741,\"refFeature\":\"carte_geoloc\",\"titleLocalized\":\"Carte de localisation\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7740,\"refFeature\":\"btn_reserver_table\",\"titleLocalized\":\"Bouton \'R\\u00e9server ma table\' sur votre menu\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7739,\"refFeature\":\"menus_diffusion_facebook\",\"titleLocalized\":\"Diffusion automatique de votre menu du jour sur votre page Facebook\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7738,\"refFeature\":\"menus_diffusion_website\",\"titleLocalized\":\"Diffusion automatique de votre menu du jour sur votre site internet\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7737,\"refFeature\":\"menus_diffusion_tv\",\"titleLocalized\":\"Diffusion de votre menu du jour sur vos \\u00e9crans en salle\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7736,\"refFeature\":\"diaporamas_diffusion_tv\",\"titleLocalized\":\"Gestion et diffusion de votre diaporama sur vos \\u00e9crans en salle\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":null,\"is_included\":null,\"typeFeature\":\"Consumption\",\"quantityIncluded\":0,\"quantityCurrent\":0,\"properties\":\"None\",\"id\":7746,\"refFeature\":\"traductions_menus\",\"titleLocalized\":\"Traductions menus\",\"descriptionLocalized\":null,\"is_visible\":true}]', '2019-07-12 11:20:44', '2019-07-12 13:20:49', '2019-07-18 13:12:43'),
(8, 26, 11, '336283', 'Running', 'free', '[{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7749,\"refFeature\":\"inscription\",\"titleLocalized\":\"Inscription\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7748,\"refFeature\":\"menus_modification\",\"titleLocalized\":\"Modification et diffusion instantan\\u00e9e de votre menu du jour sur le site restodujour.com\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7747,\"refFeature\":\"adresse_affichage\",\"titleLocalized\":\"Diffusion du nom de votre restaurant et de votre adresse, lien avec le GPS mobile du client pour d\\u00e9clencher le guidage\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7745,\"refFeature\":\"menus_affichage_geo\",\"titleLocalized\":\"Diffusion de votre menu du jour en fonction des recherches g\\u00e9ographiques\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7744,\"refFeature\":\"ensavoirplus\",\"titleLocalized\":\"Bouton \'En savoir plus\' sur votre menu\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7743,\"refFeature\":\"envoyera\",\"titleLocalized\":\"Bouton \'Envoyer \\u00e0 ...\' sur votre menu\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7742,\"refFeature\":\"page_restaurant\",\"titleLocalized\":\"Page avec photo de pr\\u00e9sentation, adresse ...\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7741,\"refFeature\":\"carte_geoloc\",\"titleLocalized\":\"Carte de localisation\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":null,\"is_included\":null,\"typeFeature\":\"Consumption\",\"quantityIncluded\":0,\"quantityCurrent\":0,\"properties\":\"None\",\"id\":7746,\"refFeature\":\"traductions_menus\",\"titleLocalized\":\"Traductions menus\",\"descriptionLocalized\":null,\"is_visible\":true}]', '2019-07-15 14:53:25', '2019-07-15 16:53:28', '2019-07-18 13:12:43'),
(9, 28, 13, '336284', 'Running', 'free', '[{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7749,\"refFeature\":\"inscription\",\"titleLocalized\":\"Inscription\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7748,\"refFeature\":\"menus_modification\",\"titleLocalized\":\"Modification et diffusion instantan\\u00e9e de votre menu du jour sur le site restodujour.com\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7747,\"refFeature\":\"adresse_affichage\",\"titleLocalized\":\"Diffusion du nom de votre restaurant et de votre adresse, lien avec le GPS mobile du client pour d\\u00e9clencher le guidage\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7745,\"refFeature\":\"menus_affichage_geo\",\"titleLocalized\":\"Diffusion de votre menu du jour en fonction des recherches g\\u00e9ographiques\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7744,\"refFeature\":\"ensavoirplus\",\"titleLocalized\":\"Bouton \'En savoir plus\' sur votre menu\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7743,\"refFeature\":\"envoyera\",\"titleLocalized\":\"Bouton \'Envoyer \\u00e0 ...\' sur votre menu\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7742,\"refFeature\":\"page_restaurant\",\"titleLocalized\":\"Page avec photo de pr\\u00e9sentation, adresse ...\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7741,\"refFeature\":\"carte_geoloc\",\"titleLocalized\":\"Carte de localisation\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":null,\"is_included\":null,\"typeFeature\":\"Consumption\",\"quantityIncluded\":0,\"quantityCurrent\":0,\"properties\":\"None\",\"id\":7746,\"refFeature\":\"traductions_menus\",\"titleLocalized\":\"Traductions menus\",\"descriptionLocalized\":null,\"is_visible\":true}]', '2019-07-15 14:53:37', '2019-07-15 16:53:47', '2019-07-18 13:12:44'),
(12, 56, 40, '348992', 'Running', 'free', '[{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7749,\"refFeature\":\"inscription\",\"titleLocalized\":\"Inscription\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7748,\"refFeature\":\"menus_modification\",\"titleLocalized\":\"Modification et diffusion instantan\\u00e9e de votre menu du jour sur le site restodujour.com\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7747,\"refFeature\":\"adresse_affichage\",\"titleLocalized\":\"Diffusion du nom de votre restaurant et de votre adresse, lien avec le GPS mobile du client pour d\\u00e9clencher le guidage\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7745,\"refFeature\":\"menus_affichage_geo\",\"titleLocalized\":\"Diffusion de votre menu du jour en fonction des recherches g\\u00e9ographiques\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7744,\"refFeature\":\"ensavoirplus\",\"titleLocalized\":\"Bouton \'En savoir plus\' sur votre menu\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7743,\"refFeature\":\"envoyera\",\"titleLocalized\":\"Bouton \'Envoyer \\u00e0 ...\' sur votre menu\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7742,\"refFeature\":\"page_restaurant\",\"titleLocalized\":\"Page avec photo de pr\\u00e9sentation, adresse ...\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7741,\"refFeature\":\"carte_geoloc\",\"titleLocalized\":\"Carte de localisation\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":null,\"is_included\":null,\"typeFeature\":\"Consumption\",\"quantityIncluded\":0,\"quantityCurrent\":0,\"properties\":\"None\",\"id\":7746,\"refFeature\":\"traductions_menus\",\"titleLocalized\":\"Traductions menus\",\"descriptionLocalized\":null,\"is_visible\":true}]', '2019-09-23 13:10:36', '2019-09-23 15:10:47', '2019-09-23 15:10:47'),
(20, 64, 48, '349046', 'Running', 'free', '[{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7749,\"refFeature\":\"inscription\",\"titleLocalized\":\"Inscription\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7748,\"refFeature\":\"menus_modification\",\"titleLocalized\":\"Modification et diffusion instantan\\u00e9e de votre menu du jour sur le site restodujour.com\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7747,\"refFeature\":\"adresse_affichage\",\"titleLocalized\":\"Diffusion du nom de votre restaurant et de votre adresse, lien avec le GPS mobile du client pour d\\u00e9clencher le guidage\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7745,\"refFeature\":\"menus_affichage_geo\",\"titleLocalized\":\"Diffusion de votre menu du jour en fonction des recherches g\\u00e9ographiques\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7744,\"refFeature\":\"ensavoirplus\",\"titleLocalized\":\"Bouton \'En savoir plus\' sur votre menu\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7743,\"refFeature\":\"envoyera\",\"titleLocalized\":\"Bouton \'Envoyer \\u00e0 ...\' sur votre menu\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7742,\"refFeature\":\"page_restaurant\",\"titleLocalized\":\"Page avec photo de pr\\u00e9sentation, adresse ...\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7741,\"refFeature\":\"carte_geoloc\",\"titleLocalized\":\"Carte de localisation\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":null,\"is_included\":null,\"typeFeature\":\"Consumption\",\"quantityIncluded\":0,\"quantityCurrent\":0,\"properties\":\"None\",\"id\":7746,\"refFeature\":\"traductions_menus\",\"titleLocalized\":\"Traductions menus\",\"descriptionLocalized\":null,\"is_visible\":true}]', '2019-09-23 15:33:47', '2019-09-23 17:33:57', '2019-09-23 17:33:57'),
(21, 65, 49, '349081', 'Running', 'free', '[{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7749,\"refFeature\":\"inscription\",\"titleLocalized\":\"Inscription\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7748,\"refFeature\":\"menus_modification\",\"titleLocalized\":\"Modification et diffusion instantan\\u00e9e de votre menu du jour sur le site restodujour.com\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7747,\"refFeature\":\"adresse_affichage\",\"titleLocalized\":\"Diffusion du nom de votre restaurant et de votre adresse, lien avec le GPS mobile du client pour d\\u00e9clencher le guidage\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7745,\"refFeature\":\"menus_affichage_geo\",\"titleLocalized\":\"Diffusion de votre menu du jour en fonction des recherches g\\u00e9ographiques\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7744,\"refFeature\":\"ensavoirplus\",\"titleLocalized\":\"Bouton \'En savoir plus\' sur votre menu\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7743,\"refFeature\":\"envoyera\",\"titleLocalized\":\"Bouton \'Envoyer \\u00e0 ...\' sur votre menu\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7742,\"refFeature\":\"page_restaurant\",\"titleLocalized\":\"Page avec photo de pr\\u00e9sentation, adresse ...\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":true,\"is_included\":true,\"typeFeature\":\"OnOff\",\"quantityIncluded\":null,\"quantityCurrent\":null,\"properties\":\"None\",\"id\":7741,\"refFeature\":\"carte_geoloc\",\"titleLocalized\":\"Carte de localisation\",\"descriptionLocalized\":null,\"is_visible\":true},{\"is_enabled\":null,\"is_included\":null,\"typeFeature\":\"Consumption\",\"quantityIncluded\":0,\"quantityCurrent\":0,\"properties\":\"None\",\"id\":7746,\"refFeature\":\"traductions_menus\",\"titleLocalized\":\"Traductions menus\",\"descriptionLocalized\":null,\"is_visible\":true}]', '2019-09-23 19:51:33', '2019-09-23 21:51:36', '2019-09-23 21:51:36');

-- --------------------------------------------------------

--
-- Structure de la table `abonnements_prix`
--

CREATE TABLE `abonnements_prix` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `abonnement_id` smallint(5) UNSIGNED NOT NULL,
  `montant` float UNSIGNED NOT NULL,
  `dateDebut` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `abonnements_prix`
--

INSERT INTO `abonnements_prix` (`id`, `abonnement_id`, `montant`, `dateDebut`) VALUES
(1, 1, 0, '2019-07-18 12:36:10'),
(2, 2, 0, '2019-07-18 12:36:10'),
(3, 3, 0, '2019-07-18 12:36:11'),
(4, 4, 0, '2019-07-18 12:36:11'),
(5, 5, 0, '2019-07-18 12:36:11'),
(6, 6, 0, '2019-07-18 12:36:11'),
(7, 7, 30, '2019-07-18 12:36:11'),
(8, 8, 0, '2019-07-18 12:36:11'),
(9, 9, 0, '2019-07-18 12:36:11'),
(10, 1, 0, '2019-07-18 13:12:42'),
(11, 2, 0, '2019-07-18 13:12:42'),
(12, 3, 0, '2019-07-18 13:12:42'),
(13, 4, 0, '2019-07-18 13:12:43'),
(14, 5, 30, '2019-07-18 13:12:43'),
(15, 6, 0, '2019-07-18 13:12:43'),
(16, 7, 30, '2019-07-18 13:12:43'),
(17, 8, 0, '2019-07-18 13:12:43'),
(18, 9, 0, '2019-07-18 13:12:44'),
(21, 12, 0, '2019-09-23 15:10:49'),
(29, 20, 0, '2019-09-23 17:33:57'),
(30, 21, 0, '2019-09-23 21:51:36');

-- --------------------------------------------------------

--
-- Structure de la table `affichagesdeportes_diaporamas`
--

CREATE TABLE `affichagesdeportes_diaporamas` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `restaurant_id` smallint(5) UNSIGNED NOT NULL,
  `nom` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `orientation` smallint(6) NOT NULL,
  `dateCreation` datetime NOT NULL,
  `dateModification` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `affichagesdeportes_diaporamas`
--

INSERT INTO `affichagesdeportes_diaporamas` (`id`, `restaurant_id`, `nom`, `orientation`, `dateCreation`, `dateModification`) VALUES
(35, 19, 'default_promocash_vendome', 0, '2019-06-05 12:49:15', '2019-06-05 12:49:15'),
(55, 1, 'Test2', 0, '2019-06-17 17:51:51', '2019-06-17 17:51:51'),
(61, 1, 'Test1', 0, '2019-06-17 18:01:04', '2019-06-17 18:01:04'),
(62, 1, 'demo3', 0, '2019-06-17 18:07:42', '2019-06-17 18:07:42'),
(65, 7, 'demoscolaire0', 0, '2019-06-18 11:10:43', '2019-06-18 11:10:43'),
(66, 2, 'capricorne0', 0, '2019-06-18 11:16:04', '2019-06-18 11:16:04'),
(69, 1, 'animaux', 0, '2019-06-21 15:16:03', '2019-06-21 15:16:03');

-- --------------------------------------------------------

--
-- Structure de la table `affichagesdeportes_diapositives`
--

CREATE TABLE `affichagesdeportes_diapositives` (
  `id` int(10) UNSIGNED NOT NULL,
  `ecran_id` int(10) UNSIGNED NOT NULL,
  `typeDiapositive_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint(3) UNSIGNED NOT NULL,
  `dateCreation` datetime NOT NULL,
  `dateModification` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `affichagesdeportes_diapositives`
--

INSERT INTO `affichagesdeportes_diapositives` (`id`, `ecran_id`, `typeDiapositive_id`, `position`, `dateCreation`, `dateModification`) VALUES
(213, 111, 'menu', 0, '2019-06-18 11:16:04', NULL),
(214, 111, 'img', 1, '2019-06-18 11:16:04', NULL),
(857, 443, 'menu', 0, '2019-06-25 17:55:24', NULL),
(858, 443, 'img', 1, '2019-06-25 17:55:24', NULL),
(859, 444, 'menu', 1, '2019-06-25 17:55:24', NULL),
(860, 444, 'img', 0, '2019-06-25 17:55:24', NULL),
(885, 457, 'img', 0, '2019-06-26 15:21:36', NULL),
(886, 457, 'img', 1, '2019-06-26 15:21:36', NULL),
(1052, 554, 'img', 0, '2019-06-28 17:40:39', NULL),
(1053, 554, 'img', 1, '2019-06-28 17:40:39', NULL),
(1054, 555, 'img', 0, '2019-06-28 17:40:39', NULL),
(1055, 555, 'img', 1, '2019-06-28 17:40:39', NULL),
(1061, 559, 'menu', 0, '2019-06-28 17:42:01', NULL),
(1062, 559, 'img', 1, '2019-06-28 17:42:01', NULL),
(1063, 560, 'menu', 1, '2019-06-28 17:42:01', NULL),
(1064, 560, 'img', 0, '2019-06-28 17:42:01', NULL),
(1073, 565, 'img', 0, '2019-07-23 11:13:58', NULL),
(1074, 565, 'img', 1, '2019-07-23 11:13:58', NULL),
(1075, 566, 'menu', 0, '2019-07-24 17:12:24', NULL),
(1076, 566, 'img', 1, '2019-07-24 17:12:24', NULL),
(1077, 567, 'menu', 1, '2019-07-24 17:12:24', NULL),
(1078, 567, 'img', 0, '2019-07-24 17:12:24', NULL),
(1079, 568, 'menu', 0, '2019-07-24 17:12:24', NULL),
(1080, 568, 'img', 1, '2019-07-24 17:12:24', NULL),
(1081, 569, 'menu', 1, '2019-07-24 17:12:24', NULL),
(1082, 569, 'img', 0, '2019-07-24 17:12:24', NULL),
(1083, 570, 'menu', 0, '2019-07-24 17:12:24', NULL),
(1084, 570, 'img', 1, '2019-07-24 17:12:24', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `affichagesdeportes_ecrans`
--

CREATE TABLE `affichagesdeportes_ecrans` (
  `id` int(10) UNSIGNED NOT NULL,
  `diaporama_id` mediumint(8) UNSIGNED NOT NULL,
  `temporisation` smallint(5) UNSIGNED NOT NULL,
  `ordre` tinyint(3) UNSIGNED NOT NULL,
  `typeEcran_id` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateCreation` datetime NOT NULL,
  `dateModification` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `affichagesdeportes_ecrans`
--

INSERT INTO `affichagesdeportes_ecrans` (`id`, `diaporama_id`, `temporisation`, `ordre`, `typeEcran_id`, `dateCreation`, `dateModification`) VALUES
(111, 66, 30, 0, '50-50-vertical', '2019-06-18 11:16:04', NULL),
(443, 62, 30, 0, '50-50-vertical', '2019-06-25 17:55:24', NULL),
(444, 62, 30, 1, '50-50-vertical', '2019-06-25 17:55:24', NULL),
(457, 69, 30, 0, '50-50-vertical', '2019-06-26 15:21:36', NULL),
(554, 55, 1264, 0, '50-50-vertical', '2019-06-28 17:40:39', NULL),
(555, 55, 1264, 1, '50-50-vertical', '2019-06-28 17:40:39', NULL),
(559, 61, 5, 0, '50-50-vertical', '2019-06-28 17:42:01', NULL),
(560, 61, 5, 1, '50-50-vertical', '2019-06-28 17:42:01', NULL),
(565, 65, 30, 0, '50-50-vertical', '2019-07-23 11:13:58', NULL),
(566, 35, 30, 0, '50-50-vertical', '2019-07-24 17:12:24', NULL),
(567, 35, 30, 1, '50-50-vertical', '2019-07-24 17:12:24', NULL),
(568, 35, 30, 2, '50-50-vertical', '2019-07-24 17:12:24', NULL),
(569, 35, 30, 3, '50-50-vertical', '2019-07-24 17:12:24', NULL),
(570, 35, 30, 4, '50-50-vertical', '2019-07-24 17:12:24', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `affichagesdeportes_join_diaporamas_typesdiaporamas`
--

CREATE TABLE `affichagesdeportes_join_diaporamas_typesdiaporamas` (
  `id` int(10) UNSIGNED NOT NULL,
  `diaporama_id` mediumint(8) UNSIGNED NOT NULL,
  `typeDiaporama_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `affichagesdeportes_join_diaporamas_typesdiaporamas`
--

INSERT INTO `affichagesdeportes_join_diaporamas_typesdiaporamas` (`id`, `diaporama_id`, `typeDiaporama_id`) VALUES
(48, 55, 'media-all-ecrans'),
(50, 61, 'menu-jour-all-ecrans'),
(53, 35, 'menu-jour-all-ecrans');

-- --------------------------------------------------------

--
-- Structure de la table `affichagesdeportes_join_diapositives_medias`
--

CREATE TABLE `affichagesdeportes_join_diapositives_medias` (
  `id` int(10) UNSIGNED NOT NULL,
  `diapositive_id` int(10) UNSIGNED NOT NULL,
  `media_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `affichagesdeportes_join_diapositives_medias`
--

INSERT INTO `affichagesdeportes_join_diapositives_medias` (`id`, `diapositive_id`, `media_id`) VALUES
(101, 214, 25),
(704, 858, 40),
(705, 860, 40),
(726, 885, 58),
(727, 886, 56),
(889, 1052, 51),
(890, 1053, 58),
(891, 1054, 56),
(892, 1055, 51),
(896, 1062, 51),
(897, 1064, 51),
(904, 1073, 30),
(905, 1074, 66),
(906, 1076, 89),
(907, 1078, 104),
(908, 1080, 103),
(909, 1082, 102),
(910, 1084, 101);

-- --------------------------------------------------------

--
-- Structure de la table `affichagesdeportes_typesdiaporamas`
--

CREATE TABLE `affichagesdeportes_typesdiaporamas` (
  `id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `commentaire` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateCreation` datetime NOT NULL,
  `dateModification` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `affichagesdeportes_typesdiaporamas`
--

INSERT INTO `affichagesdeportes_typesdiaporamas` (`id`, `commentaire`, `dateCreation`, `dateModification`) VALUES
('media-all-ecrans', 'Un même média est présent sur chaque écran', '2019-06-26 00:00:00', '2019-06-26 00:00:00'),
('menu-jour-all-ecrans', 'Le menu du jour est présent sur chaque écran', '2019-06-26 00:00:00', '2019-06-26 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `affichagesdeportes_typesdiapositives`
--

CREATE TABLE `affichagesdeportes_typesdiapositives` (
  `id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateCreation` datetime NOT NULL,
  `dateModification` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `affichagesdeportes_typesdiapositives`
--

INSERT INTO `affichagesdeportes_typesdiapositives` (`id`, `template`, `dateCreation`, `dateModification`) VALUES
('img', 'img.twig', '2019-05-23 00:00:00', '2019-05-23 00:00:00'),
('menu', 'menu.twig', '2019-05-23 00:00:00', '2019-05-23 00:00:00'),
('video', 'video.twig', '2019-06-05 00:00:00', '2019-06-05 00:00:00'),
('web', 'web.twig', '2019-05-23 00:00:00', '2019-05-23 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `affichagesdeportes_typesecrans`
--

CREATE TABLE `affichagesdeportes_typesecrans` (
  `id` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateCreation` datetime NOT NULL,
  `dateModification` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `affichagesdeportes_typesecrans`
--

INSERT INTO `affichagesdeportes_typesecrans` (`id`, `template`, `dateCreation`, `dateModification`) VALUES
('50-50-vertical', '50-50-vertical.twig', '2019-05-28 00:00:00', '2019-05-28 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `ambassadeurs`
--

CREATE TABLE `ambassadeurs` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `actif` tinyint(1) NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nom` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adresseComplete` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ville` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secteurGeographique` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dateCreation` datetime NOT NULL,
  `dateModification` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ambassadeurs`
--

INSERT INTO `ambassadeurs` (`id`, `code`, `actif`, `type`, `nom`, `email`, `password`, `telephone`, `adresseComplete`, `ville`, `secteurGeographique`, `notes`, `dateCreation`, `dateModification`) VALUES
(1, 'dev01', 1, 'test', 'Antonin BLAISE', 'antonin+2@tobook.club', 'password2', '0699355698', '51 rue du Mal de Rochambeau 41100 Vendôme', 'Vendôme', 'Loir-et-Cher', 'Test ambassadeur', '2019-07-11 13:11:51', NULL),
(2, 'test01', 1, 'test', 'Test recherAntoche test', 'test@test.com', 'password', '', '', '', '', 'test', '2019-07-11 17:42:55', NULL),
(3, 'dev02', 1, 'test', 'Test 2', 'antonin+1@tobook.club', 'password', '0123456789', 'test', 'Amboise', 'Touraine', 'test', '2019-07-15 16:51:20', NULL),
(4, 'dev03', 0, 'test type', 'Test 3', 'dev@tobook.club', 'password', '0123456789', 'test', 'Orléans', 'Loiret et Esssone', 'test', '2019-07-15 16:51:58', NULL),
(5, 'dev04', 1, 'test', 'Test 4', 'test2@test.com', 'password', '', '', 'Romorantin', 'Loir-et-Cher sud', 'test', '2019-07-15 16:52:53', NULL),
(7, 'test-email', 1, 'test', 'test', 'antonin@tobook.club', 'test', '', '', '', '', 'test', '2019-07-24 10:37:53', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `auth_tokens`
--

CREATE TABLE `auth_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `utilisateur_id` smallint(5) UNSIGNED NOT NULL,
  `repudiated` tinyint(4) NOT NULL DEFAULT '0',
  `dateCreation` datetime NOT NULL,
  `dateExpiration` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `auth_tokens`
--

INSERT INTO `auth_tokens` (`id`, `utilisateur_id`, `repudiated`, `dateCreation`, `dateExpiration`) VALUES
(1, 1, 0, '2019-06-18 13:54:50', '2019-06-18 13:54:50'),
(2, 1, 0, '2019-06-18 13:58:06', '2019-06-18 13:58:06'),
(3, 1, 0, '2019-06-18 13:58:24', '2019-06-18 13:58:24'),
(4, 1, 0, '2019-06-18 14:00:44', '2019-06-18 14:00:44'),
(5, 1, 0, '2019-06-18 14:01:37', '2019-06-18 14:01:37'),
(6, 1, 1, '2019-06-18 14:02:06', '2019-06-18 14:02:06'),
(7, 2, 1, '2019-06-18 14:15:24', '2019-06-18 14:15:24'),
(8, 2, 1, '2019-06-18 14:15:33', '2019-06-18 14:15:33'),
(10, 1, 1, '2019-06-19 15:17:34', '2019-06-19 15:17:34'),
(11, 1, 1, '2019-06-19 15:20:14', '2019-06-19 15:20:14'),
(16, 1, 0, '2019-06-21 11:22:35', '2019-06-21 11:52:35'),
(17, 1, 0, '2019-06-21 11:41:36', '2019-06-21 12:11:36'),
(18, 1, 0, '2019-06-21 12:08:38', '2019-06-21 12:38:38'),
(19, 1, 0, '2019-06-21 12:38:59', '2019-06-21 13:08:59'),
(20, 1, 0, '2019-06-21 12:51:20', '2019-06-21 13:21:20'),
(21, 1, 0, '2019-06-21 14:24:25', '2019-06-21 14:54:25'),
(22, 1, 0, '2019-06-21 15:04:13', '2019-06-21 15:34:13'),
(23, 1, 0, '2019-06-21 15:23:05', '2019-06-21 15:53:05'),
(24, 43, 1, '2019-06-24 10:12:15', '2019-06-24 10:42:15'),
(25, 2, 1, '2019-06-24 10:30:03', '2019-06-24 11:00:03'),
(26, 43, 0, '2019-06-24 11:27:15', '2019-06-24 11:57:15'),
(27, 1, 0, '2019-06-24 15:41:57', '2019-06-24 16:11:57'),
(28, 1, 1, '2019-06-24 16:20:19', '2019-06-24 16:50:19'),
(29, 1, 0, '2019-06-24 16:40:55', '2019-06-24 17:10:55'),
(30, 44, 1, '2019-06-24 16:51:12', '2019-06-24 17:21:12'),
(31, 1, 0, '2019-06-24 17:16:53', '2019-06-24 17:46:53'),
(32, 1, 1, '2019-06-24 17:50:27', '2019-06-24 18:20:27'),
(33, 8, 0, '2019-06-24 18:20:38', '2019-06-24 18:50:38'),
(34, 8, 0, '2019-06-24 18:21:14', '2019-06-24 18:51:14'),
(35, 1, 0, '2019-06-25 10:57:28', '2019-06-25 11:27:28'),
(36, 1, 0, '2019-06-25 11:15:30', '2019-06-25 11:45:30'),
(37, 1, 0, '2019-06-25 16:41:03', '2019-06-25 17:11:03'),
(38, 1, 1, '2019-06-25 17:28:02', '2019-06-25 17:58:02'),
(39, 1, 0, '2019-06-26 11:54:40', '2019-06-26 12:24:40'),
(40, 1, 0, '2019-06-26 12:40:02', '2019-06-26 13:10:02'),
(41, 1, 0, '2019-06-26 12:40:59', '2019-06-26 13:10:59'),
(42, 1, 0, '2019-06-26 14:36:14', '2019-06-26 15:06:14'),
(43, 1, 0, '2019-06-26 15:08:31', '2019-06-26 15:38:31'),
(44, 1, 0, '2019-06-26 15:38:39', '2019-06-26 16:08:39'),
(45, 1, 0, '2019-06-26 17:22:55', '2019-06-26 17:52:55'),
(46, 1, 0, '2019-06-26 17:58:32', '2019-06-26 18:28:32'),
(47, 1, 0, '2019-06-27 11:05:54', '2019-06-27 11:35:54'),
(48, 1, 0, '2019-06-27 11:36:01', '2019-06-27 12:06:01'),
(49, 1, 0, '2019-06-28 12:02:53', '2019-06-28 12:32:53'),
(50, 1, 0, '2019-06-28 12:35:39', '2019-06-28 13:05:39'),
(51, 1, 0, '2019-06-28 13:19:44', '2019-06-28 13:49:44'),
(52, 1, 0, '2019-06-28 13:58:22', '2019-06-28 14:28:22'),
(53, 1, 0, '2019-06-28 17:01:45', '2019-06-28 17:31:45'),
(54, 1, 0, '2019-06-28 17:34:05', '2019-06-28 18:04:05'),
(55, 1, 0, '2019-07-02 15:04:58', '2019-07-02 15:34:58'),
(56, 1, 0, '2019-07-02 15:38:56', '2019-07-02 16:08:56'),
(57, 1, 0, '2019-07-02 17:19:27', '2019-07-02 17:49:27'),
(58, 1, 0, '2019-07-03 11:58:44', '2019-07-03 12:28:44'),
(59, 45, 0, '2019-07-04 10:52:12', '2019-07-04 11:22:12'),
(60, 1, 0, '2019-07-04 10:53:42', '2019-07-04 11:23:42'),
(61, 45, 0, '2019-07-04 13:45:34', '2019-07-04 14:15:34'),
(62, 45, 0, '2019-07-04 13:48:31', '2019-07-04 14:18:31'),
(63, 45, 0, '2019-07-04 14:21:03', '2019-07-04 14:51:03'),
(64, 45, 0, '2019-07-04 14:37:13', '2019-07-04 15:07:13'),
(65, 45, 0, '2019-07-04 14:40:13', '2019-07-04 15:10:13'),
(66, 45, 0, '2019-07-04 15:05:05', '2019-07-04 15:35:05'),
(67, 45, 0, '2019-07-04 17:16:32', '2019-07-04 17:46:32'),
(68, 45, 0, '2019-07-04 18:18:35', '2019-07-04 18:48:35'),
(69, 1, 1, '2019-07-05 13:26:21', '2019-07-05 13:56:21'),
(70, 45, 0, '2019-07-05 13:27:40', '2019-07-05 13:57:40'),
(71, 45, 0, '2019-07-05 14:31:20', '2019-07-05 15:01:20'),
(72, 1, 0, '2019-07-05 17:57:42', '2019-07-05 18:27:42'),
(73, 2, 0, '2019-07-05 17:58:47', '2019-07-05 18:28:47'),
(74, 8, 0, '2019-07-05 17:59:35', '2019-07-05 18:29:35'),
(75, 8, 0, '2019-07-05 18:01:01', '2019-07-05 18:31:01'),
(76, 1, 0, '2019-07-05 18:06:41', '2019-07-05 18:36:41'),
(77, 8, 1, '2019-07-05 18:55:22', '2019-07-05 19:25:22'),
(78, 2, 1, '2019-07-05 18:55:37', '2019-07-05 19:25:37'),
(79, 1, 1, '2019-07-05 18:55:46', '2019-07-05 19:25:46'),
(80, 8, 1, '2019-07-05 19:07:14', '2019-07-05 19:37:14'),
(81, 1, 0, '2019-07-05 19:07:26', '2019-07-05 19:37:26'),
(82, 1, 0, '2019-07-06 22:29:33', '2019-07-06 22:59:33'),
(83, 1, 0, '2019-07-06 22:32:16', '2019-07-06 23:02:16'),
(84, 1, 0, '2019-07-06 22:34:48', '2019-07-06 23:04:48'),
(85, 1, 0, '2019-07-06 22:36:07', '2019-07-06 23:06:07'),
(86, 1, 0, '2019-07-08 10:18:45', '2019-07-08 10:48:45'),
(87, 1, 0, '2019-07-08 10:31:28', '2019-07-08 11:01:28'),
(88, 1, 0, '2019-07-08 11:16:52', '2019-07-08 11:46:52'),
(89, 1, 1, '2019-07-08 15:57:51', '2019-07-08 16:27:51'),
(90, 1, 0, '2019-07-08 16:13:37', '2019-07-08 16:43:37'),
(91, 1, 0, '2019-07-08 16:17:55', '2019-07-08 16:47:55'),
(92, 1, 0, '2019-07-08 16:49:45', '2019-07-08 17:19:45'),
(93, 1, 0, '2019-07-08 19:41:09', '2019-07-08 20:11:09'),
(94, 8, 0, '2019-07-09 10:33:33', '2019-07-09 11:03:33'),
(95, 1, 0, '2019-07-09 13:25:18', '2019-07-09 13:55:18'),
(96, 1, 0, '2019-07-10 16:58:46', '2019-07-10 17:28:46'),
(97, 1, 0, '2019-07-10 17:07:31', '2019-07-10 17:37:31'),
(98, 1, 0, '2019-07-12 12:03:13', '2019-07-12 12:33:13'),
(99, 1, 0, '2019-07-12 12:04:57', '2019-07-12 12:34:57'),
(100, 1, 0, '2019-07-12 12:35:24', '2019-07-12 13:05:24'),
(101, 1, 1, '2019-07-12 15:48:32', '2019-07-12 16:18:32'),
(102, 2, 0, '2019-07-12 16:04:05', '2019-07-12 16:34:05'),
(103, 1, 1, '2019-07-12 17:14:16', '2019-07-12 17:44:16'),
(104, 2, 0, '2019-07-12 17:17:57', '2019-07-12 17:47:57'),
(105, 1, 0, '2019-07-15 11:03:34', '2019-07-15 11:33:34'),
(106, 1, 0, '2019-07-15 11:16:00', '2019-07-15 11:46:00'),
(107, 1, 0, '2019-07-15 14:57:07', '2019-07-15 15:27:07'),
(108, 1, 0, '2019-07-15 15:27:16', '2019-07-15 15:57:16'),
(109, 8, 0, '2019-07-15 16:53:11', '2019-07-15 17:23:11'),
(110, 2, 0, '2019-07-16 13:20:08', '2019-07-16 13:50:08'),
(111, 1, 0, '2019-07-17 18:09:30', '2019-07-17 18:39:30'),
(112, 1, 0, '2019-07-18 17:30:30', '2019-07-18 18:00:30'),
(113, 2, 0, '2019-07-18 18:00:09', '2019-07-18 18:30:09'),
(114, 1, 0, '2019-07-19 10:24:31', '2019-07-19 10:54:31'),
(115, 1, 0, '2019-07-19 11:13:23', '2019-07-19 11:43:23'),
(116, 1, 0, '2019-07-19 11:49:28', '2019-07-19 12:19:28'),
(117, 1, 0, '2019-07-19 15:15:02', '2019-07-19 15:45:02'),
(118, 1, 0, '2019-07-19 16:29:06', '2019-07-19 16:59:06'),
(119, 1, 0, '2019-07-19 17:00:53', '2019-07-19 17:30:53'),
(120, 2, 0, '2019-07-21 07:51:28', '2019-07-21 08:21:28'),
(121, 1, 0, '2019-07-22 11:04:50', '2019-07-22 11:34:50'),
(122, 1, 0, '2019-07-22 13:49:48', '2019-07-22 14:19:48'),
(123, 2, 0, '2019-07-23 11:13:27', '2019-07-23 11:43:27'),
(124, 2, 1, '2019-07-24 12:44:31', '2019-07-24 13:14:31'),
(125, 1, 0, '2019-07-24 12:44:51', '2019-07-24 13:14:51'),
(126, 1, 0, '2019-07-24 15:17:47', '2019-07-24 15:47:47'),
(127, 1, 0, '2019-07-24 16:28:50', '2019-07-24 16:58:50'),
(128, 1, 0, '2019-07-24 16:59:23', '2019-07-24 17:29:23'),
(129, 1, 0, '2019-07-24 17:10:52', '2019-07-24 17:40:52'),
(130, 1, 0, '2019-07-24 17:45:32', '2019-07-24 18:15:32'),
(131, 1, 1, '2019-07-25 15:42:57', '2019-07-25 16:12:57'),
(132, 1, 0, '2019-07-25 15:55:21', '2019-07-25 16:25:21'),
(133, 1, 1, '2019-07-26 11:33:47', '2019-07-26 12:03:47'),
(134, 8, 1, '2019-07-26 11:52:00', '2019-07-26 12:22:00'),
(135, 2, 0, '2019-07-26 11:53:00', '2019-07-26 12:23:00'),
(136, 1, 0, '2019-07-26 12:31:04', '2019-07-26 13:01:04'),
(137, 1, 0, '2019-07-26 13:07:22', '2019-07-26 13:37:22'),
(138, 2, 0, '2019-09-14 21:57:03', '2019-09-14 22:27:03'),
(139, 2, 0, '2019-09-14 22:12:37', '2019-09-14 22:42:37'),
(140, 1, 0, '2019-09-15 16:52:57', '2019-09-15 17:22:57'),
(141, 46, 0, '2019-09-22 21:55:29', '2019-09-22 22:25:29'),
(142, 47, 0, '2019-09-22 22:04:20', '2019-09-22 22:34:20'),
(143, 47, 0, '2019-09-22 22:28:26', '2019-09-22 22:58:26'),
(144, 47, 0, '2019-09-22 23:06:35', '2019-09-22 23:36:35'),
(145, 48, 0, '2019-09-22 23:58:11', '2019-09-23 00:28:11'),
(146, 48, 0, '2019-09-23 00:58:12', '2019-09-23 01:28:12'),
(147, 48, 0, '2019-09-23 01:30:47', '2019-09-23 02:00:47'),
(148, 48, 0, '2019-09-23 11:22:14', '2019-09-23 11:52:14'),
(149, 48, 0, '2019-09-23 11:55:41', '2019-09-23 12:25:41'),
(150, 48, 0, '2019-09-23 12:28:22', '2019-09-23 12:58:22'),
(151, 48, 0, '2019-09-23 13:01:35', '2019-09-23 13:31:35'),
(152, 48, 0, '2019-09-23 14:37:21', '2019-09-23 15:07:21'),
(153, 49, 0, '2019-09-23 15:08:29', '2019-09-23 15:38:29'),
(154, 48, 0, '2019-09-23 15:34:15', '2019-09-23 16:04:15'),
(155, 48, 0, '2019-09-23 16:42:08', '2019-09-23 17:12:08'),
(156, 48, 0, '2019-09-23 17:16:32', '2019-09-23 17:46:32'),
(157, 50, 0, '2019-09-23 21:50:13', '2019-09-23 22:20:13'),
(158, 48, 0, '2019-09-23 22:39:41', '2019-09-23 23:09:41'),
(159, 2, 0, '2019-09-29 23:32:06', '2019-09-30 00:02:06'),
(160, 48, 0, '2019-10-17 16:49:13', '2019-10-17 17:19:13'),
(161, 48, 0, '2019-10-18 01:08:02', '2019-10-18 01:38:02');

-- --------------------------------------------------------

--
-- Structure de la table `changepasswordresquests`
--

CREATE TABLE `changepasswordresquests` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `utilisateur_id` smallint(5) UNSIGNED NOT NULL,
  `hash` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateCreation` datetime NOT NULL,
  `dateTraitement` datetime DEFAULT NULL,
  `dateExpiration` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `changepasswordresquests`
--

INSERT INTO `changepasswordresquests` (`id`, `utilisateur_id`, `hash`, `dateCreation`, `dateTraitement`, `dateExpiration`) VALUES
(4, 8, 'bd371e2ff6a6c9f551fe', '2019-06-20 12:17:53', '2019-06-20 13:01:41', '2019-06-20 12:47:53'),
(5, 8, '89f505537d3e586e064b', '2019-06-20 13:24:45', '2019-06-20 16:54:54', '2019-07-27 13:54:45'),
(6, 43, '5497efc79741350830ed', '2019-06-24 11:20:00', '2019-06-24 11:26:15', '2019-06-24 11:50:00'),
(7, 8, 'b9b8a54b9cb57be2528e', '2019-06-24 18:15:40', NULL, '2019-06-24 18:45:40'),
(8, 8, '77bbde736c5525099bc2', '2019-06-24 18:18:27', NULL, '2019-06-24 18:48:27'),
(9, 8, '7ab891551b915dc20192', '2019-06-24 18:19:13', '2019-06-24 18:20:38', '2019-06-24 18:49:13'),
(10, 8, '961e1bb46fbe003d0ef6', '2019-06-24 18:20:33', '2019-06-24 18:21:14', '2019-06-24 18:50:33'),
(11, 8, 'aa4d0b3c22942d04e7d1', '2019-06-24 18:24:54', NULL, '2019-06-24 18:54:54'),
(12, 8, '33a5040cf6d10ed6d862', '2019-06-25 18:23:32', NULL, '2019-06-25 18:53:32');

-- --------------------------------------------------------

--
-- Structure de la table `comptesfacturation`
--

CREATE TABLE `comptesfacturation` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `utilisateur_id` smallint(5) UNSIGNED NOT NULL,
  `customerReference` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dateCreation` datetime NOT NULL,
  `dateModification` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `comptesfacturation`
--

INSERT INTO `comptesfacturation` (`id`, `utilisateur_id`, `customerReference`, `dateCreation`, `dateModification`) VALUES
(1, 8, 'R1900100213', '2019-07-09 13:31:54', NULL),
(2, 2, 'R1900200176', '2019-07-10 16:57:56', NULL),
(3, 8, 'R1900300276', '2019-07-10 16:57:57', NULL),
(4, 34, 'R1900400870', '2019-07-10 16:57:58', NULL),
(5, 35, 'R1900500291', '2019-07-10 16:57:58', NULL),
(6, 35, 'R1900600986', '2019-07-10 16:57:59', NULL),
(7, 36, 'R1900700941', '2019-07-10 16:57:59', NULL),
(8, 1, 'R1900800607', '2019-07-10 16:57:59', NULL),
(9, 44, 'R1900900680', '2019-07-10 16:57:59', NULL),
(10, 45, 'R1901000414', '2019-07-10 16:58:00', NULL),
(11, 8, 'R1901100313', '2019-07-10 16:58:00', NULL),
(12, 8, 'R1901200408', '2019-07-10 16:58:00', NULL),
(13, 8, 'R1901300174', '2019-07-10 16:58:01', NULL),
(14, 46, 'R1901400358', '2019-09-22 21:55:52', NULL),
(15, 47, 'R1901500409', '2019-09-22 22:04:46', NULL),
(40, 49, 'R1904000734', '2019-09-23 15:09:20', NULL),
(48, 48, 'R1904800643', '2019-09-23 17:32:25', NULL),
(49, 50, 'R1904900122', '2019-09-23 21:50:57', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `geo_villes`
--

CREATE TABLE `geo_villes` (
  `id` int(10) UNSIGNED NOT NULL,
  `nom` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` decimal(10,8) NOT NULL,
  `longitude` decimal(11,8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `geo_villes`
--

INSERT INTO `geo_villes` (`id`, `nom`, `latitude`, `longitude`) VALUES
(1, 'Vendôme', '47.79227000', '1.06478000');

-- --------------------------------------------------------

--
-- Structure de la table `horairesouverture`
--

CREATE TABLE `horairesouverture` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `restaurant_id` smallint(5) UNSIGNED NOT NULL,
  `dateModification` datetime NOT NULL,
  `lundiMidi` tinyint(1) NOT NULL DEFAULT '1',
  `lundiSoir` tinyint(1) NOT NULL DEFAULT '1',
  `mardiMidi` tinyint(1) NOT NULL DEFAULT '1',
  `mardiSoir` tinyint(1) NOT NULL DEFAULT '1',
  `mercrediMidi` tinyint(1) NOT NULL DEFAULT '1',
  `mercrediSoir` tinyint(1) NOT NULL DEFAULT '1',
  `jeudiMidi` tinyint(1) NOT NULL DEFAULT '1',
  `jeudiSoir` tinyint(1) NOT NULL DEFAULT '1',
  `vendrediMidi` tinyint(1) NOT NULL DEFAULT '1',
  `vendrediSoir` tinyint(1) NOT NULL DEFAULT '1',
  `samediMidi` tinyint(1) NOT NULL DEFAULT '1',
  `samediSoir` tinyint(1) NOT NULL DEFAULT '1',
  `dimancheMidi` tinyint(1) NOT NULL DEFAULT '1',
  `dimancheSoir` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `horairesouverture`
--

INSERT INTO `horairesouverture` (`id`, `restaurant_id`, `dateModification`, `lundiMidi`, `lundiSoir`, `mardiMidi`, `mardiSoir`, `mercrediMidi`, `mercrediSoir`, `jeudiMidi`, `jeudiSoir`, `vendrediMidi`, `vendrediSoir`, `samediMidi`, `samediSoir`, `dimancheMidi`, `dimancheSoir`) VALUES
(3, 1, '2019-07-26 11:49:57', 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0),
(4, 24, '2019-06-24 17:00:07', 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 1, 0, 0, 0),
(5, 2, '2019-06-25 11:49:45', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(6, 7, '2019-07-15 16:56:33', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(7, 14, '2019-06-25 11:49:45', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(8, 15, '2019-06-25 11:49:45', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(9, 17, '2019-06-25 11:49:45', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(10, 18, '2019-06-25 11:49:45', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(11, 19, '2019-06-25 11:49:45', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(12, 25, '2019-07-04 14:43:47', 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 0, 0),
(13, 26, '2019-07-15 16:56:49', 1, 1, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 1),
(14, 27, '2019-07-09 10:35:05', 1, 0, 0, 1, 0, 0, 1, 1, 1, 0, 0, 0, 1, 1),
(15, 28, '2019-07-09 10:35:32', 1, 1, 0, 1, 0, 0, 1, 1, 1, 0, 0, 0, 1, 1),
(16, 29, '2019-09-22 21:55:52', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(17, 30, '2019-09-22 22:04:46', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(43, 56, '2019-09-23 15:09:20', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(51, 64, '2019-09-23 17:32:25', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(52, 65, '2019-09-23 21:50:57', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `join_restaurants_utilisateurs`
--

CREATE TABLE `join_restaurants_utilisateurs` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `restaurants_id` smallint(5) UNSIGNED NOT NULL,
  `utilisateurs_id` smallint(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `join_restaurants_utilisateurs`
--

INSERT INTO `join_restaurants_utilisateurs` (`id`, `restaurants_id`, `utilisateurs_id`) VALUES
(1, 1, 1),
(17, 1, 8),
(15, 7, 2),
(18, 7, 37),
(9, 14, 34),
(10, 17, 35),
(11, 18, 36),
(20, 24, 44),
(24, 25, 45),
(28, 29, 46),
(29, 30, 47),
(55, 56, 49),
(63, 64, 48),
(64, 65, 50),
(65, 96, 52),
(66, 97, 58),
(67, 98, 59),
(69, 100, 60),
(70, 101, 61),
(71, 102, 62),
(72, 103, 63);

-- --------------------------------------------------------

--
-- Structure de la table `join_utilisateursroles_utilisateurs`
--

CREATE TABLE `join_utilisateursroles_utilisateurs` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `utilisateurs_id` smallint(5) UNSIGNED NOT NULL,
  `utilisateursRoles_id` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `join_utilisateursroles_utilisateurs`
--

INSERT INTO `join_utilisateursroles_utilisateurs` (`id`, `utilisateurs_id`, `utilisateursRoles_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(10, 8, 1),
(6, 34, 1),
(7, 35, 1),
(8, 36, 2),
(16, 43, 1),
(17, 44, 1),
(18, 45, 1),
(19, 46, 1),
(20, 47, 1),
(21, 48, 1),
(22, 49, 1),
(23, 50, 1),
(24, 51, 2),
(25, 52, 1),
(26, 53, 1),
(27, 54, 1),
(28, 55, 2),
(29, 56, 1),
(30, 57, 2),
(31, 58, 1),
(32, 59, 1),
(33, 60, 1),
(34, 61, 1),
(35, 62, 1),
(36, 63, 1);

-- --------------------------------------------------------

--
-- Structure de la table `medias`
--

CREATE TABLE `medias` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `restaurant_id` smallint(5) UNSIGNED NOT NULL,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filename` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateCreation` datetime NOT NULL,
  `dateModification` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `medias`
--

INSERT INTO `medias` (`id`, `restaurant_id`, `type`, `filename`, `dateCreation`, `dateModification`) VALUES
(25, 2, 'img', 'lecop.jpg', '2019-05-16 16:08:29', NULL),
(30, 7, 'img', 'obontacos.jfif', '2019-05-16 16:53:21', NULL),
(58, 1, 'img', 'id_1.jpg', '2019-06-11 14:59:55', NULL),
(90, 19, 'img', 'id19.jpg', '2019-07-24 17:12:17', NULL),
(105, 14, 'img', 'id_pizaa.jfif\r\n', '0000-00-00 00:00:00', NULL),
(106, 18, 'img', 'id_18.jfif', '0000-00-00 00:00:00', NULL),
(108, 29, 'img', 'id_29.jfif', '0000-00-00 00:00:00', NULL),
(109, 28, 'img', 'id28.jpg', '0000-00-00 00:00:00', NULL),
(110, 65, 'img', 'id65.jfif', '0000-00-00 00:00:00', NULL),
(111, 64, 'img', 'id64.jfif\r\n', '0000-00-00 00:00:00', NULL),
(112, 56, 'img', 'id56.jfif', '0000-00-00 00:00:00', NULL),
(113, 27, 'img', 'id27.jfif', '0000-00-00 00:00:00', NULL),
(114, 24, 'img', 'id24.jfif', '0000-00-00 00:00:00', NULL),
(115, 15, 'img', 'id15.jpg', '0000-00-00 00:00:00', NULL),
(116, 26, 'img', 'id26.jfif', '0000-00-00 00:00:00', NULL),
(117, 30, 'img', 'id30.jfif', '0000-00-00 00:00:00', NULL),
(118, 25, 'img', 'id25.jfif\r\n', '0000-00-00 00:00:00', NULL),
(119, 25, 'img', 'id25.jfif', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `menusdujour`
--

CREATE TABLE `menusdujour` (
  `id` mediumint(5) UNSIGNED NOT NULL,
  `restaurant_id` smallint(5) UNSIGNED NOT NULL,
  `prixEPD` float DEFAULT NULL,
  `diffuseFacebook` tinyint(1) DEFAULT NULL,
  `dateCreation` datetime NOT NULL,
  `entree1` varchar(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `entree2` varchar(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `entree3` varchar(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `plat1` varchar(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `plat2` varchar(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `plat3` varchar(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dessert1` varchar(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dessert2` varchar(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dessert3` varchar(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `menusdujour`
--

INSERT INTO `menusdujour` (`id`, `restaurant_id`, `prixEPD`, `diffuseFacebook`, `dateCreation`, `entree1`, `entree2`, `entree3`, `plat1`, `plat2`, `plat3`, `dessert1`, `dessert2`, `dessert3`) VALUES
(4, 14, 23.5, 0, '2019-02-07 10:49:44', 'Salade de gesiers', 'Aumônier chèvre et chorizo', '23re', 'Tête de Veau sauce ravigote', 'Pavé de rumsteak', 'démo', 'Tarte citron meringuee', 'démo', 'zer'),
(5, 15, 24, 0, '2019-02-07 10:50:56', 'Terrine de campagne', 'Oeuf mayonnaise', '23re', 'Conflit de canard', 'filet de merlu sauce citron', 'démo', 'Tiramisu maison', 'Mousse chocolat nor', 'zer'),
(7, 18, 19.5, 0, '2019-02-07 10:52:02', 'Vol au vent d\'hiver', 'Omelette aux truffes_', '', 'Poularde demi-deuil', 'Homard à l\'armoricaine', '', 'Charlotte aux fraises', 'Bombe d\'agrumes et chocolat noir', ''),
(11, 27, 16.9, 0, '2019-02-07 14:27:09', 'Vol au vent des montagnes', 'Omelette aux truffes', '', 'Poularde demi-deuil', 'Homard à l\'armoricaine', '', 'Charlotte aux fraises', 'Bombe d\'agrumes et chocolat noir', ''),
(12, 29, 17.7, 0, '2019-02-07 14:27:20', 'Vol au vent des montagnes', 'Omelette aux truffes', 'test', 'Poularde demi-deuil', 'Homard à l\'armoricaine', '', 'Charlotte aux fraises', 'Bombe d\'agrumes et chocolat noir', ''),
(14, 65, 23.9, 0, '2019-02-07 14:27:47', 'Vol au vent des montagnes', 'Omelette aux truffes', '', 'Poularde demi-deuil', 'Homard à l\'armoricaine', '', 'Charlotte aux fraises', 'Bombe d\'agrumes et chocolat noir', ''),
(15, 25, 25.7, 0, '2019-02-07 14:27:50', 'Vol au vent des montagnes', 'Omelette aux truffes', 'test', 'Poularde demi-deuil', 'Homard à l\'armoricaine', '', 'Charlotte aux fraises', 'Bombe d\'agrumes et chocolat noir', ''),
(16, 64, 23.5, 0, '2019-02-07 16:24:34', 'Vol au vent des montagnes', 'Omelette aux truffes', 'test', 'Poularde demi-deuil', 'Homard à l\'armoricaine', '', 'Charlotte aux fraises', 'Bombe d\'agrumes et chocolat noir', ''),
(69, 100, NULL, NULL, '0000-00-00 00:00:00', '', '', '', '', '', '', '', '', ''),
(212, 17, 20, 1, '2019-03-28 14:45:34', 'Salade de crudités', 'Assiette de charcuterie', '', 'Pavé de bœuf sauce forestière', 'Filet de julienne à la crème de homard, riz et légumes', '', 'Assiette gourmande', 'Moelleux au chocolat', ''),
(266, 26, 23.6, NULL, '2019-04-12 10:17:28', 'Salade nordique au saumon fumé et légumes. ', 'Velouté d’asperges et écume de panais fumée. ', 'Velouté d’asperges et écume de panais fumée. ', 'Bavette de bœuf, sauce forestière. ', '', 'Blanquette de la mer aux saumons et églefin.  ', 'Assiette gourmande. ', '', 'Riz au lait aux fruits frais. '),
(267, 28, 22.5, NULL, '2019-04-12 12:58:34', 'Salade de champignons farcis aux herbes. ', '', 'Velouté d’asperges et écume de panais fumée. ', 'Bavette de bœuf, sauce forestière. ', '', 'Dos de julienne et crème de crustacés, riz et légumes du moment. ', 'Fraises Melba. ', '', 'Panna-cotta aux fruits frais. '),
(268, 30, 22.5, NULL, '2019-04-13 12:11:19', 'Mousseline de poissons maison. ', '', 'Salade landaise. ', 'Bavette de bœuf, sauce forestière. ', '', 'Dos de julienne et crème de crustacés, riz et légumes du moment. ', 'Fraises Melba. ', '', 'Panna-cotta aux fruits frais. '),
(270, 24, 23.6, NULL, '2019-04-15 12:02:14', 'Mousseline de poissons maison aux asperges, écume de crustacés. ', '', 'Velouté de légumes du jour. ', 'Tendron de veau, à l’ananas. ', '', 'Dos de julienne et crème de crustacés, riz et légumes du moment. ', 'Moelleux au chocolat, glace vanille et chantilly. ', '', 'Profiteroles, glace vanille, sauce chocolat chaud et chantilly. '),
(271, 56, 25.7, NULL, '2019-04-15 12:02:16', 'Mousseline de poissons maison aux asperges, écume de crustacés. ', '', 'Velouté de légumes du jour. ', 'Tendron de veau, à l’ananas. ', '', 'Dos de julienne et crème de crustacés, riz et légumes du moment. ', 'Moelleux au chocolat, glace vanille et chantilly. ', '', 'Profiteroles, glace vanille, sauce chocolat chaud et chantilly. '),
(272, 2, 23.5, NULL, '2019-04-15 12:02:16', 'Mousseline de poissons maison aux asperges, écume de crustacés. ', '', 'Velouté de légumes du jour. ', 'Tendron de veau, à l’ananas. ', '', 'Dos de julienne et crème de crustacés, riz et légumes du moment. ', 'Moelleux au chocolat, glace vanille et chantilly. ', '', 'Profiteroles, glace vanille, sauce chocolat chaud et chantilly. '),
(279, 7, 22.5, 1, '2019-04-16 09:06:02', 'Endives au jambon', '', '', 'Frites steak haché', 'Poulet à l\'armoricaine', '', 'Salade de fruits jolis jolie joli', '', ''),
(560, 1, 25, NULL, '2019-05-13 16:09:55', 'Velouté', '', '', 'Frites', '', '', 'Tarte au chocolat', '', ''),
(562, 101, NULL, NULL, '0000-00-00 00:00:00', '', '', '', '', '', '', '', '', ''),
(563, 102, NULL, NULL, '0000-00-00 00:00:00', 'nguyen', '', '', 'nguyen', '', '', 'nguyen dep qua', '', ''),
(564, 103, NULL, NULL, '0000-00-00 00:00:00', 'nguyen', '', '', 'Nguyen', '', '', 'Nguyen', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `menusdujourtraductions`
--

CREATE TABLE `menusdujourtraductions` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` mediumint(8) UNSIGNED NOT NULL,
  `locale` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateCreation` datetime NOT NULL,
  `dateTraitement` datetime DEFAULT NULL,
  `entree1` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entree2` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entree3` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plat1` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plat2` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plat3` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dessert1` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dessert2` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dessert3` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `menusdujourtraductions`
--

INSERT INTO `menusdujourtraductions` (`id`, `menu_id`, `locale`, `dateCreation`, `dateTraitement`, `entree1`, `entree2`, `entree3`, `plat1`, `plat2`, `plat3`, `dessert1`, `dessert2`, `dessert3`) VALUES
(1, 560, 'en', '2019-05-13 16:09:55', '2019-05-13 16:26:44', 'Velvety', '', '', 'French Fries', '', '', 'Chocolate pie', '', ''),
(2, 562, 'en', '2019-05-15 10:56:48', '2019-05-15 11:58:31', 'salmon unilaterally', 'mimosa eggs', '', 'Périgord salad', '', '', 'Strawberry pie', '', ''),
(3, 562, 'it', '2019-05-15 10:56:48', '2019-05-15 11:58:32', 'salmone unilateralmente', 'uova di mimosa', '', 'Insalata del Périgord', '', '', 'Torta di fragole', '', ''),
(4, 564, 'en', '2019-05-17 13:02:44', '2019-05-17 13:11:14', 'salmon unilaterally', 'mimosa eggs', '', 'Périgord salad', 'Tournedos with foie gras', '', 'Strawberry pie', '', ''),
(5, 565, 'en', '2019-05-17 13:33:15', '2019-05-17 13:34:02', '', '', '', '', '', '', 'Strawberry pie', '', ''),
(6, 566, 'en', '2019-05-17 13:34:10', '2019-05-17 13:35:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 567, 'en', '2019-05-17 13:34:36', '2019-05-17 13:35:02', '', '', '', '', '', '', 'Strawberry pie', '', ''),
(8, 568, 'en', '2019-05-17 13:35:18', '2019-05-17 13:36:02', '', '', '', '', '', '', 'Strawberry pie', '', ''),
(9, 569, 'en', '2019-05-17 13:37:04', '2019-05-17 13:38:01', '', '', '', '', '', '', 'Strawberry pie', '', ''),
(10, 570, 'en', '2019-05-17 13:47:25', '2019-05-17 13:47:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 571, 'en', '2019-05-17 13:48:49', '2019-05-17 13:48:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 572, 'en', '2019-05-17 13:51:54', '2019-05-17 13:51:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 573, 'en', '2019-05-17 13:52:30', '2019-05-17 13:52:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 574, 'en', '2019-05-17 13:52:52', '2019-05-17 13:53:01', '', '', '', '', '', '', 'Strawberry pie', '', ''),
(15, 577, 'en', '2019-05-17 17:55:08', '2019-05-17 17:56:02', '', '', '', '', '', '', 'Strawberry pie', '', ''),
(16, 587, 'en', '2019-06-05 11:59:16', '2019-06-05 12:00:02', '', '', '', '', '', '', 'Strawberry pie', '', ''),
(17, 588, 'pl', '2019-06-05 15:21:45', '2019-06-05 15:45:02', 'Sałatka oceaniczna', 'Foie gras z morrillas.', '', 'Pork filet mignon', 'Łosoś z sosem béarnaise', '', 'mus czekoladowy', 'Rhubarb Pie', ''),
(18, 589, 'en', '2019-06-07 10:31:39', '2019-06-07 10:32:01', '', '', '', '', '', '', 'Strawberry pie', '', ''),
(19, 589, 'pl', '2019-06-07 10:31:39', '2019-06-07 10:32:03', '', '', '', '', '', '', 'Ciasto truskawkowe', '', ''),
(20, 590, 'es', '2019-06-07 11:50:36', '2019-06-07 11:51:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 591, 'en', '2019-06-07 11:50:45', '2019-06-07 11:51:02', '', '', '', '', '', '', 'Strawberry pie', '', ''),
(22, 592, 'en', '2019-06-07 11:51:05', '2019-06-07 11:52:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 593, 'en', '2019-06-07 11:51:44', '2019-06-07 11:52:02', '', '', '', '', '', '', 'Strawberry pie', '', ''),
(24, 594, 'en', '2019-06-07 11:52:29', '2019-06-07 11:53:02', '', '', '', '', '', '', 'Strawberry pie', '', ''),
(25, 595, 'en', '2019-06-07 11:58:51', '2019-06-07 11:59:02', '', '', '', '', '', '', 'Strawberry pie', '', ''),
(26, 596, 'en', '2019-06-07 11:59:03', '2019-06-07 12:00:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 597, 'en', '2019-06-07 11:59:09', '2019-06-07 12:00:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 598, 'en', '2019-06-07 11:59:42', '2019-06-07 12:00:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 599, 'en', '2019-06-07 11:59:55', '2019-06-07 12:00:03', '', '', '', '', '', '', 'Strawberry pie', '', ''),
(30, 600, 'en', '2019-06-07 12:04:13', '2019-06-07 12:05:02', '', '', '', '', '', '', 'Strawberry pie', '', ''),
(31, 602, 'ru', '2019-06-07 13:08:40', '2019-06-07 13:09:01', 'Вход 1', 'Вход 2', 'Вход 3', 'Блюдо 1', 'Блюдо 2', 'Блюдо 3', 'Клубничный пирог', 'Десерт 2', 'Десерт3'),
(32, 603, 'pt', '2019-06-07 15:26:39', '2019-06-07 15:27:02', 'Entrada 1', 'Entrada 2', 'Entrada 3', 'Prato 1', 'Prato 2', 'Prato 3', 'Tarte de morango', 'Sobremesa 2', 'Sobremesa3'),
(33, 604, 'de', '2019-06-07 16:06:33', '2019-06-07 16:07:01', 'Eingang 1', 'Eingang 2', 'Eingang 3', 'Gericht 1', 'Gericht 2', 'Gericht 3', 'Erdbeerkuchen', 'Dessert 2', 'Dessert3'),
(34, 605, 'en', '2019-06-07 16:09:58', '2019-06-07 16:10:01', 'Input 1', 'Input 2', 'Input 3', 'Dish 1', 'Dish 2', 'Dish 3', 'Strawberry pie', 'Dessert 2', 'Dessert3'),
(35, 606, 'it', '2019-06-07 16:11:30', '2019-06-07 16:30:02', 'Ingresso 1', 'Ingresso 2', 'Ingresso 3', 'Piatto 1', 'Piatto 2', 'Piatto 3', 'Torta di fragole', 'Dessert 2', 'Dessert3'),
(36, 607, 'nl', '2019-06-07 16:31:43', '2019-06-07 16:59:02', 'Ingang 1', 'Ingang 2', 'Ingang 3', 'Schotel 1', 'Schotel 2', 'Schotel 3', 'Aardbeientaart', 'Dessert 2', 'Dessert3'),
(37, 608, 'en', '2019-06-07 17:19:34', '2019-06-07 17:20:01', '', '', '', '', '', '', 'Pie', '', ''),
(38, 608, 'de', '2019-06-07 17:19:34', '2019-06-07 17:21:01', '', '', '', '', '', '', 'Kuchen', '', ''),
(39, 608, 'es', '2019-06-07 17:19:34', '2019-06-07 17:22:02', '', '', '', '', '', '', 'Pastel', '', ''),
(40, 608, 'pt', '2019-06-07 17:19:34', '2019-06-07 17:23:01', '', '', '', '', '', '', 'Torta', '', ''),
(41, 608, 'it', '2019-06-07 17:19:34', '2019-06-07 17:24:01', '', '', '', '', '', '', 'Torta', '', ''),
(42, 608, 'nl', '2019-06-07 17:19:34', '2019-06-07 17:25:01', '', '', '', '', '', '', 'Taart', '', ''),
(43, 608, 'pl', '2019-06-07 17:19:34', '2019-06-07 17:26:01', '', '', '', '', '', '', 'Ciasto', '', ''),
(44, 608, 'ru', '2019-06-07 17:19:34', '2019-06-07 17:26:02', '', '', '', '', '', '', 'Пирог', '', ''),
(45, 609, 'en', '2019-06-07 17:30:04', '2019-06-07 17:31:02', '', '', '', '', '', '', 'Pie', '', ''),
(46, 609, 'de', '2019-06-07 17:30:04', '2019-06-07 17:31:03', '', '', '', '', '', '', 'Kuchen', '', ''),
(47, 609, 'es', '2019-06-07 17:30:04', '2019-06-07 17:31:04', '', '', '', '', '', '', 'Pastel', '', ''),
(48, 609, 'pt', '2019-06-07 17:30:04', '2019-06-07 17:31:06', '', '', '', '', '', '', 'Torta', '', ''),
(49, 609, 'it', '2019-06-07 17:30:04', '2019-06-07 17:31:08', '', '', '', '', '', '', 'Torta', '', ''),
(50, 609, 'nl', '2019-06-07 17:30:04', '2019-06-07 17:31:09', '', '', '', '', '', '', 'Taart', '', ''),
(51, 609, 'pl', '2019-06-07 17:30:04', '2019-06-07 17:31:11', '', '', '', '', '', '', 'Ciasto', '', ''),
(52, 609, 'ru', '2019-06-07 17:30:04', '2019-06-07 17:31:12', '', '', '', '', '', '', 'Пирог', '', ''),
(53, 610, 'en', '2019-06-07 17:33:23', '2019-06-07 18:00:03', '', '', '', '', '', '', 'Pie', '', ''),
(54, 611, 'it', '2019-06-07 18:08:23', '2019-06-07 18:30:02', '', '', '', '', '', '', 'Torta', '', ''),
(65, 616, 'en', '2019-06-11 11:43:23', '2019-06-11 11:43:37', '', '', '', '', '', '', 'Pie', '', ''),
(66, 617, 'de', '2019-06-11 11:44:24', '2019-06-11 11:44:59', '', '', '', '', '', '', 'Kuchen', '', ''),
(67, 617, 'nl', '2019-06-11 11:44:24', '2019-06-11 11:45:02', '', '', '', '', '', '', 'Taart', '', ''),
(69, 619, 'en', '2019-06-11 11:47:19', '2019-06-11 11:56:39', '', '', '', '', '', '', 'Pie', '', ''),
(77, 620, 'ru', '2019-06-11 11:53:24', '2019-06-11 11:56:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(78, 621, 'en', '2019-06-11 14:39:39', '2019-06-11 14:39:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(79, 622, 'de', '2019-06-11 14:42:46', '2019-06-11 14:42:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(80, 623, 'pl', '2019-06-11 14:44:51', '2019-06-11 14:44:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(81, 624, 'de', '2019-06-11 14:47:01', '2019-06-11 14:48:27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(82, 624, 'it', '2019-06-11 14:47:01', '2019-06-11 14:48:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(83, 624, 'nl', '2019-06-11 14:47:01', '2019-06-11 14:48:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(84, 625, 'pt', '2019-06-11 14:49:51', '2019-06-11 14:49:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(85, 626, 'it', '2019-06-11 14:50:39', '2019-06-11 14:50:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(90, 636, 'pt', '2019-07-12 12:45:37', '2019-07-12 12:45:39', '', '', '', '', '', 'testar', 'Torta', '', ''),
(91, 637, 'pt', '2019-07-12 12:46:27', '2019-07-12 12:46:29', '', '', '', '', '', 'testar', 'Torta', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `notifications_majmenu`
--

CREATE TABLE `notifications_majmenu` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `restaurant_id` smallint(5) UNSIGNED NOT NULL,
  `adresseEmail` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `notifications_majmenu`
--

INSERT INTO `notifications_majmenu` (`id`, `restaurant_id`, `adresseEmail`) VALUES
(2, 1, 'antonin@tobook.club');

-- --------------------------------------------------------

--
-- Structure de la table `restaurants`
--

CREATE TABLE `restaurants` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `compteFacturation_id` smallint(5) UNSIGNED DEFAULT NULL,
  `ambassadeur_id` smallint(5) UNSIGNED DEFAULT NULL,
  `ambassadeurChangeTime` datetime DEFAULT NULL,
  `nom` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telephone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `adressePostale` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `latitude` decimal(10,8) NOT NULL,
  `longitude` decimal(11,8) NOT NULL,
  `carte` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateInscription` date NOT NULL,
  `mediaPrincipal_id` mediumint(8) UNSIGNED DEFAULT NULL,
  `diffusionSiteRestoDuJour` tinyint(1) NOT NULL DEFAULT '1',
  `diffusionEcranSalle` tinyint(1) NOT NULL DEFAULT '0',
  `diffusionFacebook` tinyint(1) NOT NULL DEFAULT '0',
  `restaurantScolaire` tinyint(1) NOT NULL DEFAULT '0',
  `canHaveMultipleFBCredentials` tinyint(1) NOT NULL,
  `num_telephone` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `restaurants`
--

INSERT INTO `restaurants` (`id`, `code`, `compteFacturation_id`, `ambassadeur_id`, `ambassadeurChangeTime`, `nom`, `email`, `telephone`, `adressePostale`, `latitude`, `longitude`, `carte`, `dateInscription`, `mediaPrincipal_id`, `diffusionSiteRestoDuJour`, `diffusionEcranSalle`, `diffusionFacebook`, `restaurantScolaire`, `canHaveMultipleFBCredentials`, `num_telephone`) VALUES
(1, 'demo', 1, 1, '2019-07-17 18:22:45', 'La bonne note', 'antonin@tobook.club', '0123456789', '8 Boulevard de Tremault, Vendôme, France', '47.80134200', '1.06786240', '7d89e4911cf7086d.pdf', '2019-02-07', 56, 1, 0, 0, 0, 0, '0632456578'),
(2, 'capricorne', 2, NULL, NULL, 'Le Capricorne', 'contact@hotelcapricorne.com', '0254802700', '8 Boulevard de Tremault, 41100 Vendôme', '47.80134200', '1.06786240', NULL, '2019-03-11', 25, 1, 0, 0, 0, 0, '0632567656'),
(7, 'demo-scolaire', 3, 5, '2019-07-15 16:56:33', 'Alovera', 'antonin@tobook.club', '50 Rue de la Victoir', '0123456789', '48.87526500', '2.33530160', NULL, '2019-03-15', 30, 1, 1, 0, 1, 0, '0675654589'),
(14, 'facebook-validation', 4, NULL, NULL, 'Pizz\'Alberto', 'demo@restodujour.com', '0123456789', '\r\n18 rue Viala, 18000 Bourges France', '0.00000000', '0.00000000', NULL, '2019-03-28', NULL, 0, 1, 0, 0, 0, '0787676545'),
(15, 'demo-facebook', 5, NULL, NULL, 'NFC', 'demo@restodujour.com', '0123456789', '194 Bis Faubourg Chartrain 41100 Vendôme', '0.00000000', '0.00000000', NULL, '2019-03-28', NULL, 0, 0, 0, 0, 0, '0987564534'),
(17, 'facebook-demo-video', 6, NULL, NULL, 'Le Cercle', 'demo@restodujour.com', '0123456789', '8 Boulevard de Tremault, 41100 Vendôme', '0.00000000', '0.00000000', NULL, '2019-03-27', NULL, 0, 0, 1, 0, 0, '0676565434'),
(18, 'annonceur-test', 7, NULL, NULL, 'Aicha l\'Orientale', NULL, '', '27 avenue Henri Laudier 18000 Bourges', '0.00000000', '0.00000000', NULL, '2019-04-03', NULL, 0, 0, 0, 0, 0, '0275654534'),
(19, 'promocash-vendome', 8, NULL, NULL, 'promocash-vendome', 'antonin@tobook.club', 'test', 'Los Angeles, Montevideo, Uruguay', '-34.82342010', '-56.17358810', NULL, '2019-04-19', NULL, 1, 1, 0, 0, 0, '0178987865'),
(24, 'test', 9, NULL, NULL, 'Le Very Happy', 'antonin@tobook.club', 'test', 'Piazza Testaccio, Rome, Italie', '41.87914480', '12.47689490', NULL, '2019-06-24', NULL, 1, 0, 0, 0, 0, '0766554433'),
(25, '1562244227', 10, NULL, NULL, 'Le Petit Resto', 'abcd@tobook.club', 'test', 'Testarellogasse, Vienne, Autriche', '48.19033970', '16.27364260', NULL, '2019-07-04', NULL, 1, 0, 0, 0, 0, '0656432345'),
(26, '1562661259', 11, 1, '2019-07-15 16:56:49', 'La Prose', 'antonin@tobook.club', '0123456789', '10 Rue Jean Moulin, Chenôve, France', '47.28272990', '5.01840350', NULL, '2019-07-09', NULL, 1, 0, 0, 0, 0, '0765432398'),
(27, '1562661305', 12, 1, NULL, 'Cake-Thé', 'antonin@tobook.club', '0123456789', 'Teston Road, Maple, ON, Canada', '43.86947170', '-79.53538270', NULL, '2019-07-09', NULL, 1, 0, 0, 0, 0, '0254342109'),
(28, '1562661332', 13, NULL, NULL, 'Hong Phuc', 'antonin@tobook.club', '0123456789', 'Aztec West, Bristol, Royaume-Uni', '51.54361290', '-2.56754220', NULL, '2019-07-09', NULL, 1, 0, 0, 0, 0, '0201020304'),
(29, '1569182152', 14, NULL, NULL, 'La Pasta', 'nmumhwxb@guerrillamail.com', 'nmumhwxb', '6 rue Littré, 18000 Bourges France', '0.00000000', '0.00000000', NULL, '2019-09-22', NULL, 1, 0, 0, 0, 0, '0256432345'),
(30, '1569182686', 15, NULL, NULL, 'Dentelle et Chocolat', 'mlahwfyr@guerrillamail.com', 'mlahwfyr', '96 rue d Auron, 18000 Bourges France', '0.00000000', '0.00000000', NULL, '2019-09-22', NULL, 1, 0, 0, 0, 0, '0123456789'),
(56, '1569244160', 40, NULL, NULL, 'Holly\'s Dinner', 'ikvtjplp@guerrillamail.com', 'ikvtjplp', '8 Avenue de Peterborough Centre Commercial Avaricum, 18000 Bourges France', '0.00000000', '0.00000000', NULL, '2019-09-23', NULL, 1, 0, 0, 0, 0, '0265453423'),
(64, '1569252745', 48, NULL, NULL, 'Brasserie du louvres', 'fise@247web.net', '0000000000', '15 Rue du Louvre, Paris, France', '48.86340950', '2.34204170', '62995f47e5eb1c7b.pdf', '2019-09-23', NULL, 1, 0, 0, 0, 0, '0265453421'),
(65, '1569268257', 49, NULL, NULL, 'LA COMEDIE\r\n\r\n', 'bdmziack@restodujour.com', 'bdmziack', '19, Place De La Republique, 41100 Vendôme France', '0.00000000', '0.00000000', NULL, '2019-09-23', NULL, 1, 0, 0, 0, 0, '0254321787'),
(66, '', NULL, NULL, NULL, 'alovera', 'anh@nguyen.com', '', '18000', '0.00000000', '0.00000000', NULL, '0000-00-00', NULL, 1, 0, 0, 0, 0, '066204738'),
(68, NULL, NULL, NULL, NULL, 'Alodjjdj', 'Anh@nguyen.com', '', '180000', '0.00000000', '0.00000000', NULL, '0000-00-00', NULL, 1, 0, 0, 0, 0, '07498585'),
(69, NULL, NULL, NULL, NULL, 'Ihfohfoho', 'G@chchic.com', '', 'Ohhk', '0.00000000', '0.00000000', NULL, '0000-00-00', NULL, 1, 0, 0, 0, 0, '6838647'),
(70, NULL, NULL, NULL, NULL, 'Diyxhch', 'Ihihc@cihihc', '', 'Hci', '0.00000000', '0.00000000', NULL, '0000-00-00', NULL, 1, 0, 0, 0, 0, '0784949'),
(71, NULL, NULL, NULL, NULL, 'Diyxhch', 'Ihihc@cihihc.com', '', 'Hci', '0.00000000', '0.00000000', NULL, '0000-00-00', NULL, 1, 0, 0, 0, 0, '0784949'),
(72, NULL, NULL, NULL, NULL, 'Hkckhfuo', 'Hkh@cxhi.com', '', 'Ihckh', '0.00000000', '0.00000000', NULL, '0000-00-00', NULL, 1, 0, 0, 0, 0, '48497497'),
(73, NULL, NULL, NULL, NULL, 'Fiydiy', 'Hkckhx@fgx.com', '', 'Ckhckhc', '0.00000000', '0.00000000', NULL, '0000-00-00', NULL, 1, 0, 0, 0, 0, '4464'),
(74, NULL, NULL, NULL, NULL, 'Find', 'Ciy@cvuv.com', '', 'Hfohchov', '0.00000000', '0.00000000', NULL, '0000-00-00', NULL, 1, 0, 0, 0, 0, '068955'),
(75, NULL, NULL, NULL, NULL, 'Oydiydiy', 'Fcuocouc@cuoculc', '', 'Chlvvuocouv', '0.00000000', '0.00000000', NULL, '0000-00-00', NULL, 1, 0, 0, 0, 0, '4695'),
(76, NULL, NULL, NULL, NULL, 'test123', 'test@test.com', '', '19 rue des fonds gaidons', '0.00000000', '0.00000000', NULL, '0000-00-00', NULL, 1, 0, 0, 0, 0, '8594385094'),
(77, NULL, NULL, NULL, NULL, 'nguyentest', 'anhnguyen@nguyen.com', '', '19 rue des fonds gaidons', '0.00000000', '0.00000000', NULL, '0000-00-00', NULL, 1, 0, 0, 0, 0, '958043985094385'),
(78, NULL, NULL, NULL, NULL, 'kjflksjdfksjdlkfjskfdj', 'test@test.com', '', 'fjlkdsjflkdsj', '0.00000000', '0.00000000', NULL, '0000-00-00', NULL, 1, 0, 0, 0, 0, '593280948309284'),
(79, NULL, NULL, NULL, NULL, 'fkjsdkfjkjfelkj', 'anh@nguyen.com', '', 'hjfjdslkfjkdsljf', '0.00000000', '0.00000000', NULL, '0000-00-00', NULL, 1, 0, 0, 0, 0, '985094385943'),
(80, NULL, NULL, NULL, NULL, 'nguyennguyen', 'nguyen@nguyen.com', '', 'fkjdskljfsjdlfjsf', '0.00000000', '0.00000000', NULL, '0000-00-00', NULL, 1, 0, 0, 0, 0, '758437598374'),
(81, NULL, NULL, NULL, NULL, 'nguyenjflkds', 'jfkldsj@fhkjsdhf.com', '', 'jfkjlajfds', '0.00000000', '0.00000000', NULL, '0000-00-00', NULL, 1, 0, 0, 0, 0, '8593208409328'),
(82, NULL, NULL, NULL, NULL, 'jfkjdsflkj', 'jfkds@jfkldsjf.com', '', 'jkfjdslkf', '0.00000000', '0.00000000', NULL, '0000-00-00', NULL, 1, 0, 0, 0, 0, '84903284'),
(83, NULL, NULL, NULL, NULL, 'jfkjdsflkj', 'jfkds@jfkldsjf.com', '', 'jkfjdslkf', '0.00000000', '0.00000000', NULL, '0000-00-00', NULL, 1, 0, 0, 0, 0, '84903284'),
(84, NULL, NULL, NULL, NULL, '898432098', '89438@74839.com', '', 'jfdksjafldsk', '0.00000000', '0.00000000', NULL, '0000-00-00', NULL, 1, 0, 0, 0, 0, '874932409328'),
(85, NULL, NULL, NULL, NULL, 'jfkjkfjlkdsjf', 'fjdshk@fhjkds.com', '', 'jkfjdsalkdfj', '0.00000000', '0.00000000', NULL, '0000-00-00', NULL, 1, 0, 0, 0, 0, '859843'),
(86, NULL, NULL, NULL, NULL, 'flkdsajflksajd', 'hfjdskhf@fhdkjshf.com', '', 'jhfkshkj784732', '0.00000000', '0.00000000', NULL, '0000-00-00', NULL, 1, 0, 0, 0, 0, '748327489'),
(87, NULL, NULL, NULL, NULL, 'jkfdsj', 'roewirpoi@jfk.com', '', 'flkdsjflkjds', '0.00000000', '0.00000000', NULL, '0000-00-00', NULL, 1, 0, 0, 0, 0, 'fjkldsjf'),
(88, NULL, NULL, NULL, NULL, 'hfdkjshf', 'hfdskjhf@fhjskdf.com', '', '78743982', '0.00000000', '0.00000000', NULL, '0000-00-00', NULL, 1, 0, 0, 0, 0, '47392874982'),
(89, NULL, NULL, NULL, NULL, 'loanruby', 'hoa@hoa.com', '', 'thao nguyen', '0.00000000', '0.00000000', NULL, '0000-00-00', NULL, 1, 0, 0, 0, 0, '84309280432'),
(90, NULL, NULL, NULL, NULL, 'nguyen dep ', 'hoa@loan.com', '', 'thao nguyen ham', '0.00000000', '0.00000000', NULL, '0000-00-00', NULL, 1, 0, 0, 0, 0, '849382409'),
(91, NULL, NULL, NULL, NULL, 'nguyen', 'nguyen@nguyen.com', '', 'hjrhewrkj', '0.00000000', '0.00000000', NULL, '0000-00-00', NULL, 1, 0, 0, 0, 0, '7498327498'),
(92, NULL, NULL, NULL, NULL, 'nguyennguyen', 'ngyue@nguye.com', '', 'fkjhdskjhf', '0.00000000', '0.00000000', NULL, '0000-00-00', NULL, 1, 0, 0, 0, 0, '4738927498'),
(93, NULL, NULL, NULL, NULL, 'jflkdsjflksd', 'jkfljew@hfkjhew.com', '', 'jfejflkewj', '0.00000000', '0.00000000', NULL, '0000-00-00', NULL, 1, 0, 0, 0, 0, '43728473298'),
(94, NULL, NULL, NULL, NULL, 'gjlksdjg', 'jkgljf@hfkjds.com', '', 'jrlewjr', '0.00000000', '0.00000000', NULL, '0000-00-00', NULL, 1, 0, 0, 0, 0, '4832094382'),
(95, NULL, NULL, NULL, NULL, 'jlkrjewlkrj', 'test@test.com', '', '18000', '0.00000000', '0.00000000', NULL, '0000-00-00', NULL, 1, 0, 0, 0, 0, '84932840932'),
(96, NULL, NULL, NULL, NULL, 'lqn cuoi ', 'mong@vqy.com', '', '84328409', '0.00000000', '0.00000000', NULL, '0000-00-00', NULL, 1, 0, 0, 0, 0, '438209483209'),
(97, NULL, NULL, NULL, NULL, 'nguyentestok', 'baby@baby.com', '', 'uroiewu', '0.00000000', '0.00000000', NULL, '0000-00-00', NULL, 1, 0, 0, 0, 0, '8598435'),
(98, NULL, NULL, NULL, NULL, 'Hrjrj', 'Jfoi@jkkg.com', '', '18000', '0.00000000', '0.00000000', NULL, '0000-00-00', NULL, 1, 0, 0, 0, 0, '849580'),
(99, NULL, NULL, NULL, NULL, 'Hdjfk', 'Jfjfk@hfjdk.com', '', '1800', '0.00000000', '0.00000000', NULL, '0000-00-00', NULL, 1, 0, 0, 0, 0, '74985'),
(100, NULL, NULL, NULL, NULL, 'Hdkdk', 'Fhjd@jfkkf.com', '', '2798', '0.00000000', '0.00000000', NULL, '0000-00-00', NULL, 1, 0, 0, 0, 0, '75849'),
(101, NULL, NULL, NULL, NULL, 'jfhkdsahf', 'jfdskljf@hfjds.com', '', 'jfkj984', '0.00000000', '0.00000000', NULL, '0000-00-00', NULL, 1, 0, 0, 0, 0, 'kjlkj432'),
(102, NULL, NULL, NULL, NULL, 'nguyen dep nha hang', 'nguyendep@com.com', '', 'jflkadsjf', '0.00000000', '0.00000000', NULL, '0000-00-00', NULL, 1, 0, 0, 0, 0, '0662047358'),
(103, NULL, NULL, NULL, NULL, 'Nha hang tesr', 'Nguyen@giau.com', '066204738', '19 rue des fonds gaidons', '0.00000000', '0.00000000', NULL, '0000-00-00', NULL, 1, 0, 0, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `socialfacebook_pagescredentials`
--

CREATE TABLE `socialfacebook_pagescredentials` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `restaurant_id` smallint(5) UNSIGNED NOT NULL,
  `facebookUtilisateurCredentials_id` mediumint(8) UNSIGNED NOT NULL,
  `pageId` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `accessToken` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateCreation` datetime NOT NULL COMMENT 'date de la première autorisation sur la page FB',
  `dateUpdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `socialfacebook_pagescredentials`
--

INSERT INTO `socialfacebook_pagescredentials` (`id`, `restaurant_id`, `facebookUtilisateurCredentials_id`, `pageId`, `accessToken`, `dateCreation`, `dateUpdate`) VALUES
(94, 1, 73, '287645932162920', 'EAAElj22NikABABpCpsLFwlk8aru91Tv6Kj77Uo4Jhkz21IWr70FpLBaGMjR7EBrytcZBhxergzE3AKXmZBIaNxYo6QAthtgZCPkBlSiQiUjhFBF2PkXZAZCknmV2Vu1aATZA3dJi3CCtvd1tARdZBFm0uP03KaUuepXST1ndo0We0DfheZCiCSvqqNnDSMmY96kZD', '2019-05-09 10:37:36', '2019-05-09 10:37:36');

-- --------------------------------------------------------

--
-- Structure de la table `socialfacebook_utilisateurscredentials`
--

CREATE TABLE `socialfacebook_utilisateurscredentials` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `utilisateur_id` smallint(6) UNSIGNED NOT NULL,
  `userId` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `accessToken` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateCreation` datetime NOT NULL,
  `dateUpdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `socialfacebook_utilisateurscredentials`
--

INSERT INTO `socialfacebook_utilisateurscredentials` (`id`, `utilisateur_id`, `userId`, `accessToken`, `dateCreation`, `dateUpdate`) VALUES
(73, 8, '105456930636329', 'EAAElj22NikABAI0Yzv58cL25YJwrOj3o4UvZBHkYvUv4vl34LOR4CV7fvMDSkyvNTKULZBajJn4jZAAU7FeV3KmQWAQFtRc9nZC06h4vnhq4LVWPcx8EU38mQ1ekhfH8F7Qrc27r8A6buZCsSbBMpMu0rUwUVS6ZCwA2Iz8RI1gB6GoFX3xAhA', '2019-05-07 15:33:17', '2019-05-07 15:33:17');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

CREATE TABLE `utilisateurs` (
  `id` smallint(6) UNSIGNED NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `canHaveMultipleFBCredentials` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id`, `username`, `password`, `email`, `canHaveMultipleFBCredentials`) VALUES
(1, 'demo', 'demo', NULL, 0),
(2, 'lciarka', '827ccb0eea8a706c4c34a16891f84e7b', 'contact@restodujour.com', 0),
(8, 'antonin@tobook.club', 'dev-antonin', 'antonin@tobook.club', 0),
(34, 'facebook', 'facebook2803!', NULL, 0),
(35, 'demo-facebook', 'demo-facebook', NULL, 0),
(36, 'annonceur-test', 'test', NULL, 0),
(37, 'fb-usv-test', 'dev-antonin', NULL, 0),
(43, 'laurent.ciarka@gmail.com', '123456', 'laurent.ciarka@gmail.com', 0),
(44, 'test@test.com', 'testtes', 'test@test.com', 0),
(45, 'abcd@tobook.club', 'testtest', 'abcd@tobook.club', 0),
(46, 'nmumhwxb@guerrillamail.com', 'nmumhwxb', 'nmumhwxb@guerrillamail.com', 0),
(47, 'mlahwfyr@guerrillamail.com', 'mlahwfyr', 'mlahwfyr@guerrillamail.com', 0),
(48, 'fise@247web.net', 'Test159', 'fise@247web.net', 0),
(49, 'ikvtjplp@guerrillamail.com', 'ikvtjplp', 'ikvtjplp@guerrillamail.com', 0),
(50, 'bdmziack@restodujour.com', 'bdmziack', 'bdmziack@restodujour.com', 0),
(51, 'nguyennguyen', '94da16824809a0470f70312fc1a2f100', 'anhnguyen@nguyen.com', NULL),
(52, 'nguyennguyen2', '94da16824809a0470f70312fc1a2f100', 'nguyen@nguyen.com', NULL),
(53, 'nguyennguyen3', '94da16824809a0470f70312fc1a2f100', 'annuennguyen0404@gmail.com', NULL),
(54, 'nguyennguyen5', '94da16824809a0470f70312fc1a2f100', 'anhnguyennguyen@gmail.com', NULL),
(55, 'hanaezaim', '5cfc14ccd1cfd47a602900ad5a5efa02', 'hanae.zaim@insa-cvl.fr', NULL),
(56, 'hanae222', '94da16824809a0470f70312fc1a2f100', 'anhnguyenhansin@gmail.com', NULL),
(57, 'nguyennguyen89', '94da16824809a0470f70312fc1a2f100', 'anhnguyen@nguyen.com', NULL),
(58, 'nguyenne', '94da16824809a0470f70312fc1a2f100', 'nguyen@m.com', NULL),
(59, 'nguyenne2', '94da16824809a0470f70312fc1a2f100', 'Nguyen@nguyen.com', NULL),
(60, 'nguyenne3', '94da16824809a0470f70312fc1a2f100', 'annuennguyen0404@gmail.com', NULL),
(61, 'nguyendep', '94da16824809a0470f70312fc1a2f100', 'nguyen@nguyen.com', NULL),
(62, 'nguyendep2', '94da16824809a0470f70312fc1a2f100', 'nguyen@dep.com', NULL),
(63, 'nguyendepzai', '94da16824809a0470f70312fc1a2f100', 'Zaidep@nguyen.com', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateursroles`
--

CREATE TABLE `utilisateursroles` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `nom` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `utilisateursroles`
--

INSERT INTO `utilisateursroles` (`id`, `nom`) VALUES
(0, 'administrateur'),
(1, 'restaurateur'),
(2, 'annonceur');

-- --------------------------------------------------------

--
-- Structure de la table `widgets`
--

CREATE TABLE `widgets` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `restaurant_id` smallint(5) UNSIGNED NOT NULL,
  `couleur` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateModification` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `widgets`
--

INSERT INTO `widgets` (`id`, `restaurant_id`, `couleur`, `dateModification`) VALUES
(1, 19, 'vert', '2019-07-19 15:18:45'),
(2, 2, 'jaune', '2019-07-21 07:51:38');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `abonnements`
--
ALTER TABLE `abonnements`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `restaurant_id` (`restaurant_id`),
  ADD KEY `compteFacturation_id` (`compteFacturation_id`);

--
-- Index pour la table `abonnements_prix`
--
ALTER TABLE `abonnements_prix`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `abonnement_id_2` (`abonnement_id`,`dateDebut`),
  ADD KEY `abonnement_id` (`abonnement_id`);

--
-- Index pour la table `affichagesdeportes_diaporamas`
--
ALTER TABLE `affichagesdeportes_diaporamas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `restaurant` (`restaurant_id`),
  ADD KEY `nom` (`nom`);

--
-- Index pour la table `affichagesdeportes_diapositives`
--
ALTER TABLE `affichagesdeportes_diapositives`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ecran_2` (`ecran_id`,`position`),
  ADD KEY `ecran` (`ecran_id`),
  ADD KEY `typeDiapositive_id` (`typeDiapositive_id`);

--
-- Index pour la table `affichagesdeportes_ecrans`
--
ALTER TABLE `affichagesdeportes_ecrans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `diaporama_2` (`diaporama_id`,`ordre`),
  ADD KEY `diaporama` (`diaporama_id`),
  ADD KEY `typeEcran_id` (`typeEcran_id`);

--
-- Index pour la table `affichagesdeportes_join_diaporamas_typesdiaporamas`
--
ALTER TABLE `affichagesdeportes_join_diaporamas_typesdiaporamas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `diaporama_id` (`diaporama_id`),
  ADD KEY `typeDiaporama_id` (`typeDiaporama_id`);

--
-- Index pour la table `affichagesdeportes_join_diapositives_medias`
--
ALTER TABLE `affichagesdeportes_join_diapositives_medias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `diapositive_id` (`diapositive_id`),
  ADD KEY `diapositive_id_2` (`diapositive_id`),
  ADD KEY `media_id` (`media_id`);

--
-- Index pour la table `affichagesdeportes_typesdiaporamas`
--
ALTER TABLE `affichagesdeportes_typesdiaporamas`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `affichagesdeportes_typesdiapositives`
--
ALTER TABLE `affichagesdeportes_typesdiapositives`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `affichagesdeportes_typesecrans`
--
ALTER TABLE `affichagesdeportes_typesecrans`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `ambassadeurs`
--
ALTER TABLE `ambassadeurs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Index pour la table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `utilisateur_id` (`utilisateur_id`);

--
-- Index pour la table `changepasswordresquests`
--
ALTER TABLE `changepasswordresquests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hash` (`hash`);

--
-- Index pour la table `comptesfacturation`
--
ALTER TABLE `comptesfacturation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `utilisateur_id` (`utilisateur_id`);

--
-- Index pour la table `geo_villes`
--
ALTER TABLE `geo_villes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `horairesouverture`
--
ALTER TABLE `horairesouverture`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `restaurant_id` (`restaurant_id`);

--
-- Index pour la table `join_restaurants_utilisateurs`
--
ALTER TABLE `join_restaurants_utilisateurs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_restaurants` (`restaurants_id`,`utilisateurs_id`),
  ADD KEY `id_utilisateurs` (`utilisateurs_id`);

--
-- Index pour la table `join_utilisateursroles_utilisateurs`
--
ALTER TABLE `join_utilisateursroles_utilisateurs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_utilisateurs` (`utilisateurs_id`,`utilisateursRoles_id`),
  ADD KEY `id_utilisateursRoles` (`utilisateursRoles_id`);

--
-- Index pour la table `medias`
--
ALTER TABLE `medias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `restaurant_id` (`restaurant_id`);

--
-- Index pour la table `menusdujour`
--
ALTER TABLE `menusdujour`
  ADD PRIMARY KEY (`id`),
  ADD KEY `restaurant` (`restaurant_id`);

--
-- Index pour la table `menusdujourtraductions`
--
ALTER TABLE `menusdujourtraductions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menu_id_2` (`menu_id`,`locale`),
  ADD KEY `menu_id` (`menu_id`),
  ADD KEY `dateCreation` (`dateCreation`),
  ADD KEY `dateTraitement` (`dateTraitement`);

--
-- Index pour la table `notifications_majmenu`
--
ALTER TABLE `notifications_majmenu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `adresseEmail` (`adresseEmail`,`restaurant_id`),
  ADD KEY `restaurant_id` (`restaurant_id`);

--
-- Index pour la table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD KEY `restaurantScolaire` (`restaurantScolaire`),
  ADD KEY `diffusionSiteRestoDuJour` (`diffusionSiteRestoDuJour`),
  ADD KEY `latitude` (`latitude`),
  ADD KEY `longitude` (`longitude`),
  ADD KEY `mediaPrincipal_id` (`mediaPrincipal_id`),
  ADD KEY `compteFacturation_id` (`compteFacturation_id`),
  ADD KEY `ambassadeur_id` (`ambassadeur_id`);

--
-- Index pour la table `socialfacebook_pagescredentials`
--
ALTER TABLE `socialfacebook_pagescredentials`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `restaurant_id_2` (`restaurant_id`,`facebookUtilisateurCredentials_id`),
  ADD KEY `facebookUtilisateurCredentials_id` (`facebookUtilisateurCredentials_id`),
  ADD KEY `restaurant_id` (`restaurant_id`) USING BTREE;

--
-- Index pour la table `socialfacebook_utilisateurscredentials`
--
ALTER TABLE `socialfacebook_utilisateurscredentials`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `utilisateur_id` (`utilisateur_id`) USING BTREE;

--
-- Index pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `utilisateursroles`
--
ALTER TABLE `utilisateursroles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `widgets`
--
ALTER TABLE `widgets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `restaurant_id` (`restaurant_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `abonnements`
--
ALTER TABLE `abonnements`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `abonnements_prix`
--
ALTER TABLE `abonnements_prix`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `affichagesdeportes_diaporamas`
--
ALTER TABLE `affichagesdeportes_diaporamas`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT pour la table `affichagesdeportes_diapositives`
--
ALTER TABLE `affichagesdeportes_diapositives`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1085;

--
-- AUTO_INCREMENT pour la table `affichagesdeportes_ecrans`
--
ALTER TABLE `affichagesdeportes_ecrans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=571;

--
-- AUTO_INCREMENT pour la table `affichagesdeportes_join_diaporamas_typesdiaporamas`
--
ALTER TABLE `affichagesdeportes_join_diaporamas_typesdiaporamas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT pour la table `affichagesdeportes_join_diapositives_medias`
--
ALTER TABLE `affichagesdeportes_join_diapositives_medias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=911;

--
-- AUTO_INCREMENT pour la table `ambassadeurs`
--
ALTER TABLE `ambassadeurs`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT pour la table `changepasswordresquests`
--
ALTER TABLE `changepasswordresquests`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `comptesfacturation`
--
ALTER TABLE `comptesfacturation`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT pour la table `geo_villes`
--
ALTER TABLE `geo_villes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `horairesouverture`
--
ALTER TABLE `horairesouverture`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT pour la table `join_restaurants_utilisateurs`
--
ALTER TABLE `join_restaurants_utilisateurs`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT pour la table `join_utilisateursroles_utilisateurs`
--
ALTER TABLE `join_utilisateursroles_utilisateurs`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT pour la table `medias`
--
ALTER TABLE `medias`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT pour la table `menusdujour`
--
ALTER TABLE `menusdujour`
  MODIFY `id` mediumint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=565;

--
-- AUTO_INCREMENT pour la table `menusdujourtraductions`
--
ALTER TABLE `menusdujourtraductions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT pour la table `notifications_majmenu`
--
ALTER TABLE `notifications_majmenu`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT pour la table `socialfacebook_pagescredentials`
--
ALTER TABLE `socialfacebook_pagescredentials`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT pour la table `socialfacebook_utilisateurscredentials`
--
ALTER TABLE `socialfacebook_utilisateurscredentials`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  MODIFY `id` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT pour la table `widgets`
--
ALTER TABLE `widgets`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `abonnements`
--
ALTER TABLE `abonnements`
  ADD CONSTRAINT `abonnements_ibfk_1` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`id`),
  ADD CONSTRAINT `abonnements_ibfk_2` FOREIGN KEY (`compteFacturation_id`) REFERENCES `comptesfacturation` (`id`);

--
-- Contraintes pour la table `abonnements_prix`
--
ALTER TABLE `abonnements_prix`
  ADD CONSTRAINT `abonnements_prix_ibfk_1` FOREIGN KEY (`abonnement_id`) REFERENCES `abonnements` (`id`);

--
-- Contraintes pour la table `affichagesdeportes_diaporamas`
--
ALTER TABLE `affichagesdeportes_diaporamas`
  ADD CONSTRAINT `affichagesDeportes_diaporamas_ibfk_1` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`id`);

--
-- Contraintes pour la table `affichagesdeportes_diapositives`
--
ALTER TABLE `affichagesdeportes_diapositives`
  ADD CONSTRAINT `affichagesDeportes_diapositives_ibfk_1` FOREIGN KEY (`ecran_id`) REFERENCES `affichagesdeportes_ecrans` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `affichagesDeportes_diapositives_ibfk_2` FOREIGN KEY (`typeDiapositive_id`) REFERENCES `affichagesdeportes_typesdiapositives` (`id`);

--
-- Contraintes pour la table `affichagesdeportes_ecrans`
--
ALTER TABLE `affichagesdeportes_ecrans`
  ADD CONSTRAINT `affichagesDeportes_ecrans_ibfk_1` FOREIGN KEY (`diaporama_id`) REFERENCES `affichagesdeportes_diaporamas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `affichagesDeportes_ecrans_ibfk_2` FOREIGN KEY (`typeEcran_id`) REFERENCES `affichagesdeportes_typesecrans` (`id`);

--
-- Contraintes pour la table `affichagesdeportes_join_diaporamas_typesdiaporamas`
--
ALTER TABLE `affichagesdeportes_join_diaporamas_typesdiaporamas`
  ADD CONSTRAINT `affichagesDeportes_join_diaporamas_typesDiaporamas_ibfk_1` FOREIGN KEY (`diaporama_id`) REFERENCES `affichagesdeportes_diaporamas` (`id`),
  ADD CONSTRAINT `affichagesDeportes_join_diaporamas_typesDiaporamas_ibfk_2` FOREIGN KEY (`typeDiaporama_id`) REFERENCES `affichagesdeportes_typesdiaporamas` (`id`);

--
-- Contraintes pour la table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD CONSTRAINT `auth_tokens_ibfk_1` FOREIGN KEY (`utilisateur_id`) REFERENCES `utilisateurs` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
