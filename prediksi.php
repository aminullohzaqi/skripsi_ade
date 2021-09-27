<div class="container-fluid">
	<div class="row">
		<div class="col-lg-12">
			<div class="card">
              	<div class="card-header">Prediksi</div>
               		<div class="card-body">
						<div class="card-title">
							<h3 class="text-center title-2"></h3>
						</div>

						<div id="my-map" style="height: 300px"></div>

<?php
include "koneksi.php";

$s_Query=mysqli_query($koneksi, "SELECT * FROM pohon_keputusan");
$jml_tree=mysqli_num_rows($s_Query);

if($jml_tree==0){
	echo "<center><h3>Anda tidak bisa melakukan prediksi,<br>
			Karena Pohon Keputusan belum terbentuk...</h3></center>";
}
else
{	
	if (!isset($_POST['submit'])) {
	?>
		<div class="text-center mt-2 mb-2"><b>Isi Data Berikut dengan Benar </b></div>
		<form method=POST action='' >
		<div class="form-group">
				<div class="row">
					<div class="col-md-6">
						<label>Latitude Gempa</label>
						<input type='number' step="any" name='lat' required="required" class="form-control">
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
						<label>Hipocenter</label>
						<input type='number' step="any" name='hipocenter' placeholder="Opsional" class="form-control">
					</div>
				</div>
			</div>
			<div class="text-center">
				<input type=submit name=submit value=Submit class="btn btn-primary mr-2">
				<input type='reset' value='Batal' class="btn btn-danger">
			</div>
		<!-- <div class="form-group">
			<table align="center" class="table-responsive-data2">
				<tr>
					<td colspan=2></td>
				</tr>		
				<tr>
					<td colspan=3>1. Magnitudo Gempa</td>  
				</tr>
				<tr>
				<td> &nbsp;&nbsp;<input name='magnitudo' type='text' style="width:150px;" class="form-control"> </td>
				</tr>	
				<tr>
					<td colspan=3>2. Kedalaman Gempa</td>
				</tr>
				<tr>
					<td> &nbsp;&nbsp;<input name='depth' type='text' style="width:150px;" class="form-control"> </td>
				</tr>
				<tr>
					<td colspan = 3>3. Lokasi Gempa</td>        
				</tr>
				<tr>
					<td> &nbsp;&nbsp;<input name='lat' placeholder="Latitude" type='text' style="width:100px;" class="form-control"> </td>
					<td> &nbsp;&nbsp;<input name='long' placeholder="Longitude" type='text' style="width:100px;" class="form-control"> </td>
				</tr>
				<tr>
					<td colspan = 3>4. Lokasi Target</td>        
				</tr>
				<tr>
					<td> &nbsp;&nbsp;<input name='latsta' placeholder="Latitude" type='text' style="width:100px;"  class="form-control"> </td>
					<td> &nbsp;&nbsp;<input name='longsta' placeholder="Longitude" type='text' style="width:100px;" class="form-control"> </td>
				</tr>
				<tr>
					<td colspan=3>5. PGA Maximal</td>        
				</tr>
				<tr>
					<td> &nbsp;&nbsp;<input name='pga' type='text' style="width:150px;" class="form-control"> </td>
				</tr>		
				<tr>
					<td colspan=2>
						<input type=submit name=submit value=Submit class="btn btn-success">
						<input type='reset' value='Batal' class="btn btn-danger">
					</td>
				</tr>
			</table>
		</div> -->
		</form>

	<?php
	}
	else{
		$n_magnitudo 	= $_POST['magnitudo'];
		$n_depth		= $_POST['depth'];
		$n_lat	 		= $_POST['lat'];
		$n_long	 		= $_POST['long'];
		$n_latsta	 	= $_POST['latsta'];
		$n_longsta	 	= $_POST['longsta'];
		$n_pga 			= $_POST['pga'];
		$n_hipocenter 	= $_POST['hipocenter'];

		$latFrom = deg2rad($n_lat);
		$lonFrom = deg2rad($n_long);
		$latTo = deg2rad($n_latsta);
		$lonTo = deg2rad($n_longsta);
	  
		$latDelta = $latTo - $latFrom;
		$lonDelta = $lonTo - $lonFrom;
	  
		$n_jarak  = 2 * asin(sqrt(pow(sin($latDelta / 2), 2) + cos($latFrom) * cos($latTo) * pow(sin($lonDelta / 2), 2))) * 6371;

		$n_kategori_epi = "None";
		if ($n_jarak < 10000){
			$epiBadge = "badge-secondary";
			$n_kategori_epi = "Lokal/Setempat";
		}
		else if ($n_jarak <=10000 ){
			$epiBadge = "badge-success";
			$n_kategori_epi = "Menengah";
		}
		else if ($n_jarak >10000){
			$epiBadge = "badge-info";
			$n_kategori_epi = "Jauh";
		}
		
		if($n_hipocenter == null){
			$n_jarak_hipo 	= sqrt((pow($n_jarak,2))+(pow($n_depth,2)));
			$n_jarak_hipo	= round($n_jarak_hipo,3);
		}
		else{
			$n_jarak_hipo = $n_hipocenter;
		}


		$n_kategori_hipo = "None";
		if ($n_jarak_hipo < 50){
			$hipoBadge = "badge-secondary";
			$n_kategori_hipo = "Sangat Dangkal";
		}
		else if ($n_jarak_hipo < 100){
			$hipoBadge = "badge-success";
			$n_kategori_hipo = "Dangkal";
		}
		else if ($n_jarak_hipo < 300){
			$hipoBadge = "badge-info";
			$n_kategori_hipo = "Intermediet";
		}
		else if ($n_jarak_hipo < 700){
			$hipoBadge = "badge-warning";
			$n_kategori_hipo = "Dalam";
		}
		else{
			$hipoBadge = "badge-danger";
			$n_kategori_hipo = "Sangat Dalam";
		}


		$n_kategori_kedalaman = "None";
		if ($n_depth <= 10){
			$depthBadge = "badge-secondary";
			$n_kategori_kedalaman = "Sangat Dangkal";
		}
		else if ($n_depth < 66){
			$depthBadge = "badge-success";
			$n_kategori_kedalaman = "Dangkal";
		}
		else if ($n_depth < 450){
			$depthBadge = "badge-warning";
			$n_kategori_kedalaman = "Menengah";
		}
		else{
			$depthBadge = "badge-danger";
			$n_kategori_kedalaman = "Dalam";
		}

		$n_kategori_pga = "None";
		if ($n_pga < 10){
			$pgaBadge = "badge-secondary";
			$n_kategori_pga = "Kecil";
		}
		else if ($n_pga <= 50){
			$pgaBadge = "badge-success";
			$n_kategori_pga = "Medium";
		}
		else if ($n_pga <= 150){
			$pgaBadge = "badge-warning";
			$n_kategori_pga = "Besar";
		}
		else{
			$pgaBadge = "badge-danger";
			$n_kategori_pga = "Sangat Besar";
		}

		$n_kategori_magnitudo = "None";
		if ($n_magnitudo <= 2.9){
			$magnitudeBadge = "badge-secondary";
			$n_kategori_magnitudo = "Lemah";
		}
		else if ($n_magnitudo <= 4.9){
			$magnitudeBadge = "badge-success";
			$n_kategori_magnitudo = "Sedang";
		}
		else if ($n_magnitudo <= 7.9){
			$magnitudeBadge = "badge-warning";
			$n_kategori_magnitudo = "Kuat";
		}
		else{
			$magnitudeBadge = "badge-danger";
			$n_kategori_magnitudo = "Sangat Kuat";
		}
			
		// echo "<h4><center>Hasil Prediksi<br>";
		// echo "magnitudo: ".$n_kategori_magnitudo."<br>";
		// echo "kategori: ".$n_kategori_kedalaman."<br>";
		// echo "jarak: ".$n_kategori_hipo."<br>";
		// echo "pga: ".$n_kategori_pga."<br></center></h4>";
			
		$sql=mysqli_query($koneksi, "SELECT * FROM pohon_keputusan");	
		$id_rule="";
		$keputusan="";
		while($row=mysqli_fetch_array($sql)){
			//menggabungkan parent dan akar dengan kata AND
			if($row[1]!=''){
				$rule=$row[1]." AND ".$row[2];
			}else{
				$rule=$row[2];
			}
			//mengubah parameter
			$rule=str_replace("<="," k ",$rule);
			$rule=str_replace("="," s ",$rule);
			$rule=str_replace(">"," l ",$rule);		
			//mengganti nilai
			$rule=str_replace("kategori_magnitudo","$n_kategori_magnitudo",$rule);
			$rule=str_replace("kategori_kedalaman","'$n_kategori_kedalaman'",$rule);
			$rule=str_replace("kategori_jarakhipo","$n_kategori_hipo",$rule);
			$rule=str_replace("kategori_PGA","$n_kategori_pga",$rule);		
			//menghilangkan '
			$rule=str_replace("'","",$rule);
			//menggabungkan kata ortu dan orang lain
			$rule=str_replace("Sangat Dangkal","SangatDangkal",$rule);
			$rule=str_replace("Sangat Dalam","SangatDalam",$rule);
			$rule=str_replace("Sangat Besar","SangatBesar",$rule);
			//explode and
			$explodeAND = explode(" AND ",$rule);
			$jmlAND = count($explodeAND);			
			//menghilangkan"()"
			$explodeAND=str_replace("(","",$explodeAND);
			$explodeAND=str_replace(")","",$explodeAND);	
			//deklarasi bol
			$bolAND=array();
			$n=0;
			while($n<$jmlAND){
				//explode or
				$explodeOR = explode(" OR ",$explodeAND[$n]);
				$jmlOR = count($explodeOR);	
				//deklarasi bol
				$bol=array();
				$a=0;
				while($a<$jmlOR){				
					//pecah  dengan spasi
					$exrule2 = explode(" ",$explodeOR[$a]);
					$parameter = $exrule2[1];			
					if($parameter=='s'){
						//pecah  dengan s
						$explodeRule = explode(" s ",$explodeOR[$a]);
						//nilai true false						
						if($explodeRule[0]==$explodeRule[1]){
							$bol[$a]="Benar";
						}else if($explodeRule[0]!=$explodeRule[1]){
							$bol[$a]="Salah";
						}
					}else if($parameter=='k'){
						//pecah  dengan k
						$explodeRule = explode(" k ",$explodeOR[$a]);
						//nilai true false
						if($explodeRule[0]<=$explodeRule[1]){
							$bol[$a]="Benar";
						}else{
							$bol[$a]="Salah";
						}
					}else if($parameter=='l'){
						//pecah dengan s
						$explodeRule = explode(" l ",$explodeOR[$a]);
						//nilai true false
						if($explodeRule[0]>$explodeRule[1]){
							$bol[$a]="Benar";
						}else{
							$bol[$a]="Salah";
						}
					}
					//cetak nilai bolean				
					$a++;
				}
				//isi false
				$bolAND[$n]="Salah";
				$b=0;			
				while($b<$jmlOR){
					//jika $bol[$b] benar bolAND benar
					if($bol[$b]=="Benar"){
						$bolAND[$n]="Benar";
					}
					$b++;
				}			
				$n++;
			}
			//isi boolrule
			$boolRule="Benar";
			$a=0;
			while($a<$jmlAND){			
				//jika ada yang salah boolrule diganti salah
				if($bolAND[$a]=="Salah"){
					$boolRule="Salah";
				}						
				$a++;
			}		
			if($boolRule=="Benar"){
				$keputusan=$row[3];
				$id_rule=$row[0];
			}			
		}

		if($keputusan==''){
			$que=mysqli_query($koneksi, "SELECT parent FROM pohon_keputusan");				
			$jml=array();
			$exParent=array();
			$i=0;
			while($bar=mysqli_fetch_array($que)){
				$exParent=explode(" AND ",$bar['parent']);								
				$jml[$i] = count($exParent);	
				$i++;
			}
			$maxParent=max($jml);
			$sql_query=mysqli_query($koneksi, "SELECT * FROM pohon_keputusan");				
			while($bar_row=mysqli_fetch_array($sql_query)){
				$explP=explode(" AND ",$bar_row['parent']);
				$jmlT=count($explP);
				if($jmlT==$maxParent){
					$keputusan=$bar_row['keputusan'];
					$id_rule=$bar_row['id'];
				}
			}			
			// echo "<h1><center>Prediksi MMI ".$keputusan."</center></h1>";	
			// echo "<h1><center>Efek Gempa ".$efek_gempa."</center></h1>";			
			//echo "<h4><center>Rule terpilih adalah rule yang terakhir karena tidak memenuhi semua rule</center></h4>";	
			// mysqli_query($koneksi, "INSERT INTO `hasil_prediksi` (`lat`, `long`, `latsta`, `longsta`, `magnitudo`, `kategori_magnitudo`, `kedalaman`, `kategori_kedalaman`, `PGA`, `kategori_PGA`, `jarakhipo`, `kategori_jarakhipo`, `MMI`, `efek_gempa`) VALUES 
			// 	('".$n_lat."','".$n_long."','".$n_latsta."','".$n_longsta."','".$n_magnitudo."','".$n_kategori_magnitudo."','".$n_depth."','".$n_kategori_kedalaman."','".$n_pga."','".$n_kategori_pga."','".$n_jarak_hipo."','".$n_kategori_hipo."','".$keputusan."','".$efek_gempa."')");	
			
		}else{
			// echo "<h1><center>Prediksi MMI ".$keputusan."</center></h1>";
			// echo "<h1><center>Efek Gempa ".$efek_gempa."</center></h1>";
			//$sql_que=mysqli_query($koneksi, "SELECT * FROM pohon_keputusan WHERE id=$id_rule");
			//$row_bar=mysqli_fetch_array($sql_que);
			//$rule_terpilih = "IF ".$row_bar[1]." AND ".$row_bar[2]." THEN MMI = ".$row_bar[3];
			//echo "<h4><center>Rule yang terpilih adalah rule ke-".$row_bar[0]."<br>".$rule_terpilih."</center></h4>";
			// mysqli_query($koneksi, "INSERT INTO `hasil_prediksi` (`lat`, `long`, `latsta`, `longsta`, `magnitudo`, `kategori_magnitudo`, `kedalaman`, `kategori_kedalaman`, `PGA`, `kategori_PGA`, `jarakhipo`, `kategori_jarakhipo`, `MMI`, `efek_gempa`) VALUES 
			// 	('".$n_lat."','".$n_long."','".$n_latsta."','".$n_longsta."','".$n_magnitudo."','".$n_kategori_magnitudo."','".$n_depth."','".$n_kategori_kedalaman."','".$n_pga."','".$n_kategori_pga."','".$n_jarak_hipo."','".$n_kategori_hipo."','".$keputusan."','".$efek_gempa."')");	
		}

		$efek_gempa = "";
		if($keputusan <= 3){
			$mmiBadge = "badge-secondary";
			$efek_gempa = "Tidak Ada atau Jarang Kerusakan";
		}

		else if($keputusan <= 5){
			$mmiBadge = "badge-success";
			$efek_gempa = "Barang-Barang Bergerak dan Tidak Ada Kerusakan";
		}

		else if($keputusan <= 7){
			$mmiBadge = "badge-info";
			$efek_gempa = "Kerusakan Kecil, Retak pada Dinding";
		}

		else if($keputusan <= 8){
			$mmiBadge = "badge-warning";
			$efek_gempa = "Kerusakan Menengah, Hancurnya Dinding";
		}

		else if($keputusan <= 12){
			$mmiBadge = "badge-danger";
			$efek_gempa = "Kerusakan Parah";
		}

		mysqli_query($koneksi, "INSERT INTO `hasil_prediksi` (`lat`, `long`, `latsta`, `longsta`, `magnitudo`, `kategori_magnitudo`, `kedalaman`, `kategori_kedalaman`, `PGA`, `kategori_PGA`, `jarakhipo`, `kategori_jarakhipo`, `jarak`, `kategori_epi`, `MMI`, `efek_gempa`) VALUES 
				('".$n_lat."','".$n_long."','".$n_latsta."','".$n_longsta."','".$n_magnitudo."','".$n_kategori_magnitudo."','".$n_depth."','".$n_kategori_kedalaman."','".$n_pga."','".$n_kategori_pga."','".$n_jarak_hipo."','".$n_kategori_hipo."','".$n_jarak."','".$n_kategori_epi."','".$keputusan."','".$efek_gempa."')");	

		?>
		<div class="card mt-4">
			<div class="card-header">Hasil Prediksi</div>
			<div class="card-body">
				<div class="row text-content-table">
					<div class="col-md-6 font-weight-bold">Parameter Gempa</div>
					<div class="col-md-6 font-weight-bold">Kategori</div>
					<div class="col-md-12">
						<hr>
					</div>
					<div class="col-md-6">Magnitudo</div>
					<div class="col-md-6">
						<span class="badge badge-pill <?= $magnitudeBadge ?>"><?= $n_kategori_magnitudo ?></span>
					</div>
					<div class="col-md-12">
						<hr>
					</div>
					<div class="col-md-6">Kedalaman</div>
					<div class="col-md-6">
						<span class="badge badge-pill <?= $depthBadge ?>"><?= $n_kategori_kedalaman ?></span>
					</div>
					<div class="col-md-12">
						<hr>
					</div>
					<div class="col-md-6">Jarak Epicenter</div>
					<div class="col-md-6">
						<span class="badge badge-pill <?= $epiBadge ?>"><?= $n_kategori_epi ?></span>
					</div>
					<div class="col-md-12">
						<hr>
					</div>
					<div class="col-md-6">Jarak Hipocenter</div>
					<div class="col-md-6">
						<span class="badge badge-pill <?= $hipoBadge ?>"><?= $n_kategori_hipo ?></span>
					</div>
					<div class="col-md-12">
						<hr>
					</div>
					<div class="col-md-6">PGA</div>
					<div class="col-md-6">
						<span class="badge badge-pill <?= $pgaBadge ?>"><?= $n_kategori_pga ?></span>
					</div>
					<div class="col-md-12">
						<hr>
					</div>
					<div class="col-md-6">MMI</div>
					<div class="col-md-6">
						<span class="badge badge-pill <?= $mmiBadge ?>"><?= $keputusan ?></span>
					</div>
					<div class="col-md-12">
						<hr>
					</div>

					<!-- <div class="col-md-6 mb-4 text-center">
						<h6>Magnitudo</h6>
						<span class="badge badge-pill <?= $magnitudeBadge ?>"><?= $n_kategori_magnitudo ?></span>
					</div>

					<div class="col-md-6 mb-4 text-center">
						<h6>Kedalaman</h6>
						<span class="badge badge-pill <?= $depthBadge ?>"><?= $n_kategori_kedalaman ?></span>
					</div>

					<div class="col-md-6 mb-4 text-center">
						<h6>Jarak Epicenter</h6>
						<span class="badge badge-pill <?= $hipoBadge ?>"><?= $n_kategori_epi ?></span>
					</div>

					<div class="col-md-6 mb-4 text-center">
						<h6>Jarak Hipocenter</h6>
						<span class="badge badge-pill <?= $hipoBadge ?>"><?= $n_kategori_hipo ?></span>
					</div>

					<div class="col-md-6 mb-4 text-center">
						<h6>PGA</h6>
						<span class="badge badge-pill <?= $pgaBadge ?>"><?= $n_kategori_pga ?></span>
					</div>

					<div class="col-12 mb-4 text-center">
						<h6>MMI</h6>
						<span class="badge badge-pill <?= $mmiBadge ?>"><?= $keputusan ?></span>
					</div> -->

					<div class="col-12 mb-4 text-center">
						<h6>Efek Gempa</h6>
						<span class="badge badge-pill <?= $mmiBadge ?>"><?= $efek_gempa ?></span>
					</div>
				</div>
			</div>
		</div>
		<?php
	}
}
?>
</div>
</div>
</div>
</div>
</div>

<script>
const map = L.map('my-map', { tap: false }).setView([-0.7893, 120.9213], 4)

const epicenterIcon = L.icon({
	iconUrl: 'images/epicenter-pin.png',
	iconSize: [60, 60],
	iconAnchor: [30, 30]
})

let stationMarker = null, epicenterMarker = null

L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png?{foo}', 
	{
		foo: 'bar', 
		attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
	}).addTo(map)

<?php
if (isset($_POST['submit'])) {
?>
	stationMarker = L.marker([<?= $n_latsta ?>, <?= $n_longsta ?>], 
		{
			draggable: true,
			title: `${<?= $n_latsta ?>}, ${<?= $n_longsta ?>}`
		}).addTo(map)

	epicenterMarker = L.marker([<?= $n_lat ?>, <?= $n_long ?>], 
		{
			draggable: true,
			title: `${<?= $n_lat ?>}, ${<?= $n_long ?>}`,
			icon: epicenterIcon
		}).addTo(map)

	fitMapToBounds()
<?php
}
?>

map.on('click', e => {
	if (stationMarker !== null) {
		map.removeLayer(stationMarker)
	}

	const latLng = e.latlng

	stationMarker = L.marker(e.latlng, 
		{
			draggable: true,
			title: `${latLng.lat}, ${latLng.lng}`
		}).addTo(map)

	stationMarker.on('drag', event => {
		changeLatLng(event.latlng, 'latsta', 'longsta')
	})

	stationMarker.on('dragend', () => {
		fitMapToBounds()
	})

	changeLatLng(latLng, 'latsta', 'longsta')
	fitMapToBounds()
})

const changeLatLng = (latLng, inp1, inp2) => {
	$(`input[name=${inp1}]`).val(latLng.lat)
	$(`input[name=${inp2}]`).val(latLng.lng)
}

$("input[name=lat]").on('input', () => {
	addEpicenterMarker()
})
$("input[name=long]").on('input', () => {
	addEpicenterMarker()
})

const addEpicenterMarker = () => {
	const lat = $("input[name=lat]").val()
	const long = $("input[name=long]").val()

	if (lat.trim().length === 0 || long.trim().length === 0) {
		return
	}

	if (epicenterMarker !== null) {
		map.removeLayer(epicenterMarker)
	}

	epicenterMarker = L.marker([parseFloat(lat), parseFloat(long)], 
		{
			draggable: true,
			title: `${lat}, ${long}`,
			icon: epicenterIcon
		}).addTo(map)

	epicenterMarker.on('drag', event => {
		changeLatLng(event.latlng, 'lat', 'long')
	})

	epicenterMarker.on('dragend', () => {
		fitMapToBounds()
	})

	fitMapToBounds()
}

const fitMapToBounds = () => {
	if (stationMarker === null || epicenterMarker === null) {
		return
	}

	let bounds = L.latLngBounds(stationMarker.getLatLng(), epicenterMarker.getLatLng())

	map.fitBounds(bounds.pad(0.5));

}
</script>