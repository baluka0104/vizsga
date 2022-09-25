-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2022. Sze 25. 01:26
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
(16, 'csorvasi.balazs@gmail.com', 'admin', '$2y$10$iT6Z2rDWm9Uo7gR3gGQruuJvH.ur1YOH/prMFGBYz0sybGFPBCaTG', '', '2003-01-04', '2022-09-24 20:30:20'),
(17, 'sanyia.kiraly@gmail.com', 'lali', '$2y$10$dWbZRbuPIgJTxSgOSiBl8OY9QNRWzwVaGPxfDdBg17kPmDIctBBpu', '', '2019-03-15', '2022-09-24 21:35:42');

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
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
