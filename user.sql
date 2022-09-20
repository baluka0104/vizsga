-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2022. Sze 20. 22:49
-- Kiszolgáló verziója: 10.4.21-MariaDB
-- PHP verzió: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `vizsga`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `user`
--

CREATE TABLE `user` (
  `uid` int(11) NOT NULL,
  `email` varchar(99) NOT NULL,
  `unev` varchar(99) NOT NULL,
  `jelszo` varchar(99) NOT NULL,
  `statusz` varchar(1) NOT NULL,
  `szuldatum` date NOT NULL,
  `regdatum` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `user`
--

INSERT INTO `user` (`uid`, `email`, `unev`, `jelszo`, `statusz`, `szuldatum`, `regdatum`) VALUES
(2, 'kutya@cica.com', 'alma', 'asdasd', '', '0000-00-00', '0000-00-00 00:00:00'),
(3, 'kiraly@mail.com', 'Karaj', 'asdasd', '', '0000-00-00', '0000-00-00 00:00:00'),
(4, 'asd@asd.com', 'asd', 'asd', '', '0000-00-00', '0000-00-00 00:00:00'),
(5, 'csorgvasdi@af.copm', 'alma', 'kseo', '', '0000-00-00', '0000-00-00 00:00:00'),
(6, 'test@g.com', 'test', 'test', '', '0000-00-00', '2022-09-20 20:41:53'),
(7, 'mama@gmail.com', 'kajak', 'asdasd', '', '0000-00-00', '2022-09-20 21:04:25'),
(8, 'csorvasi.balazs@gmail.com', 'baluka0104', 'asdélkasd', '', '0000-00-00', '2022-09-20 21:05:11'),
(9, 'asd@gkma.com', 'asdasd', 'asdasd', '', '0000-00-00', '2022-09-20 21:09:43'),
(10, 'alma@gmail.com', 'körte', 'farok', '', '1969-04-20', '2022-09-20 21:11:29'),
(11, 'csorvasi.balazs@gmail.com', 'baluka0104', 'aslkjasfdljkasd', '', '2003-01-04', '2022-09-20 21:36:37'),
(12, 'kuki@gaga.com', 'galaga', 'testsete', '', '2009-04-19', '2022-09-20 21:40:11'),
(13, 'gugugaga@gmail.com', 'gagaga', 'dc8593c0b38f2bc21ffb8ce3ee486bb8', '', '2020-04-20', '2022-09-20 21:41:43');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
