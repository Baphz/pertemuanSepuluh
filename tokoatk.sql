-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 15 Jun 2025 pada 00.32
-- Versi server: 9.3.0
-- Versi PHP: 8.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tokoatk`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id` varchar(16) NOT NULL,
  `nama` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `jenis` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `harga` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id`, `nama`, `jenis`, `harga`) VALUES
('ATK-001', 'Penggaris - 30 cm', 'Alat Tulis', 3000),
('ATK-002', 'Buku Tulis B5 - 50 lembar', 'Kertas', 5000),
('ATK-003', 'Pensil - HB', 'Alat Tulis', 2000),
('ATK-004', 'Pulpen - 0.5 mm', 'Alat Tulis', 3000),
('ATK-005', 'Penghapus - Putih', 'Alat Tulis', 1000),
('ATK-006', 'Tip-Ex - Botol', 'Alat Tulis', 4000),
('ATK-007', 'Spidol - Merah', 'Pewarna', 3500),
('ATK-008', 'Stabilo - Kuning', 'Pewarna', 6000),
('ATK-009', 'Kertas HVS - A4 70gsm', 'Kertas', 40000),
('ATK-010', 'Map Plastik - Isi 10', 'Penyimpanan', 7500),
('ATK-011', 'Binder - B5', 'Penyimpanan', 10000),
('ATK-012', 'Sticky Notes - 3x3 inch', 'Aksesoris', 5000),
('ATK-013', 'Pengikat Kertas - Isi 12', 'Aksesoris', 1500),
('ATK-014', 'Lakban - Coklat', 'Aksesoris', 8000),
('ATK-015', 'Amplop - Coklat A4', 'Kertas', 3000),
('ATK-016', 'Kalkulator - Sederhana', 'Perlengkapan Kantor', 35000),
('ATK-017', 'Rautan - Manual', 'Alat Tulis', 2500),
('ATK-018', 'Kertas Folio - Bergaris', 'Kertas', 10000),
('ATK-019', 'Klip Kertas - Isi 100', 'Aksesoris', 5000),
('ATK-020', 'Lem Kertas - Stick', 'Alat Tulis', 3000),
('ATK-021', 'Penggaris - 15 cm', 'Alat Tulis', 2000),
('ATK-022', 'Buku Tulis A5 - 100 lembar', 'Kertas', 8000),
('ATK-023', 'Pulpen - Hitam', 'Alat Tulis', 3000),
('ATK-024', 'Spidol - Hitam', 'Pewarna', 3500),
('ATK-025', 'Map Kancing - A4', 'Penyimpanan', 5000),
('ATK-026', 'Sticky Notes - Isi 5 warna', 'Aksesoris', 6000),
('ATK-027', 'Lem Kertas - Cair', 'Alat Tulis', 4000),
('ATK-028', 'Kertas HVS - F4 80gsm', 'Kertas', 50000),
('ATK-029', 'Lakban - Bening', 'Aksesoris', 8000),
('ATK-030', 'Kalkulator - Besar', 'Perlengkapan Kantor', 45000),
('ATK-031', 'Penghapus - Warna', 'Alat Tulis', 1500),
('ATK-032', 'Pensil - 2B', 'Alat Tulis', 2500),
('ATK-033', 'Buku Gambar A4 - 20 lembar', 'Kertas', 7000),
('ATK-034', 'Spidol - Biru', 'Pewarna', 3500),
('ATK-035', 'Map Kertas - Isi 10', 'Penyimpanan', 6000),
('ATK-036', 'Pulpen - Biru', 'Alat Tulis', 3000),
('ATK-037', 'Binder Clip - 32mm', 'Aksesoris', 4000),
('ATK-038', 'Sticky Notes - Panjang', 'Aksesoris', 5000),
('ATK-039', 'Rautan - Otomatis', 'Alat Tulis', 6000),
('ATK-040', 'Lakban - Warna', 'Aksesoris', 9000),
('ATK-041', 'Kertas Kado - Isi 10', 'Kertas', 12000),
('ATK-042', 'Buku Agenda - A5', 'Kertas', 20000),
('ATK-043', 'Pulpen Gel - Hitam', 'Alat Tulis', 4000),
('ATK-044', 'Spidol Whiteboard - Hitam', 'Pewarna', 5000),
('ATK-045', 'Pita Printer - Epson', 'Perlengkapan Kantor', 15000),
('ATK-046', 'Buku Kwitansi - 2 rangkap', 'Kertas', 7000),
('ATK-047', 'Kertas Label - A4', 'Kertas', 10000),
('ATK-048', 'Buku Nota - 3 rangkap', 'Kertas', 10000),
('ATK-049', 'Klip Jumbo - Isi 50', 'Aksesoris', 4000),
('ATK-050', 'Amplop - Coklat B4', 'Kertas', 4000),
('ATK-051', 'Lem Fox - 300 ml', 'Alat Tulis', 6000),
('ATK-052', 'Pulpen - Merah', 'Alat Tulis', 3000),
('ATK-053', 'Kertas HVS A4 - 500 lembar', 'Kertas', 75000),
('ATK-054', 'Kalkulator - Saku', 'Perlengkapan Kantor', 25000),
('ATK-055', 'Binder Clip - 19mm', 'Aksesoris', 3000),
('ATK-056', 'Spidol Warna - Isi 12', 'Pewarna', 15000),
('ATK-057', 'Kertas Folio - Kosong', 'Kertas', 10000),
('ATK-058', 'Klip Kertas - Warna', 'Aksesoris', 5500),
('ATK-059', 'Buku Catatan - A6', 'Kertas', 5000),
('ATK-060', 'Pulpen - Isi Ulang', 'Alat Tulis', 3500),
('ATK-061', 'Amplop - Putih', 'Kertas', 2000),
('ATK-062', 'Buku Kas - A5', 'Kertas', 7000),
('ATK-063', 'Map Folder - Isi 10', 'Penyimpanan', 6000),
('ATK-064', 'Lem UHU - Stick', 'Alat Tulis', 5000),
('ATK-065', 'Sticky Notes - Warna Pastel', 'Aksesoris', 5000),
('ATK-066', 'Spidol CD - Hitam', 'Pewarna', 5000),
('ATK-067', 'Buku Harian - A6', 'Kertas', 9000),
('ATK-068', 'Penghapus - Karet', 'Alat Tulis', 1500),
('ATK-069', 'Pensil Mekanik - 0.5mm', 'Alat Tulis', 5000),
('ATK-070', 'Isi Pensil - 0.5mm', 'Alat Tulis', 2000),
('ATK-071', 'Kertas Stiker - A4', 'Kertas', 12000),
('ATK-072', 'Map Kancing - B5', 'Penyimpanan', 5000),
('ATK-073', 'Lem Fox - Tube', 'Alat Tulis', 3000),
('ATK-074', 'Pulpen Gel - Biru', 'Alat Tulis', 4000),
('ATK-075', 'Lakban - Besar', 'Aksesoris', 10000),
('ATK-076', 'Buku Nota - A6', 'Kertas', 5000),
('ATK-077', 'Spidol Warna - Isi 6', 'Pewarna', 10000),
('ATK-078', 'Pulpen - 2 warna', 'Alat Tulis', 5000),
('ATK-079', 'Kertas Origami - Isi 50', 'Kertas', 6000),
('ATK-080', 'Amplop - Ukuran kecil', 'Kertas', 1500),
('ATK-081', 'Buku Kwitansi - 3 rangkap', 'Kertas', 9000),
('ATK-082', 'Pensil - Warna', 'Pewarna', 7500),
('ATK-083', 'Lem Kertas - Botol', 'Alat Tulis', 4000),
('ATK-084', 'Kertas HVS A3 - 70gsm', 'Kertas', 60000),
('ATK-085', 'Klip Kertas - Isi 25', 'Aksesoris', 3000),
('ATK-086', 'Buku Tulis Spiral - A5', 'Kertas', 8000),
('ATK-087', 'Penghapus - Dua sisi', 'Alat Tulis', 2000),
('ATK-088', 'Map Gantung - Isi 5', 'Penyimpanan', 7000),
('ATK-089', 'Pulpen Gel - Merah', 'Alat Tulis', 4000),
('ATK-090', 'Buku Sketsa - A4', 'Kertas', 12000),
('ATK-091', 'Pensil - Isi 2', 'Alat Tulis', 4000),
('ATK-092', 'Map Plastik - Warna', 'Penyimpanan', 6000),
('ATK-093', 'Pulpen 4 warna - Klik', 'Alat Tulis', 8000),
('ATK-094', 'Lakban Kain - Hitam', 'Aksesoris', 11000),
('ATK-095', 'Kertas Transfer - A4', 'Kertas', 15000),
('ATK-096', 'Stabilo - Isi 4 warna', 'Pewarna', 18000),
('ATK-097', 'Binder Clip - 51mm', 'Aksesoris', 6000),
('ATK-098', 'Sticky Notes - Transparan', 'Aksesoris', 5500),
('ATK-099', 'Spidol Permanen - Hitam', 'Pewarna', 4000),
('ATK-100', 'Buku Jurnal - B5', 'Kertas', 10000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `salesd`
--

CREATE TABLE `salesd` (
  `id` int NOT NULL,
  `salesId` varchar(16) DEFAULT NULL,
  `barangId` varchar(16) DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `harga` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `salesd`
--

INSERT INTO `salesd` (`id`, `salesId`, `barangId`, `qty`, `harga`) VALUES
(21, '2506142201136', 'ATK-002', 2, 5000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `salesm`
--

CREATE TABLE `salesm` (
  `id` varchar(16) NOT NULL,
  `waktu` datetime DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `salesm`
--

INSERT INTO `salesm` (`id`, `waktu`, `username`) VALUES
('2506142201136', NULL, 'bapin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `stockd`
--

CREATE TABLE `stockd` (
  `id` int NOT NULL,
  `stockId` varchar(16) DEFAULT NULL,
  `barangId` varchar(16) DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `harga` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `stockm`
--

CREATE TABLE `stockm` (
  `id` varchar(16) NOT NULL,
  `waktu` datetime DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `username` varchar(20) NOT NULL,
  `fullname` varchar(30) DEFAULT NULL,
  `password` char(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`username`, `fullname`, `password`) VALUES
('admin', 'Administrator', '202cb962ac59075b964b07152d234b70'),
('bapin', 'Baphien', '19c175c4789c5971caa3c84277d5455e');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `salesd`
--
ALTER TABLE `salesd`
  ADD PRIMARY KEY (`id`),
  ADD KEY `salesId` (`salesId`),
  ADD KEY `barangId` (`barangId`);

--
-- Indeks untuk tabel `salesm`
--
ALTER TABLE `salesm`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`);

--
-- Indeks untuk tabel `stockd`
--
ALTER TABLE `stockd`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stockId` (`stockId`),
  ADD KEY `barangId` (`barangId`);

--
-- Indeks untuk tabel `stockm`
--
ALTER TABLE `stockm`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `salesd`
--
ALTER TABLE `salesd`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `stockd`
--
ALTER TABLE `stockd`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `salesd`
--
ALTER TABLE `salesd`
  ADD CONSTRAINT `salesd_ibfk_1` FOREIGN KEY (`salesId`) REFERENCES `salesm` (`id`),
  ADD CONSTRAINT `salesd_ibfk_2` FOREIGN KEY (`barangId`) REFERENCES `barang` (`id`);

--
-- Ketidakleluasaan untuk tabel `salesm`
--
ALTER TABLE `salesm`
  ADD CONSTRAINT `salesm_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`);

--
-- Ketidakleluasaan untuk tabel `stockd`
--
ALTER TABLE `stockd`
  ADD CONSTRAINT `stockd_ibfk_1` FOREIGN KEY (`stockId`) REFERENCES `stockm` (`id`),
  ADD CONSTRAINT `stockd_ibfk_2` FOREIGN KEY (`barangId`) REFERENCES `barang` (`id`);

--
-- Ketidakleluasaan untuk tabel `stockm`
--
ALTER TABLE `stockm`
  ADD CONSTRAINT `stockm_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
