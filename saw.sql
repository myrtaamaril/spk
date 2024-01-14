/*
 Navicat Premium Data Transfer

 Source Server         : mysqllokal
 Source Server Type    : MySQL
 Source Server Version : 100138 (10.1.38-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : saw

 Target Server Type    : MySQL
 Target Server Version : 100138 (10.1.38-MariaDB)
 File Encoding         : 65001

 Date: 13/01/2024 18:44:09
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbalternatif
-- ----------------------------
DROP TABLE IF EXISTS `tbalternatif`;
CREATE TABLE `tbalternatif`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `idkriteriaDet` int NULL DEFAULT NULL,
  `tanggal` date NULL DEFAULT NULL,
  `nis` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `uraian` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `inputon` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  `inputby` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbalternatif
-- ----------------------------
INSERT INTO `tbalternatif` VALUES (1, 1, '2024-01-13', '122333444455555666666', 'tesssssssssssssss', '2024-01-13 14:15:30', 'alfi');

-- ----------------------------
-- Table structure for tbanggota
-- ----------------------------
DROP TABLE IF EXISTS `tbanggota`;
CREATE TABLE `tbanggota`  (
  `noanggota` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tanggal_daftar` date NULL DEFAULT NULL,
  `tanggal_lahir` date NULL DEFAULT NULL,
  `alamat` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `status` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'AKTIF',
  `Keterangan` varchar(160) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `inputby` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `inputon` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  `id_anggota` int NOT NULL AUTO_INCREMENT,
  INDEX `id_anggota`(`id_anggota` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of tbanggota
-- ----------------------------
INSERT INTO `tbanggota` VALUES ('AGT-00001', 'alfi', '2023-06-04', '1994-04-07', 'palasari', 'AKTIF', 'baru', 'alfi', '2023-06-04 21:15:41', 1);

-- ----------------------------
-- Table structure for tbavatar
-- ----------------------------
DROP TABLE IF EXISTS `tbavatar`;
CREATE TABLE `tbavatar`  (
  `AVATAR` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `FOTO` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `JENIS_KELAMIN` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ID` int NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of tbavatar
-- ----------------------------
INSERT INTO `tbavatar` VALUES ('female1.png', 'female1_1.png', 'p', 1);
INSERT INTO `tbavatar` VALUES ('female2.png', 'female2_1.png', 'p', 2);
INSERT INTO `tbavatar` VALUES ('female3.png', 'female3_1.png	', 'p', 3);
INSERT INTO `tbavatar` VALUES ('female4.png', 'female4_1.png', 'p', 4);
INSERT INTO `tbavatar` VALUES ('male1.png', 'male1_1.png', 'l', 1);
INSERT INTO `tbavatar` VALUES ('male2.png', 'male2_1.png', 'l', 2);
INSERT INTO `tbavatar` VALUES ('male3.png', 'male3_1.png', 'l', 3);
INSERT INTO `tbavatar` VALUES ('male4.png', 'male4_1.png', 'l', 4);

-- ----------------------------
-- Table structure for tbcustomer
-- ----------------------------
DROP TABLE IF EXISTS `tbcustomer`;
CREATE TABLE `tbcustomer`  (
  `id_customer` int NOT NULL AUTO_INCREMENT,
  `companyname` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `alamat` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `tlp` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `owner` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `logocompany` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  INDEX `id`(`id_customer` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of tbcustomer
-- ----------------------------
INSERT INTO `tbcustomer` VALUES (1, 'SMPN 1 BALEENDAH', '2asdsad\r\n', '022', 'asep', 'logo.png');

-- ----------------------------
-- Table structure for tbdaftar_buku
-- ----------------------------
DROP TABLE IF EXISTS `tbdaftar_buku`;
CREATE TABLE `tbdaftar_buku`  (
  `Judul_Buku` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Penulis` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Kode` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sub_judul` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Jumlah_Buku` double NULL DEFAULT NULL,
  `id_buku` int NOT NULL AUTO_INCREMENT,
  `id_kelompok` int NULL DEFAULT NULL,
  `userlog` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `updatedate` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_buku`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1330 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of tbdaftar_buku
-- ----------------------------
INSERT INTO `tbdaftar_buku` VALUES ('Bisnis Makanan & Minuman ala Gerobak', 'Amanda Michelia', '330', '', 5, 1, 1, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('101+ Ide Jitu Peluang Usaha', 'Tim Gemini Writer', '330', NULL, 4, 2, 1, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Jangan Takut Mulai Bisnis', 'Richie Indrajaya', '330', NULL, 4, 3, 1, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Peluang Usaha Tanpa Modal Besar', 'Budi Sulistyo', '330', NULL, 1, 4, 1, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Cara Praktis Mengelola Toko dan Supermarket', 'Kuswara', '330', NULL, 2, 5, 1, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Melirik Potensi Desa Menuju Masyarakat Sejahtera', 'Dindin Nasrudin', '330', NULL, 4, 6, 1, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Menumbuhkan Jiwa Enterpreneur dalam Diri Siswa', 'Donni Juni Priansa', '330', NULL, 2, 7, 1, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Memulai Usaha dari Nol', 'Yudi Purbowinanto', '330', NULL, 2, 8, 1, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Peluang Pengembangan Usaha Kecil dan Menengah Swasta', 'Karnaen A. Perwataatmadja', '330', NULL, 2, 9, 1, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Salesmanship & Ilmu Seni', 'Sotar Baduara dan Sabar Martin Sirait', '330', NULL, 2, 10, 1, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Merintis Usaha Kuliner', 'Sutie Rahyono dan Suhardjo', '330', NULL, 2, 11, 1, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Peluang Bisnis untuk Pelajar', 'Tim Cahaya', '330', NULL, 2, 12, 1, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mengenal Lebih Dekat Tanaman Mendong', 'Enceng Imron', '330', NULL, 2, 13, 1, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Merintis Usaha Jamur untuk Rakyat', 'Hadi Permana', '330', NULL, 2, 14, 1, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Wirausaha Kerajinan Bambu ', 'Sardhi Duryatmo', '330', NULL, 1, 15, 1, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Ide Bisnis bagi Remaja', 'Supardi', '330', NULL, 2, 16, 1, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Kisah Ilmuwan & Pebisnis Genius', 'Andromeda Abrar', '330', NULL, 3, 17, 1, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Seluk Beluk Promosi & Bisnis', 'Niken Tri Hapsari', '330', NULL, 5, 18, 1, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Uang', 'Achmad Buchory', '330', NULL, 2, 19, 1, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Berbisnis Barang Bekas', 'Ariyanto, Hani Isnaini Maghfirah', '330', NULL, 2, 20, 1, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Beternak Lebah Peluang Bisnis Semua Orang', 'Bambang Marhiyanto', '330', NULL, 2, 21, 1, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Koperasi Syariah', 'Fitri Nurhartati dan Ika Saniyati Rahmaniyah', '330', NULL, 1, 22, 1, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mengenal Lebih Dekat Lembaga Ekonomi Internasional', 'Triyanto EN', '330', NULL, 2, 23, 1, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mengenal Ekspor dan Impor', 'Agung Feryanto', '330', NULL, 1, 24, 1, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pengetahuan tentang Mata Uang', 'Irwan Kusdinar', '330', NULL, 2, 25, 1, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pengetahuan tentang Uang', NULL, '330', NULL, 1, 26, 1, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Uang dan Sejarahnya', 'Yoni Yuniarto', '330', NULL, 2, 27, 1, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Koperasi Saka Guru Perekonomian Indonesia', 'Triyanto', '330', NULL, 1, 28, 1, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Barter', 'Achmad Buchory', '330', NULL, 2, 29, 1, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Bank', 'Achmad Buchory', '330', NULL, 2, 30, 1, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Semua orang Bisa Sukses Berwirausaha', 'Siti Nurhasanah', '330', NULL, 4, 31, 1, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Analisis Food Product', 'Bartono', '330', NULL, 2, 32, 1, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Uang dan Pekerjaan', 'Devi Andriana', '330', NULL, 4, 33, 1, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Public Relations dalam Teori dan Praktek', 'Rachmadi', '330', NULL, 1, 34, 1, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Viral Marketing', 'Ali Arifin', '330', NULL, 2, 35, 1, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mahir Akuntansi dengan Cara Sederhana', 'Siti Nurhasanah', '330', NULL, 3, 36, 1, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Manajemen Keuangan', 'E. A. Abd\'rachim', '330', NULL, 2, 37, 1, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Manajemen Produksi', 'E. A . Abd\'rachim', '330', NULL, 4, 38, 1, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Manajemen Warung Buah & Sayur Olahan', 'Totok Sudarto', '330', NULL, 2, 39, 1, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Kewirausahaan', 'Mardiyatmo', '330', NULL, 2, 40, 1, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Manajemen Kepemimpinan Intrapreneur Pendidikan Menengah Kejuruan', 'Hari Suderadjat', '330', NULL, 8, 41, 1, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Berkembang Melampaui Rutinitas', 'Fajar Nugroho', '2570', NULL, 10, 42, 2, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Logika, Etika, dan Estetika', 'Sudarsih', '2570', NULL, 10, 43, 2, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Menjadi Kritis It’s Not A Crime', 'Amri Gunawan Wibisono', '2570', NULL, 8, 44, 2, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Manajemen Peningkatan Mutu Berbasis Sekolah', 'Departemen Pendidikan Nasional', '370', NULL, 2, 45, 2, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Internet untuk Guru', 'Cepi Triatna dan Salwah', '370', NULL, 2, 46, 2, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Kemahiran Interpersonal Guru', 'Ismail Kusmayadi', '370', NULL, 4, 47, 2, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pembinaan  dan Pengembangan Klub Bakat, Minat, dan Kreatifitas Siswa SLTP', 'Departemen Pendidikan Nasional', '370', NULL, 1, 48, 2, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mengajar Tanpa Bosan: Kiat-kiat Terbaik untuk Guru', 'Tiana Juliansyah', '370', NULL, 2, 49, 2, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Bagaimana Menjadi Guru Kreatif?', 'Deni Koswara Halimah', '370', NULL, 3, 50, 2, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Akuntabilitas Kinerja Pendidikan', 'Hasannudin Buhory', '370', NULL, 2, 51, 2, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Konsep Mutu dan Manajemen Pendidikan Vokasi', 'Widiyarti dan Suranto', '370', NULL, 2, 52, 2, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Menjadi Guru Kreatif', 'Mustiawati', '370', NULL, 2, 53, 2, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Panduan Pendidik: Keterampilan Membelajarkan Secara Terbatas', 'Nurbaya Kaco dan Alimin Umar', '370', NULL, 1, 54, 2, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Panduan Pendidik: Penelitian Tindakan Kelas', 'Kasihani Kasbolah dan I Wayan Sukarnya.', '370', NULL, 1, 55, 2, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Panduan Pendidik: Media Pendidikan IPA Membuat Muridku Pintar', 'Andrian', '370', NULL, 1, 56, 2, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pedagogi: Strategi dan Teknik Mengajar dengan Berkesan', 'Maylanny Christine', '370', NULL, 2, 57, 2, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('9 Kebiasaan Kepala Sekolah Efektif', 'Deni Koswara Halimah', '370', NULL, 2, 58, 2, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mengenal Sertifikasi Guru di Indonesia', 'Muchlas Samani', '370', NULL, 2, 59, 2, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Guru Sebagai Fasilitator', 'Eka Prihatin', '370', NULL, 1, 60, 2, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Aku Bangga Guruku Hebat!', 'Ismail Kusmayadi dan Elly Herlinawati', '370', NULL, 1, 61, 2, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pedoman Gerakan Disiplin Nasional Siswa', 'Departemen Pendidikan dan Kebudayaan', NULL, NULL, NULL, 62, 2, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Wikipedia untuk Guru', 'Taufani', '370', NULL, 2, 63, 2, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Seluk Beluk Profesi Guru', 'Deni Koswara dan Halimah', '370', NULL, 1, 64, 2, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Kepemimpinan (Profesional) Kepala Sekolah', 'Dadi Permadi', '370', NULL, 2, 65, 2, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Petunjuk Pelaksanaan Bimbingan dan Konseling', 'Departemen Pendidikan dan Kebudayaan ', '370', NULL, 1, 66, 2, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Profesionalisme Guru dalam Pembelajaran', 'Zainal Aqib', '370', NULL, 1, 67, 2, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Penelitian Tindakan Kelas (PTK)', 'Alimin Umar dan Nurbaya Kaco', '370', NULL, 1, 68, 2, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Bagaimana Menjadi Guru Inspiratif?', 'Elin Rosalin', '370', NULL, 1, 69, 2, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pembelajaran yang Efektif', 'Jamaludin', '370', NULL, 3, 70, 2, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Manajemen Pendidikan untuk Peningkatan Daya Saing Bangsa', 'Yana Wardhana', '370', NULL, 3, 71, 2, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pelangi Pendidikan: Geliat Mutu SMP', 'Departemen Pendidikan Nasional', '370', NULL, 1, 72, 2, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Petunjuk Teknis: Penggunaan dan Pertanggungjawaban Keuangan Dana BOS untuk SD dan SMP', 'Direktorat Jenderal Pendidikan Dasar dan Menengah', '370', NULL, 1, 73, 2, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Strategi Belajar Mengajar', 'Sri Anitah Wiryawan dan Noorhadi', '370', NULL, 1, 74, 2, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Silabus Mata Pelajaran SMK Adaptif', 'Departemen Pendidikan Nasional', '370', NULL, 1, 75, 2, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Model Rencana Pelaksanaan Pembelajaran Kurikulum Tingkat Satuan Pendidikan', 'Departemen Pendidikan Nasional', '370', NULL, 1, 76, 2, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mengelola Majalah Sekolah', 'Hendy Hermawan', '370', NULL, 1, 77, 2, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Buku Panduan: BOS dalam Rangka Wajib Belajar 9 Tahun', 'Departemen Pendidikan Nasional Departemen Agama', '370', NULL, 1, 78, 2, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Manajemen Pendidikan: Analisis Substansif dan Aplikasinya dalam Institusi Pendidikan', 'Ali Imron, Maisyaroh, Burhanuddin', '370', NULL, 1, 79, 2, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Evaluasi Pembelajaran', 'Zainil Arifin', '370', NULL, 1, 80, 2, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Belajar dan Pembelajaran', 'Suyono, Hariyanto', '370', NULL, 1, 81, 2, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Strategi Belajar Mengajar melalui Penanaman Konsep Umum dan Konsep Islami', 'Pupuh Fathurrohman, Sobry Sutikno', '370', NULL, 1, 82, 2, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Guru Sebagai Mentor', 'Cepi Triatna', '370', NULL, 2, 83, 2, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pembelajaran Kontekstual dan Penerapannya dalam KBK', 'Nurhadi, Burhan Yasin, Agus Gerrad Senduk', '370', NULL, 2, 84, 2, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pedoman Gerakan Sekolah Sehat, Aman, Ramah Anak, dan Menyenangkan SMP', 'Kementrian Pendidikan dan Kebudayaan', '370', NULL, 1, 85, 2, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Menjadi Kepala Sekolah Profesional', 'E. Mulyasa', '370', NULL, 2, 86, 2, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Manajemen Sekolah', 'Rohiat', '370', NULL, 1, 87, 2, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Konsep Pendidikan', 'Eka Prihatin', '370', NULL, 1, 88, 2, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Dasar-dasar Komunikasi dan Keterampilan Dasar Mengajar', 'Hendry Hermawan', '370', NULL, 1, 89, 2, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Perencanaan Pembelajaran: Mengembangkan Standar Kompetensi Guru', 'Abdul Majid', '370', NULL, 1, 90, 2, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Metode Penelitian Tindakan Kelas', 'Rochiati Wiraatmadja', '370', NULL, 2, 91, 2, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Perencanaan Pendidikan', 'Udin Syaefudin Saud dan Abin Syamsudin', '370', NULL, 4, 92, 2, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pengendalian Mutu Pendidikan Sekolah Menengah (Konsep, Prinsip, dan Instrumen)', 'Nana Syaodih', '370', NULL, 3, 93, 2, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Kurikulum dan Pembelajaran (Filosofi Teori dan Aplikasi)', 'Ella Yulaelawati', '370', NULL, 2, 94, 2, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Standar Kompetensi dan Sertifikasi Guru', 'Mulyasa', '370', NULL, 3, 95, 2, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Bahasa Indonesia untuk STLP kELAS III', NULL, '370', NULL, 1, 96, 2, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Ilmu dan Aplikasi Pendidikan', 'Tim Pengembang Ilmu Pendidikan', '370', NULL, 2, 97, 2, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Metodologi Penelitian Pendidikan', 'Yatim Riyanto', '370', NULL, 2, 98, 2, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Strategi Memenangkan Lomba Proyek Penelitian Ilmu Pengetahuan', 'Joyce Henderson dan Heather Tomasello', '370', NULL, 1, 99, 2, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Metode Linguistik', 'Fatimah Djajasudarma', '370', NULL, 1, 100, 2, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Dokter di Rumah Anda', 'Titin kuraesin', '3610', NULL, 1, 101, 3, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mengenal Luka dan Penanganannya', 'Titin kuraesin', '3610', NULL, 3, 102, 3, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Waspada Demam Berdarah', 'yandianto', '3610', NULL, 4, 103, 3, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Bahaya dan Pencegahan DBD', 'edi warsidi', '3610', NULL, 4, 104, 3, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Memelihara Kesehatan Gigi Mulut', 'Lenita', '3610', NULL, 2, 105, 3, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Menyelamatkan Anak dari Pengaruh Napza', 'H. Achmad Kabain', '3550', NULL, 2, 106, 3, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Cara Efektif Memberantas Tikus Sawah', 'Ir. Budi Samadi', '3550', NULL, 2, 107, 3, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Manfaat Hutan Lindung', 'Ahmad Jazuli', '3550', NULL, 1, 108, 3, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Berpetualang di Alam Bebas', 'Deni yudiawan', '3550', NULL, 1, 109, 3, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Akhlak Siswa terhadap Alam', 'Diah soeprobowati', '3550', NULL, 2, 110, 3, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Penghijauan untuk Mengurangi Pencemaran', 'Ade Yeti N', '3550', NULL, 2, 111, 3, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Sumur Resapan untuk Pemukiman, Perkotaan, dan Pedesaan', 'Ahmad said ', '3550', NULL, 1, 112, 3, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Efek Rumah Kaca bagi Bumi', 'Meidiana frikasari', '3550', NULL, 2, 113, 3, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Polusi Udara Ancam Abad Sekarang', 'Tedi Ruhiat', '3550', NULL, 2, 114, 3, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Apakah Pemanasan Global Itu?', 'Edi Warsidi', '3550', NULL, 2, 115, 3, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Lingkungan yang Aman dan Tenteram', NULL, '3550', NULL, 1, 116, 3, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Cegah Dini Kanker dan Tumor', 'Dr. Y Sutiono Supinto', '3610', NULL, 1, 117, 3, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pola Hidup Sehat dalam Keluarga', 'Iswanto', '3610', NULL, 2, 118, 3, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mengenal Penyakit Kulit dan Cara Pencegahannya', 'Dian Novitasari', '3610', NULL, 4, 119, 3, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Waspada Bahaya AIDS', 'Budi Setyo', '3610', NULL, NULL, 120, 3, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Waspada Bahaya AIDS', 'Meilany', '3610', NULL, 2, 121, 3, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Darah dalam Tubuh Manusia', 'Nurhayati Setiawan', '3610', NULL, 2, 122, 3, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Ayo Mengenal: Penyakit Menular di Sekitar Kita', NULL, '3610', NULL, 2, 123, 3, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Ramah terhadap Sampah', 'Dwi M. W', '3550', NULL, 2, 124, 3, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Jadikan Lingkungan Tetap Segar', 'Pahman Yazid', '3550', NULL, 2, 125, 3, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pencemaran Lingkungan dan Penanganannya', 'Kus Dwiyatmo', '3550', NULL, 2, 126, 3, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Nar-ko-ba vs Narkoba  ', 'Bambang Trim', '3610', NULL, NULL, 127, 3, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Hindari NAPZA', 'Joko p', '3610', NULL, 1, 128, 3, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Bahaya Narkoba, Seks Bebas, dan HIV/AIDS', 'suranto & khonsa siswaya', '3610', NULL, 1, 129, 3, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pencegahan dan Penanggulangan Penyalahgunaan Narkoba Berbasis Sekolah', 'dr.lidya harlina martono dan dr. satya joewana', '3610', NULL, 1, 130, 3, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Bahaya dan Pencegahan Flu Burung', 'Fajar M.N', '3610', NULL, 1, 131, 3, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pengolahan sampah plastik', 'Ririn Migristine', '3550', NULL, 1, 132, 3, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Menciptakan Lingkungan Nyaman dan Sehat', 'Nurul F', '3550', NULL, 1, 133, 3, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pedoman Gerakan Sanitasi Sekolah SMP', 'kemendikbud ', '3550', NULL, 1, 134, 3, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pemanasan Global dan Dampaknya', 'Adrian R nugraha', '3550', NULL, 1, 135, 3, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Menyelamatkan Lingkungan Hidup dengan Pengelolaan Sampah', 'Adrian R nugraha', '3550', NULL, 2, 136, 3, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('UKS', 'Ahmad Selvia', '3610', NULL, 2, 137, 3, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mengenal Pertolongan Pertama pada Kecelakaan', 'Yuda Hergana', '3610', NULL, 2, 138, 3, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mengenal Lingkungan Sekitar Kita', 'Herlina Rahmawati', '3550', NULL, 3, 139, 3, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Menyelidiki Air dan Manfaatnya', 'Kemala Dewi', '3550', NULL, 2, 140, 3, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pencemaran Lingkungan', 'Tri Haryanto', '3550', NULL, 2, 141, 3, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Trasportasi Ramah Lingkungan', 'Sofyan Firdaus', '3550', NULL, 2, 142, 3, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Indahnya Budaya Tertib Lalu Lintas', NULL, '4570', NULL, 2, 143, 4, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Sopan Santun Berlalu Lintas', NULL, '4570', NULL, 2, 144, 4, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pola Pelaksanaan Pendidikan Kecakapan Hidup', 'Tin broad education despsknas', '4570', NULL, 3, 145, 4, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Kecakapan Hidup Life Skill: Melalui Pendekatan Pendidikan Berbasis Luas', 'Tim broad base education depdiknas', '4570', NULL, 2, 146, 4, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Remaja Unggul Kamukah Itu?', 'imam ratrioso', '4570', NULL, 3, 147, 4, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Smart Brain: Metode Menghafal Cepat dan Meningkatkan Ketajaman Memori', 'Suroso', '4570', NULL, 1, 148, 4, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pendidikan Karakter di Sekolah', 'gede raka', '4570', NULL, 1, 149, 4, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Ayo Terus Sekolah', 'Sugeng Waluyo', '4570', NULL, 1, 150, 4, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Kepercayaan Diri', 'Gina Fauziah', '4570', NULL, 6, 151, 4, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pembinaan Karakter Generasi Muda', 'Dasim Budimansyah', '4570', NULL, 7, 152, 4, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Menjadi Bermakna Setiap 24 Jam', 'Totok Sudarto', '4570', NULL, 2, 153, 4, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Krat-krat Mencari Keadilan', 'Iwan Soekri Munat', '4570', NULL, 1, 154, 4, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mencetak Pribadi Magnetis', 'M. Ali Ghanim Ath-Thawil', '4570', NULL, 1, 155, 4, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Kiat Belajar Bermutu', 'Muniasari', '4570', NULL, 3, 156, 4, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Adab Anak Berbakti pada Orang Tua', 'Sunarno', '4570', NULL, 2, 157, 4, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Aku Cinta Damai', 'Aep Saefulloh', '4570', NULL, 3, 158, 4, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Tatakrama di Rumah, Sekolah, dan Masyarakat', 'M. Aris Muthohar', '4570', NULL, 2, 159, 4, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Membangun Kembali Jati Diri Bangsa', 'Soemarno Soedarsono', '4570', NULL, 1, 160, 4, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Solusi yang Dinanti', 'Ivone RM', '4570', NULL, 2, 161, 4, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Ekspektasi Nilai-nilai Budi Utama', 'P. irianto', '4570', NULL, 9, 162, 4, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pribadi Smart', 'wawan p harmono', '4570', NULL, 7, 163, 4, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Membiasakan Perilaku Baik', 'Supriyanti', '4570', NULL, 1, 164, 4, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Etika Bertetangga', 'Restianti', '4570', NULL, 2, 165, 4, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mendidik Siswa Agar Berkepribadian Mulia', 'Maskhur& Muhammad jaeni', '4570', NULL, 1, 166, 4, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Panduan Menjadi Remaja Percaya Diri', NULL, '4570', NULL, 1, 167, 4, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Cara Menjalin Persahabatan', 'Umi Akhiri Fananie', '4570', NULL, 1, 168, 4, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Arti Persahabatan', 'Budi Supriyanto', '4570', NULL, 1, 169, 4, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Waspadai Kekerasan di Sekitar Kita', 'Tammi Prastowo', '4570', NULL, 1, 170, 4, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Generasi Taat Hukum', 'Nur Asiah', '4570', NULL, 1, 171, 4, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Jangan Pernah Menyerah', 'Ismail Kusmayadi dan Lailia Suci Ramadania', '4570', NULL, 1, 172, 4, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Indahnya Masa Pubertas', 'Poetri Lestari', '4570', NULL, 1, 173, 4, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Budi Pekerti Luhur', 'Ambarwati', '4570', NULL, 2, 174, 4, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Menciptakan Pribadi Anak Mudah Bergaul', 'Muryanto', '4570', NULL, 1, 175, 4, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Disiplin dalam Kehidupan', 'Navo Kifaut', '4570', NULL, 1, 176, 4, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Berbuat Baik kepada Sesama', 'Tiana Juliansyah', '4570', NULL, 1, 177, 4, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Konsep Dasar Pendidikan Nilai', 'Endang Sumantri dan Sofyan Sauri', '4570', NULL, 1, 178, 4, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Akhlak Siswa terhadap Teman', 'Loso', '4570', NULL, 1, 179, 4, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mari Berbuat Jujur', 'didi purwadi', '4570', NULL, 1, 180, 4, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Berlaku Adil Kasih Sayang Sesama', 'Kartono S.Pd.', '4570', NULL, 1, 181, 4, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Sukses Sejak Dini', 'Nelson Anand', '4570', NULL, 1, 182, 4, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Etiket Pergaulan', 'Pinandita Nur Amalia', '4570', NULL, 1, 183, 4, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mencetak Generasi Unggul', 'Marsini', '4570', NULL, 1, 184, 4, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('9 Cara Menolak Narkoba', 'Bambang Trim', '4570', NULL, 2, 185, 4, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Kiat Sukses Menjadi Juara Kelas', 'surato', '4570', NULL, 4, 186, 4, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Membuat PR yang Menyenangkan', 'Asep dadang', '4570', NULL, 2, 187, 4, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Penanaman Akhlak dengan Cerita', 'Asep Dadang dan Siti Rohaeti', '4570', NULL, 2, 188, 4, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Belajar Kembali Menjadi Bangsa yang Santun', 'Ragil Yulianto', '4570', NULL, 2, 189, 4, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Sikap dan Moral Penentu Kesuksesan', 'Sri Mulyati', '4570', NULL, 2, 190, 4, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mari Bergotong Royong', 'Adham Permana', '4570', NULL, 2, 191, 4, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Kenakalan Remaja dan Penanggulangannya', 'Vina Dwi Laning', '4570', NULL, 2, 192, 4, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Jadilah Orang yang Bersemangat', 'Ismail Kusmayadi dan Lena Mariana', '4570', NULL, 2, 193, 4, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Implementasi Program Life Skill', 'Dian Sukmara', '4570', NULL, 3, 194, 4, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Think Hard vs Think Smart', 'Amri Gunawan Wibisono', '4570', NULL, 10, 195, 4, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Budi Pekerti 1', 'drs.loso', '4570', NULL, 5, 196, 4, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('budi pakerti 2', 'suroso', NULL, NULL, NULL, 197, 4, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('budi pakerti 3', 'Sumirin,M.Pd', NULL, NULL, NULL, 198, 4, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Berani Memperbarui Diri', 'Hafid Purwono Raharjo', '4570', NULL, 6, 199, 4, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Buah Manis Keberhasilan', 'Eko wiyanto', '4570', NULL, 8, 200, 4, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Cerdas Bersama Keingintahuan', 'amri gunawan wibisono', '4570', NULL, 9, 201, 4, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Kendalikan apa yang ada dalam diri anda ', 'Sudarsih', '4570', NULL, 7, 202, 4, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Memupuk sikap positif ', 'Fajar nugraha', '4570', NULL, 9, 203, 4, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Lakukan perubahan bagi diri sendiri ', 'Sudarsih', '4570', NULL, 5, 204, 4, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Perubahan membutuhkan komitmen tambahan ', 'Fajar Nugroho', '4570', NULL, 9, 205, 4, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Psikologi Pembelajaran dan Pengajaran ', 'Prof.Dr.H Mohmad Surya', '5150', NULL, 4, 206, 5, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pembelajaran yang Efektif', 'Jamaludin, M.Ed', '5150', NULL, 2, 207, 5, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mengatasi gangguan Konsentrasi ', 'Drs. Thursan Hakim', '5150', NULL, 7, 208, 5, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pedoman Bagi OrangTua, guru, dan penyuluhan Masyarakat', 'Harlina Pribadi', '5150', NULL, 1, 209, 5, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Latihan Keterampilan Konseling ', 'MO Dahlan', '5150', NULL, 2, 210, 5, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pendidikan Bagi Anak dengan Problema Belajar', 'Munawir Yusuf', '5150', NULL, 3, 211, 5, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Psikologi Kelompok ', 'Bimo Wolgito', '5150', NULL, 2, 212, 5, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Keluarga dan anak Bermasalah ', 'Ali Qaimi', '5150', NULL, 2, 213, 5, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Dasar & Teori Perkembangan Anak', 'Singgih D. Gunarsa', '5150', NULL, 2, 214, 5, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pembangunan Karakter pada Anak: Manajemen Pembelajaran Guru Menuju Sekolah Efektif', 'Drs. Najib Sulhan', '5150', NULL, 4, 215, 5, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Kelola Hati, Raih Perdamaian', 'Laksmi Sitara', '5150', NULL, 2, 216, 5, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pembelajaran Anak Tunagrahita', 'Prof. Dr. Bandi Delphie,M.A,.S.E', '5150', NULL, 2, 217, 5, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Merawat dan Mendidik Anak', 'Umi Istiqomah', '5150', NULL, 3, 218, 5, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Menumbuhkembangkan Keterampilan Berpikir Rasional Anak', NULL, '5150', NULL, 2, 219, 5, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mencetak anak Jenius & Cerdas', 'Fananie Anwar', '5150', NULL, 2, 220, 5, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Gerbang: Pendidikan Lingkungan Sebuah Agenda', NULL, '5150', NULL, 1, 221, 5, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Gerbang: Anak-anak Kita Siapa Peduli?', NULL, '5150', NULL, 1, 222, 5, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Memahami dan Membantu Anak ADHD', 'Baihaqi dan sugiarmin', '5150', NULL, 2, 223, 5, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Psikologi Eksperimen', 'Liche Senjati', '5150', NULL, 1, 224, 5, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pengajaran yang Kreatif Menarik: Membangkitkan Minat Siswa melalui Pemikiran', 'LouAnne Johnson', '5150', NULL, 1, 225, 5, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Psikologi Pembelajaran', 'Mohammad Asrori', '5150', NULL, 1, 226, 5, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pengembangan Kepribadian', 'Inge hutagalung', '5150', NULL, 1, 227, 5, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mencerdaskan Potensi IQ, EQ, dan QS', 'asep dadang ', '5150', NULL, 3, 228, 5, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mengenal Tipe-tipe Tempramental dan Kepribadian', 'arzy jessica ', '5150', NULL, 2, 229, 5, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('EQ Power Penduan Meningkatkan Kecerdasan Emosional', 'cepi triatna ', '5150', NULL, 1, 230, 5, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Bimbingan + Konseling (Studi + Karier)', 'Bimo Walgito', '5150', NULL, 1, 231, 5, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Bimbingan & Konseling dalam Berbagai Latar Kehidupan', 'Achmad Juntika Nurihsan', '5150', NULL, 2, 232, 5, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Strategi Layanan Bimbingan & Konseling', 'Achmad Juntika Nurihsan', '5150', NULL, 4, 233, 5, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Indonesia Kaya Bahasa', 'Desi Saraswati', '410', 'Bahasa Indonesia', 2, 234, 6, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Panduan Karya Jurnalistik Siswa', 'kemendikbud', NULL, 'Jurnalisme, Surat Kabar', 1, 235, 6, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Hari-hari Besar Nasional dalam Puisi', 'Drs.yant mujiyanto,M.pd', '410', NULL, 2, 236, 6, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Membina Bahasa Indonesia Baku', 'Dr.J.S. Badudu', '410', NULL, 2, 237, 6, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Cara Ajaib Belajar Ejaan', 'Farika', '400', 'Bahasa & Linguistik', 2, 238, 6, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Belajar Aktif Bahasa Indonesia', 'Drs. M. Rahmat Basuki dan Dra Hj Atika- Ai imas', '410', NULL, 1, 239, 6, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Terampil Menulis Surat', 'Fajar M.N', '410', NULL, 3, 240, 6, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Ayo Mengenal Paragraf', 'Marsa A.H', '400', NULL, 2, 241, 6, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Ayo Membuat Karya Ilmiah', 'Marsa', '400', NULL, 2, 242, 6, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Bersahabat dengan Kamus', 'izza irsam', '400', NULL, 4, 243, 6, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Kecil-kecil Berani Kirim Surat', 'edi warsidi', '410', NULL, 1, 244, 6, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Puisi Indonesia Sebelum Kemerdekaan', 'pusat bahasa d apartemen pendidikan', '410', NULL, 1, 245, 6, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Masalah Bahasa yang Dapat Anda Atasi Sendiri', 'anton M. Moeliono', '400', NULL, 1, 246, 6, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('pengembangan profesional dan penulis karya ilmiah', 'dapaeteman agama RI', '400', NULL, 7, 247, 6, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('karangan fiksi dan non fiksi', 'Ermina Krismayanti', '400', NULL, 2, 248, 6, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('aku ingin menjadi penulis cilik ', 'Najib duluan dan ruchiama', '400', NULL, 1, 249, 6, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('bagaimana menjadi guru penulis ', 'cepi triatna ', '400', NULL, 1, 250, 6, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('kecil kecil berani bersurat', 'Edi Warsidi', '410', NULL, 1, 251, 6, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('teknik cemerlang mengemukakan gagasan ', 'Sylvia Aria Yanie', '400', NULL, 2, 252, 6, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('panduan pembelajaran berbicara ', 'Ismail Kusmayadi', '400', NULL, 1, 253, 6, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('perencanaan pembelajaran ', NULL, NULL, NULL, 1, 254, 6, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('baku dan tidak baku', 'Budi Artati', '400', NULL, 1, 255, 6, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('khazanah sastra melayu klasik ', 'E Kosasih', '400', NULL, 1, 256, 6, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('teknik pembelajaran bahasa dan sastra ', 'Suyatno', '400', NULL, 1, 257, 6, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('pandai memahami dan menulis cerita pendek ', 'Aminudin', '400', NULL, 2, 258, 6, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Terampil berdiskusi dan berdebat ', 'Atar Semi', '400', NULL, 4, 259, 6, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('jurnalistik untuk remaja ', 'Bambang trimansyah', NULL, NULL, 2, 260, 6, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('apresiasi sastra indonesia ', 'E.Kosasih', '410', NULL, 2, 261, 6, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('membina keterampilan menulis paragraf dan pengembangannya ', 'Dr. djago Tarigan', '400', NULL, 1, 262, 6, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('ayo berani pidato ', 'Adi Putranto', '400', NULL, 1, 263, 6, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('sematik pemahaman ilmu makna ', 'Prof. Dr. Hj. T. Fatimah Djajasudarma', '400', NULL, 2, 264, 6, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('karya tulis inovatif ', 'Prof. Dr. Sudarwan Danim', '400', NULL, 2, 265, 6, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('menulis dengan hati membangun motivasi menulis ', 'Ismail Kusmayadi', '400', NULL, 4, 266, 6, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('terampil menulis surat', 'Prof. Drs. M. atar Semi', '410', NULL, 2, 267, 6, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('keterampilan menyimak dan berbicara ', 'Engkus Kuswadi', '400', NULL, 1, 268, 6, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('penulisan laporan ', 'Ismail kusmayanti', '400', NULL, 3, 269, 6, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Jurnalistik Media Kreasi Anak - Anak ', 'Peni N.H', NULL, NULL, 1, 270, 6, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pandai Memahami dan Menulis Cerita Pendek', NULL, '400', NULL, 1, 271, 6, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mari Belajar Majas dan Peribahasa', 'Endang Sri Wahyuni,S. Pd', '400', NULL, 1, 272, 6, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Aplikasi Praktis Pengajaran Sastra', 'Askurifai Baksin', '400', NULL, 1, 273, 6, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pengajaran Sastra Yang Menyenangkan', 'Tjahjono Widijanto', '400', NULL, 5, 274, 6, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Jendela Terbuka Antalogi Esai Mastera', 'Dendy Sugono dan Budi Darma', '400', NULL, 2, 275, 6, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Penuntun Pelajaran Bahasa Indonesia', 'Abdullah Ambary', '410', NULL, 1, 276, 6, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pengembangan Profesional Dan Petunjuk Penulisan Karya Ilmiah', NULL, '400', NULL, 2, 277, 6, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Menjelajahi dan Mempelajari Kalimat', 'M.G Hesti Puji Rastuti, Diah Erna T, Y Budi Artati', '400', NULL, 2, 278, 6, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mahir Menggunakan Kamus Bahasa Indonesia', 'Rachmat Taufiq Hidayat', '410', NULL, 2, 279, 6, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Terampil Membuat Buku Harian dan Surat Pribadi', 'M. Atar Semi', '410', NULL, 4, 280, 6, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Resensi Buku Apa dan Bagaimana Tekniknya', 'edi warsidi', '410', NULL, 4, 281, 6, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pandai Berpidato', 'Adrian R Nugraha', '400', NULL, 1, 282, 6, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Belajar Surat Menyurat ', 'Ivan Masdudin', '410', NULL, 1, 283, 6, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Dasar Dasar Komunikasi dan Keterampilan Dasar Mengajar', NULL, NULL, NULL, 1, 284, 6, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Makna Kata dan Majas', 'Meilany', '400', NULL, 2, 285, 6, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Menulis Karangan Ilmiah', 'E.kosasih dan yoce A darma', '400', NULL, 1, 286, 6, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Sastrawan Angkatan 45', 'Agus Maryoto', '400', NULL, 3, 287, 6, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Kiat Menulis Cerita Pendek', 'Harris Efendy Thahar,', '410', NULL, 2, 288, 6, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Guru Menulis di Media Massa', 'Hendy Hermawan', '400', NULL, 4, 289, 6, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Ensiklopedia Sastra Indonesia Modern', 'Dendy sugono', '400', NULL, 2, 290, 6, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Lancar Berbahasa Indonesia', 'Grasindo', '410', NULL, 1, 291, 6, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Bahasa dan Sastra Indomesia ', 'sugeng dan subagyo', '410', NULL, 1, 292, 6, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Cara Jitu Menentukan Ide Pokok', NULL, '400', NULL, 1, 293, 6, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Terampil Menulis Surat', 'Johan Wahyudi', '400', NULL, 2, 294, 6, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('panduan praktik desain perwajahan', 'Cahyana insana sundara', NULL, NULL, 2, 295, 7, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('teknik pengelasan logam ', 'Sunari', NULL, NULL, 2, 296, 7, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('teknologi tepat guna ', 'Endyah Murniati', '600', 'Teknologi (Ilmu Terapan)', 1, 297, 7, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('elektronika dasar dan peripkeral komputer ', 'Sugiri, A.Md., S.Pd', '600', NULL, 1, 298, 7, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('aneka kreasi grafis pemula ', 'Dicky rahmat dan yusuf sobari', NULL, NULL, 2, 299, 7, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('kupas tuntas virus komputer ', 'Musonif setria', '600', NULL, 2, 300, 7, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('teknologi pedesaan ', 'G.yudhipratama,S.T', '630', NULL, 4, 301, 7, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('mengenal perangkat komputer dan cara menginstal sofware ', 'Kuwat', '600', NULL, 2, 302, 7, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('kiat praktis menjadi penyiar ', 'Taofik Rahman', NULL, NULL, 2, 303, 7, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('memburu dollar di Internet', 'Redy Ardian', NULL, NULL, 1, 304, 7, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('rangkaian elektronik praktis ', 'Puspa Swara', '600', NULL, 2, 305, 7, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('alat komunikasi ', 'Bambang Tri R  Nugroho', '600', NULL, 1, 306, 7, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('reparasi motor bensin dan diesel ', 'Soedjono, Bsc', '660', 'Teknik Kimia', 1, 307, 7, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('merakit teknologi tepat guna ', 'Endyah Murniati', '600', NULL, 1, 308, 7, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Seri Ide Cemerlang Sekitar Kita : Lensa dan Cahaya', 'Richard Platt', NULL, NULL, 1, 309, 7, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mengenal Dan Memanfaatkan Internet', 'Tedi rustendi', '600', NULL, 1, 310, 7, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Merakit dan Merawat Komputer Pribadi', 'Ricky Brillinato Samad', '600', NULL, 4, 311, 7, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Cara Merawat ', NULL, '600', NULL, 1, 312, 7, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Menjelajah Internet', NULL, '600', NULL, 1, 313, 7, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Seri Pengetahuan ICT Mengenal Komputer ', 'Amelia Putri', '600', NULL, 1, 314, 7, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Seri Pengetahuan ICT Mengenal Microsoft Word', 'Sanyo saputra', '600', NULL, 2, 315, 7, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mengenal Cahaya dan Optik', 'Hestty P. utami', NULL, NULL, 5, 316, 7, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Elektronik di Rumah Kita', 'Andi aris', '600', NULL, 1, 317, 7, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Elektronik di rumah kita ', 'Hadi karyanto, S.Pd dan Drs. Sigit giri purwono', '600', NULL, NULL, 318, 7, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Lebih Cerdas Dengan Wikipedia', 'A. Hapiddin', '600', 'Pembuatan Produk untuk Penggunaan Khusus', 1, 319, 7, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Membuat Antena', 'Hery Nuryanto', '680', NULL, 4, 320, 7, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mengolah Gambar Sederhana Dengan Photoshop', 'Deden sopandy & E. gusnadin', NULL, NULL, 10, 321, 7, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Cara Merawat  dan Memperbaiki Kamera ', 'Antonius Sulistyo dan Herdamon ', NULL, NULL, 1, 322, 7, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pengetahuan Dasar Teknik Mesin PDTM ', 'Umaryadi ', '620', NULL, 2, 323, 7, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Berkirim E-mail dan Berkomunikasi dengan kawan di Internet ', 'Rudi', '600', NULL, 1, 324, 7, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Apa itu Dunia Internet ', 'Rahayu Wardani', '600', NULL, 2, 325, 7, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Seri Pengetahuan ICT Kamus Istilah Komputer, Teknologi Informasi, dan Telekomunikasi', 'Sanyo saputra dan Maryanti', '600', NULL, 4, 326, 7, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Sei Pengetahuan ICT Pengenalan Komputer ', 'Sanyo saputra dan Maryati', '600', NULL, 1, 327, 7, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('alat komunikasi dalam genggaman ', 'Eko Sujatmiko,S.Si', '600', NULL, NULL, 328, 7, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mari Mengenal Komputer ', 'Zamrud Tualeka', '600', NULL, 1, 329, 7, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mari Mengenal Lembar Kerja Ms. Excel ', 'Zamrud Tualeka', '600', NULL, 2, 330, 7, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Jelajahi Informasi Menggunakan Internet ', 'Zainal Arifin ', '600', NULL, 2, 331, 7, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Merakit Merawat Komputer Pribadi ', 'Ricky Brillianto samad', '600', NULL, 5, 332, 7, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pengetahuan Komponen Mobil ', 'Daryanto ', '620', 'Ilmu Teknik', 1, 333, 7, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Perkakas Dan Bahan Teknik Otomotif ', 'Soedjono ', '620', NULL, 2, 334, 7, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Dasar Rangkaian Kelistrikan Otomotif ', 'Mohammad tri wahyudi dan arifin', '620', NULL, 2, 335, 7, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Komputer si Mesin Pintar', 'Eko sujatmiko, S.Si', '600', NULL, 2, 336, 7, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mengenal Istilah Komputer A-Z', 'Deni riana', '600', NULL, 2, 337, 7, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Rahasia Sehari-hari Temuan di Bidang Teknik  ', 'hans jurgen press', '620', NULL, 1, 338, 7, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Panduan Teknik Komputer Untuk Pemula', 'ir. Sugiona', '600', NULL, 8, 339, 7, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mengenal Piranti Komputer Pribadi', 'Abu Azka ', '600', NULL, 2, 340, 7, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Membuat Lembar Kerja Dengan Excel', 'Lia Tina', '600', NULL, 1, 341, 7, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('P45 Platinum', 'Gigantika pratama', '600', NULL, 1, 342, 7, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Service Radio, perekam suara, televisi dan vcd', 'Ado Vebriando ', '600', NULL, 2, 343, 7, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mengatasi Kerusakan Listrik Mobil', 'boentaro', '620', NULL, 10, 344, 7, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mesin Las Listrik Output AC', 'Sidik purnomo dan Ahmad dimyati', '620', NULL, 2, 345, 7, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mengoperasikan Komputer', 'Zainal Arifin', '600', NULL, 2, 346, 7, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Seri Penemu Bidang Teknologi', 'Ardani', '600', NULL, 1, 347, 7, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Memahami Teknologi Populer', 'Suryaningsih', '600', NULL, 1, 348, 7, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Teknologi Pada Masyarakat Desa', 'Retno Widayati ', '630', 'Pertanian & Teknologi yang Berkaitan', 1, 349, 7, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Dasar Dasar Mesin Pendingin ', 'Sumanto ', '600', NULL, 1, 350, 7, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pengetahuan Komponen Mobil ', 'Daryanto ', '620', NULL, 1, 351, 7, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Bayang - bayang Dalam Genggaman', 'suhari', '600', NULL, 2, 352, 7, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Menggunakan Internet', 'A. Solihat ', '600', NULL, 2, 353, 7, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Wiraswasta Cuci Cetak Foto Hitam Putih ', 'Wilson Nababan & puspa swara', '600', NULL, 1, 354, 7, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Teknik Membuat Kompor ', 'Husna amin', '680', NULL, 3, 355, 7, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Teknologi Mekanik ', 'depdikbud', '600', NULL, 1, 356, 7, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Servis Kulkas Dan Pendingin Ruangan', 'Abduk Rani', '620', NULL, 1, 357, 7, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Seri Ide Cemerlang Kesabaran dan Perencanaan ', 'Richard Platt', NULL, NULL, 1, 358, 7, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Seri Ide Cemerlang Listrik ', 'Richard Platt', '620', NULL, 1, 359, 7, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Kamus dan Teknologi Keudaraan', 'Drs. Ibnu utomo, M.B.A', '620', NULL, 1, 360, 7, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mekanikal Elektrikal ', 'Ir. Sunarno, M.eng .,Ph.D', '620', NULL, 1, 361, 7, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Teknologi Informasi dan Komunikasi jenjang SMP', 'Henry Pandia ', '620', NULL, 1, 362, 7, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Sei ide Cemerlang Kehidupan Sehari-hari  dan Kesehatan ', 'Richard platt', '620', NULL, 3, 363, 7, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Merawat dan Memperbaiki AC', 'Iwan Kurniawan & puspa swara', '620', NULL, 9, 364, 7, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Panduan Praktis Menciptakan Foto Menarik ', 'Griand Giwanda ', NULL, NULL, 8, 365, 7, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Atletik Cabang Lempar ', 'Munasifah', '797', 'Atletik dan Olahraga Luar', 1, 366, 8, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pola Dalam Gerak Senam 2 ', 'Drs. Hendra Agusta', '797', NULL, 1, 367, 8, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Olahraga Kegemaranku Atketik ', 'Muklis ', '797', NULL, 2, 368, 8, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Panduan Latihan Sepak Bola Andal', 'Tom Fleck & RonQuin', '797', NULL, 1, 369, 8, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Futsal ', 'R. Aulia Narti ', '797', NULL, 1, 370, 8, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pemain Basket Berprestasi ', 'Sutrisno dan Meilany ', '797', NULL, 1, 371, 8, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Kebugaran dan Kesehatan ', 'Erminawati ', '614', 'Kesehatan Masyarakat', 2, 372, 8, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Perenang Berprestasi ', 'Sutrisno dan Meilany ', '797', NULL, 4, 373, 8, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Belajar dan Berlatih Atlentik', 'Jess Jarver ', '797', NULL, NULL, 374, 8, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Bermain Sepak Takraw', 'Armelia F', '797', NULL, NULL, 375, 8, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Asyiknya Bermain Sepakbola', 'Nurul Ihsan ', '797', NULL, NULL, 376, 8, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Dasar- dasar Senam', 'John dan Mary Jean Traetta ', '797', NULL, NULL, 377, 8, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Bermain Bulu Tangkis', 'Sutono ', '797', NULL, NULL, 378, 8, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Olahraga Alam', 'Nono Darsono dan Setria ', '797', NULL, NULL, 379, 8, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Panduan Olimpiade Siswa Nasional (O2SN) jenjang SMP', 'Kementrian Pendidikan dan Kebudayaan', '797', NULL, NULL, 380, 8, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Eksiklomini Olahraga Atlentik', 'Eri Priatna ', '797', NULL, NULL, 381, 8, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Olahraga Kegemaranku Tenis meja', 'Muklis ', '797', NULL, NULL, 382, 8, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Olahraga Kegemaranku Sepak Bola', 'Subardi dan Andri Setyawan ', '797', NULL, NULL, 383, 8, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('olahraga kegemaranku atlentik', 'Intan Pariwara', '797', NULL, NULL, 384, 8, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pemain Bulu Tangkis Berprestasi', 'Sutrisno dan Yuni Marlani ', '797', NULL, NULL, 385, 8, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('40 Permainan Pelatihan Yang Mengasyikan ', 'Aep Burhanudin dan Arief Kurniawan ', '797', NULL, 1, 386, 8, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Olahragawan Indonesia Cabang Bela Diri ', 'Chaerudin ', '797', NULL, 10, 387, 8, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Olahragawan Indonesia Cabang Bulu Tangkis', 'Chaerudin', '797', NULL, 9, 388, 8, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Olahragawan Indonesia Cabang Atletik ', 'Chaerudin', '797', NULL, 10, 389, 8, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Olahragawan Indonesia Cabang Sepak Bola ', 'Chaerudin', '797', NULL, 9, 390, 8, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Olahragawan Indonesia Cabang Olahraga Air ', 'Chaerudin', '797', NULL, 10, 391, 8, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pola Gerak Dalam Senam 1', 'Drs. Hendra Agusta', '797', NULL, 2, 392, 8, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pola Gerak Dalam Senam 3 ', 'Drs. Hendra Agusta', '797', NULL, 3, 393, 8, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pendidkan Jasmani Olahraga dan Kesehatan Untuk SMP 9', 'Roji ', '797', NULL, 1, 394, 8, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pemain Sepak Bola Berprestasi', 'Sutrisno ', '797', NULL, NULL, 395, 8, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Langkah Menjadi Pemain Voli ', 'Sutrisno ', '797', NULL, NULL, 396, 8, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Langkah  Menjadi Petenis  Hebat', 'Sugiarto dan Budi Supriato ', '797', NULL, 2, 397, 8, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Sepak Bola ', 'Ina Hasanah ', '797', NULL, 1, 398, 8, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Panduan Latihan Sepak Bola Andal', 'Sutrisno ', NULL, NULL, NULL, 399, 8, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Langkah Menjadi Pemain Sepak Bola Hebat ', 'Sugiarto ', '797', NULL, 1, 400, 8, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Langkah Menjadi Pemain Basket Hebat', 'Sugiarto, Sugiarti, dan Budi Suprianto ', '797', NULL, NULL, 401, 8, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Permainan Bulu Tangkis ', 'M. Sofyan ', '797', NULL, 2, 402, 8, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mengenal Aneka Cabang Olahraga ', 'Adrian R Nugraha ', '797', NULL, 3, 403, 8, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Binaraga ', 'S. Ahmad Yudoyono ', '797', NULL, 3, 404, 8, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pelangi Pendidikan', 'Direktorat Pembinaan SMP Departemen Pendidikan Nasional ', '797', NULL, NULL, 405, 8, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Ragam alat Tangkap Lobster', NULL, NULL, NULL, 2, 406, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Limbah Udang Jadi Uang', NULL, NULL, NULL, 2, 407, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Teknologi Budidaya Ayam Buras dan Itik ', NULL, NULL, NULL, NULL, 408, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Ternak ayam Petelur di Kandang Ayam', NULL, NULL, NULL, NULL, 409, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Budidaya Lele Kampung dan Lele Dumbo', NULL, NULL, NULL, NULL, 410, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Peluang Usaha Beternak Ayam Arab Intensif', NULL, NULL, NULL, 2, 411, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Rawai Ikan Tuna', NULL, NULL, NULL, NULL, 412, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Budidaya Belut dan Pemanfaatannya', NULL, NULL, NULL, NULL, 413, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pemeliharaan Ikan Bandeng', NULL, NULL, NULL, 2, 414, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Aplikasi Teknologi Peternakan', NULL, NULL, NULL, 2, 415, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Melirik Potensi Desa Menuju Masyarakat Sejahtera', NULL, NULL, NULL, NULL, 416, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Optimalisasi Produk Desa', NULL, NULL, NULL, NULL, 417, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Alat Tangkap Ikan Ramah Lingkungan', NULL, NULL, NULL, NULL, 418, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Kiat Mencegah Penurunan Produksi Telur', NULL, NULL, NULL, NULL, 419, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Meraih Untung Memelihara Ikan Koi', NULL, NULL, NULL, 4, 420, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pembenihan dan Pembesaran Ikan Mola', NULL, NULL, NULL, 3, 421, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pakan ikan Formulasi, Pembuatan dan Pemberian', NULL, NULL, NULL, NULL, 422, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Maskoki Untuk Kontes ', NULL, NULL, NULL, NULL, 423, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Peluang Usaha Beternak Bebek Darat', NULL, NULL, NULL, 2, 424, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Usahatani Padi Ikan Itik di Sawah', NULL, NULL, NULL, 1, 425, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Teknik Pembentukan dan Perawatan Bonsai', NULL, NULL, NULL, 2, 426, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Tanaman Buah Dalam Pot Sawo ', NULL, NULL, NULL, 2, 427, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Bismillah Beternak Lebah', NULL, NULL, NULL, 1, 428, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mengenal Tumbuh-tumbuhan Berkhasiat Obat', NULL, NULL, NULL, 2, 429, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Ikan Sepat Siam Potensi dan Prospeknya', NULL, NULL, NULL, 2, 430, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Kiat Sukses Beternak Jangkrik', NULL, NULL, NULL, 1, 431, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Ternak Ayam Petelur di Kandang Baterai', NULL, NULL, NULL, 1, 432, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Bercocok Tanam Kubis', NULL, NULL, NULL, 1, 433, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Brokoli si Dokter Hujan', NULL, NULL, NULL, 2, 434, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Ayo Kita Belajar Bertanam Palawijaya', NULL, NULL, NULL, 8, 435, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Kenalilah Tumbuhan Obat', NULL, NULL, NULL, 1, 436, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Manggis Buah Eksotik dari Tropis', NULL, NULL, NULL, 1, 437, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Budidaya Holikultural Sayur Mayur Komersil ', NULL, NULL, NULL, 1, 438, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Budidaya Terpadu Hewan Dan Tumbuhan ', NULL, NULL, NULL, 1, 439, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Bercocok Tanam Palawija', NULL, NULL, NULL, 2, 440, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Seri Kesehatan Mengenal Jahe dan Khasiat ', NULL, NULL, NULL, 1, 441, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Budidaya Anggrek', NULL, NULL, NULL, 1, 442, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Nanas Bersisik Manis di Lidah ', NULL, NULL, NULL, 2, 443, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Apotek Hidup Untuk Kesehatan Manusia ', NULL, NULL, NULL, 1, 444, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Tanaman Yang Mengandung Zat Penggangu', NULL, NULL, NULL, 1, 445, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Seluk Beluk Nanas dan Penanamannya ', NULL, NULL, NULL, 4, 446, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Budidaya Salak Pohon ', NULL, NULL, NULL, 1, 447, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Rumput Laut Rumput Harapan ', NULL, NULL, NULL, 1, 448, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Seri Kesehatan Mengenal Jahe dan Khasiat ', NULL, NULL, NULL, 1, 449, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Kacang Hijau Teknik Budidaya dan Analisis Usaha Tani ', NULL, NULL, NULL, 2, 450, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Budidaya Bekicot', NULL, NULL, NULL, 2, 451, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Bioteknologi ', NULL, NULL, NULL, 1, 452, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Cara Menangani Air Kotor Menjadi Air Bersih ', NULL, NULL, NULL, 2, 453, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Gula Merah Jadi Tebu', NULL, NULL, NULL, 1, 454, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mengelola Sampah Menjadi Kompos ', NULL, NULL, NULL, 1, 455, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Tanaman yang Menngandung Zat Pengganggu ', NULL, NULL, NULL, 1, 456, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Jambu Mete Teknik Daya dan Pengolahannya ', NULL, NULL, NULL, 2, 457, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Cara Sukses Berkebun Anggur Lokal dan Impor ', NULL, NULL, NULL, 2, 458, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mengenal dan Membudidayakan Buah Naga ', NULL, NULL, NULL, 3, 459, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Budi Daya Salak Pondoh ', NULL, NULL, NULL, 1, 460, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mari Bertenak Ayam', NULL, NULL, NULL, 2, 461, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Segudang Aneka Buah-buahan ', NULL, NULL, NULL, 2, 462, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Membuat Tanaman Cepat Berbuah ', NULL, NULL, NULL, 1, 463, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pertanian Budi Daya Jamur Tiram', NULL, NULL, NULL, 2, 464, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Bercocok Tanam Mangga', NULL, NULL, NULL, 2, 465, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Sehat dengan Kacang Hijau', NULL, NULL, NULL, 1, 466, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mengkudu yang Multiguna', NULL, NULL, NULL, 1, 467, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Bertenak Kodok', NULL, NULL, NULL, 1, 468, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Menanam Buah Organik', NULL, NULL, NULL, 1, 469, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Apotek Hidup Untuk Kesehatan Manusia ', NULL, NULL, NULL, 2, 470, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Bercocok Tanam Rambutan', NULL, NULL, NULL, 2, 471, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Aneka Manfaat Buah Mangga', NULL, NULL, NULL, 1, 472, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Cara Pembuatan Tahu dan Manfaat Kedelai', NULL, NULL, NULL, 1, 473, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Seri Kesehatan Mengenal Jahe dan Khasiatnya', NULL, NULL, NULL, 1, 474, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Seri Kesehatan Mengenal Kopi dan Khasiatnya', NULL, NULL, NULL, 1, 475, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Seri Kesehatan Mengenal Teh dan Khasiatnya', NULL, NULL, NULL, 1, 476, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pertanian Mengenal Cengkeh ', NULL, NULL, NULL, 3, 477, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Legenda Kayu Manis ', NULL, NULL, NULL, 1, 478, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Budidaya Jambu Biji Buah Multimanfaat ', NULL, NULL, NULL, 2, 479, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Budidaya Bunga Melati ', NULL, NULL, NULL, 1, 480, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Bercocok Tanam Cabai Rawit, Cabai Merah, dan Cabai Jawa', NULL, NULL, NULL, 1, 481, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pengolahan Air Gambut Menjadi Air Minum ', NULL, NULL, NULL, 2, 482, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Budidaya dan Penyulingan Minyak Nilam', NULL, NULL, NULL, NULL, 483, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Budidaya Jalak Putih', NULL, NULL, NULL, NULL, 484, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Membuat Kerajinan dari Kayu', NULL, NULL, NULL, NULL, 485, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Beternak puyuh', NULL, NULL, NULL, 2, 486, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Bagaimana Mengolah dan Mengawetkan Ikan', NULL, NULL, NULL, NULL, 487, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Cara dan Upaya Budidaya Terung', NULL, NULL, NULL, NULL, 488, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Teknik Pengawetan dan Pengolahan Ikan', NULL, NULL, NULL, NULL, 489, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pengawetan Makanan Dimaniskan', NULL, NULL, NULL, 2, 490, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Gula Merah dari Tebu', NULL, NULL, NULL, 2, 491, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Beternak Ikan Lele', NULL, NULL, NULL, 3, 492, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Keterampilan Sumber Industri', NULL, NULL, NULL, NULL, 493, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Membuat dan Mengelola Mesin Tetas', NULL, NULL, NULL, 2, 494, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Budidaya Bunga Melati', NULL, NULL, NULL, NULL, 495, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Bertenak Ayam Buras ', NULL, NULL, NULL, 2, 496, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Timah Potensi, penambangan, dan Pemanfaatan', NULL, NULL, NULL, 2, 497, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Teknik Penyimpanan, Pengemasan dan Pengangkutan Sayuran Yang baik', NULL, NULL, NULL, NULL, 498, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Upaya Melestarikan Penyu ', NULL, NULL, NULL, 1, 499, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Sehat Dengan Kacang Hijau ', NULL, NULL, NULL, 1, 500, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Perikanan Budidaya Ikan di Kolam Air Deras', NULL, NULL, NULL, 2, 501, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Petunjuk Teknis Usahatani Padi Ikan Itik Di Sawah ', NULL, NULL, NULL, 1, 502, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Rawat Ikan Tuna', NULL, NULL, NULL, 1, 503, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Beternak Ikan Koi', NULL, NULL, NULL, 2, 504, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Budi Daya Ikan Koi', NULL, NULL, NULL, 2, 505, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Cara Membuat Saus', NULL, NULL, NULL, 1, 506, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Tanaman Obat Tradisional', NULL, NULL, NULL, 2, 507, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Budidaya Ikan Lele', NULL, NULL, NULL, 2, 508, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Rumput Laut', NULL, NULL, NULL, 1, 509, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Budidaya Jamur Kenapa Tidak?', NULL, NULL, NULL, 1, 510, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Peluang Usaha Budi Daya Udang Galah', NULL, NULL, NULL, 2, 511, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Peluang Usaha Budi Daya Lobster Air Tawar', NULL, NULL, NULL, 1, 512, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pengelolahan Hasil Perikanan ', NULL, NULL, NULL, 1, 513, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pengolahan Hasil Perikanan', NULL, NULL, NULL, 1, 514, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Menyuling Minyak Atsiri', NULL, NULL, NULL, NULL, 515, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Teknik Penyimpanan, Pengemasan, dan Pengangkutan sayuran yang baik', NULL, NULL, NULL, 1, 516, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Cara Pembuatan Tahu dan Manfaat Kedelai', NULL, NULL, NULL, NULL, 517, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Budidaya Kelinci', NULL, NULL, NULL, 1, 518, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Usaha Penggemukan Sapi Pedaging Secara Intensif ', NULL, NULL, NULL, 1, 519, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Membuat Cairan Pelembut Pakaian', NULL, NULL, NULL, 2, 520, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Aplikasi Teknologi Peternakan', NULL, NULL, NULL, 1, 521, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Budi Daya Terpadu Hewan dan Tumbuhan', NULL, NULL, NULL, 1, 522, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mengenal Makanan dan Kesehatan', NULL, NULL, NULL, 1, 523, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Kayu Jati si Bangsawan dari Tanah Tandus', NULL, NULL, NULL, 2, 524, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Bercocok Tanam Pohon Buah-buahan yang Baik & Benar', NULL, NULL, NULL, 1, 525, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mengamati Hasil Pengolahan Kayu Hutan sebagai Devisa', NULL, NULL, NULL, 2, 526, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Membuat Kerajinan dari Kayu', NULL, NULL, NULL, 1, 527, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Bismillah Berternak Lebah ', NULL, NULL, NULL, 1, 528, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Burung di Indonesia ', NULL, NULL, NULL, 1, 529, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Produksi Arang Untuk Bahan Bakar ', NULL, NULL, NULL, 1, 530, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Membuat Mebel Sederhana ', NULL, NULL, NULL, 1, 531, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Kterampilan Mementuk Tanah Liat ', NULL, NULL, NULL, 1, 532, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Keterampilan Sumber Industri ', NULL, NULL, NULL, 1, 533, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mengamati Hasil Pengelolaan Kayu Hutan Sebagai Devisa ', NULL, NULL, NULL, 2, 534, 9, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Sukses Bisnis Roti Unyil dan Pizza Mungil ', 'Sufi S.Y ', '641', 'Makanan dan Minuman', 7, 535, 10, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Bisnis Laris Katering ', 'Sri Loebis', '641', NULL, 6, 536, 10, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Dasar Dasar Food Product Panduan Uji Kompetensi ', 'Bartono dan Ruffino', '641', NULL, 1, 537, 10, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Tahu Makanan Bergizi Tinggi ', 'A Dadi Permana', '641', NULL, 2, 538, 10, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Resep Aneka Olahan Daging ', 'Rike Agustiana ', '641', NULL, 1, 539, 10, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mengenal Makanan Sehat ', 'Dadan Ahmad S', '641', NULL, 1, 540, 10, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Sukses Bisnis Kroket Pastel Risoles', 'Nunung', '641', NULL, NULL, 541, 10, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Sukses Wirausaha Jajan Pasar Favorit', 'Budi Sutomo', '641', NULL, NULL, 542, 10, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Bisnis Laris Masakan Rumahan ', 'Wied Harry Apriadji', '641', NULL, NULL, 543, 10, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Variasi Sambal Nusantara', 'Sri Loebis ', '641', NULL, NULL, 544, 10, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Tempe Dalam Kehidupan Masyarakat Umumnya ', 'Pramono ', '641', NULL, 1, 545, 10, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Kreasi Cokelat Khusus Pemula', 'Jenni Rumenta', '641', NULL, 2, 546, 10, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Masakan Sunda Populer & Lezat', 'Yeni Ismayani', '641', NULL, 9, 547, 10, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Hidangan Istimewa Sup & Soto ', 'Yeni Ismayani', '641', NULL, 2, 548, 10, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Sukses Wirausaha Kue Kering', 'Budi Sutomo ', '641', NULL, 5, 549, 10, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Sukses Bisnis Donat ', 'Sufi S.Y ', '641', NULL, 2, 550, 10, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Aneka Soto Nusantara ', 'Siti Fatimah ', '641', NULL, 4, 551, 10, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Masakan Padang Populer & Lezat ', 'Adrianti Ramli ', '641', NULL, 5, 552, 10, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('200 Tip Antigagal Membuat Cake ', 'Purbo Yudiwinoto', '641', NULL, 7, 553, 10, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Perencanaan Mie Basah ', 'Tian', '641', NULL, 3, 554, 10, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Cara Membuat Saus', 'Abdul Majid', '641', NULL, 1, 555, 10, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Membuat Kreasi Lilin Jeli ', 'Murhananto dan Riya Aryasatiyani', '744', 'Kerajinan', 7, 556, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Aneka Kerajinan Tali ', 'Kurniasih', '744', NULL, 1, 557, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Wirausaha Kerajinan Bambu ', 'Sadhi Duryatmo', '744', NULL, 1, 558, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Bekreasi Dengan Rotan ', 'Soedjono', '744', NULL, 5, 559, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Panduan Praktis Desain Perwajahan Buku ', 'Cahyana', '744', NULL, 2, 560, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Kerajinan Emas dan Perak ', 'Subanjar ', '744', NULL, 2, 561, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Keterampilan Sumber Industri ', 'Enyah Murniati ', '744', NULL, 1, 562, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Art Paper Kreasi Unik Buatan Sendiri ', 'Suci S', '744', NULL, 3, 563, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Kreasi Topeng Kertas ', 'Ayu Rini', '744', NULL, 1, 564, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Aneka Kerajinan Dari Limbah Aluminium Foil ', 'Indriadi Hastoro dan Selamet Riyadi', '744', NULL, 10, 565, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Aneka Cetakan Lilin Hias ', 'IR. Murhananto dan Dra Riya Aryasatiyani ', '744', NULL, 9, 566, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Berbagai Hasil Pekerjaan dan Keterampilan ', 'Soedjono', '744', NULL, 3, 567, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Membuat Kreasi dari Bahan Alami ', 'Arip Kurniawan', '744', NULL, 3, 568, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Desain Grafis untuk Junior', 'Istiqomah Umar', '744', NULL, NULL, 569, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Teknik Membuat Kerajinan Perak', 'Agus Budiyanto', '744', NULL, NULL, 570, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Aneka Kreasi Lembar Busa ', 'Bagas Shinugi', '744', NULL, NULL, 571, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mari Berkreasi', 'Dian Novitasari', '744', NULL, NULL, 572, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Aneka Kreasi dari Botol', 'Bagas Shinugi', '744', NULL, NULL, 573, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Wadah- Wadah Praktis', 'Bagas Shinugi', '744', NULL, NULL, 574, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Membuat Aneka Pigura', 'Bagas Shinugi', '744', NULL, NULL, 575, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Aksesori dari Barang Bekas ', 'Bagas Shinugi', '744', NULL, NULL, 576, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Keterampilan Praktis Berkreasi dengan bahan Lunak dan Keras', 'Martono', '744', NULL, 3, 577, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Miniatur Rumah dari Kertas Dupleks', 'Sugihartanti', '744', NULL, NULL, 578, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Aneka Kreasi dari Bambu', 'Bagas Shinugi', '744', NULL, NULL, 579, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Wadah-wadah Kreatif', NULL, '744', NULL, NULL, 580, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Aneka Kreasi dari Kotak Kemasan', 'Bagas Shinugi ', '744', NULL, NULL, 581, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pernak- pernik Sederhana', 'Bagas Shinugi', '744', NULL, 2, 582, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mainan Unik dari Lilin Warna', 'Wisai Frans Schubert', '744', NULL, NULL, 583, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Kreasi Aneka Wadah', 'Bagas Shinugi ', '744', NULL, NULL, 584, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Terampil Membuat Kerajinan Tangan', 'Joko Santoso', '744', NULL, NULL, 585, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Dasar-dasar Teknik Menjahit ', 'Dra. Pori E Mulyawan', '646', 'Jahitan, Pakaian', 2, 586, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Konstruksi Pola Busana Wanita ', 'Dra. Pori E Mulyawan', '646', NULL, 1, 587, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('90 Kerajinan Tangan ', 'Anita Van Saan', '744', NULL, 3, 588, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Berkreasi dengan Mute', 'Natih Indah Puji', '646', NULL, 3, 589, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Panduan Praktis Berbusana ', 'Tita', '646', NULL, 4, 590, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Seni Kerajinan Membordir ', 'Soedjono', '646', NULL, 1, 591, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Keterampilan Menghias Kain Ragam Teknik Menghias Kain dan Menyulam ', 'Ny. Wasiaroesbani Pulukadang', '646', NULL, 1, 592, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Serba Serbi Menyulam ', NULL, '646', NULL, 1, 593, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Membuat Mainan dari Lilin ', 'Nurul Ikhasan', '646', NULL, 2, 594, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Cara Praktis Membordir ', NULL, '646', NULL, 1, 595, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Piranti Menjahit ', 'Lisyani Afandi', '646', NULL, 2, 596, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Membuat Miniatur Air Terjun', 'Murhananto', '646', NULL, 9, 597, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Membuat Pakaian Seragam', 'Lisyani Afandi', '646', NULL, 2, 598, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Membuat Pakaian Tidur dan Pakaian Anak', 'Lisyani Afandi', '646', NULL, 2, 599, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Menjahit Sendiri Seragam Sekolah', 'S. Purnamawati', '646', NULL, 2, 600, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mari Belajar Menyulam', 'Entin Suprihatin ', '646', NULL, 2, 601, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Kreasi Airbrush Tingkat Lanjut', 'Zainal Abidin', '750', 'Seni Lukis dan Lukisan', 10, 602, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Kreasi Mote', 'Ayu Rini', '646', NULL, 2, 603, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Aneka Konstruksi Kerajinan Tangan', 'Raharjo', '744', NULL, 1, 604, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Bidang Kerajinan', 'TJ. Arisman', '744', NULL, 1, 605, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Membuat Ukiran dari Bahan Gabus', NULL, '744', NULL, 1, 606, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Aneka Kerajinan dari Kain Perca', 'E. Kristin Siregar', '646', NULL, 1, 607, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Kemasan Indah & Penuh Makna', 'Eka Dewi Nuraeni ', '744', NULL, 4, 608, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Cara Praktis Belajar Bordir', 'Khusnul Khotimah ', '646', NULL, 2, 609, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Membuat Kerajinan Dari Kayu ', 'Sudjoeno dan H. Hartanto', '744', NULL, 1, 610, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Indahnya Batikku', 'Sugiarti ', '744', NULL, NULL, 611, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Membuat Karakter', 'Bagas Shinugi ', '744', NULL, NULL, 612, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Kreasi Lilin Cantik ', 'Chacha', '744', NULL, 2, 613, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Membuat Boneka Kayu', 'Tina dan Dini', '744', NULL, 2, 614, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Keterampilan Membentuk Tanah Liat ', 'Endyah Murniati', '744', NULL, 1, 615, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Membuat Ukiran Dari Bahan Gabus ', 'Edij Kismartanto', '744', NULL, 1, 616, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Membuat Mainan Dari Kertas ', 'Nurul Ikhasan', '744', NULL, 1, 617, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Daur Ulang Limbah ', 'Farida', '744', NULL, 1, 618, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Aneka Kreasi Membungkus Kado ', 'Iip', '744', NULL, 1, 619, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Eksiklopedia Alat Musik Tradisional', 'Titik Oktia M', '780', 'Musik', NULL, 620, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Bernyanyi Dengan Suling, Pianika, dan Gitar', 'Thursan Hakim', '780', NULL, NULL, 621, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Stainless Art', NULL, '750', 'Seni Lukis dan Lukisan', NULL, 622, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Panduan Melukis dengan Cat Minyak', 'Philip Berrill', '750', NULL, NULL, 623, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Panduan Melukis dengan Pastel', 'Philip Berrill', '750', NULL, NULL, 624, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Seni Musik dan Seni Tari 1 (SMP)', NULL, '780', NULL, NULL, 625, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Seni Musik dan Seni Tari 2 (SMP)', 'Sigit Astono', '780', NULL, NULL, 626, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Seni Musik dan Seni Tari 3 (SMP)', 'Sigit Astono', '780', NULL, NULL, 627, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Bermain Teater', 'Rusputranto dan Marstyanto', '790', 'Seni Rekreasi dan Pertunjukan', NULL, 628, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pendidikan Seni Tari Drama ', 'PUrwatiningsi dan Ninik Harinih', '790', NULL, NULL, 629, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Aneka Tari Anak-anak', 'Ari Subekti', '790', NULL, NULL, 630, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mengenak Seni Lukis', 'Weni  DKK', '750', NULL, NULL, 631, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mengenal Seni Musik dan Lagu ', 'Weni R DKK', '780', NULL, NULL, 632, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mengenal Seni Lukis ', 'Weni R DKK', '750', NULL, 1, 633, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mempelajari Drama ', 'Wahyu Dwi Herawati', '790', NULL, 1, 634, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mengenal Alat Musik Untuk SD dan SMP ', 'Rima Yuli Astuti', '780', NULL, 1, 635, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mengenal Warna ', 'Intan Pariwara', '750', NULL, 1, 636, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Panduan Menggambar Manusia ', 'Saraswati', '750', NULL, 1, 637, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Panduan Menggambar Hewan ', 'Saraswati', '750', NULL, 1, 638, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Seni Karawitan Untuk Murid SLTP Kelas 1', 'Iik Setiawan dan Ismet Ruchimat', '780', NULL, 6, 639, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Dinamika Kebudayaan ', NULL, '700', NULL, 1, 640, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pengetahuan Dasar Seni Teater ', 'O. Lesmanan', '790', NULL, 2, 641, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Aplikasi Praktis Pengajaran Seni Musik ', 'Syahroni', '780', NULL, 1, 642, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Seni Kesenian Asyik Bermain Musik ', 'Khamim', '780', NULL, 1, 643, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Kriya Kayu Untuk Sekolah Menengah Kejuruan ', 'Enget', '730', 'Seni Plastik, Seni Pahat Patung', 1, 644, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Keragaman Tari Nusantara ', 'Ari Subekti', '702', 'Aneka Ragam Kesenian', 2, 645, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('adat Istiadat Masyarakat Nusa Tenggara Timur ', 'Yodi Kurniadi', '702', NULL, 2, 646, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Lagu Wajib dan Nasional ', 'Slamet Rahardjo', '780', NULL, 1, 647, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mengenal Batik Tulis dan Cap Tradisional ', 'Mahudi Soetarman', '702', NULL, 3, 648, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Khazanah Sastra Melayu Klasik ', NULL, '702', NULL, 1, 649, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Kearifan lokal Benteng Kerukunan', 'Samita Radmila', '702', NULL, 2, 650, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pakaian Adat, Senjata Tradisinal, dan Rumah adat ', 'udi sukrama dan otong lesmana', '702', NULL, 2, 651, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mengenal Keraton di Indonesia ', 'Widiyantoro', '702', NULL, 2, 652, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mengenal Rumah Adat Nusantara ', 'Abiyu Mifzal dan Muhammad Dastan', '702', NULL, 2, 653, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Ayo Lestarikan Permainan Tradisional', 'Siti Linggar', '702', NULL, 1, 654, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mengembangkan Nilai Luhur dengan Permainan Tradisional', NULL, '702', NULL, 1, 655, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Jangan Lupakan Aku Mainan Tradisional', 'Barmin& sri wahyuni', '702', NULL, 2, 656, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Seni Karawitan', 'S. Heliarta', '702', NULL, 1, 657, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Selayang Pandang Instrumen Musik Tradisional Indonesia', 'Budi Supriyanto', '702', NULL, 2, 658, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Ragam Wayang dan Gamelan Jawa', 'Dwi Cahyati Anggarawati', '702', NULL, 2, 659, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Wayang sebagai Warisan Budaya Dunia', 'soetrisno', '702', NULL, 1, 660, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Ayo Mengenal Kerajinan Nusantara', 'Rahmi Fitriani', '702', NULL, 4, 661, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mengenal Produk Batik dan Tenun', 'Teguh Prayitno', '702', NULL, 1, 662, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Budaya', 'Achmad Buchory', '702', NULL, 1, 663, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Uniknya Tradisi Kita', 'Yudi Irawan', '702', NULL, 2, 664, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pakaian Adat Senjata Tradisional dan Rumah Adat', 'Wulan Anggraini dan Maya Rohmayati', '702', NULL, 1, 665, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Keunikan Seni Tradisional Indonesia', 'Umi Budiarti', '702', NULL, 1, 666, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Dinamika Kebudayaan', 'Sundjaya', '700', 'Kesenian dan Seni Dekorasi', 1, 667, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Aplikasi Praktis Pengajaran Seni  Musik', NULL, '780', NULL, 1, 668, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pengetahuan Dasar Seni Teater', NULL, '790', NULL, 2, 669, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Panduan Festival dan Lomba Seni Siswa Nasional', 'Kementrian Pendidikan dan Kebudayaan', '700', NULL, 1, 670, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Kesenian Daerah dan Lagu-lagu Daerah', 'Cendi Yuliana', '702', NULL, 3, 671, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Suku Bangsa dan Bahasa ', 'Rossalina P, Ichsan S, dan Leni A', '702', NULL, 1, 672, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mengenal Seni Tari ', 'Weni R', '790', NULL, 1, 673, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Seni Tari Tradisional ', 'Dewi A, Risma R, dan Budi N', '702', NULL, 2, 674, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Apresiasi Karya Seni Tari ', 'Rima Yuliastuti', '790', NULL, 2, 675, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mari Membuat Wayang Kulit ', 'Achmad Sapari', '702', NULL, 1, 676, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Tari-tarian Nusantara', 'Nurul hasanan', '702', NULL, 1, 677, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pendidikan Seni Tari-Drama', NULL, '790', NULL, 1, 678, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Tari-tarian Nusantara', NULL, '702', NULL, NULL, 679, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Sejarah Batik Indonesia', 'Deden Dedi', '702', NULL, 2, 680, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Serba Serbi Keterampilan', 'Riansyah', '744', NULL, 1, 681, 11, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Selayang Pandang : Kalimantan Selatan', 'Tammi Prasto', '12919', 'Geografi Wilayah Lain', NULL, 682, 12, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Selayang Pandang : Bengkulu', 'Giarto', '12919', NULL, NULL, 683, 12, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Selayang Pandang : Jawa Tengah', 'Giarto', '12919', NULL, NULL, 684, 12, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Selayang Pandang : Dki Jakarta', 'Moh Rovii dan Adji Sayekti', '12919', NULL, NULL, 685, 12, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Selayang Pandang : Riau', 'Giarto', '12919', NULL, NULL, 686, 12, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Selayang Pandang : Kepulauan Riau ', 'Nugroho Yuananto ', '12919', NULL, NULL, 687, 12, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Selayang Pandang : Maluku Utara', 'Nugroho Yuananto ', '12919', NULL, NULL, 688, 12, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Selayang Pandang : Papua Barat', 'Purwati', '12919', NULL, NULL, 689, 12, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Selayang Pandang : Nusa Tenggara Timur', 'Gades Cukat Permaty', '12919', NULL, NULL, 690, 12, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Selayang Pandang : Jambi', 'Giarto', '12919', NULL, NULL, 691, 12, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Selayang Pandang : Bali', 'M Purwati', '12919', NULL, NULL, 692, 12, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Selayang Pandang : Maluku', 'Nugroho ', '12919', NULL, NULL, 693, 12, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Selayang Pandang : Gorontalo', 'Nugroho Yuananto ', '12919', NULL, NULL, 694, 12, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Selayang Pandang : Kep. Bangka Belitung', 'Nunung Yulieti', '12919', NULL, NULL, 695, 12, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Selayang Pandang : Daerah Istimewa Yogyakarta', 'Kelik Suprianto', '12919', NULL, NULL, 696, 12, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Selayang Pandang : Banten', 'Giarto', '12919', NULL, NULL, 697, 12, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Selayang Pandang : Kalimantan Barat', 'Iswanto', '12919', NULL, NULL, 698, 12, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Selayang Pandang : Sulawesi Utara', 'Nugroho Yuananto ', '12919', NULL, 1, 699, 12, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Selayang Pandabg : Kalimantan Tengah', 'Nugroho Yuananto ', '12919', NULL, 1, 700, 12, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Selayang Pandang : Kalimantan Timur', 'M. Purwati', '12919', NULL, 1, 701, 12, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Selayang Pandang : Sulawesi Barat ', 'Nugroho Yuananto ', '12919', NULL, 2, 702, 12, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Selayang Pandang : Sumatera Barat ', 'Purwati', '12919', NULL, 2, 703, 12, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Selayang Pandang : Sumatera Selatan ', 'Purwati', '12919', NULL, 1, 704, 12, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Selayang Pandang : Sumatera Utara ', 'Purwati', '12919', NULL, 2, 705, 12, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Selayang Pandang  Sulawasi Selatan', 'Iswanto', '12919', NULL, 1, 706, 12, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Selayang Pandang : Sulawesi Tenggara ', 'M. Purwati', '12919', NULL, 2, 707, 12, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Selayang Pandang : Sulawesi Tengah ', 'Nurul Hidayah', '12919', NULL, 2, 708, 12, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Selayang Pandang : Nanggroe Aceh Darussalam ', 'Nunung Yulietik', '12919', NULL, 1, 709, 12, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Selayang Pandang Indonesiaku ', 'warsito adnan, yuyunita, &purwakto', '12919', NULL, 1, 710, 12, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Candi Negeriku', 'dwi cahyati anggarawati', '12307', NULL, 2, 711, 12, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mengenal Candi-candi di Jawa Tengah dan DIY', 'Abiyu mifzal', '12307', NULL, 1, 712, 12, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Candi-candi di Indonesia', 'Arief Hidayatullah', '12307', NULL, 2, 713, 12, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mengenal Wisata Sejarah dan Budaya Indonesia', 'Yunita Endah C dan Dwi C. Anggarawati', '12307', NULL, 2, 714, 12, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Transportasi di Indonesia dari Masa ke Masa', 'Endar Wismulyani', '12307', NULL, 2, 715, 12, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Wawasan Nusantara', 'Yudi Suparyanto', '12307', NULL, 1, 716, 12, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mengenal Situs Sangiran (Kehidupan Purba di Indonesia)', 'Wahjudi Djaja', '12307', NULL, 1, 717, 12, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Kerajaan-kerajaab di Indonesia', 'Sulistiani', '12307', NULL, 1, 718, 12, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mengenal Museum', 'Vivi Vibariani dan Miyarso Dwi Ajie', '12307', NULL, 1, 719, 12, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pelayaran Nusantara', 'Arim Kamandaka', '12307', NULL, 1, 720, 12, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Ragam Suku Budaya di Indonesia', 'Devi Andriana', '12307', NULL, 2, 721, 12, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Wancana perdamaian dan toleransi agama agama di indonesia ', 'rumidan ,faustina, i made, humaira', '12307', NULL, 1, 722, 12, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Budaya', NULL, '12307', NULL, 1, 723, 12, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Seri Kerajaan Islam di Nusantara Kerajaan Demark ', 'Diding Ahmad Badri', '12307', NULL, 2, 724, 12, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pesona Wisata Sulawesi Selatan ', 'Intan Pariwara', '12307', NULL, 1, 725, 12, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mengenal Simbol Daerah ', 'Kuswilono', '12307', NULL, 2, 726, 12, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('101 Fakta Menarik Tentang Daerah Istimewah Yogyakarta ', 'I.wibowo', '12919', NULL, 1, 727, 12, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Rampai Kearifan Logam Logam Daerah Khusus Ibukota Jakarta ', 'Sri Ratna Hadi', '12919', NULL, 2, 728, 12, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Indahnya Budaya Bali dan Lombok ', 'Ragil Yulianto', '12919', NULL, 1, 729, 12, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pesona Indonesia Lebih Dekat Mengenal Pulau Kalimantan ', 'Yama Shita A, Sukmala D, Rohmay K, dan Fauzi Y', '12919', NULL, 2, 730, 12, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pesona Indonesia Lebih Dekat Mengenal Pulau Bali dan Nusa Tenggara ', 'Sukamala Dewi, Maha Kastrena, dan Shanita Kharisma', '12919', NULL, 2, 731, 12, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pesona Indonesia Lebih Dekat Mengenal Pulau Sumatra ', 'Ichsan Suhada, Udi Sukrama, Yayat S, Rossalina P, Erdiyanto, Satrio A. Y, Delik I, dan Dewi Y', '12919', NULL, 2, 732, 12, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pesona Indonesia Pariwisata Budaya dan sosial Lebih dekat Mengenal Pulau Sulawesi', 'Setrio A. Y, Shanita K, Rossalina P, Nazila K, Leni A, dan Delik I', '12919', NULL, 2, 733, 12, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pesona Indonesia Pariwisata Budaya dan sosial Lebih dekat Mengenal Pulau Papua ', 'Sukmala dewi dan suryaningsih', '12919', NULL, 2, 734, 12, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Atlas Sejarah Indonesia', 'Kementrian Pendidikan dan Kebudayaan', NULL, NULL, 31, 735, 12, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Ensiklopedia Sejarah dan Budaya', 'Lentera Abadi', NULL, NULL, 1, 736, 12, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Kerajaan Nusantara', 'Nur Asiah', NULL, NULL, 1, 737, 12, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pahlawan Nasional Indonesia', 'Nur Asiah', NULL, NULL, 1, 738, 12, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Wawasan Nusantara', 'Lemhannas', '13329', NULL, NULL, 739, 13, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Aku Cinta Indonesia', 'Diarti Buumi', '13329', NULL, NULL, 740, 13, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Bersatu Untuk Indonesia', 'Desy Arisandy dan Idatul Fitri', '13329', NULL, NULL, 741, 13, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Bendera Putih-putih ', 'Rian Hidayat el-Padary', '13329', NULL, NULL, 742, 13, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Aku Ingin Paham Bhineka Tunggal Ika', 'Edi Warsidi', '13329', NULL, NULL, 743, 13, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Eksiklomini : Kejayaan Bangsaku ', 'Okta N.', '13329', NULL, NULL, 744, 13, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pancasila dan Eksistensi NKRI ', 'wahjudi djaja', '13329', NULL, NULL, 745, 13, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Aku dan Mereka Untuk Indonesia', 'Reni', '13329', NULL, NULL, 746, 13, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Peran masyarakat Otonomi Daerah ', 'Moh. Rofii Adji Sayekti', '13329', NULL, NULL, 747, 13, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mengenal Kerajaan', 'Devi Andriana', '13329', NULL, NULL, 748, 13, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Hidup Berbhineka Tunggal Ika', 'Vina Dwi Laning', '13329', NULL, NULL, 749, 13, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Indonesia Bagian dari Dunia', 'Devi Andriana', '13329', NULL, NULL, 750, 13, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Memahami pemerintahan Indonesia', 'Kansil san Christine ', '13329', NULL, 2, 751, 13, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pancasila diantara ideologi Besar dunia', 'Wahjudi Djaja', '13329', NULL, NULL, 752, 13, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Korupsi Subur Negara Hancur', 'Siti Muthiah', '13329', NULL, NULL, 753, 13, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Membaca Nasionalisme-nasionalisme Indonesia', 'Soewarsono, Thung Ju Lan, dan Tine Suartina', '13329', NULL, NULL, 754, 13, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Kehidupan Pada Masa Pasca Kemerdekaan', 'Ruswandi Hermawan', '13329', NULL, NULL, 755, 13, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Masa Prasejarah Sampai Masa Proklamasi Kemerdekaan', 'M. Junaedi Al Anshori', '13329', NULL, NULL, 756, 13, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Nilai Pancasila dalam Tata Peribahasa Indonesia', NULL, '13329', NULL, NULL, 757, 13, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pemuda Harapan Bangsa', 'Wahjudi Djaja', '13329', NULL, NULL, 758, 13, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pancasila Adalah Segalanya ', NULL, '13329', NULL, 10, 759, 13, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mencintai Keragaman', 'Diarti Buumi', '13329', NULL, 2, 760, 13, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pancasila dan Eksisntensi NKRI ', 'Wahjudi Djaja', '13329', NULL, 1, 761, 13, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Bela Negara Untuk Remaja ', 'Bima', '13329', NULL, 2, 762, 13, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Aku Ingin Indonesia Jaya ', 'Umi Istiqomah', '13329', NULL, 4, 763, 13, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Indonesia Jaya ', 'Fajar Nugroho', '13329', NULL, 8, 764, 13, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Zamrud Khatulistiwa Indonesia ', 'Nursanti Riandini', '13329', NULL, 3, 765, 13, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Aku Dan Mereka Untuk Indonesia ', NULL, '13329', NULL, 1, 766, 13, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Indonesia Bagian Dari Dunia ', NULL, '13329', NULL, 1, 767, 13, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Penguatan Pendidikan Kewarganegaraan Untuk Membangun Karakter Membangun Karakter Bangsa', 'Dasim Budimansyah', '14350', NULL, 2, 768, 14, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Masyarakat:Sendi Dasar Kehidupan Berbangsa', 'Vina Dwi Laning dan Endar Wismulyani', '14350', NULL, 2, 769, 14, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('HAM Kewarganegaraan dan Konstutusi', 'Siti Fikriyah', '14350', NULL, 2, 770, 14, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Kewarganegaraan SLTP Kelas 1 ', 'Bambang Margono', '14350', NULL, 2, 771, 14, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mengenal Pemerintahan Daerah ', 'Widada', '14350', NULL, 2, 772, 14, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pendidikan Kewarganegaraan untuk SMK ', 'Setiadi dan Retno Listyarti', '14350', NULL, 1, 773, 14, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Ideologi Negara ', 'D. C. Tyas', '14350', NULL, 2, 774, 14, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Lebih Dekat dengan Penemu Indonesia: Bidang Pertanian', 'Chaeruddin', '15900', NULL, 8, 775, 15, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Lebih Dekat dengan Penemu Indonesia: Bidang Teknik Industri', 'Chaeruddin', '15900', NULL, 9, 776, 15, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Lebih Dekat dengan Penemu Indonesia: Bidang Konstruksi', 'Chaeruddin', '15900', NULL, 8, 777, 15, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Lebih Dekat dengan Penemu Indonesia: Bidang Kesehatan dan Lingkungan', 'Chaeruddin', '15900', NULL, 9, 778, 15, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Lebih Dekat dengan Penemu Indonesia: Bidang Sains dan Pendidikan', 'Chaeruddin', '15900', NULL, 9, 779, 15, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Sutan Mahmud Badaruddin II (Seri Pahlawan)', 'Mardanas Safwan', '15900', NULL, 3, 780, 15, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Letjen Oerip Soemohardjo (Seri Pahlawan)', 'Amrin Imran', '15900', NULL, 3, 781, 15, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Gerung Saul Samuel Jacob Ratulangi (Seri Pahlawan)', 'Mardanas Safwan dan Sutrisno Kutojo', '15900', NULL, 4, 782, 15, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Raden Ajeng Kartini (Seri Pahlawan)', 'Mardanas Safwan dan Sutrisno Kutojo', '15900', NULL, 2, 783, 15, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Sultan Syarif Kasim II (Seri Pahlawan)', 'Mardanas Safwan', '15900', NULL, 1, 784, 15, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Sultan Hasanudin (Seri Pahlawan)', NULL, '15900', NULL, 1, 785, 15, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Muhammad Husni Thamrin (Seri Pahlawan)', 'Mardanas Safwan dan Sutrisno Kutojo', '15900', NULL, 2, 786, 15, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('K.H Akhmad Dahlan (Seri Pahlawan)', 'Mardanas Safwan dan Sutrisno Kutojo', '15900', NULL, 2, 787, 15, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('H. Agus Salim (Seri Pahlawan)', 'Sutrisno Kutoyo dan Mardanas Safwan', '15900', NULL, 4, 788, 15, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Panglima Besar Jenderal Soedirman (Seri Pahlawan Nasional)', 'B.A Saleh', '15900', NULL, 1, 789, 15, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Sultan Agung Tirtayasa ', 'Ian Mustafa', '15900', NULL, 1, 790, 15, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Jayengrana Perang Suksesi Jawa Ke 2 ', 'Ian Mustafa', '15900', NULL, 2, 791, 15, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Kiai Haji Ahmad Dahlan (Seri Pahlawan Nasional) ', 'B.A Saleh', '15900', NULL, 1, 792, 15, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('H.O.S Tjokroaminoto (Seri Pahlawan Nasional) ', 'B.A Saleh', '15900', NULL, 2, 793, 15, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Panglima Besar Jenderal Soedirman (Seri Pahlawan Nasional) ', 'B. A Saleh', '15900', NULL, 1, 794, 15, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pegangan Sejarah Indonesia dan Dunia SMA 2A ', NULL, '15900', NULL, 1, 795, 15, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mengenal Penyair Dunia dan Indonesia ', 'Iwan Hendrawan', '15900', NULL, 1, 796, 15, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Jasa Presiden RI : Soekarno ', 'chaeruddin', '15900', NULL, 7, 797, 15, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Jasa Presiden RI : Soeharto ', 'chaeruddin', '15900', NULL, 8, 798, 15, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Jasa Presiden RI : Habibie ', 'chaeruddin', '15900', NULL, 7, 799, 15, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Jasa Preseden RI : Abdurrahman Wahid', 'chaeruddin', '15900', NULL, 7, 800, 15, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Jasa Preseden RI : Megawati ', 'chaeruddin', '15900', NULL, 9, 801, 15, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Jasa Presiden RI : Susilo Bambang Yudhoyono ', 'chaeruddin', '15900', NULL, 8, 802, 15, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Sejarah Nasional Indonesia I', 'tim nasional penulisan sejarah indonesia', '15900', NULL, 1, 803, 15, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Sejarah Nasional Indonesia II', 'tim nasional penulisan sejarah indonesia', '15900', NULL, 1, 804, 15, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Sejarah Nasional Indonesia III', 'tim nasional penulisan sejarah indonesia', '15900', NULL, 1, 805, 15, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Sejarah Nasional Indonesia IV', NULL, '15900', NULL, 1, 806, 15, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Perubahan SosialMasyarakat Masa Reformasi ', 'Vina Dwi Laning ', '15900', NULL, 2, 807, 15, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mengenal Pahlawan ', 'Devi Andriana', '15900', NULL, 2, 808, 15, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mengenal Tokoh Dunia ', 'Nur Lalili', '15900', NULL, 1, 809, 15, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Sejarah Nenek Moyang Jawa ', 'Radita Subalidinata dan Bisri  M Djaelani ', '15900', NULL, 1, 810, 15, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Kerajaan Nusantara ', 'Anah Elhisani, Lina Marlina dan Idatul Fitri ', '15900', NULL, 2, 811, 15, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Perkembangan Masyarakat Pada Kerajaan Hindu dan Buddha serta Peninggalannya', 'Sucipto', '15900', NULL, 1, 812, 15, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mengenal Kerajaan ', 'Devi Andriana', '15900', NULL, 1, 813, 15, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Peninggalan Sejarah Indonesia ', 'Wahjudi Djaja', '15900', NULL, 1, 814, 15, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Ikhtisari Sejarah Indonesia ', 'Heru Dwiyantara', '15900', NULL, 1, 815, 15, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES (' BSDM : Sejarah Indonesia ', NULL, '15900', NULL, 4, 816, 15, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Raden Ajeng Kartini (Seri Pahlawan Nasional)', 'B.A Saleh', '15900', NULL, 1, 817, 15, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Sejarah Indonesia ', 'Eko Praptanto', '15900', NULL, 7, 818, 15, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Peninggalan Sejarah di Indonesia', 'Wahjudi Djaja', '15900', NULL, 1, 819, 15, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Indonesia Heroes Stories', 'Ahmad Thony', '15900', NULL, 2, 820, 15, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mereka yang Membuka Cakrawala Dunia', 'Haryana Humardani', '15900', NULL, 1, 821, 15, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Sejarah Indonesia 3 Zaman Modern Awal', NULL, '15900', NULL, 1, 822, 15, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('IPS Sejarah ', 'Anwar Kurnia dan Moh Suryana ', '15900', NULL, 1, 823, 15, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pengenalan Sosiologi ', 'Taufiq Rohman Dhohiri ', '15900', NULL, 1, 824, 15, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pembelajaran IPS Kreatif ', 'Riana Chayani', '15900', NULL, 1, 825, 15, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mengenal Penemu Sains Hebat ', 'Nurul Aini', '15900', NULL, 1, 826, 15, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Diplomasi Damai (Seri SBY)', 'Mohammad Shoelhi', '15900', NULL, 1, 827, 15, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Merangkai Kata Menguntai Nada (Seri SBY)', 'Bahrudin Supardi ', '15900', NULL, 1, 828, 15, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Menata Kembali Kehidupan Bangsa (Seri SBY)', 'Hikmat Kusumaningrat', '15900', NULL, 1, 829, 15, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Adil Tanpa Pandang Bulu (Seri SBY)', 'Arif Supriyono', '15900', NULL, 1, 830, 15, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mengenal Pelukis Dunia dan Indonesia ', 'Iwan Hendrawan', '15900', NULL, 3, 831, 15, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Geografi dan Kependudukan', 'Ch. Usman', '15900', NULL, 1, 832, 15, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Memahami Sains Dari Alam : Gunung ', 'Meidiana Frikasari', '16919', NULL, 5, 833, 16, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Cuaca dan Iklim (Seri IPS Geografi) ', 'Sulistiani', '16919', NULL, 3, 834, 16, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Tsunami Sang Gelombang Pembunuh ', 'Beni S. Ambarjaya', '16919', NULL, 1, 835, 16, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Bencana Alam Bencana Manusia ', 'Ferli Zulhendri', '16919', NULL, 1, 836, 16, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pencagahan dan Penanganan Kebakaran Hutan ', 'Kusno Alvin Majid', '16919', NULL, 1, 837, 16, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Gempa Bumi dan Antisipasinya ', 'Sapto Madijono', '16919', NULL, 1, 838, 16, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Geografi dan Kedudukannya ', NULL, '16919', NULL, 2, 839, 16, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Gempa Bumi : Apa dan Bagaimana ', 'Beni S Ambarjaya', '16919', NULL, 2, 840, 16, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Bencana Alam Hidrologi', 'P. Heru Susila', '16919', NULL, 1, 841, 16, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mewaspadai Gempa Bumi dan Tsunami ', 'Purwoko Adi Seno', '16919', NULL, 1, 842, 16, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Bencana Alam Geologi ', 'P. Heru Susila', '16919', NULL, 1, 843, 16, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Cahaya di Alam Semesta', 'Weni R', '16919', NULL, 4, 844, 16, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mengenal Batuan', 'Ahmad Senjaya', '16919', NULL, 2, 845, 16, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Tenaga Eksogen Perias Bumi', 'Anang Saepuloh', '16919', NULL, NULL, 846, 16, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Indonesia di Pertemuan 3 Lempeng Tektonik', 'Eni Anjayani', '16919', NULL, 2, 847, 16, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mengenal Antartika dan Arktika', 'Winarti', '16919', NULL, NULL, 848, 16, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Peta, Atlas dan Global', 'Winarti ', '16919', NULL, 2, 849, 16, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Sungai, Laut dan Bumi Kita', 'Pam Robson ', '16919', NULL, 4, 850, 16, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Bencana Alam Hidrologi', NULL, '16919', NULL, NULL, 851, 16, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Bencana alam Bencana Manusia', 'Herlina Rahmawati', '16919', NULL, NULL, 852, 16, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Prasejarah', 'Rosda', '16919', NULL, 3, 853, 16, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Gempa bumi apa dan bagaimana?', NULL, '16919', NULL, NULL, 854, 16, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Kebakaran', 'Weni R', '16919', NULL, 3, 855, 16, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Manusia, Makanan dan Tempat Tinggal', 'Pam Robson ', '16919', NULL, 4, 856, 16, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Tanah Penyangga Kehidupan', 'Anang Saepuloh', '16919', NULL, NULL, 857, 16, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Konservasi Tanah', 'Teguh Yuwono', '16919', NULL, NULL, 858, 16, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Hutan Lindung', NULL, '16919', NULL, NULL, 859, 16, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mengenal Benua', 'Ahmad Zamroni', '16919', NULL, NULL, 860, 16, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Atmosfer Bumi Makin Panas', 'Risman', '16919', NULL, 2, 861, 16, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Gamping', 'Indah Setyowati', '16919', NULL, 2, 862, 16, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Batubara', 'Dyah Probowati', '16919', NULL, NULL, 863, 16, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Kehidupan di Muka Bumi', 'Akhmad Zamroni', '16919', NULL, 3, 864, 16, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('bauksit', 'M. Winanto Ajie P H', '16919', NULL, NULL, 865, 16, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Belajar Dari Kegetiran Bencana Alam', 'Hetti Restiani ', '16919', NULL, 2, 866, 16, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Letusan Gunung Berapi ', 'Weni R', '16919', NULL, 4, 867, 16, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Air Meluap Timbulah Bencana ', 'Sri Mintarjo', '16919', NULL, 2, 868, 16, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Bencana Alam dan Masa Depan Bumi ', NULL, '16919', NULL, 1, 869, 16, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Belajar Aktif Geografi ', 'Atang Suryaatmaja, dkk.', '16919', NULL, 2, 870, 16, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Kisah di Balik Minyak Bumi ', 'Soekardi', '16919', NULL, 1, 871, 16, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Laut Sebagai Pemersatu Bangsa', 'Adhyaksa Dault', '16919', NULL, 1, 872, 16, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Geografi 3', 'E. Maryani dan Sri Hayati', '16919', NULL, 1, 873, 16, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Geografi Untuk Kehidupan Seri Negara dan Budaya ', 'Samsul Bachri, T. Bachtiar dan Ahmad Yani ', '16919', NULL, 2, 874, 16, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Berlayar Dari Pulau Ke Pulau ', 'Adhyaksa Dault', '16919', NULL, 1, 875, 16, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Hutan  ', 'L Colvin dan E Speare', '16919', NULL, 2, 876, 16, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Peta, Denah dan Ekosistem ', 'Pam Robson ', '16919', NULL, 3, 877, 16, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Enksiklopedia Geografi (A-K)', 'L. Tsagita Ariani', '16919', NULL, 2, 878, 16, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Enksiklopedia Geografi (L-R)', 'NartiIndariawati', '16919', NULL, 3, 879, 16, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Enksiklopedia Geografi (S-Z)', 'Suryaningsih', '16919', NULL, 2, 880, 16, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Gerakan Kerak Bumi dan Akibatnya ', 'Safitri Yosita Ratri ', '16919', NULL, 1, 881, 16, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Potensi Laut dan Samudra Kita ', 'Iswanto', '16919', NULL, 2, 882, 16, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Geografi Untuk SLTP Kelas 1', 'Ruswardiyatmo. Paidjo, Siswondo, Estu Heru Purnomo,', '16919', NULL, 1, 883, 16, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mengenal Bentuk Konservasi Alam', 'Winarti', '16919', NULL, 2, 884, 16, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Seri Anak Pintar Memahami Kehidupan Di Bumi ', 'M. Narti Fauziah', '16919', NULL, 1, 885, 16, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Gurun dan Gunung ', 'L. Colvin dan E. Speare', '16919', NULL, 2, 886, 16, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('IPS Geografi Kelas 3A ', 'Kuswanto, Fatimah dan Suparwan ', '16919', NULL, 1, 887, 16, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pertambangan Ramah Lingkungan ', 'Yanto Indonesianto', '16919', NULL, 2, 888, 16, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mengenal Energi Panas Bumi ', 'M. TH. Kristiati', '16919', NULL, 1, 889, 16, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Timah', 'Untung Sukamto', '16919', NULL, NULL, 890, 16, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Keajaiban Segitiga Siku - Siku ', 'Abdul Aziz Saefudin ', '17510', NULL, 2, 891, 17, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mengungkap Masa Lalu Dengan Matematika ', 'Janu Ismadi ', '17510', NULL, 3, 892, 17, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Matematika Dalam Pengukuran Mempelajari Kecepatan ', 'Muklis ', '17510', NULL, 2, 893, 17, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Ayo Menggunakan Teorema Phytagoras ', 'Muhamad Masud', '17510', NULL, 2, 894, 17, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Intisari dan Pembahasan Matematika 2B ', 'Darmo Susianto, Sungkono, dan Rismanto', '17510', NULL, 7, 895, 17, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Intisari dan Pembahasan Matematika 2A', 'Darmo Susianto, Sungkono, dan Rismanto', '17510', NULL, 2, 896, 17, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Intisari dan Pembahasan Matematika 1B', 'Darmo Susianto, Sungkono, dan Rismanto', '17510', NULL, 2, 897, 17, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Penuntun Pelajaran Matematika berdasarkan Kurikulum 1984', 'Suah Sembiring ', '17510', NULL, 1, 898, 17, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Rahasia Di Balik Bilangan ', 'Janu Ismadi ', '17510', NULL, 3, 899, 17, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Matematika Pada Zaman Purba ', 'Badrul Komar dan Ruslani ', '17510', NULL, 1, 900, 17, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Siapakah Penemu Angka Nol ', 'J. Zahrani K', '17510', NULL, 1, 901, 17, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Menentukan Bruto, Tara, dan Neto ', 'Fiki Pustasari', '17510', NULL, 1, 902, 17, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Matematika Untuk SMP 2B CSBA Tahun 1987', 'Wahyudin ', '17510', NULL, 1, 903, 17, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Trik - Trik Berhitung ', 'Edward H Julius ', '17510', NULL, 1, 904, 17, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Asyiknya Matematika ', 'Illah S.T ', '17510', NULL, 1, 905, 17, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Kesebangunan ', 'Dewi Marsiyah', '17510', NULL, 2, 906, 17, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Garis dan Kedudukannya ', 'Dewi Marsiyah', '17510', NULL, 2, 907, 17, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Bermain Dengan Bangun Geometri ', 'Yulinda Eliskar ', '17510', NULL, 2, 908, 17, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Ensiklopedia Matematika Bangun Datar', 'Nugroho', '17510', NULL, 1, 909, 17, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Belajar Dasar-Dasar Matematika ', 'Nasin El Kabumaini ', '17510', NULL, 2, 910, 17, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mahir Akunntasi Dengan Cara Sederhana ', NULL, '17510', NULL, 1, 911, 17, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Seri Matematika Untuk Anak-Anak: Mengenal Bangun Ruang ', 'Dewi Ismaliyah ', '17510', NULL, 2, 912, 17, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Seri Matematika Untuk Anak-Anak: Mengenal Bangun Bilangan', 'Reza Saputra ', '17510', NULL, 3, 913, 17, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Seri Matematika Untuk Anak-Anak: Mengenal Bangun Datar ', 'Andini Juliana ', '17510', NULL, 4, 914, 17, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mengukur Bangun Ruang Tabung ', 'Nurul Azizah', '17510', NULL, 2, 915, 17, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Ayo Mengukur Jarak ', 'Alanna Fardiani dan Dudi Ferdiani ', '17510', NULL, 2, 916, 17, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Sejarah Matematika ', 'Nanin El Kabumaini ', '17510', NULL, 2, 917, 17, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pengemabangan Kurikulum dan Pembelajaran Matematika ', 'Herman Hudojo', '17510', NULL, 1, 918, 17, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Seri Matematika Untuk Anak-Anak: Mengenal Pengukuran ', 'Laila Nurhasanah ', '17510', NULL, 4, 919, 17, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mengukur Bangun Datar: Lingkaran', 'Mianto ', '17510', NULL, 2, 920, 17, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mengenal Bangun dan Belajar Pecahan', 'Andrew King', '17510', NULL, 2, 921, 17, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mengenal Bilangan dan Menemukan Pola', 'Andrew King', '17510', NULL, 2, 922, 17, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Seri Matematika untuk Anak-anak: Mengenal Pecahan', 'Iman Rajasa', '17510', NULL, 2, 923, 17, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Seri Matematika untuk Anak-anak: Mengenal Statistika', 'Sofyan Kertawijaya ', '17510', NULL, 3, 924, 17, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Berat, Waktu, dan Pengukuran', 'Andrew King', '17510', NULL, 2, 925, 17, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Cara Praktis: Belajar Sempoa Sendiri', 'Ester Oen Oen ', '17510', NULL, 6, 926, 17, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Asyiknya Mempelajari Bangun Datar: Segitiga', 'Nur Aksin ', '17510', NULL, 2, 927, 17, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Menentukan Posisi dan Mengolah Data', 'Andrew King', '17510', NULL, 4, 928, 17, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Ayo Mengukur Kelajuan', 'Alanna Faradiani dan Dudi Ferdiani ', '17510', NULL, 2, 929, 17, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Ayo Mengukur Luas', 'Alanna Faradiani dan Dudi Ferdiani ', '17510', NULL, 2, 930, 17, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Ayo Mengukur Tinggi', 'Alanna Faradiani dan Dudi Ferdiani ', '17510', NULL, 2, 931, 17, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Ayo Mengukur Berat', 'Alanna Faradiani dan Dudi Ferdiani ', '17510', NULL, 1, 932, 17, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Ayo Mengukur Volume', 'Alanna Faradiani dan Dudi Ferdiani ', '17510', NULL, 1, 933, 17, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pengenalan Matematika Dasar', 'Wahyudin dan Andrian Yusmandar', '17510', NULL, 2, 934, 17, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mengenal Bilangan', 'Taufik Hidayat', '17510', NULL, 1, 935, 17, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Ensiklomini Matematika: Perkalian dan Pembagian', 'Ulfah Mardiah', '17510', NULL, 1, 936, 17, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Ensiklomini Matematika: Pengukuran Panjang Berat dan Waktu', 'Okky Indra P', '17510', NULL, 1, 937, 17, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Suatu Alternatif Pembelajaran Kemampuan Berfikir Kritis Matematika ', 'Dina Mayadina Suwarna', '17510', NULL, 1, 938, 17, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Sukses  US dan UN Matematika SMK ', 'Etty Lisnawati, Retna Meika Kadarsari, dan Ani Andriyani', '17510', NULL, 2, 939, 17, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Modul Matematika Untuk SMK Kelas XI', 'Dedi Heryadi', '17510', NULL, 1, 940, 17, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Peningkatan dan Pengayaan Matematika 2', 'Wahyudin dan Sudrajat', '17510', NULL, 1, 941, 17, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Matematika Sekolah Lanjutan Tingkat Pertama ', 'Syarief Hidayat dan Tantan Rustandi', '17510', NULL, 1, 942, 17, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Bermain Dengan Matematika ', 'Muhammad Ramdhan Adi', '17510', NULL, 1, 943, 17, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Ensiklopedia Matematika Pengukuran (Referensi dan Petunjuk Untuk Pemahaman Matematika)', 'Retna Maliskah', '17510', NULL, 1, 944, 17, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Ensiklopedia Matematika (R - Z)', 'Hadi Lesmana', '17510', NULL, 9, 945, 17, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Ensiklopedia Matematika (K - Q)', 'Andini Septiasari', NULL, NULL, NULL, 946, 17, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Ensiklopedia Matematika (A - J)', 'Yani Puji Lestari', NULL, NULL, NULL, 947, 17, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Ensiklopedia Matematika Terapan ', 'Sue Thomson dan Ian Forster', '17510', NULL, 14, 948, 17, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Peningkatan dan Pengayaan Matematika', 'Wahyudin dan Sudrajat', '17510', NULL, 3, 949, 17, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Ensiklopedia Matematika Anak: Mari Berbicara Matematika', 'Rizky Grafis', '17510', NULL, 1, 950, 17, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Bermain dengan Matematika ', NULL, '17510', NULL, 1, 951, 17, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Referensi Matemarika dalam Kehidupan Manusia ', NULL, '17510', NULL, 13, 952, 17, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Referensi Sains dalam Kehidupan Manusia', NULL, '18504', NULL, NULL, 953, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Intisari dan Pembahasan Biologi Kelas 1', 'Tim cendekia', '18504', NULL, 3, 954, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Intisari dan Pembahasan Biologi Kelas 3', 'Tim pustaka selia', '18504', NULL, 9, 955, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('SETS Tubuh Kita dan Kesehatan ', 'Wahyudin', '18504', NULL, 1, 956, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('SETS Sains dan Teknologi ', 'Wahyudin', '18504', NULL, 1, 957, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('SETS Bumi dan Ruang Angkasa ', 'Wahyudin', '18504', NULL, 2, 958, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('SETS Dunia Hewan dan Tumbuhan ', 'Wahyudin', '18504', NULL, 1, 959, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mengamati Keunikan Burung ', 'M. Fikkar', '18504', NULL, 1, 960, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Tingkah Polah Kelelawar', 'Rara Abdullah', '18504', NULL, 2, 961, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Berbagai Cara Binatang Berkomunikasi ', 'Juliani Nur Aziza', '18504', NULL, 1, 962, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Berbagai Cara Binatang Melestarikan Keturunan ', 'M. Hasbi', '18504', NULL, 2, 963, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mengenal Hewan Primata ', 'M. Arief', '18504', NULL, 2, 964, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Bagaimana Binatang Berkembang Biak ', 'Sumiyati  Sa adah', '18504', NULL, 2, 965, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Keunikan Serangga ', 'Riyana HS', '18504', NULL, 1, 966, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Burung di Indonesia ', 'Tri Yulianto', '18504', NULL, 1, 967, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Hewan - Hewan Langka di Indonesia ', 'Ferly Julhendri', '18504', NULL, 2, 968, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Keanekaragaman Fauna Di Indonesia ', 'Eko Titis Prasangko', '18504', NULL, 2, 969, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mengerti Tentang Mamalia ', 'Tri Yulianto', '18504', NULL, 1, 970, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Seri Anak Pintar Memahami Kehidupan Di Bumi ', 'M. Narti Fauziah', '18504', NULL, 1, 971, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Kehidupan Binatang ', 'Sally Hewitt', '18504', NULL, 1, 972, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Bagaimana Hewan dan Tumbuhan Mempertahankan Diri', 'Wigati Hadi Omegawati', '18504', NULL, 1, 973, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Lindungi Kami ', 'Aang Athorida', '18504', NULL, 1, 974, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pengetahuan Tentang Satwa (Seri Ilmu Pengetahuan Untuk Anak)', 'Fauzi Yusuf', '18504', NULL, 2, 975, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mengenal Moluska', NULL, '18504', NULL, 1, 976, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Dunia Fauna ', 'Zaenal Arifin', '18504', NULL, 2, 977, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mengenal Bumi Untuk Menjaga Kelestarian Bumi Seri 2', 'Suryaningsih', '18504', NULL, 2, 978, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mengenal Bumi Untuk Menjaga Kelestarian Bumi Seri 3', 'Delik Iskandar', NULL, NULL, NULL, 979, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Yang Perlu Kita Ketahui ', 'Fadlan Oetama', '18504', NULL, 1, 980, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Bioteknologi di Sekitar Kita ', 'Reni Mulyati', '18504', NULL, 1, 981, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Tanaman Proyek Sains Yang Menarik ', 'Sally Hewitt', '18504', NULL, 1, 982, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mikrobiologi Industri ', 'Nur Hidayat', '18504', NULL, 2, 983, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Seri IPA dan Teknologi : Waktu, Panjang, dan Berat ', 'Emma Saidah Zhafira', '18504', NULL, 1, 984, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Benda, Gaya, dan Energi', NULL, '18504', NULL, 2, 985, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Seri IPA dan Teknologi: Gerak dan Energi', NULL, '18504', NULL, 2, 986, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Seri Anak Pintar: Memahami Gelombang, Bunyi, dan Cahaya', NULL, '18504', NULL, 1, 987, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Seri Percobaan Sains: Percobaan Terhadap Magnet', NULL, '18504', NULL, 1, 988, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Seri Percobaan Sains: Percobaan Terhadap Air', NULL, '18504', NULL, 1, 989, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Seri Percobaan Sains: Percobaan Terhasap Listrik', NULL, '18504', NULL, 1, 990, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Seri Percobaan Sains: Percobaan Terhadap Udara dan Bunyi', NULL, '18504', NULL, 1, 991, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Senang Mencoba Sains', NULL, '18504', NULL, 6, 992, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Referensi Sains', NULL, '18504', NULL, NULL, 993, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Ensiklopedia, Sahabatku', NULL, '18504', NULL, 3, 994, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Menyelidiki Udara ', NULL, '18504', NULL, 1, 995, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Aku Makin Tahu Tentang Bumi dan Iklimnya ', 'Anna Martina', '18504', NULL, 1, 996, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Sains Untuk Pemula', NULL, '18504', NULL, 34, 997, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Biologi SMA ', NULL, '18504', NULL, 1, 998, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Sains Biologi : Mengungkap Rahasia Alama Kehidupan ', NULL, '18504', NULL, 1, 999, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Perawis sifat dan pemanfaatannya ', NULL, '18504', NULL, 1, 1000, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Biologi dalam Kehidupan Kita ', NULL, '18504', NULL, 2, 1001, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Biologiku ', NULL, '18504', NULL, 1, 1002, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Belajar Biologi SLTP 2 ', 'H. Marthin', '18504', NULL, 1, 1003, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Konsep dan Penerapan Sains Biologi ', NULL, '18504', NULL, 1, 1004, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Ensiklopedia Pertama Tehubung Ke internet Sains ', NULL, '18504', NULL, 1, 1005, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Rahasia Sans Ensiklopedia Sains untuk anak ', NULL, '18504', NULL, 1, 1006, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pemuda dan Kelautan Pemanasan Global dan Perubahan garis Pantai ', 'Andhyaksa Dault', '18504', NULL, 1, 1007, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pemuda dan Kelautan : Industri Perikanan Nusantara ', 'Andhyaksa Dault', '18504', NULL, 2, 1008, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pemuda dan Kelautan : Bangsa Bahari ', 'Andhyaksa Dault', '18504', NULL, 1, 1009, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Flora yang menakjubkan ', NULL, '18504', NULL, 1, 1010, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Makhluk Hidup dan Lingkunganya ', 'Toto Subroto', '18504', NULL, 2, 1011, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mengamati kehidupan flora dan Fauna ', 'Muhammad Naufal Zharif Bakar', '18504', NULL, 2, 1012, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Kimia for Dummies ', 'John T. Moore', '18504', NULL, 1, 1013, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Kimia Lingkungan ', 'Dr. Rukaesih Achmad', '18504', NULL, 1, 1014, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Belajar Biologi SLTP 1', NULL, '18504', NULL, 1, 1015, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Ensiklopedia Sejarah dan budaya ', NULL, '18504', NULL, 1, 1016, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Sistem Pencernaan Manusia', 'Aang Sonhaji', '18504', NULL, 2, 1017, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mengenal Sistem Indra', NULL, '18504', NULL, 1, 1018, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mengenal Rangka Tubuh', NULL, '18504', NULL, 1, 1019, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Menjaga Kesehatan Tulang', NULL, '18504', NULL, 1, 1020, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Kenali Paru-paru Anda', NULL, '18504', NULL, 1, 1021, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Bermula dari Makanan', NULL, '18504', NULL, 1, 1022, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mengenal Tubuh Kita', NULL, '18504', NULL, 2, 1023, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Anatomi Tubuh Manusia', NULL, '18504', NULL, 1, 1024, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Belajar Sains itu Menyenangkan', 'Andrian', '18504', NULL, 1, 1025, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('IPA dalam Kehidupan Sehari-hari', 'Andri Panduweni', '18504', NULL, 2, 1026, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Memahami Sains di Sekitar Rumah', NULL, '18504', NULL, 3, 1027, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mari Bereksperimen dengan Sains', NULL, '18504', NULL, 2, 1028, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mari Bereksperimen 7', 'Wahyu Candea', NULL, NULL, NULL, 1029, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('mari bereksperimen 2', 'R.masita', '18504', NULL, NULL, 1030, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mari Bereksperimen 6', 'Wahyu Candra', NULL, NULL, NULL, 1031, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mari Bereksperimen 10', 'Wahyu Candra', NULL, NULL, NULL, 1032, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Cakrawala Sains Serba Serbi Energi', NULL, '18504', NULL, 2, 1033, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pantai dan Kehidupan', NULL, '18504', NULL, 1, 1034, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Hewan Bersel Satu & Hewan Berpori', NULL, '18504', NULL, 2, 1035, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Beraneka Ragam Hewan Bertubuh Lunak', NULL, '18504', NULL, 1, 1036, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mengenal Moluska', 'Hendrawati dan Ria Novita Sari', '18504', NULL, 1, 1037, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Keanekaragaman Biota Laut', NULL, '18504', NULL, 2, 1038, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Upaya Melestarikan Penyu', NULL, '18504', NULL, 1, 1039, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Beraneka Ragam Hewan Berongga dan Hewan Berkulit Duri', NULL, '18504', NULL, 1, 1040, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Beraneka Ragan Hewan Berbuku-buku', NULL, '18504', NULL, 2, 1041, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Beraneka Ragam Reptil', NULL, '18504', NULL, 3, 1042, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Beraneka Ragam Ikan Air Tawar', NULL, '18504', NULL, 2, 1043, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Beraneka Ragam Amfibi', NULL, '18504', NULL, 1, 1044, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Beraneka Ragam Cacing (Vermes)', NULL, '18504', NULL, 1, 1045, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mengenal Laut untuk Menjaga Kelestarian Laut Seri 1', 'Budi Nurani', '18504', NULL, 3, 1046, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mengenal Laut untuk Menjaga Kelestarian Laut Seri 2', 'Siti Rukoyah', NULL, NULL, NULL, 1047, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Seri Sains Dasar', NULL, '18504', NULL, 7, 1048, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Rahasia Sains Ensiklopedia Sains Untuk Anak ', 'Andarini Trisnasari', '18504', NULL, NULL, 1049, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Rahasia Sains Tata Surya', 'Andarini Trisnasari', NULL, NULL, NULL, 1050, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Bermain Dengan Sains ', 'Andy santoso', '18504', NULL, 8, 1051, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('99 Percobaan Sehari - hari ', 'Wahyudin', '18504', NULL, 2, 1052, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Ensiklopedia IPTEK ', 'lentera abadi', '18504', NULL, 2, 1053, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Jendela IPTEK Materi ', 'Chistopher Cooper', '18504', NULL, 1, 1054, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Jendela IPTEK Kimia', 'Ann Newmark', NULL, NULL, NULL, 1055, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Jendela IPTEK Gaya & Gerak', 'Peter Lafferty', NULL, NULL, NULL, 1056, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Jendela IPTEK Listrik', 'Steve Parker', NULL, NULL, NULL, 1057, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Jendela IPTEK Energi', 'Jack Challoner', NULL, NULL, NULL, 1058, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mari Bereksperimen   ', NULL, '18504', NULL, 6, 1059, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Kamu Bisa Jadi Ilmuwan ', 'Sutrio Hadi dan Nilam Permata', '18504', NULL, 1, 1060, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('IPA dan Fisika 1986 ', 'Kamajaja', '18504', NULL, 1, 1061, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mari Belajar Sains Untuk Anak ', NULL, '18504', NULL, 1, 1062, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Belajar Sains Melalui Fenomena DI Sekitar Kita ', NULL, '18504', NULL, 1, 1063, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Menuju Olimpiade Fisika untuk SMP dan MTS', NULL, '18504', NULL, 2, 1064, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Ensiklopedia Fisika ', NULL, '18504', NULL, 16, 1065, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Menganak Teknologi Roket ', NULL, '18504', NULL, 1, 1066, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Intisari dan Pembahasan Fisika 1', 'Tim Pustaka Selia', '18504', NULL, 28, 1067, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Intisari dan Pembahasan Fisika 2', 'tim cendekia', '18504', NULL, NULL, 1068, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Intisari dan Pembahasan Fisika 3', 'tim cendekia', '18504', NULL, NULL, 1069, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Biologi SMA ', NULL, '18504', NULL, 1, 1070, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Ilmu Alam SMP ', NULL, '18504', NULL, 1, 1071, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Sosiologi dan Antropologi ', NULL, '18504', NULL, 2, 1072, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Eksperimen IPA 2 ', 'Henny Syatriah', '18504', NULL, 8, 1073, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Persiapan Menghadapi UMPTN', NULL, '18504', NULL, 1, 1074, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Asyik Bereksperimen ', 'Retna Masita', '18504', NULL, 4, 1075, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pustaka Sains : Campuran dan Senyawa ', 'alastair smith, philip clarke, dan corinne henderson', '18504', NULL, 2, 1076, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pustaka Sains : Material ', 'Alastair S, Philip C, dan Corrine H', '18504', NULL, 1, 1077, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mengenal Kimia SMP ', NULL, '18504', NULL, 6, 1078, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Kimia : Teknologi dan Industri ', NULL, '18504', NULL, 1, 1079, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Fisika sesuai dengan gbpp yang disempurnakan ', NULL, '18504', NULL, 1, 1080, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Kimia dalam Kehidupan Kita', NULL, '18504', NULL, NULL, 1081, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Bioteknologi di Sekitar Kita ', NULL, '18504', NULL, NULL, 1082, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mengenal Zat', 'Setia Aji', '18504', NULL, NULL, 1083, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Media Pendidikan : Biologi Avertebrata', 'Drs. Suhardi,M.pd', '18504', NULL, NULL, 1084, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Kehidupan Terumbu Karang', 'Dewi Nurmayati, Endang sugriyati,Sofia mansoor', '18504', NULL, NULL, 1085, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Menyusuri Kehidupan Pantai', 'Alya Nurfauziah', '18504', NULL, NULL, 1086, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Kehidupan Tumbuhan Laut', 'Dewi Nurmayati, Endang sugriyati,Sofia mansoor', '18504', NULL, NULL, 1087, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Kehidupan Hutan Bakau', 'M.arief', '18504', NULL, NULL, 1088, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Kehidupan Moluska', 'Dewi Nurmayati, Endang sugriyati,Sofia mansoor', '18504', NULL, NULL, 1089, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Beraneka Ragam Ikan Air Laut ', NULL, '18504', NULL, NULL, 1090, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Terumbu Karang', 'Andhyaksa Dault', '18504', NULL, NULL, 1091, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Kehidupan Laut Indonesi 1', 'Alya nurfauziah', '18504', NULL, NULL, 1092, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Kehidupan Laut Indonesi 2', 'Alya Nurfauziah', '18504', NULL, NULL, 1093, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Kehidupan Mamalia Laut 1', 'Dewi Nurmayati, Endang sugriyati,Sofia mansoor', '18504', NULL, NULL, 1094, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Kehidupan Mamalia Laut 2', 'Dewi Nurmayati, Endang sugriyati,Sofia mansoor', '18504', NULL, NULL, 1095, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Sumber Daya Kelautan ', 'Andhyaksa Dault', '18504', NULL, NULL, 1096, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Menyelami Rahasi Laut ', 'Dewi Nurmayati, Endang sugriyati,Sofia mansoor', '18504', NULL, NULL, 1097, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Lebih Dekat dengan Lautku ', 'martyn bramwell', '18504', NULL, NULL, 1098, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Selangkah Menuju Rekayasa Genetik', 'Y.F Sarbini dan Juliandi', '18504', NULL, NULL, 1099, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('waspadai Bahan Kimia di Rumah Kita', 'Kurniasih', '18504', NULL, NULL, 1100, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Memahami Klasifikasi Zat', 'Adi Wibowo', '18504', NULL, NULL, 1101, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Ikatan Kimia', 'Muhammad Rahman', '18504', NULL, NULL, 1102, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Fisika Kurikulum 1984', NULL, '18504', NULL, 1, 1103, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Fisika dan Bumi Antartika', NULL, '18504', NULL, 1, 1104, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Menjelajah Lautan', NULL, '18504', NULL, 2, 1105, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Alam Sekitar Kita', 'L. Colvin dan E. Speare', '18504', NULL, 1, 1106, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mengenal Alam Semesta', NULL, '18504', NULL, 2, 1107, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pantai dan Kehidupannya', NULL, '18504', NULL, 1, 1108, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mengenal Organisasi Pelestarian Lingkungan', 'Eni Anjayani', '18504', NULL, 1, 1109, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Kekayaan Sumber Daya Indonesia', 'Heri Sucitro', '18504', NULL, 1, 1110, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Memahami Gelombang, bunyi dan Cahaya', NULL, '18504', NULL, NULL, 1111, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Percobaan Terhadap Listrik ', NULL, '18504', NULL, NULL, 1112, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Memahami Energi, listrik, dan magnet ', NULL, '18504', NULL, NULL, 1113, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mengenal Listrik ', NULL, '18504', NULL, NULL, 1114, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Panas dan Energi ', NULL, '18504', NULL, NULL, 1115, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Percobaan Terhadap Magnet', NULL, '18504', NULL, NULL, 1116, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Percobaan Terhadap Cahaya', NULL, '18504', NULL, NULL, 1117, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Belajar aktif Fisika untuk SMP kelas II', NULL, '18504', NULL, NULL, 1118, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Berkenalan Dengan Fisika ', 'Muhammad Ramdhan Adi', '18504', NULL, NULL, 1119, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Gaya dan Gerak ', NULL, '18504', NULL, NULL, 1120, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Eksiklopedi Fisika 1', NULL, '18504', NULL, NULL, 1121, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Bahan Kimia di Sekitar Kita', NULL, '18504', NULL, NULL, 1122, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Atom, Ion dan Molekul Beserta Aplikasinya', NULL, '18504', NULL, NULL, 1123, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Percobaan Terhadap Air ', NULL, '18504', NULL, NULL, 1124, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Percobaan Terhadap Zat ', NULL, '18504', NULL, NULL, 1125, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Bumi dan Tata Surya', NULL, '18504', NULL, 1, 1126, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Bertamasya ke Tata Surya', NULL, '18504', NULL, 2, 1127, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Aku Makin Tahu Tentang: Planet Merkurius Venus, dan Mars', NULL, '18504', NULL, 2, 1128, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Kreasiku Seri Tata Surya', NULL, '18504', NULL, 1, 1129, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Legenda Kayu Manis', NULL, NULL, NULL, 1, 1130, 18, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Jona Oberski: Masa Kanak-kanak Kinderjagen', NULL, '19813', NULL, 1, 1131, 19, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Ada Apa dengan Tampang?', NULL, '19813', NULL, 1, 1132, 19, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Wasiat Sang Ayah', NULL, '19813', NULL, 2, 1133, 19, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Seri Ceritera Rakyat: dari Jawa Tiwur Hikayat Jember', NULL, '19813', NULL, 2, 1134, 19, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Sapi Perah Paman', NULL, '19813', NULL, 1, 1135, 19, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Seri Para Sahabat Nabi: Zaid bin Haritsah', NULL, '19813', NULL, 1, 1136, 19, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Seri Para Sahabat Nabi: Qais bin Sa\'ad', NULL, '19813', NULL, 1, 1137, 19, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Belajar untuk Jujur', NULL, '19813', NULL, 1, 1138, 19, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Buku Seri Akhlak Mulia: Mengukir Jati Diri', NULL, '19813', NULL, 1, 1139, 19, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Kisah Pejabat yang Amanah', NULL, '19813', NULL, 1, 1140, 19, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Seri Para Sahabat Nabi: Abu Musa Al Asy\'ari', NULL, '19813', NULL, 1, 1141, 19, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Dongeng Klasik Riau', NULL, '19813', NULL, 1, 1142, 19, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Dongeng Klasik Nusa Tenggara Barat', NULL, '19813', NULL, 1, 1143, 19, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Yodium: Rahasia Si Pintar', NULL, '19813', NULL, 1, 1144, 19, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Festival Syahadah ', NULL, '19813', NULL, 1, 1145, 19, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Abu Bakar Shidiq ', NULL, '19813', NULL, 1, 1146, 19, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Menjelajah Nusantara Dengan Cerita Rakyat ', NULL, '19813', NULL, 1, 1147, 19, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Cut Nyak Dien ', NULL, '19813', NULL, 1, 1148, 19, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Linda Punya Kebun Pepaya ', NULL, '19813', NULL, 1, 1149, 19, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Aku Ingin Menjadi Astronaut ', NULL, '19813', NULL, 1, 1150, 19, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Belajar Kepada Mereka Yang Pantang Menyerah ', NULL, '19813', NULL, 1, 1151, 19, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Nyanyian Cinta Untuk Sang Pencipta ', NULL, '19813', NULL, 1, 1152, 19, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Maron Sang Juara ', NULL, '19813', NULL, 1, 1153, 19, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Aku Ingin Sekolah ', NULL, '19813', NULL, 1, 1154, 19, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Membuat Boneka Kayu ', NULL, '19813', NULL, 1, 1155, 19, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Syahid Samural ', NULL, '19813', NULL, 1, 1156, 19, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Persiapan Membuka Usaha Kecil yang Menghasilkan ', NULL, '19813', NULL, 1, 1157, 19, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Jika Pertiwi Memanggil ', NULL, '19813', NULL, 1, 1158, 19, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Kubu di Atas Bukit ', NULL, '19813', NULL, 1, 1159, 19, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Kehidupan Masyarakat Bajau ', NULL, '19813', NULL, 2, 1160, 19, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Rahasia di Balik Dering Telepon ', NULL, '19813', NULL, 2, 1161, 19, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Laksana Bintang Berkilau ', NULL, '19813', NULL, 1, 1162, 19, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Cincin Kelopak Mawar ', NULL, '19813', NULL, 1, 1163, 19, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Patung Kertas ', NULL, '19813', NULL, 2, 1164, 19, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Si Tukang Sablon ', NULL, '19813', NULL, 1, 1165, 19, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Berdamain Dengan Uang ', NULL, '19813', NULL, 2, 1166, 19, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Keluarga Cucurbitae ', NULL, '19813', NULL, 2, 1167, 19, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Suka duka sebatang pensil', NULL, '19813', NULL, 1, 1168, 19, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Obat Yang ada disekitar kita ', NULL, '19813', NULL, 1, 1169, 19, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Ayo Terus Sekolah', NULL, '19813', NULL, 1, 1170, 19, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Dari Pemburu Keterapeutik', NULL, '19813', NULL, 1, 1171, 19, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Budi Pekerti Bertamu ', NULL, '19813', NULL, 1, 1172, 19, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Kecil-Kecil Berani Menyunting Naskah ', NULL, '19813', NULL, 1, 1173, 19, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Biarkan Terbang Bersama Angin ', NULL, '19813', NULL, 1, 1174, 19, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Gema Suara Lebah', NULL, '19813', NULL, 1, 1175, 19, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Cinta Gaya Britney', NULL, '19813', NULL, 1, 1176, 19, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Dongeng Klasik Sulawesi Barat', NULL, '19813', NULL, NULL, 1177, 19, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Keajaiban Candi Borobudur', NULL, '19813', NULL, NULL, 1178, 19, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Dongeng Klasik Sulawesi Utara', NULL, '19813', NULL, NULL, 1179, 19, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Dongeng Klasik Jambi', NULL, '19813', NULL, NULL, 1180, 19, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Dendang Pantun dan Syair', NULL, '19813', NULL, NULL, 1181, 19, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Asal Usul Tari Sintren', NULL, '19813', NULL, NULL, 1182, 19, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Menjunjung Langit Desaku', NULL, '19813', NULL, NULL, 1183, 19, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Penebar Bibit Kesegaran', NULL, '19813', NULL, NULL, 1184, 19, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Disiplin dalam Kehidupan', NULL, '19813', NULL, NULL, 1185, 19, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Akhlak Mulia Meraih Kesuksesan', NULL, '19813', NULL, NULL, 1186, 19, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Tujuh Hari Menjelang Ulang Tahun Ayu', NULL, '19813', NULL, NULL, 1187, 19, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Bermula Dari Makanan', NULL, '19813', NULL, NULL, 1188, 19, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Sapi Perah Paman', NULL, '19813', NULL, NULL, 1189, 19, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Jaga Lingkungan Demi Anak Cucu Kita', NULL, '19813', NULL, NULL, 1190, 19, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Sumber Air Panas Sari Ater', NULL, '19813', NULL, NULL, 1191, 19, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Berdamai Dengan Perkelahian', NULL, '19813', NULL, NULL, 1192, 19, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Memajukkan daerah Tertinggal ', NULL, '19813', NULL, NULL, 1193, 19, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Surat Untuk Ibu Negara', NULL, '19813', NULL, NULL, 1194, 19, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Sebuah Raket Buat Tania', NULL, '19813', NULL, 1, 1195, 19, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Gema Suara Lebah', NULL, '19813', NULL, 1, 1196, 19, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Lintang Pamungkas', NULL, '19813', NULL, 1, 1197, 19, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Batu Bata Kukesra', NULL, '19813', NULL, 1, 1198, 19, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Sawo Buah Sepanjang Masa', NULL, '19813', NULL, 1, 1199, 19, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Sultan Hasanudin', NULL, '19813', NULL, 1, 1200, 19, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Nyanyian Cinta untuk Alam Semesta', NULL, '19813', NULL, 1, 1201, 19, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Jati DI Antara Tunas Bangsa ', NULL, '19813', NULL, 1, 1202, 19, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Seri Penggembala Itik ', NULL, '19813', NULL, 1, 1203, 19, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Danudirja Setiabhi', NULL, '19813', NULL, 1, 1204, 19, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Meneladani 99 Sifat Allah ', NULL, NULL, 'Aqaid dan Ilmu Kalam', 9, 1205, 20, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Ayo Belajar Puasa ', NULL, NULL, 'Fiqih', 1, 1206, 20, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Ayo Mengenal Peninggalan Islam ', NULL, NULL, 'Sejarah Islam dan Biografi', 1, 1207, 20, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Ayo Mengenal Zakat ', NULL, NULL, NULL, 2, 1208, 20, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Seri Para Sahabat Nabi :Khabab bin Arats', NULL, NULL, NULL, 1, 1209, 20, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Seri Para Sahabat Nabi : Thalthah bin Ubiiadillah', NULL, NULL, NULL, 1, 1210, 20, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Seri Para Sahabat Nabi : Subaib bin Sinan', NULL, NULL, NULL, 1, 1211, 20, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Seri Para Sahabat Nabi : Mush\'ab bin Umair', NULL, NULL, NULL, 1, 1212, 20, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Menjadi Petani Sukses Dunia Akhirat', NULL, NULL, NULL, 2, 1213, 20, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pengembangan Bahan Ajar Pendidikan Agama Islam ', NULL, NULL, 'Islam Umum', 1, 1214, 20, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Utang-piutang dalam islam', NULL, NULL, NULL, 1, 1215, 20, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Qalbu salim ', NULL, NULL, NULL, 1, 1216, 20, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Belajar sholat berjamaah ', NULL, NULL, NULL, 1, 1217, 20, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Doa dan Zikir ', NULL, NULL, 'Akhlak dan Tasawuf', 1, 1218, 20, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Kisah- kisah Shalat', NULL, NULL, NULL, NULL, 1219, 20, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Kiai Cilik', NULL, NULL, NULL, NULL, 1220, 20, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Doa & Zikir', NULL, NULL, NULL, NULL, 1221, 20, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Belajar Shalat Berjamaah', NULL, NULL, NULL, NULL, 1222, 20, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Hadis Pilihan Bergambar', '-', '', 'Hadis dan Ilmu yang Berkaitan', 0, 1223, 20, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mengenal Shalat \'iedain', NULL, NULL, NULL, NULL, 1224, 20, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Kajian Tentang : Akhlaq', NULL, NULL, NULL, NULL, 1225, 20, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Kajian Tentang : Hadist', NULL, NULL, NULL, NULL, 1226, 20, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Ilmu Nahwu Bahasa Arab', NULL, NULL, NULL, NULL, 1227, 20, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Kajian Tentang : Fiqih ', NULL, NULL, NULL, NULL, 1228, 20, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pendidikan Agama Islam SMK Kelas III', NULL, NULL, NULL, NULL, 1229, 20, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Belajar Mudh Membaca Al-qur\'an', NULL, NULL, NULL, NULL, 1230, 20, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pendidika Agama Islam SMK KELAS II', NULL, NULL, NULL, NULL, 1231, 20, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Buku Modul Pesantren Kilat', NULL, NULL, NULL, NULL, 1232, 20, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pendidika Akhlak Mulya ', NULL, NULL, NULL, NULL, 1233, 20, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Salman Al Farisi ', NULL, NULL, NULL, 1, 1234, 20, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Terjemah Tuhfatul Ahwadzi ', NULL, NULL, NULL, 2, 1235, 20, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Terampil Bahasa Arab ', NULL, NULL, NULL, 1, 1236, 20, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Dasar - Dasar Bahasa Arab', NULL, NULL, NULL, 2, 1237, 20, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Buku Seri Akhlak Mulia Meneladani Sifat Nabi ', NULL, NULL, NULL, 1, 1238, 20, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Seri Buku 6 Akhlak Mulia Menciptakan Kedamaian ', NULL, NULL, NULL, 1, 1239, 20, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Buku Seri Akhlak Mulia Rumahku Surgaku ', NULL, NULL, NULL, 2, 1240, 20, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Seri Buku 5 Akhlak Mulia Meraih Kesuksesan ', NULL, NULL, NULL, 1, 1241, 20, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Musyarawarah Untuk Mufakat ', NULL, NULL, NULL, 2, 1242, 20, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Integrasi Materi Pendidikan Islam Dengan Mata Pelajaran Umum', NULL, NULL, NULL, 15, 1243, 20, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Koperasi Syariah ', NULL, NULL, NULL, 1, 1244, 20, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mengikuti Jejak Rasulullah ', NULL, NULL, NULL, 2, 1245, 20, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Kisah-kisah Rasulullah Abbas Ali al-Musawi', NULL, NULL, NULL, 1, 1246, 20, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Nabi Muhammad SAW Idolaku', NULL, NULL, NULL, 1, 1247, 20, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Seri Buku 2 Akhlak Mulia Berteman ', NULL, NULL, NULL, 1, 1248, 20, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Seri Buku 1 Akhlak Mulia Hidup Sehat ', NULL, NULL, NULL, 1, 1249, 20, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Panduan Baca Tulis Al-Qur\'an', NULL, NULL, NULL, 2, 1250, 20, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Tafsir Surat Al-Qadr', NULL, NULL, NULL, 1, 1251, 20, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Terjemah Qishah Al-Mi\'raj', NULL, NULL, NULL, 1, 1252, 20, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Buku Seri Akhlak Mulia: Menggapai yang Terpuji, Menghindari yang Tercela', NULL, NULL, NULL, 1, 1253, 20, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('100 Hadits Qudsi', NULL, NULL, NULL, 1, 1254, 20, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Kisah-kisah Terpuji Sahabat Nabi: Kamal Al-Sayyid', NULL, NULL, NULL, 1, 1255, 20, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Kisah-kisah Nahjul Balaghah', NULL, NULL, NULL, 1, 1256, 20, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pendidikan Agama Islam Kurikulum 1984', NULL, NULL, NULL, 1, 1257, 20, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pendidikan Agama Islam SMTP 3', NULL, NULL, NULL, 1, 1258, 20, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Kisah-kisah Bismillah', NULL, NULL, NULL, 1, 1259, 20, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Hikmah & Makna Haji', NULL, NULL, NULL, 2, 1260, 20, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Terjamah Juz\'amma', NULL, NULL, NULL, 1, 1261, 20, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pendidikan Agama Islam untuk SLP', NULL, NULL, NULL, 1, 1262, 20, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Kisah-kisah Ajaib', NULL, NULL, NULL, 1, 1263, 20, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Rahasia Ibadah', NULL, NULL, NULL, 2, 1264, 20, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Rahasia Rahasia Ibadah', NULL, NULL, NULL, 1, 1265, 20, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Belajar Mudah Membaca Al-Qur\'an', NULL, NULL, NULL, 1, 1266, 20, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mengenal Jual Beli Menurut Islam', NULL, NULL, NULL, 2, 1267, 20, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Utang-piutang dalam Islam', NULL, NULL, NULL, 2, 1268, 20, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Tafsir Surah Yasin', NULL, NULL, NULL, 2, 1269, 20, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mengenal Zakat Mal', NULL, NULL, NULL, 3, 1270, 20, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Panduan Pendidikan Agama Islam SMU Kelas III', NULL, NULL, NULL, 5, 1271, 20, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Pendidikan Agama Islam Bermuatan Budi Pekerti dan HAM untuk SMK Kelas 1', NULL, NULL, NULL, 3, 1272, 20, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Panduan Guru Pendidikan Agama Islam SMU Kelas II', NULL, NULL, NULL, 6, 1273, 20, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Panduan Guru Pendidikan Agama Islam SMU Kelas I', NULL, NULL, NULL, 6, 1274, 20, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Sumbangan Islam kepada Sains & Peradaban Dunia', NULL, NULL, NULL, 19, 1275, 20, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mutiara Kisah: 25 Nabi & Rasul', NULL, NULL, NULL, 18, 1276, 20, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Tabut Peti Surga dan Kisah-kisah Lainnya', NULL, NULL, NULL, 17, 1277, 20, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Ensiklopedia Anak Nasional', NULL, NULL, NULL, 15, 1278, 20, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Memahami Gelombang, Bunyi dan Cahaya', NULL, NULL, NULL, 1, 1279, 20, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Structure and reading comprehension', NULL, '21820', NULL, 6, 1280, 21, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Langkah sukses belajar bahasa inggris 2', NULL, '21820', NULL, 2, 1281, 21, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('English General Conversation', NULL, '21820', NULL, 1, 1282, 21, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Cindelaras adapted from indonesia folklore', NULL, '21820', NULL, 1, 1283, 21, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Indonesia Folktales ', NULL, '21820', NULL, 3, 1284, 21, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('English Through Reading and Vocabulary', NULL, '21820', NULL, 7, 1285, 21, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Structure and Workbook for SMP ', NULL, '21820', NULL, 4, 1286, 21, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Belajar Akrif Bahasa Inggris Kurikulum 1994', NULL, '21820', NULL, 6, 1287, 21, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Belajar Bahasa Inggris Melalui Permainan', NULL, '21820', NULL, 1, 1288, 21, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mahir Menulis Paragraf Bahasa Inggris ', NULL, '21820', NULL, 2, 1289, 21, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Choose The Correct Answer', NULL, '21820', NULL, 1, 1290, 21, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Langkah Sukses Belajar Bahasa Inggris 2', NULL, '21820', NULL, 2, 1291, 21, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('We All Speak English ', NULL, '21820', NULL, 2, 1292, 21, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('I Love English ', NULL, '21820', NULL, 1, 1293, 21, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Always English ', NULL, '21820', NULL, 1, 1294, 21, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('English Is Fun', NULL, '21820', NULL, 1, 1295, 21, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Let\'s Study Prepositions: Mari Belajar Preposisi', NULL, '21820', NULL, 4, 1296, 21, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Sukses Ujian Nasional Bahasa Inggris', NULL, '21820', NULL, 1, 1297, 21, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('The Goat\'s Secret and Other Stories', NULL, '21820', NULL, 2, 1298, 21, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Percakapan Bahasa Inggris di Sekolah', NULL, '21820', NULL, 1, 1299, 21, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Always English', NULL, '21820', NULL, 1, 1300, 21, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('English is Fun', NULL, '21820', NULL, 2, 1301, 21, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Belajar Bahasa Inggris 1', NULL, '21820', NULL, NULL, 1302, 21, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Children Illustrated Dictionary', NULL, '21820', NULL, NULL, 1303, 21, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Public Speaking', NULL, '21820', NULL, NULL, 1304, 21, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('The Mouse Deer Cheats The Farmer and Other Stories', NULL, '21820', NULL, NULL, 1305, 21, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('I Speak English ', NULL, '21820', NULL, NULL, 1306, 21, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Keajaiban Tembok Besar Cina ', NULL, '21820', NULL, NULL, 1307, 21, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Keajaiban Piramida', NULL, '21820', NULL, NULL, 1308, 21, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Keajaiban Menara Eiffel', NULL, '21820', NULL, NULL, 1309, 21, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Keajaiban Big Ben ', NULL, '21820', NULL, NULL, 1310, 21, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Keajaiban Menara Pisa', NULL, '21820', NULL, NULL, 1311, 21, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Menjelajahi Anak Benua', NULL, '21820', NULL, NULL, 1312, 21, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Menjelajahi Sungai Nil', NULL, '21820', NULL, NULL, 1313, 21, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Menjelajahi Negeri Kincir Angin', NULL, '21820', NULL, 1, 1314, 21, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mengenal Gizi', NULL, '22001', NULL, 2, 1315, 22, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Membuat Parasut', NULL, '22001', NULL, 2, 1316, 22, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Teknologi Pada Masyarakat Desa ', NULL, '22001', NULL, 1, 1317, 22, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Koperasi Sekolah ', NULL, '22001', NULL, 1, 1318, 22, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Badan Badan Usaha ', NULL, '22001', NULL, 1, 1319, 22, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Teknik Membaca Peta dan Kompas ', NULL, '22001', NULL, 2, 1320, 22, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Dokumen Penting Keluarga ', NULL, '22001', NULL, 2, 1321, 22, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Ibu sehat anak sehat bangsa kuat', NULL, '22001', NULL, 1, 1322, 22, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Panduan Pelaksanaan dan materi MOS SMP ', NULL, '22001', NULL, 1, 1323, 22, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mengenal Simbol Instansi ', NULL, '22001', NULL, 2, 1324, 22, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Mengenal Organisasi Internasional ', NULL, '22001', NULL, 1, 1325, 22, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Buku Panduan Kegiatan ', NULL, '22001', NULL, 1, 1326, 22, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Stop Mirasantika ', NULL, '22001', NULL, 1, 1327, 22, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Seri IPS Ekonomi Badan Usaha ', NULL, '22001', NULL, 2, 1328, 22, NULL, '2023-06-04 09:41:52');
INSERT INTO `tbdaftar_buku` VALUES ('Semua Harus Legal ', NULL, '22001', NULL, 1, 1329, 22, NULL, '2023-06-04 09:41:52');

-- ----------------------------
-- Table structure for tbdetailkriteria
-- ----------------------------
DROP TABLE IF EXISTS `tbdetailkriteria`;
CREATE TABLE `tbdetailkriteria`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `idkriteria` int NULL DEFAULT NULL,
  `kriteria` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `detail` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `bobot` int NULL DEFAULT NULL,
  `normalisasi` float NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbdetailkriteria
-- ----------------------------
INSERT INTO `tbdetailkriteria` VALUES (1, 1, 'RINGAN', 'Memakai seragam tidak sesuai aturan ', 2, 0.02);
INSERT INTO `tbdetailkriteria` VALUES (2, 1, 'RINGAN', 'Tidak menggunakan seragam sesuai aturan ', 3, 0.03);
INSERT INTO `tbdetailkriteria` VALUES (3, 1, 'RINGAN', 'Rambut Panjang bagi laki-laki', 5, 0.05);
INSERT INTO `tbdetailkriteria` VALUES (4, 1, 'RINGAN', 'Merusak tanaman dengan sengaja', 5, 0.05);
INSERT INTO `tbdetailkriteria` VALUES (5, 1, 'RINGAN', 'Terlambat', 5, 0.05);
INSERT INTO `tbdetailkriteria` VALUES (6, 1, 'RINGAN', 'Tidak mengikuti jam pelajaran', 5, 0.05);
INSERT INTO `tbdetailkriteria` VALUES (7, 1, 'RINGAN', 'tidak masuk tanpa keterangan', 5, 0.05);
INSERT INTO `tbdetailkriteria` VALUES (8, 1, 'RINGAN', 'Keluar kelas pada saat jam pelajaran ', 5, 0.05);
INSERT INTO `tbdetailkriteria` VALUES (9, 1, 'RINGAN', 'Tidak ikut upacara ', 5, 0.05);
INSERT INTO `tbdetailkriteria` VALUES (10, 1, 'RINGAN', 'Mengaktifkan hp pada saat KBM berlangsung', 5, 0.05);
INSERT INTO `tbdetailkriteria` VALUES (11, 1, 'RINGAN', 'Menggunakan sandal pada saat KBM tanpa meminta izin', 5, 0.05);
INSERT INTO `tbdetailkriteria` VALUES (12, 1, 'RINGAN', 'Meninggal sekolah dan membuat keterangan palsu', 10, 0.1);
INSERT INTO `tbdetailkriteria` VALUES (13, 1, 'RINGAN', 'Memakai tindik di wajah bagi laki-laki', 10, 0.1);
INSERT INTO `tbdetailkriteria` VALUES (14, 1, 'RINGAN', 'Menggunakan perhiasan berlebihan ', 10, 0.1);
INSERT INTO `tbdetailkriteria` VALUES (15, 1, 'RINGAN', 'Membawa rokok ke sekolah ', 20, 0.2);
INSERT INTO `tbdetailkriteria` VALUES (16, 2, 'SEDANG', 'Menggunakan make up berlebih', 5, 0.0175439);
INSERT INTO `tbdetailkriteria` VALUES (17, 2, 'SEDANG', 'Mencemarkan nama sekolah', 10, 0.0350877);
INSERT INTO `tbdetailkriteria` VALUES (18, 2, 'SEDANG', 'Tidak masuk sekolah dan membuat keterangan palsu', 10, 0.0350877);
INSERT INTO `tbdetailkriteria` VALUES (19, 2, 'SEDANG', 'Menghisap rokok di sekolah', 20, 0.0701754);
INSERT INTO `tbdetailkriteria` VALUES (20, 2, 'SEDANG', 'Memalsukan ttd guru', 30, 0.105263);
INSERT INTO `tbdetailkriteria` VALUES (21, 2, 'SEDANG', 'Merusak dan mengambil barang milik sekolah', 50, 0.175439);
INSERT INTO `tbdetailkriteria` VALUES (22, 2, 'SEDANG', 'Melakukan tindak asusila dan norma kesopanan', 50, 0.175439);
INSERT INTO `tbdetailkriteria` VALUES (23, 2, 'SEDANG', 'Terlibat anggota gang yang tidak baik', 60, 0.210526);
INSERT INTO `tbdetailkriteria` VALUES (24, 2, 'SEDANG', 'Bullying secara verbal', 50, 0.175439);
INSERT INTO `tbdetailkriteria` VALUES (25, 2, 'SEDANG', 'Jumlah ?w=1', 285, 1);
INSERT INTO `tbdetailkriteria` VALUES (26, 3, 'BERAT', 'Memiliki membawa dan mempergunakan buku, handphone yang terdapat pornografi di dalamnya.', 60, 0.166667);
INSERT INTO `tbdetailkriteria` VALUES (27, 3, 'BERAT', 'Membawa senjata tajam tanpa izin ', 70, 0.194444);
INSERT INTO `tbdetailkriteria` VALUES (28, 3, 'BERAT', 'Berdandan, menggunakan memakai cat kuku rambut di warna', 50, 0.138889);
INSERT INTO `tbdetailkriteria` VALUES (29, 3, 'BERAT', 'Menggunakan Napza atau minuman terlarang', 100, 0.277778);
INSERT INTO `tbdetailkriteria` VALUES (30, 3, 'BERAT', 'Berkelahi atau tawuran dengan kelompok atau siswa dari sekolah lain (bullying fisik)', 80, 0.222222);

-- ----------------------------
-- Table structure for tbkelompok
-- ----------------------------
DROP TABLE IF EXISTS `tbkelompok`;
CREATE TABLE `tbkelompok`  (
  `id_kelompok` double NOT NULL AUTO_INCREMENT,
  `kelompok` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_kelompok`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of tbkelompok
-- ----------------------------
INSERT INTO `tbkelompok` VALUES (1, 'EKONOMI');
INSERT INTO `tbkelompok` VALUES (2, 'KEGURUAN');
INSERT INTO `tbkelompok` VALUES (3, 'LINGKUNGAN HIDUP');
INSERT INTO `tbkelompok` VALUES (4, 'KECAKAPAN HIDUP');
INSERT INTO `tbkelompok` VALUES (5, 'PSIKOLOGI');
INSERT INTO `tbkelompok` VALUES (6, 'SASTRA DAN BAHASA');
INSERT INTO `tbkelompok` VALUES (7, 'TEKNIK DAN KOMPUTER');
INSERT INTO `tbkelompok` VALUES (8, 'OLAHRAGA');
INSERT INTO `tbkelompok` VALUES (9, 'BUDI DAYA');
INSERT INTO `tbkelompok` VALUES (10, 'PENGOLAHAN MAKANAN');
INSERT INTO `tbkelompok` VALUES (11, 'KESENIAN');
INSERT INTO `tbkelompok` VALUES (12, 'WILAYAH INDONESIA');
INSERT INTO `tbkelompok` VALUES (13, 'NASIONALISME');
INSERT INTO `tbkelompok` VALUES (14, 'KEWARGANEGARAAN');
INSERT INTO `tbkelompok` VALUES (15, 'SEJARAH DAN TOKOH');
INSERT INTO `tbkelompok` VALUES (16, 'GEOGRAFI');
INSERT INTO `tbkelompok` VALUES (17, 'MATEMATIKA');
INSERT INTO `tbkelompok` VALUES (18, 'IPA');
INSERT INTO `tbkelompok` VALUES (19, 'FIKSI INDONESIA');
INSERT INTO `tbkelompok` VALUES (20, 'AGAMA ISLAM');
INSERT INTO `tbkelompok` VALUES (21, 'SASTRA DAN BAHASA INGGRIS');
INSERT INTO `tbkelompok` VALUES (22, 'PENGETAHUAN UMUM');

-- ----------------------------
-- Table structure for tbkriteria
-- ----------------------------
DROP TABLE IF EXISTS `tbkriteria`;
CREATE TABLE `tbkriteria`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `kriteria` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `bobot` int NULL DEFAULT NULL,
  `atribut` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbkriteria
-- ----------------------------
INSERT INTO `tbkriteria` VALUES (1, 'RINGAN', 20, 'Cost');
INSERT INTO `tbkriteria` VALUES (2, 'SEDANG', 30, 'Benefit');
INSERT INTO `tbkriteria` VALUES (3, 'BERAT', 50, 'Benefit');

-- ----------------------------
-- Table structure for tbsetup
-- ----------------------------
DROP TABLE IF EXISTS `tbsetup`;
CREATE TABLE `tbsetup`  (
  `namasistem` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `logosistem` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `copyright` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `versi` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of tbsetup
-- ----------------------------
INSERT INTO `tbsetup` VALUES ('SISTEM PENDUKUNG KEPUTUSAN DENGAN METODE SAW', 'smp.png', 'Copyright © Myrta 2024. All rights reserved.', '1.0');

-- ----------------------------
-- Table structure for tbsiswa
-- ----------------------------
DROP TABLE IF EXISTS `tbsiswa`;
CREATE TABLE `tbsiswa`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nis` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jenkel` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tanggal_lahir` date NULL DEFAULT NULL,
  `tlpn` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `alamat` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `foto` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `status` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'AKTIF',
  `Keterangan` varchar(160) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `inputby` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `inputon` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbsiswa
-- ----------------------------
INSERT INTO `tbsiswa` VALUES (1, '122333444455555666666', 'MYRTA', 'Laki-Laki', '2024-01-12', '12312312312312', 'tes', '122333444455555666666.PNG', 'AKTIF', '', 'alfi', '2024-01-13 16:19:45');
INSERT INTO `tbsiswa` VALUES (2, '33333333333', 'ujang', 'Laki-Laki', '2024-01-13', NULL, 'kkkkk', '33333333333.PNG', 'AKTIF', '', 'alfi', '2024-01-13 10:45:55');

-- ----------------------------
-- Table structure for tbuser
-- ----------------------------
DROP TABLE IF EXISTS `tbuser`;
CREATE TABLE `tbuser`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `password` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `status` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'AKTIF',
  `avatar` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'smp.png',
  `inputby` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tglinput` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  `tglexpired` datetime NULL DEFAULT NULL,
  `otoritas` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `id_customer` int NULL DEFAULT NULL,
  `nickname` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of tbuser
-- ----------------------------
INSERT INTO `tbuser` VALUES (1, 'alfi', '202cb962ac59075b964b07152d234b70', 'AKTIF', 'alfi.PNG', 'alfi', '2024-01-10 21:07:42', '2023-05-30 00:00:00', 'KEPALA SEKOLAH', 1, 'alfi chandra');
INSERT INTO `tbuser` VALUES (7, 'aaaa', '202cb962ac59075b964b07152d234b70', 'AKTIF', 'male1.png', 'alfi', '2024-01-10 21:07:51', '2023-06-07 00:00:00', 'KEPALA SEKOLAH', 1, 'mir');

SET FOREIGN_KEY_CHECKS = 1;
