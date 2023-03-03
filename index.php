<?php
include "phpqrcode/qrlib.php";
include 'koneksi.php';
?>

<!doctype html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Coba Absen 2</title>
	<script src="https://code.jquery.com/jquery-3.6.3.js" integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM=" crossorigin="anonymous"></script>
	<link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
	<link href="https://fonts.googleapis.com/css2?family=Inconsolata&family=Montserrat:wght@300;500;700&family=Open+Sans&family=Quicksand:wght@300;500&display=swap" rel="stylesheet">
	

	<style>
		* {
    margin-top : 0;
    font-family: 'Inconsolata', monospace;
    font-family: 'Montserrat', sans-serif;
    font-family: 'Open Sans', sans-serif;
    font-family: 'Quicksand', sans-serif;
    
		}
		h1, .form-control, .btn{
			margin: 20px;
		}
		.qr-code-generator * {
			-webkit-box-sizing: border-box;
			-moz-box-sizing: border-box;
			box-sizing: border-box;
		}

		#qrcode {
			width: 128px;
			height: 128px;
			margin: 0 auto;
			text-align: center;
		}

		#qrcode a {
			font-size: 0.8em;
		}

		.qr-url,
		.qr-size {
			padding: 0.5em;
			border: 1px solid #ddd;
			border-radius: 2px;
			-webkit-box-sizing: border-box;
			-moz-box-sizing: border-box;
			box-sizing: border-box;
		}
		.container{
			height: 800px;
			/* width: 3000px; */
		}
		.qr-code-generator {
			width: 500px;
			margin: 0 auto;
		}

		.qr-url {
			width: 79%;
		}

		.qr-size {
			width: 20%;
		}

		.generate-qr-code {
			display: block;
			width: 100%;
			margin: 0.5em 0 0;
			padding: 0.25em;
			font-size: 1.2em;
			border: none;
			cursor: pointer;
			background-color: #e5554e;
			color: #fff;
		}
		.btn{
			margin-right: 40px;
		}
		
		
	</style>

</head>

<body>
	<div class="container">
		<h1 class="text-center">Absen Siswa</h1>
		<!-- <form action="" method="post"> -->
		<select name="nisn" id="nisn" class="form-control select2" style="width: 100%;">
			<option value="">Pilih Nama Siswa</option>
			<!-- <option value="haikal">Haikal</option>
			<option value="stevan">Stevan</option>
			<option value="gian">Gian</option>
			<option value="fatur">Fatur</option>
			<option value="adni">Adni</option> -->

			<?php
			// $nama = "SELECT * FROM tb_siswa";
			$data = mysqli_query($conn, "SELECT * FROM tb_siswa");
			while ($d = mysqli_fetch_array($data)) {
				echo "<option value='" . $d["nisn"] . "'>" . $d["nama"] . "</option>";
			}
			?>
		</select>

		<button class="btn btn-primary" type="submit" id="generate" name="generate">Generate QR</button>

		<div id="qrcode"></div>
		<!-- </form> -->
	</div>
`
	<script src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/130527/qrcode.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
	<script>
		$('.select2').select2();

		$('#generate').click(function() {
			// Clear Previous QR Code
			$('#qrcode').empty();

			// Set Size to Match User Input
			$('#qrcode').css({
				'width': $('.qr-size').val(),
				'height': $('.qr-size').val()
			})

			// Generate and Output QR Code
			$('#qrcode').qrcode({
				width: $('.qr-size').val(),
				height: $('.qr-size').val(),
				text: 'absen.php?nisn=' + $('#nisn').val()
			});
			$('#nisn').reset()
		})
	</script>
</body>

</html>