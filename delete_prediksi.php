<?php
	include "koneksi.php";
	$user_id=$_GET['id'];	
	mysqli_query($koneksi, "DELETE FROM hasil_prediksi WHERE user_id = '$user_id'");	
	header("location:index.php?menu=prediksi");
?>