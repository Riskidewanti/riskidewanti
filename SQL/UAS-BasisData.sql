-- =====================================================
-- DDL (DATA DEFINITION LANGUAGE)
-- STUDI KASUS: NOTA TRANSAKSI
-- =====================================================

CREATE DATABASE dbnota;
USE dbnota;

-- TABEL BARANG
CREATE TABLE barang (
  ID_barang VARCHAR(10) PRIMARY KEY,
  nama_barang VARCHAR(30) NOT NULL,
  harga_satuan INT NOT NULL,
  stok INT
) ENGINE=InnoDB;

INSERT INTO barang VALUES
('CBK001','Ice coffee milk regular',11000,10),
('CBK002','Ice coffee milk large',13000,8),
('ABK007','Chicken egg sambal matah',19000,5);

-- TABEL LAYANAN
CREATE TABLE layanan (
  ID_layanan VARCHAR(10) PRIMARY KEY,
  nama_layanan VARCHAR(30) NOT NULL
) ENGINE=InnoDB;

INSERT INTO layanan VALUES
('DCBK01','Dine In');

-- TABEL WAITRESS
CREATE TABLE waitress (
  ID_Waitress VARCHAR(10) PRIMARY KEY,
  nama_waitress VARCHAR(30) NOT NULL
) ENGINE=InnoDB;

INSERT INTO waitress VALUES
('WT001','Nisa');

-- TABEL TRANSAKSI
CREATE TABLE transaksi (
  ID_Transaksi VARCHAR(10) PRIMARY KEY,
  ID_Layanan VARCHAR(10) NOT NULL,
  ID_Waitress VARCHAR(10) NOT NULL,
  Tanggal_pembelian DATE NOT NULL,

  FOREIGN KEY (ID_Layanan) REFERENCES layanan(ID_layanan),
  FOREIGN KEY (ID_Waitress) REFERENCES waitress(ID_Waitress)
) ENGINE=InnoDB;

INSERT INTO transaksi VALUES
('BK003','DCBK01','WT001','2025-11-09');

-- TABEL DETAIL TRANSAKSI
CREATE TABLE detail_transaksi (
  NO_detail VARCHAR(10) PRIMARY KEY,
  ID_Transaksi VARCHAR(10) NOT NULL,
  ID_barang VARCHAR(10) NOT NULL,
  qty INT NOT NULL,

  FOREIGN KEY (ID_Transaksi) REFERENCES transaksi(ID_Transaksi),
  FOREIGN KEY (ID_barang) REFERENCES barang(ID_barang)
) ENGINE=InnoDB;

INSERT INTO detail_transaksi VALUES
('DT001','BK003','CBK001',2);

-- =====================================================
-- DML (DATA MANIPULATION LANGUAGE)
-- =====================================================
-- mengubah struktur tabel
ALTER TABLE barang ADD stok INT;

-- menghapus tabel
DROP TABLE barang;

 -- Menambah data
 INSERT INTO barang VALUES ('BR005', 'Coffee Latte', '15000');
 
 -- Mengubah data
 UPDATE barang SET harga_satuan = 20000 WHERE id_barang = 'BR005';

-- Menghapus data
DELETE FROM barang WHERE id_barang = 'BR005';

-- Menampilkan data
SELECT*FROM barang;

-- =====================================================
-- TCL
-- =====================================================

START TRANSACTION;
INSERT INTO transaksi VALUES ('BK005', 'DCBK01', 'WT001', '2025-11-09');

-- Menyimpan perubahan
COMMIT;

-- Membatalkan perubahan
ROLLBACK;

-- =====================================================
-- Agregasi & HAVING
-- =====================================================
-- agregasi
SELECT COUNT(*) FROM barang;
SELECT SUM(harga_satuan) FROM barang;

-- HAVING
SELECT nama_barang, COUNT(*)
FROM barang
GROUP BY nama_barang
HAVING COUNT(*) > 1;

-- =====================================================
-- GROUP BY
-- =====================================================
SELECT nama_barang, SUM(harga_satuan)
FROM barang
GROUP BY nama_barang;

-- =====================================================
-- JOIN
-- =====================================================
-- natural join
SELECT layanan,nama
FROM waitress NATURAL JOIN layanan;

-- join dengan using
SELECT layanan, nama_waitress
FROM layanan JOIN waitress USING(nama_waitress);

-- inner join... ON
SELECT layanan.nama_layanan, waitress.nama_waitress
FROM transaksi
JOIN layanan 
    ON transaksi.ID_Layanan = layanan.ID_layanan
JOIN waitress 
    ON transaksi.ID_Waitress = waitress.ID_Waitress;

-- inner join lebih dari 2 tabel
SELECT
    waitress.nama_waitress,
    layanan.nama_layanan,
    detail_transaksi.NO_detail,
    transaksi.ID_Transaksi
FROM transaksi
JOIN waitress 
    ON transaksi.ID_Waitress = waitress.ID_Waitress
JOIN layanan 
    ON transaksi.ID_Layanan = layanan.ID_layanan
JOIN detail_transaksi 
    ON transaksi.ID_Transaksi = detail_transaksi.ID_Transaksi;

-- equijoin
SELECT
    transaksi.ID_Transaksi,
    layanan.nama_layanan,
    waitress.nama_waitress
FROM transaksi, layanan, waitress
WHERE transaksi.ID_Layanan = layanan.ID_layanan
AND transaksi.ID_Waitress = waitress.ID_Waitress;

-- left join
SELECT
    transaksi.ID_Transaksi,
    layanan.nama_layanan,
    waitress.nama_waitress
FROM transaksi
LEFT JOIN layanan
    ON transaksi.ID_Layanan = layanan.ID_layanan
LEFT JOIN waitress
    ON transaksi.ID_Waitress = waitress.ID_Waitress;

-- right join
SELECT
    transaksi.ID_Transaksi,
    layanan.nama_layanan,
    waitress.nama_waitress
FROM transaksi
RIGHT JOIN layanan
    ON transaksi.ID_Layanan = layanan.ID_layanan
LEFT JOIN waitress
    ON transaksi.ID_Waitress = waitress.ID_Waitress;

-- full join
SELECT 
    waitress.ID_Waitress,
    waitress.nama_waitress,
    transaksi.ID_Transaksi,
    transaksi.Tanggal_pembelian
FROM waitress
LEFT JOIN transaksi 
    ON waitress.ID_Waitress = transaksi.ID_Waitress
WHERE waitress.nama_waitress LIKE '%a%';



