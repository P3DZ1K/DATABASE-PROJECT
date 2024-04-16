-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 16, 2024 at 08:23 PM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wypozyczalnia_samochodow`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dane_wypozyczen`
--

CREATE TABLE `dane_wypozyczen` (
  `id_wypozyczenia` int(11) DEFAULT NULL,
  `id_samochodu` int(11) DEFAULT NULL,
  `cena_doba` float DEFAULT NULL,
  `ilosc_dob` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dane_wypozyczen`
--

INSERT INTO `dane_wypozyczen` (`id_wypozyczenia`, `id_samochodu`, `cena_doba`, `ilosc_dob`) VALUES
(1, 2, 550, 2),
(2, 6, 250, 3),
(3, 11, 300, 1),
(3, 10, 250, 1),
(4, 7, 800, 1),
(5, 4, 450, 3),
(6, 3, 450, 2),
(7, 3, 450, 1),
(8, 5, 250, 4),
(9, 6, 250, 2),
(10, 2, 550, 1),
(11, 2, 550, 1),
(12, 1, 200, 3),
(12, 6, 250, 3),
(13, 3, 450, 3),
(14, 5, 250, 3),
(15, 7, 800, 4),
(16, 2, 550, 2),
(16, 8, 800, 2),
(17, 1, 200, 1),
(18, 4, 450, 2),
(19, 6, 250, 2),
(20, 7, 800, 2),
(21, 4, 450, 2),
(22, 10, 250, 2),
(23, 2, 550, 1),
(24, 4, 450, 1),
(25, 6, 250, 1),
(26, 7, 800, 1),
(27, 6, 250, 3),
(28, 3, 450, 5),
(29, 11, 300, 2),
(30, 6, 250, 3),
(31, 11, 300, 1),
(32, 4, 450, 1),
(33, 1, 200, 2),
(34, 2, 550, 3),
(35, 3, 450, 2),
(36, 6, 250, 3),
(37, 3, 450, 1),
(37, 7, 800, 1),
(38, 10, 250, 1),
(39, 2, 550, 1),
(40, 6, 250, 3),
(41, 7, 800, 9),
(42, 4, 450, 4),
(43, 1, 200, 2),
(44, 10, 250, 2),
(45, 4, 450, 2),
(46, 2, 550, 2),
(47, 1, 200, 3),
(47, 6, 250, 3),
(48, 3, 450, 2),
(48, 10, 250, 2),
(49, 2, 550, 2),
(50, 10, 250, 1),
(51, 3, 450, 1),
(52, 4, 450, 1),
(52, 11, 300, 1),
(53, 1, 200, 2),
(54, 2, 550, 1),
(55, 7, 800, 1),
(56, 4, 450, 1),
(57, 6, 250, 1),
(58, 10, 250, 2),
(59, 11, 300, 1),
(60, 2, 550, 2),
(61, 4, 450, 2),
(62, 1, 200, 3),
(63, 4, 450, 2),
(64, 7, 800, 1),
(64, 5, 250, 1),
(65, 2, 550, 1),
(66, 6, 250, 3),
(66, 11, 300, 3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klienci`
--

CREATE TABLE `klienci` (
  `id_klienta` int(11) NOT NULL,
  `imie_klienta` varchar(45) DEFAULT NULL,
  `nazwisko_klienta` varchar(45) DEFAULT NULL,
  `haslo_klienta` varchar(15) NOT NULL,
  `miasto_klienta` varchar(45) DEFAULT NULL,
  `telefon_klienta` varchar(14) DEFAULT NULL,
  `email_klienta` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `klienci`
--

INSERT INTO `klienci` (`id_klienta`, `imie_klienta`, `nazwisko_klienta`, `haslo_klienta`, `miasto_klienta`, `telefon_klienta`, `email_klienta`) VALUES
(1, 'adam', 'Stelmach', 'qwerty', 'Grajewo', '985-746-350', 'stelmaszczyk@wp.pl'),
(2, 'Adam', 'Wrzosek', 'qwerty', 'Bielsko-Biała', '756-358-068', 'wrzosek_adam@gmail.com'),
(3, 'Mateusz', 'Karwowski', 'qwerty', 'Gliwice', '674-968-785', 'mati_25@onet.pl'),
(4, 'Anna', 'Ajewska', 'qwerty', 'Biłgoraj', '455-734-224', 'konstytycja_jest_ok@gmail.com'),
(5, 'Dawid', 'Stary', 'zaq1@WSX', 'Brzegabrze', '485-236-150', 'mlody_stary@wp.pl'),
(6, 'Monika', 'Młoda', 'zaq1@WSX', 'Zabrze', '985-749-607', 'monia21@gmail.com'),
(7, 'Weronika', 'Eczarska', 'zaq1@WSX', 'Chorzów', '185-716-150', 'ecza_pecza@onet.pl'),
(8, 'Marek', 'Marecki', 'zaq1@WSX', 'Łódź', '856-368-028', 'marunio@wp.pl'),
(9, 'Tomasz', 'Karwowski', 'zaq1@WSX', 'Białystok', '485-769-617', 'karwowski_tomek@gmail.com'),
(10, 'Grażyna', 'Witkowska', 'zaq1@WSX', 'Kielce', '345-726-354', 'witkowa17@onet.pl');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `samochody`
--

CREATE TABLE `samochody` (
  `id_samochodu` int(11) NOT NULL,
  `marka` varchar(20) DEFAULT NULL,
  `model` varchar(20) DEFAULT NULL,
  `data_prod` year(4) DEFAULT NULL,
  `dostepnosc` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `samochody`
--

INSERT INTO `samochody` (`id_samochodu`, `marka`, `model`, `data_prod`, `dostepnosc`) VALUES
(1, 'opel', 'astra', '2000', 2),
(2, 'mercedes', 'CLK', '2011', 3),
(3, 'audi', 'A4', '2012', 1),
(4, 'bmw', '3', '2015', 3),
(5, 'renault', 'clio', '2022', 3),
(6, 'opel', 'corsa', '2022', 1),
(7, 'mercedes', 'S', '2021', 4),
(8, 'audi', 'A8', '2019', 5),
(9, 'bmw', 'X6', '2018', 3),
(10, 'renault', 'megane', '2017', 2),
(11, 'ford', 'mondeo', '2005', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wypozyczenia`
--

CREATE TABLE `wypozyczenia` (
  `id_wypozyczenia` int(11) NOT NULL,
  `data_wyp` date DEFAULT NULL,
  `data_zwr` date DEFAULT NULL,
  `id_klienta` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wypozyczenia`
--

INSERT INTO `wypozyczenia` (`id_wypozyczenia`, `data_wyp`, `data_zwr`, `id_klienta`) VALUES
(1, '2022-04-10', '2022-04-12', 1),
(2, '2022-04-10', '2022-04-13', 2),
(3, '2022-04-10', '2022-04-11', 6),
(5, '2022-04-11', '2022-04-14', 1),
(6, '2022-04-11', '2022-04-13', 7),
(7, '2022-04-11', '2022-04-12', 4),
(11, '2022-04-15', '2022-04-16', 3),
(12, '2022-04-15', '2022-04-18', 6),
(13, '2022-05-01', '2022-05-04', 9),
(14, '2022-05-01', '2022-05-04', 1),
(16, '2022-05-22', '2022-05-24', 1),
(19, '2022-06-03', '2022-06-05', 9),
(20, '2022-06-03', '2022-06-05', 8),
(21, '2022-06-10', '2022-06-12', 6),
(22, '2022-07-01', '2022-07-03', 3),
(23, '2022-07-04', '2022-07-05', 2),
(26, '2022-07-22', '2022-07-23', 9),
(27, '2022-07-30', '2022-08-02', 6),
(28, '2022-08-01', '2022-08-06', 3),
(29, '2022-08-02', '2022-08-04', 4),
(30, '2022-08-07', '2022-08-10', 9),
(31, '2022-08-11', '2022-08-12', 10),
(32, '2022-08-11', '2022-08-12', 1),
(33, '2022-08-11', '2022-08-13', 5),
(34, '2022-08-12', '2022-08-15', 7),
(35, '2022-08-15', '2022-08-17', 6),
(36, '2022-08-15', '2022-08-18', NULL),
(37, '2022-08-15', '2022-08-16', NULL),
(38, '2022-08-15', '2022-08-16', 9),
(39, '2022-08-18', '2022-08-19', 5),
(40, '2022-08-29', '2022-09-01', 2),
(41, '2022-09-01', '2022-09-10', 7),
(42, '2022-09-01', '2022-09-05', 8),
(43, '2022-09-01', '2022-09-03', NULL),
(44, '2022-09-05', '2022-09-07', 9),
(45, '2022-09-05', '2022-09-07', 2),
(46, '2022-09-06', '2022-09-08', 5),
(47, '2022-09-07', '2022-09-10', 7),
(48, '2022-09-15', '2022-09-17', 6),
(49, '2022-09-16', '2022-09-18', 8),
(50, '2022-09-19', '2022-09-20', 9),
(51, '2022-09-19', '2022-09-20', NULL),
(52, '2022-09-19', '2022-09-20', 10),
(53, '2022-09-19', '2022-09-21', 9),
(54, '2022-09-24', '2022-09-25', 8),
(55, '2022-10-05', '2022-10-06', 7),
(56, '2022-10-05', '2022-10-06', 2),
(57, '2022-10-07', '2022-10-08', 1),
(58, '2022-10-09', '2022-10-11', 5),
(59, '2022-10-14', '2022-10-15', 8),
(60, '2022-10-14', '2022-10-15', 3),
(61, '2022-10-20', '2022-10-22', 7),
(62, '2022-10-24', '2022-10-27', 4),
(63, '2022-11-05', '2022-11-07', NULL),
(64, '2022-11-11', '2022-11-12', 5),
(65, '2022-11-12', '2022-11-13', 1),
(66, '2022-11-15', '2022-11-18', 4);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `dane_wypozyczen`
--
ALTER TABLE `dane_wypozyczen`
  ADD KEY `w_1` (`id_wypozyczenia`),
  ADD KEY `s_1` (`id_samochodu`);

--
-- Indeksy dla tabeli `klienci`
--
ALTER TABLE `klienci`
  ADD PRIMARY KEY (`id_klienta`);

--
-- Indeksy dla tabeli `samochody`
--
ALTER TABLE `samochody`
  ADD PRIMARY KEY (`id_samochodu`);

--
-- Indeksy dla tabeli `wypozyczenia`
--
ALTER TABLE `wypozyczenia`
  ADD PRIMARY KEY (`id_wypozyczenia`),
  ADD KEY `k_1` (`id_klienta`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `klienci`
--
ALTER TABLE `klienci`
  MODIFY `id_klienta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `samochody`
--
ALTER TABLE `samochody`
  MODIFY `id_samochodu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `wypozyczenia`
--
ALTER TABLE `wypozyczenia`
  MODIFY `id_wypozyczenia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dane_wypozyczen`
--
ALTER TABLE `dane_wypozyczen`
  ADD CONSTRAINT `s_1` FOREIGN KEY (`id_samochodu`) REFERENCES `samochody` (`id_samochodu`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `w_1` FOREIGN KEY (`id_wypozyczenia`) REFERENCES `wypozyczenia` (`id_wypozyczenia`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `wypozyczenia`
--
ALTER TABLE `wypozyczenia`
  ADD CONSTRAINT `k_1` FOREIGN KEY (`id_klienta`) REFERENCES `klienci` (`id_klienta`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `p_1` FOREIGN KEY (`id_pracownika`) REFERENCES `pracownicy` (`id_pracownika`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
