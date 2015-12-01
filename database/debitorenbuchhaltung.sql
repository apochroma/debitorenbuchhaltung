-- phpMyAdmin SQL Dump
-- version 4.0.10.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Erstellungszeit: 01. Dez 2015 um 15:04
-- Server Version: 5.5.45-cll
-- PHP-Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Datenbank: `spinasor_debitorenbuchhaltung`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `address`
--

CREATE TABLE IF NOT EXISTS `address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `street` varchar(256) NOT NULL,
  `street1` varchar(256) DEFAULT NULL,
  `zip` varchar(256) NOT NULL,
  `city` varchar(256) NOT NULL,
  `country_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `address_country` (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `company`
--

CREATE TABLE IF NOT EXISTS `company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(256) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `company_address`
--

CREATE TABLE IF NOT EXISTS `company_address` (
  `company_id` int(11) NOT NULL,
  `address_id` int(11) NOT NULL,
  PRIMARY KEY (`company_id`,`address_id`),
  KEY `company_address_address` (`address_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `country`
--

CREATE TABLE IF NOT EXISTS `country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_name` varchar(256) NOT NULL,
  `country_code` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=247 ;

--
-- Daten für Tabelle `country`
--

INSERT INTO `country` (`id`, `country_name`, `country_code`) VALUES
(1, 'Afghanistan', 'AF'),
(2, 'Albania', 'AL'),
(3, 'Algeria', 'DZ'),
(4, 'American Samoa', 'DS'),
(5, 'Andorra', 'AD'),
(6, 'Angola', 'AO'),
(7, 'Anguilla', 'AI'),
(8, 'Antarctica', 'AQ'),
(9, 'Antigua and/or Barbuda', 'AG'),
(10, 'Argentina', 'AR'),
(11, 'Armenia', 'AM'),
(12, 'Aruba', 'AW'),
(13, 'Australia', 'AU'),
(14, 'Austria', 'AT'),
(15, 'Azerbaijan', 'AZ'),
(16, 'Bahamas', 'BS'),
(17, 'Bahrain', 'BH'),
(18, 'Bangladesh', 'BD'),
(19, 'Barbados', 'BB'),
(20, 'Belarus', 'BY'),
(21, 'Belgium', 'BE'),
(22, 'Belize', 'BZ'),
(23, 'Benin', 'BJ'),
(24, 'Bermuda', 'BM'),
(25, 'Bhutan', 'BT'),
(26, 'Bolivia', 'BO'),
(27, 'Bosnia and Herzegovina', 'BA'),
(28, 'Botswana', 'BW'),
(29, 'Bouvet Island', 'BV'),
(30, 'Brazil', 'BR'),
(31, 'British Indian Ocean Territory', 'IO'),
(32, 'Brunei Darussalam', 'BN'),
(33, 'Bulgaria', 'BG'),
(34, 'Burkina Faso', 'BF'),
(35, 'Burundi', 'BI'),
(36, 'Cambodia', 'KH'),
(37, 'Cameroon', 'CM'),
(38, 'Canada', 'CA'),
(39, 'Cape Verde', 'CV'),
(40, 'Cayman Islands', 'KY'),
(41, 'Central African Republic', 'CF'),
(42, 'Chad', 'TD'),
(43, 'Chile', 'CL'),
(44, 'China', 'CN'),
(45, 'Christmas Island', 'CX'),
(46, 'Cocos (Keeling) Islands', 'CC'),
(47, 'Colombia', 'CO'),
(48, 'Comoros', 'KM'),
(49, 'Congo', 'CG'),
(50, 'Cook Islands', 'CK'),
(51, 'Costa Rica', 'CR'),
(52, 'Croatia (Hrvatska)', 'HR'),
(53, 'Cuba', 'CU'),
(54, 'Cyprus', 'CY'),
(55, 'Czech Republic', 'CZ'),
(56, 'Denmark', 'DK'),
(57, 'Djibouti', 'DJ'),
(58, 'Dominica', 'DM'),
(59, 'Dominican Republic', 'DO'),
(60, 'East Timor', 'TP'),
(61, 'Ecuador', 'EC'),
(62, 'Egypt', 'EG'),
(63, 'El Salvador', 'SV'),
(64, 'Equatorial Guinea', 'GQ'),
(65, 'Eritrea', 'ER'),
(66, 'Estonia', 'EE'),
(67, 'Ethiopia', 'ET'),
(68, 'Falkland Islands (Malvinas)', 'FK'),
(69, 'Faroe Islands', 'FO'),
(70, 'Fiji', 'FJ'),
(71, 'Finland', 'FI'),
(72, 'France', 'FR'),
(73, 'France, Metropolitan', 'FX'),
(74, 'French Guiana', 'GF'),
(75, 'French Polynesia', 'PF'),
(76, 'French Southern Territories', 'TF'),
(77, 'Gabon', 'GA'),
(78, 'Gambia', 'GM'),
(79, 'Georgia', 'GE'),
(80, 'Germany', 'DE'),
(81, 'Ghana', 'GH'),
(82, 'Gibraltar', 'GI'),
(83, 'Guernsey', 'GK'),
(84, 'Greece', 'GR'),
(85, 'Greenland', 'GL'),
(86, 'Grenada', 'GD'),
(87, 'Guadeloupe', 'GP'),
(88, 'Guam', 'GU'),
(89, 'Guatemala', 'GT'),
(90, 'Guinea', 'GN'),
(91, 'Guinea-Bissau', 'GW'),
(92, 'Guyana', 'GY'),
(93, 'Haiti', 'HT'),
(94, 'Heard and Mc Donald Islands', 'HM'),
(95, 'Honduras', 'HN'),
(96, 'Hong Kong', 'HK'),
(97, 'Hungary', 'HU'),
(98, 'Iceland', 'IS'),
(99, 'India', 'IN'),
(100, 'Isle of Man', 'IM'),
(101, 'Indonesia', 'ID'),
(102, 'Iran (Islamic Republic of)', 'IR'),
(103, 'Iraq', 'IQ'),
(104, 'Ireland', 'IE'),
(105, 'Israel', 'IL'),
(106, 'Italy', 'IT'),
(107, 'Ivory Coast', 'CI'),
(108, 'Jersey', 'JE'),
(109, 'Jamaica', 'JM'),
(110, 'Japan', 'JP'),
(111, 'Jordan', 'JO'),
(112, 'Kazakhstan', 'KZ'),
(113, 'Kenya', 'KE'),
(114, 'Kiribati', 'KI'),
(115, 'Korea, Democratic People''s Republic of', 'KP'),
(116, 'Korea, Republic of', 'KR'),
(117, 'Kosovo', 'XK'),
(118, 'Kuwait', 'KW'),
(119, 'Kyrgyzstan', 'KG'),
(120, 'Lao People''s Democratic Republic', 'LA'),
(121, 'Latvia', 'LV'),
(122, 'Lebanon', 'LB'),
(123, 'Lesotho', 'LS'),
(124, 'Liberia', 'LR'),
(125, 'Libyan Arab Jamahiriya', 'LY'),
(126, 'Liechtenstein', 'LI'),
(127, 'Lithuania', 'LT'),
(128, 'Luxembourg', 'LU'),
(129, 'Macau', 'MO'),
(130, 'Macedonia', 'MK'),
(131, 'Madagascar', 'MG'),
(132, 'Malawi', 'MW'),
(133, 'Malaysia', 'MY'),
(134, 'Maldives', 'MV'),
(135, 'Mali', 'ML'),
(136, 'Malta', 'MT'),
(137, 'Marshall Islands', 'MH'),
(138, 'Martinique', 'MQ'),
(139, 'Mauritania', 'MR'),
(140, 'Mauritius', 'MU'),
(141, 'Mayotte', 'TY'),
(142, 'Mexico', 'MX'),
(143, 'Micronesia, Federated States of', 'FM'),
(144, 'Moldova, Republic of', 'MD'),
(145, 'Monaco', 'MC'),
(146, 'Mongolia', 'MN'),
(147, 'Montenegro', 'ME'),
(148, 'Montserrat', 'MS'),
(149, 'Morocco', 'MA'),
(150, 'Mozambique', 'MZ'),
(151, 'Myanmar', 'MM'),
(152, 'Namibia', 'NA'),
(153, 'Nauru', 'NR'),
(154, 'Nepal', 'NP'),
(155, 'Netherlands', 'NL'),
(156, 'Netherlands Antilles', 'AN'),
(157, 'New Caledonia', 'NC'),
(158, 'New Zealand', 'NZ'),
(159, 'Nicaragua', 'NI'),
(160, 'Niger', 'NE'),
(161, 'Nigeria', 'NG'),
(162, 'Niue', 'NU'),
(163, 'Norfolk Island', 'NF'),
(164, 'Northern Mariana Islands', 'MP'),
(165, 'Norway', 'NO'),
(166, 'Oman', 'OM'),
(167, 'Pakistan', 'PK'),
(168, 'Palau', 'PW'),
(169, 'Palestine', 'PS'),
(170, 'Panama', 'PA'),
(171, 'Papua New Guinea', 'PG'),
(172, 'Paraguay', 'PY'),
(173, 'Peru', 'PE'),
(174, 'Philippines', 'PH'),
(175, 'Pitcairn', 'PN'),
(176, 'Poland', 'PL'),
(177, 'Portugal', 'PT'),
(178, 'Puerto Rico', 'PR'),
(179, 'Qatar', 'QA'),
(180, 'Reunion', 'RE'),
(181, 'Romania', 'RO'),
(182, 'Russian Federation', 'RU'),
(183, 'Rwanda', 'RW'),
(184, 'Saint Kitts and Nevis', 'KN'),
(185, 'Saint Lucia', 'LC'),
(186, 'Saint Vincent and the Grenadines', 'VC'),
(187, 'Samoa', 'WS'),
(188, 'San Marino', 'SM'),
(189, 'Sao Tome and Principe', 'ST'),
(190, 'Saudi Arabia', 'SA'),
(191, 'Senegal', 'SN'),
(192, 'Serbia', 'RS'),
(193, 'Seychelles', 'SC'),
(194, 'Sierra Leone', 'SL'),
(195, 'Singapore', 'SG'),
(196, 'Slovakia', 'SK'),
(197, 'Slovenia', 'SI'),
(198, 'Solomon Islands', 'SB'),
(199, 'Somalia', 'SO'),
(200, 'South Africa', 'ZA'),
(201, 'South Georgia South Sandwich Islands', 'GS'),
(202, 'Spain', 'ES'),
(203, 'Sri Lanka', 'LK'),
(204, 'St. Helena', 'SH'),
(205, 'St. Pierre and Miquelon', 'PM'),
(206, 'Sudan', 'SD'),
(207, 'Suriname', 'SR'),
(208, 'Svalbard and Jan Mayen Islands', 'SJ'),
(209, 'Swaziland', 'SZ'),
(210, 'Sweden', 'SE'),
(211, 'Switzerland', 'CH'),
(212, 'Syrian Arab Republic', 'SY'),
(213, 'Taiwan', 'TW'),
(214, 'Tajikistan', 'TJ'),
(215, 'Tanzania, United Republic of', 'TZ'),
(216, 'Thailand', 'TH'),
(217, 'Togo', 'TG'),
(218, 'Tokelau', 'TK'),
(219, 'Tonga', 'TO'),
(220, 'Trinidad and Tobago', 'TT'),
(221, 'Tunisia', 'TN'),
(222, 'Turkey', 'TR'),
(223, 'Turkmenistan', 'TM'),
(224, 'Turks and Caicos Islands', 'TC'),
(225, 'Tuvalu', 'TV'),
(226, 'Uganda', 'UG'),
(227, 'Ukraine', 'UA'),
(228, 'United Arab Emirates', 'AE'),
(229, 'United Kingdom', 'GB'),
(230, 'United States', 'US'),
(231, 'United States minor outlying islands', 'UM'),
(232, 'Uruguay', 'UY'),
(233, 'Uzbekistan', 'UZ'),
(234, 'Vanuatu', 'VU'),
(235, 'Vatican City State', 'VA'),
(236, 'Venezuela', 'VE'),
(237, 'Vietnam', 'VN'),
(238, 'Virgin Islands (British)', 'VG'),
(239, 'Virgin Islands (U.S.)', 'VI'),
(240, 'Wallis and Futuna Islands', 'WF'),
(241, 'Western Sahara', 'EH'),
(242, 'Yemen', 'YE'),
(243, 'Yugoslavia', 'YU'),
(244, 'Zaire', 'ZR'),
(245, 'Zambia', 'ZM'),
(246, 'Zimbabwe', 'ZW');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `expiration`
--

CREATE TABLE IF NOT EXISTS `expiration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `expiration_days` varchar(256) DEFAULT '',
  `invoice_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `expiration_invoice` (`invoice_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `invoice`
--

CREATE TABLE IF NOT EXISTS `invoice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_id` int(11) DEFAULT NULL,
  `mycompany_id` varchar(256) DEFAULT '',
  `expiration_id` varchar(256) DEFAULT NULL,
  `subject` varchar(256) DEFAULT '',
  `invoice_number` varchar(256) DEFAULT '',
  `invoice_date` varchar(256) DEFAULT '',
  `status_id` varchar(256) DEFAULT '',
  `work_id` varchar(256) DEFAULT '',
  `work_total_id` varchar(256) DEFAULT '',
  `company_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `invoice_company` (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `mycompany`
--

CREATE TABLE IF NOT EXISTS `mycompany` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(256) DEFAULT '',
  `pdf_template` varchar(256) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `mycompany_address`
--

CREATE TABLE IF NOT EXISTS `mycompany_address` (
  `address_id` int(11) NOT NULL,
  `mycompany_id` int(11) NOT NULL,
  PRIMARY KEY (`address_id`,`mycompany_id`),
  KEY `company_adress_mycompany` (`mycompany_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `person`
--

CREATE TABLE IF NOT EXISTS `person` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(256) DEFAULT '',
  `lastname` varchar(256) DEFAULT '',
  `email` varchar(256) DEFAULT '',
  `phone` varchar(256) DEFAULT '',
  `picture` varchar(256) DEFAULT NULL,
  `company_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `mycompany_id` int(11) NOT NULL,
  `address_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `person_address` (`address_id`),
  KEY `person_company` (`company_id`),
  KEY `person_mycompany` (`mycompany_id`),
  KEY `person_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `status`
--

CREATE TABLE IF NOT EXISTS `status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status_id` int(11) DEFAULT NULL,
  `status` varchar(256) DEFAULT '',
  `invoice_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status_invoice` (`invoice_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `status_date`
--

CREATE TABLE IF NOT EXISTS `status_date` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status_id` varchar(256) DEFAULT '',
  `paid_date` date DEFAULT NULL,
  `pending_date` date DEFAULT NULL,
  `reminded_date` date DEFAULT NULL,
  `invoice_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status_date_invoice` (`invoice_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` varchar(256) DEFAULT NULL,
  `username` varchar(256) DEFAULT NULL,
  `password` varchar(256) DEFAULT NULL,
  `role` varchar(256) DEFAULT NULL,
  `mycompany_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_mycompany` (`mycompany_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `work`
--

CREATE TABLE IF NOT EXISTS `work` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `work_id` varchar(256) DEFAULT '',
  `description` text,
  `rate` varchar(256) DEFAULT NULL,
  `invoice_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `work_invoice` (`invoice_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `work_total`
--

CREATE TABLE IF NOT EXISTS `work_total` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `work_id` int(11) DEFAULT NULL,
  `total` varchar(256) DEFAULT '',
  `invoice_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `work_total_invoice` (`invoice_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `address_country` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`);

--
-- Constraints der Tabelle `company_address`
--
ALTER TABLE `company_address`
  ADD CONSTRAINT `company_address_company` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`),
  ADD CONSTRAINT `company_address_address` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`);

--
-- Constraints der Tabelle `expiration`
--
ALTER TABLE `expiration`
  ADD CONSTRAINT `expiration_invoice` FOREIGN KEY (`invoice_id`) REFERENCES `invoice` (`id`);

--
-- Constraints der Tabelle `invoice`
--
ALTER TABLE `invoice`
  ADD CONSTRAINT `invoice_company` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`);

--
-- Constraints der Tabelle `mycompany_address`
--
ALTER TABLE `mycompany_address`
  ADD CONSTRAINT `company_adress_mycompany` FOREIGN KEY (`mycompany_id`) REFERENCES `mycompany` (`id`),
  ADD CONSTRAINT `company_adress_address` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`);

--
-- Constraints der Tabelle `person`
--
ALTER TABLE `person`
  ADD CONSTRAINT `person_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `person_address` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`),
  ADD CONSTRAINT `person_company` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`),
  ADD CONSTRAINT `person_mycompany` FOREIGN KEY (`mycompany_id`) REFERENCES `mycompany` (`id`);

--
-- Constraints der Tabelle `status`
--
ALTER TABLE `status`
  ADD CONSTRAINT `status_invoice` FOREIGN KEY (`invoice_id`) REFERENCES `invoice` (`id`);

--
-- Constraints der Tabelle `status_date`
--
ALTER TABLE `status_date`
  ADD CONSTRAINT `status_date_invoice` FOREIGN KEY (`invoice_id`) REFERENCES `invoice` (`id`);

--
-- Constraints der Tabelle `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_mycompany` FOREIGN KEY (`mycompany_id`) REFERENCES `mycompany` (`id`);

--
-- Constraints der Tabelle `work`
--
ALTER TABLE `work`
  ADD CONSTRAINT `work_invoice` FOREIGN KEY (`invoice_id`) REFERENCES `invoice` (`id`);

--
-- Constraints der Tabelle `work_total`
--
ALTER TABLE `work_total`
  ADD CONSTRAINT `work_total_invoice` FOREIGN KEY (`invoice_id`) REFERENCES `invoice` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
