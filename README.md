UAS Pemrograman Basis Data – Sistem Nota Coffee Shop

Deskripsi Proyek: 
Repository ini berisi proyek Ujian Akhir Semester (UAS) mata kuliah Pemrograman Basis Data dengan studi kasus Sistem Nota Transaksi Coffee Shop.
Proyek ini bertujuan untuk merancang dan mengimplementasikan basis data relasional yang digunakan dalam proses pencatatan transaksi penjualan pada coffee shop. Implementasi dilakukan menggunakan MySQL dengan penerapan konsep Entity Relationship Diagram (ERD), normalisasi hingga 3NF, serta penggunaan query SQL lanjutan.

Tujuan dari proyek Nota Coffee Shop ini adalah:
1. Menerapkan konsep dasar Pemrograman Basis Data dalam studi kasus nyata
2. Merancang struktur database yang terstruktur dan ter-normalisasi hingga 3NF
3. Mengimplementasikan DDL, DML, dan TCL dalam pengelolaan basis data
4. Membangun relasi antar tabel menggunakan Primary Key dan Foreign Key
5. Menggunakan query JOIN, GROUP BY, HAVING, dan fungsi agregasi
6. Menjadi sarana pembelajaran akademik dalam memahami pengelolaan basis data relasional
 
Struktur Database yang digunakan bernama dbnota, yang terdiri dari beberapa tabel utama berikut:
1. barang → menyimpan data makanan dan minuman
2. layanan → menyimpan jenis layanan (dine in, take away, dll)
3. waitress → menyimpan data pelayan
4. transaksi → menyimpan data transaksi penjualan
5. detail_transaksi → menyimpan rincian barang dalam setiap transaksi

Relasi yang diterapkan dalam database Nota Coffee Shop meliputi:
1. Barang – Detail_Transaksi : One to Many (1:N)
2. Transaksi – Detail_Transaksi : One to Many (1:N)
3. Waitress – Transaksi : One to Many (1:N)
4. Layanan – Transaksi : One to Many (1:N)
5. Relasi ini dibangun menggunakan Primary Key dan Foreign Key sesuai dengan rancangan ERD.

Materi SQL yang Diterapkan:
1. Data Definition Language (DDL)
   a. CREATE DATABASE
   b. CREATE TABLE
   c. PRIMARY KEY dan FOREIGN KEY

2. Data Manipulation Language (DML)
   a. INSERT
   b. SELECT
   c. UPDATE
   d. DELETE

3. Transaction Control Language (TCL)
   a. START TRANSACTION
   b. COMMIT
   c. ROLLBACK

4. Query Lanjutan
   a. JOIN (Inner Join, Left Join, Right Join)
   b. GROUP BY
   c. HAVING
   d. Fungsi agregasi (COUNT, SUM)

Tools yang Digunakan:
1. MySQL
2. MySQL Workbench
3. phpMyAdmin
4. GitHub

Cara Menjalankan Proyek:
1. Buka MySQL Workbench
2. Jalankan script SQL untuk membuat database dan tabel
3. Pastikan database dbnota berhasil dibuat
4. Jalankan query DML dan query lanjutan untuk melihat hasil transaksi
5. Gunakan phpMyAdmin untuk memverifikasi data secara visual

Repository GitHub: 
Repository ini digunakan sebagai dokumentasi proyek UAS Pemrograman Basis Data dan menyimpan seluruh artefak proyek, termasuk script SQL, ERD, serta hasil implementasi query.

Catatan: 
Proyek ini dibuat khusus untuk keperluan akademik dan pembelajaran SQL, tanpa membahas antarmuka pengguna maupun aspek keamanan sistem secara mendalam.

Dosen Pengampu:
Ridwan Dwi Irawan, S.Kom., M.Kom.
