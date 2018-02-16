-- phpMyAdmin SQL Dump
-- version 4.0.5
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 13, 2016 at 06:00 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tutsplus_cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `pubdate` date NOT NULL,
  `body` text NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `slug`, `pubdate`, `body`, `created`, `modified`) VALUES
(1, 'Welcome the new Staff member!', 'Welcome-the-new-Staff-member', '2015-11-08', '<p>We Welcome the new staff member and Hope they stay with us in the movement of the company.</p>', '2015-11-08 11:34:09', '2015-11-08 11:34:09'),
(3, 'We have it here!', 'here-it-is', '2015-11-03', '<p>This is it!</p>', '2015-11-08 11:49:22', '2015-11-08 11:49:22'),
(4, 'Paris is hit with an Attack!', 'paris-attack', '2015-02-12', '<p>Paris was hit with an attack that was a major assault around the world. It was a terrible tragedy.</p>', '2015-11-14 23:28:33', '2015-11-14 23:28:33'),
(5, 'Record for our company!', 'company-news', '2015-12-31', '<p>This is the company news information that I must tell you about.</p>', '2015-11-15 17:00:22', '2015-11-15 17:00:22'),
(6, 'Major Sales', 'sales-information', '2016-01-14', '<p>Major Sales information that the company has. &nbsp;Here''s the numbers.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', '2015-11-15 17:01:08', '2015-11-15 17:01:08'),
(7, 'Huge Deal of the Century', 'Huge-deal-of-the-century', '2015-11-17', '<p>&lt;p&gt;&amp;lt;p&amp;gt;This is a big deal of the century!&amp;lt;/p&amp;gt;&lt;/p&gt;</p>', '2015-11-17 19:44:55', '2015-11-17 19:44:55');

-- --------------------------------------------------------

--
-- Table structure for table `captcha`
--

CREATE TABLE IF NOT EXISTS `captcha` (
  `captcha_id` bigint(13) unsigned NOT NULL AUTO_INCREMENT,
  `captcha_time` int(10) unsigned NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `word` varchar(20) NOT NULL,
  PRIMARY KEY (`captcha_id`),
  KEY `word` (`word`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('55d9530cbdb0167484675c23cc74ecc46714fae9', '::1', 1469985732, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393938353637383b636170746368617c733a363a22614351655967223b696d6167657c733a31393a22313436393938353733322e373432362e6a7067223b),
('7ea0cb2df2b97c53ec52890e62048e4ec80f9f05', '::1', 1469986604, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393938363333363b),
('381b2814798b1fbe0bf3ba13eb63280a307f3b09', '::1', 1469986948, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393938363635313b),
('cc1b416fd6bfd35cd962143ddc92f3484543b29c', '::1', 1469987130, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393938373131363b),
('1bb0ec0eab4d1f46f7dbf8b5f255cc3de00d5102', '::1', 1469987565, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393938373438323b),
('8fc0a837a0d155e452d794779cadc5d82fd36c44', '::1', 1469988009, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393938373832323b),
('89ecb54b1239f2107e09d9e629e628317bacb2fa', '::1', 1469988366, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393938383135383b),
('a4069fe33278f29f8a913afd33c3309103da6e36', '::1', 1469989280, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393938383938393b),
('f1cb8abe18cdf2007ce18bb935e4297a99151c27', '::1', 1469989357, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393938393330313b),
('9e4d2d2f8eb23a6f6e9779b9f50134a9e7fdd1c1', '::1', 1469989916, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393938393631363b),
('d0fbb1f642e4b68e73d9b7e5297606e1d1055691', '::1', 1469990176, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393938393931383b),
('a39e86f891d68e71f966e35ecfdeef23d4618a3e', '::1', 1469990768, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393939303539333b),
('fa3d5c6039775d7bb851d0180d5dd1683f672450', '::1', 1469991644, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393939313634323b636170746368617c733a363a22316143676973223b696d6167657c733a31393a22313436393939313634342e333131392e6a7067223b6572726f727c733a3133333a223c64697620636c6173733d22616c65727420616c6572742d64616e6765722220726f6c653d22616c657274223e54686520456d61696c204164647265737320646f6573206e6f742065786973742c20506c6561736520636f6e7461637420696e666f406c6f74746f7472616b2e636f6d20666f7220617373697374616e63653c2f6469763e223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226e6577223b7d),
('8f80dc18477778fa467485b32ddeded84f19c21c', '::1', 1469992432, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393939323133323b636170746368617c733a363a224d4e4f796d43223b696d6167657c733a31393a22313436393939323433322e303533312e6a7067223b),
('50a93bd17239d87c726ab4e98e1bc0f6d15bbcb7', '::1', 1469992828, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393939323533363b636170746368617c733a363a2257364c59344f223b696d6167657c733a31393a22313436393939323832382e393138332e6a7067223b),
('c0baa70df5e9750c0ecfa01415d3703ecbfa813c', '::1', 1469993890, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393939333539323b636170746368617c733a363a22647441363872223b696d6167657c733a31393a22313436393939333839302e333633312e6a7067223b),
('05b88615241d1f5f3eef0ed2b67e11f64ed8aa6f', '::1', 1469993940, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393939333839343b636170746368617c733a363a22477348706455223b696d6167657c733a31383a22313436393939333931382e3538362e6a7067223b),
('1d9b18bd02277217f0ed598e79d00702ef47a223', '::1', 1469994438, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393939343239303b636170746368617c733a363a224a4d5a674375223b696d6167657c733a31393a22313436393939343338352e313531372e6a7067223b6572726f727c733a3133333a223c64697620636c6173733d22616c65727420616c6572742d64616e6765722220726f6c653d22616c657274223e54686520456d61696c204164647265737320646f6573206e6f742065786973742c20506c6561736520636f6e7461637420696e666f406c6f74746f7472616b2e636f6d20666f7220617373697374616e63653c2f6469763e223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226e6577223b7d),
('117a6c0caf0dac85cc12de2372f13a24c6ce5ec3', '::1', 1469994667, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393939343633303b6572726f727c733a3231303a223c64697620636c6173733d22616c65727420616c6572742d737563636573732220726f6c653d22616c657274223e3c7374726f6e673e416e20456d61696c207761732073656e7420746f2074686520656d61696c2061646472657373213c2f7374726f6e673e0d0a202020202020202020202020202020202020202020506c6561736520636865636b20796f7572206a756e6b20666f6c6465722c20696620796f7520646f6e27742073656520697420696e20796f757220696e626f7820696e203135206d696e757465732e3c2f6469763e223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226f6c64223b7d),
('ec4ce1a0c777a5cdcdfe4007269aa63e8eeb3ceb', '::1', 1470010733, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303031303633343b6572726f727c733a3231303a223c64697620636c6173733d22616c65727420616c6572742d737563636573732220726f6c653d22616c657274223e3c7374726f6e673e416e20456d61696c207761732073656e7420746f2074686520656d61696c2061646472657373213c2f7374726f6e673e0d0a202020202020202020202020202020202020202020506c6561736520636865636b20796f7572206a756e6b20666f6c6465722c20696620796f7520646f6e27742073656520697420696e20796f757220696e626f7820696e203135206d696e757465732e3c2f6469763e223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226e6577223b7d),
('9ea1b26a757b290ccfa055ba4b9cd27d220a5607', '::1', 1470011205, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303031313036323b6572726f727c733a3231303a223c64697620636c6173733d22616c65727420616c6572742d737563636573732220726f6c653d22616c657274223e3c7374726f6e673e416e20456d61696c207761732073656e7420746f2074686520656d61696c2061646472657373213c2f7374726f6e673e0d0a202020202020202020202020202020202020202020506c6561736520636865636b20796f7572206a756e6b20666f6c6465722c20696620796f7520646f6e27742073656520697420696e20796f757220696e626f7820696e203135206d696e757465732e3c2f6469763e223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226e6577223b7d),
('fab960ac312b19259eca84b02f3ebc96a6c89352', '::1', 1470011724, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303031313638333b6572726f727c733a3231303a223c64697620636c6173733d22616c65727420616c6572742d737563636573732220726f6c653d22616c657274223e3c7374726f6e673e416e20456d61696c207761732073656e7420746f2074686520656d61696c2061646472657373213c2f7374726f6e673e0d0a202020202020202020202020202020202020202020506c6561736520636865636b20796f7572206a756e6b20666f6c6465722c20696620796f7520646f6e27742073656520697420696e20796f757220696e626f7820696e203135206d696e757465732e3c2f6469763e223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226e6577223b7d),
('8d35753b58f81ff9d36709e1b43b3f45697bd56b', '::1', 1470014155, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303031343131363b6572726f727c733a3231303a223c64697620636c6173733d22616c65727420616c6572742d737563636573732220726f6c653d22616c657274223e3c7374726f6e673e416e20456d61696c207761732073656e7420746f2074686520656d61696c2061646472657373213c2f7374726f6e673e0d0a202020202020202020202020202020202020202020506c6561736520636865636b20796f7572206a756e6b20666f6c6465722c20696620796f7520646f6e27742073656520697420696e20796f757220696e626f7820696e203135206d696e757465732e3c2f6469763e223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226e6577223b7d),
('fed76fb7236ae0ca7afab84f2cff5340c2986d0d', '::1', 1470014575, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303031343331383b6572726f727c733a3231303a223c64697620636c6173733d22616c65727420616c6572742d737563636573732220726f6c653d22616c657274223e3c7374726f6e673e416e20456d61696c207761732073656e7420746f2074686520656d61696c2061646472657373213c2f7374726f6e673e0d0a202020202020202020202020202020202020202020506c6561736520636865636b20796f7572206a756e6b20666f6c6465722c20696620796f7520646f6e27742073656520697420696e20796f757220696e626f7820696e203135206d696e757465732e3c2f6469763e223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226f6c64223b7d636170746368617c733a363a2265597437696a223b696d6167657c733a31393a22313437303031343537352e333830362e6a7067223b),
('f062d22f224ba490cba8f85669f5ba440e7d0dbd', '::1', 1470014949, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303031343635383b636170746368617c733a363a2265597437696a223b696d6167657c733a31393a22313437303031343537352e333830362e6a7067223b),
('c7b0e022646d1aa92c3a2fce8060df44291d43f8', '::1', 1470015301, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303031353031363b636170746368617c733a363a2265597437696a223b696d6167657c733a31393a22313437303031343537352e333830362e6a7067223b),
('7e0dd7eb293fc8dab916d451271718d836d1c29a', '::1', 1470015348, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303031353333323b636170746368617c733a363a2265597437696a223b696d6167657c733a31393a22313437303031343537352e333830362e6a7067223b),
('004258507a6fa36a2a463866846b2fd52c9d05e8', '::1', 1470015760, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303031353733323b636170746368617c733a363a2265597437696a223b696d6167657c733a31393a22313437303031343537352e333830362e6a7067223b),
('796995a3c837358e193cbc8ef7729c8539590197', '::1', 1470016496, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303031363231303b636170746368617c733a363a2265597437696a223b696d6167657c733a31393a22313437303031343537352e333830362e6a7067223b),
('da5372ee871546dda84b217591f97dcfa332b124', '::1', 1470016329, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303031363330353b6572726f727c733a3231303a223c64697620636c6173733d22616c65727420616c6572742d737563636573732220726f6c653d22616c657274223e3c7374726f6e673e416e20456d61696c207761732073656e7420746f2074686520656d61696c2061646472657373213c2f7374726f6e673e0d0a202020202020202020202020202020202020202020506c6561736520636865636b20796f7572206a756e6b20666f6c6465722c20696620796f7520646f6e27742073656520697420696e20796f757220696e626f7820696e203135206d696e757465732e3c2f6469763e223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226e6577223b7d),
('9d1373ada1c2c5748504c02a091e059b80c49549', '::1', 1470016872, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303031363537343b),
('dd9c705a0ad1a55d880cfbafe45497a56c071138', '::1', 1470016881, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303031363838313b),
('8b7c352a1661fb2352ac706b87d736c0e0a06fe1', '::1', 1470017288, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303031373236363b),
('8b243fea3cbbf237bba7bc4705b9a875358d9b2f', '::1', 1470018388, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303031383233303b),
('cbdadef66388e6afa0a0b14d29c65dc20ace1ea4', '::1', 1470018589, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303031383533393b),
('a83e0857554b71e10c68c18eb5d4bf95a6f65669', '::1', 1470027882, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303032373738363b),
('2b612cda241d954e3a3906a95aac6fe3a137e057', '::1', 1470028236, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303032383133353b),
('68f1d0f0ad04ee19706aeed64644df67f4783e31', '::1', 1470030634, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303033303633343b),
('a72cba5ae3193014601d3b6b58d9c49400c5e38f', '::1', 1470030822, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303033303635333b),
('3ddbd99607d8bd16efe9ecf9df67af86210c9051', '::1', 1470031323, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303033313036313b636170746368617c733a363a22794c67784d42223b696d6167657c733a31393a22313437303033313036312e303832362e6a7067223b),
('bd90417f2a5739931cc4e0eaa27f9e3e98844cd2', '127.0.0.1', 1470062848, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303036323834323b),
('adc60f32a416ac941dbef8a5cce6daed03b14979', '127.0.0.1', 1470063460, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303036333338393b),
('804dc10fee3782c67c6d8c945eaeac6c16c93593', '127.0.0.1', 1470065074, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303036343738313b),
('e30a2c975c0c7993e175202e2146b34ddf88ecc9', '127.0.0.1', 1470065129, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303036353132393b),
('c47f740210a552f254b284bde93e455cc2f9e746', '127.0.0.1', 1470065757, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303036353639393b6572726f727c733a3231303a223c64697620636c6173733d22616c65727420616c6572742d737563636573732220726f6c653d22616c657274223e3c7374726f6e673e416e20456d61696c207761732073656e7420746f2074686520656d61696c2061646472657373213c2f7374726f6e673e0d0a202020202020202020202020202020202020202020506c6561736520636865636b20796f7572206a756e6b20666f6c6465722c20696620796f7520646f6e27742073656520697420696e20796f757220696e626f7820696e203135206d696e757465732e3c2f6469763e223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226e6577223b7d),
('fe9ea10a72fab669694e0c8b30de01450053367b', '127.0.0.1', 1470065871, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303036353834383b),
('4672de32c446ac72454c5b8b874c996ff27b10c3', '127.0.0.1', 1470066479, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303036363430363b),
('62097a5bfccd3e39582dcce2ca6ac18056347a7f', '127.0.0.1', 1470066967, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303036363932363b757365726e616d657c733a373a22627261646c6579223b6e616d657c733a343a2262726164223b656d61696c7c733a32343a226272616440626a6163696e7465726163746976652e636f6d223b69647c733a313a2232223b6c6f67676564696e7c623a313b),
('bed188ef63828b8b553868ae4d810b40520500e4', '127.0.0.1', 1470074733, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303037343732393b636170746368617c733a363a226c4530377143223b696d6167657c733a31393a22313437303037343733332e373932332e6a7067223b),
('574784811fceb5d9445cfbefc1efd7db2e0421ee', '127.0.0.1', 1470082511, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303038323531313b),
('7dd97680ae6013a96a588048396c8b16675cdf2d', '127.0.0.1', 1470087742, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303038373734323b636170746368617c733a363a224a66544f4e6d223b696d6167657c733a31393a22313437303038373734322e353735362e6a7067223b),
('4040dd2cf06bd05361bea228f648bfa984084eac', '127.0.0.1', 1470089404, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303038393335383b636170746368617c733a363a224a66544f4e6d223b696d6167657c733a31393a22313437303038373734322e353735362e6a7067223b757365726e616d657c733a373a22627261646c6579223b6e616d657c733a343a2262726164223b656d61696c7c733a32343a226272616440626a6163696e7465726163746976652e636f6d223b69647c733a313a2232223b6c6f67676564696e7c623a313b),
('494bf505be4a0ce80bb732c19723384e6f789ba1', '127.0.0.1', 1470090272, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303039303031313b636170746368617c733a363a2267784149386d223b696d6167657c733a31393a22313437303039303235392e373331382e6a7067223b),
('e53a02e79a2e958894bfe1b4202aef5fbd67975b', '127.0.0.1', 1470090447, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303039303333393b636170746368617c733a363a22714f32576b55223b696d6167657c733a31393a22313437303039303431362e323933362e6a7067223b),
('6e0772f3bbbcf80582d74c6d056ca9cde3745162', '127.0.0.1', 1470091818, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303039313831323b636170746368617c733a363a22714f32576b55223b696d6167657c733a31393a22313437303039303431362e323933362e6a7067223b6572726f727c733a3133333a223c64697620636c6173733d22616c65727420616c6572742d64616e6765722220726f6c653d22616c657274223e54686520456d61696c204164647265737320646f6573206e6f742065786973742c20506c6561736520636f6e7461637420696e666f406c6f74746f7472616b2e636f6d20666f7220617373697374616e63653c2f6469763e223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226f6c64223b7d),
('07dcfa003bc9701a367399b85942a3b1ba51cc08', '127.0.0.1', 1470097227, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303039373033363b),
('3778fbccca701e6d0032d9776594d53810a788f7', '127.0.0.1', 1470100942, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303130303933363b636170746368617c733a363a22477552454d6e223b696d6167657c733a31393a22313437303130303934322e383131352e6a7067223b),
('2311185df6112abfac08c6d0a46e92497174e733', '127.0.0.1', 1470100954, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303130303935343b),
('35c001eb36206d9cd3d114a9e76d7ea5a6a54502', '127.0.0.1', 1470101409, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303130313339313b),
('72cfc6675a5b942ef6192280ff21cf1a5facd8a8', '127.0.0.1', 1470111892, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303131313634333b),
('8ee69cd6e7053875a765218ecb766167c5ed8652', '127.0.0.1', 1470112161, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303131313938303b),
('d49e67a6eb8c2ed0c2c322bb7250fb3690353af8', '127.0.0.1', 1470112552, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303131323332313b),
('189f2f2f0f18a09813f571e1f4ef0cf21bdddf7f', '127.0.0.1', 1470112745, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303131323730363b6572726f727c733a3130343a223c64697620636c6173733d22616c65727420616c6572742d64616e6765722220726f6c653d22616c657274223e596f75722050617373776f726420686173206e6f74206265656e20757064617465642e20506c656173652074727920616761696e2e3c2f6469763e223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226e6577223b7d),
('7d0311d3c6988332652451b2a4f4cb700d6f7f52', '127.0.0.1', 1470117465, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303131373436353b),
('c3b871b9406fd1ecec839263c59a84276810de71', '127.0.0.1', 1470149838, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303134393833313b636170746368617c733a363a223461386e6451223b696d6167657c733a31393a22313437303134393833382e303132382e6a7067223b),
('e4fb1dc4c72c1bbd8d7117bbb737eaeaf7d82fe9', '127.0.0.1', 1470150055, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303134393838323b),
('66f20a45b375007ee28ea59fafb4ba125ce1bc1e', '127.0.0.1', 1470150314, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303135303239373b),
('8aef3a20e4bd83e2899de0c7c038ee9a361e4039', '127.0.0.1', 1470153355, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303135333331383b6572726f727c733a3139333a223c64697620636c6173733d22616c65727420616c6572742d737563636573732220726f6c653d22616c657274223e3c7374726f6e673e596f75722050617373776f726420686173206265656e2073756363657366756c6c79206265656e20757064617465642e3c2f7374726f6e673e0d0a0920202020202020202020202020202020202020506c6561736520656e74657220796f757220656d61696c206164647265737320616e642070617373776f726420746f206c6f67696e2e3c2f6469763e223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226f6c64223b7d),
('3dfc8b4063162ca388ee4ccea771cd0d7b6f56ea', '127.0.0.1', 1470153467, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303135333436313b636170746368617c733a363a226f50316c6a4d223b696d6167657c733a31393a22313437303135333436372e333631372e6a7067223b),
('d4144f746e1146f4074920c26031cfc7c9f8b90d', '127.0.0.1', 1470154486, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303135343433343b6572726f727c733a3231303a223c64697620636c6173733d22616c65727420616c6572742d737563636573732220726f6c653d22616c657274223e3c7374726f6e673e416e20456d61696c207761732073656e7420746f2074686520656d61696c2061646472657373213c2f7374726f6e673e0d0a202020202020202020202020202020202020202020506c6561736520636865636b20796f7572206a756e6b20666f6c6465722c20696620796f7520646f6e27742073656520697420696e20796f757220696e626f7820696e203135206d696e757465732e3c2f6469763e223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226e6577223b7d),
('fafb7d3c93a72c08f2592df4361492867f13ade5', '127.0.0.1', 1470155998, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303135353939383b6572726f727c733a3231303a223c64697620636c6173733d22616c65727420616c6572742d737563636573732220726f6c653d22616c657274223e3c7374726f6e673e416e20456d61696c207761732073656e7420746f2074686520656d61696c2061646472657373213c2f7374726f6e673e0d0a202020202020202020202020202020202020202020506c6561736520636865636b20796f7572206a756e6b20666f6c6465722c20696620796f7520646f6e27742073656520697420696e20796f757220696e626f7820696e203135206d696e757465732e3c2f6469763e223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226f6c64223b7d636170746368617c733a363a22765870554c6f223b696d6167657c733a31393a22313437303135353939382e353635352e6a7067223b),
('6d3d46c7ea3fd98b6057b67e9e5a1160fb791b8f', '127.0.0.1', 1470156057, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303135363033353b636170746368617c733a363a226f3573567038223b696d6167657c733a31393a22313437303135363035372e323335362e6a7067223b),
('7fadeba983cdee0f3692529705f68ee9c3bfb5eb', '127.0.0.1', 1470156986, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303135363834303b636170746368617c733a363a227a3975475434223b696d6167657c733a31393a22313437303135363938362e383936352e6a7067223b),
('34db89ed4e0a63e7117eb7275df6eeb49762cbbb', '127.0.0.1', 1470157493, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303135373231363b636170746368617c733a363a223345536a7747223b696d6167657c733a31393a22313437303135373439332e323832372e6a7067223b),
('ca2a96504aed9c5d923e2083e4550aceb7362278', '127.0.0.1', 1470159146, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303135393134363b636170746368617c733a363a226a5531336137223b696d6167657c733a31393a22313437303135393134362e383930342e6a7067223b),
('4515c1e4554dd940316950d94c54e7145bc62abc', '127.0.0.1', 1470167349, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303136373038333b636170746368617c733a363a224a5931723756223b696d6167657c733a31383a22313437303136373334392e3736382e6a7067223b),
('9b08045b873bf396f16170e0f8fb67c6c7d4d501', '127.0.0.1', 1470167330, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303136373333303b6572726f727c733a3139333a223c64697620636c6173733d22616c65727420616c6572742d737563636573732220726f6c653d22616c657274223e3c7374726f6e673e596f75722050617373776f726420686173206265656e2073756363657366756c6c79206265656e20757064617465642e3c2f7374726f6e673e0d0a0920202020202020202020202020202020202020506c6561736520656e74657220796f757220656d61696c206164647265737320616e642070617373776f726420746f206c6f67696e2e3c2f6469763e223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226e6577223b7d),
('0728f11f2c988722b0cb1a0b1c8052165acbf727', '127.0.0.1', 1470168021, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303136373937343b636170746368617c733a363a22565347496157223b696d6167657c733a31393a22313437303136383032312e353334322e6a7067223b),
('6ea9fc071b0eb7db6a8b85a2d949973dcef2d386', '127.0.0.1', 1470168676, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303136383337363b636170746368617c733a363a22506e654a4344223b696d6167657c733a31393a22313437303136383637362e323131352e6a7067223b),
('14ed88067de05c3a3b27aea3f7ff573ae0f745ba', '127.0.0.1', 1470168719, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303136383639303b6572726f727c733a3231343a223c64697620636c6173733d22616c65727420616c6572742d737563636573732220726f6c653d22616c657274223e3c7374726f6e673e416e20456d61696c207761732073656e7420746f2074686520656d61696c2061646472657373213c2f7374726f6e673e0d0a20202020202020202020202020202020202020202020202020506c6561736520636865636b20796f7572206a756e6b20666f6c6465722c20696620796f7520646f6e27742073656520697420696e20796f757220696e626f7820696e203135206d696e757465732e3c2f6469763e223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226e6577223b7d),
('731ce737b551a77b046edb01d10dddc3b0d919c6', '127.0.0.1', 1470168907, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303136383737383b6572726f727c733a3139333a223c64697620636c6173733d22616c65727420616c6572742d737563636573732220726f6c653d22616c657274223e3c7374726f6e673e596f75722050617373776f726420686173206265656e2073756363657366756c6c79206265656e20757064617465642e3c2f7374726f6e673e0d0a0920202020202020202020202020202020202020506c6561736520656e74657220796f757220656d61696c206164647265737320616e642070617373776f726420746f206c6f67696e2e3c2f6469763e223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226f6c64223b7d),
('0d75744be34e145df6475221e97c3842cf679f07', '127.0.0.1', 1470173766, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303137333731323b),
('1d631dbe62c462cdf8a3e5831819a43e243c796e', '127.0.0.1', 1470174346, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303137343038353b6572726f727c733a3139333a223c64697620636c6173733d22616c65727420616c6572742d737563636573732220726f6c653d22616c657274223e3c7374726f6e673e596f75722050617373776f726420686173206265656e2073756363657366756c6c79206265656e20757064617465642e3c2f7374726f6e673e0d0a0920202020202020202020202020202020202020506c6561736520656e74657220796f757220656d61696c206164647265737320616e642070617373776f726420746f206c6f67696e2e3c2f6469763e223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226e6577223b7d),
('0e578345343112efd148dab45a0e6c41a2293e56', '127.0.0.1', 1470175191, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303137353139313b),
('6bec4666ae67141c8689be21f7758be7865ff996', '127.0.0.1', 1470177921, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303137373831383b636170746368617c733a363a22466d456c3956223b696d6167657c733a31393a22313437303137373932312e353731312e6a7067223b),
('4feac439a1c521f21a2cab540cc96e49737043f8', '127.0.0.1', 1470202483, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303230323235363b757365726e616d657c733a343a2262726164223b6e616d657c733a343a2262726164223b656d61696c7c733a31373a2262676a323040686f746d61696c2e636f6d223b69647c733a313a2231223b6c6f67676564696e7c623a313b),
('e1d5c6582ae0b2771d6452172f48ef1830445c63', '127.0.0.1', 1470204014, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303230343031343b),
('726db43581d849d2e6a766614a23abd853184b85', '127.0.0.1', 1470263946, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303236333934303b636170746368617c733a363a2269686b475764223b696d6167657c733a31393a22313437303236333934362e393136312e6a7067223b),
('8e8df32a7176dff0920a8190c20f595783cfb116', '127.0.0.1', 1470264867, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303236343832303b636170746368617c733a363a22665337494b4d223b696d6167657c733a31393a22313437303236343834362e333337342e6a7067223b6572726f727c733a3133333a223c64697620636c6173733d22616c65727420616c6572742d64616e6765722220726f6c653d22616c657274223e54686520456d61696c204164647265737320646f6573206e6f742065786973742c20506c6561736520636f6e7461637420696e666f406c6f74746f7472616b2e636f6d20666f7220617373697374616e63653c2f6469763e223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226e6577223b7d),
('af3168bd1c143d7b9863ddf86299518ef5463bb5', '127.0.0.1', 1470265653, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303236353531363b6572726f727c733a3231343a223c64697620636c6173733d22616c65727420616c6572742d737563636573732220726f6c653d22616c657274223e3c7374726f6e673e416e20456d61696c207761732073656e7420746f2074686520656d61696c2061646472657373213c2f7374726f6e673e0d0a20202020202020202020202020202020202020202020202020506c6561736520636865636b20796f7572206a756e6b20666f6c6465722c20696620796f7520646f6e27742073656520697420696e20796f757220696e626f7820696e203135206d696e757465732e3c2f6469763e223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226f6c64223b7d),
('63dd6c977b6d150cf19d922f50f633baabaa18a6', '127.0.0.1', 1470265737, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303236353733373b),
('08f3fa6e99d24a3f3027afd70ddf9fc1451586a4', '127.0.0.1', 1470273987, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303237333938373b636170746368617c733a363a22696550375458223b696d6167657c733a31393a22313437303237333938372e333431362e6a7067223b),
('df6156c2d6483368c70251b141ac608cffa84a95', '127.0.0.1', 1470529596, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303532393332323b757365726e616d657c733a343a2262726164223b6e616d657c733a343a2262726164223b656d61696c7c733a31373a2262676a323040686f746d61696c2e636f6d223b69647c733a313a2231223b6c6f67676564696e7c623a313b),
('f4597eba12530108bf3034bc7e2a82f32bf851eb', '127.0.0.1', 1470529660, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303532393632333b757365726e616d657c733a343a2262726164223b6e616d657c733a343a2262726164223b656d61696c7c733a31373a2262676a323040686f746d61696c2e636f6d223b69647c733a313a2231223b6c6f67676564696e7c623a313b),
('e00ac3ebbda054404e64c78987c56b4bba8e7edc', '127.0.0.1', 1470548694, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303534383439373b757365726e616d657c733a343a2262726164223b6e616d657c733a343a2262726164223b656d61696c7c733a31373a2262676a323040686f746d61696c2e636f6d223b69647c733a313a2231223b6c6f67676564696e7c623a313b),
('8d69406c037022f01b6892c22ef348b101bd895a', '127.0.0.1', 1470548871, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303534383836323b757365726e616d657c733a343a2262726164223b6e616d657c733a343a2262726164223b656d61696c7c733a31373a2262676a323040686f746d61696c2e636f6d223b69647c733a313a2231223b6c6f67676564696e7c623a313b),
('c863846139619db8e77ee0ef3a0f4122479fc1de', '127.0.0.1', 1470583698, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303538333637363b757365726e616d657c733a343a2262726164223b6e616d657c733a343a2262726164223b656d61696c7c733a31373a2262676a323040686f746d61696c2e636f6d223b69647c733a313a2231223b6c6f67676564696e7c623a313b),
('b82353976f8222e1637bc8fb3d673cf36b858604', '127.0.0.1', 1470598264, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303539383131353b757365726e616d657c733a343a2262726164223b6e616d657c733a343a2262726164223b656d61696c7c733a31373a2262676a323040686f746d61696c2e636f6d223b69647c733a313a2231223b6c6f67676564696e7c623a313b),
('457a4599d6b71ba362b9ccc01982a019e116544a', '127.0.0.1', 1470610111, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303631303033313b757365726e616d657c733a343a2262726164223b6e616d657c733a343a2262726164223b656d61696c7c733a31373a2262676a323040686f746d61696c2e636f6d223b69647c733a313a2231223b6c6f67676564696e7c623a313b),
('5ef7f2ea8364161fd509a90079caf5b82c532f3d', '127.0.0.1', 1470610441, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303631303434313b757365726e616d657c733a343a2262726164223b6e616d657c733a343a2262726164223b656d61696c7c733a31373a2262676a323040686f746d61696c2e636f6d223b69647c733a313a2231223b6c6f67676564696e7c623a313b),
('60762f026765569920ca50a1c67a911787608341', '127.0.0.1', 1470611606, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303631313539333b757365726e616d657c733a343a2262726164223b6e616d657c733a343a2262726164223b656d61696c7c733a31373a2262676a323040686f746d61696c2e636f6d223b69647c733a313a2231223b6c6f67676564696e7c623a313b),
('9f740648056c737e0e4456ccbf9436b11cc69b90', '127.0.0.1', 1470612615, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303631323532343b757365726e616d657c733a343a2262726164223b6e616d657c733a343a2262726164223b656d61696c7c733a31373a2262676a323040686f746d61696c2e636f6d223b69647c733a313a2231223b6c6f67676564696e7c623a313b),
('479b70482da21d07ed0cd79d24828e01b441e74a', '127.0.0.1', 1470613284, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303631333237383b757365726e616d657c733a343a2262726164223b6e616d657c733a343a2262726164223b656d61696c7c733a31373a2262676a323040686f746d61696c2e636f6d223b69647c733a313a2231223b6c6f67676564696e7c623a313b),
('bfdebbdea5827b2ab183eb6dc6f96bc6828261db', '127.0.0.1', 1470614512, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303631343431323b757365726e616d657c733a343a2262726164223b6e616d657c733a343a2262726164223b656d61696c7c733a31373a2262676a323040686f746d61696c2e636f6d223b69647c733a313a2231223b6c6f67676564696e7c623a313b),
('08c054cc8c66f2ef3524c0960bb347019de3a262', '127.0.0.1', 1470624808, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303632343738373b757365726e616d657c733a343a2262726164223b6e616d657c733a343a2262726164223b656d61696c7c733a31373a2262676a323040686f746d61696c2e636f6d223b69647c733a313a2231223b6c6f67676564696e7c623a313b),
('8ea969fae963ddb5965bb1dad6a390086198db47', '127.0.0.1', 1470626935, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303632363932373b757365726e616d657c733a343a2262726164223b6e616d657c733a343a2262726164223b656d61696c7c733a31373a2262676a323040686f746d61696c2e636f6d223b69647c733a313a2231223b6c6f67676564696e7c623a313b),
('ae095e7c7bb8b2f5aa5623ef9c4e22221ef2ca5a', '127.0.0.1', 1470634750, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303633343735303b),
('217e74657943ceb192534af8a81963022a6b656c', '::1', 1470958796, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303935383731353b636170746368617c733a363a224d4b474f3948223b696d6167657c733a31383a22313437303935383732322e3537352e6a7067223b757365726e616d657c733a343a2262726164223b6e616d657c733a343a2262726164223b656d61696c7c733a31373a2262676a323040686f746d61696c2e636f6d223b69647c733a313a2231223b6c6f67676564696e7c623a313b),
('d48ac6ddc39ae25b051251fc8ba050b55a5f7084', '::1', 1470978653, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437303937383635333b),
('24ba8bbf35b4d4cc4abfe26fc343883e3392dc2f', '127.0.0.1', 1471101387, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437313130313332373b757365726e616d657c733a343a2262726164223b6e616d657c733a343a2262726164223b656d61696c7c733a31373a2262676a323040686f746d61696c2e636f6d223b69647c733a313a2231223b6c6f67676564696e7c623a313b),
('b98f229947f1dc3be58e54dc75ceceaa6aadccc4', '127.0.0.1', 1471126344, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437313132363334343b),
('7199fee2d6dafe2ba05991fb5e2e8ab6a0298608', '127.0.0.1', 1471133976, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437313133333935363b);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`version`) VALUES
(7);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `order` int(11) DEFAULT '0',
  `body` text NOT NULL,
  `parent_id` int(11) unsigned DEFAULT '0',
  `menu_id` int(11) NOT NULL DEFAULT '0' COMMENT '0 = Header Menu, 1 = Inside Footer Menu, 2 = Outside Footer Menu',
  `template` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `order`, `body`, `parent_id`, `menu_id`, `template`) VALUES
(1, 'Home', 'home', 1, '<p>This is it! And it is the home page that I am speaking of! I want to add pictures to this entire text message. This is incredible I can do this for us today.</p>\r\n<p>&nbsp;</p>\r\n<h1>Welcome</h1>\r\n<h2>&nbsp; &nbsp; &nbsp;Welcome</h2>\r\n<p>&nbsp;&nbsp;</p>', 0, 0, 'homepage'),
(2, 'Help Page', 'help', 2, '<p>This is the test</p>\r\n<p>I need to add this! <strong>And this</strong></p>\r\n<p>&nbsp;</p>\r\n<h2><strong>And I need to add this!!</strong></h2>', 1, 0, 'page'),
(3, 'About Page', 'about', 4, '<h2>I have to do it here!</h2>', 0, 0, 'page'),
(4, 'News Article', 'news-article', 3, '<p>I have heard of some strange information here and It was placed in this area here!</p>', 0, 0, 'newsarticle'),
(7, 'FAQ', 'faq', NULL, '<p>This is the Frequency Asked Questions.&nbsp;</p>', 4, 0, 'page');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(100) NOT NULL,
  `username` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `name`, `username`) VALUES
(1, 'bgj20@hotmail.com', '$2a$10$8188b83ea365d6ea75813u3cQmHRnKxM3WxAlP1vV/N4i3ceTsLgC', 'brad', 'brad'),
(2, 'brad@bjacinteractive.com', '$2a$10$0d5b117e8a458462f6775ON5jgqGMtl5KLRDy2yGc427AHBN7AviK', 'brad', 'bradley');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
