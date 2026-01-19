☕✨ UAS Pemrograman Basis Data

📄 Sistem Nota Transaksi Coffee Shop

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

📐 Entity Relationship Diagram (ERD)

ERD digunakan untuk menggambarkan struktur database serta hubungan antar entitas yang ada pada sistem Nota Coffee Shop. Diagram ini menjadi dasar dalam proses normalisasi dan pembuatan tabel pada database.

![ERD](Assets/ERD.png)

📌 Entitas Utama dalam ERD

1. barang
2. layanan
3. waitress
4. transaksi
5. detail_transaksi

Setiap entitas memiliki Primary Key (PK) dan saling terhubung menggunakan Foreign Key (FK) sesuai kebutuhan sistem.

🔗 Relasi Antar Tabel (Detail)

Relasi antar tabel dirancang untuk memastikan integritas data dan menghindari redundansi.

![RELASI ANTAR TABEL](Assets/relasi.png) 

🧩 Rincian Relasi

barang (1) — (N) detail_transaksi
→ Satu barang dapat muncul di banyak detail transaksi

transaksi (1) — (N) detail_transaksi
→ Satu transaksi dapat memiliki banyak item barang

waitress (1) — (N) transaksi
→ Satu waitress dapat menangani banyak transaksi

layanan (1) — (N) transaksi
→ Satu jenis layanan dapat digunakan pada banyak transaksi

📌 Semua relasi diterapkan menggunakan Primary Key dan Foreign Key sesuai desain ERD.

🏗️ Data Definition Language (DDL)

![DDL](Assets/DDL.jpeg)

📌 Data Definition Language (DDL) digunakan untuk mendefinisikan struktur basis data pada sistem Nota Transaksi Coffee Shop. Pada tahap ini dilakukan proses pembuatan database serta pendefinisian tabel-tabel yang digunakan dalam pengelolaan data transaksi.

🗄️ Perintah CREATE DATABASE digunakan untuk membuat database dengan nama dbnota, kemudian perintah USE digunakan untuk memilih database tersebut agar seluruh tabel dan objek basis data berada dalam satu lingkup yang sama.

📦 Salah satu tabel utama yang dibuat adalah tabel barang. Tabel ini berfungsi untuk menyimpan data makanan dan minuman yang dijual pada coffee shop. Perancangan tabel dilakukan dengan memperhatikan prinsip normalisasi serta integritas data.

🔑 Atribut ID_barang digunakan sebagai Primary Key yang berfungsi sebagai identitas unik setiap barang. Atribut nama_barang digunakan untuk menyimpan nama produk, harga_satuan untuk menyimpan harga per satuan barang, serta stok untuk menyimpan jumlah persediaan barang yang tersedia.

⚙️ Seluruh tabel dibuat menggunakan storage engine InnoDB, yang memungkinkan penerapan Foreign Key pada relasi antar tabel serta menjaga konsistensi dan keandalan data dalam basis data relasional.

💻 Materi SQL yang Diterapkan

🏗️ Data Definition Language (DDL)
1. CREATE DATABASE
2. CREATE TABLE
3. PRIMARY KEY dan FOREIGN KEY

✏️ Data Manipulation Language (DML)
1. INSERT
2. SELECT
3. UPDATE
4. DELETE

🔁 Transaction Control Language (TCL)
1. START TRANSACTION
2. COMMIT
3. ROLLBACK

📊 Query Lanjutan
1. JOIN (Inner Join, Left Join, Right Join)
2. GROUP BY
3. HAVING
4. Fungsi agregasi (COUNT, SUM)

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


