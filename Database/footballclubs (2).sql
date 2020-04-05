-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 15 mrt 2020 om 23:43
-- Serverversie: 10.4.6-MariaDB
-- PHP-versie: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `footballclubs`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `characterproperties`
--

CREATE TABLE `characterproperties` (
  `characterpropertyId` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `players`
--

CREATE TABLE `players` (
  `playerId` int(5) NOT NULL,
  `playerName` varchar(255) NOT NULL,
  `playerDescription` varchar(255) NOT NULL,
  `playerImage` varchar(255) NOT NULL,
  `teamId` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `players`
--

INSERT INTO `players` (`playerId`, `playerName`, `playerDescription`, `playerImage`, `teamId`) VALUES
(1, 'Ziyech', 'This is a very creative player who is going to Chelsea.', 'images/ziyech.jpg', 1),
(2, 'Blind', 'Great defender.', 'images/blind.jpg', 1),
(3, 'Gravenberch', 'Great talent from the youth academy from Ajax.', 'images/gravenberch.jpg', 1),
(4, 'Martinez', 'Great young Argentian defender.', 'images/martinez.jpg', 1),
(5, 'Tadic', 'Great attacker.', 'images/tadic.jpg', 1),
(6, 'Onana', 'One of the best young goalkeeper in the world.', 'images/onana.jpg', 1),
(7, 'Boadu', 'Young Dutch talent.', 'images/boadu.jpg', 2),
(8, 'Idrissi', 'This is a attacker.', 'images/idrissi.jpg', 2),
(9, 'Stengs', 'This is a young talented Dutch attacker.', 'images/stengs.jpg', 2),
(10, 'Wijndal', 'This is a young talented Dutch left-back.', 'images/wijndal.jpg', 2),
(11, 'Ron beton', 'This was one of the best defenders in the WK 2014.', 'images/vlaar.jpg', 2),
(12, 'Janssen', 'Great defender.', 'images/janssen.jpg', 3),
(13, 'Kerk', 'He is one of the fastest attacker in the Eredivisie.', 'images/kerk.jpg', 3),
(14, 'Maher', 'Great attacking midfielder.', 'images/maher.jpg', 3),
(15, 'Ramselaar', 'Great attacking midfielder.', 'images/ramselaar.jpg', 3),
(16, 'Zoet', 'A potential golden glove winner.', 'images/zoet.jpg', 3),
(17, 'Gakpo', 'Great young attacker.', 'images/gakpo.jpg', 5),
(18, 'Ihattaren', 'Great young attacker.', 'images/ihattaren.jpg', 5),
(19, 'Malen', 'Young Dutch striker.', 'images/malen.jpg', 5),
(20, 'Rosario', 'He is just a big meme.', 'images/rosario.jpg', 5),
(21, 'Dumfries', 'Young right-back.', 'images/dumfries.jpg', 5),
(22, 'Burger', 'He is a very young midfielder.', 'images/burger.jpg', 4),
(23, 'Karsdorp', 'A decent right-back.', 'images/karsdorp.jpg', 4),
(24, 'Senesi', 'This is a young Argentinian defender.', 'images/senesi.jpg', 4),
(25, 'Sinisterra', 'A young attacker.', 'images/sinisterra.jpg', 4),
(26, 'Köckü', 'This is a great young attacking midfielder.', 'images/kokcu.jpg', 4);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `properties`
--

CREATE TABLE `properties` (
  `propertyId` int(5) NOT NULL,
  `propertyText` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `properties`
--

INSERT INTO `properties` (`propertyId`, `propertyText`) VALUES
(1, 'He has a great finish.'),
(2, 'He has a great dribble.');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `rating`
--

CREATE TABLE `rating` (
  `ratingId` int(10) NOT NULL,
  `ratingReview` text NOT NULL,
  `rating` int(2) NOT NULL,
  `ratingDate` datetime NOT NULL,
  `playerId` int(5) NOT NULL,
  `userId` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `teams`
--

CREATE TABLE `teams` (
  `teamId` int(3) NOT NULL,
  `teamName` varchar(255) NOT NULL,
  `teamImage` varchar(255) NOT NULL,
  `teamDecription` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `teams`
--

INSERT INTO `teams` (`teamId`, `teamName`, `teamImage`, `teamDecription`) VALUES
(1, 'Ajax', 'ajax.jpg', 'This is the best club in the world.'),
(2, 'AZ', 'az.jpg', 'AZ is a team that has a very nice roof on their stadion.'),
(3, 'FC Utrecht', 'utrecht.jpg', 'This team has the keeper Jeroen Zoet he is one of the best benchwarmers in football history.'),
(4, 'Feyenoord', 'feyenoord.jpg', 'This team has the best trainer in the world who\'s name is Dick Advocaat.'),
(5, 'PSV', 'psv.jpg', 'Psv has the best Technical Director who\'s name is John de Jong.');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `users`
--

CREATE TABLE `users` (
  `userId` int(10) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userpass` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `characterproperties`
--
ALTER TABLE `characterproperties`
  ADD PRIMARY KEY (`characterpropertyId`);

--
-- Indexen voor tabel `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`playerId`),
  ADD KEY `FK_teamId` (`teamId`);

--
-- Indexen voor tabel `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`propertyId`);

--
-- Indexen voor tabel `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`ratingId`);

--
-- Indexen voor tabel `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`teamId`);

--
-- Indexen voor tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `characterproperties`
--
ALTER TABLE `characterproperties`
  MODIFY `characterpropertyId` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `players`
--
ALTER TABLE `players`
  MODIFY `playerId` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT voor een tabel `properties`
--
ALTER TABLE `properties`
  MODIFY `propertyId` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT voor een tabel `rating`
--
ALTER TABLE `rating`
  MODIFY `ratingId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `teams`
--
ALTER TABLE `teams`
  MODIFY `teamId` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT voor een tabel `users`
--
ALTER TABLE `users`
  MODIFY `userId` int(10) NOT NULL AUTO_INCREMENT;

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `players`
--
ALTER TABLE `players`
  ADD CONSTRAINT `FK_teamId` FOREIGN KEY (`teamId`) REFERENCES `teams` (`teamId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
