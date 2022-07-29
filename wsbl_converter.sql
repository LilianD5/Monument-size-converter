-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 29 juil. 2022 à 09:08
-- Version du serveur : 5.7.36
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `wsbl_converter`
--

-- --------------------------------------------------------

--
-- Structure de la table `wsbl_monuments`
--

DROP TABLE IF EXISTS `wsbl_monuments`;
CREATE TABLE IF NOT EXISTS `wsbl_monuments` (
  `wsbl_monument_id` int(11) NOT NULL AUTO_INCREMENT,
  `wsbl_monument_name` varchar(100) NOT NULL,
  `wsbl_monument_simple_name` varchar(100) NOT NULL,
  `wsbl_monument_size` mediumint(6) NOT NULL,
  `wsbl_monument_overview` text NOT NULL,
  `wsbl_monument_img_path` varchar(100) NOT NULL,
  PRIMARY KEY (`wsbl_monument_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `wsbl_monuments`
--

INSERT INTO `wsbl_monuments` (`wsbl_monument_id`, `wsbl_monument_name`, `wsbl_monument_simple_name`, `wsbl_monument_size`, `wsbl_monument_overview`, `wsbl_monument_img_path`) VALUES
(1, 'La Tour Eiffel', 'tour eiffel', 330000, 'La Tour Eiffel est une tour de fer de 330m de hauteur (avec antennes) située à Paris, à l’extrémité nord-ouest du parc du Champ-de-Mars.\n\nConstruite par Gustave Eiffel et ses collaborateurs pour l\'Exposition universelle de Paris de 1889, célébrant le centenaire de la Révolution française, elle est devenue le symbole de la capitale française et un site touristique de premier plan.\n\nLa tour Eiffel est restée le monument le plus élevé du monde pendant quarante ans. Le second niveau du troisième étage, appelé parfois quatrième étage, situé à 279,11 mètres, est la plus haute plateforme d\'observation accessible au public de l\'Union européenne et la deuxième plus haute d\'Europe, derrière la tour Ostankino à Moscou culminant à 337 mètres. ', 'tour-eiffel.png'),
(2, 'La Pyramide de Keops', 'pyramide de keops', 146580, 'La pyramide de Khéops ou grande pyramide de Gizeh est un monument construit par les Égyptiens de l\'Antiquité, formant une pyramide à base carrée. Tombeau présumé du pharaon Khéops, elle fut édifiée il y a plus de 4 500 ans, sous la IVe dynastie, au centre du complexe funéraire de Khéops se situant à Gizeh en Égypte. Elle est la plus grande des pyramides de Gizeh.\n\nElle était considérée dans l\'Antiquité comme la première des Sept Merveilles du monde. Seule des Sept Merveilles du monde à avoir survécu jusqu\'à nos jours, elle est également la plus ancienne. Durant des millénaires, elle fut la construction humaine de tous les records : la plus haute, la plus volumineuse et la plus massive.', 'pyramide.png'),
(3, 'Big Ben', 'big ben', 96000, 'Big Ben est le surnom de la grande cloche de 13,5 tonnes se trouvant au sommet de la Elizabeth Tower, la tour horloge du palais de Westminster, qui est le siège du Parlement britannique, à Londres. La tour a été renommée à l\'occasion du jubilé de diamant d\'Élisabeth II en 2012. Par métonymie, le nom de la cloche est aussi communément employé pour désigner l\'horloge dans son ensemble et la tour qui abrite le tout. Il s\'agit d\'un symbole de la ville de Londres.', 'bigben.png'),
(4, 'La Statue de la Liberté', 'statue de la liberté', 93000, 'La statue de la Liberté est l\'un des monuments les plus célèbres des États-Unis. Cette statue est située à New York, sur la Liberty Island, au sud de Manhattan, à l\'embouchure de l\'Hudson et à proximité d’Ellis Island. Elle fut inaugurée en 1886.', 'statut-liberte.png'),
(5, 'L\'Arc de Triomphe', 'arc de triomphe', 49540, 'L\'Arc de triomphe de l’Étoile, souvent appelé simplement l\'Arc de triomphe, est un monument situé à Paris au sommet de l\'avenue des Champs-Élysées et de l\'avenue de la Grande-Armée partant de la pyramide du Louvre, passant par l\'obélisque de La Concorde, l\'Arc de Triomphe lui-même et se terminant au loin par l\'Arche de la Défense.\r\n\r\nSa construction, décidée par l\'empereur Napoléon Ier, débute en 1806 et s\'achève en 1836 sous le règne de Louis-Philippe.', 'arc-triomphe.png'),
(6, 'Le Sphinx de Gizeh (longueur)', 'sphinx de gizeh', 73500, 'Le Sphinx de Gizeh est la statue qui se dresse devant les grandes pyramides du plateau de Gizeh, en Basse-Égypte. Sculpture monumentale monolithique la plus grande du monde avec 73,5 mètres de longueur, 14 mètres de largeur et 20,22 mètres de hauteur, elle représente un sphinx couchant. \r\nRéalisée vers 2500 av. J.-C., elle est attribuée à Khéphren, l\'un des pharaons de la IVe dynastie de l\'Ancien Empire.', 'sphinx.png'),
(7, 'Le Parthénon (longueur)', 'parthenon', 67500, 'Érigé entre 447 et 438 av. J.-C. dans l\'Acropole, le Parthénon est l\'un des monuments les plus importants de la civilisation de la Grèce antique, en plus d\'être l\'édifice le plus emblématique de toute la Grèce. \r\n\r\nLe monument du Parthénon, construit en marbre blanc issu de la montagne Pentélique, a été conçu pour abriter la statue en or et en ivoire d\'Athéna Parthénos, un élément colossal de douze mètres de haut réalisé par Phidias.\r\n\r\nAvec des dimensions avoisinant les 70 mètres de long et 30 mètres de large, le Parthénon était encadré par des colonnes tout autour de son périmètre, 8 sur les façades principales et 17 sur les côtés.', 'parthenon.png'),
(8, 'Le Taj Mahal', 'taj mahal', 73000, 'Le Taj Mahal est situé à Agra en Inde. C\'est un mausolée de marbre blanc construit par l\'empereur moghol musulman Shâh Jahân en mémoire de son épouse Arjumand Bânu Begam. La construction du mausolée commence en 1631 et s\'achève dans sa plus grande partie en 1648.\r\n\r\nLe Taj Mahal est considéré comme un joyau de l\'architecture moghole, un style qui combine des éléments architecturaux des architectures islamique, iranienne, ottomane et indienne.\r\n\r\nVisité par plus de 6 millions de touristes en 2019, c\'était le site le plus touristique d\'Inde et un des dix monuments les plus visités au monde.', 'taj-mahal.png'),
(9, 'La Tour de Pise', 'tour de pise', 58000, 'La tour de Pise est le campanile (tour abritant les cloches servant à appeler les fidèles à la prière) de la cathédrale Notre-Dame de l’Assomption de Pise, en Toscane. Elle est inscrite au patrimoine mondial de l\'UNESCO. \r\n\r\nSa construction débuta en 1173. Mondialement connue, elle est un des symboles de l’Italie et l’emblème de la ville de Pise.\r\n\r\nOutre le fait qu’elle soit considérée comme un chef-d’œuvre de l’art roman toscan en marbre, sa célébrité vient notamment de son inclinaison caractéristique. Cette inclinaison est apparue très rapidement pendant sa construction, du fait qu’elle a été édifiée sur une plaine alluviale. Ce défaut serait dû soit à un défaut de fondation, soit à un affaissement de terrain dû à une roche : la marne.', 'pise.png'),
(10, 'Le Christ Redempteur', 'christ redempteur', 38000, 'Le Christ Rédempteur est une grande statue du Christ dominant la ville de Rio de Janeiro au Brésil, du haut du mont du Corcovado.\r\n\r\nElle est devenue au fil des ans un des emblèmes reconnus internationalement de la ville, au même titre que le Pain de Sucre, la plage de Copacabana ou le carnaval.\r\n\r\nElle fut conçue par l\'ingénieur brésilien Heitor da Silva Costa et réalisée par le sculpteur français Paul Landowski et le sculpteur roumain Gheorghe Leonida et érigée en collaboration avec l\'ingénieur français Albert Caquot.', 'christ.png');

-- --------------------------------------------------------

--
-- Structure de la table `wsbl_units`
--

DROP TABLE IF EXISTS `wsbl_units`;
CREATE TABLE IF NOT EXISTS `wsbl_units` (
  `wsbl_unit_id` int(11) NOT NULL AUTO_INCREMENT,
  `wsbl_unit_name` varchar(100) NOT NULL,
  `wsbl_unit_simple_name` varchar(100) NOT NULL,
  `wsbl_unit_value` smallint(6) NOT NULL,
  `wsbl_unit_overview` text NOT NULL,
  `wsbl_unit_img_path` text NOT NULL,
  PRIMARY KEY (`wsbl_unit_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `wsbl_units`
--

INSERT INTO `wsbl_units` (`wsbl_unit_id`, `wsbl_unit_name`, `wsbl_unit_simple_name`, `wsbl_unit_value`, `wsbl_unit_overview`, `wsbl_unit_img_path`) VALUES
(1, 'Shaquille O\'Neal', 'shaquille oneal', 2160, 'Nullam vel porttitor massa. Donec vehicula odio at erat euismod faucibus. Mauris ex diam, luctus ut lectus vitae, venenatis venenatis arcu. Sed ullamcorper justo nec felis laoreet, vel vulputate neque bibendum. Donec tincidunt massa sapien, vel.', 'shaq.png'),
(2, 'Stylo BIC', 'stylo bic', 149, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam feugiat maximus massa faucibus tincidunt. Cras sodales mi vitae mi placerat vestibulum. Nunc varius auctor facilisis. Cras gravida viverra molestie. Nullam leo eros, porta luctus consequat vitae, luctus ac sapien. Praesent eget nisi porta, efficitur libero eu, dictum purus. Phasellus tincidunt, ipsum varius volutpat feugiat, dui magna eleifend ante, ac rutrum orci lacus at massa.\n\nNullam vel porttitor massa. Donec vehicula odio at erat euismod faucibus. Mauris ex diam, luctus ut lectus vitae, venenatis venenatis arcu. Sed ullamcorper justo nec felis laoreet, vel vulputate neque bibendum. Donec tincidunt massa sapien, vel.', 'stylo.png'),
(3, 'IPhone 13 Pro Max', 'iphone 13 pro max', 161, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam feugiat maximus massa faucibus tincidunt. Cras sodales mi vitae mi placerat vestibulum. Nunc varius auctor facilisis. Cras gravida viverra molestie. Nullam leo eros, porta luctus consequat vitae, luctus ac sapien. Praesent eget nisi porta, efficitur libero eu, dictum purus. Phasellus tincidunt, ipsum varius volutpat feugiat, dui magna eleifend ante, ac rutrum orci lacus at massa.\n\nNullam vel porttitor massa. Donec vehicula odio at erat euismod faucibus. Mauris ex diam, luctus ut lectus vitae, venenatis venenatis arcu. Sed ullamcorper justo nec felis laoreet, vel vulputate neque bibendum. Donec tincidunt massa sapien, vel.', 'iphone.png');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
