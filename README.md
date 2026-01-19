📌 UAS Pemrograman Basis Data

☕ Sistem Nota Coffee Shop

📝 Deskripsi Proyek

Repository ini berisi proyek Ujian Akhir Semester (UAS) mata kuliah Pemrograman Basis Data dengan studi kasus Sistem Nota Transaksi Coffee Shop.

Proyek ini bertujuan untuk merancang dan mengimplementasikan basis data relasional yang digunakan dalam proses pencatatan transaksi penjualan pada coffee shop.
Implementasi dilakukan menggunakan MySQL dengan penerapan konsep:

Entity Relationship Diagram (ERD)

Normalisasi hingga Third Normal Form (3NF)

Query SQL lanjutan

🎯 Tujuan Proyek

Tujuan dari proyek Nota Coffee Shop ini adalah:

✅ Menerapkan konsep dasar Pemrograman Basis Data pada studi kasus nyata

✅ Merancang struktur database yang terstruktur dan ter-normalisasi hingga 3NF

✅ Mengimplementasikan DDL, DML, dan TCL dalam pengelolaan basis data

✅ Membangun relasi antar tabel menggunakan Primary Key dan Foreign Key

✅ Menggunakan query JOIN, GROUP BY, HAVING, serta fungsi agregasi

✅ Menjadi sarana pembelajaran akademik dalam memahami basis data relasional

🗄️ Struktur Database

Database yang digunakan bernama dbnota, yang terdiri dari tabel-tabel utama berikut:

📦 barang → menyimpan data makanan dan minuman

🍽️ layanan → menyimpan jenis layanan (dine in, take away, dll)

👩‍🍳 waitress → menyimpan data pelayan

🧾 transaksi → menyimpan data transaksi penjualan

📄 detail_transaksi → menyimpan rincian barang dalam setiap transaksi

🔗 Relasi Antar Tabel

Relasi yang diterapkan dalam database Nota Coffee Shop meliputi:

🔹 Barang – Detail_Transaksi : One to Many (1:N)

🔹 Transaksi – Detail_Transaksi : One to Many (1:N)

🔹 Waitress – Transaksi : One to Many (1:N)

🔹 Layanan – Transaksi : One to Many (1:N)

Relasi ini dibangun menggunakan Primary Key dan Foreign Key sesuai dengan rancangan ERD.

💻 Materi SQL yang Diterapkan
🏗️ Data Definition Language (DDL)

CREATE DATABASE

CREATE TABLE

PRIMARY KEY dan FOREIGN KEY

✏️ Data Manipulation Language (DML)

INSERT

SELECT

UPDATE

DELETE

🔁 Transaction Control Language (TCL)

START TRANSACTION

COMMIT

ROLLBACK

📊 Query Lanjutan

JOIN (Inner Join, Left Join, Right Join)

GROUP BY

HAVING

Fungsi agregasi (COUNT, SUM)

🛠️ Tools yang Digunakan

🐬 MySQL

🧰 MySQL Workbench

🌐 phpMyAdmin

📁 GitHub

▶️ Cara Menjalankan Proyek

🔹 Buka MySQL Workbench

🔹 Jalankan script SQL untuk membuat database dan tabel

🔹 Pastikan database dbnota berhasil dibuat

🔹 Jalankan query DML dan query lanjutan untuk melihat hasil transaksi

🔹 Gunakan phpMyAdmin untuk memverifikasi data secara visual

📂 Repository GitHub

Repository GitHub digunakan sebagai dokumentasi proyek UAS Pemrograman Basis Data, yang menyimpan:

📄 Script SQL

📐 ERD

📊 Hasil implementasi query

📝 Catatan

📌 Proyek ini dibuat khusus untuk keperluan akademik dan pembelajaran SQL, tanpa membahas antarmuka pengguna maupun aspek keamanan sistem secara mendalam.

👨‍🏫 Dosen Pengampu

📧 ridwan_dwiirawan@udb.ac.id
