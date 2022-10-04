-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2022. Okt 04. 03:07
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
-- Tábla szerkezet ehhez a táblához `receptek`
--

CREATE TABLE `receptek` (
  `rid` int(11) NOT NULL,
  `rnev` varchar(100) NOT NULL,
  `osszetevok` text NOT NULL,
  `elkeszites` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `receptek`
--

INSERT INTO `receptek` (`rid`, `rnev`, `osszetevok`, `elkeszites`) VALUES
(1, 'Mákos guba', '10db szikkadt kifli; 1liter tej; 1csom vaníliás cukor; 15ek darált mák; 7ek porcukor', 'A mákos guba elkészítéséhez a kifliket 1 cm-es karikákra vágjuk.\nA tejet a vaníliás cukorral felforraljuk.\nA kiflikarikákat a forró tejjel leöntjük, majd leszűrjük, és kinyomkodjuk belőle a tejet.\nEgy nagyobb jénai tálba egy réteg kiflit teszünk, majd porcukorral elkevert darált mákot szórunk rá, megint kiflit és megint mákot teszünk bele, amíg elfogynak a hozzávalók. Ha marad még mák, megszórjuk vele a tetejét is.\nHa szeretnénk, akkor 7-8 percre berakhatjuk 180 fokra előmelegített sütőbe. Összemelegítve, sütve is nagyon finom, de ha nem akarjuk sütni, a mákos guba úgyis fogyasztható. '),
(2, 'Fűszeres saslik petrezselymes burgonyával', '2ek olaj; 1mk só; 1mk delikát; 1tk piros paprika; 1mk	oregáno; 1mk majoránna; 1mk	bazsalikom; 35dkg csirkemell; 2db virsli; 4db sárgabarack; 4db gomba; 2db vöröshagyma; só; bors; 30dkg burgonya; só; 1ek olaj; 2ek petrezselyem; A salátához:; 1db paradicsom; 1db uborka; 1db vöröshagyma; só; bors', 'Először elkészítjük a pácot: az olajba belekeverjük a sót, a delikátot, a piros paprikát, az oregánót, a majoránnát, és a bazsalikomot. A csirkemellett bepácoljuk a fűszeres-olajos keverékkel és állni hagyjuk.\nA virsliket felvágjuk kisebb darabokra, a sárgabarackokat félbevágjuk, kimagozzuk. A gombát és a hagymát felkockázzuk, megsózzuk majd borsozzuk. Ezek után elkezdjük hurkapálcikákra feltűzdelni ízlés szerint, majd egy grill serpenyőben (vagy szabadtéri grillen) megsütjük.\nA burgonyát meghámozzuk, kisebb kockára vágjuk és sós vízben megfőzzük. Egy serpenyőben felhevítjük az olajat, beleszórjuk a petrezselymet, kicsit megfonnyasztjuk, majd beleforgatjuk a megfőtt burgonyát és kicsit lesütjük. \nA salátához a paradicsomot, az uborkát és a vörös hagymát felvágjuk, megsózzuk és megborsozzuk. \nA saslikot a petrezselymes burgonyával és a salátával tálaljuk.'),
(3, 'Rakott krumpli', '1kg krumpli; 1fej hagyma; 2szál lecsókolbász; 6db tojás; 25dkg szeletelt bacon; 5dl tejföl; 10dkg trappista sajt; só', 'Elkészítés: A krumplit héjastul sós vízben megfőzzük. A tojásokat hideg, erősen sós vízbe tesszük, felforraljuk, majd forrástól számítva 8-10 percig főzzük. A baconből 6 szeletet félreteszünk, a többit felkockázzuk, és kevés olajon a felaprított hagymával együtt kicsit összepirítjuk. Ha a krumpli, tojás kihűlt, vékony szeletekre vágjuk. A lecsókolbászt is karikázzuk.\r\n\r\nJénai aljára 4 szelet bacont rakunk, rá kerülnek a krumpliszeletek, só, kolbászkarikák, hagymás bacon, tojás, só, tejföl, majd ismét krumpli, só, kolbász, hagymás bacon, tojás, só, krumpli, tejföl. A tetejére a félrerakott bacont tesszü, reszelt trappista sajttal megszórjuk a tetejét. Előmelegített sütőben addig sütjük, míg a sajt rápirul.\r\n\r\n'),
(4, 'Zöldborsófőzelék', '45dkg zöldborsó; 1fej vöröshagyma; 1gerezd fokhagyma; 3dl tej; olívaolaj; vaj; só; bors; zöldségleveskocka; petrezselyem; ételízesítő', 'Egy edényben közepes hőfokon vajat és olajat hevítünk, majd még fagyott állapotban hozzáöntjük a zöldborsót. Kevergetve felolvasztjuk, majd meghintjük a szódabikarbónával és a felaprított petrezselyemmel, és fedő alatt, időnként megkeverve félpuhára (ráncosra) pároljuk. Sóval, cukorral ízesítjük.\nKözben felforraljuk a vizet.\nAmikor a borsó elkészült, meghintjük a liszttel, összekeverjük, fél percig pirítjuk, majd felöntjük a forró vízzel. Addig keverjük, amíg a borsóra tapadt liszt fel nem oldódik. Ekkor hozzákeverjük a tejet vagy tejszínt és jól összeforraljuk. Ha túl sűrűnek találjuk, vizet és/vagy tejet még adhatunk hozzá.'),
(5, 'Palacsinta', '30dkg búza liszt; 2dl szódavíz; só (ízlés szerint); 1mk cukor; 2csip szódabikarbóna; 2db tojás; 2ek olaj', 'A hozzávalókat egy habverővel csomómentesre összekeverjük. Egy serpenyőbe kevés olajat hevítünk (csak egyszer, többször nem kell, hiszen a tésztában már benne van az olaj).\r\nEgy merőkanál palacsintatésztát teszünk a felhevített serpenyőbe, mindkét oldalát megsütjük, majd egy tányérra tesszük. Tetszőleges töltelékekkel (pl. kakó, lekvár, túró, Nutella) töltjük, majd összehajtjuk és porcukorral megszórva tálaljuk.'),
(6, 'Sajtos pogácsa', '3dkg élesztő; 1tk cukor; 1dl tej; 50dkg liszt; 25dkg margarin; 2tk só; 2db tojássárgája; 1.75dl tejföl; 10dkg reszelt sajt; 1db tojássárgája a kenéshez', 'A sajtos pogácsa elkészítéséhez az élesztőt felfuttatjuk egy kevés meglangyosított, cukros tejben.\r\nA lisztet összemorzsoljuk a margarinnal és a sóval, utána összegyúrjuk a többi hozzávalóval és a felfuttatott élesztővel. Meleg helyen duplájára kelesztjük.\r\nKinyújtjuk és háromszor meghajtogatjuk a megkelt tésztát, mindig egy irányban. A hajtogatások között 30 percig pihentetjük.\r\nAmikor végeztünk az utolsó hajtogatással is, kinyújtjuk kb. ujjnyi vastagra. Megkenjük tojássárgájával, majd megszórjuk reszelt sajttal, (de akár köménnyel is megszórhatjuk), majd lisztbe mártott, apró pogácsaszaggatóval kiszaggatjuk.\r\nMiután a tepsibe tettük a pogácsákat, még 10 percig kelesztjük.\r\nElőmelegített sütőben 170 fokon, 25-30 perc alatt pirosra sütjük.');

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
(17, 'sanyia.kiraly@gmail.com', 'lali', '$2y$10$dWbZRbuPIgJTxSgOSiBl8OY9QNRWzwVaGPxfDdBg17kPmDIctBBpu', '', '2019-03-15', '2022-09-24 21:35:42'),
(18, 'proba@gmail.com', 'baluka0104', '$2y$10$PGPkbut9iSud9vrvi1v/Y.b4cBvFZ/FDNWnG5d8wCZJGiMxBQrvye', '', '2003-01-04', '2022-10-03 22:39:53');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `receptek`
--
ALTER TABLE `receptek`
  ADD PRIMARY KEY (`rid`);

--
-- A tábla indexei `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `receptek`
--
ALTER TABLE `receptek`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT a táblához `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
