-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost
-- Üretim Zamanı: 04 Tem 2022, 03:11:10
-- Sunucu sürümü: 10.4.21-MariaDB
-- PHP Sürümü: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `medsu`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `nictr_langs`
--

CREATE TABLE `nictr_langs` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_turkish_ci NOT NULL,
  `subtitle` text COLLATE utf8_turkish_ci NOT NULL,
  `img` text COLLATE utf8_turkish_ci NOT NULL,
  `url` text COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `nictr_langs`
--

INSERT INTO `nictr_langs` (`id`, `title`, `subtitle`, `img`, `url`) VALUES
(1, 'TÜRKÇE', 'TR', 'turkey.svg', 'tr'),
(2, 'ENGLISH', 'EN', 'united-states.svg', 'en');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `nictr_langs_meta`
--

CREATE TABLE `nictr_langs_meta` (
  `id` int(11) NOT NULL,
  `type` text COLLATE utf8_turkish_ci NOT NULL,
  `type_meta` text COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `nictr_langs_meta`
--

INSERT INTO `nictr_langs_meta` (`id`, `type`, `type_meta`) VALUES
(2, 'merhaba', '{\"1\":\"Merhaba\",\"2\":\"Hi\"}'),
(3, 'isimsoyisim', '{\"1\":\"Ad Soyad\",\"2\":\"Name Lastname\"}'),
(4, 'eposta', '{\"1\":\"E-Posta\",\"2\":\"Email\"}'),
(5, 'telefon', '{\"1\":\"Telefon\",\"2\":\"Phone\"}'),
(6, 'mesaj', '{\"1\":\"Mesaj\",\"2\":\"Message\"}'),
(7, 'noreply', '{\"1\":\"Bu e-posta tarafınıza otomatik olarak gönderilmiştir ve cevaplanamamaktadır.\",\"2\":\"This e-mail has been sent to you automatically and cannot be answered.\"}');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `nictr_log`
--

CREATE TABLE `nictr_log` (
  `ID` int(11) NOT NULL,
  `Transaction` text NOT NULL,
  `TransactionDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `userIP` text NOT NULL,
  `userOS` text NOT NULL,
  `userLang` text NOT NULL,
  `userAgent` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `nictr_log`
--

INSERT INTO `nictr_log` (`ID`, `Transaction`, `TransactionDate`, `userIP`, `userOS`, `userLang`, `userAgent`) VALUES
(1, 'Kayıtlı olmayan e-posta adresiyle giriş tespiti. E-posta: asdasdasd', '2022-03-20 19:12:00', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36'),
(2, 'Kayıtlı olmayan e-posta adresiyle giriş tespiti. E-posta: asdasdasd', '2022-03-20 19:20:35', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36'),
(3, 'Kayıtlı olmayan e-posta adresiyle giriş tespiti. E-posta: asdasdasd', '2022-03-20 19:28:14', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36'),
(4, 'Kayıtlı olmayan e-posta adresiyle giriş tespiti. E-posta: asdasdasd', '2022-03-20 19:28:54', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36'),
(5, 'Kayıtlı olmayan e-posta adresiyle giriş tespiti. E-posta: asdasdasd', '2022-03-20 19:29:30', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36'),
(6, 'Kayıtlı olmayan e-posta adresiyle giriş tespiti. E-posta: asdasdasd', '2022-03-20 19:30:00', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36'),
(7, 'Kayıtlı olmayan e-posta adresiyle giriş tespiti. E-posta: asdasdasd', '2022-03-20 19:30:03', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36'),
(8, 'Kayıtlı olmayan e-posta adresiyle giriş tespiti. E-posta: ugur.isik@internettescil.com.tr', '2022-03-20 19:35:28', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36'),
(9, 'Giriş yapıldı! E-posta: demo@internettescil.com.tr', '2022-03-20 19:35:34', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36'),
(10, 'Giriş yapıldı! E-posta: demo@internettescil.com.tr', '2022-03-20 19:36:14', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36'),
(11, 'Giriş yapıldı! E-posta: demo@internettescil.com.tr', '2022-03-20 19:37:05', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36'),
(12, 'Kayıtlı olmayan e-posta adresiyle giriş tespiti. E-posta: ugur.isik@internettescil.com.tr', '2022-03-20 19:38:41', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36'),
(13, 'Giriş yapıldı! E-posta: demo@internettescil.com.tr', '2022-03-20 19:38:45', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36'),
(14, 'Giriş yapıldı! E-posta: demo@internettescil.com.tr', '2022-03-20 19:38:48', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36'),
(15, 'Giriş yapıldı! E-posta: demo@internettescil.com.tr', '2022-03-20 19:39:19', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36'),
(16, 'asd', '2022-03-24 17:05:43', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(17, 'asd', '2022-03-24 17:42:07', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(18, 'asd', '2022-03-24 17:42:09', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(19, 'asd', '2022-03-24 17:42:09', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(20, 'asd', '2022-03-24 17:42:09', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(21, 'asd', '2022-03-24 17:42:10', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(22, 'asd', '2022-03-24 17:42:49', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(23, 'asd', '2022-03-24 17:42:50', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(24, 'asd', '2022-03-24 17:42:51', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(25, 'asd', '2022-03-24 17:42:51', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(26, 'asd', '2022-03-24 17:45:37', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(27, 'asd', '2022-03-24 17:46:04', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(28, 'asd', '2022-03-24 17:46:08', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(29, 'asd', '2022-03-24 17:46:23', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(30, 'asd', '2022-03-24 17:47:10', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(31, 'Kayıtlı olmayan e-posta adresiyle giriş tespiti. E-posta: asd', '2022-03-25 05:24:16', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(32, 'Hatalı şifreyle giriş tespiti. E-posta: demo@internettescil.com.tr', '2022-03-25 05:24:27', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(33, 'Kayıtlı olmayan e-posta adresiyle giriş tespiti. E-posta: peniaugur80@gmail.com', '2022-03-25 07:06:30', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(34, 'Kayıtlı olmayan e-posta adresiyle giriş tespiti. E-posta: asdasdasd', '2022-03-25 07:15:42', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(35, 'Kayıtlı olmayan e-posta adresiyle giriş tespiti. E-posta: peniaugur80@gmail.com', '2022-03-25 07:19:18', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(36, 'Kayıtlı olmayan e-posta adresiyle giriş tespiti. E-posta: peniaugur80@gmail.com', '2022-03-25 07:21:04', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(37, 'Kayıtlı olmayan e-posta adresiyle giriş tespiti. E-posta: peniaugur80@gmail.com', '2022-03-25 07:21:36', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(38, 'Kayıtlı olmayan e-posta adresiyle giriş tespiti. E-posta: peniaugur80@gmail.com', '2022-03-25 07:25:10', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(39, 'Kayıtlı olmayan e-posta adresiyle giriş tespiti. E-posta: peniaugur80@gmail.com', '2022-03-25 07:25:25', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(40, 'Kayıtlı olmayan e-posta adresiyle giriş tespiti. E-posta: asd', '2022-03-25 07:25:45', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(41, 'Kayıtlı olmayan e-posta adresiyle giriş tespiti. E-posta: peniaugur80@gmail.com', '2022-03-25 07:25:59', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(42, 'Kayıtlı olmayan e-posta adresiyle giriş tespiti. E-posta: asdasdasd', '2022-03-25 07:26:50', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(43, 'Kayıtlı olmayan e-posta adresiyle giriş tespiti. E-posta: asdasdasd', '2022-03-25 07:26:52', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(44, 'Kayıtlı olmayan e-posta adresiyle giriş tespiti. E-posta: asdasdasd', '2022-03-25 07:26:53', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(45, 'Kayıtlı olmayan e-posta adresiyle giriş tespiti. E-posta: asdasdasd', '2022-03-25 07:26:53', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(46, 'Kayıtlı olmayan e-posta adresiyle giriş tespiti. E-posta: peniaugur80@gmail.com', '2022-03-25 07:27:34', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(47, 'Kayıtlı olmayan e-posta adresiyle giriş tespiti. E-posta: peniaugur80@gmail.com', '2022-03-25 07:27:49', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(48, 'Kayıtlı olmayan e-posta adresiyle giriş tespiti. E-posta: peniaugur80@gmail.com', '2022-03-25 07:27:51', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(49, 'Kayıtlı olmayan e-posta adresiyle giriş tespiti. E-posta: peniaugur80@gmail.com', '2022-03-25 07:27:59', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(50, 'Kayıtlı olmayan e-posta adresiyle giriş tespiti. E-posta: peniaugur80@gmail.com', '2022-03-25 07:28:52', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(51, 'Kayıtlı olmayan e-posta adresiyle giriş tespiti. E-posta: peniaugur80@gmail.com', '2022-03-25 07:30:14', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(52, 'Kayıtlı olmayan e-posta adresiyle giriş tespiti. E-posta: peniaugur80@gmail.com', '2022-03-25 07:32:00', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(53, 'Kayıtlı olmayan e-posta adresiyle giriş tespiti. E-posta: asd', '2022-03-25 07:32:32', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(54, 'Kayıtlı olmayan e-posta adresiyle giriş tespiti. E-posta: asdasdasd', '2022-03-25 07:33:20', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(55, 'Kayıtlı olmayan e-posta adresiyle giriş tespiti. E-posta: asd', '2022-03-25 07:33:38', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(56, 'Kayıtlı olmayan e-posta adresiyle giriş tespiti. E-posta: asdasdasd', '2022-03-25 07:34:21', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(57, 'Kayıtlı olmayan e-posta adresiyle giriş tespiti. E-posta: peniaugur80@gmail.com', '2022-03-25 07:34:26', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(58, 'Hatalı şifreyle giriş tespiti. E-posta: demo@internettescil.com.tr', '2022-03-25 07:34:35', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(59, 'Çok fazla hatalı giriş sebebiyle IP adresi 15 dakikalık engellenmiştir!. E-posta: demo@internettescil.com.tr', '2022-03-25 07:34:39', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(60, 'Çok fazla hatalı giriş sebebiyle IP adresi 15 dakikalık engellenmiştir!. E-posta: demo@internettescil.com.tr', '2022-03-25 07:34:41', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(61, 'Çok fazla hatalı giriş sebebiyle IP adresi 15 dakikalık engellenmiştir!. E-posta: demo@internettescil.com.tr', '2022-03-25 07:34:43', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(62, 'Çok fazla hatalı giriş sebebiyle IP adresi 15 dakikalık engellenmiştir!. E-posta: demo@internettescil.com.tr', '2022-03-25 07:34:43', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(63, 'Çok fazla hatalı giriş sebebiyle IP adresi 15 dakikalık engellenmiştir!. E-posta: demo@internettescil.com.tr', '2022-03-25 07:34:43', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(64, 'Çok fazla hatalı giriş sebebiyle IP adresi 15 dakikalık engellenmiştir!. E-posta: demo@internettescil.com.tr', '2022-03-25 07:34:43', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(65, 'Çok fazla hatalı giriş sebebiyle IP adresi 15 dakikalık engellenmiştir!. E-posta: demo@internettescil.com.tr', '2022-03-25 07:34:44', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(66, 'Çok fazla hatalı giriş sebebiyle IP adresi 15 dakikalık engellenmiştir!. E-posta: demo@internettescil.com.tr', '2022-03-25 07:34:44', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(67, 'Çok fazla hatalı giriş sebebiyle IP adresi 15 dakikalık engellenmiştir!. E-posta: demo@internettescil.com.tr', '2022-03-25 07:34:44', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(68, 'Çok fazla hatalı giriş sebebiyle IP adresi 15 dakikalık engellenmiştir!. E-posta: demo@internettescil.com.tr', '2022-03-25 07:34:44', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(69, 'Çok fazla hatalı giriş sebebiyle IP adresi 15 dakikalık engellenmiştir!. E-posta: demo@internettescil.com.tr', '2022-03-25 07:34:44', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(70, 'Çok fazla hatalı giriş sebebiyle IP adresi 15 dakikalık engellenmiştir!. E-posta: demo@internettescil.com.tr', '2022-03-25 07:34:44', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(71, 'Çok fazla hatalı giriş sebebiyle IP adresi 15 dakikalık engellenmiştir!. E-posta: demo@internettescil.com.tr', '2022-03-25 07:34:44', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(72, 'Kayıtlı olmayan e-posta adresiyle giriş tespiti. E-posta: asdasdasd', '2022-03-25 07:37:06', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(73, 'Kayıtlı olmayan e-posta adresiyle giriş tespiti. E-posta: peniaugur80@gmail.com', '2022-03-25 07:37:14', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(74, 'Çok fazla hatalı giriş sebebiyle IP adresi 15 dakikalık engellenmiştir!. E-posta: demo@internettescil.com.tr', '2022-03-25 07:37:25', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(75, 'Çok fazla hatalı giriş sebebiyle IP adresi 15 dakikalık engellenmiştir!. E-posta: demo@internettescil.com.tr', '2022-03-25 07:38:17', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(76, 'Çok fazla hatalı giriş sebebiyle IP adresi 15 dakikalık engellenmiştir!. E-posta: demo@internettescil.com.tr', '2022-03-25 07:38:28', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(77, 'Çok fazla hatalı giriş sebebiyle IP adresi 15 dakikalık engellenmiştir!. E-posta: demo@internettescil.com.tr', '2022-03-25 07:39:30', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(78, 'Hatalı şifreyle giriş tespiti. E-posta: demo@internettescil.com.tr', '2022-03-25 07:39:42', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(79, 'Yönetici paneline giriş için yetersiz yetki. E-posta: demo@internettescil.com.tr', '2022-03-25 07:39:54', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(80, 'Giriş yapıldı! E-posta: ugur.isik@internettescil.com.tr', '2022-03-25 07:41:51', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(81, 'Giriş yapıldı! E-posta: ugur.isik@internettescil.com.tr', '2022-03-25 07:50:50', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(82, 'Giriş yapıldı! E-posta: ugur.isik@internettescil.com.tr', '2022-03-25 07:51:58', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(83, 'Giriş yapıldı! E-posta: ugur.isik@internettescil.com.tr', '2022-03-25 07:52:21', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(84, 'Hatalı şifreyle giriş tespiti. E-posta: ugur.isik@internettescil.com.tr', '2022-03-25 09:14:22', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(85, 'Giriş yapıldı! E-posta: ugur.isik@internettescil.com.tr', '2022-03-25 09:14:26', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(86, 'Hatalı şifreyle giriş tespiti. E-posta: ugur.isik@internettescil.com.tr', '2022-03-25 09:15:28', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(87, 'Giriş yapıldı! E-posta: ugur.isik@internettescil.com.tr', '2022-03-25 09:15:30', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(88, 'Giriş yapıldı! E-posta: ugur.isik@internettescil.com.tr', '2022-03-25 09:16:19', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(89, 'Hatalı şifreyle giriş tespiti. E-posta: ugur.isik@internettescil.com.tr', '2022-03-25 12:19:46', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(90, 'Giriş yapıldı! E-posta: ugur.isik@internettescil.com.tr', '2022-03-25 12:19:51', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(91, 'Giriş yapıldı! E-posta: ugur.isik@internettescil.com.tr', '2022-03-26 13:02:17', '::1', 'Windows 10', 'TR', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(92, 'Giriş yapıldı! E-posta: ugur.isik@internettescil.com.tr', '2022-05-31 07:15:10', '::1', 'Mac OS X', 'TR', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36 OPR/86.0.4363.64'),
(93, 'Giriş yapıldı! E-posta: ugur.isik@internettescil.com.tr', '2022-06-01 13:14:51', '::1', 'Mac OS X', 'TR', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36 OPR/86.0.4363.64'),
(94, 'Giriş yapıldı! E-posta: ugur.isik@internettescil.com.tr', '2022-06-14 07:04:17', '::1', 'Mac OS X', 'TR', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36 OPR/86.0.4363.70');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `nictr_login_ban`
--

CREATE TABLE `nictr_login_ban` (
  `id` int(11) NOT NULL,
  `startDate` text COLLATE utf8_turkish_ci NOT NULL,
  `endDate` text COLLATE utf8_turkish_ci NOT NULL,
  `ip` text COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `nictr_login_ban`
--

INSERT INTO `nictr_login_ban` (`id`, `startDate`, `endDate`, `ip`) VALUES
(3, '25.03.2022', '2022.03.25 10:54:30', '::1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `nictr_login_error`
--

CREATE TABLE `nictr_login_error` (
  `id` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `date` text COLLATE utf8_turkish_ci NOT NULL,
  `browser` text COLLATE utf8_turkish_ci NOT NULL,
  `os` text COLLATE utf8_turkish_ci NOT NULL,
  `ip` text COLLATE utf8_turkish_ci NOT NULL,
  `userAgent` text COLLATE utf8_turkish_ci NOT NULL,
  `username` text COLLATE utf8_turkish_ci NOT NULL,
  `password` text COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `nictr_login_error`
--

INSERT INTO `nictr_login_error` (`id`, `userID`, `date`, `browser`, `os`, `ip`, `userAgent`, `username`, `password`) VALUES
(1, 1, '29.11.2021', 'Chrome', 'Windows 10', '212.133.232.221', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'csariyar@bikare.net', 'fx20qz602'),
(2, 1, '29.11.2021', 'Chrome', 'Windows 10', '212.133.232.221', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'csariyar@bikare.net', 'fx20qz602'),
(3, 1, '29.11.2021', 'Chrome', 'Windows 10', '212.133.232.221', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'csariyar@bikare.net', 'fx20qz602'),
(4, 1, '29.11.2021', 'Chrome', 'Windows 10', '212.133.232.221', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'csariyar@bikare.net', 'fx20qz602'),
(5, 1, '29.11.2021', 'Chrome', 'Windows 10', '212.133.232.221', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'csariyar@bikare.net', 'fx20qz602'),
(6, 1, '29.11.2021', 'Chrome', 'Windows 10', '212.133.232.221', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'csariyar@bikare.net', 'fx20qz602'),
(7, 1, '29.11.2021', 'Chrome', 'Windows 10', '212.133.232.221', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'csariyar@bikare.net', 'fx20qz602'),
(8, 1, '29.11.2021', 'Chrome', 'Windows 10', '212.133.232.221', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'csariyar@bikare.net', 'fx20qz602'),
(9, 6, '13.12.2021', 'Opera', 'Mac OS X', '212.133.233.195', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36 OPR/81.0.4196.61', 'demo@internettescil.com.tr', '12345'),
(10, 6, '20.03.2022', 'Chrome', 'Windows 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36', 'demo@internettescil.com.tr', '#Ugur2021.s'),
(11, 6, '20.03.2022', 'Chrome', 'Windows 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36', 'demo@internettescil.com.tr', '#Ugur2021.a'),
(12, 6, '20.03.2022', 'Chrome', 'Windows 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36', 'demo@internettescil.com.tr', '#Ugur2021.a'),
(13, 6, '20.03.2022', 'Chrome', 'Windows 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36', 'demo@internettescil.com.tr', '#Ugur2021.s'),
(14, 6, '20.03.2022', 'Chrome', 'Windows 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36', 'demo@internettescil.com.tr', '#Ugur2021.s'),
(15, 6, '20.03.2022', 'Chrome', 'Windows 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36', 'demo@internettescil.com.tr', '#Ugur2021.s'),
(16, 6, '20.03.2022', 'Chrome', 'Windows 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36', 'demo@internettescil.com.tr', '#Ugur2021.s'),
(17, 6, '25.03.2022', 'Chrome', 'Windows 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36', 'demo@internettescil.com.tr', 'asd'),
(18, 6, '25.03.2022', 'Chrome', 'Windows 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36', 'demo@internettescil.com.tr', 'asd'),
(19, 6, '25.03.2022', 'Chrome', 'Windows 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36', 'demo@internettescil.com.tr', '#Ugur2021'),
(20, 1, '25.03.2022', 'Chrome', 'Windows 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36', 'ugur.isik@internettescil.com.tr', '#Ugur2021'),
(21, 1, '25.03.2022', 'Chrome', 'Windows 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36', 'ugur.isik@internettescil.com.tr', '#Ugur2021'),
(22, 1, '25.03.2022', 'Chrome', 'Windows 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36', 'ugur.isik@internettescil.com.tr', '#Ugur2021');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `nictr_login_info`
--

CREATE TABLE `nictr_login_info` (
  `id` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `date` text COLLATE utf8_turkish_ci NOT NULL,
  `browser` text COLLATE utf8_turkish_ci NOT NULL,
  `os` text COLLATE utf8_turkish_ci NOT NULL,
  `ip` text COLLATE utf8_turkish_ci NOT NULL,
  `userAgent` text COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `nictr_login_info`
--

INSERT INTO `nictr_login_info` (`id`, `userID`, `date`, `browser`, `os`, `ip`, `userAgent`) VALUES
(1, 1, '29.11.2021', 'Chrome', 'Android 6', '212.133.232.221', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Mobile Safari/537.36'),
(2, 1, '29.11.2021', 'Chrome', 'Windows 10', '212.133.232.221', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(3, 1, '30.11.2021', 'Chrome', 'Windows 10', '212.133.232.221', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(4, 1, '02.12.2021', 'Chrome', 'Windows 10', '212.133.236.61', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(5, 1, '02.12.2021', 'Chrome', 'Windows 10', '212.133.236.61', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(6, 1, '02.12.2021', 'Chrome', 'Windows 10', '212.133.236.61', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(7, 1, '03.12.2021', 'Chrome', 'Windows 10', '212.133.227.133', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(8, 1, '03.12.2021', 'Chrome', 'Windows 10', '212.133.227.133', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(9, 1, '03.12.2021', 'Chrome', 'Windows 10', '212.133.227.133', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(10, 1, '06.12.2021', 'Chrome', 'Windows 10', '212.133.227.133', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(11, 6, '06.12.2021', 'Chrome', 'Windows 10', '212.133.227.133', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(12, 6, '06.12.2021', 'Chrome', 'Windows 10', '212.133.227.133', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(13, 1, '06.12.2021', 'Chrome', 'Windows 10', '212.133.238.33', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(14, 6, '07.12.2021', 'Opera', 'Windows 10', '212.133.238.33', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36 OPR/81.0.4196.61'),
(15, 6, '07.12.2021', 'Opera', 'Windows 10', '212.133.238.33', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36 OPR/81.0.4196.61'),
(16, 1, '08.12.2021', 'Chrome', 'Windows 10', '212.133.230.6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(17, 1, '09.12.2021', 'Chrome', 'Windows 10', '212.133.230.6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(18, 1, '09.12.2021', 'Chrome', 'Windows 10', '212.133.230.6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(19, 6, '09.12.2021', 'Chrome', 'Mac OS X', '212.133.233.195', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36'),
(20, 1, '09.12.2021', 'Chrome', 'Windows 10', '212.133.233.195', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(21, 1, '10.12.2021', 'Chrome', 'Windows 10', '212.133.233.195', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36'),
(274, 2, '19.05.2021', 'Chrome', 'Windows 10', '176.88.28.161', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(275, 2, '19.05.2021', 'Chrome', 'Windows 10', '176.88.28.161', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(276, 2, '19.05.2021', 'Chrome', 'Windows 10', '176.88.28.161', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(277, 1, '19.05.2021', 'Chrome', 'Android 10', '188.58.47.130', 'Mozilla/5.0 (Linux; Android 10; CPH1951) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.210 Mobile Safari/537.36'),
(278, 2, '19.05.2021', 'Chrome', 'Windows 10', '176.88.28.161', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(279, 2, '19.05.2021', 'Chrome', 'Windows 10', '176.88.28.161', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(280, 2, '20.05.2021', 'Chrome', 'Windows 10', '85.153.227.79', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(281, 2, '20.05.2021', 'Chrome', 'Windows 10', '85.153.227.79', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(282, 2, '20.05.2021', 'Chrome', 'Windows 10', '85.153.227.79', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(283, 2, '20.05.2021', 'Chrome', 'Windows 10', '85.153.227.79', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(284, 2, '20.05.2021', 'Chrome', 'Windows 10', '85.153.227.79', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(285, 2, '21.05.2021', 'Chrome', 'Windows 10', '85.153.227.79', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(286, 2, '21.05.2021', 'Chrome', 'Windows 10', '85.153.227.79', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(287, 2, '21.05.2021', 'Chrome', 'Windows 10', '85.153.227.79', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(288, 2, '21.05.2021', 'Chrome', 'Windows 10', '85.153.227.79', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(289, 1, '21.05.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(290, 2, '22.05.2021', 'Chrome', 'Windows 10', '85.153.227.79', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(291, 1, '22.05.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(292, 2, '22.05.2021', 'Chrome', 'Windows 10', '85.153.227.79', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(293, 2, '28.05.2021', 'Chrome', 'Windows 10', '85.153.227.79', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(294, 2, '29.05.2021', 'Chrome', 'Windows 10', '85.153.227.79', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(295, 2, '29.05.2021', 'Chrome', 'Windows 10', '85.153.227.79', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(296, 2, '29.05.2021', 'Chrome', 'Windows 10', '85.153.227.79', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(297, 2, '30.05.2021', 'Chrome', 'Windows 10', '85.153.227.79', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(298, 2, '30.05.2021', 'Chrome', 'Windows 10', '85.153.227.79', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(299, 2, '30.05.2021', 'Chrome', 'Windows 10', '85.153.227.79', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(300, 2, '30.05.2021', 'Chrome', 'Windows 10', '85.153.227.79', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(301, 2, '30.05.2021', 'Chrome', 'Windows 10', '85.153.227.79', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(302, 2, '30.05.2021', 'Chrome', 'Windows 10', '85.153.227.79', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(303, 2, '31.05.2021', 'Chrome', 'Windows 10', '85.153.227.79', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(304, 2, '01.06.2021', 'Chrome', 'Windows 10', '176.88.28.150', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(305, 1, '01.06.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(306, 1, '01.06.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(307, 2, '01.06.2021', 'Chrome', 'Windows 10', '176.88.28.150', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(308, 2, '01.06.2021', 'Chrome', 'Windows 10', '176.88.28.150', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(309, 2, '01.06.2021', 'Chrome', 'Windows 10', '176.88.28.150', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(310, 2, '02.06.2021', 'Chrome', 'Windows 10', '176.88.28.150', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(311, 2, '02.06.2021', 'Chrome', 'Windows 10', '176.88.28.150', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(312, 2, '02.06.2021', 'Chrome', 'Windows 10', '176.88.28.150', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(313, 1, '03.06.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(314, 1, '03.06.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(315, 2, '03.06.2021', 'Chrome', 'Windows 10', '176.88.28.150', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(316, 1, '04.06.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(317, 1, '05.06.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(318, 1, '06.06.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(319, 2, '06.06.2021', 'Chrome', 'Windows 10', '176.88.28.150', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(320, 2, '06.06.2021', 'Chrome', 'Windows 10', '176.88.28.150', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(321, 2, '06.06.2021', 'Chrome', 'Windows 10', '176.88.28.150', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(322, 1, '06.06.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(323, 1, '06.06.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(324, 1, '06.06.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(325, 2, '06.06.2021', 'Chrome', 'Windows 10', '176.88.28.150', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(326, 2, '07.06.2021', 'Chrome', 'Windows 10', '176.88.28.150', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(327, 2, '08.06.2021', 'Chrome', 'Windows 10', '176.88.28.150', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(328, 1, '08.06.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(329, 2, '10.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(330, 2, '10.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(331, 2, '10.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(332, 2, '10.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(333, 2, '10.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(334, 1, '10.06.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(335, 2, '10.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(336, 1, '10.06.2021', 'Chrome', 'Android 10', '31.142.70.181', 'Mozilla/5.0 (Linux; Android 10; CPH1951) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.88 Mobile Safari/537.36'),
(337, 2, '10.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(338, 2, '10.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(339, 1, '11.06.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(340, 2, '11.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(341, 2, '11.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(342, 2, '11.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(343, 2, '11.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(344, 2, '11.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(345, 2, '11.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(346, 2, '11.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(347, 2, '12.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(348, 2, '12.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(349, 2, '12.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(350, 2, '12.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(351, 2, '12.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(352, 2, '13.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(353, 2, '13.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(354, 2, '13.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(355, 2, '13.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(356, 2, '13.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(357, 1, '13.06.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(358, 2, '13.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(359, 2, '14.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(360, 1, '14.06.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(361, 2, '14.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(362, 2, '14.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(363, 2, '14.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(364, 2, '14.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(365, 2, '14.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(366, 2, '14.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36'),
(367, 2, '15.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.101 Safari/537.36'),
(368, 2, '15.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.101 Safari/537.36'),
(369, 2, '15.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.101 Safari/537.36'),
(370, 2, '15.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.101 Safari/537.36'),
(371, 2, '15.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.101 Safari/537.36'),
(372, 2, '15.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.101 Safari/537.36'),
(373, 2, '16.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 Safari/537.36'),
(374, 2, '16.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 Safari/537.36'),
(375, 2, '16.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.101 Safari/537.36'),
(376, 2, '16.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 Safari/537.36'),
(377, 2, '16.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.101 Safari/537.36'),
(378, 2, '16.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 Safari/537.36'),
(379, 2, '16.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.101 Safari/537.36'),
(380, 2, '16.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 Safari/537.36'),
(381, 2, '16.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.101 Safari/537.36'),
(382, 2, '16.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.101 Safari/537.36'),
(383, 2, '16.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 Safari/537.36'),
(384, 1, '16.06.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.101 Safari/537.36'),
(385, 2, '16.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.101 Safari/537.36'),
(386, 3, '16.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 Safari/537.36'),
(387, 2, '17.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.101 Safari/537.36'),
(388, 2, '17.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.101 Safari/537.36'),
(389, 3, '17.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 Safari/537.36'),
(390, 2, '17.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 Safari/537.36'),
(391, 2, '17.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 Safari/537.36'),
(392, 2, '18.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 Safari/537.36'),
(393, 2, '18.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 Safari/537.36'),
(394, 2, '19.06.2021', 'Chrome', 'Windows 10', '31.142.12.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 Safari/537.36'),
(395, 2, '20.06.2021', 'Chrome', 'Windows 10', '31.142.12.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 Safari/537.36'),
(396, 2, '20.06.2021', 'Chrome', 'Windows 10', '31.142.12.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 Safari/537.36'),
(397, 2, '20.06.2021', 'Chrome', 'Windows 10', '31.142.12.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 Safari/537.36'),
(398, 2, '20.06.2021', 'Chrome', 'Windows 10', '31.142.12.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 Safari/537.36'),
(399, 2, '20.06.2021', 'Chrome', 'Windows 10', '188.58.14.81', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 Safari/537.36'),
(400, 2, '20.06.2021', 'Chrome', 'Windows 10', '188.58.14.81', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 Safari/537.36'),
(401, 2, '24.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36'),
(402, 2, '24.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36'),
(403, 2, '24.06.2021', 'Chrome', 'Windows 10', '85.153.226.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36'),
(404, 2, '25.06.2021', 'Chrome', 'Windows 10', '85.153.229.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36'),
(405, 2, '26.06.2021', 'Chrome', 'Windows 10', '85.153.229.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(406, 2, '26.06.2021', 'Chrome', 'Windows 10', '85.153.229.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(407, 1, '26.06.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36'),
(408, 1, '26.06.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36'),
(409, 2, '26.06.2021', 'Chrome', 'Windows 10', '85.153.229.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(410, 2, '26.06.2021', 'Chrome', 'Windows 10', '85.153.229.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(411, 1, '26.06.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36'),
(412, 2, '26.06.2021', 'Chrome', 'Windows 10', '85.153.229.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(413, 2, '26.06.2021', 'Chrome', 'Windows 10', '85.153.229.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(414, 2, '27.06.2021', 'Chrome', 'Windows 10', '85.153.229.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(415, 2, '27.06.2021', 'Chrome', 'Windows 10', '85.153.229.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(416, 2, '27.06.2021', 'Chrome', 'Windows 10', '85.153.229.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(417, 2, '28.06.2021', 'Chrome', 'Windows 10', '85.153.229.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(418, 2, '28.06.2021', 'Chrome', 'Windows 10', '85.153.229.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(419, 2, '29.06.2021', 'Chrome', 'Windows 10', '85.153.229.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(420, 2, '29.06.2021', 'Chrome', 'Windows 10', '85.153.229.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(421, 2, '29.06.2021', 'Chrome', 'Windows 10', '85.153.229.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(422, 1, '29.06.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36'),
(423, 1, '30.06.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36'),
(424, 2, '30.06.2021', 'Chrome', 'Windows 10', '85.153.229.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(425, 2, '30.06.2021', 'Chrome', 'Windows 10', '85.153.229.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(426, 2, '30.06.2021', 'Chrome', 'Windows 10', '85.153.229.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(427, 2, '30.06.2021', 'Chrome', 'Windows 10', '85.153.229.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(428, 1, '30.06.2021', 'Chrome', 'Android 10', '178.240.182.115', 'Mozilla/5.0 (Linux; Android 10; CPH1951) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.120 Mobile Safari/537.36'),
(429, 2, '30.06.2021', 'Chrome', 'Windows 10', '85.153.229.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(430, 2, '30.06.2021', 'Chrome', 'Windows 10', '85.153.229.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(431, 1, '30.06.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36'),
(432, 2, '01.07.2021', 'Chrome', 'Windows 10', '85.153.229.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(433, 1, '01.07.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36'),
(434, 1, '01.07.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36'),
(435, 2, '01.07.2021', 'Chrome', 'Windows 10', '85.153.229.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(436, 2, '01.07.2021', 'Chrome', 'Windows 10', '85.153.229.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(437, 2, '01.07.2021', 'Chrome', 'Windows 10', '85.153.229.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(438, 1, '01.07.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36'),
(439, 2, '01.07.2021', 'Chrome', 'Windows 10', '85.153.229.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(440, 2, '01.07.2021', 'Chrome', 'Windows 10', '85.153.229.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(441, 2, '02.07.2021', 'Chrome', 'Windows 10', '85.153.229.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(442, 2, '02.07.2021', 'Chrome', 'Windows 10', '85.153.229.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(443, 2, '02.07.2021', 'Chrome', 'Windows 10', '85.153.229.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(444, 2, '02.07.2021', 'Chrome', 'Windows 10', '85.153.229.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(445, 2, '02.07.2021', 'Chrome', 'Windows 10', '85.153.229.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(446, 2, '02.07.2021', 'Chrome', 'Windows 10', '85.153.229.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(447, 2, '02.07.2021', 'Chrome', 'Windows 10', '85.153.229.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(448, 2, '03.07.2021', 'Chrome', 'Windows 10', '85.153.229.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(449, 2, '03.07.2021', 'Chrome', 'Windows 10', '85.153.229.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(450, 2, '03.07.2021', 'Chrome', 'Windows 10', '85.153.229.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(451, 2, '03.07.2021', 'Chrome', 'Windows 10', '85.153.229.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(452, 2, '04.07.2021', 'Chrome', 'Windows 10', '85.153.229.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(453, 2, '05.07.2021', 'Chrome', 'Windows 10', '85.153.229.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(454, 2, '05.07.2021', 'Chrome', 'Windows 10', '85.153.229.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(455, 2, '05.07.2021', 'Chrome', 'Windows 10', '85.153.229.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(456, 2, '05.07.2021', 'Chrome', 'Windows 10', '85.153.229.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(457, 2, '06.07.2021', 'Chrome', 'Windows 10', '85.153.229.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(458, 2, '06.07.2021', 'Chrome', 'Windows 10', '85.153.229.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(459, 2, '06.07.2021', 'Chrome', 'Windows 10', '85.153.229.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(460, 2, '06.07.2021', 'Chrome', 'Windows 10', '85.153.229.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(461, 1, '07.07.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36'),
(462, 2, '07.07.2021', 'Chrome', 'Windows 10', '85.153.229.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(463, 1, '07.07.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36'),
(464, 2, '07.07.2021', 'Chrome', 'Windows 10', '85.153.229.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(465, 2, '07.07.2021', 'Chrome', 'Windows 10', '85.153.229.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(466, 2, '07.07.2021', 'Chrome', 'Windows 10', '85.153.229.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(467, 2, '08.07.2021', 'Chrome', 'Windows 10', '85.153.229.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(468, 2, '08.07.2021', 'Chrome', 'Windows 10', '85.153.229.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(469, 2, '08.07.2021', 'Chrome', 'Windows 10', '85.153.229.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(470, 2, '08.07.2021', 'Chrome', 'Windows 10', '85.153.229.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(471, 2, '08.07.2021', 'Chrome', 'Windows 10', '85.153.229.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(472, 1, '08.07.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(473, 2, '09.07.2021', 'Chrome', 'Windows 10', '85.153.227.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(474, 1, '09.07.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(475, 2, '09.07.2021', 'Chrome', 'Windows 10', '85.153.227.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(476, 2, '10.07.2021', 'Chrome', 'Windows 10', '85.153.227.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(477, 1, '10.07.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(478, 2, '10.07.2021', 'Chrome', 'Windows 10', '85.153.227.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(479, 2, '10.07.2021', 'Chrome', 'Windows 10', '85.153.227.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(480, 2, '10.07.2021', 'Chrome', 'Windows 10', '85.153.227.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(481, 2, '10.07.2021', 'Chrome', 'Windows 10', '85.153.227.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(482, 2, '11.07.2021', 'Chrome', 'Windows 10', '85.153.227.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(483, 2, '11.07.2021', 'Chrome', 'Windows 10', '85.153.227.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(484, 2, '11.07.2021', 'Chrome', 'Windows 10', '85.153.227.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(485, 2, '11.07.2021', 'Chrome', 'Windows 10', '85.153.227.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(486, 2, '11.07.2021', 'Chrome', 'Windows 10', '85.153.227.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(487, 2, '12.07.2021', 'Chrome', 'Windows 10', '85.153.227.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(488, 2, '12.07.2021', 'Chrome', 'Windows 10', '85.153.227.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(489, 2, '12.07.2021', 'Chrome', 'Windows 10', '85.153.227.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(490, 2, '13.07.2021', 'Chrome', 'Windows 10', '85.153.227.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(491, 2, '13.07.2021', 'Chrome', 'Windows 10', '85.153.227.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(492, 2, '14.07.2021', 'Chrome', 'Windows 10', '85.153.227.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(493, 2, '14.07.2021', 'Chrome', 'Windows 10', '78.187.21.71', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(494, 2, '14.07.2021', 'Chrome', 'Windows 10', '85.153.227.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(495, 1, '15.07.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(496, 2, '15.07.2021', 'Chrome', 'Windows 10', '85.153.224.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(497, 2, '15.07.2021', 'Chrome', 'Windows 10', '85.153.224.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(498, 1, '15.07.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(499, 2, '15.07.2021', 'Chrome', 'Windows 10', '85.153.224.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(500, 2, '15.07.2021', 'Chrome', 'Windows 10', '85.153.224.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(501, 2, '15.07.2021', 'Chrome', 'Windows 10', '85.153.224.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(502, 2, '16.07.2021', 'Chrome', 'Windows 10', '178.246.207.121', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'),
(503, 2, '21.07.2021', 'Chrome', 'Windows 10', '5.24.163.40', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.164 Safari/537.36'),
(504, 2, '23.07.2021', 'Chrome', 'Windows 10', '5.24.98.99', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.164 Safari/537.36'),
(505, 2, '24.07.2021', 'Chrome', 'Windows 10', '178.240.129.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.164 Safari/537.36'),
(506, 2, '24.07.2021', 'Chrome', 'Windows 10', '178.240.129.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.164 Safari/537.36'),
(507, 2, '24.07.2021', 'Chrome', 'Windows 10', '178.240.159.59', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.164 Safari/537.36'),
(508, 2, '25.07.2021', 'Chrome', 'Windows 10', '178.240.132.183', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.164 Safari/537.36'),
(509, 1, '26.07.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.164 Safari/537.36'),
(510, 1, '27.07.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.164 Safari/537.36'),
(511, 1, '27.07.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.164 Safari/537.36'),
(512, 1, '27.07.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.164 Safari/537.36'),
(513, 1, '27.07.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.164 Safari/537.36'),
(514, 2, '27.07.2021', 'Chrome', 'Windows 10', '31.142.24.116', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.164 Safari/537.36'),
(515, 2, '27.07.2021', 'Chrome', 'Windows 10', '31.142.24.116', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.164 Safari/537.36'),
(516, 2, '27.07.2021', 'Chrome', 'Windows 10', '31.142.24.116', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.164 Safari/537.36'),
(517, 1, '27.07.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36'),
(518, 2, '27.07.2021', 'Chrome', 'Windows 10', '31.142.55.88', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36'),
(519, 2, '28.07.2021', 'Chrome', 'Windows 10', '31.142.55.88', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36'),
(520, 1, '29.07.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36'),
(521, 1, '30.07.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36'),
(522, 1, '31.07.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36'),
(523, 2, '31.07.2021', 'Chrome', 'Windows 10', '31.142.105.183', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36'),
(524, 1, '31.07.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36'),
(525, 2, '31.07.2021', 'Chrome', 'Windows 10', '31.142.105.183', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36');
INSERT INTO `nictr_login_info` (`id`, `userID`, `date`, `browser`, `os`, `ip`, `userAgent`) VALUES
(526, 1, '31.07.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36'),
(527, 1, '31.07.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36'),
(528, 1, '02.08.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36'),
(529, 2, '08.08.2021', 'Chrome', 'Windows 10', '176.42.89.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36'),
(530, 2, '09.08.2021', 'Chrome', 'Windows 10', '176.42.89.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36'),
(531, 2, '09.08.2021', 'Chrome', 'Windows 10', '176.42.89.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36'),
(532, 1, '09.08.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36'),
(533, 1, '09.08.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36'),
(534, 1, '09.08.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36'),
(535, 1, '09.08.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36'),
(536, 1, '09.08.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36'),
(537, 2, '09.08.2021', 'Chrome', 'Windows 10', '176.42.89.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36'),
(538, 2, '10.08.2021', 'Chrome', 'Windows 10', '176.42.89.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36'),
(539, 2, '10.08.2021', 'Chrome', 'Windows 10', '176.42.89.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36'),
(540, 1, '10.08.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36'),
(541, 1, '10.08.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36'),
(542, 2, '10.08.2021', 'Chrome', 'Windows 10', '176.42.89.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36'),
(543, 2, '11.08.2021', 'Chrome', 'Windows 10', '176.42.89.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36'),
(544, 2, '11.08.2021', 'Chrome', 'Windows 10', '176.42.89.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36'),
(545, 2, '11.08.2021', 'Chrome', 'Windows 10', '176.42.89.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36'),
(546, 2, '12.08.2021', 'Chrome', 'Windows 10', '176.42.89.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36'),
(547, 2, '14.08.2021', 'Chrome', 'Windows 10', '176.42.89.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36'),
(548, 2, '14.08.2021', 'Chrome', 'Windows 10', '176.42.89.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36'),
(549, 1, '15.08.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36'),
(550, 2, '16.08.2021', 'Chrome', 'Windows 10', '176.42.89.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36'),
(551, 2, '17.08.2021', 'Chrome', 'Windows 10', '176.42.89.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36'),
(552, 2, '17.08.2021', 'Chrome', 'Windows 10', '176.42.89.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36'),
(553, 2, '17.08.2021', 'Chrome', 'Windows 10', '176.42.89.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36'),
(554, 2, '17.08.2021', 'Chrome', 'Windows 10', '176.42.89.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36'),
(555, 2, '17.08.2021', 'Chrome', 'Windows 10', '176.42.89.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36'),
(556, 2, '18.08.2021', 'Chrome', 'Windows 10', '176.42.89.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36'),
(557, 2, '18.08.2021', 'Chrome', 'Windows 10', '176.42.89.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36'),
(558, 2, '18.08.2021', 'Chrome', 'Windows 10', '176.42.89.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36'),
(559, 1, '18.08.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36'),
(560, 2, '19.08.2021', 'Chrome', 'Windows 10', '176.42.89.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36'),
(561, 2, '19.08.2021', 'Chrome', 'Windows 10', '176.42.89.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36'),
(562, 2, '19.08.2021', 'Chrome', 'Windows 10', '176.42.89.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36'),
(563, 2, '20.08.2021', 'Chrome', 'Windows 10', '176.42.89.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36'),
(564, 2, '20.08.2021', 'Chrome', 'Windows 10', '176.42.89.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36'),
(565, 1, '23.08.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36'),
(566, 1, '30.08.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36'),
(567, 2, '30.08.2021', 'Chrome', 'Windows 10', '176.42.89.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36'),
(568, 2, '30.08.2021', 'Chrome', 'Windows 10', '176.42.89.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36'),
(569, 1, '31.08.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36'),
(570, 2, '06.09.2021', 'Chrome', 'Windows 10', '176.42.85.41', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36'),
(571, 2, '14.09.2021', 'Chrome', 'Windows 10', '176.234.44.167', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36'),
(572, 1, '14.09.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36'),
(573, 1, '14.09.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36'),
(574, 2, '15.09.2021', 'Chrome', 'Windows 10', '176.234.44.167', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36'),
(575, 1, '15.09.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36'),
(576, 2, '22.09.2021', 'Chrome', 'Windows 10', '195.142.24.183', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36'),
(577, 2, '22.09.2021', 'Chrome', 'Windows 10', '195.142.24.183', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36'),
(578, 2, '23.09.2021', 'Chrome', 'Windows 10', '195.142.24.183', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36'),
(579, 2, '23.09.2021', 'Chrome', 'Windows 10', '176.42.86.61', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36'),
(580, 2, '24.09.2021', 'Chrome', 'Windows 10', '176.42.86.61', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36'),
(581, 2, '26.09.2021', 'Chrome', 'Windows 10', '176.42.86.61', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36'),
(582, 2, '27.09.2021', 'Chrome', 'Windows 10', '176.42.86.61', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36'),
(583, 1, '27.09.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36'),
(584, 2, '27.09.2021', 'Chrome', 'Windows 10', '176.42.86.61', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36'),
(585, 1, '27.09.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36'),
(586, 1, '27.09.2021', 'Chrome', 'Android 10', '77.67.154.46', 'Mozilla/5.0 (Linux; Android 10; CPH1951) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Mobile Safari/537.36'),
(587, 2, '28.09.2021', 'Chrome', 'Windows 10', '176.234.52.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36'),
(588, 1, '28.09.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36'),
(589, 2, '28.09.2021', 'Chrome', 'Windows 10', '176.234.52.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36'),
(590, 2, '28.09.2021', 'Chrome', 'Windows 10', '176.234.52.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36'),
(591, 2, '28.09.2021', 'Chrome', 'Windows 10', '176.234.52.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36'),
(592, 1, '28.09.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36'),
(593, 2, '28.09.2021', 'Chrome', 'Windows 10', '176.234.52.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36'),
(594, 2, '29.09.2021', 'Chrome', 'Windows 10', '176.234.52.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36'),
(595, 1, '29.09.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36'),
(596, 2, '29.09.2021', 'Chrome', 'Windows 10', '176.234.52.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36'),
(597, 2, '29.09.2021', 'Chrome', 'Windows 10', '176.234.52.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36'),
(598, 1, '29.09.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36'),
(599, 2, '29.09.2021', 'Chrome', 'Windows 10', '176.234.52.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36'),
(600, 1, '29.09.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36'),
(601, 1, '30.09.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36'),
(602, 2, '30.09.2021', 'Chrome', 'Windows 10', '176.234.52.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36'),
(603, 3, '30.09.2021', 'Chrome', 'Windows 10', '176.234.52.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36'),
(604, 1, '30.09.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36'),
(605, 2, '30.09.2021', 'Chrome', 'Windows 10', '176.234.52.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36'),
(606, 2, '30.09.2021', 'Chrome', 'Windows 10', '176.234.52.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36'),
(607, 3, '30.09.2021', 'Chrome', 'Windows 10', '176.234.52.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36'),
(608, 3, '30.09.2021', 'Chrome', 'Windows 10', '176.234.52.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36'),
(609, 2, '01.10.2021', 'Chrome', 'Windows 10', '176.234.52.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36'),
(610, 2, '01.10.2021', 'Chrome', 'Windows 10', '176.40.136.26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36'),
(611, 1, '01.10.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36'),
(612, 1, '01.10.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36'),
(613, 1, '01.10.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36'),
(614, 1, '01.10.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36'),
(615, 1, '02.10.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36'),
(616, 3, '02.10.2021', 'Chrome', 'Windows 10', '176.42.89.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36'),
(617, 2, '02.10.2021', 'Chrome', 'Windows 10', '176.42.89.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36'),
(618, 3, '02.10.2021', 'Chrome', 'Windows 10', '176.42.89.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36'),
(619, 3, '02.10.2021', 'Chrome', 'Windows 10', '176.42.89.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36'),
(620, 3, '03.10.2021', 'Chrome', 'Windows 10', '176.42.89.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36'),
(621, 3, '03.10.2021', 'Chrome', 'Windows 10', '176.42.89.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36'),
(622, 3, '03.10.2021', 'Chrome', 'Windows 10', '176.42.89.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36'),
(623, 3, '03.10.2021', 'Chrome', 'Windows 10', '176.42.89.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36'),
(624, 3, '03.10.2021', 'Chrome', 'Windows 10', '176.42.89.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36'),
(625, 1, '04.10.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36'),
(626, 1, '04.10.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36'),
(627, 3, '04.10.2021', 'Chrome', 'Windows 10', '176.42.89.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36'),
(628, 2, '04.10.2021', 'Chrome', 'Windows 10', '176.42.89.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36'),
(629, 3, '05.10.2021', 'Chrome', 'Windows 10', '176.42.89.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36'),
(630, 3, '06.10.2021', 'Chrome', 'Windows 10', '176.42.89.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36'),
(631, 1, '06.10.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36'),
(632, 3, '06.10.2021', 'Chrome', 'Windows 10', '176.42.89.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36'),
(633, 1, '07.10.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36'),
(634, 3, '07.10.2021', 'Chrome', 'Windows 10', '195.155.180.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36'),
(635, 3, '07.10.2021', 'Chrome', 'Windows 10', '195.155.180.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36'),
(636, 3, '08.10.2021', 'Chrome', 'Windows 10', '195.155.180.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36'),
(637, 1, '11.10.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36'),
(638, 2, '11.10.2021', 'Chrome', 'Windows 10', '176.42.88.141', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36'),
(639, 2, '13.10.2021', 'Chrome', 'Windows 10', '176.42.88.141', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36'),
(640, 3, '13.10.2021', 'Chrome', 'Windows 10', '176.42.88.141', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36'),
(641, 3, '13.10.2021', 'Chrome', 'Windows 10', '176.42.88.141', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36'),
(642, 3, '13.10.2021', 'Chrome', 'Windows 10', '176.42.88.141', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36'),
(643, 1, '14.10.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36'),
(644, 2, '14.10.2021', 'Chrome', 'Windows 10', '176.42.88.141', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36'),
(645, 1, '14.10.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36'),
(646, 3, '15.10.2021', 'Chrome', 'Windows 10', '176.42.93.37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36'),
(647, 1, '15.10.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36'),
(648, 3, '15.10.2021', 'Chrome', 'Windows 10', '176.42.93.37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36'),
(649, 1, '16.10.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36'),
(650, 1, '16.10.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36'),
(651, 3, '16.10.2021', 'Chrome', 'Windows 10', '176.42.93.37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36'),
(652, 3, '16.10.2021', 'Chrome', 'Windows 10', '176.42.93.37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36'),
(653, 3, '18.10.2021', 'Chrome', 'Windows 10', '176.42.92.244', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36'),
(654, 2, '18.10.2021', 'Chrome', 'Windows 10', '176.42.92.244', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36'),
(655, 3, '18.10.2021', 'Chrome', 'Windows 10', '176.42.92.244', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36'),
(656, 2, '18.10.2021', 'Chrome', 'Windows 10', '176.42.92.244', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36'),
(657, 3, '19.10.2021', 'Chrome', 'Windows 10', '176.42.92.244', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36'),
(658, 2, '19.10.2021', 'Chrome', 'Windows 10', '176.42.92.244', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36'),
(659, 1, '19.10.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36'),
(660, 2, '19.10.2021', 'Chrome', 'Windows 10', '176.42.92.244', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36'),
(661, 3, '19.10.2021', 'Chrome', 'Windows 10', '176.42.92.244', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36'),
(662, 2, '19.10.2021', 'Chrome', 'Windows 10', '176.42.92.244', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36'),
(663, 3, '19.10.2021', 'Chrome', 'Windows 10', '176.42.92.244', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36'),
(664, 1, '20.10.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36'),
(665, 2, '20.10.2021', 'Chrome', 'Windows 10', '178.233.88.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36'),
(666, 2, '21.10.2021', 'Chrome', 'Windows 10', '178.233.88.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36'),
(667, 2, '21.10.2021', 'Chrome', 'Windows 10', '178.233.88.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36'),
(668, 3, '21.10.2021', 'Chrome', 'Windows 10', '178.233.88.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36'),
(669, 2, '22.10.2021', 'Chrome', 'Windows 10', '178.233.88.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36'),
(670, 2, '22.10.2021', 'Chrome', 'Windows 10', '178.233.88.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36'),
(671, 2, '22.10.2021', 'Chrome', 'Windows 10', '178.233.88.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36'),
(672, 2, '22.10.2021', 'Chrome', 'Windows 10', '178.233.88.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36'),
(673, 1, '22.10.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36'),
(674, 2, '23.10.2021', 'Chrome', 'Windows 10', '178.233.88.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36'),
(675, 1, '23.10.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36'),
(676, 2, '24.10.2021', 'Chrome', 'Windows 10', '178.233.88.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36'),
(677, 2, '24.10.2021', 'Chrome', 'Windows 10', '178.233.88.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36'),
(678, 2, '25.10.2021', 'Chrome', 'Windows 10', '178.233.88.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36'),
(679, 2, '25.10.2021', 'Chrome', 'Windows 10', '178.233.88.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36'),
(680, 1, '26.10.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36'),
(681, 2, '26.10.2021', 'Chrome', 'Windows 10', '178.233.88.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36'),
(682, 2, '26.10.2021', 'Chrome', 'Windows 10', '178.233.88.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36'),
(683, 2, '26.10.2021', 'Chrome', 'Windows 10', '178.233.88.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36'),
(684, 2, '27.10.2021', 'Chrome', 'Windows 10', '178.233.88.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36'),
(685, 2, '27.10.2021', 'Chrome', 'Windows 10', '178.233.88.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36'),
(686, 2, '28.10.2021', 'Chrome', 'Windows 10', '178.233.88.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36'),
(687, 2, '28.10.2021', 'Chrome', 'Windows 10', '178.233.88.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36'),
(688, 3, '28.10.2021', 'Chrome', 'Windows 10', '178.233.88.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36'),
(689, 2, '28.10.2021', 'Chrome', 'Windows 10', '178.233.88.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36'),
(690, 2, '28.10.2021', 'Chrome', 'Windows 10', '178.233.88.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36'),
(691, 3, '28.10.2021', 'Chrome', 'Windows 10', '178.233.88.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36'),
(692, 2, '28.10.2021', 'Chrome', 'Windows 10', '178.233.88.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36'),
(693, 1, '29.10.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36'),
(694, 2, '29.10.2021', 'Chrome', 'Windows 10', '178.233.88.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36'),
(695, 2, '29.10.2021', 'Chrome', 'Windows 10', '178.233.88.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36'),
(696, 1, '30.10.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36'),
(697, 2, '30.10.2021', 'Chrome', 'Windows 10', '178.233.88.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36'),
(698, 2, '30.10.2021', 'Chrome', 'Windows 10', '178.233.88.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36'),
(699, 2, '30.10.2021', 'Chrome', 'Windows 10', '178.233.88.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36'),
(700, 2, '31.10.2021', 'Chrome', 'Windows 10', '178.233.88.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36'),
(701, 2, '31.10.2021', 'Chrome', 'Windows 10', '178.233.88.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36'),
(702, 2, '31.10.2021', 'Chrome', 'Windows 10', '178.233.88.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36'),
(703, 2, '01.11.2021', 'Chrome', 'Windows 10', '178.233.88.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36'),
(704, 1, '01.11.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36'),
(705, 3, '01.11.2021', 'Chrome', 'Windows 10', '178.233.88.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(706, 2, '01.11.2021', 'Chrome', 'Windows 10', '178.233.88.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36'),
(707, 1, '01.11.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36'),
(708, 2, '01.11.2021', 'Chrome', 'Windows 10', '178.233.88.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36'),
(709, 1, '01.11.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36'),
(710, 2, '02.11.2021', 'Chrome', 'Windows 10', '178.233.88.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(711, 2, '03.11.2021', 'Chrome', 'Windows 10', '178.233.88.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(712, 2, '03.11.2021', 'Chrome', 'Windows 10', '178.233.88.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(713, 2, '03.11.2021', 'Chrome', 'Windows 10', '178.233.88.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(714, 1, '04.11.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(715, 1, '06.11.2021', 'Chrome', 'Android 10', '78.188.195.38', 'Mozilla/5.0 (Linux; Android 10; CPH1951) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.50 Mobile Safari/537.36'),
(716, 2, '07.11.2021', 'Chrome', 'Windows 10', '176.234.44.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(717, 2, '07.11.2021', 'Chrome', 'Windows 10', '176.234.44.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(718, 2, '07.11.2021', 'Chrome', 'Windows 10', '176.234.44.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(719, 2, '07.11.2021', 'Chrome', 'Windows 10', '176.234.44.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(720, 2, '08.11.2021', 'Chrome', 'Windows 10', '176.234.44.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(721, 2, '08.11.2021', 'Chrome', 'Windows 10', '176.234.44.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(722, 2, '08.11.2021', 'Chrome', 'Windows 10', '176.234.44.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(723, 2, '09.11.2021', 'Chrome', 'Windows 10', '176.234.44.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(724, 2, '09.11.2021', 'Chrome', 'Windows 10', '176.234.44.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(725, 2, '09.11.2021', 'Chrome', 'Windows 10', '176.234.44.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(726, 2, '09.11.2021', 'Chrome', 'Windows 10', '176.234.44.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(727, 2, '10.11.2021', 'Chrome', 'Windows 10', '176.234.44.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(728, 2, '10.11.2021', 'Chrome', 'Windows 10', '176.234.44.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(729, 2, '10.11.2021', 'Chrome', 'Windows 10', '176.234.44.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(730, 2, '10.11.2021', 'Chrome', 'Windows 10', '176.234.44.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(731, 2, '10.11.2021', 'Chrome', 'Windows 10', '176.234.44.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(732, 2, '10.11.2021', 'Chrome', 'Windows 10', '176.234.44.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(733, 2, '11.11.2021', 'Chrome', 'Windows 10', '176.234.44.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(734, 1, '11.11.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(735, 1, '12.11.2021', 'Chrome', 'Android 10', '5.24.114.232', 'Mozilla/5.0 (Linux; Android 10; CPH1951) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.74 Mobile Safari/537.36'),
(736, 1, '12.11.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(737, 1, '13.11.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(738, 1, '13.11.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(739, 1, '13.11.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(740, 1, '14.11.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(741, 2, '14.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(742, 2, '14.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(743, 2, '15.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(744, 2, '15.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(745, 2, '15.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(746, 2, '15.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(747, 2, '16.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(748, 1, '16.11.2021', 'Chrome', 'Windows 10', '78.185.230.199', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(749, 2, '16.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(750, 2, '16.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(751, 1, '16.11.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(752, 2, '17.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(753, 2, '17.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(754, 2, '17.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(755, 2, '17.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(756, 2, '17.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(757, 2, '17.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(758, 1, '17.11.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(759, 2, '17.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(760, 1, '18.11.2021', 'Chrome', 'Windows 10', '78.185.230.199', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(761, 2, '18.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(762, 1, '18.11.2021', 'Chrome', 'Windows 10', '78.185.230.199', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(763, 2, '18.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(764, 1, '18.11.2021', 'Chrome', 'Windows 10', '78.185.230.199', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(765, 1, '18.11.2021', 'Chrome', 'Windows 10', '78.185.230.199', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(766, 2, '18.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(767, 2, '18.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(768, 2, '18.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(769, 1, '18.11.2021', 'Chrome', 'Android 1', '176.89.2.215', 'Mozilla/5.0 (Linux; Android 11; CPH1951) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.74 Mobile Safari/537.36'),
(770, 2, '18.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(771, 1, '19.11.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(772, 2, '19.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(773, 2, '19.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(774, 2, '19.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(775, 1, '19.11.2021', 'Chrome', 'Android 1', '176.89.2.215', 'Mozilla/5.0 (Linux; Android 11; CPH1951) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.74 Mobile Safari/537.36'),
(776, 2, '19.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(777, 1, '19.11.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(778, 2, '19.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(779, 2, '20.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(780, 2, '20.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(781, 2, '20.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(782, 2, '21.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(783, 2, '21.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(784, 2, '21.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(785, 2, '21.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(786, 2, '22.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(787, 1, '22.11.2021', 'Chrome', 'Windows 10', '78.185.229.4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(788, 2, '22.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(789, 2, '22.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(790, 2, '22.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(791, 1, '22.11.2021', 'Chrome', 'Windows 10', '78.185.229.4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(792, 1, '22.11.2021', 'Chrome', 'Windows 10', '78.185.229.4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36'),
(793, 2, '22.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(794, 1, '23.11.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(795, 2, '23.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(796, 1, '23.11.2021', 'Chrome', 'Windows 10', '78.185.229.4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(797, 2, '23.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(798, 2, '23.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(799, 1, '23.11.2021', 'Chrome', 'Windows 10', '78.185.229.4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(800, 2, '23.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36');
INSERT INTO `nictr_login_info` (`id`, `userID`, `date`, `browser`, `os`, `ip`, `userAgent`) VALUES
(801, 2, '23.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(802, 2, '23.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(803, 2, '24.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(804, 2, '24.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(805, 2, '24.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(806, 2, '25.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(807, 2, '25.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(808, 2, '25.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(809, 2, '25.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(810, 1, '25.11.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(811, 2, '26.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(812, 1, '26.11.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(813, 2, '26.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(814, 2, '26.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(815, 3, '26.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(816, 3, '26.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(817, 2, '26.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(818, 1, '26.11.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(819, 2, '26.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(820, 2, '27.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(821, 2, '27.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(822, 3, '27.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(823, 2, '27.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(824, 2, '27.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(825, 3, '27.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(826, 3, '27.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(827, 2, '27.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(828, 1, '28.11.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(829, 2, '28.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(830, 1, '28.11.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(831, 3, '28.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(832, 2, '28.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(833, 2, '28.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(834, 1, '28.11.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(835, 1, '29.11.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(836, 2, '29.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(837, 3, '29.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(838, 3, '29.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(839, 1, '29.11.2021', 'Chrome', 'Windows 10', '212.133.232.221', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(840, 2, '29.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(841, 2, '29.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(842, 2, '30.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(843, 2, '30.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(844, 1, '30.11.2021', 'Chrome', 'Windows 10', '212.133.232.221', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(845, 2, '30.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(846, 3, '30.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(847, 2, '30.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(848, 1, '30.11.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(849, 3, '30.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(850, 1, '30.11.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(851, 3, '30.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(852, 3, '30.11.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(853, 2, '01.12.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(854, 3, '01.12.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(855, 2, '01.12.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(856, 3, '01.12.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(857, 3, '01.12.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(858, 1, '01.12.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(859, 3, '01.12.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(860, 2, '02.12.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(861, 3, '02.12.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(862, 3, '02.12.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(863, 2, '02.12.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(864, 2, '03.12.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(865, 2, '03.12.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(866, 3, '03.12.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(867, 2, '04.12.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(868, 2, '04.12.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(869, 3, '04.12.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(870, 2, '04.12.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(871, 3, '04.12.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(872, 2, '04.12.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(873, 2, '05.12.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(874, 1, '05.12.2021', 'Chrome', 'Android 1', '31.142.67.57', 'Mozilla/5.0 (Linux; Android 11; CPH1951) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Mobile Safari/537.36'),
(875, 2, '05.12.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(876, 2, '05.12.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(877, 3, '05.12.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(878, 3, '05.12.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(879, 2, '05.12.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(880, 1, '05.12.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(881, 3, '06.12.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(882, 3, '06.12.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(883, 2, '06.12.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(884, 2, '06.12.2021', 'Chrome', 'Windows 10', '176.42.87.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(885, 2, '07.12.2021', 'Chrome', 'Windows 10', '176.42.82.230', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(886, 2, '07.12.2021', 'Chrome', 'Windows 10', '176.42.82.230', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(887, 1, '07.12.2021', 'Chrome', 'Windows 10', '31.142.67.57', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(888, 1, '07.12.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(889, 2, '07.12.2021', 'Chrome', 'Windows 10', '176.42.82.230', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(890, 1, '08.12.2021', 'Chrome', 'Windows 10', '212.133.235.175', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(891, 2, '08.12.2021', 'Chrome', 'Windows 10', '176.42.82.230', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(892, 2, '08.12.2021', 'Chrome', 'Windows 10', '176.42.82.230', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(893, 1, '08.12.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36'),
(894, 2, '08.12.2021', 'Chrome', 'Windows 10', '176.42.82.230', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(895, 1, '09.12.2021', 'Chrome', 'Windows 10', '212.133.230.6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(896, 2, '09.12.2021', 'Chrome', 'Windows 10', '176.42.82.230', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(897, 2, '09.12.2021', 'Chrome', 'Windows 10', '176.42.82.230', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36'),
(898, 2, '09.12.2021', 'Chrome', 'Windows 10', '176.42.82.230', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36'),
(899, 1, '09.12.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36'),
(900, 2, '09.12.2021', 'Chrome', 'Windows 10', '176.42.82.230', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36'),
(901, 2, '09.12.2021', 'Chrome', 'Windows 10', '176.42.82.230', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36'),
(902, 2, '09.12.2021', 'Chrome', 'Windows 10', '176.42.82.230', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.55 Safari/537.36 Edg/96.0.1054.43'),
(903, 2, '09.12.2021', 'Chrome', 'Windows 10', '176.42.82.230', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36'),
(904, 2, '09.12.2021', 'Chrome', 'Windows 10', '176.42.82.230', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.55 Safari/537.36 Edg/96.0.1054.43'),
(905, 2, '09.12.2021', 'Chrome', 'Windows 10', '176.42.82.230', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36'),
(906, 2, '09.12.2021', 'Chrome', 'Windows 10', '176.42.82.230', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36'),
(907, 1, '10.12.2021', 'Chrome', 'Windows 10', '78.188.195.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36'),
(908, 6, '13.12.2021', 'Opera', 'Windows 10', '212.133.233.195', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36 OPR/81.0.4196.61'),
(909, 1, '13.12.2021', 'Chrome', 'Windows 10', '212.133.233.195', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36'),
(910, 1, '13.12.2021', 'Chrome', 'Windows 10', '212.133.233.195', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36'),
(911, 6, '13.12.2021', 'Opera', 'Mac OS X', '212.133.233.195', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36 OPR/81.0.4196.61'),
(912, 1, '13.12.2021', 'Chrome', 'Windows 10', '212.133.233.195', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36'),
(913, 1, '13.12.2021', 'Chrome', 'Windows 10', '212.133.233.195', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36'),
(914, 6, '14.12.2021', 'Opera', 'Mac OS X', '212.133.224.41', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36 OPR/81.0.4196.61'),
(915, 1, '14.12.2021', 'Chrome', 'Windows 10', '212.133.224.41', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36'),
(916, 1, '14.12.2021', 'Chrome', 'Windows 10', '212.133.224.41', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36'),
(917, 1, '14.12.2021', 'Chrome', 'Windows 10', '212.133.224.41', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36'),
(918, 6, '14.12.2021', 'Opera', 'Windows 10', '212.133.224.41', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36 OPR/81.0.4196.61'),
(919, 6, '15.12.2021', 'Opera', 'Mac OS X', '212.133.224.41', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36 OPR/81.0.4196.61'),
(920, 1, '15.12.2021', 'Chrome', 'Windows 10', '212.133.224.41', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36'),
(921, 1, '15.12.2021', 'Chrome', 'Windows 10', '212.133.224.41', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36'),
(922, 1, '15.12.2021', 'Chrome', 'Windows 10', '212.133.224.41', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36'),
(923, 6, '16.12.2021', 'Opera', 'Mac OS X', '212.133.224.41', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36 OPR/81.0.4196.61'),
(924, 6, '16.12.2021', 'Opera', 'Mac OS X', '212.133.224.41', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36 OPR/81.0.4196.61'),
(925, 6, '16.12.2021', 'Opera', 'Mac OS X', '212.133.224.41', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36 OPR/81.0.4196.61'),
(926, 6, '17.12.2021', 'Opera', 'Mac OS X', '212.133.224.41', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36 OPR/81.0.4196.61'),
(927, 6, '17.12.2021', 'Opera', 'Mac OS X', '212.133.224.41', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36 OPR/81.0.4196.61'),
(928, 6, '20.12.2021', 'Chrome', 'Windows 10', '212.133.232.17', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36'),
(929, 1, '20.12.2021', 'Chrome', 'Windows 10', '212.133.232.17', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36'),
(930, 1, '21.12.2021', 'Chrome', 'Windows 10', '212.133.236.160', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36'),
(931, 6, '23.12.2021', 'Opera', 'Mac OS X', '212.133.236.160', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36 OPR/81.0.4196.61'),
(932, 6, '23.12.2021', 'Opera', 'Mac OS X', '212.133.236.160', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36 OPR/81.0.4196.61'),
(933, 6, '23.12.2021', 'Opera', 'Mac OS X', '212.133.236.160', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36 OPR/81.0.4196.61'),
(934, 6, '20.03.2022', 'Chrome', 'Windows 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36'),
(935, 6, '20.03.2022', 'Chrome', 'Windows 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36'),
(936, 6, '20.03.2022', 'Chrome', 'Windows 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36'),
(937, 6, '20.03.2022', 'Chrome', 'Windows 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36'),
(938, 6, '20.03.2022', 'Chrome', 'Windows 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36'),
(939, 6, '20.03.2022', 'Chrome', 'Windows 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36'),
(940, 6, '20.03.2022', 'Chrome', 'Windows 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36'),
(941, 6, '20.03.2022', 'Chrome', 'Windows 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36'),
(942, 6, '20.03.2022', 'Chrome', 'Windows 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36'),
(943, 6, '20.03.2022', 'Chrome', 'Windows 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36'),
(944, 6, '20.03.2022', 'Chrome', 'Windows 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36'),
(945, 6, '20.03.2022', 'Chrome', 'Windows 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36'),
(946, 6, '20.03.2022', 'Chrome', 'Windows 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36'),
(947, 6, '20.03.2022', 'Chrome', 'Windows 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36'),
(948, 6, '20.03.2022', 'Chrome', 'Windows 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36'),
(949, 6, '20.03.2022', 'Chrome', 'Windows 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36'),
(950, 6, '20.03.2022', 'Chrome', 'Windows 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36'),
(951, 6, '20.03.2022', 'Chrome', 'Windows 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36'),
(952, 6, '20.03.2022', 'Chrome', 'Windows 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36'),
(953, 6, '20.03.2022', 'Chrome', 'Windows 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36'),
(954, 6, '20.03.2022', 'Chrome', 'Windows 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36'),
(955, 6, '20.03.2022', 'Chrome', 'Windows 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36'),
(956, 6, '20.03.2022', 'Chrome', 'Windows 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36'),
(957, 6, '20.03.2022', 'Chrome', 'Windows 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36'),
(958, 6, '20.03.2022', 'Chrome', 'Windows 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36'),
(959, 1, '25.03.2022', 'Chrome', 'Windows 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(960, 1, '25.03.2022', 'Chrome', 'Windows 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(961, 1, '25.03.2022', 'Chrome', 'Windows 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(962, 1, '25.03.2022', 'Chrome', 'Windows 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(963, 1, '25.03.2022', 'Chrome', 'Windows 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(964, 1, '25.03.2022', 'Chrome', 'Windows 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(965, 1, '25.03.2022', 'Chrome', 'Windows 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(966, 1, '25.03.2022', 'Chrome', 'Windows 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(967, 1, '26.03.2022', 'Chrome', 'Windows 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36'),
(968, 1, '31.05.2022', 'Opera', 'Mac OS X', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36 OPR/86.0.4363.64'),
(969, 1, '01.06.2022', 'Opera', 'Mac OS X', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36 OPR/86.0.4363.64'),
(970, 1, '14.06.2022', 'Opera', 'Mac OS X', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36 OPR/86.0.4363.70');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `nictr_mailsetting`
--

CREATE TABLE `nictr_mailsetting` (
  `id` int(11) UNSIGNED NOT NULL,
  `host` text NOT NULL,
  `port` text NOT NULL,
  `encryption` text NOT NULL,
  `mail` text NOT NULL,
  `pass` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `nictr_mailsetting`
--

INSERT INTO `nictr_mailsetting` (`id`, `host`, `port`, `encryption`, `mail`, `pass`) VALUES
(1, 'mail.internettescil.com.tr', '587', 'tls', 'ugur.isik@internettescil.com.tr', '#Ugur2021.');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `nictr_mailtemplate`
--

CREATE TABLE `nictr_mailtemplate` (
  `id` int(11) NOT NULL,
  `type` text NOT NULL,
  `senderMail` text NOT NULL,
  `senderTitle` text NOT NULL,
  `reciverTemplate` text NOT NULL,
  `adminTemplate` text NOT NULL,
  `sablonmesaji` text NOT NULL,
  `sablonbasligi` text NOT NULL,
  `adminMail` text NOT NULL,
  `adminTitle` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `nictr_mailtemplate`
--

INSERT INTO `nictr_mailtemplate` (`id`, `type`, `senderMail`, `senderTitle`, `reciverTemplate`, `adminTemplate`, `sablonmesaji`, `sablonbasligi`, `adminMail`, `adminTitle`) VALUES
(1, 'contact', 'info@bikare.work', 'Transfer', '<!DOCTYPE html><html> <head> <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\"/> <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"/> <title>{{pagetitle}}</title> <style>img{border: none; -ms-interpolation-mode: bicubic; max-width: 100%;}body{background-color: #f6f6f6; font-family: sans-serif; -webkit-font-smoothing: antialiased; font-size: 14px; line-height: 1.4; margin: 0; padding: 0; -ms-text-size-adjust: 100%; -webkit-text-size-adjust: 100%;}table{border-collapse: separate; mso-table-lspace: 0pt; mso-table-rspace: 0pt; width: 100%;}table td{font-family: sans-serif; font-size: 14px; vertical-align: top;}.body{background-color: #f6f6f6; width: 100%;}.container{display: block; margin: 0 auto !important; /* makes it centered */ max-width: 580px; padding: 10px; width: 580px;}.content{box-sizing: border-box; display: block; margin: 0 auto; max-width: 580px; padding: 10px;}.main{background: #ffffff; border-radius: 3px; width: 100%;}.wrapper{box-sizing: border-box; padding: 20px;}.logo{box-sizing: border-box; text-align: center; padding: 20px 0 0 0;}.socialLink{float: left; width: 30px; margin-right: 10px;}.socialLink .facebook{fill: blue;}.content-block{padding-bottom: 10px; padding-top: 10px;}.footer{clear: both; margin-top: 10px; text-align: center; width: 100%;}.footer td, .footer p, .footer span, .footer a{color: #999999; font-size: 12px; text-align: center;}h1, h2, h3, h4{color: #000000; font-family: sans-serif; font-weight: 400; line-height: 1.4; margin: 0; margin-bottom: 30px;}h1{font-size: 35px; font-weight: 300; text-align: center; text-transform: capitalize;}p, ul, ol{font-family: sans-serif; font-size: 14px; font-weight: normal; margin: 0; margin-bottom: 15px;}p li, ul li, ol li{list-style-position: inside; margin-left: 5px;}a{color: #3498db; text-decoration: underline;}.btn{box-sizing: border-box; width: 100%;}.btn > tbody > tr > td{padding-bottom: 15px;}.btn table{width: auto;}.btn table td{background-color: #ffffff; border-radius: 5px; text-align: center;}.btn a{background-color: #ffffff; border: solid 1px #3498db; border-radius: 5px; box-sizing: border-box; color: #3498db; cursor: pointer; display: inline-block; font-size: 14px; font-weight: bold; margin: 0; padding: 12px 25px; text-decoration: none; text-transform: capitalize;}.btn-primary table td{background-color: #3498db;}.btn-primary a{background-color: #3498db; border-color: #3498db; color: #ffffff;}.last{margin-bottom: 0;}.first{margin-top: 0;}.align-center{text-align: center;}.align-right{text-align: right;}.align-left{text-align: left;}.clear{clear: both;}.mt0{margin-top: 0;}.mb0{margin-bottom: 0;}.preheader{color: transparent; display: none; height: 0; max-height: 0; max-width: 0; opacity: 0; overflow: hidden; mso-hide: all; visibility: hidden; width: 0;}.powered-by a{text-decoration: none;}hr{border: 0; border-bottom: 1px solid #f6f6f6; margin: 20px 0;}@media only screen and (max-width: 620px){table.body h1{font-size: 28px !important; margin-bottom: 10px !important;}table.body p, table.body ul, table.body ol, table.body td, table.body span, table.body a{font-size: 16px !important;}table.body .wrapper, table.body .article{padding: 10px !important;}table.body .content{padding: 0 !important;}table.body .container{padding: 0 !important; width: 100% !important;}table.body .main{border-left-width: 0 !important; border-radius: 0 !important; border-right-width: 0 !important;}table.body .btn table{width: 100% !important;}table.body .btn a{width: 100% !important;}table.body .img-responsive{height: auto !important; max-width: 100% !important; width: auto !important;}}@media all{.ExternalClass{width: 100%;}.ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div{line-height: 100%;}.apple-link a{color: inherit !important; font-family: inherit !important; font-size: inherit !important; font-weight: inherit !important; line-height: inherit !important; text-decoration: none !important;}#MessageViewBody a{color: inherit; text-decoration: none; font-size: inherit; font-family: inherit; font-weight: inherit; line-height: inherit;}.btn-primary table td:hover{background-color: #34495e !important;}.btn-primary a:hover{background-color: #34495e !important; border-color: #34495e !important;}}</style> </head> <body class=\"\">\r\n<table class=\"body\" role=\"presentation\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td class=\"container\">\r\n<div class=\"content\">\r\n<table class=\"main\" role=\"presentation\">\r\n<tbody>\r\n<tr>\r\n<td class=\"logo\"><a href=\"{{url}}\"><img src=\"https://bikare.work/works/nictr/02-transfer/php/bwp-content/themes/transfer/assets/img/logo.png\" width=\"180\" height=\"45\"></a></td>\r\n</tr>\r\n<tr>\r\n<td class=\"wrapper\">\r\n<table role=\"presentation\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<p>{{hi}},<strong> {{name}}</strong></p>\r\n<p style=\"text-align: center;\">{{sablonmesaji}}</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class=\"wrapper\">\r\n<table style=\"height: 257px;\" role=\"presentation\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr style=\"height: 34px;\">\r\n<td style=\"height: 34px; width: 503.219px;\">\r\n<p style=\"text-align: center;\">{{iletisimbilgileriniz}}</p>\r\n</td>\r\n</tr>\r\n<tr style=\"height: 34px;\">\r\n<td style=\"height: 34px; width: 503.219px;\">\r\n<p>{{isimsoyisim}}: <strong>{{name}}</strong></p>\r\n</td>\r\n</tr>\r\n<tr style=\"height: 34px;\">\r\n<td style=\"height: 34px; width: 503.219px;\">\r\n<p>{{ouremail}}: <strong>{{postemail}}</strong></p>\r\n</td>\r\n</tr>\r\n<tr style=\"height: 34px;\">\r\n<td style=\"height: 34px; width: 503.219px;\">\r\n<p>{{konu}}: <strong>{{postsubjet}}</strong></p>\r\n</td>\r\n</tr>\r\n<tr style=\"height: 34px;\">\r\n<td style=\"height: 34px; width: 503.219px;\">\r\n<p>{{message}}: <strong>{{postmessage}}</strong></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<div class=\"footer\">\r\n<table role=\"presentation\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td><a href=\"#\"><img src=\"https://bikare.work/works/2020/01-alsero/php/tur/bwp-content/uploads/mail/facebook.png\" alt=\"\"></a> <a href=\"#\"><img src=\"https://bikare.work/works/2020/01-alsero/php/tur/bwp-content/uploads/mail/instagram.png\" alt=\"\"></a> <a href=\"#\"><img src=\"https://bikare.work/works/2020/01-alsero/php/tur/bwp-content/uploads/mail/youtube.png\" alt=\"\"></a> <a href=\"#\"><img src=\"https://bikare.work/works/2020/01-alsero/php/tur/bwp-content/uploads/mail/twitter.png\" alt=\"\"></a></td>\r\n</tr>\r\n<tr>\r\n<td class=\"content-block powered-by\">{{noreply}}</td>\r\n</tr>\r\n<tr>\r\n<td class=\"content-block powered-by\"><a href=\"{{url}}\">{{compName}}</a></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</body></html>', '<!DOCTYPE html><html> <head> <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\"/> <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"/> <title>{{pagetitle}}</title> <style>img{border: none; -ms-interpolation-mode: bicubic; max-width: 100%;}body{background-color: #f6f6f6; font-family: sans-serif; -webkit-font-smoothing: antialiased; font-size: 14px; line-height: 1.4; margin: 0; padding: 0; -ms-text-size-adjust: 100%; -webkit-text-size-adjust: 100%;}table{border-collapse: separate; mso-table-lspace: 0pt; mso-table-rspace: 0pt; width: 100%;}table td{font-family: sans-serif; font-size: 14px; vertical-align: top;}.body{background-color: #f6f6f6; width: 100%;}.container{display: block; margin: 0 auto !important; /* makes it centered */ max-width: 580px; padding: 10px; width: 580px;}.content{box-sizing: border-box; display: block; margin: 0 auto; max-width: 580px; padding: 10px;}.main{background: #ffffff; border-radius: 3px; width: 100%;}.wrapper{box-sizing: border-box; padding: 20px;}.logo{box-sizing: border-box;text-align: center;padding: 20px 0 0 0;}.socialLink{float: left; width: 30px; margin-right: 10px;}.socialLink .facebook{fill:blue;}.content-block{padding-bottom: 10px; padding-top: 10px;}.footer{clear: both; margin-top: 10px; text-align: center; width: 100%;}.footer td, .footer p, .footer span, .footer a{color: #999999; font-size: 12px; text-align: center;}h1, h2, h3, h4{color: #000000; font-family: sans-serif; font-weight: 400; line-height: 1.4; margin: 0; margin-bottom: 30px;}h1{font-size: 35px; font-weight: 300; text-align: center; text-transform: capitalize;}p, ul, ol{font-family: sans-serif; font-size: 14px; font-weight: normal; margin: 0; margin-bottom: 15px;}p li, ul li, ol li{list-style-position: inside; margin-left: 5px;}a{color: #3498db; text-decoration: underline;}.btn{box-sizing: border-box; width: 100%;}.btn > tbody > tr > td{padding-bottom: 15px;}.btn table{width: auto;}.btn table td{background-color: #ffffff; border-radius: 5px; text-align: center;}.btn a{background-color: #ffffff; border: solid 1px #3498db; border-radius: 5px; box-sizing: border-box; color: #3498db; cursor: pointer; display: inline-block; font-size: 14px; font-weight: bold; margin: 0; padding: 12px 25px; text-decoration: none; text-transform: capitalize;}.btn-primary table td{background-color: #3498db;}.btn-primary a{background-color: #3498db; border-color: #3498db; color: #ffffff;}.last{margin-bottom: 0;}.first{margin-top: 0;}.align-center{text-align: center;}.align-right{text-align: right;}.align-left{text-align: left;}.clear{clear: both;}.mt0{margin-top: 0;}.mb0{margin-bottom: 0;}.preheader{color: transparent; display: none; height: 0; max-height: 0; max-width: 0; opacity: 0; overflow: hidden; mso-hide: all; visibility: hidden; width: 0;}.powered-by a{text-decoration: none;}hr{border: 0; border-bottom: 1px solid #f6f6f6; margin: 20px 0;}@media only screen and (max-width: 620px){table.body h1{font-size: 28px !important; margin-bottom: 10px !important;}table.body p, table.body ul, table.body ol, table.body td, table.body span, table.body a{font-size: 16px !important;}table.body .wrapper, table.body .article{padding: 10px !important;}table.body .content{padding: 0 !important;}table.body .container{padding: 0 !important; width: 100% !important;}table.body .main{border-left-width: 0 !important; border-radius: 0 !important; border-right-width: 0 !important;}table.body .btn table{width: 100% !important;}table.body .btn a{width: 100% !important;}table.body .img-responsive{height: auto !important; max-width: 100% !important; width: auto !important;}}@media all{.ExternalClass{width: 100%;}.ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div{line-height: 100%;}.apple-link a{color: inherit !important; font-family: inherit !important; font-size: inherit !important; font-weight: inherit !important; line-height: inherit !important; text-decoration: none !important;}#MessageViewBody a{color: inherit; text-decoration: none; font-size: inherit; font-family: inherit; font-weight: inherit; line-height: inherit;}.btn-primary table td:hover{background-color: #34495e !important;}.btn-primary a:hover{background-color: #34495e !important; border-color: #34495e !important;}}</style> </head> <body class=\"\">\r\n<table class=\"body\" role=\"presentation\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td class=\"container\">\r\n<div class=\"content\">\r\n<table class=\"main\" role=\"presentation\">\r\n<tbody>\r\n<tr>\r\n<td class=\"logo\"><a href=\"{{url}}\"><img src=\"https://bikare.work/works/nictr/02-transfer/php/bwp-content/themes/transfer/assets/img/logo.png\" width=\"180\" height=\"45\"></a></td>\r\n</tr>\r\n<tr>\r\n<td class=\"wrapper\">\r\n<table role=\"presentation\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<p>Bir ziyaret&ccedil;i iletişim formunu doldurdu</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class=\"wrapper\">\r\n<table role=\"presentation\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<p>İsim Soyisim : <strong>{{name}}</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Email Adresi : <strong><a href=\"mailto:{{postemail}}\">{{postemail}}</a></strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Konu : <strong>{{postsubjet}}</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Mesajı : <strong>{{postmessage}}</strong></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class=\"wrapper\">\r\n<table role=\"presentation\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<p>IP : <strong>{{ip}}</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Tarayıcı : <strong>{{browser}}</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Tarayıcı Tipi : <strong>{{header}}</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>İşletim Sistemi : <strong>{{os}}</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Tarayıcı Dili : <strong>{{lang}}</strong></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<div class=\"footer\">\r\n<table role=\"presentation\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td class=\"content-block powered-by\"><a href=\"{{url}}\">{{compName}}</a></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</body></html>', '{\"TR\":\"İletişim talebiniz alındı. Yetkililerimizden biri en kısa sürede size geri dönecektir.\",\"EN\":\"Your contact request has been received. One of our officials will get back to you as soon as possible.\",\"GE\":\"Ihre Kontaktanfrage ist eingegangen. Einer unserer Mitarbeiter wird sich so schnell wie möglich bei Ihnen melden.\"}', '{\"TR\":\"İletişim Talebi Hakkında\",\"EN\":\"About Contact Request\",\"GE\":\"per Kontaktanfrage\"}', 'peniaugur80@gmail.com', 'Yeni iletişim talebi!'),
(2, 'requestForm', 'info@bikare.work', 'Transfer', '<!DOCTYPE html><html><head> <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\"/> <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"/> <title>{{pagetitle}}</title> <style>img{border: none; -ms-interpolation-mode: bicubic; max-width: 100%;}body{background-color: #f6f6f6; font-family: sans-serif; -webkit-font-smoothing: antialiased; font-size: 14px; line-height: 1.4; margin: 0; padding: 0; -ms-text-size-adjust: 100%; -webkit-text-size-adjust: 100%;}table{border-collapse: separate; mso-table-lspace: 0pt; mso-table-rspace: 0pt; width: 100%;}table td{font-family: sans-serif; font-size: 14px; vertical-align: top;}.body{background-color: #f6f6f6; width: 100%;}.container{display: block; margin: 0 auto !important; /* makes it centered */ max-width: 580px; padding: 10px; width: 580px;}.content{box-sizing: border-box; display: block; margin: 0 auto; max-width: 580px; padding: 10px;}.main{background: #ffffff; border-radius: 3px; width: 100%;}.wrapper{box-sizing: border-box; padding: 20px;}.logo{box-sizing: border-box; text-align: center; padding: 20px 0 0 0;}.socialLink{float: left; width: 30px; margin-right: 10px;}.socialLink .facebook{fill: blue;}.content-block{padding-bottom: 10px; padding-top: 10px;}.footer{clear: both; margin-top: 10px; text-align: center; width: 100%;}.footer td, .footer p, .footer span, .footer a{color: #999999; font-size: 12px; text-align: center;}h1, h2, h3, h4{color: #000000; font-family: sans-serif; font-weight: 400; line-height: 1.4; margin: 0; margin-bottom: 30px;}h1{font-size: 35px; font-weight: 300; text-align: center; text-transform: capitalize;}p, ul, ol{font-family: sans-serif; font-size: 14px; font-weight: normal; margin: 0; margin-bottom: 15px;}p li, ul li, ol li{list-style-position: inside; margin-left: 5px;}a{color: #3498db; text-decoration: underline;}.btn{box-sizing: border-box; width: 100%;}.btn > tbody > tr > td{padding-bottom: 15px;}.btn table{width: auto;}.btn table td{background-color: #ffffff; border-radius: 5px; text-align: center;}.btn a{background-color: #ffffff; border: solid 1px #3498db; border-radius: 5px; box-sizing: border-box; color: #3498db; cursor: pointer; display: inline-block; font-size: 14px; font-weight: bold; margin: 0; padding: 12px 25px; text-decoration: none; text-transform: capitalize;}.btn-primary table td{background-color: #3498db;}.btn-primary a{background-color: #3498db; border-color: #3498db; color: #ffffff;}.last{margin-bottom: 0;}.first{margin-top: 0;}.align-center{text-align: center;}.align-right{text-align: right;}.align-left{text-align: left;}.clear{clear: both;}.mt0{margin-top: 0;}.mb0{margin-bottom: 0;}.preheader{color: transparent; display: none; height: 0; max-height: 0; max-width: 0; opacity: 0; overflow: hidden; mso-hide: all; visibility: hidden; width: 0;}.powered-by a{text-decoration: none;}hr{border: 0; border-bottom: 1px solid #f6f6f6; margin: 20px 0;}@media only screen and (max-width: 620px){table.body h1{font-size: 28px !important; margin-bottom: 10px !important;}table.body p, table.body ul, table.body ol, table.body td, table.body span, table.body a{font-size: 16px !important;}table.body .wrapper, table.body .article{padding: 10px !important;}table.body .content{padding: 0 !important;}table.body .container{padding: 0 !important; width: 100% !important;}table.body .main{border-left-width: 0 !important; border-radius: 0 !important; border-right-width: 0 !important;}table.body .btn table{width: 100% !important;}table.body .btn a{width: 100% !important;}table.body .img-responsive{height: auto !important; max-width: 100% !important; width: auto !important;}}@media all{.ExternalClass{width: 100%;}.ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div{line-height: 100%;}.apple-link a{color: inherit !important; font-family: inherit !important; font-size: inherit !important; font-weight: inherit !important; line-height: inherit !important; text-decoration: none !important;}#MessageViewBody a{color: inherit; text-decoration: none; font-size: inherit; font-family: inherit; font-weight: inherit; line-height: inherit;}.btn-primary table td:hover{background-color: #34495e !important;}.btn-primary a:hover{background-color: #34495e !important; border-color: #34495e !important;}}</style></head><body class=\"\">\r\n<table class=\"body\" role=\"presentation\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 0px;\">&nbsp;</td>\r\n<td class=\"container\" style=\"width: 580px;\">\r\n<div class=\"content\">\r\n<table class=\"main\" role=\"presentation\">\r\n<tbody>\r\n<tr>\r\n<td class=\"logo\"><a href=\"{{url}}\"><img src=\"https://bikare.work/works/nictr/02-transfer/php/bwp-content/themes/transfer/assets/img/logo_tr.png\" width=\"180\" height=\"45\"></a></td>\r\n</tr>\r\n<tr>\r\n<td class=\"wrapper\">\r\n<table role=\"presentation\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<p>{{hi}},<strong>{{name}}</strong></p>\r\n<p style=\"text-align: center;\">{{sablonmesaji}}</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p style=\"text-align: center;\">{{siparislink}}</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class=\"wrapper\">\r\n<table>\r\n<tbody>\r\n<tr style=\"height: 34px;\">\r\n<td style=\"height: 34px; width: 503.219px;\">\r\n<p style=\"text-align: center;\">{{ilgilikisi}}</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table role=\"presentation\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n<thead>\r\n<tr>\r\n<td style=\"text-align: center;\"><strong>{{ilgiliadsoyad}}</strong></td>\r\n<td style=\"text-align: center;\"><strong>{{ilgilitelefon}}</strong></td>\r\n<td style=\"text-align: center;\"><strong>{{ilgilidogumtarihi}}</strong></td>\r\n<td style=\"text-align: center;\"><strong>{{ilgilikimlik}}</strong></td>\r\n<td style=\"text-align: center;\"><strong>{{ilgiliemail}}</strong></td>\r\n</tr>\r\n</thead>\r\n</table>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class=\"wrapper\">\r\n<table>\r\n<tbody>\r\n<tr style=\"height: 34px;\">\r\n<td style=\"height: 34px; width: 503.219px;\">\r\n<p style=\"text-align: center;\">{{yolculukbilgileri}}</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table role=\"presentation\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n<thead>\r\n<tr>\r\n<td style=\"text-align: center;\"><strong>{{kalkisnoktasi}}</strong></td>\r\n<td style=\"text-align: center;\"><strong>{{kalkistarihi}}</strong></td>\r\n<td style=\"text-align: center;\"><strong>{{varisnoktasi}}</strong></td>\r\n<td style=\"text-align: center;\"><strong>{{kisisayisi}}</strong></td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td>\r\n<p style=\"text-align: center;\">{{kalkisn}}</p>\r\n</td>\r\n<td>\r\n<p style=\"text-align: center;\">{{kalkist}}</p>\r\n</td>\r\n<td>\r\n<p style=\"text-align: center;\">{{varisn}}</p>\r\n</td>\r\n<td>\r\n<p style=\"text-align: center;\">{{kisi}}</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class=\"wrapper\">\r\n<table>\r\n<tbody>\r\n<tr style=\"height: 34px;\">\r\n<td style=\"height: 34px; width: 503.219px;\">\r\n<p style=\"text-align: center;\">{{yolcubilgileri}}</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n{{tablerow}}</td>\r\n</tr>\r\n<tr>\r\n<td class=\"wrapper\">\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td style=\"text-align: right;\">\r\n<h2 style=\"color: #e52d27;\">{{fiyat}}₺</h2>\r\n<small>{{paydate}}</small></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<div class=\"footer\">\r\n<table role=\"presentation\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td><a href=\"#\"><img src=\"https://bikare.work/works/2020/01-alsero/php/tur/bwp-content/uploads/mail/facebook.png\" alt=\"\"></a> <a href=\"#\"><img src=\"https://bikare.work/works/2020/01-alsero/php/tur/bwp-content/uploads/mail/instagram.png\" alt=\"\"></a> <a href=\"#\"><img src=\"https://bikare.work/works/2020/01-alsero/php/tur/bwp-content/uploads/mail/youtube.png\" alt=\"\"></a> <a href=\"#\"><img src=\"https://bikare.work/works/2020/01-alsero/php/tur/bwp-content/uploads/mail/twitter.png\" alt=\"\"></a></td>\r\n</tr>\r\n<tr>\r\n<td class=\"content-block powered-by\">{{noreply}}</td>\r\n</tr>\r\n<tr>\r\n<td class=\"content-block powered-by\"><a href=\"{{url}}\">{{compName}}</a></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n</td>\r\n<td style=\"width: 0px;\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</body></html>', '<!DOCTYPE html><html><head> <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\"/> <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"/> <title>{{pagetitle}}</title> <style>img{border: none; -ms-interpolation-mode: bicubic; max-width: 100%;}body{background-color: #f6f6f6; font-family: sans-serif; -webkit-font-smoothing: antialiased; font-size: 14px; line-height: 1.4; margin: 0; padding: 0; -ms-text-size-adjust: 100%; -webkit-text-size-adjust: 100%;}table{border-collapse: separate; mso-table-lspace: 0pt; mso-table-rspace: 0pt; width: 100%;}table td{font-family: sans-serif; font-size: 14px; vertical-align: top;}.body{background-color: #f6f6f6; width: 100%;}.container{display: block; margin: 0 auto !important; /* makes it centered */ max-width: 580px; padding: 10px; width: 580px;}.content{box-sizing: border-box; display: block; margin: 0 auto; max-width: 580px; padding: 10px;}.main{background: #ffffff; border-radius: 3px; width: 100%;}.wrapper{box-sizing: border-box; padding: 20px;}.logo{box-sizing: border-box; text-align: center; padding: 20px 0 0 0;}.socialLink{float: left; width: 30px; margin-right: 10px;}.socialLink .facebook{fill: blue;}.content-block{padding-bottom: 10px; padding-top: 10px;}.footer{clear: both; margin-top: 10px; text-align: center; width: 100%;}.footer td, .footer p, .footer span, .footer a{color: #999999; font-size: 12px; text-align: center;}h1, h2, h3, h4{color: #000000; font-family: sans-serif; font-weight: 400; line-height: 1.4; margin: 0; margin-bottom: 30px;}h1{font-size: 35px; font-weight: 300; text-align: center; text-transform: capitalize;}p, ul, ol{font-family: sans-serif; font-size: 14px; font-weight: normal; margin: 0; margin-bottom: 15px;}p li, ul li, ol li{list-style-position: inside; margin-left: 5px;}a{color: #3498db; text-decoration: underline;}.btn{box-sizing: border-box; width: 100%;}.btn > tbody > tr > td{padding-bottom: 15px;}.btn table{width: auto;}.btn table td{background-color: #ffffff; border-radius: 5px; text-align: center;}.btn a{background-color: #ffffff; border: solid 1px #3498db; border-radius: 5px; box-sizing: border-box; color: #3498db; cursor: pointer; display: inline-block; font-size: 14px; font-weight: bold; margin: 0; padding: 12px 25px; text-decoration: none; text-transform: capitalize;}.btn-primary table td{background-color: #3498db;}.btn-primary a{background-color: #3498db; border-color: #3498db; color: #ffffff;}.last{margin-bottom: 0;}.first{margin-top: 0;}.align-center{text-align: center;}.align-right{text-align: right;}.align-left{text-align: left;}.clear{clear: both;}.mt0{margin-top: 0;}.mb0{margin-bottom: 0;}.preheader{color: transparent; display: none; height: 0; max-height: 0; max-width: 0; opacity: 0; overflow: hidden; mso-hide: all; visibility: hidden; width: 0;}.powered-by a{text-decoration: none;}hr{border: 0; border-bottom: 1px solid #f6f6f6; margin: 20px 0;}@media only screen and (max-width: 620px){table.body h1{font-size: 28px !important; margin-bottom: 10px !important;}table.body p, table.body ul, table.body ol, table.body td, table.body span, table.body a{font-size: 16px !important;}table.body .wrapper, table.body .article{padding: 10px !important;}table.body .content{padding: 0 !important;}table.body .container{padding: 0 !important; width: 100% !important;}table.body .main{border-left-width: 0 !important; border-radius: 0 !important; border-right-width: 0 !important;}table.body .btn table{width: 100% !important;}table.body .btn a{width: 100% !important;}table.body .img-responsive{height: auto !important; max-width: 100% !important; width: auto !important;}}@media all{.ExternalClass{width: 100%;}.ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div{line-height: 100%;}.apple-link a{color: inherit !important; font-family: inherit !important; font-size: inherit !important; font-weight: inherit !important; line-height: inherit !important; text-decoration: none !important;}#MessageViewBody a{color: inherit; text-decoration: none; font-size: inherit; font-family: inherit; font-weight: inherit; line-height: inherit;}.btn-primary table td:hover{background-color: #34495e !important;}.btn-primary a:hover{background-color: #34495e !important; border-color: #34495e !important;}}</style></head><body class=\"\">\r\n<table class=\"body\" role=\"presentation\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td class=\"container\">\r\n<div class=\"content\">\r\n<table class=\"main\" role=\"presentation\">\r\n<tbody>\r\n<tr>\r\n<td class=\"logo\"><a href=\"{{url}}\"><img src=\"https://bikare.work/works/nictr/02-transfer/php/bwp-content/themes/transfer/assets/img/logo_tr.png\" width=\"180\" height=\"45\"></a></td>\r\n</tr>\r\n<tr>\r\n<td class=\"wrapper\">\r\n<table role=\"presentation\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<p style=\"text-align: center;\">Yeni bir transfer talebiniz var</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class=\"wrapper\">\r\n<table>\r\n<tbody>\r\n<tr style=\"height: 34px;\">\r\n<td style=\"height: 34px; width: 503.219px;\">\r\n<p style=\"text-align: center;\">{{ilgilikisi}}</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table role=\"presentation\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n<thead>\r\n<tr>\r\n<td style=\"text-align: center;\"><strong>{{ilgiliadsoyad}}</strong></td>\r\n<td style=\"text-align: center;\"><strong>{{ilgilitelefon}}</strong></td>\r\n<td style=\"text-align: center;\"><strong>{{ilgilidogumtarihi}}</strong></td>\r\n<td style=\"text-align: center;\"><strong>{{ilgilikimlik}}</strong></td>\r\n<td style=\"text-align: center;\"><strong>{{ilgiliemail}}</strong></td>\r\n</tr>\r\n</thead>\r\n</table>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class=\"wrapper\">\r\n<table>\r\n<tbody>\r\n<tr style=\"height: 34px;\">\r\n<td style=\"height: 34px; width: 503.219px;\">\r\n<p style=\"text-align: center;\">{{yolculukbilgileri}}</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table role=\"presentation\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n<thead>\r\n<tr>\r\n<td style=\"text-align: center;\"><strong>{{kalkisnoktasi}}</strong></td>\r\n<td style=\"text-align: center;\"><strong>{{kalkistarihi}}</strong></td>\r\n<td style=\"text-align: center;\"><strong>{{varisnoktasi}}</strong></td>\r\n<td style=\"text-align: center;\"><strong>{{kisisayisi}}</strong></td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td>\r\n<p style=\"text-align: center;\">{{kalkisn}}</p>\r\n</td>\r\n<td>\r\n<p style=\"text-align: center;\">{{kalkist}}</p>\r\n</td>\r\n<td>\r\n<p style=\"text-align: center;\">{{varisn}}</p>\r\n</td>\r\n<td>\r\n<p style=\"text-align: center;\">{{kisi}}</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class=\"wrapper\">\r\n<table>\r\n<tbody>\r\n<tr style=\"height: 34px;\">\r\n<td style=\"height: 34px; width: 503.219px;\">\r\n<p style=\"text-align: center;\">{{yolcubilgileri}}</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n{{tablerow}}</td>\r\n</tr>\r\n<tr>\r\n<td class=\"wrapper\">\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td style=\"text-align: right;\">\r\n<h2 style=\"color: #e52d27;\">{{fiyat}}₺</h2>\r\n<small>{{paydate}}</small></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<div class=\"footer\">\r\n<table role=\"presentation\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td><a href=\"#\"><img src=\"https://bikare.work/works/2020/01-alsero/php/tur/bwp-content/uploads/mail/facebook.png\" alt=\"\"></a> <a href=\"#\"><img src=\"https://bikare.work/works/2020/01-alsero/php/tur/bwp-content/uploads/mail/instagram.png\" alt=\"\"></a> <a href=\"#\"><img src=\"https://bikare.work/works/2020/01-alsero/php/tur/bwp-content/uploads/mail/youtube.png\" alt=\"\"></a> <a href=\"#\"><img src=\"https://bikare.work/works/2020/01-alsero/php/tur/bwp-content/uploads/mail/twitter.png\" alt=\"\"></a></td>\r\n</tr>\r\n<tr>\r\n<td class=\"content-block powered-by\">{{noreply}}</td>\r\n</tr>\r\n<tr>\r\n<td class=\"content-block powered-by\"><a href=\"{{url}}\">{{compName}}</a></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</body></html>', '{\"TR\":\"Siparişiniz alındı. Yetkililerimizden biri en kısa sürede size geri dönecektir.\",\"EN\":\"Your order has been received. One of our officials will get back to you as soon as possible.\\r\\nYou can click on the link below to view the order.\",\"DE\":\"\",\"FR\":\"\"}', '{\"TR\":\"İletişim Talebi Hakkında\",\"EN\":\"About Contact Request\",\"DE\":\"\",\"FR\":\"\"}', 'peniaugur80@gmail.com', 'Yeni iletişim talebi!');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `nictr_mail_schema`
--

CREATE TABLE `nictr_mail_schema` (
  `ID` int(11) NOT NULL,
  `schema_` text DEFAULT NULL,
  `receiverMail` text NOT NULL,
  `adminMail` text NOT NULL,
  `adminTitle` text NOT NULL,
  `adminSchema` longtext NOT NULL,
  `schemaTitle` text NOT NULL,
  `schemaMessage` longtext NOT NULL,
  `receiverSchema` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `nictr_mail_schema`
--

INSERT INTO `nictr_mail_schema` (`ID`, `schema_`, `receiverMail`, `adminMail`, `adminTitle`, `adminSchema`, `schemaTitle`, `schemaMessage`, `receiverSchema`) VALUES
(2, 'contact', 'noreply@noreply.com', 'Admin E-Posta', 'Admin Başlık', '<table class=\"body\" style=\"width: 42.7502%; margin-left: auto; margin-right: auto;\" role=\"presentation\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td style=\"text-align: center; width: 0.15949%;\">&nbsp;</td>\r\n<td class=\"container\" style=\"width: 98.2482%;\">\r\n<div class=\"content\">\r\n<table class=\"main\" style=\"width: 99.8349%;\" role=\"presentation\">\r\n<tbody>\r\n<tr>\r\n<td class=\"logo\" style=\"text-align: center; width: 100%;\"><a href=\"{{url}}\"><img src=\"https://freepikpsd.com/file/2019/10/example-logo-png-2-Transparent-Images-300x121.png\" width=\"211\" height=\"85\"></a></td>\r\n</tr>\r\n<tr>\r\n<td class=\"wrapper\" style=\"width: 100%;\">\r\n<table style=\"width: 100.158%;\" role=\"presentation\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 100%;\">\r\n<p>{{hi}},<strong> {{name}}</strong></p>\r\n<p style=\"text-align: center;\">{{sablonmesaji}}</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class=\"wrapper\" style=\"width: 100%;\">\r\n<table style=\"height: 257px; width: 101.137%;\" role=\"presentation\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr style=\"height: 34px;\">\r\n<td style=\"height: 34px; width: 100%;\">\r\n<p style=\"text-align: center;\">{{iletisimbilgileriniz}}</p>\r\n</td>\r\n</tr>\r\n<tr style=\"height: 34px;\">\r\n<td style=\"height: 34px; width: 100%;\">\r\n<p>{{isimsoyisim}}: <strong>{{name}}</strong></p>\r\n</td>\r\n</tr>\r\n<tr style=\"height: 34px;\">\r\n<td style=\"height: 34px; width: 100%;\">\r\n<p>{{ouremail}}: <strong>{{postemail}}</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 100%;\">\r\n<p>{{ourphone}}: <strong>{{postphone}}</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 100%;\">\r\n<p>{{firmaniz}}: <strong>{{postfirmaadi}}</strong></p>\r\n</td>\r\n</tr>\r\n<tr style=\"height: 34px;\">\r\n<td style=\"height: 34px; width: 100%;\">\r\n<p>{{konu}}: <strong>{{postsubject}}</strong></p>\r\n</td>\r\n</tr>\r\n<tr style=\"height: 34px;\">\r\n<td style=\"height: 34px; width: 100%;\">\r\n<p>{{mesajınız}}: <strong>{{postmessage}}</strong></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<div class=\"footer\">\r\n<table style=\"width: 98.4991%;\" role=\"presentation\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 100%; text-align: center;\"><a href=\"#\"><img src=\"https://bikare.work/works/2020/01-alsero/php/tur/bwp-content/uploads/mail/facebook.png\" alt=\"\"></a> <a href=\"#\"><img src=\"https://bikare.work/works/2020/01-alsero/php/tur/bwp-content/uploads/mail/instagram.png\" alt=\"\"></a> <a href=\"#\"><img src=\"https://bikare.work/works/2020/01-alsero/php/tur/bwp-content/uploads/mail/youtube.png\" alt=\"\"></a> <a href=\"#\"><img src=\"https://bikare.work/works/2020/01-alsero/php/tur/bwp-content/uploads/mail/twitter.png\" alt=\"\"></a></td>\r\n</tr>\r\n<tr>\r\n<td class=\"content-block powered-by\" style=\"width: 100%; text-align: center;\">{{noreply}}</td>\r\n</tr>\r\n<tr>\r\n<td class=\"content-block powered-by\" style=\"width: 100%; text-align: center;\"><a href=\"{{url}}\">{{compName}}</a></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n</td>\r\n<td style=\"width: 1.59236%;\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>', '{\"1\":\"TR ALICI\",\"2\":\"EN ALICI\"}', '{\"1\":\"TR ALICI MESAJ\",\"2\":\"EN ALICI MESAJ\"}', '{\"1\":\"<table class=\\\"body\\\" style=\\\"width: 42.7432%; margin-left: auto; margin-right: auto;\\\" role=\\\"presentation\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"text-align: center; width: 0.186916%;\\\">&nbsp;<\\/td>\\r\\n<td class=\\\"container\\\" style=\\\"width: 99.6262%;\\\">\\r\\n<div class=\\\"content\\\">\\r\\n<table class=\\\"main\\\" role=\\\"presentation\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td class=\\\"logo\\\" style=\\\"text-align: center;\\\"><a href=\\\"{{url}}\\\"><img src=\\\"https:\\/\\/freepikpsd.com\\/file\\/2019\\/10\\/example-logo-png-2-Transparent-Images-300x121.png\\\" width=\\\"211\\\" height=\\\"85\\\"><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"wrapper\\\">\\r\\n<table style=\\\"width: 100.158%;\\\" role=\\\"presentation\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"width: 100%;\\\">\\r\\n<p>{{hi}},<strong> {{name}}<\\/strong><\\/p>\\r\\n<p style=\\\"text-align: center;\\\">{{sablonmesaji}}<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"wrapper\\\">\\r\\n<table style=\\\"height: 257px;\\\" role=\\\"presentation\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\\r\\n<tbody>\\r\\n<tr style=\\\"height: 34px;\\\">\\r\\n<td style=\\\"height: 34px; width: 503.219px;\\\">\\r\\n<p style=\\\"text-align: center;\\\">{{iletisimbilgileriniz}}<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr style=\\\"height: 34px;\\\">\\r\\n<td style=\\\"height: 34px; width: 503.219px;\\\">\\r\\n<p>{{isimsoyisim}}: <strong>{{name}}<\\/strong><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr style=\\\"height: 34px;\\\">\\r\\n<td style=\\\"height: 34px; width: 503.219px;\\\">\\r\\n<p>{{ouremail}}: <strong>{{postemail}}<\\/strong><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"width: 503.219px;\\\">\\r\\n<p>{{ourphone}}: <strong>{{postphone}}<\\/strong><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"width: 503.219px;\\\">\\r\\n<p>{{firmaniz}}: <strong>{{postfirmaadi}}<\\/strong><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr style=\\\"height: 34px;\\\">\\r\\n<td style=\\\"height: 34px; width: 503.219px;\\\">\\r\\n<p>{{konu}}: <strong>{{postsubject}}<\\/strong><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr style=\\\"height: 34px;\\\">\\r\\n<td style=\\\"height: 34px; width: 503.219px;\\\">\\r\\n<p>{{mesajınız}}: <strong>{{postmessage}}<\\/strong><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<div class=\\\"footer\\\">\\r\\n<table style=\\\"width: 98.4991%;\\\" role=\\\"presentation\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"width: 100%; text-align: center;\\\"><a href=\\\"#\\\"><img src=\\\"https:\\/\\/bikare.work\\/works\\/2020\\/01-alsero\\/php\\/tur\\/bwp-content\\/uploads\\/mail\\/facebook.png\\\" alt=\\\"\\\"><\\/a> <a href=\\\"#\\\"><img src=\\\"https:\\/\\/bikare.work\\/works\\/2020\\/01-alsero\\/php\\/tur\\/bwp-content\\/uploads\\/mail\\/instagram.png\\\" alt=\\\"\\\"><\\/a> <a href=\\\"#\\\"><img src=\\\"https:\\/\\/bikare.work\\/works\\/2020\\/01-alsero\\/php\\/tur\\/bwp-content\\/uploads\\/mail\\/youtube.png\\\" alt=\\\"\\\"><\\/a> <a href=\\\"#\\\"><img src=\\\"https:\\/\\/bikare.work\\/works\\/2020\\/01-alsero\\/php\\/tur\\/bwp-content\\/uploads\\/mail\\/twitter.png\\\" alt=\\\"\\\"><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"content-block powered-by\\\" style=\\\"width: 100%; text-align: center;\\\">{{noreply}}<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\\"content-block powered-by\\\" style=\\\"width: 100%; text-align: center;\\\"><a href=\\\"{{url}}\\\">{{compName}}<\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/td>\\r\\n<td style=\\\"width: 0.186916%;\\\">&nbsp;<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\",\"2\":\"\"}');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `nictr_menu`
--

CREATE TABLE `nictr_menu` (
  `id` int(11) NOT NULL,
  `menu_langID` int(11) NOT NULL,
  `menu_title` text COLLATE utf8_turkish_ci NOT NULL,
  `menu_position` int(11) NOT NULL,
  `menu_author` int(11) NOT NULL,
  `menu_json` longtext COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `nictr_menu`
--

INSERT INTO `nictr_menu` (`id`, `menu_langID`, `menu_title`, `menu_position`, `menu_author`, `menu_json`) VALUES
(11, 1, 'TR_HEADER_CUPSOFT', 1, 1, '[{\"text\":\"Üretim\",\"href\":\"javascript:;\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"url\",\"children\":[{\"text\":\"Üretim Verisi\",\"href\":\"uretimverisi\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"url\"},{\"text\":\"Reçeteler\",\"href\":\"receteler\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"url\"},{\"text\":\"Yedek\",\"href\":\"yedek\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"url\"}]},{\"text\":\"Stok Yönetimi\",\"href\":\"javascript:;\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"url\",\"children\":[{\"text\":\"Satın Almalar\",\"href\":\"satinalmalar\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"url\"},{\"text\":\"Fire Girişi\",\"href\":\"firegirisi\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"url\"}]},{\"text\":\"Raporlar\",\"href\":\"javascript:;\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"url\",\"children\":[{\"text\":\"Stok İşletme Değeri\",\"href\":\"stokisletmedegeri\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"url\"},{\"text\":\"Koli Maliyet Hesabı\",\"href\":\"kolimaliyethesabi\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"url\"},{\"text\":\"Sabit Giderler\",\"href\":\"sabitgiderler\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"url\"}]},{\"text\":\"Ayarlar\",\"href\":\"javascript:;\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"url\",\"children\":[{\"text\":\"Üretim Girdisi Tanımlama\",\"href\":\"uretimgirdisitanimlama\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"url\"},{\"text\":\"Parametreler\",\"href\":\"parametreler\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"url\"}]}]');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `nictr_postcat`
--

CREATE TABLE `nictr_postcat` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `nictr_postcat`
--

INSERT INTO `nictr_postcat` (`id`, `title`) VALUES
(11, '{\"blogcat_baslik_\":{\"1\":\" General\",\"7\":\" Genel\"}}'),
(12, '{\"blogcat_baslik_\":{\"1\":\"News\",\"7\":\"Haberler\"}}'),
(17, '{\"blogcat_baslik_\":{\"1\":\"Food\",\"7\":\"Yemek\"}}');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `nictr_posts`
--

CREATE TABLE `nictr_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_cover` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8_turkish_ci NOT NULL,
  `post_title` text COLLATE utf8_turkish_ci NOT NULL,
  `post_status` int(11) NOT NULL DEFAULT 1,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_slug` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_summary` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `post_keywords` text COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `nictr_posts`
--

INSERT INTO `nictr_posts` (`ID`, `post_cover`, `post_author`, `post_date`, `post_content`, `post_title`, `post_status`, `post_modified`, `post_slug`, `post_summary`, `post_keywords`) VALUES
(5, '{\"1\":\"public\\/img\\/2022\\/blog\\/624fdbc5557b8whatsapp_image_2022-04-08_at_09.52.37.jpeg\",\"7\":\"public\\/img\\/2022\\/blog\\/624f5e0014494product_ikonlar\\u0131.v-10.png\"}', 1, '2022-04-01 09:52:57', '{\"1\":\"\\u003Cp\\u003ESpices have unique benefits for human health thanks to the active ingredients they contain. In this article, we desire you to encounter the unknown aspects of spices that you know very well. \\u003Cbr \\/\\u003E\\u003Cbr \\/\\u003E\\u003C\\/p\\u003E\\r\\n\\u003Cdiv class=\\\"col-md-12\\\"\\u003E\\u003Cimg class=\\\"img-thumbnail responsive\\\" src=\\\"..\\/..\\/..\\/public\\/img\\/2022\\/blog\\/624fd9a02defd_positive_reflections_of_spices_on_human_healt.jpg\\\" \\/\\u003E\\u003C\\/div\\u003E\\r\\n\\u003Cp\\u003E\\u003Cbr \\/\\u003EWhen some spices meet with other spices, their boosting effects increase. Some of them have specific dominant flavors; some have both the distinctive pleasantness and aromas that make all other flavors shine. Spices are one of the unique tastes offered by nature as much as the cultural element that creates the common taste among people is spices. The best spice always finds its way into the dish where it belongs. So, now let&rsquo;s review the most used and traditional spices in Turkish cuisine: \\u003Cbr \\/\\u003E\\u003Cbr \\/\\u003E\\u003C\\/p\\u003E\\r\\n\\u003Cdiv class=\\\"row d-flex\\\"\\u003E\\r\\n\\u003Cdiv class=\\\"col-md-3\\\"\\u003E\\u003Cimg class=\\\"img-thumbnail responsive\\\" src=\\\"..\\/..\\/..\\/public\\/img\\/2022\\/blog\\/624fd9a206d3b_orta_positive_reflections_of_spices_on_human_health-min_(1)_(1).jpg\\\" \\/\\u003E\\u003C\\/div\\u003E\\r\\n\\u003Cdiv class=\\\"col-md-9\\\"\\u003EGinger: Effective in relieving joint pain, eliminating inflammation in the body, and preventing nausea&hellip; Ginger fights to strengthen our immunity for all four seasons like a health soldier. Clove: Clove, which is recommended to be consumed against ailments, such as sore throat, cough, cold, and sinusitis, helps to destroy harmful bacteria in the mouth, and to reduce the feeling of pain. Clove is the strongest protector of the skin, thanks to its oil being a barrier for the skin.\\u003C\\/div\\u003E\\r\\n\\u003Cbr \\/\\u003E\\u003Cbr \\/\\u003ECumin: Avoiding salt, and choosing cumin with low sodium level prevents high blood pressure. Thanks to the B vitamins, it provides an ideal sleep pattern. Turmeric: Turmeric, which must take its place in our diet for the healthy functioning of the immune system, and digestive system; it helps to alleviate headaches, overcome colds, and provide rapid recovery after surgery. It is a natural pain reliever in relieving all pains in the body, as well as in the treatment of dermatological disorders. \\u003Cbr \\/\\u003E\\u003Cbr \\/\\u003ECinnamon: Thanks to its antibacterial and antimicrobial properties, cinnamon purifies the skin from bacteria; it disinfects naturally. With the manganese it contains, it accelerates the absorption of calcium in the body; heals damaged connective tissue; it reduces bone pain. In addition to being one-to-one against the common cold, cinnamon, which keeps blood sugar in balance with the support gives to the body, plays a leading role in combating the fatigue, headaches, and hunger felt by diabetes patients. \\u003Cbr \\/\\u003E\\u003Cbr \\/\\u003EGarlic: Garlic, our strongest assistant in the fight against colds, and high blood pressure, is also a very strong food in terms of antioxidants. Cardamom: Rich in vitamins A and C, cardamom not only cures gum problems, but also regulates blood circulation, and brings the acid level in the digestive organs to an ideal level. \\u003Cbr \\/\\u003E\\u003Cbr \\/\\u003ECurry: Cleansing the liver, curry is a remedy for indigestion problems, as well as helping the body get rid of harmful toxins. Including it in the diet during the treatment of rheumatic diseases supports faster recovery. Saffron: It has been determined that saffron, which contains high levels of antioxidants, plays an active role in reducing the body mass index of people with cardiovascular disease and thinning the waist circumference. In addition, saffron extract increases the dopamine level by keeping the serotonin level constant; it has been found to reduce inflammation, and damage in brain cells.\\u003C\\/div\\u003E\",\"7\":\"\"}', '{\"1\":\"Positive Reflections of Spices on Human Health\",\"7\":\"\"}', 1, '2022-04-08 14:28:31', '{\"1\":\"positive-reflections-of-spices-on-human-health\",\"7\":\"\"}', '{\"1\":\"Spices have unique benefits for human health thanks to the active ingredients they contain. In this article, we desire you to encounter the unknown aspects of spices that you know very well.\",\"7\":\"\"}', '{\"1\":\"[{\\\"value\\\":\\\"jain farm fresh\\\"},{\\\"value\\\":\\\"spices\\\"}]\",\"7\":\"\"}'),
(9, '{\"1\":\"public\\/img\\/2022\\/blog\\/624fd52496ef4rectangle_bf.png\"}', 1, '2022-03-25 09:35:41', '{\"1\":\"\\u003Cp\\u003ESpices turn your dream meal into a masterpiece. So much so that the trace (impression) left by a spice touch is never forgotten. The masterpiece of care, enthusiasm you show for a meal or dessert is spice which is the detail where creativity is hidden. Contrary to those who say spice is the final touch, it is actually always the starting point. A properly used spice opens a different door in our memory for tastes. It adds character and excitement to our dishes with its beautiful scents and flavors while increasing curiosity, interest and passion for food. The journeys to the unknown stories of the dishes also begin with spices. \\u003Cbr \\/\\u003E\\u003Cbr \\/\\u003E\\u003C\\/p\\u003E\\r\\n\\u003Cdiv class=\\\"col-md-12\\\"\\u003E\\u003Cimg class=\\\"img-thumbnail responsive\\\" src=\\\"https:\\/\\/gonetdemo.com\\/jff2022\\/assets\\/img\\/Rectangle_bf.png\\\" \\/\\u003E\\u003C\\/div\\u003E\\r\\n\\u003Cp\\u003E\\u003Cbr \\/\\u003EWhen some spices meet with other spices, their boosting effects increase. Some of them have specific dominant flavors; some have both the distinctive pleasantness and aromas that make all other flavors shine. Spices are one of the unique tastes offered by nature as much as the cultural element that creates the common taste among people is spices. The best spice always finds its way into the dish where it belongs. So, now let&rsquo;s review the most used and traditional spices in Turkish cuisine: \\u003Cbr \\/\\u003E\\u003Cbr \\/\\u003E\\u003C\\/p\\u003E\\r\\n\\u003Cdiv class=\\\"row d-flex\\\"\\u003E\\r\\n\\u003Cdiv class=\\\"col-md-3\\\"\\u003E\\u003Cimg class=\\\"img-thumbnail responsive\\\" src=\\\"https:\\/\\/gonetdemo.com\\/jff2022\\/assets\\/img\\/Rectangle_bi.png\\\" \\/\\u003E\\u003C\\/div\\u003E\\r\\n\\u003Cdiv class=\\\"col-md-9\\\"\\u003E1. Chili pepper The chili pepper, which is obtained from red pepper, whose seeds are removed and chopped after drying, leaves its mark on the dishes with its sharp touch. It is the crown jewel of bitter lovers in stuffed green peppers, meat dishes, kebabs, and legumes such as dried beans and chickpeas. In addition to bitter varieties, it is possible to come across varieties with sweet and oily flavors.\\u003C\\/div\\u003E\\r\\n\\u003Cbr \\/\\u003E\\u003Cbr \\/\\u003E2. Black pepper As black pepper is the hero of all dishes of Turkish cuisine, it is used so intensely even only in rice that the first spice that comes to mind when it comes to &ldquo;traditional and indispensable flavor&rdquo; is black pepper. As a companion of salt, it is the most precious spice on our tables.\\u003Cbr \\/\\u003E\\u003Cbr \\/\\u003E3. Mint Mint, which can be used in a wide range of flavors from olive oil dishes to soups, from sour dishes to tzatziki and lemonade, is one of the most intensely flavored spices. It gives coolness to salads in fresh form; mint tea is the most beautiful source of health and can be consumed in all seasons of the year.\\u003Cbr \\/\\u003E\\u003Cbr \\/\\u003E4. Cumin Cumin, which can be brewed as tea as well as used in meals cooked in the oven with granular form. Bringing the pleasure of eating to its peak with the hot and soft tastes, it adds to tomato-based, hot, sour and peppery dishes in powder form. Cumin cannot be considered separately from cheese types, meat dishes, soups and lentil dishes.\\u003Cbr \\/\\u003E\\u003Cbr \\/\\u003E5. Thyme Thyme, the inseparable spice of olive oil, is the best gift given by the Mediterranean basin. With its different types and impressive tastes, it leaves its unique flavor to pastas, cheeses, grills, meat and vegetable recipes.\\u003C\\/div\\u003E\"}', '{\"1\":\"The Magic of Spices\"}', 1, '2022-05-31 17:22:12', '{\"1\":\"the-magic-of-spices\"}', '{\"1\":\"Spices turn your dream meal into a masterpiece. So much so that the trace (impression) left by a spice touch is never forgotten.\"}', '{\"1\":\"[{\\\"value\\\":\\\"jain farm fresh\\\"},{\\\"value\\\":\\\"spices\\\"}]\"}'),
(10, '{\"1\":\"public\\/img\\/2022\\/blog\\/624fe3ae62fe7whatsapp_image_2022-04-08_at_10.13.06.jpeg\",\"7\":\"\"}', 1, '2022-04-08 10:27:16', '{\"1\":\"\\u003Cp\\u003E\\u003Cspan style=\\\"font-weight: 400; font-family: tahoma, arial, helvetica, sans-serif;\\\"\\u003EHealthy, balanced, adequate&hellip; In other words, sustainable nutrition is the most basic need for people; it is the most necessary understanding of life in today\'s world.\\u003C\\/span\\u003E\\u003C\\/p\\u003E\\r\\n\\u003Cp\\u003E\\u003Cspan style=\\\"font-weight: 400; font-family: tahoma, arial, helvetica, sans-serif;\\\"\\u003EIf we need to summarize the main principles of this nutrition approach;\\u003C\\/span\\u003E\\u003C\\/p\\u003E\\r\\n\\u003Cp\\u003E\\u003Cbr \\/\\u003E\\u003Cbr \\/\\u003E\\u003C\\/p\\u003E\\r\\n\\u003Cdiv class=\\\"col-md-12\\\"\\u003E\\u003Cspan style=\\\"font-family: tahoma, arial, helvetica, sans-serif;\\\"\\u003E\\u003Cimg class=\\\"img-thumbnail responsive\\\" src=\\\"..\\/..\\/public\\/img\\/2022\\/blog\\/624fe32436f15_whatsapp_image_2022-04-08_at_10.13.06.jpeg\\\" width=\\\"1600\\\" height=\\\"1066\\\" \\/\\u003E\\u003C\\/span\\u003E\\u003C\\/div\\u003E\\r\\n\\u003Cp\\u003E&nbsp;\\u003C\\/p\\u003E\\r\\n\\u003Cp\\u003E\\u003Cspan style=\\\"font-weight: 400; font-family: tahoma, arial, helvetica, sans-serif;\\\"\\u003E*The starting point of the concept of sustainable healthy nutrition is breast milk.\\u003C\\/span\\u003E\\u003C\\/p\\u003E\\r\\n\\u003Cp\\u003E\\u003Cspan style=\\\"font-weight: 400; font-family: tahoma, arial, helvetica, sans-serif;\\\"\\u003E*Healthy and reliable; it should have high nutritional value, and minimal damage to the environment.&nbsp;\\u003C\\/span\\u003E\\u003C\\/p\\u003E\\r\\n\\u003Cp\\u003E\\u003Cspan style=\\\"font-weight: 400; font-family: tahoma, arial, helvetica, sans-serif;\\\"\\u003E*Sustainable nutrition; it refers to a life style that is economical, accessible, fair, acceptable, puts food safety first, and is necessary for the healthy growth of generations.\\u003C\\/span\\u003E\\u003C\\/p\\u003E\\r\\n\\u003Cp\\u003E\\u003Cspan style=\\\"font-weight: 400; font-family: tahoma, arial, helvetica, sans-serif;\\\"\\u003E*Consists of a wide variety of unprocessed or minimally processed foods.\\u003C\\/span\\u003E\\u003C\\/p\\u003E\\r\\n\\u003Cp\\u003E\\u003Cbr \\/\\u003E\\u003Cbr \\/\\u003E\\u003C\\/p\\u003E\\r\\n\\u003Cdiv class=\\\"row d-flex\\\"\\u003E\\r\\n\\u003Cdiv class=\\\"col-md-3\\\"\\u003E\\u003Cspan style=\\\"font-family: tahoma, arial, helvetica, sans-serif;\\\"\\u003E\\u003Cimg class=\\\"img-thumbnail responsive\\\" src=\\\"..\\/..\\/public\\/img\\/2022\\/blog\\/624fe3249cf06_whatsapp_image_2022-04-08_at_10.13.12.jpeg\\\" width=\\\"1066\\\" height=\\\"1600\\\" \\/\\u003E\\u003C\\/span\\u003E\\u003C\\/div\\u003E\\r\\n\\u003Cdiv class=\\\"col-md-9\\\"\\u003E\\r\\n\\u003Cp\\u003E\\u003Cspan style=\\\"font-weight: 400; font-family: tahoma, arial, helvetica, sans-serif;\\\"\\u003E*Contains oily seeds, legumes, vegetables, fruits, whole wheat flour. Accepts moderate red meat, poultry, eggs, milk, and dairy products.\\u003C\\/span\\u003E\\u003C\\/p\\u003E\\r\\n\\u003Cp\\u003E\\u003Cspan style=\\\"font-weight: 400; font-family: tahoma, arial, helvetica, sans-serif;\\\"\\u003E*The most important is the right to access safe, clean drinking water.\\u003C\\/span\\u003E\\u003C\\/p\\u003E\\r\\n\\u003Cp\\u003E\\u003Cspan style=\\\"font-weight: 400; font-family: tahoma, arial, helvetica, sans-serif;\\\"\\u003E*In the event that every person living on the earth attains this desired diet, not only the risk of infectious diseases will not decrease in proportion to proper nutrition; at the same time, a general state of well-being, and health emerges.\\u003C\\/span\\u003E\\u003C\\/p\\u003E\\r\\n\\u003Cp\\u003E\\u003Cspan style=\\\"font-weight: 400; font-family: tahoma, arial, helvetica, sans-serif;\\\"\\u003E*Sustainable nutrition includes adequate, and correct amount of nutrients for a person\'s growth and development stages, and ensures a healthy continuation of life.\\u003C\\/span\\u003E\\u003C\\/p\\u003E\\r\\n\\u003C\\/div\\u003E\\r\\n\\u003Cbr \\/\\u003E\\u003Cbr \\/\\u003E\\r\\n\\u003Cp\\u003E\\u003Cspan style=\\\"font-weight: 400; font-family: tahoma, arial, helvetica, sans-serif;\\\"\\u003E*Sustainable healthy eating regimens that are the result of a system free from pathogens, and toxic substances; helps to eliminate carbon footprint, water waste, nitrogen-phosphorus applications, and chemical pollution.\\u003C\\/span\\u003E\\u003C\\/p\\u003E\\r\\n\\u003Cp\\u003E\\u003Cspan style=\\\"font-weight: 400; font-family: tahoma, arial, helvetica, sans-serif;\\\"\\u003E*Serves the existence of bio-diversity.\\u003C\\/span\\u003E\\u003C\\/p\\u003E\\r\\n\\u003Cp\\u003E\\u003Cspan style=\\\"font-weight: 400; font-family: tahoma, arial, helvetica, sans-serif;\\\"\\u003E*It adopts a policy that aims to minimize the use of hormones, and antibiotics in food production, the use of plastics, and derivatives in food packaging, and the loss, and waste in food consumption.\\u003C\\/span\\u003E\\u003C\\/p\\u003E\\r\\n\\u003Cp\\u003E\\u003Cspan style=\\\"font-weight: 400; font-family: tahoma, arial, helvetica, sans-serif;\\\"\\u003E*Sustainable healthy eating is a respect built on the values \\u200b\\u200bof local cuisine, consumption habits, and knowledge in the process of obtaining, producing, and consuming food.\\u003C\\/span\\u003E\\u003C\\/p\\u003E\\r\\n\\u003C\\/div\\u003E\",\"7\":\"\"}', '{\"1\":\"What is Sustainable Nutrition?\",\"7\":\"\"}', 1, '2022-04-12 12:26:16', '{\"1\":\"what-is-sustainable-nutrition\",\"7\":\"\"}', '{\"1\":\"Healthy, balanced, adequate\\u2026 In other words, sustainable nutrition is the most basic need for people; it is the most necessary understanding of life in today\'s world.\",\"7\":\"\"}', '{\"1\":\"[{\\\"value\\\":\\\"health\\\"},{\\\"value\\\":\\\"food\\\"},{\\\"value\\\":\\\"jff\\\"},{\\\"value\\\":\\\"fresh\\\"}]\",\"7\":\"\"}');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `nictr_post_meta`
--

CREATE TABLE `nictr_post_meta` (
  `id` int(11) NOT NULL,
  `postID` int(11) NOT NULL,
  `type` text COLLATE utf8_turkish_ci NOT NULL,
  `type_meta` text COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `nictr_post_meta`
--

INSERT INTO `nictr_post_meta` (`id`, `postID`, `type`, `type_meta`) VALUES
(214, 33, 'image', '3246738_810x458.webp'),
(272, 3, 'cat', '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `nictr_settings`
--

CREATE TABLE `nictr_settings` (
  `id` int(11) NOT NULL,
  `langID` int(11) NOT NULL,
  `title` text COLLATE utf8_turkish_ci NOT NULL,
  `content` text COLLATE utf8_turkish_ci NOT NULL,
  `keywords` text COLLATE utf8_turkish_ci NOT NULL,
  `address` text COLLATE utf8_turkish_ci NOT NULL,
  `lat` text COLLATE utf8_turkish_ci NOT NULL,
  `lng` text COLLATE utf8_turkish_ci NOT NULL,
  `tel` varchar(55) COLLATE utf8_turkish_ci NOT NULL,
  `gsm` text COLLATE utf8_turkish_ci NOT NULL,
  `fax` varchar(55) COLLATE utf8_turkish_ci NOT NULL,
  `email` text COLLATE utf8_turkish_ci NOT NULL,
  `map` text COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `nictr_settings`
--

INSERT INTO `nictr_settings` (`id`, `langID`, `title`, `content`, `keywords`, `address`, `lat`, `lng`, `tel`, `gsm`, `fax`, `email`, `map`) VALUES
(1, 1, 'Site Başlık', 'Site Açıklama.....', '[{\"value\":\"tag1\"},{\"value\":\"tag2\"},{\"value\":\"tag3\"},{\"value\":\"tag4\"},{\"value\":\"tag5\"}]', 'adres', '39.89654466273957', '32.817277169318494', '+90 000 00 00', '+90 000 00 00', '', 'test@test.com', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `nictr_slider`
--

CREATE TABLE `nictr_slider` (
  `id` int(11) NOT NULL,
  `dp` int(11) NOT NULL DEFAULT 0,
  `langID` int(11) NOT NULL,
  `title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `nictr_slider_img`
--

CREATE TABLE `nictr_slider_img` (
  `id` int(11) NOT NULL,
  `slideID` int(11) NOT NULL,
  `order` varchar(3) NOT NULL,
  `target` text NOT NULL,
  `type` text NOT NULL,
  `title` text NOT NULL,
  `detail` text NOT NULL,
  `fileName` text NOT NULL,
  `url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `nictr_social`
--

CREATE TABLE `nictr_social` (
  `id` int(11) NOT NULL,
  `icon` text NOT NULL,
  `bg-color` text NOT NULL,
  `baslik` text NOT NULL,
  `url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `nictr_social`
--

INSERT INTO `nictr_social` (`id`, `icon`, `bg-color`, `baslik`, `url`) VALUES
(6, 'fa fa-facebook', '#2b4f8f', 'Facebook', 'javascript:;'),
(7, 'fa fa-twitter', '#1aa1f2', 'Twitter', 'javascript:;'),
(8, 'fab fa-youtube fa-fw', '#ff0000', 'Youtube', 'javascript:;');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `nictr_terms`
--

CREATE TABLE `nictr_terms` (
  `id` int(11) NOT NULL,
  `langID` int(11) NOT NULL,
  `termID` int(11) NOT NULL,
  `type` text COLLATE utf8_turkish_ci NOT NULL,
  `type_meta` text COLLATE utf8_turkish_ci NOT NULL,
  `slug` text COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `nictr_users`
--

CREATE TABLE `nictr_users` (
  `id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `name` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `surname` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `email` text COLLATE utf8_turkish_ci NOT NULL,
  `phone` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `address` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `company` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `department` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `password` text COLLATE utf8_turkish_ci NOT NULL,
  `image` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `login` int(11) DEFAULT 0,
  `loginID` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `nictr_users`
--

INSERT INTO `nictr_users` (`id`, `status`, `name`, `surname`, `email`, `phone`, `address`, `company`, `department`, `password`, `image`, `login`, `loginID`) VALUES
(1, 3, 'Uğur', 'Işık', 'ugur.isik@internettescil.com.tr', '', '', 'İnternet Tescil', 'PHP Developer', '$2y$10$roQZBo4F9eEbI7MsLuNE7enEEny7iqZUTpRb3Gmm/mbsHNPiaSBK.', NULL, 1, '21c80d482936b24002aa00b2f490ea5c');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `nictr_users_meta`
--

CREATE TABLE `nictr_users_meta` (
  `id` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `type_meta` varchar(255) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `nictr_users_meta`
--

INSERT INTO `nictr_users_meta` (`id`, `userID`, `type`, `type_meta`) VALUES
(301, 1, 'yetki', '2'),
(302, 1, 'yetki', 'usersview'),
(303, 1, 'yetki', 'useradd'),
(304, 1, 'yetki', 'userdelete'),
(305, 1, 'yetki', 'userupdate'),
(306, 1, 'yetki', 'contactview'),
(307, 1, 'yetki', 'sitesettingsview'),
(308, 1, 'yetki', 'sitesettingsupdate'),
(309, 1, 'yetki', 'langvariablesview'),
(310, 1, 'yetki', 'menusettingsview'),
(311, 1, 'yetki', 'addmenu'),
(312, 1, 'yetki', 'updatemenu'),
(313, 1, 'yetki', 'socialmediaview'),
(314, 1, 'yetki', 'mailschemaview'),
(315, 1, 'yetki', 'mailsettingsview');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `nictr_langs`
--
ALTER TABLE `nictr_langs`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `nictr_langs_meta`
--
ALTER TABLE `nictr_langs_meta`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `nictr_log`
--
ALTER TABLE `nictr_log`
  ADD PRIMARY KEY (`ID`);

--
-- Tablo için indeksler `nictr_login_ban`
--
ALTER TABLE `nictr_login_ban`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `nictr_login_error`
--
ALTER TABLE `nictr_login_error`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `nictr_login_info`
--
ALTER TABLE `nictr_login_info`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `nictr_mailsetting`
--
ALTER TABLE `nictr_mailsetting`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `nictr_mailtemplate`
--
ALTER TABLE `nictr_mailtemplate`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `nictr_mail_schema`
--
ALTER TABLE `nictr_mail_schema`
  ADD PRIMARY KEY (`ID`);

--
-- Tablo için indeksler `nictr_menu`
--
ALTER TABLE `nictr_menu`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `nictr_postcat`
--
ALTER TABLE `nictr_postcat`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `nictr_posts`
--
ALTER TABLE `nictr_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_author` (`post_author`);

--
-- Tablo için indeksler `nictr_post_meta`
--
ALTER TABLE `nictr_post_meta`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `nictr_settings`
--
ALTER TABLE `nictr_settings`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `nictr_slider`
--
ALTER TABLE `nictr_slider`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `nictr_slider_img`
--
ALTER TABLE `nictr_slider_img`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `nictr_social`
--
ALTER TABLE `nictr_social`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `nictr_terms`
--
ALTER TABLE `nictr_terms`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `nictr_users`
--
ALTER TABLE `nictr_users`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `nictr_users_meta`
--
ALTER TABLE `nictr_users_meta`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `nictr_langs`
--
ALTER TABLE `nictr_langs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `nictr_langs_meta`
--
ALTER TABLE `nictr_langs_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Tablo için AUTO_INCREMENT değeri `nictr_log`
--
ALTER TABLE `nictr_log`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- Tablo için AUTO_INCREMENT değeri `nictr_login_ban`
--
ALTER TABLE `nictr_login_ban`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `nictr_login_error`
--
ALTER TABLE `nictr_login_error`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Tablo için AUTO_INCREMENT değeri `nictr_login_info`
--
ALTER TABLE `nictr_login_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=971;

--
-- Tablo için AUTO_INCREMENT değeri `nictr_mailsetting`
--
ALTER TABLE `nictr_mailsetting`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `nictr_mailtemplate`
--
ALTER TABLE `nictr_mailtemplate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `nictr_mail_schema`
--
ALTER TABLE `nictr_mail_schema`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `nictr_menu`
--
ALTER TABLE `nictr_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Tablo için AUTO_INCREMENT değeri `nictr_postcat`
--
ALTER TABLE `nictr_postcat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Tablo için AUTO_INCREMENT değeri `nictr_posts`
--
ALTER TABLE `nictr_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `nictr_post_meta`
--
ALTER TABLE `nictr_post_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=273;

--
-- Tablo için AUTO_INCREMENT değeri `nictr_settings`
--
ALTER TABLE `nictr_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `nictr_slider`
--
ALTER TABLE `nictr_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `nictr_slider_img`
--
ALTER TABLE `nictr_slider_img`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `nictr_social`
--
ALTER TABLE `nictr_social`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Tablo için AUTO_INCREMENT değeri `nictr_terms`
--
ALTER TABLE `nictr_terms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `nictr_users`
--
ALTER TABLE `nictr_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Tablo için AUTO_INCREMENT değeri `nictr_users_meta`
--
ALTER TABLE `nictr_users_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=316;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
