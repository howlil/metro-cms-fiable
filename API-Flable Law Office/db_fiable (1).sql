-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Mar 2024 pada 15.18
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_fiable`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` char(36) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(256) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `created_at`, `updated_at`) VALUES
('a3639d86-26a6-4a5a-9c97-22886aa050a2', 'adminFiable', '$2b$10$sm0pTToN.vaETUl7iW1d/.gkK/s.0kbddEI87Macm8WYIaS32OO.a', '2024-02-27 01:05:55', '2024-02-27 01:05:55');

-- --------------------------------------------------------

--
-- Struktur dari tabel `galeri`
--

CREATE TABLE `galeri` (
  `id_galeri` char(36) NOT NULL,
  `foto_galeri` varchar(256) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `galeri`
--

INSERT INTO `galeri` (`id_galeri`, `foto_galeri`, `created_at`, `updated_at`) VALUES
('7564b865-3550-4d1c-aa7e-b6ed0b1936a5', 'error.png', '2024-02-27 14:17:47', '2024-02-27 14:17:47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` char(36) NOT NULL,
  `nama_kategori` varchar(100) NOT NULL,
  `slug` varchar(256) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `slug`, `created_at`, `updated_at`) VALUES
('18c34980-acfe-4f31-8b83-3326e15f48d5', 'ini nama kategori', 'ini lsug aktoegri', '2024-03-01 13:43:48', '2024-03-01 13:43:48'),
('bf06e6c7-6c8f-424c-bf8f-d90892e5219c', 'habis di edit', 'edit woi', '2024-02-27 13:09:56', '2024-02-27 13:18:02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `posisi`
--

CREATE TABLE `posisi` (
  `id_posisi` char(36) NOT NULL,
  `nama_posisi` varchar(256) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `posisi`
--

INSERT INTO `posisi` (`id_posisi`, `nama_posisi`, `created_at`, `updated_at`) VALUES
('4dc2c971-fca6-4f71-9bc3-85152163f260', 'posisi di edit bro', '2024-03-01 17:01:08', '2024-03-01 17:06:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `postingan`
--

CREATE TABLE `postingan` (
  `id_postingan` char(36) NOT NULL,
  `judul` longtext NOT NULL,
  `slug` varchar(256) NOT NULL,
  `id_kategori` char(36) NOT NULL,
  `foto_postingan` varchar(256) NOT NULL,
  `body` longtext NOT NULL,
  `id_admin` char(36) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `postingan`
--

INSERT INTO `postingan` (`id_postingan`, `judul`, `slug`, `id_kategori`, `foto_postingan`, `body`, `id_admin`, `created_at`, `updated_at`) VALUES
('b662deee-3d1f-4ea2-87b2-ca3c6a361235', 'ini judul habis di edit', 'slug habis di edit', 'bf06e6c7-6c8f-424c-bf8f-d90892e5219c', 'Nadini Annisa Byant.jpeg', 'body habis di edit', 'a3639d86-26a6-4a5a-9c97-22886aa050a2', '2024-03-03 12:23:49', '2024-03-03 12:25:36');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tim`
--

CREATE TABLE `tim` (
  `id_team` char(36) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `spesialis` varchar(256) NOT NULL,
  `id_posisi` char(36) NOT NULL,
  `deskripsi` longtext NOT NULL,
  `foto_tim` varchar(256) NOT NULL,
  `portofolio` varchar(256) NOT NULL,
  `instagram` varchar(100) NOT NULL,
  `linkedln` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tim`
--

INSERT INTO `tim` (`id_team`, `nama`, `spesialis`, `id_posisi`, `deskripsi`, `foto_tim`, `portofolio`, `instagram`, `linkedln`, `created_at`, `updated_at`) VALUES
('6da62d70-f79f-478f-a84b-48593b222cc3', 'nadini', 'kedokteran', '4dc2c971-fca6-4f71-9bc3-85152163f260', 'ini deskripsi', 'bukti notifikasi.jpg', '58-Article Text-199-1-10-20200503.pdf', 'ini baruu', 'dinibynt', '2024-03-03 11:41:06', '2024-03-03 11:52:45');

-- --------------------------------------------------------

--
-- Struktur dari tabel `token`
--

CREATE TABLE `token` (
  `id_token` int(11) NOT NULL,
  `token` varchar(256) NOT NULL,
  `id_admin` char(36) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `expires_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `token`
--

INSERT INTO `token` (`id_token`, `token`, `id_admin`, `created_at`, `expires_at`) VALUES
(2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6ImFkbWluRmlhYmxlIiwiaWRfYWRtaW4iOiJhMzYzOWQ4Ni0yNmE2LTRhNWEtOWM5Ny0yMjg4NmFhMDUwYTIiLCJpYXQiOjE3MDkwMzIwMzAsImV4cCI6MTcwOTYzNjgzMH0.KtzzbGc3-sK3adMiAELBKgnLzcEoERJvOibVmswHQxs', 'a3639d86-26a6-4a5a-9c97-22886aa050a2', '2024-02-27 11:06:55', '2024-03-05'),
(3, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6ImFkbWluRmlhYmxlIiwiaWRfYWRtaW4iOiJhMzYzOWQ4Ni0yNmE2LTRhNWEtOWM5Ny0yMjg4NmFhMDUwYTIiLCJpYXQiOjE3MDkzMDA1OTMsImV4cCI6MTcwOTkwNTM5M30.iTmVDMvW4SqfkMrWWoFju8evh5awbzRDucyy6ZIEgG8', 'a3639d86-26a6-4a5a-9c97-22886aa050a2', '2024-03-01 13:42:54', '2024-03-08');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id_galeri`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `posisi`
--
ALTER TABLE `posisi`
  ADD PRIMARY KEY (`id_posisi`);

--
-- Indeks untuk tabel `postingan`
--
ALTER TABLE `postingan`
  ADD PRIMARY KEY (`id_postingan`),
  ADD KEY `id_kategori` (`id_kategori`),
  ADD KEY `id_admin` (`id_admin`);

--
-- Indeks untuk tabel `tim`
--
ALTER TABLE `tim`
  ADD PRIMARY KEY (`id_team`),
  ADD KEY `id_posisi` (`id_posisi`);

--
-- Indeks untuk tabel `token`
--
ALTER TABLE `token`
  ADD PRIMARY KEY (`id_token`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `token`
--
ALTER TABLE `token`
  MODIFY `id_token` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `postingan`
--
ALTER TABLE `postingan`
  ADD CONSTRAINT `postingan_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `postingan_ibfk_2` FOREIGN KEY (`id_admin`) REFERENCES `admin` (`id_admin`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tim`
--
ALTER TABLE `tim`
  ADD CONSTRAINT `tim_ibfk_1` FOREIGN KEY (`id_posisi`) REFERENCES `posisi` (`id_posisi`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;