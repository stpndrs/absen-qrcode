<?php
include_once '../koneksi.php';
if (isset($_GET['nisn'])) {
    $nisn = $_GET['nisn'];
    $cari = "SELECT * FROM tb_siswa WHERE nisn = '$nisn'";
    $data = mysqli_query($conn, $cari);
    // var_dump(mysqli_num_rows($data) <= 0);
    if (mysqli_num_rows($data) <= 0 ) {
        header('Location: gagal.php');
    } else {
        $ct = date('Y-m-d');
        $cek = "SELECT * FROM tb_absen WHERE nisn = '$nisn' AND DATE_FORMAT(tgl_absen, '%Y-%m-%d') = '$ct'";
        $dc = mysqli_query($conn, $cek);
    
        if (mysqli_num_rows($dc) > 0) {
            header('Location: gagal.php');
        } else {
            $tgl = date('Y-m-d H:i:s');
            $sql = "INSERT INTO tb_absen (
            nisn,
            tgl_absen,
            lokasi_absen
        ) VALUES (
            '$nisn',
            '$tgl',
            'asodkkoadkasd'
        )";
            $result = mysqli_query($conn, $sql);
            if ($result) {
                header('Location: berhasil.php');
                exit();
            } else {
                echo "Error!" . $sql . ":-" . mysqli_error($conn);
            }
        }
    }
    mysqli_close($conn);
}
?>