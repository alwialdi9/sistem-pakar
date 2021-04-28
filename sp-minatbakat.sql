-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 18 Des 2018 pada 02.30
-- Versi Server: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sp-minatbakat`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `indikasi`
--

CREATE TABLE `indikasi` (
  `inisialisasi` varchar(2) NOT NULL,
  `kondisi` text NOT NULL,
  `kecerdasan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `indikasi`
--

INSERT INTO `indikasi` (`inisialisasi`, `kondisi`, `kecerdasan`) VALUES
('A1', 'anak suka membaca', 'linguistik'),
('A2', 'anak suka menulis', 'linguistik'),
('A3', 'anak mudah menceritakan suatu hal', 'linguistik'),
('A4', 'anak mudah berkomunikasi dengan baik', 'linguistik'),
('A5', 'anak mudah mengekspresikan perasaannya', 'linguistik'),
('B1', 'anak suka memecahkan masalah soal perhitungan', 'logika'),
('B2', 'anak menikmati pelajaran matematika', 'logika'),
('B3', 'anak menikmati permainan seperti teka-teki dan pencarian kata', 'logika'),
('B4', 'anak suka mencari tahu bagaimana cara kerja sebuah benda', 'logika'),
('B5', 'anak sering memiliki ide-ide unik ketika bermain', 'logika'),
('C1', 'anak menikmati kegiatan menggambar', 'visual'),
('C2', 'anak senang membuat coretan-coretan di kertas', 'visual'),
('C3', 'anak lebih tertarik melihat gambar-gambar di dalam sebuah buku cerita', 'visual'),
('C4', 'anak senang ketika diajak mendatangi tempat rekreasi', 'visual'),
('C5', 'anak suka menempel gambar buatannya di ruangan', 'visual'),
('D1', 'anak suka melakukan kegiatan olahraga', 'kinestik'),
('D2', 'anak menggunakan banyak gerakan ketika menjelaskan sesuatu', 'kinestik'),
('D3', 'anak cenderung aktif menggerakan tangannya ketik ia diam', 'kinestik'),
('D4', 'anak mudah menirukan sesuatu gerakan', 'kinestik'),
('D5', 'anak suka menari', 'kinestik'),
('E1', 'anak suka memainkan alat musik', 'musical'),
('E2', 'anak suka bernyanyi', 'musical'),
('E3', 'anak suka mendengarkan sebuah irama musik', 'musical'),
('E4', 'anak dapat menghafal nada dari sebuah lagu', 'musical'),
('E5', 'anak mudah memahami sesuatu dengan bantuan iringan musik', 'musical'),
('F1', 'anak senang bekerja secara tim', 'interpersonal'),
('F2', 'anak dapat melakukan diskusi', 'interpersonal'),
('F3', 'anak senang bertemu dengan orang baru', 'interpersonal'),
('F4', 'anak dapat menjadi seorang pemimpin diantara teman-temannya', 'interpersonal'),
('F5', 'anak senang mendengarkan orang lain', 'interpersonal'),
('G1', 'anak sering melamun', 'intrapersonal'),
('G2', 'anak cenderung lebih suka bermain sendiri', 'intrapersonal'),
('G3', 'anak dapat bertanggung jawab atas tindakan yang dilakukannya sendiri', 'intrapersonal'),
('G4', 'anak memiliki tekad yang kuat', 'intrapersonal'),
('G5', 'anak memiliki rasa percaya diri', 'intrapersonal'),
('H1', 'anak suka melakukan kegiatan bercocok tanam', 'naturalis'),
('H2', 'anak senang melakukan kegiatan rekreasi ke alam terbuka', 'naturalis'),
('H3', 'anak suka memelihara binatang', 'naturalis'),
('H4', 'anak senang mempelajari tentang makhluk hidup', 'naturalis'),
('H5', 'anak senang menonton tayangan tentang alam', 'naturalis');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kecerdasan`
--

CREATE TABLE `kecerdasan` (
  `id` int(11) NOT NULL,
  `kecerdasan` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kecerdasan`
--

INSERT INTO `kecerdasan` (`id`, `kecerdasan`, `deskripsi`) VALUES
(1, 'linguistik', '\n\nKecerdasan Lingustik adalah kecerdasan yang dimiliki manusia dalam mengolah kata. Dalam hal ini juga kemampuan untuk menggunakan kata-kata secara efektik baik lisan maupun tulisan. Dan biasanya orang-orang yang memiliki kecerdasan linguistik memiliki kosakata bahasa yang luas.\n\nUmumnya orang-orang yang memiliki kecerdasan linguistik gemar mengisi TTS, bermain scrable, membaca, dan bisa mengartikan bahasa tulisan dengan jelas. Orang yang memiliki kecerdasan mengolah kata ini pada umumnya pandai menghibur, meyakinkan orang lain dan berargumentasi dengan baik.\n\nOrang dengan kecerdasan ini juga menyukai membaca, menulis, berdiskusi. Orang dengan kecerdasan ini mengungkapkan keinginannya dengan cara yang tepat dan jelas dan singkat. Orang dengan kecerdasan ini baik pada pekerjaan yang melibatkan komunikasi pada orang banyak.'),
(2, 'logical', 'Kecerdasan logika matematik ialah kemampuan seseorang dalam memecahkan masalah. Ia mampu memikirkan dan menyusun solusi dengan urutan yang logis atau masuk akal. Tipe kecerdasan ini adalah orang yang memiliki kecerdasan dalam hal angka dan logika. \n\nOrang dengan kecerdasan ini selalu berfikir rasional dan mampu memikirkan kemungkinan- kemungkinan yang akan terjadi secara logika. Mereka juga mampu memahami argumen lawan bicara secara logis dan memecahkan masalah dengan matematis menggunakan kecerdasan logika. Dalam penelitian, kecerdasan ini digunakan untuk hipotesa sebelum dilakukan uji.\n\nKecerdasan ini berhubungan dengan kemampuan berhitung, mengkuantifikasi sesuatu hal, membuat hipotesis, dan membuktikannya lewat nalar ilmiah. Kecerdasan inilah yang sering kita lihat sehari-hari disekolah atau kampus.'),
(3, 'visual', '\nKecerdasan visual dan spasial adalah kemampuan untuk melihat dan mengamati dunia visual dan spasial secara akurat (cermat). Mereka yang termasuk ke dalam tipe ini memiliki kepekaan tajam untuk visual, keseimbangan, warna, garis, bentuk, dan ruang. Selain itu, mereka juga pandai membuat sketsa ide dengan jelas.\n\nKecerdasan ini membuat kita sanggup memperhitungkan jarak, volume, bentuk, detil, pola, warna dan ciri-ciri fisik dari sebuah objek. Makin cerdas kemampuan spasial seseorang, maka semakin akurat kemampuannya dalam menyusun sebuah bentuk. Misalnya dalam pembuatan peta, maket bangunan dan sebagainya.\n\nOrang yang mempunyai kecerdasan ini, memiliki tingkat kecerdasan yang mengacu pada gambar, ruang, bentuk, dan tentang gambaran perasaan. Orang dengan kemampuan ini dapat merekam apa yang dilihatnya dan mengingat dengan jelas gambaran aslinya, mereka juga mampu menggambarkan secara nyata visual yang ada di gambaran mereka. Orang dengan kecerdasan ini memiliki kemampuan melukis, potografi, arsitek, design, dan lainnya. Orang dengan kecerdasan ini memiliki tingkartseni yang tinggi.'),
(4, 'interpersonal', 'Kecerdasan interpersonal ialah kemampuan untuk mengamati dan mengerti maksud, motivasi dan perasaan orang lain. Orang tipe ini biasanya mengerti dan peka terhadap perasaan, intensi, motivasi, watak, dan temperamen orang lain. \n\nManusia memang makhluk yang berbeda. Perlu kemampuan khusus untuk mendeteksi kebutuhannya. Selain itu, mereka juga dibekali dengan kemampuan simpati dan empati. Kemampuan untuk merasakan perasaan orang lain dan motif mereka, termasuk dalam kecerdasan interpersonal.\n\nOrang dengan kecerdasan ini sangat peka dan mampu mengendalikan emosi pada diri sendiri. Orang dengan kecerdasan ini sangat memahami dirinya sendiri, memahami keinginannya dan mengendalikan seluruh perasaan pada dirinya sendiri. Orang dengan kecerdasan ini memiliki kemampuan khusus yang disebut kemampuan stationer. Kemampuan stationer adalah kemampuan untuk menjadi seseorang yang tetap netral dan sulit dipengaruhi oleh emosi, masalah, keinginan yang berasal dari luar.'),
(5, 'intrapersonal', 'Kecerdasan intrapersonal adalah kemampuan yang berhubungan dengan kesadaran dan pengetahuan tentang diri sendiri. Dapat memahami kekuatan dan kelemahan diri sendiri. Mampu memotivasi dirinya sendiri dan melakukan disiplin diri. Orang tipe ini memiliki kecerdasan pengetahuan akan diri sendiri dan mampu bertindak secara adaptif berdasarkan pengenalan diri.\n\nAda manusia yang sanggup mengidentifikasi dirinya sendiri. Ia mampu merasakan apa yang sesungguhnya ia inginkan dan butuhkan. Ciri-ciri itu adalah tanda bahwa orang tersebut memiliki kecerdasan intra-personal yang sangat berkembang\n\nKecerdasan ini merupakan kecerdasan dimana orang pintar dalam memahami orang lain dan sensitif terhadap sekitarnya. Orang dengan kecerdasan ini mampu memahami perasaan orang lain dengan mudah. Orang dengan kecerdasan ini juga memiliki kemampuan dalam memimpin, berempati, dan mengatur orang lain. Orang dengan kecerdasan ini mampu mempelajari apapun dari orang lain dan mencontoh hal baik untuk dia lakukan.'),
(6, 'musical', 'Kecerdasan musik adalah kemampuan untuk menikmati, mengamati, membedakan, mengarang, membentuk dan mengekspresikan bentuk-bentuk musik. Kecerdasan ini meliputi kepekaan terhadap ritme, melodi dan timbre dari musik yang didengar.\n\nKecerdasan musikal akan membuat kita memahami tinggi-rendahnya nada, ritme, dan puncak nada ketika mencerna suatu suara. Contoh sederhana semisal teman kamu yang langsung mengetahui kunci nada hanya dalam sekali kesempatan mendengar lagu tertentu.\n\nOrang yang memiliki kecerdasan ini memiliki kemampuan yang baik dalam bermain musik, bernyanyi, memahami nada, dan menciptakan irama musik. Orang dengan kecerdasan ini memiliki suara yang merdu dan sangat baik. Mereka juga sensitif dengan nada nada musik dan sangat efektif apabila bekerja ditemani lantunan musik. Mereka berfikir melalui melodi dan irama.'),
(7, 'naturalis', 'Kecerdasan naturalis adalah kemampuan untuk mengenali, membedakan, mengungkapkan dan membuat kategori terhadap apa yang di jumpai di alam maupun lingkungan. Orang yang memiliki kecerdasan ini mampu memahami dan menikmati alam dan menggunakannya secara produktif serta mengembangkan pengetahuannya mengenai alam.\n\nKecerdasan ini membuat kita pandai merasakan pertanda alam. Selain itu dengan kemampuan ini, manusia juga bisa mengerti kebutuhan dari makhluk hidup lainnya. Contohnya adalah memahami kebutuhan tanaman akan kandungan unsur hara dari ciri-ciri daun atau sebagainya.\n\nOrang dengan kecerdasan natural ini memiliki kepekaan terhadap alam dan mencintai alam. Mereka baik dalam berhubungan dengan alam atau lingkungan dan senang memelihara hewan atau merawat tanaman. Orang dengan kecerdasan ini baik dalam bidang biologi.'),
(8, 'kinestik', 'Kecerdasan kinestetik ialah kemampuan dalam menggunakan tubuh kita secara terampil untuk mengungkapkan ide, pemikiran dan perasaan. Orang tipe ini mampu mengekspresikan gagasan dan perasaan. Mereka menyukai olahraga dan berbagai kegiatan yang mengandalkan fisik.\n\nKecerdasan kinestetik-jasmani membuat kita mampu menyelaraskan pikiran dan tubuh. Semakin cerdas kinestetik-jasmani seseorang, tubuhnya semakin mudah digerakan sesuai dengan pikirannya. Para atlet bela diri biasanya memiliki kecerdasan ini, ketika mereka menyusun strategi dalam sepersekian detik untuk menjatuhkan lawannya.\n\nKecerdasan ini mencakup kemampuan atau kecerdasan dalam bergerak dan aktivitas yang melibatkan gerakan tubuh, misalnya menari. Orang dengan kecerdasan ini memiliki kemampuan untuk mengendalikan tubuhnya dengan sangat baik. Gerakan- gerakan yang dibuatnya juga terkoordinasi dengan baik dari pikirannya, mereka juga lincah dan memiliki kekuatan dalam setiap geraknya. Orang dengan kecerdasan ini juga memiliki kelenturan tubuh yang baik.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `nama` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `nama`) VALUES
(1, 'admin', 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `indikasi`
--
ALTER TABLE `indikasi`
  ADD PRIMARY KEY (`inisialisasi`);

--
-- Indexes for table `kecerdasan`
--
ALTER TABLE `kecerdasan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kecerdasan`
--
ALTER TABLE `kecerdasan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
