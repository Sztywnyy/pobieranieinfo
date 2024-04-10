-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2024 at 12:09 AM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `praktyki`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `title`, `content`, `user_id`) VALUES
(1, 'Pierwszy post', 'Treść pierwszego posta', 1),
(2, 'Drugi post', 'Treść drugiego posta', 1),
(3, 'Ważne ogłoszenie', 'Tutaj znajdziesz ważne ogłoszenie', 2),
(4, 'Nowy artykuł', 'Tutaj znajdziesz nowy artykuł', 3),
(5, 'Coś ciekawego', 'Treść ciekawego posta', 4),
(6, 'Podróże', 'Opowieść o podróżach', 5),
(7, 'Nowa receptura', 'Przepis na pyszne danie', 6),
(8, 'Ostatnie wydarzenia', 'Relacja z ostatnich wydarzeń', 7),
(9, 'Mój ulubiony temat', 'Opis ulubionego tematu', 8),
(10, 'Refleksje', 'Moje refleksje na temat życia', 9),
(11, 'Przyszłość', 'Co przyniesie przyszłość', 10),
(12, 'Nowe hobby', 'Opowieść o nowym hobby', 11),
(13, 'Kulinaria', 'Wskazówki kulinarnego mistrza', 12),
(14, 'Podsumowanie', 'Podsumowanie ostatnich dni', 13),
(15, 'Ciekawostki', 'Ciekawostki ze świata', 14),
(16, 'Pogadajmy', 'Przemyślenia na różne tematy', 15);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `firstname`, `lastname`, `password`) VALUES
(1, 'Jan', 'Kowalski', 'haslo123'),
(2, 'Anna', 'Nowak', 'qwerty321'),
(3, 'Michał', 'Woźniak', 'bezpiecznehaslo'),
(4, 'Karolina', 'Jankowska', 'karolka1'),
(5, 'Piotr', 'Lewandowski', 'pl123'),
(6, 'Magdalena', 'Kowalczyk', 'maggie87'),
(7, 'Tomasz', 'Zieliński', 'tomcio2'),
(8, 'Katarzyna', 'Szymańska', 'kasia123'),
(9, 'Jakub', 'Duda', 'dudududu'),
(10, 'Weronika', 'Witkowska', 'weronka'),
(11, 'Patryk', 'Kaczmarek', 'patrys1'),
(12, 'Aleksandra', 'Grabowska', 'ala987'),
(13, 'Damian', 'Piotrowski', 'piotruś123'),
(14, 'Natalia', 'Mazur', 'nati432'),
(15, 'Łukasz', 'Krawczyk', 'luki33');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeksy dla tabeli `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
