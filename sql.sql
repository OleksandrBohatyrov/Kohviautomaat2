-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: d123169.mysql.zonevs.eu
-- Loomise aeg: Mai 06, 2024 kell 09:10 EL
-- Serveri versioon: 10.4.32-MariaDB-log
-- PHP versioon: 8.2.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Andmebaas: `d123169_andmebaas`
--

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `account`
--

CREATE TABLE `account` (
  `AccountId` int(11) NOT NULL,
  `Name` varchar(30) DEFAULT NULL,
  `Email` varchar(40) DEFAULT NULL,
  `Password` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Andmete tõmmistamine tabelile `account`
--

INSERT INTO `account` (`AccountId`, `Name`, `Email`, `Password`) VALUES
(1, 'Max', 'Max@gmail.com', '$2y$10$OMAgKS/hmpqBurS4/tkoVOOJ367EnknvuVBXF18q2iFzjsUCbrrLK'),
(2, 'Sos', 'Sos@gmail.com', '$2y$10$HDBC2zfy1JYZ7cKcviq2quBCr1CEVKDMo74cYbVLV7thgJMNhhnPu'),
(3, 'asd', 'bogatyrev895@gmail.com', '$2y$10$sJSrgpwHL7PqYl6p5h6wq.9jktHB.tIa2ridb9txNuTP4uGOWO452'),
(4, 'Oleksandr', 'kaka@gmail.com', '$2y$10$AGu6kwwC9GKsLCHIW.M6k.W6WUEQha.y/YcMq0GfCR2aKnZ5hkVsi'),
(5, 'kaka', 'opa@gmail.com', '$2y$10$dm6lL/lCbDmvAa8TzLwRfu1l8GloUybl2bEaoa1BEdvewmfAHZib.'),
(6, 'Penis', 'asdasd@gmail.com', '$2y$10$Ok8Mq7wj15Pkdu1la61jCe9Rmj3JsOo5uVGKnU8EWzMkPznlm/QtS'),
(7, 'peniss', 'peniss@gmail.com', '$2y$10$r2dkvrBarITg1tueTht8P.coC/7m80Aaa5zeNwSmFMwNTSXAod0aK'),
(8, 'asdasd', '2sada@gmail.com', '$2y$10$QljlC71ePNjCww5FBalrQO9Bn0TYq/F.46nl8BTgVMk/0MldBFZgy'),
(9, 'Bo', 'df@gmail.com', '$2y$10$rQzisoLCISskLmBha0DOEOIGYDvAv28DAfgZEeqw7k6sbGQWFFz7K'),
(10, '21321321', 'Waeawe@gma', '$2y$10$KBtU/Y7vYdajH.QCSN/k3.99C/XybptCeNYsBtKgF/o9nWHrVzTou'),
(11, 'asdasd', '', '$2y$10$N7UcNVV7BjrGVcQhBLtpr.my.8r71gZjKhlQ/KoAbZYJBVHuQwTWq'),
(12, 'asdasd', 'asd@gmail.com', '$2y$10$82LyKHUCyXFtDY6QPZGXve0.59mh5Lj7xIFZBc7FIP/MBxYw3M2By'),
(13, 'фывыфвы', 'asdsads@gmail.com', '$2y$10$aHS5EP2/Kzb0ewYCys1uO.LiwexF7oA9uVe..TEuBF6WTCul9udRq');

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `ilm`
--

CREATE TABLE `ilm` (
  `id` int(11) NOT NULL,
  `kuupaev` date DEFAULT NULL,
  `temp` int(11) DEFAULT NULL,
  `kirjeldus` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Andmete tõmmistamine tabelile `ilm`
--

INSERT INTO `ilm` (`id`, `kuupaev`, `temp`, `kirjeldus`) VALUES
(5, '2023-11-17', 5, 'фывыфв');

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `inimene`
--

CREATE TABLE `inimene` (
  `id` int(11) NOT NULL,
  `eesnimi` varchar(20) DEFAULT NULL,
  `perekonnanimi` varchar(40) DEFAULT NULL,
  `maakond_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Andmete tõmmistamine tabelile `inimene`
--

INSERT INTO `inimene` (`id`, `eesnimi`, `perekonnanimi`, `maakond_id`) VALUES
(1, 'Oleksandr', 'Bohatyrov', 1),
(2, 'Luca', 'Gluhhov', 1),
(3, 'Martin', 'Nõmmiste', 3),
(5, 'Maksim', 'Myskevitch', 2),
(8, 'Minu', 'Nimi', 8),
(9, 'Yaroslav', 'Yekasov', 1);

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `jokes`
--

CREATE TABLE `jokes` (
  `id` int(11) NOT NULL,
  `content` text NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Andmete tõmmistamine tabelile `jokes`
--

INSERT INTO `jokes` (`id`, `content`, `timestamp`) VALUES
(2, 'Что-то выдавало в Штирлице советского разведчика. Не то мужественный профиль, не то решительная походка, не то волочащийся за ним парашют.', '2023-12-12 09:15:46'),
(3, 'Почему программисты не любят гулять по лесу? Потому что там много деревьев', '2023-12-12 09:17:12'),
(4, ' Как программист представляет себе идеальное воскресенье? select * from sunday', '2023-12-12 09:17:35'),
(6, 'Сын сказал, что когда вырастет, у него будет несколько профессий: клоун, фокусник и программист. Он ещё не знает, что в IT это одна профессия.', '2023-12-19 07:26:03'),
(7, 'Попроси программиста проверить 10 строк кода, он найдёт 10 проблем.\r\nПопроси его проверить 500 строк, он скажет, что выглядит норм.', '2023-12-19 07:27:43');

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `kassid`
--

CREATE TABLE `kassid` (
  `id` int(11) NOT NULL,
  `nimi` varchar(30) DEFAULT NULL,
  `toug` varchar(30) DEFAULT NULL,
  `varv` varchar(30) DEFAULT NULL,
  `pilt` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Andmete tõmmistamine tabelile `kassid`
--

INSERT INTO `kassid` (`id`, `nimi`, `toug`, `varv`, `pilt`) VALUES
(2, 'asd', 'dsa', 'blue', 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/54/Maine_Coon_look.jpg/800px-Maine_Coon_look.jpg'),
(5, 'asdsadsad', 'asdasda', '#ff0000', 'https://media-cldnry.s-nbcnews.com/image/upload/t_fit-1240w,f_auto,q_auto:best/rockcms/2022-08/220805-domestic-cat-mjf-1540-382ba2.jpg'),
(6, 'Papa', 'Bababoieeee', '#35ca53', 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/30/Vulpes_vulpes_ssp_fulvus.jpg/1200px-Vulpes_vulpes_ssp_fulvus.jpg');

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `kasutaja`
--

CREATE TABLE `kasutaja` (
  `id` int(11) NOT NULL,
  `kasutaja` varchar(30) DEFAULT NULL,
  `parool` varchar(100) DEFAULT NULL,
  `onAdmin` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Andmete tõmmistamine tabelile `kasutaja`
--

INSERT INTO `kasutaja` (`id`, `kasutaja`, `parool`, `onAdmin`) VALUES
(1, 'admin', 'suoGdKGn5T4C.', 1),
(3, 'kasutaja', 'su.7ZLQEdBF/2', 0),
(4, 'Martin', 'suMcch6V6CcpA', 0),
(5, 'irina', 'su/WBn0ezktlY', 0),
(6, 'lupa123', 'suhoKca/JgQ1A', 0),
(7, 'loka123', 'suXIZnxI7MgCQ', 0),
(8, 'poka123', 'suRyLG7WTXYDs', 0),
(9, 'laki123!', 'su6RhssNF3er2', 0),
(10, 'luka123!', 'suxZhtmzhG0Lg', 0),
(11, 'popo123', 'suX/yG1N7AZX.', 0),
(12, 'lalala123!', 'suFGAA/63T8GM', 0);

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `kaubad`
--

CREATE TABLE `kaubad` (
  `id` int(11) NOT NULL,
  `nimetus` varchar(255) DEFAULT NULL,
  `kaubagrupi_id` int(11) DEFAULT NULL,
  `hind` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Andmete tõmmistamine tabelile `kaubad`
--

INSERT INTO `kaubad` (`id`, `nimetus`, `kaubagrupi_id`, `hind`) VALUES
(1, 'ahjutellis', 1, 8.20),
(2, 'fassaaditellis', 1, 7.50),
(3, 'bituumenrull', 2, 520.00),
(4, 'asdasd', 1, 111.00);

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `kohviautomaat`
--

CREATE TABLE `kohviautomaat` (
  `id` int(11) NOT NULL,
  `joohinimi` char(30) DEFAULT NULL,
  `topsepakis` int(11) DEFAULT NULL,
  `topsejuua` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Andmete tõmmistamine tabelile `kohviautomaat`
--

INSERT INTO `kohviautomaat` (`id`, `joohinimi`, `topsepakis`, `topsejuua`) VALUES
(5, 'kakao', 0, 411),
(8, 'tee', 0, 52),
(9, 'kohv', 0, 260),
(10, 'test', 2, 200),
(11, '', 0, 0);

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `maakond`
--

CREATE TABLE `maakond` (
  `id` int(11) NOT NULL,
  `maakond_nimi` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Andmete tõmmistamine tabelile `maakond`
--

INSERT INTO `maakond` (`id`, `maakond_nimi`) VALUES
(15, '123'),
(11, 'asdsad'),
(6, 'asdsadas'),
(7, 'asdsadsadsadsa'),
(12, 'asdsadsdsa'),
(13, 'dsadasdsa'),
(16, 'eee'),
(1, 'Harjumaa'),
(14, 'hey'),
(10, 'Hi'),
(2, 'Pärnumaa'),
(8, 'Tartumaa'),
(9, 'test'),
(3, 'Valgamaa');

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `syndmused`
--

CREATE TABLE `syndmused` (
  `id` int(11) NOT NULL,
  `syndmus` varchar(30) DEFAULT NULL,
  `kuupaev` date DEFAULT NULL,
  `kirjeldus` varchar(100) DEFAULT NULL,
  `pilt` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Andmete tõmmistamine tabelile `syndmused`
--

INSERT INTO `syndmused` (`id`, `syndmus`, `kuupaev`, `kirjeldus`, `pilt`) VALUES
(2, 'Turnlir', '2023-11-14', 'Teine kursuse mälumäng', ''),
(3, 'Sport', NULL, 'Esimene kursuse mälumäng', ''),
(12, 'asdasdsa', '2023-11-01', 'red', ''),
(14, 'pilt', '2023-11-16', 'asd', 'https://artemovimento.ee/wp-content/uploads/2022/09/Barokktants.png'),
(15, 'asd', '2023-11-08', NULL, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSj91jn9IQxdOKw4uK9GmN4tGNF__Xgx5PFNQ&usqp=CAU'),
(16, 'asdasda', '2023-11-29', '', 'https://d27jswm5an3efw.cloudfront.net/app/uploads/2019/07/insert-image-html.jpg');

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `tantsud`
--

CREATE TABLE `tantsud` (
  `id` int(11) NOT NULL,
  `tantsupaar` varchar(30) DEFAULT NULL,
  `punktid` int(11) DEFAULT 0,
  `kommentaarid` text DEFAULT ' ',
  `ava_paev` datetime DEFAULT NULL,
  `avalik` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Andmete tõmmistamine tabelile `tantsud`
--

INSERT INTO `tantsud` (`id`, `tantsupaar`, `punktid`, `kommentaarid`, `ava_paev`, `avalik`) VALUES
(12, ' Pudge + Lina', 2, 'hea\nhea\nhea\n', '2024-01-10 11:55:51', 1);

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `tarpv22`
--

CREATE TABLE `tarpv22` (
  `id` int(11) NOT NULL,
  `nimi` varchar(30) DEFAULT NULL,
  `perenimi` varchar(31) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Andmete tõmmistamine tabelile `tarpv22`
--

INSERT INTO `tarpv22` (`id`, `nimi`, `perenimi`, `address`) VALUES
(34, 'Maksim', 'Artjomov', 'maksimartjomov22.thkit.ee'),
(35, 'Oleksandr', 'Bohatyrov', 'oleksandrbohatyrov22.thkit.ee'),
(36, 'Anton', 'Buivol', 'antonbuivol22.thkit.ee'),
(37, 'Edvard', 'Datser', 'edvarddatser22.thkit.ee'),
(38, 'Timur', 'Denisenko', 'timurdenisenko22.thkit.ee'),
(39, 'Maksim ', 'Dotškin', 'maksimdotskin22.thkit.ee'),
(40, 'Egor', 'Fedorenko', 'egorfedorenko22.thkit.ee'),
(41, 'Luca', 'Gluhhov', 'lucagluhhov22.thkit.ee'),
(42, 'Deniss ', 'Gorjunov', 'denissgorjunov22.thkit.ee'),
(43, 'Martin ', 'Kemppi', 'martinkemppi22.thkit.ee'),
(44, 'Arkadi', 'Korotõtš', 'arkadikorotots22.thkit.ee'),
(45, 'Matvei ', 'Kulakovski', 'matveikulakovski22.thkit.ee'),
(46, 'Darja ', 'Miljukova', 'darjamiljukova22.thkit.ee'),
(47, 'Veronika ', 'Milovzorova', 'veronikamilovzorova22.thkit.ee'),
(48, 'Maksym ', 'Miskevych', 'maksymmiskevych22.thkit.ee'),
(49, 'Ekaterina ', 'Mõsljajeva', 'ekaterinamosljajeva22.thkit.ee'),
(51, 'Aleksander ', 'Rogovski', 'aleksanderrogovski22.thkit.ee'),
(52, 'Anna ', 'Sohromova', 'annasohromova22.thkit.ee'),
(53, 'Maksim', 'Tšepelevitš', 'maksimtsepelevits22.thkit.ee'),
(54, 'Yaroslav ', 'Yekasov', 'yaroslavyekasov22.thkit.ee'),
(55, 'Artur ', 'Šuškevitš', 'artursuskevits22.thkit.ee');

--
-- Indeksid tõmmistatud tabelitele
--

--
-- Indeksid tabelile `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`AccountId`);

--
-- Indeksid tabelile `ilm`
--
ALTER TABLE `ilm`
  ADD PRIMARY KEY (`id`);

--
-- Indeksid tabelile `inimene`
--
ALTER TABLE `inimene`
  ADD PRIMARY KEY (`id`),
  ADD KEY `maakond_id` (`maakond_id`);

--
-- Indeksid tabelile `jokes`
--
ALTER TABLE `jokes`
  ADD PRIMARY KEY (`id`);

--
-- Indeksid tabelile `kassid`
--
ALTER TABLE `kassid`
  ADD PRIMARY KEY (`id`);

--
-- Indeksid tabelile `kasutaja`
--
ALTER TABLE `kasutaja`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kasutaja` (`kasutaja`);

--
-- Indeksid tabelile `kaubad`
--
ALTER TABLE `kaubad`
  ADD PRIMARY KEY (`id`);

--
-- Indeksid tabelile `kohviautomaat`
--
ALTER TABLE `kohviautomaat`
  ADD PRIMARY KEY (`id`);

--
-- Indeksid tabelile `maakond`
--
ALTER TABLE `maakond`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `maakond_nimi` (`maakond_nimi`);

--
-- Indeksid tabelile `syndmused`
--
ALTER TABLE `syndmused`
  ADD PRIMARY KEY (`id`);

--
-- Indeksid tabelile `tantsud`
--
ALTER TABLE `tantsud`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tantsupaar` (`tantsupaar`);

--
-- Indeksid tabelile `tarpv22`
--
ALTER TABLE `tarpv22`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT tõmmistatud tabelitele
--

--
-- AUTO_INCREMENT tabelile `account`
--
ALTER TABLE `account`
  MODIFY `AccountId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT tabelile `ilm`
--
ALTER TABLE `ilm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT tabelile `inimene`
--
ALTER TABLE `inimene`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT tabelile `jokes`
--
ALTER TABLE `jokes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT tabelile `kassid`
--
ALTER TABLE `kassid`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT tabelile `kasutaja`
--
ALTER TABLE `kasutaja`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT tabelile `kaubad`
--
ALTER TABLE `kaubad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT tabelile `kohviautomaat`
--
ALTER TABLE `kohviautomaat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT tabelile `maakond`
--
ALTER TABLE `maakond`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT tabelile `syndmused`
--
ALTER TABLE `syndmused`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT tabelile `tantsud`
--
ALTER TABLE `tantsud`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT tabelile `tarpv22`
--
ALTER TABLE `tarpv22`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
