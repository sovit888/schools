-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 01, 2020 at 06:08 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `schools`
--

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `state_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `state_id`) VALUES
(1, 'Pokhara', 4),
(2, 'Damauli', 4),
(3, 'Kathmandu', 3),
(4, 'Lalitpur', 3),
(5, 'Bhaktapur', 3),
(6, 'Sanepa', 2),
(7, 'Birendranagar', 5),
(8, 'Kapurkot', 5),
(9, 'Sunauli', 5),
(10, 'Baglung', 5),
(11, 'Jhapa', 1),
(12, 'Tikapur', 7),
(13, 'Chainpur', 5),
(14, 'Narayanghat', 5),
(15, 'Jumla', 6),
(16, 'Dhulikhel', 3),
(17, 'Bhairahawa', 5),
(18, 'Beni', 4),
(19, 'Lamki', 7),
(20, 'Dhangadhi', 2),
(21, 'Lumbini', 5),
(22, 'Banepa', 2),
(23, 'Kakarvitta', 2),
(24, 'Itahari', 2),
(25, 'Dharan', 2);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `sortname` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `sortname`, `name`) VALUES
(1, 'AF', 'Afghanistan'),
(2, 'AL', 'Albania'),
(3, 'DZ', 'Algeria'),
(4, 'AS', 'American Samoa'),
(5, 'AD', 'Andorra'),
(6, 'AO', 'Angola'),
(7, 'AI', 'Anguilla'),
(8, 'AQ', 'Antarctica'),
(9, 'AG', 'Antigua And Barbuda'),
(10, 'AR', 'Argentina'),
(11, 'AM', 'Armenia'),
(12, 'AW', 'Aruba'),
(13, 'AU', 'Australia'),
(14, 'AT', 'Austria'),
(15, 'AZ', 'Azerbaijan'),
(16, 'BS', 'Bahamas The'),
(17, 'BH', 'Bahrain'),
(18, 'BD', 'Bangladesh'),
(19, 'BB', 'Barbados'),
(20, 'BY', 'Belarus'),
(21, 'BE', 'Belgium'),
(22, 'BZ', 'Belize'),
(23, 'BJ', 'Benin'),
(24, 'BM', 'Bermuda'),
(25, 'BT', 'Bhutan'),
(26, 'BO', 'Bolivia'),
(27, 'BA', 'Bosnia and Herzegovina'),
(28, 'BW', 'Botswana'),
(29, 'BV', 'Bouvet Island'),
(30, 'BR', 'Brazil'),
(31, 'IO', 'British Indian Ocean Territory'),
(32, 'BN', 'Brunei'),
(33, 'BG', 'Bulgaria'),
(34, 'BF', 'Burkina Faso'),
(35, 'BI', 'Burundi'),
(36, 'KH', 'Cambodia'),
(37, 'CM', 'Cameroon'),
(38, 'CA', 'Canada'),
(39, 'CV', 'Cape Verde'),
(40, 'KY', 'Cayman Islands'),
(41, 'CF', 'Central African Republic'),
(42, 'TD', 'Chad'),
(43, 'CL', 'Chile'),
(44, 'CN', 'China'),
(45, 'CX', 'Christmas Island'),
(46, 'CC', 'Cocos (Keeling) Islands'),
(47, 'CO', 'Colombia'),
(48, 'KM', 'Comoros'),
(49, 'CG', 'Congo'),
(50, 'CD', 'Congo The Democratic Republic Of The'),
(51, 'CK', 'Cook Islands'),
(52, 'CR', 'Costa Rica'),
(53, 'CI', 'Cote D\'Ivoire (Ivory Coast)'),
(54, 'HR', 'Croatia (Hrvatska)'),
(55, 'CU', 'Cuba'),
(56, 'CY', 'Cyprus'),
(57, 'CZ', 'Czech Republic'),
(58, 'DK', 'Denmark'),
(59, 'DJ', 'Djibouti'),
(60, 'DM', 'Dominica'),
(61, 'DO', 'Dominican Republic'),
(62, 'TP', 'East Timor'),
(63, 'EC', 'Ecuador'),
(64, 'EG', 'Egypt'),
(65, 'SV', 'El Salvador'),
(66, 'GQ', 'Equatorial Guinea'),
(67, 'ER', 'Eritrea'),
(68, 'EE', 'Estonia'),
(69, 'ET', 'Ethiopia'),
(70, 'XA', 'External Territories of Australia'),
(71, 'FK', 'Falkland Islands'),
(72, 'FO', 'Faroe Islands'),
(73, 'FJ', 'Fiji Islands'),
(74, 'FI', 'Finland'),
(75, 'FR', 'France'),
(76, 'GF', 'French Guiana'),
(77, 'PF', 'French Polynesia'),
(78, 'TF', 'French Southern Territories'),
(79, 'GA', 'Gabon'),
(80, 'GM', 'Gambia The'),
(81, 'GE', 'Georgia'),
(82, 'DE', 'Germany'),
(83, 'GH', 'Ghana'),
(84, 'GI', 'Gibraltar'),
(85, 'GR', 'Greece'),
(86, 'GL', 'Greenland'),
(87, 'GD', 'Grenada'),
(88, 'GP', 'Guadeloupe'),
(89, 'GU', 'Guam'),
(90, 'GT', 'Guatemala'),
(91, 'XU', 'Guernsey and Alderney'),
(92, 'GN', 'Guinea'),
(93, 'GW', 'Guinea-Bissau'),
(94, 'GY', 'Guyana'),
(95, 'HT', 'Haiti'),
(96, 'HM', 'Heard and McDonald Islands'),
(97, 'HN', 'Honduras'),
(98, 'HK', 'Hong Kong S.A.R.'),
(99, 'HU', 'Hungary'),
(100, 'IS', 'Iceland'),
(101, 'IN', 'India'),
(102, 'ID', 'Indonesia'),
(103, 'IR', 'Iran'),
(104, 'IQ', 'Iraq'),
(105, 'IE', 'Ireland'),
(106, 'IL', 'Israel'),
(107, 'IT', 'Italy'),
(108, 'JM', 'Jamaica'),
(109, 'JP', 'Japan'),
(110, 'XJ', 'Jersey'),
(111, 'JO', 'Jordan'),
(112, 'KZ', 'Kazakhstan'),
(113, 'KE', 'Kenya'),
(114, 'KI', 'Kiribati'),
(115, 'KP', 'Korea North'),
(116, 'KR', 'Korea South'),
(117, 'KW', 'Kuwait'),
(118, 'KG', 'Kyrgyzstan'),
(119, 'LA', 'Laos'),
(120, 'LV', 'Latvia'),
(121, 'LB', 'Lebanon'),
(122, 'LS', 'Lesotho'),
(123, 'LR', 'Liberia'),
(124, 'LY', 'Libya'),
(125, 'LI', 'Liechtenstein'),
(126, 'LT', 'Lithuania'),
(127, 'LU', 'Luxembourg'),
(128, 'MO', 'Macau S.A.R.'),
(129, 'MK', 'Macedonia'),
(130, 'MG', 'Madagascar'),
(131, 'MW', 'Malawi'),
(132, 'MY', 'Malaysia'),
(133, 'MV', 'Maldives'),
(134, 'ML', 'Mali'),
(135, 'MT', 'Malta'),
(136, 'XM', 'Man (Isle of)'),
(137, 'MH', 'Marshall Islands'),
(138, 'MQ', 'Martinique'),
(139, 'MR', 'Mauritania'),
(140, 'MU', 'Mauritius'),
(141, 'YT', 'Mayotte'),
(142, 'MX', 'Mexico'),
(143, 'FM', 'Micronesia'),
(144, 'MD', 'Moldova'),
(145, 'MC', 'Monaco'),
(146, 'MN', 'Mongolia'),
(147, 'MS', 'Montserrat'),
(148, 'MA', 'Morocco'),
(149, 'MZ', 'Mozambique'),
(150, 'MM', 'Myanmar'),
(151, 'NA', 'Namibia'),
(152, 'NR', 'Nauru'),
(153, 'NP', 'Nepal'),
(154, 'AN', 'Netherlands Antilles'),
(155, 'NL', 'Netherlands The'),
(156, 'NC', 'New Caledonia'),
(157, 'NZ', 'New Zealand'),
(158, 'NI', 'Nicaragua'),
(159, 'NE', 'Niger'),
(160, 'NG', 'Nigeria'),
(161, 'NU', 'Niue'),
(162, 'NF', 'Norfolk Island'),
(163, 'MP', 'Northern Mariana Islands'),
(164, 'NO', 'Norway'),
(165, 'OM', 'Oman'),
(166, 'PK', 'Pakistan'),
(167, 'PW', 'Palau'),
(168, 'PS', 'Palestinian Territory Occupied'),
(169, 'PA', 'Panama'),
(170, 'PG', 'Papua new Guinea'),
(171, 'PY', 'Paraguay'),
(172, 'PE', 'Peru'),
(173, 'PH', 'Philippines'),
(174, 'PN', 'Pitcairn Island'),
(175, 'PL', 'Poland'),
(176, 'PT', 'Portugal'),
(177, 'PR', 'Puerto Rico'),
(178, 'QA', 'Qatar'),
(179, 'RE', 'Reunion'),
(180, 'RO', 'Romania'),
(181, 'RU', 'Russia'),
(182, 'RW', 'Rwanda'),
(183, 'SH', 'Saint Helena'),
(184, 'KN', 'Saint Kitts And Nevis'),
(185, 'LC', 'Saint Lucia'),
(186, 'PM', 'Saint Pierre and Miquelon'),
(187, 'VC', 'Saint Vincent And The Grenadines'),
(188, 'WS', 'Samoa'),
(189, 'SM', 'San Marino'),
(190, 'ST', 'Sao Tome and Principe'),
(191, 'SA', 'Saudi Arabia'),
(192, 'SN', 'Senegal'),
(193, 'RS', 'Serbia'),
(194, 'SC', 'Seychelles'),
(195, 'SL', 'Sierra Leone'),
(196, 'SG', 'Singapore'),
(197, 'SK', 'Slovakia'),
(198, 'SI', 'Slovenia'),
(199, 'XG', 'Smaller Territories of the UK'),
(200, 'SB', 'Solomon Islands'),
(201, 'SO', 'Somalia'),
(202, 'ZA', 'South Africa'),
(203, 'GS', 'South Georgia'),
(204, 'SS', 'South Sudan'),
(205, 'ES', 'Spain'),
(206, 'LK', 'Sri Lanka'),
(207, 'SD', 'Sudan'),
(208, 'SR', 'Suriname'),
(209, 'SJ', 'Svalbard And Jan Mayen Islands'),
(210, 'SZ', 'Swaziland'),
(211, 'SE', 'Sweden'),
(212, 'CH', 'Switzerland'),
(213, 'SY', 'Syria'),
(214, 'TW', 'Taiwan'),
(215, 'TJ', 'Tajikistan'),
(216, 'TZ', 'Tanzania'),
(217, 'TH', 'Thailand'),
(218, 'TG', 'Togo'),
(219, 'TK', 'Tokelau'),
(220, 'TO', 'Tonga'),
(221, 'TT', 'Trinidad And Tobago'),
(222, 'TN', 'Tunisia'),
(223, 'TR', 'Turkey'),
(224, 'TM', 'Turkmenistan'),
(225, 'TC', 'Turks And Caicos Islands'),
(226, 'TV', 'Tuvalu'),
(227, 'UG', 'Uganda'),
(228, 'UA', 'Ukraine'),
(229, 'AE', 'United Arab Emirates'),
(230, 'GB', 'United Kingdom'),
(231, 'US', 'United States'),
(232, 'UM', 'United States Minor Outlying Islands'),
(233, 'UY', 'Uruguay'),
(234, 'UZ', 'Uzbekistan'),
(235, 'VU', 'Vanuatu'),
(236, 'VA', 'Vatican City State (Holy See)'),
(237, 'VE', 'Venezuela'),
(238, 'VN', 'Vietnam'),
(239, 'VG', 'Virgin Islands (British)'),
(240, 'VI', 'Virgin Islands (US)'),
(241, 'WF', 'Wallis And Futuna Islands'),
(242, 'EH', 'Western Sahara'),
(243, 'YE', 'Yemen'),
(244, 'YU', 'Yugoslavia'),
(245, 'ZM', 'Zambia'),
(246, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `course` varchar(250) NOT NULL,
  `subject` varchar(250) NOT NULL,
  `fname` varchar(250) NOT NULL,
  `mname` varchar(250) NOT NULL,
  `lname` varchar(250) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `gname` varchar(250) NOT NULL,
  `ocp` varchar(50) NOT NULL,
  `income` varchar(250) NOT NULL,
  `category` varchar(250) NOT NULL,
  `pchal` varchar(250) NOT NULL,
  `nationality` varchar(250) NOT NULL,
  `mobno` varchar(50) NOT NULL,
  `emailid` varchar(250) NOT NULL,
  `country` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `dist` varchar(50) NOT NULL,
  `padd` text NOT NULL,
  `cadd` text NOT NULL,
  `board` varchar(50) NOT NULL,
  `roll` varchar(50) NOT NULL,
  `pyear` varchar(50) NOT NULL,
  `sub` varchar(250) NOT NULL,
  `marks` bigint(100) NOT NULL,
  `fmarks` bigint(100) NOT NULL,
  `board1` varchar(250) NOT NULL,
  `roll1` varchar(250) NOT NULL,
  `yop1` varchar(250) NOT NULL,
  `sub1` varchar(250) NOT NULL,
  `session` varchar(250) NOT NULL,
  `regdate` timestamp NOT NULL DEFAULT current_timestamp(),
  `marks1` varchar(50) NOT NULL,
  `fmarks1` varchar(50) NOT NULL,
  `regno` varchar(250) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`course`, `subject`, `fname`, `mname`, `lname`, `gender`, `gname`, `ocp`, `income`, `category`, `pchal`, `nationality`, `mobno`, `emailid`, `country`, `state`, `dist`, `padd`, `cadd`, `board`, `roll`, `pyear`, `sub`, `marks`, `fmarks`, `board1`, `roll1`, `yop1`, `sub1`, `session`, `regdate`, `marks1`, `fmarks1`, `regno`, `id`) VALUES
('13', 'OPERATING SYSTEM+DATA STRUCTURE+ NETWOKING', 'Sovit', '', 'Thapa', 'Male', 'IT Service', 'Male', '500000', 'general', 'general', 'Nepali', '9826184961', 'sovitthapa@gmail.com', '101', '4', '', 'Tanahun', 'Mayur Vihar', '10 SLC BOARD', '12 NEB Board', '123456', '654332', 2010, 2012, 'Nepali', 'English', '80', '60', '2010-2011', '2019-05-27 17:11:59', '100', '100', '1307692170', 3);

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `id` int(11) NOT NULL,
  `session` varchar(50) NOT NULL,
  `postingdate` date NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`id`, `session`, `postingdate`, `status`) VALUES
(1, '2010-2011', '2010-04-14', 0),
(2, '2011-2012', '2012-04-14', 0),
(3, '2012-2013', '2012-04-13', 0),
(4, '2013-2014', '2013-04-05', 0),
(5, '2013-2014', '2014-04-12', 0),
(6, '2014-2015', '2015-04-12', 0),
(7, '2015-2016', '2016-04-12', 1),
(8, '2017-2018', '0000-00-00', 0),
(9, '2018-2019', '2019-05-27', 0);

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name`, `country_id`) VALUES
(1, 'Mechi', 153),
(2, 'Janakpur', 153),
(3, 'Bagmati', 153),
(4, 'Gandaki', 153),
(5, 'Narayani', 153),
(6, 'Rapti', 153),
(7, 'Seti', 153);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subid` int(11) NOT NULL,
  `cshort` varchar(50) DEFAULT NULL,
  `cfull` varchar(250) DEFAULT NULL,
  `sub1` varchar(250) DEFAULT NULL,
  `sub2` varchar(250) DEFAULT NULL,
  `sub3` varchar(250) DEFAULT NULL,
  `dt_created` datetime NOT NULL DEFAULT current_timestamp(),
  `update_date` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subid`, `cshort`, `cfull`, `sub1`, `sub2`, `sub3`, `dt_created`, `update_date`) VALUES
(3, '8', 'MASTER OF SCIENCE', 'Mathematics', 'Physics', 'Chemistry', '2016-04-16 18:08:27', NULL),
(6, '10', 'BACHELOR OF TECHNOLOGY', 'Engineering Drawing', 'Computer Programming', 'Computer Science Essentials', '2016-04-16 19:51:43', NULL),
(7, '12', 'Bachelor of Arts ', 'Economics', 'History', 'Geography', '2019-05-27 22:34:40', NULL),
(8, '9', 'BACHELOR OF COMMERCE', 'test1', 'test2', 'test3', '2019-05-27 22:36:36', NULL),
(9, '13', 'Master of Technology', 'Operating System', 'Data Structure', 'Netwoking', '2019-05-27 22:39:41', '27-05-2019');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_course`
--

CREATE TABLE `tbl_course` (
  `cid` int(11) NOT NULL,
  `cshort` varchar(250) DEFAULT NULL,
  `cfull` varchar(250) DEFAULT NULL,
  `cdate` varchar(50) DEFAULT NULL,
  `update_date` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_course`
--

INSERT INTO `tbl_course` (`cid`, `cshort`, `cfull`, `cdate`, `update_date`) VALUES
(7, 'M.C.A.', 'MASTER OF COMPUTER APPLICATION', '11-04-2016', '27-05-2019'),
(8, 'M.S.C', 'MASTER OF SCIENCE', '11-04-2016', NULL),
(9, 'B.Com', 'BACHELOR OF COMMERCE', '12-04-2016', NULL),
(10, 'B.TECH', 'BACHELOR OF TECHNOLOGY', '12-04-2016', NULL),
(11, 'M.B.A', 'MASTER OF BUSINESS ADMINISTRATION', '17-04-2016', NULL),
(12, 'B.A.', 'Bachelor of Arts ', '27-05-2019', '27-05-2019'),
(13, 'M.Tech', 'Master of Technology', '27-05-2019', '27-05-2019');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

CREATE TABLE `tbl_login` (
  `id` int(11) NOT NULL,
  `loginid` varchar(250) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`id`, `loginid`, `password`) VALUES
(1, 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subid`);

--
-- Indexes for table `tbl_course`
--
ALTER TABLE `tbl_course`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `tbl_login`
--
ALTER TABLE `tbl_login`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47577;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=249;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4121;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_course`
--
ALTER TABLE `tbl_course`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_login`
--
ALTER TABLE `tbl_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
