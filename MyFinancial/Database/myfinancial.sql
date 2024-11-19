-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Nov 2024 pada 13.41
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myfinancial`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `budgeting`
--

CREATE TABLE `budgeting` (
  `id_user` int(11) NOT NULL,
  `bulan` enum('Januari','Februari','Maret','April','Mei','Juni','Juli','Agustus','September','Oktober','November','Desember') NOT NULL,
  `tahun` int(11) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `jumlah` decimal(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `budgeting`
--

INSERT INTO `budgeting` (`id_user`, `bulan`, `tahun`, `kategori`, `jumlah`) VALUES
(1, 'November', 2024, 'Makan', 2000000.00),
(1, 'November', 2024, 'Listrik ', 2000000.00),
(1, 'November', 2024, 'Internet', 1000000.00),
(1, 'November', 2024, 'Transportasi', 60000.00),
(2, 'November', 2024, 'Makan-makan', 1000000.00),
(2, 'November', 2024, 'Kembang api', 30000.00),
(4, 'Januari', 2025, 'makan', 700000.00),
(4, 'Januari', 2025, 'minum', 300000.00),
(4, 'Januari', 2025, 'kendaraan', 500000.00),
(4, 'Januari', 2025, 'kado', 1000000.00),
(1, 'November', 2024, 'Belanja', 3000000.00),
(1, 'November', 2024, 'Musik', 50000.00),
(3, 'Agustus', 2024, 'Shopping', 300000.00),
(3, 'Agustus', 2024, 'Listrik', 1000000.00),
(4, 'November', 2024, 'UKT', 6000000.00),
(4, 'November', 2024, 'Jibran', 2000.00),
(4, 'November', 2024, 'Shifa', 1500.00),
(1, 'Agustus', 2024, 'Belanja Bulanan', 1500000.00),
(1, 'Agustus', 2024, 'Transportasi', 500000.00),
(1, 'September', 2024, 'Internet', 300000.00),
(1, 'September', 2024, 'Listrik', 250000.00),
(1, 'Oktober', 2024, 'Pakaian', 1200000.00),
(1, 'Oktober', 2024, 'Elektronik', 800000.00),
(1, 'November', 2024, 'Hiburan', 1500000.00),
(1, 'November', 2024, 'Tabungan', 2000000.00),
(2, 'Agustus', 2024, 'Belanja Bulanan', 1400000.00),
(2, 'Agustus', 2024, 'Transportasi', 450000.00),
(2, 'September', 2024, 'Internet', 320000.00),
(2, 'September', 2024, 'Listrik', 275000.00),
(2, 'Oktober', 2024, 'Pakaian', 1300000.00),
(2, 'Oktober', 2024, 'Elektronik', 900000.00),
(2, 'November', 2024, 'Hiburan', 1600000.00),
(2, 'November', 2024, 'Tabungan', 1800000.00),
(3, 'Agustus', 2024, 'Belanja Bulanan', 1600000.00),
(3, 'Agustus', 2024, 'Transportasi', 480000.00),
(3, 'September', 2024, 'Internet', 300000.00),
(3, 'September', 2024, 'Listrik', 290000.00),
(3, 'Oktober', 2024, 'Pakaian', 1150000.00),
(3, 'Oktober', 2024, 'Elektronik', 850000.00),
(3, 'November', 2024, 'Hiburan', 1400000.00),
(3, 'November', 2024, 'Tabungan', 1900000.00),
(4, 'Agustus', 2024, 'Belanja Bulanan', 1550000.00),
(4, 'Agustus', 2024, 'Transportasi', 500000.00),
(4, 'September', 2024, 'Internet', 310000.00),
(4, 'September', 2024, 'Listrik', 275000.00),
(4, 'Oktober', 2024, 'Pakaian', 1250000.00),
(4, 'Oktober', 2024, 'Elektronik', 950000.00),
(4, 'November', 2024, 'Hiburan', 1300000.00),
(4, 'November', 2024, 'Tabungan', 2200000.00),
(1, 'November', 2024, 'Ulang Tahun Teman', 2000000.00),
(1, 'Oktober', 2023, 'Makanan', 1500000.00),
(1, 'November', 2023, 'Sewa Rumah', 3000000.00),
(2, 'Desember', 2023, 'Transportasi', 500000.00),
(3, 'Januari', 2024, 'Listrik & Air', 800000.00),
(4, 'Februari', 2024, 'Tabungan', 2000000.00),
(1, 'Maret', 2024, 'Asuransi', 1000000.00),
(2, 'April', 2024, 'Hiburan', 600000.00),
(3, 'Mei', 2024, 'Pendidikan', 1200000.00),
(4, 'Juni', 2024, 'Liburan', 3000000.00),
(1, 'Juli', 2024, 'Lain-lain', 500000.00),
(2, 'Agustus', 2024, 'Kesehatan', 700000.00);

-- --------------------------------------------------------

--
-- Struktur dari tabel `id_budget`
--

CREATE TABLE `id_budget` (
  `id_user` int(11) NOT NULL,
  `bulan` enum('Januari','Februari','Maret','April','Mei','Juni','Juli','Agustus','September','Oktober','November','Desember') NOT NULL,
  `tahun` int(11) NOT NULL,
  `id_budget` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `id_budget`
--

INSERT INTO `id_budget` (`id_user`, `bulan`, `tahun`, `id_budget`) VALUES
(1, 'November', 2024, 1),
(2, 'November', 2024, 2),
(4, 'Januari', 2025, 3),
(1, 'November', 2024, 4),
(1, 'November', 2024, 5),
(3, 'Agustus', 2024, 6),
(4, 'November', 2024, 7),
(1, 'November', 2024, 8);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pendapatan`
--

CREATE TABLE `pendapatan` (
  `id_pendapatan` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `jumlah` decimal(15,2) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `deskripsi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pendapatan`
--

INSERT INTO `pendapatan` (`id_pendapatan`, `id_user`, `tanggal`, `jumlah`, `nama`, `deskripsi`) VALUES
(11, 1, '2024-08-15', 5000000.00, 'Gaji Bulanan', 'Gaji untuk bulan Agustus 2024'),
(12, 1, '2024-09-15', 5000000.00, 'Gaji Bulanan', 'Gaji untuk bulan September 2024'),
(13, 1, '2024-10-15', 5000000.00, 'Gaji Bulanan', 'Gaji untuk bulan Oktober 2024'),
(14, 1, '2024-11-15', 5000000.00, 'Gaji Bulanan', 'Gaji untuk bulan November 2024'),
(15, 1, '2024-08-20', 2000000.00, 'Bonus', 'Bonus dari kinerja di kantor'),
(16, 1, '2024-10-05', 1000000.00, 'Freelance', 'Proyek kecil desain grafis'),
(17, 2, '2024-08-25', 2500000.00, 'Proyek Freelance', 'Desain website perusahaan'),
(18, 2, '2024-09-10', 1000000.00, 'Jual Barang', 'Penjualan laptop bekas'),
(19, 2, '2024-09-20', 3000000.00, 'Proyek Freelance', 'Pengembangan aplikasi mobile'),
(20, 2, '2024-10-15', 2000000.00, 'Pendapatan Lain', 'Royalti dari karya seni'),
(21, 2, '2024-10-30', 500000.00, 'Freelance', 'Pekerjaan editing video'),
(22, 2, '2024-11-05', 1500000.00, 'Jasa Pembuatan', 'Jasa pembuatan logo'),
(23, 3, '2024-08-15', 4000000.00, 'Gaji Bulanan', 'Gaji sebagai content creator'),
(24, 3, '2024-09-01', 4500000.00, 'Bonus', 'Bonus dari sponsor'),
(25, 3, '2024-09-25', 2500000.00, 'Freelance', 'Proyek konsultasi pemasaran'),
(26, 3, '2024-10-10', 3500000.00, 'Penghasilan Tambahan', 'Pendapatan dari iklan'),
(27, 3, '2024-11-01', 2000000.00, 'Royalti', 'Royalti dari penjualan e-book'),
(28, 3, '2024-11-15', 500000.00, 'Freelance', 'Pekerjaan desain slide presentasi'),
(29, 4, '2024-08-20', 10000000.00, 'Gaji Bulanan', 'Gaji untuk bulan Agustus 2024'),
(30, 4, '2024-09-15', 10000000.00, 'Gaji Bulanan', 'Gaji untuk bulan September 2024'),
(31, 4, '2024-10-10', 12000000.00, 'Investasi', 'Keuntungan dari investasi saham'),
(32, 4, '2024-10-20', 5000000.00, 'Proyek', 'Proyek konsultan bisnis'),
(33, 4, '2024-11-01', 8000000.00, 'Bonus', 'Bonus dari kerja sama dengan klien besar'),
(34, 4, '2024-11-10', 7000000.00, 'Dividen', 'Pembagian keuntungan saham'),
(35, 1, '2024-11-19', 1000000.00, 'Hadiah', 'Dikasih orang tua'),
(36, 1, '2023-10-10', 5000000.00, 'Gaji', 'Gaji Bulan Oktober 2023'),
(37, 2, '2023-11-15', 7000000.00, 'Proyek Freelance', 'Proyek Freelance Bulan November 2023'),
(38, 3, '2024-02-05', 4500000.00, 'Kerja Part-time', 'Kerja Part-time Bulan Februari 2024'),
(39, 4, '2024-07-20', 8000000.00, 'Proyek Spesial', 'Proyek Spesial Bulan Juli 2024'),
(40, 1, '2024-08-15', 6000000.00, 'Bonus', 'Bonus Kinerja Bulan Agustus 2024'),
(41, 2, '2023-11-25', 3500000.00, 'Side Job', 'Pendapatan tambahan dari pekerjaan sampingan November 2023'),
(42, 3, '2024-01-10', 2000000.00, 'Investasi', 'Hasil keuntungan investasi Januari 2024'),
(43, 4, '2024-03-15', 1000000.00, 'Hadiah', 'Hadiah undian Maret 2024'),
(44, 1, '2024-05-20', 4000000.00, 'Proyek Freelance', 'Pendapatan dari proyek freelance Mei 2024'),
(45, 2, '2024-07-05', 1500000.00, 'Bonus Proyek', 'Bonus dari proyek selesai Juli 2024');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengeluaran`
--

CREATE TABLE `pengeluaran` (
  `id_pengeluaran` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `jumlah` decimal(15,2) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `deskripsi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pengeluaran`
--

INSERT INTO `pengeluaran` (`id_pengeluaran`, `id_user`, `tanggal`, `jumlah`, `nama`, `deskripsi`) VALUES
(1, 1, '2024-11-10', 100000.00, 'Makan di Mall', ''),
(2, 1, '2024-11-17', 20000.00, 'Bensin', ''),
(3, 1, '2024-11-17', 100000.00, 'Nongkrong', 'Nongkrong di mall sama temen, makan minum dan lain lain'),
(4, 3, '2024-11-18', 10000.00, 'sriwed', ''),
(5, 4, '2024-11-19', 8000000.00, 'Handphone', ''),
(6, 1, '2024-08-10', 1500000.00, 'Belanja Bulanan', 'Pembelian kebutuhan rumah tangga'),
(7, 1, '2024-08-20', 500000.00, 'Transportasi', 'Biaya transportasi umum harian'),
(8, 1, '2024-09-05', 300000.00, 'Internet', 'Langganan internet bulanan'),
(9, 1, '2024-09-15', 250000.00, 'Listrik', 'Tagihan listrik bulanan'),
(10, 1, '2024-09-20', 750000.00, 'Makan di Luar', 'Makan malam bersama keluarga'),
(11, 1, '2024-10-10', 1000000.00, 'Pakaian', 'Beli pakaian untuk acara formal'),
(12, 1, '2024-10-20', 800000.00, 'Elektronik', 'Perbaikan smartphone'),
(13, 1, '2024-11-05', 1200000.00, 'Hiburan', 'Liburan singkat ke luar kota'),
(14, 2, '2024-08-12', 1400000.00, 'Belanja Bulanan', 'Pembelian bahan makanan dan kebutuhan'),
(15, 2, '2024-08-25', 450000.00, 'Transportasi', 'Biaya perjalanan harian'),
(16, 2, '2024-09-08', 300000.00, 'Internet', 'Pembayaran tagihan internet'),
(17, 2, '2024-09-17', 250000.00, 'Listrik', 'Tagihan listrik bulanan'),
(18, 2, '2024-09-25', 700000.00, 'Makan di Luar', 'Makan siang bersama teman'),
(19, 2, '2024-10-15', 1200000.00, 'Pakaian', 'Pembelian jaket baru untuk musim hujan'),
(20, 2, '2024-10-22', 900000.00, 'Elektronik', 'Beli mouse dan keyboard baru'),
(21, 2, '2024-11-07', 1500000.00, 'Hiburan', 'Jalan-jalan ke taman hiburan'),
(22, 3, '2024-08-14', 1600000.00, 'Belanja Bulanan', 'Pembelian kebutuhan bulanan rumah'),
(23, 3, '2024-08-28', 480000.00, 'Transportasi', 'Biaya transportasi harian selama sebulan'),
(24, 3, '2024-09-10', 320000.00, 'Internet', 'Tagihan internet bulanan'),
(25, 3, '2024-09-18', 300000.00, 'Listrik', 'Tagihan listrik bulan ini'),
(26, 3, '2024-09-29', 800000.00, 'Makan di Luar', 'Makan malam romantis'),
(27, 3, '2024-10-12', 1100000.00, 'Pakaian', 'Pembelian sepatu baru untuk kerja'),
(28, 3, '2024-10-25', 850000.00, 'Elektronik', 'Servis laptop'),
(29, 3, '2024-11-08', 1400000.00, 'Hiburan', 'Staycation di hotel lokal'),
(30, 4, '2024-08-15', 1550000.00, 'Belanja Bulanan', 'Pembelian sembako dan kebutuhan lainnya'),
(31, 4, '2024-08-30', 500000.00, 'Transportasi', 'Biaya transportasi bulanan'),
(32, 4, '2024-09-12', 310000.00, 'Internet', 'Pembayaran tagihan internet rumah'),
(33, 4, '2024-09-20', 275000.00, 'Listrik', 'Tagihan listrik bulan ini'),
(34, 4, '2024-09-28', 850000.00, 'Makan di Luar', 'Acara makan malam bersama rekan kerja'),
(35, 4, '2024-10-14', 1150000.00, 'Pakaian', 'Pembelian jas untuk acara resmi'),
(36, 4, '2024-10-28', 950000.00, 'Elektronik', 'Pembelian speaker baru'),
(37, 4, '2024-11-10', 1300000.00, 'Hiburan', 'Liburan bersama keluarga ke pantai'),
(38, 1, '2024-11-19', 500000.00, 'Aksesoris Handphone', ''),
(39, 1, '2023-10-05', 2000000.00, 'Belanja Bulanan', 'Pengeluaran untuk belanja bulanan Oktober 2023'),
(40, 2, '2023-11-10', 1500000.00, 'Transportasi', 'Biaya transportasi untuk kerja November 2023'),
(41, 3, '2023-12-20', 500000.00, 'Hiburan', 'Nonton bioskop Desember 2023'),
(42, 4, '2024-01-15', 1000000.00, 'Makan di Luar', 'Makan bersama keluarga Januari 2024'),
(43, 1, '2024-02-08', 300000.00, 'Kopi', 'Ngopi bareng teman Februari 2024'),
(44, 2, '2024-03-12', 4000000.00, 'Tagihan Listrik', 'Pembayaran tagihan listrik Maret 2024'),
(45, 3, '2024-04-25', 800000.00, 'Perbaikan Kendaraan', 'Servis motor April 2024'),
(46, 4, '2024-05-05', 1200000.00, 'Hadiah', 'Beli hadiah ulang tahun Mei 2024'),
(47, 1, '2024-06-15', 5000000.00, 'Liburan', 'Biaya perjalanan liburan Juni 2024'),
(48, 2, '2024-07-10', 200000.00, 'Donasi', 'Sumbangan kegiatan sosial Juli 2024'),
(49, 3, '2024-08-20', 2500000.00, 'Bahan Bakar', 'Pengeluaran bensin Agustus 2024');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `Username` varchar(64) NOT NULL,
  `NamaLengkap` varchar(100) NOT NULL,
  `Password` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `Username`, `NamaLengkap`, `Password`) VALUES
(1, 'nicholasjeremy', 'Nicholas Jeremy', 'admin123'),
(2, 'test', 'test', 'test'),
(3, 'Shifa1', 'Shifa Fanisatuz Zahra', 'admin231'),
(4, 'HaidarPutra', 'Haidar Putra Atmajaya', 'admin321');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `budgeting`
--
ALTER TABLE `budgeting`
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `id_budget`
--
ALTER TABLE `id_budget`
  ADD PRIMARY KEY (`id_budget`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `pendapatan`
--
ALTER TABLE `pendapatan`
  ADD PRIMARY KEY (`id_pendapatan`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `pengeluaran`
--
ALTER TABLE `pengeluaran`
  ADD PRIMARY KEY (`id_pengeluaran`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `id_budget`
--
ALTER TABLE `id_budget`
  MODIFY `id_budget` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `pendapatan`
--
ALTER TABLE `pendapatan`
  MODIFY `id_pendapatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT untuk tabel `pengeluaran`
--
ALTER TABLE `pengeluaran`
  MODIFY `id_pengeluaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `budgeting`
--
ALTER TABLE `budgeting`
  ADD CONSTRAINT `budgeting_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `id_budget`
--
ALTER TABLE `id_budget`
  ADD CONSTRAINT `id_budget_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pendapatan`
--
ALTER TABLE `pendapatan`
  ADD CONSTRAINT `pendapatan_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pengeluaran`
--
ALTER TABLE `pengeluaran`
  ADD CONSTRAINT `pengeluaran_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
