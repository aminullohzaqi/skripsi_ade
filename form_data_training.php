<form method=POST action=''>
	<div class="form-group">
		<div class="row">
			<div class="col-md-6">
				<label>Latitude Gempa</label>
				<input type='number' step="any" name='lat' required="required" class="form-control">
				<label style="font-size: 0.8rem;">(-) untuk LS</label>
			</div>
			<div class="col-md-6">
				<label>Longitude Gempa</label>
				<input type='number' step="any" name='long' required="required" class="form-control">
			</div>
		</div>
	</div>

	<div class="form-group">
		<div class="row">
			<div class="col-md-6">
				<label>Latitude Lokasi Anda</label>
				<input type='number' step="any" name='latsta' required="required" class="form-control">
				<label style="font-size: 0.8rem;">(-) untuk LS</label>
			</div>
			<div class="col-md-6">
				<label>Longitude Lokasi Anda</label>
				<input type='number' step="any" name='longsta' required="required" class="form-control">
			</div>
		</div>
	</div>

	<div class="form-group">
		<div class="row">
			<div class="col-md-6">
				<label>Magnitudo</label>
				<input type='number' step="any" name='magnitudo' required="required" class="form-control">
			</div>
			<div class="col-md-6">
				<label>Kedalaman</label>
				<input type='number' step="any" name='depth' required="required" class="form-control">
			</div>
		</div>
	</div>

	<div class="form-group">
		<div class="row">
			<div class="col-md-6">
				<label>PGA</label>
				<input type='number' step="any" name='pga' required="required" class="form-control">
			</div>
			<div class="col-md-6">
				<label>MMI</label>
				<input type='number' step="any" name='mmi' required="required" class="form-control">
			</div>
		</div>
	</div>

	<div class="form-group">
		<div class="row">
			<div class="col-md-6">
				<label>Hipocenter</label>
				<input type='number' step="any" name='hipocenter' class="form-control">
			</div>
		</div>
	</div>

	<div class="text-center">
		<input type=submit name=submit value=Submit class="btn btn-primary mr-2">
	</div>

	<div class="clear"></div>

	<!-- <div class="form-group">
		<table align='center' class='table-responsive'>
			<tr>
				<td colspan=2><b><center></center></b></td>
			</tr>
			<tr>
				<td><label for="cc-payment" class="control-label mb-1">Latitude </label></td>        
				<td>: </td>
				<td>	<input type='text' name='lat'  style="width:180px;" required="required" class="form-control"></td>						
			</tr>
			<tr>
				<td>Longitude</td>        
				<td> : &ensp; </td>
				<td>	<input type='text' name='long'  style="width:180px;" required="required" class="form-control"></td>						
			</tr>
			<tr>
				<td>Latitude Stasiun</td>        
				<td> : </td>
				<td>	<input type='text' name='latsta'  style="width:180px;" required="required" class="form-control"></td>						
			</tr>
			<tr>
				<td>Longitude Stasiun</td>        
				<td> : </td>
				<td>	<input type='text' name='longsta'  style="width:180px;" required="required" class="form-control"></td>						
			</tr>
			<tr>
				<td>Magnitudo</td>        
				<td> : </td>
				<td>	<input type='text' name='magnitudo'  style="width:180px;" required="required" class="form-control"></td>						
			</tr>
			<tr>
				<td>Kedalaman</td>        
				<td> : </td>
				<td>	<input type='text' name='depth'  style="width:180px;" required="required" class="form-control"></td>						
			</tr>
			<tr>
				<td>PGA</td>        
				<td> : </td>
				<td>	<input type='text' name='pga'  style="width:180px;" required="required" class="form-control"></td>						
			</tr>
			<tr>
				<td>MMI</td>        
				<td> : </td>
				<td>	<input type='text' name='mmi'  style="width:180px;" required="required" class="form-control"></td>						
			</tr>

			<tr>
				<td colspan=2>
					<input type=submit name=submit value=Submit class="btn btn-primary">
					<input type='reset' value='Batal' class="btn btn-danger">
				</td>
			</tr>
		</table>
	</div> -->
</form>
<?php
if (isset($_POST['submit'])) {
	$n_magnitudo 	= $_POST['magnitudo'];
	$n_depth		= $_POST['depth'];
	$n_lat	 		= $_POST['lat'];
	$n_long	 		= $_POST['long'];
	$n_latsta	 	= $_POST['latsta'];
	$n_longsta	 	= $_POST['longsta'];
	$n_pga 			= $_POST['pga'];
	$n_mmi 			= $_POST['mmi'];
	$n_hipocenter	= $_POST['hipocenter'];

	$latFrom = deg2rad($n_lat);
	$lonFrom = deg2rad($n_long);
	$latTo = deg2rad($n_latsta);
	$lonTo = deg2rad($n_longsta);
	  
	$latDelta = $latTo - $latFrom;
	$lonDelta = $lonTo - $lonFrom;
	  
	$n_jarak  = 2 * asin(sqrt(pow(sin($latDelta / 2), 2) + cos($latFrom) * cos($latTo) * pow(sin($lonDelta / 2), 2))) * 6371;

	if($n_hipocenter == null){
		$n_jarak_hipo 	= sqrt((pow($n_jarak,2))+(pow($n_depth,2)));
		$n_jarak_hipo	= round($n_jarak_hipo,3);
	}
	else{
		$n_jarak_hipo	= $n_hipocenter;
	}

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

	$sql = "INSERT INTO `data_training` (`lat`, `long`, `latsta`, `longsta`, `magnitudo`, `kategori_magnitudo`, `kedalaman`, `kategori_kedalaman`, `PGA`, `kategori_PGA`, `jarakhipo`, `kategori_jarakhipo`, `MMI`, `efek_gempa`) VALUES 
	('".$n_lat."','".$n_long."','".$n_latsta."','".$n_longsta."','".$n_magnitudo."','".$n_kategori_magnitudo."','".$n_depth."','".$n_kategori_kedalaman."','".$n_pga."','".$n_kategori_pga."','".$n_jarak_hipo."','".$n_kategori_hipo."','".$n_mmi."','".$n_efek_gempa."')";
	
    $query = mysqli_query($koneksi, $sql);	
	
	if ($query){
		echo "<script>
			alert('Berhasil Menambah Data');
		</script>";
	}

	else {
		echo"Error:" .$sql. "<br>". mysqli_error($koneksi);
	}
    
}
?>