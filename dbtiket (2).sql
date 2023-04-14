-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Apr 2023 pada 16.48
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbtiket`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_jadwal`
--

CREATE TABLE `tb_jadwal` (
  `id_jadwal` varchar(7) NOT NULL,
  `id_kota` varchar(25) NOT NULL,
  `tanggal_berangkat` date NOT NULL,
  `tanggal_pesan` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_ka`
--

CREATE TABLE `tb_ka` (
  `id_kerata` varchar(7) NOT NULL,
  `nama_kereta` varchar(50) NOT NULL,
  `id_pegawai` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kota`
--

CREATE TABLE `tb_kota` (
  `id_kota` varchar(25) NOT NULL,
  `nama_kota_asal` int(50) NOT NULL,
  `nama_kota_tujuan` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kp`
--

CREATE TABLE `tb_kp` (
  `id_kapal` varchar(7) NOT NULL,
  `nama_kapal` varchar(30) NOT NULL,
  `id_pegawai` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_login`
--

CREATE TABLE `tb_login` (
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  `level` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_maskapai`
--

CREATE TABLE `tb_maskapai` (
  `id_maskapai` varchar(7) NOT NULL,
  `nama_maskapai` varchar(30) NOT NULL,
  `id_pegawai` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pegawai`
--

CREATE TABLE `tb_pegawai` (
  `id_pegawai` varchar(7) NOT NULL,
  `nama_pegawai` varchar(30) NOT NULL,
  `alamat_pegawai` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(30) NOT NULL,
  `tanggallahir` date NOT NULL,
  `notelp` varchar(13) NOT NULL,
  `username` varchar(15) NOT NULL,
  `jabatan` varchar(30) NOT NULL,
  `tanggal_masuk` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pemesanan_ka`
--

CREATE TABLE `tb_pemesanan_ka` (
  `id_pemesananka` varchar(7) NOT NULL,
  `id_user` varchar(7) NOT NULL,
  `id_tiketka` varchar(7) NOT NULL,
  `jumlah_pemesanan` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pemesanan_kp`
--

CREATE TABLE `tb_pemesanan_kp` (
  `id_pemesanankp` varchar(7) NOT NULL,
  `id_user` varchar(7) NOT NULL,
  `id_tiketkp` varchar(7) NOT NULL,
  `jumlah_pemesanan` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pemesanan_pesawat`
--

CREATE TABLE `tb_pemesanan_pesawat` (
  `id_pemesananpesawat` varchar(7) NOT NULL,
  `id_user` varchar(7) NOT NULL,
  `id_tiketpesawat` varchar(7) NOT NULL,
  `jumlah_pemesanan` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_tiket_ka`
--

CREATE TABLE `tb_tiket_ka` (
  `id_tiketka` varchar(7) NOT NULL,
  `id_kereta` varchar(7) NOT NULL,
  `id_jadwal` varchar(7) NOT NULL,
  `harga` varchar(10) NOT NULL,
  `kelas` varchar(20) NOT NULL,
  `stok_tiket_ka` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_tiket_kp`
--

CREATE TABLE `tb_tiket_kp` (
  `id_tiketkp` varchar(7) NOT NULL,
  `id_kapal` varchar(7) NOT NULL,
  `id_jadwal` varchar(7) NOT NULL,
  `harga` varchar(10) NOT NULL,
  `jenis` varchar(15) NOT NULL,
  `kelas` varchar(20) NOT NULL,
  `stok_tiket_kp` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_tiket_pesawat`
--

CREATE TABLE `tb_tiket_pesawat` (
  `id_tiketpesawat` varchar(7) NOT NULL,
  `id_maskapai` varchar(7) NOT NULL,
  `id_jadwal` varchar(7) NOT NULL,
  `harga` varchar(10) NOT NULL,
  `kelas` varchar(20) NOT NULL,
  `stok_tiket_pesawat` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` varchar(7) NOT NULL,
  `nama_user` varchar(30) NOT NULL,
  `username` varchar(15) NOT NULL,
  `alamat_user` varchar(255) NOT NULL,
  `notelp_user` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_jadwal`
--
ALTER TABLE `tb_jadwal`
  ADD PRIMARY KEY (`id_jadwal`),
  ADD UNIQUE KEY `id_kota` (`id_kota`);

--
-- Indeks untuk tabel `tb_ka`
--
ALTER TABLE `tb_ka`
  ADD PRIMARY KEY (`id_kerata`),
  ADD UNIQUE KEY `id_pegawai` (`id_pegawai`);

--
-- Indeks untuk tabel `tb_kota`
--
ALTER TABLE `tb_kota`
  ADD PRIMARY KEY (`id_kota`);

--
-- Indeks untuk tabel `tb_kp`
--
ALTER TABLE `tb_kp`
  ADD PRIMARY KEY (`id_kapal`),
  ADD UNIQUE KEY `id_pegawai` (`id_pegawai`);

--
-- Indeks untuk tabel `tb_login`
--
ALTER TABLE `tb_login`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `tb_maskapai`
--
ALTER TABLE `tb_maskapai`
  ADD PRIMARY KEY (`id_maskapai`),
  ADD UNIQUE KEY `id_pegawai` (`id_pegawai`);

--
-- Indeks untuk tabel `tb_pegawai`
--
ALTER TABLE `tb_pegawai`
  ADD PRIMARY KEY (`id_pegawai`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indeks untuk tabel `tb_pemesanan_ka`
--
ALTER TABLE `tb_pemesanan_ka`
  ADD PRIMARY KEY (`id_pemesananka`),
  ADD UNIQUE KEY `id_user` (`id_user`),
  ADD UNIQUE KEY `id_tiketka` (`id_tiketka`);

--
-- Indeks untuk tabel `tb_pemesanan_kp`
--
ALTER TABLE `tb_pemesanan_kp`
  ADD PRIMARY KEY (`id_pemesanankp`),
  ADD UNIQUE KEY `id_user` (`id_user`),
  ADD UNIQUE KEY `id_tiketkp` (`id_tiketkp`);

--
-- Indeks untuk tabel `tb_pemesanan_pesawat`
--
ALTER TABLE `tb_pemesanan_pesawat`
  ADD PRIMARY KEY (`id_pemesananpesawat`),
  ADD UNIQUE KEY `id_user` (`id_user`),
  ADD UNIQUE KEY `id_tiketpesawat` (`id_tiketpesawat`);

--
-- Indeks untuk tabel `tb_tiket_ka`
--
ALTER TABLE `tb_tiket_ka`
  ADD PRIMARY KEY (`id_tiketka`),
  ADD UNIQUE KEY `id_kereta` (`id_kereta`),
  ADD UNIQUE KEY `id_jadwal` (`id_jadwal`);

--
-- Indeks untuk tabel `tb_tiket_kp`
--
ALTER TABLE `tb_tiket_kp`
  ADD PRIMARY KEY (`id_tiketkp`),
  ADD UNIQUE KEY `id_kapal` (`id_kapal`),
  ADD UNIQUE KEY `id_jadwal` (`id_jadwal`);

--
-- Indeks untuk tabel `tb_tiket_pesawat`
--
ALTER TABLE `tb_tiket_pesawat`
  ADD PRIMARY KEY (`id_tiketpesawat`),
  ADD UNIQUE KEY `id_maskapai` (`id_maskapai`),
  ADD UNIQUE KEY `id_jadwal` (`id_jadwal`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tb_jadwal`
--
ALTER TABLE `tb_jadwal`
  ADD CONSTRAINT `tb_jadwal_ibfk_1` FOREIGN KEY (`id_kota`) REFERENCES `tb_kota` (`id_kota`);

--
-- Ketidakleluasaan untuk tabel `tb_ka`
--
ALTER TABLE `tb_ka`
  ADD CONSTRAINT `tb_ka_ibfk_1` FOREIGN KEY (`id_pegawai`) REFERENCES `tb_pegawai` (`id_pegawai`);

--
-- Ketidakleluasaan untuk tabel `tb_kp`
--
ALTER TABLE `tb_kp`
  ADD CONSTRAINT `tb_kp_ibfk_1` FOREIGN KEY (`id_pegawai`) REFERENCES `tb_pegawai` (`id_pegawai`);

--
-- Ketidakleluasaan untuk tabel `tb_maskapai`
--
ALTER TABLE `tb_maskapai`
  ADD CONSTRAINT `tb_maskapai_ibfk_1` FOREIGN KEY (`id_pegawai`) REFERENCES `tb_pegawai` (`id_pegawai`);

--
-- Ketidakleluasaan untuk tabel `tb_pegawai`
--
ALTER TABLE `tb_pegawai`
  ADD CONSTRAINT `tb_pegawai_ibfk_1` FOREIGN KEY (`username`) REFERENCES `tb_login` (`username`);

--
-- Ketidakleluasaan untuk tabel `tb_pemesanan_ka`
--
ALTER TABLE `tb_pemesanan_ka`
  ADD CONSTRAINT `tb_pemesanan_ka_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `tb_user` (`id_user`),
  ADD CONSTRAINT `tb_pemesanan_ka_ibfk_2` FOREIGN KEY (`id_tiketka`) REFERENCES `tb_tiket_ka` (`id_tiketka`);

--
-- Ketidakleluasaan untuk tabel `tb_pemesanan_kp`
--
ALTER TABLE `tb_pemesanan_kp`
  ADD CONSTRAINT `tb_pemesanan_kp_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `tb_user` (`id_user`),
  ADD CONSTRAINT `tb_pemesanan_kp_ibfk_2` FOREIGN KEY (`id_tiketkp`) REFERENCES `tb_tiket_kp` (`id_tiketkp`);

--
-- Ketidakleluasaan untuk tabel `tb_pemesanan_pesawat`
--
ALTER TABLE `tb_pemesanan_pesawat`
  ADD CONSTRAINT `tb_pemesanan_pesawat_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `tb_user` (`id_user`),
  ADD CONSTRAINT `tb_pemesanan_pesawat_ibfk_2` FOREIGN KEY (`id_tiketpesawat`) REFERENCES `tb_tiket_pesawat` (`id_tiketpesawat`);

--
-- Ketidakleluasaan untuk tabel `tb_tiket_ka`
--
ALTER TABLE `tb_tiket_ka`
  ADD CONSTRAINT `tb_tiket_ka_ibfk_1` FOREIGN KEY (`id_kereta`) REFERENCES `tb_ka` (`id_kerata`),
  ADD CONSTRAINT `tb_tiket_ka_ibfk_2` FOREIGN KEY (`id_jadwal`) REFERENCES `tb_jadwal` (`id_jadwal`);

--
-- Ketidakleluasaan untuk tabel `tb_tiket_kp`
--
ALTER TABLE `tb_tiket_kp`
  ADD CONSTRAINT `tb_tiket_kp_ibfk_1` FOREIGN KEY (`id_kapal`) REFERENCES `tb_kp` (`id_kapal`),
  ADD CONSTRAINT `tb_tiket_kp_ibfk_2` FOREIGN KEY (`id_jadwal`) REFERENCES `tb_jadwal` (`id_jadwal`);

--
-- Ketidakleluasaan untuk tabel `tb_tiket_pesawat`
--
ALTER TABLE `tb_tiket_pesawat`
  ADD CONSTRAINT `tb_tiket_pesawat_ibfk_1` FOREIGN KEY (`id_maskapai`) REFERENCES `tb_maskapai` (`id_maskapai`),
  ADD CONSTRAINT `tb_tiket_pesawat_ibfk_2` FOREIGN KEY (`id_jadwal`) REFERENCES `tb_jadwal` (`id_jadwal`);

--
-- Ketidakleluasaan untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD CONSTRAINT `tb_user_ibfk_1` FOREIGN KEY (`username`) REFERENCES `tb_login` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
