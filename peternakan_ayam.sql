-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Apr 2025 pada 09.02
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `peternakan_ayam`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `ayam`
--

CREATE TABLE `ayam` (
  `ID_Ayam` varchar(10) NOT NULL,
  `Jenis` varchar(20) DEFAULT NULL,
  `Tgl_Masuk` date DEFAULT NULL,
  `Usia_Masuk` int(11) DEFAULT NULL,
  `Asal` varchar(50) DEFAULT NULL,
  `ID_Kandang` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `ayam`
--

INSERT INTO `ayam` (`ID_Ayam`, `Jenis`, `Tgl_Masuk`, `Usia_Masuk`, `Asal`, `ID_Kandang`) VALUES
('A001', 'Petelur', '2025-03-01', 4, 'Blitar', 'K01'),
('A002', 'Pedaging', '2025-03-10', 5, 'Semarang', 'K02'),
('A003', 'Petelur', '2025-03-01', 4, 'Blitar', 'K01'),
('A004', 'Pedaging', '2025-03-01', 4, 'Blitar', 'K02'),
('A005', 'Petelur', '2025-03-10', 5, 'Semarang', 'K01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kandang`
--

CREATE TABLE `kandang` (
  `ID_Kandang` varchar(10) NOT NULL,
  `Nama` varchar(50) DEFAULT NULL,
  `Kapasitas` int(11) DEFAULT NULL,
  `Jenis_Kandang` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kandang`
--

INSERT INTO `kandang` (`ID_Kandang`, `Nama`, `Kapasitas`, `Jenis_Kandang`) VALUES
('K01', 'Kandang A', 50, 'Tertutup'),
('K02', 'Kandang B', 50, 'Tertutup'),
('K03', 'Kandang C', 50, 'Tertutup'),
('K04', 'Kandang D', 50, 'Tertutup'),
('K05', 'Kandang E', 50, 'Tertutup');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pakan`
--

CREATE TABLE `pakan` (
  `ID_Pakan` varchar(10) NOT NULL,
  `Jenis_Pakan` varchar(50) DEFAULT NULL,
  `Waktu` time DEFAULT NULL,
  `Keterangan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pakan`
--

INSERT INTO `pakan` (`ID_Pakan`, `Jenis_Pakan`, `Waktu`, `Keterangan`) VALUES
('PK001', 'BR1', '06:30:00', 'Pagi'),
('PK002', 'BR2', '14:00:00', 'Siang'),
('PK003', 'Jagung Halus', '07:00:00', 'Pakan Utama'),
('PK004', 'BR3', '13:30:00', 'Pakan Siang'),
('PK005', 'Campuran BR1', '17:30:00', 'Pakan Sore');

-- --------------------------------------------------------

--
-- Struktur dari tabel `perawatan`
--

CREATE TABLE `perawatan` (
  `ID_Perawatan` varchar(10) NOT NULL,
  `Tgl` date DEFAULT NULL,
  `Jenis_Rawat` varchar(50) DEFAULT NULL,
  `Keterangan` varchar(100) DEFAULT NULL,
  `ID_Ayam` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `perawatan`
--

INSERT INTO `perawatan` (`ID_Perawatan`, `Tgl`, `Jenis_Rawat`, `Keterangan`, `ID_Ayam`) VALUES
('R001', '2025-03-02', 'Obat Cacing', 'Dosis ringan', 'A002'),
('R002', '2025-03-06', 'Obat Cacing', 'Dosis ringan', 'A004'),
('R003', '2025-03-11', 'Vaksin ND', 'Vaksin Newcastle Disease', 'A001'),
('R004', '2025-03-17', 'Vaksin ND', 'Vaksin Newcastle Disease', 'A003'),
('R005', '2025-03-22', 'Vaksin ND', 'Vaksin Newcastle Disease', 'A005');

-- --------------------------------------------------------

--
-- Struktur dari tabel `petugas`
--

CREATE TABLE `petugas` (
  `ID_Petugas` varchar(10) NOT NULL,
  `Nama` varchar(50) DEFAULT NULL,
  `Jabatan` varchar(50) DEFAULT NULL,
  `Kontak` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `petugas`
--

INSERT INTO `petugas` (`ID_Petugas`, `Nama`, `Jabatan`, `Kontak`) VALUES
('P01', 'Fatina', 'Mandor', '081234567890'),
('P02', 'Siwi', 'Penjaga', '081234567891'),
('P03', 'Azqia', 'Penjaga', '081234567892'),
('P04', 'Tea', 'Perawat', '081234567893'),
('P05', 'Nasywa', 'Perawat', '081234567894');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `ayam`
--
ALTER TABLE `ayam`
  ADD PRIMARY KEY (`ID_Ayam`);

--
-- Indeks untuk tabel `kandang`
--
ALTER TABLE `kandang`
  ADD PRIMARY KEY (`ID_Kandang`);

--
-- Indeks untuk tabel `pakan`
--
ALTER TABLE `pakan`
  ADD PRIMARY KEY (`ID_Pakan`);

--
-- Indeks untuk tabel `perawatan`
--
ALTER TABLE `perawatan`
  ADD PRIMARY KEY (`ID_Perawatan`);

--
-- Indeks untuk tabel `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`ID_Petugas`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
