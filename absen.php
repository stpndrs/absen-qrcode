<?php
include_once 'koneksi.php';
if (isset($_POST['absen'])) {
    // $img = $_POST['gambar'];
    // $folderPath = "foto-siswa/";

    // $image_parts = explode(";base64,", $img);

    // $fileName = uniqid() . '.png';

    // $file = $folderPath . $fileName;
    // var_dump($_FILES);
    // die;
    // move_uploaded_file($_)

    // var_dump($_POST);
    // die;

    $nisn = $_GET['nisn'];
    $loc = $_POST['loc'];
    $cari = "SELECT * FROM tb_siswa WHERE nisn = '$nisn'";
    $data = mysqli_query($conn, $cari);
    // var_dump(mysqli_num_rows($data) <= 0);
    if (mysqli_num_rows($data) <= 0) {
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
            '$loc'
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

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
<form action="" method="post">
    <!-- <div id="my_camera" style="width:320px; height:240px;"></div>
    <u id="my_result"></div> -->
    <div class="container d-flex justify-content-center align-items-center">
        <input type="hidden" name="nisn" value="<?= $_GET['nisn']; ?>">
        <input type="hidden" name="loc" id="loc">
        <!-- <input type="file" name="gambar" id="gambar"> -->
        <button type="submit" onclick="take_snapshot()" class="btn btn-primary" name="absen" value="absen">Absen</a>
    </div>
</form>
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/webcamjs/1.0.25/webcam.min.js"></script>
<script language="JavaScript">
    Webcam.attach('#my_camera');

    function take_snapshot() {
        Webcam.snap(function(data_uri) {
            document.getElementById('gambar').value = data_uri
            // document.getElementById('my_result').innerHTML = '<img src="' + data_uri + '"/>';
        });
    }
</script> -->

<script>
    function getLocation() {
        if (navigator.geolocation) {
            navigator.geolocation.getCurrentPosition(showPosition);
        } else {
            x.innerHTML = "Geolocation is not supported by this browser.";
        }
    }

    function showPosition(position) {
        document.getElementById('loc').value = position.coords.latitude + ',' + position.coords.longitude;
        // x.innerHTML = "Latitude: " + position.coords.latitude +
        //     "<br>Longitude: " + position.coords.longitude;
    }
    getLocation();
</script>