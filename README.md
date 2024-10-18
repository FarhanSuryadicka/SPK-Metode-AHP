# REQUIRMENT
- XAMPP
- Code Editor

# FIRST
- Install xampp (jika belum ada)
- Buka aplikasi xampp, hidupkan Apache dan MySQL
- Buat folder ahp-crips di c:\xampp\htdocs
- copy semua isi dari folder ini ke dalam folder spk_ahp

# IMPORT DATABASE:
- buka browser, ketikkan http://localhost/phpmyadmin
- Pilih import (tidak usah buat database baru)
- Pilih file spk_ahp.sql yang ada di folder database
- Klik go untuk mulai import database

# RUNNING PROGRAM
- Ketikkan http://localhost/spk_ahp di browser
- Jika ada dialog login masukkan user dan pass : admin

# CARA UBAH NAMA DATABASE (jika diperlukan)
- Buka http://localhost/phpmyadmin/ di browser
- Pilih nama database di panel kiri (spk_ahp)
- Pilih menu "Operations"
- Pada kolom isian "Rename database to" Isikan nama database tanpa spasi
- Klik Go

- Buka file config.php yang ada di c:\xampp\htdocs\spk_ahp
- Sesuaikan nama di database_name dengan nama baru yang sudah diubah

# CARA GANTI TEMA:
- Kunjungi https://bootswatch.com/3/
- Pilih salah satu tema, kemudian download bootstrap.min.css-nya, save (Ctrl + S) dan taruh di folder [project]/assets/css/ dengan nama sesuai temanya misal tema simplex namanya simplex-bootstrap.min.css
- Untuk mengganti buka index.php, kemudian cari cooding yang isi [tema]-bootstrap.min.css ganti dengan nama tema yang sudah didownload (misal simplex-bootstrap.min.css)
- Lakukan langkah yang sama jika mengubah tema di login.php

Selesai :D
