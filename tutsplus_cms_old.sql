-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 31, 2015 at 02:55 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

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
('3fddd28a9714973669a987714c59c3b3ee701b37', '::1', 1451187665, 0x5f5f63695f6c6173745f726567656e65726174657c693a313435313138373636353b),
('18d0fc26cac8dd173a329e91993516af196b5ccd', '::1', 1451188506, 0x5f5f63695f6c6173745f726567656e65726174657c693a313435313138383334343b),
('eb06a25b0da5d53c8f533ddffc1ee95592801f72', '::1', 1451188917, 0x5f5f63695f6c6173745f726567656e65726174657c693a313435313138383931303b),
('436374c0f9199ef5ed94f3b9f94136cc935631e0', '::1', 1451189585, 0x5f5f63695f6c6173745f726567656e65726174657c693a313435313138393333323b),
('05bd5481cef74647d48858a839f7bfbfa9d57b68', '::1', 1451189713, 0x5f5f63695f6c6173745f726567656e65726174657c693a313435313138393731313b),
('9ae2f145fb095bda822aec2822d7194161372732', '::1', 1451190423, 0x5f5f63695f6c6173745f726567656e65726174657c693a313435313139303432323b),
('dd397d48b92a7f1517ab3c97ceeba5b4eace7f78', '::1', 1451190996, 0x5f5f63695f6c6173745f726567656e65726174657c693a313435313139303939363b),
('f36544f788e7c08dba35ec44af1407c02dbdce72', '::1', 1451191175, 0x5f5f63695f6c6173745f726567656e65726174657c693a313435313139303939363b),
('1e73760715a359f7d5b6a98f4ad2e6d983527c7d', '::1', 1451191580, 0x5f5f63695f6c6173745f726567656e65726174657c693a313435313139313432333b),
('a9e4a193c71a265be3c3437987e80d23cd187aff', '::1', 1451192102, 0x5f5f63695f6c6173745f726567656e65726174657c693a313435313139313835373b),
('371bc98149ec70fbcb798792d9b32143cc259846', '::1', 1451199768, 0x5f5f63695f6c6173745f726567656e65726174657c693a313435313139393733363b),
('ffaba9dfc149000f1580431e573bdded6f13fb23', '::1', 1451264263, 0x5f5f63695f6c6173745f726567656e65726174657c693a313435313236343232373b),
('cb89125e31cc9e471a6ba29f5332be737fa652b3', '::1', 1451264644, 0x5f5f63695f6c6173745f726567656e65726174657c693a313435313236343634343b),
('7f9127706a66ba6c3d84614efb0d260f5ea6c7d4', '::1', 1451264644, 0x5f5f63695f6c6173745f726567656e65726174657c693a313435313236343634343b),
('ef277d8a2e63e5d1d841db3112b9ff986d54c6bc', '::1', 1451265199, 0x5f5f63695f6c6173745f726567656e65726174657c693a313435313236343634343b),
('4694908a0a2e29276c31926f2138e3d3054b22c2', '::1', 1451265377, 0x5f5f63695f6c6173745f726567656e65726174657c693a313435313236353231393b),
('dce5e501397e3afbb729d00b250991adc8dd391e', '::1', 1451266083, 0x5f5f63695f6c6173745f726567656e65726174657c693a313435313236363031353b),
('21f88cab95a5761342b2fb7c4f8e7d98a706956f', '::1', 1451275336, 0x5f5f63695f6c6173745f726567656e65726174657c693a313435313237353332393b),
('ab0a6e7528ef03bc2418919208b5248ca336d0d5', '::1', 1451276295, 0x5f5f63695f6c6173745f726567656e65726174657c693a313435313237363239333b),
('2a9dfbe56a87eb5a9e595b359040c158225ecb8d', '::1', 1451451779, 0x5f5f63695f6c6173745f726567656e65726174657c693a313435313434393836373b),
('b9b412b9444472d094badf8b26a86a2d44065c6f', '::1', 1451452158, 0x5f5f63695f6c6173745f726567656e65726174657c693a313435313435313833373b),
('dbb72099bd522a93f2c0508b162e3460d76ee9af', '::1', 1451452468, 0x5f5f63695f6c6173745f726567656e65726174657c693a313435313435323138393b),
('370542ae91927fbeb75a4c64d09dacdc13ab2694', '::1', 1451452709, 0x5f5f63695f6c6173745f726567656e65726174657c693a313435313435323532313b),
('c84aa5bfc58603ba1ba1a40a0735490a315d1728', '::1', 1451453043, 0x5f5f63695f6c6173745f726567656e65726174657c693a313435313435333033353b),
('51ba83a359f84569e0c0303a00d6d6d6b9c2638f', '::1', 1451456459, 0x5f5f63695f6c6173745f726567656e65726174657c693a313435313435363136303b),
('49c93ea22a696693d480722d95f899c3fdbb9fc1', '::1', 1451456753, 0x5f5f63695f6c6173745f726567656e65726174657c693a313435313435363438383b);

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
  `template` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `order`, `body`, `parent_id`, `template`) VALUES
(1, 'Home', 'home', 1, '<p>This is it! And it is the home page that I am speaking of! I want to add pictures to this entire text message. This is incredible I can do this for us today.</p>\r\n<p>&nbsp;</p>\r\n<h1>Welcome</h1>\r\n<h2>&nbsp; &nbsp; &nbsp;Welcome</h2>\r\n<p>&nbsp;&nbsp;</p>', 0, 'homepage'),
(2, 'Help Page', 'help', 2, '<p>This is the test</p>\r\n<p>I need to add this! <strong>And this</strong></p>\r\n<p>&nbsp;</p>\r\n<h2><strong>And I need to add this!!</strong></h2>', 1, 'page'),
(3, 'About Page', 'about', 3, '<h2>I have to do it here!</h2>', 0, 'page'),
(4, 'News Article', 'news-article', 4, '<p>I have heard of some strange information here and It was placed in this area here!</p>', 0, 'newsarticle');

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
(1, 'bgj20@hotmail.com', '$2a$10$1f4cc598b3bbe681e9e7euy0EcgDS4A7kXVBCGIcCV/3svrIanIjK', 'brad', 'brad'),
(2, 'brad@bjacinteractive.com', 'c3780a4ea02e651535812678f3cd3a5623718c3c9e97721d731cd7aeb565246e92f2b1c74bfa12e59554388bde18fc5b61db1059a9b6b78acc5f4f4160395ea3', 'brad', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
