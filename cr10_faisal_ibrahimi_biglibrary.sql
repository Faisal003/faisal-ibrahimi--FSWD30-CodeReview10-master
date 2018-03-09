-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 08. Mrz 2018 um 09:00
-- Server-Version: 10.1.30-MariaDB
-- PHP-Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `cr10_faisal_ibrahimi_biglibrary`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `author`
--

CREATE TABLE `author` (
  `author_id` int(11) NOT NULL,
  `first_name` varchar(40) NOT NULL,
  `last_name` varchar(40) NOT NULL,
  `date_of_write` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `author`
--

INSERT INTO `author` (`author_id`, `first_name`, `last_name`, `date_of_write`) VALUES
(1, 'Danel', 'Dafenshi', '1965-12-01'),
(2, 'Dani', 'Karfachal', '1980-02-21'),
(3, 'Sami', 'Ösbek', '1995-06-30'),
(4, 'Natasha', 'Misto', '1950-02-08'),
(5, 'Omar', 'Tahsin', '1988-11-11'),
(6, 'Najwa', 'Karam', '1983-07-02'),
(7, 'Nansi', 'Ajram', '1920-06-13'),
(8, 'Tamer', 'Husni', '1963-05-19'),
(9, 'Ronaldo', 'Decabrio', '1965-12-01'),
(10, 'Mansi', 'Ajram', '1970-04-24');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `media`
--

CREATE TABLE `media` (
  `media_id` int(11) NOT NULL,
  `ISBN_code` int(11) DEFAULT NULL,
  `title` varchar(40) NOT NULL,
  `media_type` varchar(40) NOT NULL,
  `image` varchar(255) NOT NULL,
  `short_desciption` varchar(55) NOT NULL,
  `publish_date` date DEFAULT NULL,
  `status` enum('available','reserved') DEFAULT NULL,
  `fk_author` int(11) DEFAULT NULL,
  `fk_publisher` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `media`
--

INSERT INTO `media` (`media_id`, `ISBN_code`, `title`, `media_type`, `image`, `short_desciption`, `publish_date`, `status`, `fk_author`, `fk_publisher`) VALUES
(1, 1000033556, 'wiz khalifa', 'CD', 'http://trillerthanmost.com/wp-content/uploads/2015/05/Wiz-Khalifa.jpg', 'PROMISES album 45 minutes', '2014-05-08', 'available', 1, 1),
(2, 1000033566, 'London Has Fallen', 'DVD', 'https://vignette.wikia.nocookie.net/cinemorgue/images/6/65/London_has_fallen_ver9_xlg.jpg/revision/latest?cb=20170101232056', 'Dieser Film gefiel 81 % der Nutzer', '2016-03-02', 'available', 2, 2),
(3, 1000033565, 'On Food and Cooking', 'book', 'http://t0.gstatic.com/images?q=tbn:ANd9GcTS8FUap19ZbPHZnXRXh0PhjwSQgIRHVuFr5aRIaeF9UzpM0Bc_', 'Kochbuch, Handbuch, Nachschlagewerk', '1984-11-18', 'reserved', 3, 3),
(4, 1000033559, 'How We Die', 'book', 'http://t3.gstatic.com/images?q=tbn:ANd9GcRuPG-No69pwEUqnsLh3R-0CuxMCDe6rv5SqualaksOX8BVda2t', 'Non-Fiction', '1993-05-20', 'available', 4, 4),
(5, 1000033556, 'Dog Man and Cat Kid', 'book', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnBHACDccDtc9nRRV08DYWbe2oQ5eNq2EEgGDmtsL5oA7lSG8w', 'Dog Man: A Tale of Two Kitties', '2017-12-26', 'available', 5, 5),
(6, 1000033552, 'Conjuring 2', 'DVD', 'https://i.ytimg.com/vi/VFsmuRPClr4/maxresdefault.jpg', 'Dieser Film gefiel 90 % der Nutzer', '2016-11-13', 'reserved', 6, 6),
(7, 1000033999, 'David Guetta', 'CD', 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/33/David_Guetta_2013-04-12_001.jpg/1200px-David_Guetta_2013-04-12_001.jpg', 'So Far Away album', '2017-11-29', 'available', 7, 7),
(8, 1000033999, 'Michael Jackson', 'CD', 'https://i.amz.mshcdn.com/R9viMBS31NVObwLQDIgqD_L5tFY=/950x534/filters:quality(90)/2014%2F03%2F31%2Fe9%2FMichaelJack.a08d0.jpg', 'Twelves Album', '2003-08-09', 'reserved', 8, 8),
(9, 1000033989, 'Mad Max: Fury Road', 'DVD', 'http://is1.mzstatic.com/image/thumb/Video128/v4/c4/ae/59/c4ae5927-bca9-e6e6-9b09-88f0eea4867c/source/1200x630bb.jpg', 'Fantasyfilm/Science-aiction-Film ‧', '2015-05-15', 'available', 9, 9),
(10, 1000556688, 'Wrong Turn 6: Last Resort', 'DVD', 'https://i5.walmartimages.ca/images/Large/309/127/53363-0002454309127.jpg?odnBound=460', 'Dieser Film gefiel 77 % der Nutzer', '2014-08-22', 'available', 10, 10);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `publisher`
--

CREATE TABLE `publisher` (
  `publisher_id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `address` varchar(40) NOT NULL,
  `size` enum('large','medium','small') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `publisher`
--

INSERT INTO `publisher` (`publisher_id`, `name`, `address`, `size`) VALUES
(1, 'TENsonaki', 'wien,1100 keplarplatz 30', 'large'),
(2, 'Demolaju', 'Österreich,wien,1100 keplarplatz 30', 'medium'),
(3, 'Bookstrorsi', 'USA LA komintan112', 'small'),
(4, 'chansuin', 'china opsiu 88', 'large'),
(5, 'Disnyto', 'Greec ,Kos Kintopaskal', 'small'),
(6, 'Qopadi', 'Saudi arabia,1100 pontioako 30', 'medium'),
(7, 'PADING', 'Kou,3688 linz 30', 'small'),
(8, 'Limposaki', 'Japan,1133 linyerstrasse 30', 'large'),
(9, 'poimPP', 'canada,1788 keplarplatz 30', 'medium'),
(10, 'Mandi', 'Koria,pomi lankoin nhhil 55', 'large');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(40) NOT NULL,
  `surname` varchar(40) NOT NULL,
  `user_name` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(255) NOT NULL,
  `register_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `surname`, `user_name`, `email`, `password`, `register_date`) VALUES
(9, 'shahir', 'hamidy', 'shahir', 'shahir.hamidy786@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-06 16:11:32');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`author_id`);

--
-- Indizes für die Tabelle `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`media_id`),
  ADD KEY `fk_author` (`fk_author`),
  ADD KEY `fk_publisher` (`fk_publisher`);

--
-- Indizes für die Tabelle `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`publisher_id`);

--
-- Indizes für die Tabelle `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `author`
--
ALTER TABLE `author`
  MODIFY `author_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT für Tabelle `media`
--
ALTER TABLE `media`
  MODIFY `media_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT für Tabelle `publisher`
--
ALTER TABLE `publisher`
  MODIFY `publisher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT für Tabelle `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `media`
--
ALTER TABLE `media`
  ADD CONSTRAINT `media_ibfk_1` FOREIGN KEY (`fk_author`) REFERENCES `author` (`author_id`),
  ADD CONSTRAINT `media_ibfk_2` FOREIGN KEY (`fk_publisher`) REFERENCES `publisher` (`publisher_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
