-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2022. Sze 27. 18:31
-- Kiszolgáló verziója: 10.4.13-MariaDB
-- PHP verzió: 7.4.7

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
  `rnev` varchar(25) NOT NULL,
  `osszetevok` text NOT NULL,
  `elkeszites` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `receptek`
--

INSERT INTO `receptek` (`rid`, `rnev`, `osszetevok`, `elkeszites`) VALUES
(1, 'Mákos guba', '10db    szikkadt kifli\r\n1liter	tej	\r\n1csom	vaníliás cukor	\r\n15ek	darált mák	\r\n7ek	porcukor', 'A mákos guba elkészítéséhez a kifliket 1 cm-es karikákra vágjuk.\r\nA tejet a vaníliás cukorral felforraljuk.\r\nA kiflikarikákat a forró tejjel leöntjük, majd leszűrjük, és kinyomkodjuk belőle a tejet.\r\nEgy nagyobb jénai tálba egy réteg kiflit teszünk, majd porcukorral elkevert darált mákot szórunk rá, megint kiflit és megint mákot teszünk bele, amíg elfogynak a hozzávalók. Ha marad még mák, megszórjuk vele a tetejét is.\r\nHa szeretnénk, akkor 7-8 percre berakhatjuk 180 fokra előmelegített sütőbe. Összemelegítve, sütve is nagyon finom, de ha nem akarjuk sütni, a mákos guba úgyis fogyasztható. '),
(2, 'Fűszeres saslik petrezsel', '2ek	olaj	\r\n1mk	só	\r\n1mk	delikát	\r\n1tk	piros paprika	\r\n1mk	oregáno	\r\n1mk	majoránna	\r\n1mk	bazsalikom	\r\n35dkg	csirkemell	\r\n2db	virsli	\r\n4db	sárgabarack	\r\n4db	 gomba	\r\n2db	vöröshagyma	\r\nsó	\r\nbors\r\n30dkg	burgonya	\r\nsó	\r\n1ek	olaj	\r\n2ek	petrezselyem	\r\nA salátához:\r\n1db	paradicsom	\r\n1db	uborka	\r\n1db	vöröshagyma	\r\nsó	\r\nbors	', 'Először elkészítjük a pácot: az olajba belekeverjük a sót, a delikátot, a piros paprikát, az oregánót, a majoránnát, és a bazsalikomot. A csirkemellett bepácoljuk a fűszeres-olajos keverékkel és állni hagyjuk.\r\nA virsliket felvágjuk kisebb darabokra, a sárgabarackokat félbevágjuk, kimagozzuk. A gombát és a hagymát felkockázzuk, megsózzuk majd borsozzuk. Ezek után elkezdjük hurkapálcikákra feltűzdelni ízlés szerint, majd egy grill serpenyőben (vagy szabadtéri grillen) megsütjük.\r\nA burgonyát meghámozzuk, kisebb kockára vágjuk és sós vízben megfőzzük. Egy serpenyőben felhevítjük az olajat, beleszórjuk a petrezselymet, kicsit megfonnyasztjuk, majd beleforgatjuk a megfőtt burgonyát és kicsit lesütjük. \r\nA salátához a paradicsomot, az uborkát és a vörös hagymát felvágjuk, megsózzuk és megborsozzuk. \r\nA saslikot a petrezselymes burgonyával és a salátával tálaljuk.'),
(3, 'Rakott krumpli', '1kg	krumpli	\r\n1fej	hagyma	\r\n2szál	lecsókolbász	\r\n6db	tojás	\r\n25dkg	szeletelt bacon	\r\n5dl	tejföl	\r\n10dkg	trappista sajt	\r\nsó	', 'Elkészítés: A krumplit héjastul sós vízben megfőzzük. A tojásokat hideg, erősen sós vízbe tesszük, felforraljuk, majd forrástól számítva 8-10 percig főzzük. A baconből 6 szeletet félreteszünk, a többit felkockázzuk, és kevés olajon a felaprított hagymával együtt kicsit összepirítjuk. Ha a krumpli, tojás kihűlt, vékony szeletekre vágjuk. A lecsókolbászt is karikázzuk.\r\n\r\nJénai aljára 4 szelet bacont rakunk, rá kerülnek a krumpliszeletek, só, kolbászkarikák, hagymás bacon, tojás, só, tejföl, majd ismét krumpli, só, kolbász, hagymás bacon, tojás, só, krumpli, tejföl. A tetejére a félrerakott bacont tesszü, reszelt trappista sajttal megszórjuk a tetejét. Előmelegített sütőben addig sütjük, míg a sajt rápirul.\r\n\r\n'),
(4, 'Zöldborsófőzelék', '45dkg	zöldborsó	\r\n1fej	vöröshagyma	\r\n1gerezd	fokhagyma	\r\n3dl	tej	\r\nolívaolaj	\r\nvaj	\r\nsó	\r\nbors	\r\nzöldségleveskocka	\r\npetrezselyem	\r\nételízesítő', '45dkg	zöldborsó	\r\n1fej	vöröshagyma	\r\n1gerezd	fokhagyma	\r\n3dl	tej	\r\nolívaolaj	\r\nvaj	\r\nsó	\r\nbors	\r\nzöldségleveskocka	\r\npetrezselyem	\r\nételízesítő'),
(5, 'Palacsinta', '30dkg	búza liszt	\r\n2dl	szódavíz	\r\nsó (ízlés szerint)	\r\n1mk	cukor	\r\n2csip	szódabikarbóna	\r\n2db	tojás	\r\n2ek	olaj', 'A hozzávalókat egy habverővel csomómentesre összekeverjük. Egy serpenyőbe kevés olajat hevítünk (csak egyszer, többször nem kell, hiszen a tésztában már benne van az olaj).\r\nEgy merőkanál palacsintatésztát teszünk a felhevített serpenyőbe, mindkét oldalát megsütjük, majd egy tányérra tesszük. Tetszőleges töltelékekkel (pl. kakó, lekvár, túró, Nutella) töltjük, majd összehajtjuk és porcukorral megszórva tálaljuk.'),
(6, 'Sajtos pogácsa', '3dkg	élesztő	\r\n1tk	cukor	\r\n1dl	tej	\r\n50dkg	liszt	\r\n25dkg	margarin	\r\n2tk	só	\r\n2db	tojássárgája	\r\n1.75dl	tejföl	\r\n10dkg	reszelt sajt	\r\n1db	tojássárgája a kenéshez', 'A sajtos pogácsa elkészítéséhez az élesztőt felfuttatjuk egy kevés meglangyosított, cukros tejben.\r\nA lisztet összemorzsoljuk a margarinnal és a sóval, utána összegyúrjuk a többi hozzávalóval és a felfuttatott élesztővel. Meleg helyen duplájára kelesztjük.\r\nKinyújtjuk és háromszor meghajtogatjuk a megkelt tésztát, mindig egy irányban. A hajtogatások között 30 percig pihentetjük.\r\nAmikor végeztünk az utolsó hajtogatással is, kinyújtjuk kb. ujjnyi vastagra. Megkenjük tojássárgájával, majd megszórjuk reszelt sajttal, (de akár köménnyel is megszórhatjuk), majd lisztbe mártott, apró pogácsaszaggatóval kiszaggatjuk.\r\nMiután a tepsibe tettük a pogácsákat, még 10 percig kelesztjük.\r\nElőmelegített sütőben 170 fokon, 25-30 perc alatt pirosra sütjük.');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `receptek`
--
ALTER TABLE `receptek`
  ADD PRIMARY KEY (`rid`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `receptek`
--
ALTER TABLE `receptek`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
