<?php
$sql 	= mysqli_query($koneksi, "SELECT * FROM data_training WHERE id='$_GET[id]'");
$row 	= mysqli_fetch_array($sql);	
$lat	=$row['lat'];
$long	=$row['long'];
$latsta	=$row['latsta'];
$longsta=$row['longsta'];
$magnitudo=$row['magnitudo'];
$kedalaman=$row['kedalaman'];
$PGA	=$row['PGA'];
$jarakhipo=$row['jarakhipo'];
$mmi	=$row['MMI'];

if (isset($_POST['submit'])) {
	$n_magnitudo 	= $_POST['magnitudo'];
	$n_depth		= $_POST['depth'];
	$n_lat	 		= $_POST['lat'];
	$n_long	 		= $_POST['long'];
	$n_latsta	 	= $_POST['latsta'];
	$n_longsta	 	= $_POST['longsta'];
	$n_pga 			= $_POST['pga'];
	$n_mmi 			= $_POST['mmi'];

	$latFrom = deg2rad($n_lat);
	$lonFrom = deg2rad($n_long);
	$latTo = deg2rad($n_latsta);
	$lonTo = deg2rad($n_longsta);
	  
	$latDelta = $latTo - $latFrom;
	$lonDelta = $lonTo - $lonFrom;
	  
	$n_jarak  = 2 * asin(sqrt(pow(sin($latDelta / 2), 2) + cos($latFrom) * cos($latTo) * pow(sin($lonDelta / 2), 2))) * 6371;

	$n_jarak_hipo 	= sqrt(($n_jarak^2)+($n_depth^2));
	$n_jarak_hipo	= round($n_jarak_hipo,3);

	$n_kategori_hipo = "None";
	if ($n_jarak_hipo < 50){
		$n_kategori_hipo = "Sangat Dangkal";
	}
	else if ($n_jarak_hipo < 100){
		$n_kategori_hipo = "Dangkal";
	}
	else if ($n_jarak_hipo < 300){
		$n_kategori_hipo = "Intermediet";
	}
	else if ($n_jarak_hipo < 700){
		$n_kategori_hipo = "Dalam";
	}
	else{
		$n_kategori_hipo = "Sangat Dalam";
	}


	$n_kategori_kedalaman = "None";
	if ($n_depth <= 10){
		$n_kategori_kedalaman = "Sangat Dangkal";
	}
	else if ($n_depth < 66){
		$n_kategori_kedalaman = "Dangkal";
	}
	else if ($n_depth < 450){
		$n_kategori_kedalaman = "Menengah";
	}
	else{
		$n_kategori_kedalaman = "Dalam";
	}

	$n_kategori_pga = "None";
	if ($n_pga < 10){
		$n_kategori_pga = "Kecil";
	}
	else if ($n_pga <= 50){
		$n_kategori_pga = "Medium";
	}
	else if ($n_pga <= 150){
		$n_kategori_pga = "Besar";
	}
	else{
		$n_kategori_pga = "Sangat Besar";
	}

	$n_kategori_magnitudo = "None";
	if ($n_magnitudo <= 2.9){
		$n_kategori_magnitudo = "Lemah";
	}
	else if ($n_magnitudo <= 4.9){
		$n_kategori_magnitudo = "Sedang";
	}
	else if ($n_magnitudo <= 7.9){
		$n_kategori_magnitudo = "Kuat";
	}
	else{
		$n_kategori_magnitudo = "Sangat Kuat";
	}

	$n_efek_gempa = "None";
	if($n_mmi <= 3){
		$n_efek_gempa = "Tidak Ada atau Jarang Kerusakan";
	}

	else if($n_mmi <= 5){
		$n_efek_gempa = "Barang-Barang Bergerak dan Tidak Ada Kerusakan";
	}

	else if($n_mmi <= 7){
		$n_efek_gempa = "Kerusakan Kecil,Retak pada Dinding";
	}

	else if($n_mmi <= 8){
		$n_efek_gempa = "Kerusakan Menengah,Hancurnya Dinding";
	}

	else if($n_mmi <= 12){
		$n_efek_gempa = "Kerusakan Parah";
	}
	$sql	= "UPDATE `data_training` SET `id`='$_GET[id]', `lat`='".$n_lat."',`long`='".$n_long."',`latsta`='".$n_latsta."',`longsta`='".$n_longsta."',`magnitudo`='".$n_magnitudo."',`kategori_magnitudo`='".$n_kategori_magnitudo."',`kedalaman`='".$n_depth."',`kategori_kedalaman`='".$n_kategori_kedalaman."',`jarakhipo`='".$n_jarak_hipo."',`kategori_jarakhipo`='".$n_kategori_hipo."',`MMI`='".$n_mmi."',`efek_gempa`='".$n_efek_gempa." 'WHERE `id`='$_GET[id]'";
	$query	= mysqli_query($koneksi, $sql);
	if ($query){
		echo "<script>
				alert('Data Berhasil Diubah');
			</script>";
	  }
	else {
		echo"Error:" .$sql. "<br>". mysqli_error($koneksi);
	}
}else{
?>
<form method=POST action='' >
	<div class="form-group">
		<div class="row">
			<div class="col-md-6">
				<label>Latitude Gempa</label>
				<input type='number' step="any" name='lat' value="<?= $lat ?>" required="required" class="form-control">
			</div>
			<div class="col-md-6">
				<label>Longitude Gempa</label>
				<input type='number' step="any" name='long' value="<?= $long ?>" required="required" class="form-control">
			</div>
		</div>
	</div>

	<div class="form-group">
		<div class="row">
			<div class="col-md-6">
				<label>Latitude Lokasi Anda</label>
				<input type='number' step="any" name='latsta' value="<?= $latsta ?>" required="required" class="form-control">
			</div>
			<div class="col-md-6">
				<label>Longitude Lokasi Anda</label>
				<input type='number' step="any" name='longsta' value="<?= $longsta ?>" required="required" class="form-control">
			</div>
		</div>
	</div>

	<div class="form-group">
		<div class="row">
			<div class="col-md-6">
				<label>Magnitudo</label>
				<input type='number' step="any" name='magnitudo' value="<?= $magnitudo ?>" required="required" class="form-control">
			</div>
			<div class="col-md-6">
				<label>Kedalaman</label>
				<input type='number' step="any" name='depth' value="<?= $kedalaman ?>" required="required" class="form-control">
			</div>
		</div>
	</div>

	<div class="form-group">
		<div class="row">
			<div class="col-md-6">
				<label>PGA</label>
				<input type='number' step="any" name='pga' value="<?= $PGA ?>" required="required" class="form-control">
			</div>
			<div class="col-md-6">
				<label>MMI</label>
				<input type='number' step="any" name='mmi' value="<?= $mmi ?>" required="required" class="form-control">
			</div>
		</div>
	</div>

	<div class="text-center">
		<a href='index.php?menu=data' accesskey='5' title='Kembali' class="btn btn-secondary">Kembali</a>
		<input type=submit name=submit value=Submit class="btn btn-primary mr-2">
	</div>
	<!-- <table align='center' >
		<tr>
			<td colspan=2><b><center>Edit Data Training</center></b></td>
		</tr>
		<tr>
			<td>Latitude</td>        
			<td>: </td>
			<td>	<input type='text' name='lat' value="<?php echo $lat ?>" style="width:50px;" required="required"></td>						
		</tr>
		<tr>
			<td>Longitude</td>        
			<td>: </td>
			<td>	<input type='text' name='long' value="<?php echo $long ?>" style="width:50px;" required="required"></td>						
		</tr>
		<tr>
			<td>Latitude Stasiun</td>        
			<td>: </td>
			<td>	<input type='text' name='latsta' value="<?php echo $latsta ?>" style="width:50px;" required="required"></td>						
		</tr>
		<tr>
			<td>Longitude Stasiun</td>        
			<td>: </td>
			<td>	<input type='text' name='longsta' value="<?php echo $longsta ?>" style="width:50px;" required="required"></td>						
		</tr>
		<tr>
			<td>Magnitudo</td>        
			<td>: </td>
			<td>	<input type='text' name='magnitudo' value="<?php echo $magnitudo ?>" style="width:50px;" required="required"></td>						
		</tr>
		<tr>
			<td>Kedalaman</td>        
			<td>: </td>
			<td>	<input type='text' name='depth' value="<?php echo $kedalaman ?>" style="width:50px;" required="required"></td>						
		</tr>
		<tr>
			<td>PGA</td>        
			<td>: </td>
			<td>	<input type='text' name='pga' value="<?php echo $PGA ?>" style="width:50px;" required="required"></td>						
		</tr>
		<tr>
			<td>MMI</td>        
			<td>: </td>
			<td>	<input type='text' name='mmi' value="<?php echo $mmi ?>" style="width:50px;" required="required"></td>						
		</tr>

		<tr>
			<td colspan=2>
				<input type=submit name=submit value=Submit>
				<input type='reset' value='Batal'>
			</td>
		</tr>
	</table> -->
</form>
<?php
}
?>
<!-- <a href='index.php?menu=data' accesskey='5' title='Kembali'><< kembali</a> -->