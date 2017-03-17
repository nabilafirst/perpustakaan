-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Inang: 127.0.0.1
-- Waktu pembuatan: 17 Mar 2017 pada 12.13
-- Versi Server: 5.5.27
-- Versi PHP: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Basis data: `db_perpustakaan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', '21232f297a57a5a743894a0e4'),
('admin', 'admin'),
('a', 'a'),
('nabila', 'nabila');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman`
--

CREATE TABLE IF NOT EXISTS `peminjaman` (
  `id_pinjam` varchar(50) NOT NULL,
  `no_anggota` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `tgl_pinjam` varchar(50) NOT NULL,
  `jenis` varchar(50) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`id_pinjam`),
  UNIQUE KEY `id_pinjam` (`id_pinjam`),
  UNIQUE KEY `no_anggota` (`no_anggota`),
  UNIQUE KEY `nama` (`nama`),
  UNIQUE KEY `id_pinjam_2` (`id_pinjam`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `peminjaman`
--

INSERT INTO `peminjaman` (`id_pinjam`, `no_anggota`, `nama`, `alamat`, `tgl_pinjam`, `jenis`, `judul`, `status`) VALUES
('1', '123', 'nabila', 'malang', '02-03-2017', 'Novel', 'dear nathan', 'Kembali'),
('2', '1234', 'Saskia', 'Dampit', '04-03-2017', 'Komik', 'NARUTO', 'Belum Kembali'),
('3', '1235', 'Lala', 'Malang', '11-03-2017', 'Komik', 'doraemon', 'Belum Kembali');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengembalian`
--

CREATE TABLE IF NOT EXISTS `pengembalian` (
  `id_pinjam` varchar(50) NOT NULL,
  `no_anggota` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `tgl_pinjam` varchar(50) NOT NULL,
  `jenis` varchar(50) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `tgl_kembali` varchar(50) NOT NULL,
  `denda` varchar(50) NOT NULL,
  PRIMARY KEY (`id_pinjam`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengembalian`
--

INSERT INTO `pengembalian` (`id_pinjam`, `no_anggota`, `nama`, `alamat`, `tgl_pinjam`, `jenis`, `judul`, `tgl_kembali`, `denda`) VALUES
('2', '1234', 'Lala', 'Dampit', '04-03-2017', 'Komik', 'NARUTO', '16-03-2017', '18000'),
('3', '1235', 'Lala', 'Malang', '11-03-2017', 'Komik', 'doraemon', '12-03-2017', '-');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
