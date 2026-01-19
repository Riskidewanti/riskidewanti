☕✨ UAS Pemrograman Basis Data

📄 Sistem Nota Transaksi Coffee Shop



🚀 Deskripsi Proyek

Repository ini merupakan proyek Ujian Akhir Semester (UAS) mata kuliah Pemrograman Basis Data dengan studi kasus Sistem Nota Transaksi Coffee Shop.

Proyek ini berfokus pada perancangan dan implementasi basis data relasional yang digunakan untuk mencatat transaksi penjualan pada coffee shop secara terstruktur, akurat, dan terorganisir.

Seluruh implementasi dilakukan menggunakan MySQL, dengan menerapkan:

📐 Entity Relationship Diagram (ERD)

🧩 Normalisasi database hingga 3NF

⚙️ Query SQL lanjutan untuk analisis data transaksi

🎯 Tujuan Proyek

Proyek Nota Coffee Shop ini dikembangkan dengan tujuan:

☑️ Mengimplementasikan konsep Pemrograman Basis Data dalam kasus nyata

☑️ Merancang database yang rapi, konsisten, dan ter-normalisasi (3NF)

☑️ Menggunakan DDL, DML, dan TCL secara tepat

☑️ Menerapkan Primary Key & Foreign Key dalam relasi antar tabel

☑️ Mengolah data menggunakan JOIN, GROUP BY, HAVING, dan fungsi agregasi

☑️ Menjadi media pembelajaran akademik dalam memahami database relasional

🗄️ Struktur Database

Database yang digunakan bernama dbnota, terdiri dari tabel-tabel utama berikut:

Tabel	Deskripsi
📦 barang	Menyimpan data makanan dan minuman
🍽️ layanan	Menyimpan jenis layanan (Dine In, Take Away, dll)
👩‍🍳 waitress	Menyimpan data pelayan
🧾 transaksi	Menyimpan data transaksi penjualan
📄 detail_transaksi	Menyimpan detail item pada setiap transaksi
🔗 Relasi Antar Tabel

Relasi dalam sistem Nota Coffee Shop dirancang sebagai berikut:

🔹 Barang → Detail_Transaksi : One to Many (1:N)

🔹 Transaksi → Detail_Transaksi : One to Many (1:N)

🔹 Waitress → Transaksi : One to Many (1:N)

🔹 Layanan → Transaksi : One to Many (1:N)

📌 Seluruh relasi dibangun menggunakan Primary Key dan Foreign Key sesuai dengan desain ERD.

💻 Materi SQL yang Diterapkan
🏗️ Data Definition Language (DDL)

CREATE DATABASE

CREATE TABLE

PRIMARY KEY

FOREIGN KEY

✏️ Data Manipulation Language (DML)

INSERT

SELECT

UPDATE

DELETE

🔁 Transaction Control Language (TCL)

START TRANSACTION

COMMIT

ROLLBACK

📊 Query SQL Lanjutan

JOIN (Inner Join, Left Join, Right Join)

GROUP BY

HAVING

Fungsi agregasi: COUNT(), SUM()

🛠️ Tools yang Digunakan

🐬 MySQL

🧰 MySQL Workbench

🌐 phpMyAdmin

📁 GitHub

▶️ Cara Menjalankan Proyek

1️⃣ Buka MySQL Workbench
2️⃣ Jalankan script SQL untuk membuat database dan tabel
3️⃣ Pastikan database dbnota berhasil dibuat
4️⃣ Jalankan query DML dan query lanjutan
5️⃣ Verifikasi data menggunakan phpMyAdmin

📂 Repository GitHub

Repository GitHub digunakan sebagai pusat dokumentasi proyek yang berisi:

📄 Script SQL

📐 Entity Relationship Diagram (ERD)

📊 Hasil implementasi query

⚠️ Catatan Penting

📌 Proyek ini dibuat khusus untuk keperluan akademik dan pembelajaran SQL.

📌 Tidak membahas antarmuka pengguna (UI) maupun keamanan sistem secara mendalam.

👨‍🏫 Dosen Pengampu

📧 ridwan_dwiirawan@udb.ac.id
