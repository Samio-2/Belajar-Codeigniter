-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Jan 2022 pada 09.13
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci4`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `komik`
--

CREATE TABLE `komik` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `sampul` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `komik`
--

INSERT INTO `komik` (`id`, `judul`, `slug`, `penulis`, `penerbit`, `sampul`, `created_at`, `updated_at`) VALUES
(2, 'One Piece', 'one-piece', 'Eichiro Oda', 'Shounen Manga', 'onepiece.jpg', '2021-12-30 12:38:10', '2022-01-01 01:22:50'),
(13, 'Naruto', 'naruto', 'Masashi', 'Shonen Jump', 'naruto.jpg', '2021-12-31 04:58:55', '2021-12-31 05:06:03'),
(18, 'Doraemon', 'doraemon', 'Fujiko F. Fujio', 'Shonen Manga', '1640986718_2ad1413fc31d33ffa7d0.jpg', '2021-12-31 15:38:38', '2022-01-01 22:42:04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2022-01-01-073022', 'App\\Database\\Migrations\\Orang', 'default', 'App', 1641098943, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `orang`
--

CREATE TABLE `orang` (
  `id` int(11) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `orang`
--

INSERT INTO `orang` (`id`, `nama`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'Ellis Andriani M.Pd', 'Ds. Batako No. 357, Gorontalo 22421, BaBel', '2017-05-11 01:32:12', '2022-01-02 13:24:06'),
(2, 'Aisyah Oktaviani', 'Dk. Sudiarto No. 162, Malang 67700, MalUt', '1999-02-22 02:53:31', '2022-01-02 13:24:06'),
(3, 'Paiman Okta Pradipta S.H.', 'Psr. Banal No. 895, Mataram 92715, MalUt', '2014-09-19 13:54:43', '2022-01-02 13:24:06'),
(4, 'Raina Usada S.IP', 'Jln. HOS. Cjokroaminoto (Pasirkaliki) No. 316, Bukittinggi 90987, SumSel', '1999-07-03 22:01:44', '2022-01-02 13:24:06'),
(5, 'Cinta Namaga', 'Gg. Gotong Royong No. 765, Mataram 57118, DKI', '1979-04-30 04:13:29', '2022-01-02 13:24:06'),
(6, 'Eja Olga Kusumo M.TI.', 'Ds. Pahlawan No. 350, Samarinda 84516, Bali', '1970-04-29 18:03:51', '2022-01-02 13:24:06'),
(7, 'Lukita Galar Sitorus S.E.I', 'Gg. Achmad Yani No. 305, Sukabumi 33797, JaTeng', '1998-05-18 01:08:24', '2022-01-02 13:24:06'),
(8, 'Violet Amelia Hassanah S.IP', 'Ds. Baya Kali Bungur No. 275, Tanjungbalai 87928, SulTeng', '2005-09-01 20:39:10', '2022-01-02 13:24:06'),
(9, 'Lili Oktaviani S.E.', 'Psr. Gatot Subroto No. 65, Medan 91419, JaTim', '1991-05-31 05:21:31', '2022-01-02 13:24:06'),
(10, 'Puti Eli Usamah M.Pd', 'Kpg. Supomo No. 55, Bukittinggi 13030, JaTeng', '2020-09-30 09:11:53', '2022-01-02 13:24:06'),
(11, 'Bella Yulianti', 'Jln. Kali No. 319, Padangsidempuan 70879, SumBar', '1997-07-04 22:26:11', '2022-01-02 13:24:06'),
(12, 'Rahmi Devi Andriani S.E.', 'Kpg. Moch. Ramdan No. 404, Jayapura 17236, PapBar', '1973-08-26 00:12:34', '2022-01-02 13:24:06'),
(13, 'Zelda Wastuti', 'Ds. Siliwangi No. 727, Palu 97941, SulSel', '1985-01-19 00:40:58', '2022-01-02 13:24:06'),
(14, 'Sabrina Agustina S.I.Kom', 'Kpg. Supomo No. 81, Tanjungbalai 41075, SulSel', '2021-12-30 16:30:47', '2022-01-02 13:24:06'),
(15, 'Darman Putra', 'Psr. Bakti No. 577, Pasuruan 46590, PapBar', '1995-01-06 01:13:02', '2022-01-02 13:24:06'),
(16, 'Ira Dian Nasyidah', 'Ki. Gardujati No. 236, Pematangsiantar 23189, JaTeng', '2004-12-24 08:13:33', '2022-01-02 13:24:06'),
(17, 'Cinthia Rahimah S.T.', 'Jln. Haji No. 629, Batu 74271, BaBel', '2004-06-16 15:43:40', '2022-01-02 13:24:06'),
(18, 'Michelle Unjani Utami', 'Jln. Ahmad Dahlan No. 810, Jayapura 59907, Riau', '1989-05-08 15:58:44', '2022-01-02 13:24:06'),
(19, 'Restu Andriani', 'Psr. Banda No. 632, Administrasi Jakarta Utara 70302, Riau', '1996-04-25 20:34:54', '2022-01-02 13:24:06'),
(20, 'Langgeng Hutagalung', 'Kpg. Cikutra Barat No. 937, Cilegon 52854, SumSel', '1998-05-22 03:36:30', '2022-01-02 13:24:06'),
(21, 'Yani Puspasari', 'Dk. Raden No. 447, Kupang 36389, Lampung', '2017-06-28 23:51:43', '2022-01-02 13:24:06'),
(22, 'Martani Budiman', 'Dk. Gajah Mada No. 52, Sukabumi 64830, Gorontalo', '1983-11-07 17:26:56', '2022-01-02 13:24:06'),
(23, 'Tantri Malika Mulyani S.Gz', 'Ds. Monginsidi No. 88, Batam 41155, JaTeng', '1993-06-26 12:33:11', '2022-01-02 13:24:06'),
(24, 'Cawisono Tamba S.Kom', 'Jln. Panjaitan No. 180, Bontang 77680, Aceh', '1995-08-07 00:04:32', '2022-01-02 13:24:06'),
(25, 'Victoria Karimah Yuniar', 'Dk. Baik No. 286, Bandar Lampung 87389, KalTeng', '1986-06-27 19:44:53', '2022-01-02 13:24:06'),
(26, 'Kartika Unjani Laksmiwati S.E.', 'Kpg. Elang No. 984, Magelang 25108, Riau', '1976-05-09 00:54:41', '2022-01-02 13:24:06'),
(27, 'Laksana Ivan Sihotang S.Farm', 'Psr. Ronggowarsito No. 34, Sabang 62661, DKI', '1990-10-12 10:42:52', '2022-01-02 13:24:06'),
(28, 'Septi Ulva Permata S.Ked', 'Jln. Rajawali No. 907, Magelang 76864, SumUt', '2019-03-31 02:25:38', '2022-01-02 13:24:06'),
(29, 'Puspa Wijayanti', 'Kpg. Gedebage Selatan No. 319, Surakarta 69228, Riau', '2011-06-24 00:34:02', '2022-01-02 13:24:06'),
(30, 'Shania Farida', 'Kpg. Raya Ujungberung No. 510, Padang 26154, KalBar', '1975-05-17 07:01:08', '2022-01-02 13:24:06'),
(31, 'Mursita Pratama', 'Dk. Bata Putih No. 182, Banjarbaru 85435, NTT', '2018-03-09 09:24:48', '2022-01-02 13:24:06'),
(32, 'Kurnia Nyoman Pratama S.Psi', 'Jr. Sumpah Pemuda No. 266, Tarakan 88256, Bali', '1985-02-23 03:35:42', '2022-01-02 13:24:06'),
(33, 'Akarsana Waskita', 'Ds. Laswi No. 382, Sabang 71341, NTB', '2008-04-26 22:06:18', '2022-01-02 13:24:06'),
(34, 'Zaenab Astuti', 'Jr. Suniaraja No. 947, Batu 15044, NTT', '1984-10-24 11:14:55', '2022-01-02 13:24:06'),
(35, 'Azalea Uyainah', 'Ds. Astana Anyar No. 895, Pasuruan 57785, Riau', '2008-08-27 22:48:57', '2022-01-02 13:24:06'),
(36, 'Jamalia Nasyidah', 'Ds. Astana Anyar No. 342, Sukabumi 36372, JaBar', '2021-01-07 07:29:37', '2022-01-02 13:24:06'),
(37, 'Tugiman Dongoran', 'Kpg. Sukabumi No. 664, Administrasi Jakarta Selatan 11860, KalBar', '1985-10-30 12:03:54', '2022-01-02 13:24:06'),
(38, 'Ibun Kuswoyo', 'Dk. Sumpah Pemuda No. 588, Tarakan 37547, Banten', '1995-01-08 01:47:29', '2022-01-02 13:24:06'),
(39, 'Kajen Salahudin', 'Psr. Gegerkalong Hilir No. 621, Administrasi Jakarta Pusat 72215, JaTeng', '1991-10-30 23:01:42', '2022-01-02 13:24:06'),
(40, 'Diah Kusmawati', 'Psr. Kali No. 341, Palangka Raya 64320, SulTeng', '2002-07-16 20:25:32', '2022-01-02 13:24:06'),
(41, 'Hamzah Saefullah', 'Dk. Bak Air No. 145, Padangsidempuan 84224, SumSel', '2009-11-10 05:14:35', '2022-01-02 13:24:06'),
(42, 'Titi Widya Hassanah S.Ked', 'Dk. Baja Raya No. 763, Manado 93270, JaTeng', '2017-10-14 10:14:19', '2022-01-02 13:24:06'),
(43, 'Tari Halima Zulaika', 'Psr. Babadak No. 613, Padang 47509, JaTeng', '1992-07-24 23:10:07', '2022-01-02 13:24:06'),
(44, 'Amelia Vanya Hastuti', 'Ds. Kartini No. 127, Kediri 68940, Lampung', '2004-10-19 19:15:35', '2022-01-02 13:24:06'),
(45, 'Nabila Susanti', 'Ds. Laswi No. 926, Surakarta 90648, BaBel', '1999-05-25 13:39:25', '2022-01-02 13:24:06'),
(46, 'Cornelia Suryatmi', 'Ki. Nakula No. 208, Palu 51782, KepR', '2021-05-14 08:35:55', '2022-01-02 13:24:06'),
(47, 'Paiman Hasta Prasasta S.Ked', 'Ds. Gajah Mada No. 782, Bengkulu 22270, KalTim', '1987-11-09 21:19:00', '2022-01-02 13:24:06'),
(48, 'Edison Natsir', 'Ds. Ketandan No. 101, Batu 51061, Maluku', '2003-11-08 20:48:40', '2022-01-02 13:24:06'),
(49, 'Parman Prabowo S.Ked', 'Jln. Jakarta No. 422, Banjarbaru 41126, KalTeng', '1992-07-04 10:26:53', '2022-01-02 13:24:06'),
(50, 'Aslijan Mahendra S.IP', 'Dk. Abdul No. 767, Bima 22428, Banten', '1993-01-24 20:18:25', '2022-01-02 13:24:06'),
(51, 'Mala Susanti', 'Gg. Cihampelas No. 827, Mojokerto 10846, Papua', '2017-07-15 19:51:57', '2022-01-02 13:24:06'),
(52, 'Usman Pangestu S.Pt', 'Psr. Diponegoro No. 927, Surabaya 67309, DKI', '1971-07-04 21:33:04', '2022-01-02 13:24:06'),
(53, 'Ella Hariyah', 'Dk. Basoka No. 251, Tangerang 58619, MalUt', '1979-07-30 11:41:17', '2022-01-02 13:24:06'),
(54, 'Martaka Pratama', 'Ki. Camar No. 393, Dumai 90731, Papua', '2005-12-01 08:23:22', '2022-01-02 13:24:06'),
(55, 'Bambang Oskar Sirait', 'Kpg. Ronggowarsito No. 406, Tangerang Selatan 56422, JaTim', '1998-07-30 17:57:29', '2022-01-02 13:24:06'),
(56, 'Rini Queen Aryani', 'Psr. Salam No. 713, Tidore Kepulauan 76714, SulTeng', '1982-06-17 14:03:58', '2022-01-02 13:24:06'),
(57, 'Lantar Simon Hutasoit S.IP', 'Jr. Babadak No. 341, Tomohon 41265, NTB', '2008-01-02 22:12:42', '2022-01-02 13:24:06'),
(58, 'Sabrina Melani', 'Jln. Fajar No. 342, Binjai 18246, DIY', '2012-03-04 05:33:08', '2022-01-02 13:24:06'),
(59, 'Clara Maimunah Puspasari S.Ked', 'Ds. Sugiyopranoto No. 958, Pangkal Pinang 48516, Gorontalo', '2014-12-12 18:38:11', '2022-01-02 13:24:06'),
(60, 'Keisha Maida Andriani M.Farm', 'Jr. Bakau No. 780, Bogor 93400, Aceh', '1992-01-03 02:33:48', '2022-01-02 13:24:06'),
(61, 'Wadi Manullang', 'Dk. Jagakarsa No. 807, Makassar 85910, KalSel', '2006-06-25 22:25:50', '2022-01-02 13:24:06'),
(62, 'Darsirah Zulkarnain', 'Ds. Raden No. 672, Palu 21145, Jambi', '2015-11-25 00:24:20', '2022-01-02 13:24:06'),
(63, 'Saiful Sitompul', 'Ds. Ketandan No. 577, Banjar 36421, JaTeng', '2006-12-05 12:54:08', '2022-01-02 13:24:06'),
(64, 'Balidin Dongoran', 'Kpg. Bazuka Raya No. 879, Pagar Alam 54204, NTT', '1998-03-26 09:04:21', '2022-01-02 13:24:06'),
(65, 'Kemal Adriansyah S.H.', 'Jln. Basudewo No. 528, Bandar Lampung 10824, Aceh', '1974-09-18 08:05:15', '2022-01-02 13:24:06'),
(66, 'Tantri Oktaviani M.M.', 'Dk. Acordion No. 393, Tarakan 28372, Papua', '2011-04-22 05:34:44', '2022-01-02 13:24:06'),
(67, 'Dina Rahayu', 'Dk. Monginsidi No. 613, Probolinggo 68052, SulUt', '1988-04-12 08:55:57', '2022-01-02 13:24:06'),
(68, 'Jelita Oktaviani', 'Ki. Mahakam No. 326, Sibolga 99463, Papua', '1984-09-19 09:46:26', '2022-01-02 13:24:06'),
(69, 'Jumari Sihombing', 'Jln. Wahidin Sudirohusodo No. 551, Tegal 21809, NTB', '1985-09-03 09:53:57', '2022-01-02 13:24:06'),
(70, 'Puti Utami', 'Psr. Baabur Royan No. 413, Medan 76558, SumSel', '2019-06-19 23:08:06', '2022-01-02 13:24:06'),
(71, 'Warji Maulana M.Pd', 'Dk. Qrisdoren No. 519, Bogor 19196, DIY', '2009-09-23 11:02:25', '2022-01-02 13:24:06'),
(72, 'Zulaikha Anggraini', 'Psr. Radio No. 480, Balikpapan 43897, KalUt', '2016-04-13 03:44:09', '2022-01-02 13:24:06'),
(73, 'Cecep Jasmani Najmudin', 'Jln. Padang No. 952, Makassar 86974, Gorontalo', '1982-10-23 08:12:49', '2022-01-02 13:24:06'),
(74, 'Rahmi Yuniar', 'Kpg. Mahakam No. 464, Medan 52764, NTB', '1971-06-13 16:40:37', '2022-01-02 13:24:06'),
(75, 'Faizah Hassanah', 'Ki. Babadak No. 303, Administrasi Jakarta Selatan 81866, SumSel', '2006-12-19 13:20:04', '2022-01-02 13:24:06'),
(76, 'Jinawi Mandala', 'Ds. Bakti No. 297, Singkawang 44781, Lampung', '1971-03-24 05:24:23', '2022-01-02 13:24:06'),
(77, 'Zahra Pudjiastuti M.M.', 'Ki. Basudewo No. 327, Ternate 68291, PapBar', '2011-11-12 10:04:14', '2022-01-02 13:24:06'),
(78, 'Rahmi Nasyidah', 'Jr. Honggowongso No. 876, Gorontalo 26176, KepR', '1999-02-27 13:54:49', '2022-01-02 13:24:06'),
(79, 'Pangestu Putra', 'Psr. Baya Kali Bungur No. 166, Tomohon 51662, DKI', '2014-08-31 15:37:15', '2022-01-02 13:24:06'),
(80, 'Zamira Anggraini', 'Dk. Setia Budi No. 482, Pematangsiantar 71743, BaBel', '2004-04-21 22:32:02', '2022-01-02 13:24:06'),
(81, 'Jasmin Suartini', 'Psr. Cikapayang No. 735, Banjar 70403, JaBar', '1981-07-24 02:56:47', '2022-01-02 13:24:06'),
(82, 'Budi Wasita', 'Kpg. Basuki No. 150, Tangerang 96022, JaTim', '1998-02-08 12:57:16', '2022-01-02 13:24:06'),
(83, 'Ira Gina Hartati S.Pt', 'Ds. Ujung No. 529, Cilegon 46673, KalTim', '2021-08-16 13:12:07', '2022-01-02 13:24:06'),
(84, 'Empluk Lanang Pangestu M.Pd', 'Kpg. Pahlawan No. 64, Tegal 37901, Lampung', '2000-03-31 16:16:40', '2022-01-02 13:24:06'),
(85, 'Tami Namaga', 'Ds. Raden Saleh No. 585, Cirebon 91622, SulBar', '1971-06-11 07:52:25', '2022-01-02 13:24:06'),
(86, 'Tirtayasa Thamrin', 'Kpg. Gajah No. 641, Cirebon 37077, JaBar', '2005-08-19 19:50:13', '2022-01-02 13:24:06'),
(87, 'Maimunah Sudiati M.TI.', 'Gg. Baik No. 673, Manado 29021, DKI', '1983-06-12 19:13:21', '2022-01-02 13:24:06'),
(88, 'Wakiman Narpati S.H.', 'Dk. Cut Nyak Dien No. 57, Palu 26858, JaTeng', '1988-07-03 01:22:13', '2022-01-02 13:24:06'),
(89, 'Darmana Thamrin', 'Ki. Yap Tjwan Bing No. 959, Bekasi 83216, BaBel', '1997-01-14 18:09:00', '2022-01-02 13:24:06'),
(90, 'Koko Sitorus S.IP', 'Jr. Thamrin No. 700, Cirebon 89023, SulTra', '1996-05-06 11:01:59', '2022-01-02 13:24:06'),
(91, 'Eluh Kala Sihombing S.Kom', 'Ki. Badak No. 913, Bima 64546, Papua', '1999-01-22 15:13:21', '2022-01-02 13:24:06'),
(92, 'Yuliana Padmasari', 'Ds. B.Agam Dlm No. 373, Banda Aceh 67433, KalSel', '1991-04-24 10:11:52', '2022-01-02 13:24:06'),
(93, 'Wirda Lidya Wijayanti M.Kom.', 'Dk. Ters. Jakarta No. 491, Lubuklinggau 80543, MalUt', '1975-03-20 03:23:45', '2022-01-02 13:24:06'),
(94, 'Banawa Mansur S.Sos', 'Ds. Barat No. 811, Prabumulih 22577, SumSel', '1972-01-29 22:01:50', '2022-01-02 13:24:06'),
(95, 'Ulya Purnawati S.E.', 'Gg. Pelajar Pejuang 45 No. 306, Yogyakarta 26794, NTB', '1988-04-18 16:24:32', '2022-01-02 13:24:06'),
(96, 'Taswir Baktianto Setiawan M.Farm', 'Gg. Siliwangi No. 433, Dumai 78768, KepR', '1986-04-22 14:32:26', '2022-01-02 13:24:06'),
(97, 'Karna Warta Wacana M.Kom.', 'Psr. Sukabumi No. 938, Solok 71543, SulTeng', '1971-06-17 04:48:28', '2022-01-02 13:24:06'),
(98, 'Rahmat Kardi Sihotang S.IP', 'Psr. Basudewo No. 398, Makassar 31188, Lampung', '1988-12-11 08:37:02', '2022-01-02 13:24:06'),
(99, 'Cakrawala Pratama', 'Psr. Gambang No. 97, Surakarta 71730, JaTim', '2012-01-18 20:53:02', '2022-01-02 13:24:06');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `komik`
--
ALTER TABLE `komik`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `orang`
--
ALTER TABLE `orang`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `komik`
--
ALTER TABLE `komik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `orang`
--
ALTER TABLE `orang`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
