<!DOCTYPE html>
<html>

<head>
    <title>LAPORAN</title>
    <style>
        body {
            font-family: Times New Roman;
            font-size: 18px;
        }


        p.small {
            line-height: 2,8;
        }

        .centered-container {
            text-align: center; /* Mengatur teks agar berada di tengah secara visual */
            float: right;
            padding-right: 80px;
        }

        .right-align {
            float: right; /* Mengatur teks agar berada di sebelah kanan */
        }

        h1 {
            font-size: 14px;
            border-bottom: 4px double #000;
            padding: 3px 0;
        }

        table {
            border-collapse: collapse;
            margin-bottom: 10px;
        }

        td,
        th {
            border: 1px solid #000;
            padding: 3px;
        }

        .wrapper {
            margin: 0 auto;
            width: 980px;
        }
    </style>

</head>

<body>
    <center>
        <img src="assets/img/kop.jpg" width="900">
    </center>

    <center>
        <h3>LAPORAN DATA HASIL PENILAIAN PENGANGKATAN KARYAWAN TETAP</h3>
        <h4>TAHUN 2024</h4>
    </center>

<br>
<br>

    <?php
    include 'koneksi.php';
    ?>

    <table border="1" align="center" style="width: 90%">
        <tr>
            <th width="1%">No</th>
            <th width="40%">Nama Karyawan</th>
            <th width="15%">Total Nilai</th>
            <th>Status</th>
        </tr>
        <?php
        $no = 1;
        $sql = mysqli_query($koneksi, "select * from tb_alternatif");
        while ($data = mysqli_fetch_array($sql)) {
        ?>
            <tr>
                <td><?php echo $no++; ?></td>
                <td><?php echo $data['nama_alternatif']; ?></td>
                <td><?php echo number_format($data['total'], 3); ?></td>
                <td>
                <?php
                // Menampilkan status berdasarkan nilai 'status'
                $total = floatval($data['total']);
                if ($total >= 0.200) {
                    echo 'Layak Diangkat';
                } elseif ($total <= 0.199) {
                    echo 'Belum Layak Diangkat';
                } elseif($total <= 0.00) {
                    echo 'Tidak diketahui';
                }
                ?>
            </td>
            </tr>
        <?php
        }
        ?>
    </table>

    <script>
        window.print();
    </script>

<br>
<br>

<div class="centered-container">

    <p class="small">
        Bengkulu,  <?php echo date("j F Y"); ?> <br>
        Ketua Yayasan <br>
    </p>

    <br>
    <br>
    <br>
    <br>

    <p style="font-weight: bold;">Dr. H. Dani Hamdani, M.Pd</p>

</div>>




</body>

</html>