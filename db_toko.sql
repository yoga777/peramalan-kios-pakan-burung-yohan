-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Jun 2022 pada 08.02
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_toko`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id_barang` varchar(255) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `nama_barang` text NOT NULL,
  `merk` varchar(255) NOT NULL,
  `harga_beli` varchar(255) NOT NULL,
  `harga_jual` varchar(255) NOT NULL,
  `satuan_barang` varchar(255) NOT NULL,
  `stok` int(11) NOT NULL,
  `status` varchar(20) DEFAULT NULL,
  `tgl_input` varchar(255) NOT NULL,
  `tgl_update` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id_barang`, `id_kategori`, `nama_barang`, `merk`, `harga_beli`, `harga_jual`, `satuan_barang`, `stok`, `status`, `tgl_input`, `tgl_update`) VALUES
('BR001', 7, 'super fit gold', 'pakan burung kicau kemasan 110 gram', '10000', '15000', 'Pcs', 37, NULL, '21 December 2021, 17:15', '29 December 2021, 11:29'),
('BR002', 7, 'Super trucuk', 'voer rasa pisang tinggi protein isi100 gram', '2000', '3000', 'Pcs', 46, NULL, '21 December 2021, 17:36', '22 December 2021, 9:43'),
('BR003', 7, 'Ebod lovebird', 'millet untuk loverbird,parkit,dll 200 gram', '7000', '8000', 'Pcs', 41, NULL, '22 December 2021, 7:35', '22 December 2021, 9:43'),
('BR004', 11, 'OET jet pump', 'Botol Semprotan air ukuran 2 Liter', '20000', '25000', 'Pcs', 60, NULL, '22 December 2021, 7:39', NULL),
('BR005', 11, 'Krodong kandang burung bulat', 'untuk kandang love bird', '6000', '10000', 'Pcs', 37, NULL, '22 December 2021, 7:41', '22 December 2021, 7:45'),
('BR006', 11, 'Krodong kandang burung kotak', 'untuk kacer,kenari,cucak,dll', '15000', '20000', 'Pcs', 15, NULL, '22 December 2021, 7:46', NULL),
('BR007', 11, 'rantai kunci besi', 'pengaman pintu kandang burung', '1000', '2000', 'Pcs', 32, NULL, '22 December 2021, 7:47', NULL),
('BR008', 11, 'gantungan pakan', 'tempat menggantungkan pakan burung', '500', '1000', 'Pcs', 15, NULL, '22 December 2021, 7:49', NULL),
('BR009', 11, 'dispenser pakan', 'tabung makan & minum burung', '2500', '5000', 'Pcs', 10, NULL, '22 December 2021, 7:51', NULL),
('BR010', 10, 'Super-N', 'obat burung terkena infeksi pencernaan', '7500', '10000', 'Pcs', 15, NULL, '22 December 2021, 7:53', NULL),
('BR011', 10, 'ebod vit', 'vitamin burung kicau', '9500', '12500', 'Pcs', 20, NULL, '22 December 2021, 7:55', NULL),
('BR012', 11, 'tangkringan burung', ' terbuat dari kayu jati 50 cm', '800', '2000', 'Pcs', 20, NULL, '22 December 2021, 8:00', NULL),
('BR013', 11, 'sabut serat nanas', 'tempat bertelur love bird', '1000', '3000', 'Pcs', 10, NULL, '22 December 2021, 8:01', NULL),
('BR014', 11, 'head spray', 'kepala semprotan mandi burung', '2000', '4000', 'Pcs', 20, NULL, '22 December 2021, 8:05', NULL),
('BR015', 10, 'Tung-hai fish liver oil', 'vitamin burung lovebird,kacer,dll 500\'s', '35000', '40000', 'Pcs', 5, NULL, '22 December 2021, 8:06', '22 December 2021, 8:19'),
('BR016', 7, 'ebod canary', 'millet burung kenari', '5000', '7000', 'Pcs', 30, NULL, '22 December 2021, 8:08', NULL),
('BR017', 11, 'cepuk mandi burung', 'terbuat dari mika ukuran 15 cm x 8 cm', '2500', '5000', 'Pcs', 5, NULL, '22 December 2021, 8:10', NULL),
('BR018', 10, 'ebod joss ', 'vitamin burung peningkat stamina 10ml', '9000', '12500', 'Pcs', 10, NULL, '22 December 2021, 8:12', '22 December 2021, 8:17'),
('BR019', 7, 'kuaci hitam', 'pakan burung kualitas grade A', '30', '60', 'gram', 10000, NULL, '22 December 2021, 8:13', '22 December 2021, 8:17'),
('BR020', 7, 'Nutribird Uni komplet', 'pakan burung pleci 250gram', '30000', '36500', 'Pcs', 30, NULL, '22 December 2021, 8:19', '22 December 2021, 9:44'),
('BR021', 7, 'Gold coin kenari Spc', 'pakan kenari 250 gram', '6000', '9000', 'Pcs', 50, NULL, '22 December 2021, 8:24', '22 December 2021, 9:45'),
('BR022', 7, 'supefit red', 'pakan burung murai mengandung serangga', '15000', '11000', 'Pcs', 20, NULL, '22 December 2021, 8:25', NULL),
('BR023', 7, 'rudjak nectar', 'pakan colibri 250ml', '35000', '42000', 'Pcs', 20, NULL, '22 December 2021, 8:29', '22 December 2021, 9:45'),
('BR024', 11, 'tas gendong', 'untuk membawa kandang burung', '20000', '3000', 'Pcs', 5, NULL, '22 December 2021, 8:30', NULL),
('BR025', 7, 'Topsong plus 3 in 1', 'voer untuk murai,jalak,kacer 425gram', '6500', '10000', 'Pcs', 20, NULL, '22 December 2021, 8:31', NULL),
('BR026', 7, 'insect mix bird', 'voer burung murai,kacer,ciblek 250gram', '25000', '33000', 'Pcs', 35, NULL, '22 December 2021, 8:41', '22 December 2021, 9:46'),
('BR027', 10, 'kututox', 'larutan pembasmi kutu burung', '6000', '9000', 'Pcs', 5, NULL, '22 December 2021, 8:52', NULL),
('BR028', 10, 'Dragon SN', 'Suplemen untuk ayam', '8000', '11000', 'Pcs', 10, NULL, '22 December 2021, 8:53', NULL),
('BR029', 11, 'Lem korea', 'lem cair multifungsi super kuat', '2000', '4000', 'Pcs', 20, NULL, '22 December 2021, 8:56', NULL),
('BR030', 10, 'Vita Stress', 'multivitamin untuk ayam & burung', '500', '1000', 'Pcs', 15, NULL, '22 December 2021, 8:57', NULL),
('BR031', 7, 'Leopard bird food', 'pakan colibri dengan madu halus', '3000', '6500', 'Pcs', 20, NULL, '22 December 2021, 8:58', NULL),
('BR032', 7, 'Probird Fumayin', 'pakan burung pleci peningjat birahi', '4500', '7500', 'Pcs', 18, NULL, '22 December 2021, 9:25', NULL),
('BR033', 6, 'Kyojin', 'pakan ayam raksasa 950 gram', '40000', '50000', 'Pcs', 18, NULL, '22 December 2021, 9:39', '22 December 2021, 9:46'),
('BR034', 7, 'ebod ronggolawe', 'Pakan murai cucak,dll', '7000', '9500', 'Pcs', 50, NULL, '22 December 2021, 9:41', NULL),
('BR035', 7, 'Chirpy extra seaweed', 'pakan burung kacer,murai,cucak,dll', '6500', '9500', 'Pcs', 70, NULL, '22 December 2021, 9:46', NULL),
('BR036', 7, 'Jangkrik', 'pakan burung dan arwana arigator', '50', '150', 'gram', 5000, NULL, '22 December 2021, 9:48', NULL),
('BR037', 7, 'kroto segar', 'telur semut untuk burung,ikan,dll', '100', '250', 'gram', 10000, NULL, '22 December 2021, 9:50', NULL),
('BR038', 6, 'dedak halus', 'Pakan unggas dan ternak', '2000', '4000', 'Kilo gram', 30, NULL, '22 December 2021, 9:53', NULL),
('BR039', 8, 'Takari ', 'pakan ikan hias 250 gram', '5000', '8000', 'Pcs', 40, NULL, '22 December 2021, 9:55', NULL),
('BR040', 8, '781 -2', 'pakan ikan lele,gurami,dll', '12000', '16000', 'Kilo gram', 60, NULL, '22 December 2021, 9:57', NULL),
('BR041', 8, 'magot hidup', 'pakan ikan dan burung', '20', '50', 'gram', 12980, NULL, '22 December 2021, 10:00', NULL),
('BR042', 7, 'Chirpy coklat', 'pakan burung kicau 400 gram', '9500', '12500', 'Pcs', 55, NULL, '22 December 2021, 10:00', NULL),
('BR043', 7, 'Fancy gold food', 'pakan poksay,hwamei,cucak rowo 450gram', '15000', '2000', 'Pcs', 60, NULL, '22 December 2021, 10:02', NULL),
('BR044', 10, 'EM4 Perikanan', 'meningkatkan kualitas air isi 1L', '16000', '20000', 'Pcs', 30, NULL, '22 December 2021, 10:03', NULL),
('BR045', 10, 'EM4 Peternakan', 'penyeimbang mikroorganisme dlm perut ternak', '16000', '20000', 'Pcs', 25, NULL, '22 December 2021, 10:06', NULL),
('BR046', 8, 'PF 1000', 'Pakan benih ikan', '15000', '20000', 'Kilo gram', 60, NULL, '22 December 2021, 10:07', NULL),
('BR047', 8, 'PF 500', 'Pakan benih ikan', '17500', '22500', 'Kilo gram', 30, NULL, '22 December 2021, 10:10', NULL),
('BR048', 8, 'PF 800', 'Pakan benih ikan', '2000', '28000', 'Kilo gram', 60, NULL, '22 December 2021, 10:11', NULL),
('BR049', 6, 'wong koyo BR-1W', 'pakan ayam starter pedaging', '5000', '9500', 'Kilo gram', 40, NULL, '22 December 2021, 10:12', NULL),
('BR050', 6, 'Comfeed Broiler', 'pakan ayam pedaging umur 1-21 hari', '6000', '10000', 'Kilo gram', 30, NULL, '22 December 2021, 10:14', NULL),
('BR051', 9, 'kandang murai batu', 'ukuran 20 cm x 20 cm', '50000', '80000', 'Pcs', 5, NULL, '26 December 2021, 9:53', NULL),
('BR052', 11, 'cepuk pakan', 'diameter 15 cm', '3000', '6000', 'Pcs', 20, NULL, '29 December 2021, 9:08', NULL),
('BR053', 6, 'Jagung', 'hibrida kualitas unggul', '10000', '15000', 'Kilo gram', 2995, NULL, '29 December 2021, 9:34', NULL),
('BR054', 6, 'menir', 'beras kecil', '2000', '3000', 'gram', 200, NULL, '30 December 2021, 8:35', NULL),
('BR055', 6, 'dedak', 'ampas padi', '1000', '1500', 'gram', 10000, NULL, '30 December 2021, 10:36', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_penjualan`
--

CREATE TABLE `detail_penjualan` (
  `id_detail` int(11) NOT NULL,
  `no_nota` varchar(10) NOT NULL,
  `id_barang` varchar(255) NOT NULL,
  `id_member` int(11) NOT NULL,
  `jumlah` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `tanggal_input` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `flag_bayar` char(1) NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `detail_penjualan`
--

INSERT INTO `detail_penjualan` (`id_detail`, `no_nota`, `id_barang`, `id_member`, `jumlah`, `total`, `tanggal_input`, `flag_bayar`) VALUES
(1, '1', 'BR001', 1, '1', '15000', '2021-01-02 11:10:49', 'Y'),
(2, '2', 'BR001', 1, '2', '30000', '2021-01-04 11:10:49', 'Y'),
(3, '3', 'BR001', 1, '5', '75000', '2021-01-04 11:10:49', 'Y'),
(4, '4', 'BR001', 1, '4', '60000', '2021-01-09 11:10:49', 'Y'),
(5, '5', 'BR001', 1, '3', '45000', '2021-01-12 11:10:49', 'Y'),
(6, '6', 'BR001', 1, '2', '30000', '2021-01-25 11:10:49', 'Y'),
(8, '8', 'BR001', 1, '1', '15000', '2021-02-05 11:10:49', 'Y'),
(9, '9', 'BR001', 1, '10', '150000', '2021-02-15 11:10:49', 'Y'),
(10, '10', 'BR001', 1, '3', '45000', '2021-02-25 11:10:49', 'Y'),
(11, '11', 'BR001', 1, '3', '45000', '2021-02-28 11:10:49', 'Y'),
(12, '12', 'BR001', 1, '5', '75000', '2021-03-02 11:10:49', 'Y'),
(13, '13', 'BR001', 1, '1', '15000', '2021-03-04 11:10:49', 'Y'),
(14, '14', 'BR001', 1, '1', '15000', '2021-03-11 11:10:49', 'Y'),
(15, '15', 'BR001', 1, '7', '105000', '2021-03-25 11:10:49', 'Y'),
(16, '16', 'BR001', 1, '2', '30000', '2021-04-04 11:10:49', 'Y'),
(17, '17', 'BR001', 1, '2', '30000', '2021-04-07 11:10:49', 'Y'),
(18, '18', 'BR001', 1, '6', '90000', '2021-04-10 11:10:49', 'Y'),
(19, '19', 'BR001', 1, '2', '30000', '2021-04-15 11:10:49', 'Y'),
(20, '20', 'BR001', 1, '2', '30000', '2021-04-26 11:10:49', 'Y'),
(22, '22', 'BR001', 1, '15', '225000', '2021-06-15 11:10:49', 'Y'),
(23, '23', 'BR001', 1, '11', '165000', '2021-07-05 11:10:49', 'Y'),
(25, '25', 'BR001', 1, '9', '135000', '2021-08-11 11:10:49', 'Y'),
(26, '26', 'BR001', 1, '7', '105000', '2021-08-15 11:10:49', 'Y'),
(27, '27', 'BR001', 1, '4', '75000', '2021-09-25 23:03:55', 'Y'),
(28, '28', 'BR001', 1, '11', '165000', '2021-09-16 11:10:49', 'Y'),
(29, '29', 'BR001', 1, '11', '165000', '2021-10-05 11:10:49', 'Y'),
(30, '30', 'BR001', 1, '11', '165000', '2021-10-19 11:10:49', 'Y'),
(31, '31', 'BR001', 1, '10', '150000', '2021-11-15 11:10:49', 'Y'),
(32, '32', 'BR001', 1, '6', '60000', '2021-11-19 11:10:49', 'Y'),
(33, '33', 'BR001', 1, '6', '90000', '2021-01-02 11:10:49', 'Y'),
(34, '34', 'BR001', 1, '3', '45000', '2021-03-24 11:10:49', 'Y'),
(35, '35', 'BR001', 1, '1', '15000', '2021-04-27 11:10:49', 'Y'),
(36, '36', 'BR001', 1, '1', '15000', '2021-06-24 02:10:49', 'Y'),
(37, '37', 'BR001', 1, '3', '45000', '2021-06-29 05:10:49', 'Y'),
(38, '38', 'BR001', 1, '7', '105000', '2021-08-29 05:10:49', 'Y'),
(39, '39', 'BR001', 1, '1', '15000', '2021-09-29 05:10:49', 'Y'),
(40, '40', 'BR001', 1, '1', '15000', '2021-10-29 05:10:49', 'Y'),
(41, '41', 'BR001', 1, '6', '90000', '2021-11-29 05:10:49', 'Y'),
(42, '42', 'BR001', 1, '6', '90000', '2021-12-03 00:10:49', 'Y'),
(43, '43', 'BR001', 1, '5', '75000', '2021-12-04 04:10:49', 'Y'),
(44, '44', 'BR001', 1, '4', '60000', '2021-12-10 11:10:49', 'Y'),
(45, '45', 'BR001', 1, '2', '30000', '2021-12-26 03:07:05', 'Y'),
(46, '46', 'BR001', 1, '1', '15000', '2021-12-25 06:10:49', 'Y'),
(47, '47', 'BR002', 1, '2', '30000', '2021-01-04 11:10:49', 'Y'),
(48, '48', 'BR002', 1, '2', '30000', '2021-02-07 11:10:49', 'Y'),
(49, '49', 'BR002', 1, '6', '90000', '2021-03-10 11:10:49', 'Y'),
(50, '50', 'BR002', 1, '2', '30000', '2021-04-15 11:10:49', 'Y'),
(51, '51', 'BR002', 1, '2', '30000', '2021-06-04 11:10:49', 'Y'),
(52, '52', 'BR002', 1, '2', '30000', '2021-07-07 11:10:49', 'Y'),
(53, '53', 'BR002', 1, '6', '90000', '2021-08-10 11:10:49', 'Y'),
(54, '54', 'BR002', 1, '2', '30000', '2021-09-15 11:10:49', 'Y'),
(55, '55', 'BR002', 1, '2', '30000', '2021-10-26 11:10:49', 'Y'),
(56, '56', 'BR002', 1, '2', '30000', '2021-11-15 11:10:49', 'Y'),
(57, '57', 'BR002', 1, '2', '30000', '2021-12-24 11:10:49', 'Y'),
(58, '58', 'BR002', 1, '2', '30000', '2021-05-26 11:10:49', 'Y'),
(59, '59', 'BR003', 1, '2', '30000', '2021-01-04 11:10:49', 'Y'),
(60, '60', 'BR003', 1, '2', '30000', '2021-02-07 11:10:49', 'Y'),
(61, '61', 'BR003', 1, '6', '90000', '2021-03-10 11:10:49', 'Y'),
(62, '62', 'BR003', 1, '2', '30000', '2021-04-15 11:10:49', 'Y'),
(63, '63', 'BR003', 1, '2', '30000', '2021-05-26 11:10:49', 'Y'),
(64, '64', 'BR003', 1, '2', '30000', '2021-06-04 11:10:49', 'Y'),
(65, '65', 'BR003', 1, '2', '30000', '2021-07-07 11:10:49', 'Y'),
(66, '66', 'BR003', 1, '6', '90000', '2021-08-10 11:10:49', 'Y'),
(67, '67', 'BR003', 1, '2', '30000', '2021-09-15 11:10:49', 'Y'),
(68, '68', 'BR003', 1, '2', '30000', '2021-10-26 11:10:49', 'Y'),
(69, '69', 'BR003', 1, '2', '30000', '2021-11-15 11:10:49', 'Y'),
(70, '70', 'BR003', 1, '2', '30000', '2021-12-24 11:10:49', 'Y'),
(71, '71', 'BR001', 1, '4', '60000', '2021-03-24 11:10:49', 'Y'),
(72, '72', 'BR001', 1, '4', '60000', '2021-07-24 11:10:49', 'Y'),
(74, '74', 'BR001', 1, '14', '210000', '2021-05-04 11:10:49', 'Y'),
(119, '10', 'BR053', 1, '5', '75000', '2021-12-29 03:07:58', 'N');

--
-- Trigger `detail_penjualan`
--
DELIMITER $$
CREATE TRIGGER `update_barang` AFTER UPDATE ON `detail_penjualan` FOR EACH ROW UPDATE barang SET stok=stok-NEW.jumlah where id_barang=NEW.id_barang
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_peramalan`
--

CREATE TABLE `detail_peramalan` (
  `id_detailperamalan` int(11) NOT NULL,
  `id_peramalan` int(11) NOT NULL,
  `bulan` varchar(30) NOT NULL,
  `tahun` year(4) NOT NULL,
  `penjualan` int(11) NOT NULL,
  `prediksi_penjualan` int(11) NOT NULL,
  `eror` float NOT NULL,
  `erorpositif` float NOT NULL,
  `erorpangkat` float NOT NULL,
  `erorpersen` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `detail_peramalan`
--

INSERT INTO `detail_peramalan` (`id_detailperamalan`, `id_peramalan`, `bulan`, `tahun`, `penjualan`, `prediksi_penjualan`, `eror`, `erorpositif`, `erorpangkat`, `erorpersen`) VALUES
(7, 1, 'Januari', 2021, 23, 0, 0, 0, 0, 0),
(8, 1, 'Februari', 2021, 17, 0, 0, 0, 0, 0),
(9, 1, 'Maret', 2021, 17, 20, -3, 3, 9, 17.6471),
(10, 1, 'April', 2021, 15, 17, -2, 2, 4, 13.3333),
(11, 1, 'Juni', 2021, 19, 16, 3, 3, 9, 15.7895),
(12, 1, 'Juli', 2021, 11, 17, -6, 6, 36, 54.5455),
(13, 1, 'Agustus', 2021, 23, 15, 8, 8, 64, 34.7826),
(14, 1, 'September', 2021, 16, 17, -1, 1, 1, 6.25),
(15, 1, 'Oktober', 2021, 23, 20, 3.5, 3.5, 12.25, 15.2174),
(16, 1, 'November', 2021, 22, 20, 2.5, 2.5, 6.25, 11.3636),
(17, 4, 'Januari', 2021, 23, 0, 0, 0, 0, 0),
(18, 4, 'Februari', 2021, 17, 0, 0, 0, 0, 0),
(19, 4, 'Maret', 2021, 17, 0, 0, 0, 0, 0),
(20, 4, 'April', 2021, 15, 0, 0, 0, 0, 0),
(21, 4, 'Juni', 2021, 19, 0, 0, 0, 0, 0),
(22, 4, 'Juli', 2021, 11, 18, -7.2, 7.2, 51.84, 65.4545),
(23, 4, 'Agustus', 2021, 23, 16, 7.2, 7.2, 51.84, 31.3043),
(24, 4, 'September', 2021, 16, 17, -1, 1, 1, 6.25),
(25, 4, 'Oktober', 2021, 23, 17, 6.2, 6.2, 38.44, 26.9565),
(26, 4, 'November', 2021, 22, 18, 3.6, 3.6, 12.96, 16.3636),
(27, 5, 'Januari', 2021, 23, 0, 0, 0, 0, 0),
(28, 5, 'Februari', 2021, 17, 0, 0, 0, 0, 0),
(29, 5, 'Maret', 2021, 17, 0, 0, 0, 0, 0),
(30, 5, 'April', 2021, 15, 19, -4, 4, 16, 26.6667),
(31, 5, 'Juni', 2021, 19, 16, 2.66667, 2.66667, 7.11111, 14.0351),
(32, 5, 'Juli', 2021, 11, 17, -6, 6, 36, 54.5455),
(33, 5, 'Agustus', 2021, 23, 15, 8, 8, 64, 34.7826),
(34, 5, 'September', 2021, 16, 18, -1.66667, 1.66667, 2.77778, 10.4167),
(35, 5, 'Oktober', 2021, 23, 17, 6.33333, 6.33333, 40.1111, 27.5362),
(36, 5, 'November', 2021, 22, 21, 1.33333, 1.33333, 1.77778, 6.06061),
(37, 5, 'Desember', 2021, 16, 20, -4.33333, 4.33333, 18.7778, 27.0833),
(38, 6, 'Januari', 2021, 23, 0, 0, 0, 0, 0),
(39, 6, 'Februari', 2021, 17, 0, 0, 0, 0, 0),
(40, 6, 'Maret', 2021, 17, 0, 0, 0, 0, 0),
(41, 6, 'April', 2021, 15, 0, 0, 0, 0, 0),
(42, 6, 'Juni', 2021, 19, 0, 0, 0, 0, 0),
(43, 6, 'Juli', 2021, 11, 18, -7.2, 7.2, 51.84, 65.4545),
(44, 6, 'Agustus', 2021, 23, 16, 7.2, 7.2, 51.84, 31.3043),
(45, 6, 'September', 2021, 16, 17, -1, 1, 1, 6.25),
(46, 6, 'Oktober', 2021, 23, 17, 6.2, 6.2, 38.44, 26.9565),
(47, 6, 'November', 2021, 22, 18, 3.6, 3.6, 12.96, 16.3636),
(48, 6, 'Desember', 2021, 18, 19, -1, 1, 1, 5.55556),
(49, 7, 'Januari', 2021, 23, 0, 0, 0, 0, 0),
(50, 7, 'Februari', 2021, 17, 0, 0, 0, 0, 0),
(51, 7, 'Maret', 2021, 17, 20, -3, 3, 9, 17.6471),
(52, 7, 'April', 2021, 15, 17, -2, 2, 4, 13.3333),
(53, 7, 'Juni', 2021, 19, 16, 3, 3, 9, 15.7895),
(54, 7, 'Juli', 2021, 11, 17, -6, 6, 36, 54.5455),
(55, 7, 'Agustus', 2021, 23, 15, 8, 8, 64, 34.7826),
(56, 7, 'September', 2021, 16, 17, -1, 1, 1, 6.25),
(57, 7, 'Oktober', 2021, 23, 20, 3.5, 3.5, 12.25, 15.2174),
(58, 7, 'November', 2021, 22, 20, 2.5, 2.5, 6.25, 11.3636),
(59, 7, 'Desember', 2021, 16, 23, -6.5, 6.5, 42.25, 40.625),
(60, 8, 'Januari', 2021, 23, 0, 0, 0, 0, 0),
(61, 8, 'Februari', 2021, 17, 0, 0, 0, 0, 0),
(62, 8, 'Maret', 2021, 21, 20, 1, 1, 1, 4.7619),
(63, 8, 'April', 2021, 15, 19, -4, 4, 16, 26.6667),
(64, 8, 'Mei', 2021, 14, 18, -4, 4, 16, 28.5714),
(65, 8, 'Juni', 2021, 19, 15, 4.5, 4.5, 20.25, 23.6842),
(66, 8, 'Juli', 2021, 15, 17, -1.5, 1.5, 2.25, 10),
(67, 8, 'Agustus', 2021, 23, 17, 6, 6, 36, 26.087),
(68, 8, 'September', 2021, 16, 19, -3, 3, 9, 18.75),
(69, 8, 'Oktober', 2021, 23, 20, 3.5, 3.5, 12.25, 15.2174),
(70, 8, 'November', 2021, 22, 20, 2.5, 2.5, 6.25, 11.3636),
(71, 8, 'Desember', 2021, 16, 23, -6.5, 6.5, 42.25, 40.625),
(72, 9, 'Januari', 2021, 23, 0, 0, 0, 0, 0),
(73, 9, 'Februari', 2021, 17, 0, 0, 0, 0, 0),
(74, 9, 'Maret', 2021, 21, 20, 1, 1, 1, 4.7619),
(75, 9, 'April', 2021, 15, 19, -4, 4, 16, 26.6667),
(76, 9, 'Mei', 2021, 14, 18, -4, 4, 16, 28.5714),
(77, 9, 'Juni', 2021, 19, 15, 4.5, 4.5, 20.25, 23.6842),
(78, 9, 'Juli', 2021, 15, 17, -1.5, 1.5, 2.25, 10),
(79, 9, 'Agustus', 2021, 23, 17, 6, 6, 36, 26.087),
(80, 9, 'September', 2021, 16, 19, -3, 3, 9, 18.75),
(81, 9, 'Oktober', 2021, 23, 20, 3.5, 3.5, 12.25, 15.2174),
(82, 9, 'November', 2021, 22, 20, 2.5, 2.5, 6.25, 11.3636),
(83, 10, 'Januari', 2021, 23, 0, 0, 0, 0, 0),
(84, 10, 'Februari', 2021, 17, 0, 0, 0, 0, 0),
(85, 10, 'Maret', 2021, 21, 0, 0, 0, 0, 0),
(86, 10, 'April', 2021, 15, 0, 0, 0, 0, 0),
(87, 10, 'Mei', 2021, 14, 0, 0, 0, 0, 0),
(88, 10, 'Juni', 2021, 19, 18, 1, 1, 1, 5.26316),
(89, 10, 'Juli', 2021, 15, 17, -2.2, 2.2, 4.84, 14.6667),
(90, 10, 'Agustus', 2021, 23, 17, 6.2, 6.2, 38.44, 26.9565),
(91, 10, 'September', 2021, 16, 17, -1.2, 1.2, 1.44, 7.5),
(92, 10, 'Oktober', 2021, 23, 17, 5.6, 5.6, 31.36, 24.3478),
(93, 10, 'November', 2021, 22, 19, 2.8, 2.8, 7.84, 12.7273),
(94, 11, 'Januari', 2021, 23, 0, 0, 0, 0, 0),
(95, 11, 'Februari', 2021, 17, 0, 0, 0, 0, 0),
(96, 11, 'Maret', 2021, 21, 0, 0, 0, 0, 0),
(97, 11, 'April', 2021, 15, 0, 0, 0, 0, 0),
(98, 11, 'Mei', 2021, 14, 0, 0, 0, 0, 0),
(99, 11, 'Juni', 2021, 19, 18, 1, 1, 1, 5.26316),
(100, 11, 'Juli', 2021, 15, 17, -2.2, 2.2, 4.84, 14.6667),
(101, 11, 'Agustus', 2021, 23, 17, 6.2, 6.2, 38.44, 26.9565),
(102, 11, 'September', 2021, 16, 17, -1.2, 1.2, 1.44, 7.5),
(103, 11, 'Oktober', 2021, 23, 17, 5.6, 5.6, 31.36, 24.3478),
(104, 11, 'November', 2021, 22, 19, 2.8, 2.8, 7.84, 12.7273),
(105, 12, 'Januari', 2021, 23, 0, 0, 0, 0, 0),
(106, 12, 'Februari', 2021, 17, 0, 0, 0, 0, 0),
(107, 12, 'Maret', 2021, 21, 20, 1, 1, 1, 4.7619),
(108, 12, 'April', 2021, 15, 19, -4, 4, 16, 26.6667),
(109, 12, 'Mei', 2021, 14, 18, -4, 4, 16, 28.5714),
(110, 12, 'Juni', 2021, 19, 15, 4.5, 4.5, 20.25, 23.6842),
(111, 12, 'Juli', 2021, 15, 17, -1.5, 1.5, 2.25, 10),
(112, 12, 'Agustus', 2021, 23, 17, 6, 6, 36, 26.087),
(113, 12, 'September', 2021, 16, 19, -3, 3, 9, 18.75),
(114, 12, 'Oktober', 2021, 23, 20, 3.5, 3.5, 12.25, 15.2174),
(115, 12, 'November', 2021, 22, 20, 2.5, 2.5, 6.25, 11.3636),
(116, 11, 'Januari', 2021, 2, 0, 0, 0, 0, 0),
(117, 11, 'Februari', 2021, 2, 0, 0, 0, 0, 0),
(118, 11, 'Maret', 2021, 6, 0, 0, 0, 0, 0),
(119, 11, 'April', 2021, 2, 0, 0, 0, 0, 0),
(120, 11, 'Mei', 2021, 2, 0, 0, 0, 0, 0),
(121, 11, 'Juni', 2021, 2, 3, -0.8, 0.8, 0.64, 40),
(122, 11, 'Juli', 2021, 2, 3, -0.8, 0.8, 0.64, 40),
(123, 11, 'Agustus', 2021, 6, 3, 3.2, 3.2, 10.24, 53.3333),
(124, 11, 'September', 2021, 2, 3, -0.8, 0.8, 0.64, 40),
(125, 11, 'Oktober', 2021, 2, 3, -0.8, 0.8, 0.64, 40),
(126, 11, 'November', 2021, 2, 3, -0.8, 0.8, 0.64, 40);

-- --------------------------------------------------------

--
-- Struktur dari tabel `hasilperamalan`
--

CREATE TABLE `hasilperamalan` (
  `id_peramalan` int(11) NOT NULL,
  `tgl_awal` date NOT NULL,
  `tgl_akhir` date NOT NULL,
  `pergerakan` int(11) NOT NULL,
  `mse` float NOT NULL,
  `mad` float NOT NULL,
  `mape` float NOT NULL,
  `hasil_peramalan` int(11) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `id_member` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `hasilperamalan`
--

INSERT INTO `hasilperamalan` (`id_peramalan`, `tgl_awal`, `tgl_akhir`, `pergerakan`, `mse`, `mad`, `mape`, `hasil_peramalan`, `nama_barang`, `id_member`) VALUES
(10, '2021-01-01', '2021-11-30', 5, 14.1533, 3.16667, 15.2436, 20, 'super fit gold', 1),
(13, '2021-01-01', '2021-11-30', 5, 2.24, 1.2, 42.2222, 3, 'Super trucuk', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `tgl_input` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `tgl_input`) VALUES
(6, 'pakan ayam', '21 December 2021, 17:13'),
(7, 'pakan burung', '21 December 2021, 17:13'),
(8, 'pakan ikan', '21 December 2021, 17:13'),
(9, 'kandang', '21 December 2021, 17:13'),
(10, 'obat &amp; vitamin', '21 December 2021, 17:13'),
(11, 'aksesoris', '21 December 2021, 17:13'),
(12, 'perlengkapan ternak', '26 December 2021, 9:54'),
(13, 'pakan kambing', '29 December 2021, 9:10'),
(14, 'pakan bebek', '29 December 2021, 9:36');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `id_login` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `pass` char(32) NOT NULL,
  `id_member` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`id_login`, `user`, `pass`, `id_member`) VALUES
(1, 'admin', '202cb962ac59075b964b07152d234b70', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `member`
--

CREATE TABLE `member` (
  `id_member` int(11) NOT NULL,
  `nm_member` varchar(255) NOT NULL,
  `alamat_member` text NOT NULL,
  `telepon` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gambar` text NOT NULL,
  `NIK` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `member`
--

INSERT INTO `member` (`id_member`, `nm_member`, `alamat_member`, `telepon`, `email`, `gambar`, `NIK`) VALUES
(1, 'YUGA ADI K', 'Admin', '081217351613', 'yogaadik9@gamil.com', '—Pngtree—coronavirus bacteria cartoon character_5336906.png', '123456');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan`
--

CREATE TABLE `penjualan` (
  `id_penjualan` varchar(10) NOT NULL,
  `total` varchar(255) NOT NULL,
  `tanggal_input` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penjualan`
--

INSERT INTO `penjualan` (`id_penjualan`, `total`, `tanggal_input`) VALUES
('1', '15000', '2021-01-02 11:10:49'),
('10', '45000', '2021-02-25 11:10:49'),
('11', '45000', '2021-02-28 11:10:49'),
('12', '75000', '2021-03-02 11:10:49'),
('13', '15000', '2021-03-04 11:10:49'),
('14', '15000', '2021-03-11 11:10:49'),
('15', '105000', '2021-03-25 11:10:49'),
('16', '30000', '2021-04-04 11:10:49'),
('17', '30000', '2021-04-07 11:10:49'),
('18', '90000', '2021-04-10 11:10:49'),
('19', '30000', '2021-04-15 11:10:49'),
('2', '30000', '2021-01-04 11:10:49'),
('20', '30000', '2021-04-26 11:10:49'),
('21', '210000', '2021-05-02 11:10:49'),
('22', '225000', '2021-06-15 11:10:49'),
('23', '165000', '2021-07-05 11:10:49'),
('24', '60000', '2021-07-25 11:10:49'),
('25', '135000', '2021-08-11 11:10:49'),
('26', '105000', '2021-08-15 11:10:49'),
('27', '75000', '2021-09-08 11:10:49'),
('28', '165000', '2021-09-16 11:10:49'),
('29', '165000', '2021-10-05 11:10:49'),
('3', '75000', '2021-01-04 11:10:49'),
('30', '165000', '2021-10-19 11:10:49'),
('31', '150000', '2021-11-15 11:10:49'),
('32', '60000', '2021-11-19 11:10:49'),
('33', '90000', '2021-01-02 11:10:49'),
('34', '45000', '2021-03-24 11:10:49'),
('35', '15000', '2021-04-27 11:10:49'),
('36', '15000', '2021-06-24 02:10:49'),
('37', '45000', '2021-06-29 05:10:49'),
('38', '105000', '2021-08-29 05:10:49'),
('39', '15000', '2021-09-29 05:10:49'),
('4', '60000', '2021-01-09 11:10:49'),
('40', '15000', '2021-10-29 05:10:49'),
('41', '90000', '2021-11-29 05:10:49'),
('42', '90000', '2021-12-03 00:10:49'),
('43', '75000', '2021-12-04 04:10:49'),
('44', '60000', '2021-12-10 11:10:49'),
('45', '30000', '2021-12-13 05:10:49'),
('46', '15000', '2021-12-25 06:10:49'),
('47', '30000', '2021-01-04 11:10:49'),
('48', '30000', '2021-02-07 11:10:49'),
('49', '90000', '2021-03-10 11:10:49'),
('5', '45000', '2021-01-12 11:10:49'),
('50', '30000', '2021-04-15 11:10:49'),
('51', '30000', '2021-06-04 11:10:49'),
('52', '30000', '2021-07-07 11:10:49'),
('53', '90000', '2021-08-10 11:10:49'),
('54', '30000', '2021-09-15 11:10:49'),
('55', '30000', '2021-10-26 11:10:49'),
('56', '30000', '2021-11-15 11:10:49'),
('57', '30000', '2021-12-24 11:10:49'),
('58', '30000', '2021-05-26 11:10:49'),
('59', '30000', '2021-01-04 11:10:49'),
('6', '30000', '2021-01-25 11:10:49'),
('60', '30000', '2021-02-07 11:10:49'),
('61', '90000', '2021-03-10 11:10:49'),
('62', '30000', '2021-04-15 11:10:49'),
('63', '30000', '2021-05-26 11:10:49'),
('64', '30000', '2021-06-04 11:10:49'),
('65', '30000', '2021-07-07 11:10:49'),
('66', '90000', '2021-08-10 11:10:49'),
('67', '30000', '2021-09-15 11:10:49'),
('68', '30000', '2021-10-26 11:10:49'),
('69', '30000', '2021-11-15 11:10:49'),
('70', '30000', '2021-12-24 11:10:49'),
('71', '60000', '2021-03-24 11:10:49'),
('72', '60000', '2021-07-24 11:10:49'),
('74', '210000', '2021-05-04 11:10:49'),
('8', '15000', '2021-02-05 11:10:49'),
('9', '150000', '2021-02-15 11:10:49');

--
-- Trigger `penjualan`
--
DELIMITER $$
CREATE TRIGGER `update_flag` AFTER INSERT ON `penjualan` FOR EACH ROW UPDATE detail_penjualan set flag_bayar='Y' WHERE no_nota=NEW.id_penjualan
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indeks untuk tabel `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  ADD PRIMARY KEY (`id_detail`);

--
-- Indeks untuk tabel `detail_peramalan`
--
ALTER TABLE `detail_peramalan`
  ADD PRIMARY KEY (`id_detailperamalan`);

--
-- Indeks untuk tabel `hasilperamalan`
--
ALTER TABLE `hasilperamalan`
  ADD PRIMARY KEY (`id_peramalan`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_login`);

--
-- Indeks untuk tabel `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_member`);

--
-- Indeks untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_penjualan`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  MODIFY `id_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT untuk tabel `detail_peramalan`
--
ALTER TABLE `detail_peramalan`
  MODIFY `id_detailperamalan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT untuk tabel `hasilperamalan`
--
ALTER TABLE `hasilperamalan`
  MODIFY `id_peramalan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `login`
--
ALTER TABLE `login`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `member`
--
ALTER TABLE `member`
  MODIFY `id_member` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
