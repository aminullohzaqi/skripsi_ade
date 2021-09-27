<?php
error_reporting(E_ALL ^ (E_NOTICE | E_WARNING));
include "koneksi.php";
$query=mysqli_query($koneksi, "SELECT * FROM data_uji");
$id_rule=array(); $it=0;
while($bar=mysqli_fetch_array($query)){
	//ambil data uji
	
	$n_kategori_magnitudo = $bar['kategori_magnitudo'];
	$n_kategori_kedalaman = $bar['kategori_kedalaman'];
	$n_kategori_PGA = $bar['kategori_PGA'];
	$n_kategori_jarakhipo = $bar['kategori_jarakhipo'];
			
	$sql=mysqli_query($koneksi, "SELECT * FROM pohon_keputusan");	
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
		
		$rule=str_replace("kategori_magnitudo","'$n_kategori_magnitudo'",$rule);
		$rule=str_replace("kategori_kedalaman","'$n_kategori_kedalaman'",$rule);
		$rule=str_replace("kategori_PGA","$n_kategori_PGA",$rule);
		$rule=str_replace("kategori_jarakhipo","'$n_kategori_jarakhipo'",$rule);
				
		//menghilangkan '
		$rule=str_replace("'","",$rule);
		//menggabungkan kata ortu dan orang lain
		$rule=str_replace("Sangat Dangkal","SangatDangkal",$rule);
		$rule=str_replace("Sangat Dalam","SangatDalam",$rule);
		$rule=str_replace("Sangat Besar","SangatBesar",$rule);
		//explode and
		$explodeAND = explode(" AND ",$rule);
		$jmlAND = count($explodeAND);				
		//menghilangkan ()
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
						$bol[$a]="tepat ";
					}else if($explodeRule[0]!=$explodeRule[1]){
						$bol[$a]="tidak";
					}
				}else if($parameter=='k'){
					//pecah  dengan k
					$explodeRule = explode(" k ",$explodeOR[$a]);
					//nilai true false
					if($explodeRule[0]<=$explodeRule[1]){
						$bol[$a]="tepat ";
					}else{
						$bol[$a]="tidak";
					}
				}else if($parameter=='l'){
					//pecah dengan s
					$explodeRule = explode(" l ",$explodeOR[$a]);
					//nilai true false
					if($explodeRule[0]>$explodeRule[1]){
						$bol[$a]="tepat ";
					}else{
						$bol[$a]="tidak";
					}
				}				
				$a++;
			}
			//isi false
			$bolAND[$n]="tidak";
			$b=0;			
			while($b<$jmlOR){
				//jika $bol[$b] tepat  bolAND tepat 
				if($bol[$b]=="tepat "){
					$bolAND[$n]="tepat ";
				}
				$b++;
			}			
			$n++;
		}
		//isi boolrule
		$boolRule="tepat ";
		$a=0;
		while($a<$jmlAND){			
			//jika ada yang tidak boolrule diganti tidak
			if($bolAND[$a]=="tidak"){
				$boolRule="tidak";
			}						
			$a++;
		}	
		if($boolRule=="tepat "){
			$keputusan=$row['keputusan'];
			$id_rule[$it]=$row['id'];
		}

		$efek_gempa_prediksi = "";
		if($keputusan<=3){
			$efek_gempa_prediksi="Tidak Ada atau Jarang Kerusakan";
		}

		else if($keputusan<= 5){
			$efek_gempa_prediksi="Barang-Barang Bergerak dan Tidak Ada Kerusakan";
		}
		else if($keputusan<= 7){
			$efek_gempa_prediksi="Kerusakan Kecil, Retak Pada Dinding";
		}
		else if($keputusan<=8){
			$efek_gempa_prediksi="Kerusakan Menengah, Hancurnya Dinding";
		}
		else if($keputusan<=12){
			$efek_gempa_prediksi="Kerusakan Parah";
		}
		if($keputusan==''){
			$que=mysqli_query($koneksi, "SELECT parent FROM pohon_keputusan");				
			$jml=array();
			$exParent=array();
			$i=0;
			while($row_baris=mysqli_fetch_array($que)){
				$exParent=explode(" AND ",$row_baris['parent']);								
				$jml[$i] = count($exParent);	
				$i++;
			}
			$maxParent=max($jml);
			$sql_query=mysqli_query($koneksi, "SELECT * FROM pohon_keputusan");				
			while($row_bar=mysqli_fetch_array($sql_query)){
				$explP=explode(" AND ",$row_bar['parent']);
				$jmlT=count($explP);
				if($jmlT==$maxParent){
					$keputusan=$row_bar['keputusan'];
					$id_rule[$it]=$row_bar['id'];
				}
			}
		}		
	}	
	$it++;
	mysqli_query($koneksi, "UPDATE data_uji SET hasil_prediksi='$keputusan', efek_gempa_prediksi='$efek_gempa_prediksi' WHERE id=$bar[0]");		
}


//menampilkan data uji dengan hasil prediksi
$sql = mysqli_query($koneksi, "SELECT * FROM data_uji");	
?>
<div class="container-fluid">
	<div class="card">
		<div class="card-header">Hasil Uji</div>
		<div class="card-body">
			<table id="predict-data" class="table table-responsive table-stripped table-bordered">
				<thead>
					<tr>
						<th>No</th>
		 				<th>Latitude Gempa</th>
						<th>Longitude Gempa</th>
						<th>Latitude Stasiun</th>
						<th>Longitude Stasiun</th>
						<th>Magnitudo</th>
						<th>Kedalaman</th>
						<th>PGA</th>
						<th>Jarak Hipocenter</th>
						<th>Efek Gempa Asli</th>
						<th>Efek Gempa Prediksi</th>
						<th><b>ID Rule Terpilih</b></th>
						<th><b>Ketepatan</b></th>
					</tr>
				</thead>
				<tbody>
			<?php
				$warna1 = '#ffffff';
				$warna2 = '#f5f5f5';
				$warna  = $warna1; 	
				$no=1;	
				while($row=mysqli_fetch_array($sql)){
					if($warna == $warna1){ 
						$warna = $warna2; 
					} else { 
						$warna = $warna1; 
					} 			
					if($row['efek_gempa_asli']==$row['efek_gempa_prediksi']){
						$ketepatan="TEPAT";
					}else{
						$ketepatan="TIDAK";
					}
			?>
					<tr>
						<td><?php echo $no;?></td>			
						<td><?php echo $row['lat'];?></td>
						<td><?php echo $row['long'];?></td>
						<td><?php echo $row['latsta'];?></td>
						<td><?php echo $row['longsta'];?></td>
						<td><?php echo $row['magnitudo'];?></td>
						<td><?php echo $row['kedalaman'];?></td>
						<td><?php echo $row['PGA'];?></td>
						<td><?php echo $row['jarakhipo'];?></td>
						<td><?php echo $row['efek_gempa_asli'];?></td>
						<td><?php echo $row['efek_gempa_prediksi'];?></td>
						<td><?php echo $id_rule[$no-1];?></td>
						<td><span class="badge badge-pill badge-<?= $ketepatan == 'TIDAK' ? 'danger' : 'success' ?>"><?= $ketepatan ?></span></td>
					</tr>
				<?php
					mysqli_query($koneksi,"UPDATE data_uji SET ketepatan='$ketepatan' WHERE id= $row[0]");
					$no++;
				}
				?>
				</tbody>
			</table>

			<?php
			//perhitungan akurasi

			$jumlah_data = mysqli_query($koneksi,"SELECT COUNT(*) FROM data_uji");
			$jumlah_data = mysqli_fetch_array($jumlah_data);
			$jumlah_data = $jumlah_data[0];

			$jumlah_tepat  = mysqli_query($koneksi, "SELECT COUNT(ketepatan) FROM data_uji WHERE ketepatan='TEPAT'");
			$jumlah_tepat  = mysqli_fetch_array($jumlah_tepat );
			$jumlah_tepat  = $jumlah_tepat [0];

			$jumlah_tidak = mysqli_query($koneksi, "SELECT COUNT(ketepatan) FROM data_uji WHERE ketepatan='TIDAK'");
			$jumlah_tidak = mysqli_fetch_array($jumlah_tidak);
			$jumlah_tidak = $jumlah_tidak[0];


			$akurasi=($jumlah_tepat /$jumlah_data)*100;
			$laju_error=($jumlah_tidak/$jumlah_data)*100;

			$akurasi = round($akurasi,2);	
			$laju_error = round($laju_error,2);
			?>

			<table class="table table-responsive table-stripped table-bordered w-100 d-block d-md-table mt-4">
				<tr>
					<th>Jumlah Data yang Diprediksi</th>
					<td><?= $jumlah_data ?></td>
				</tr>
				<tr>
					<th>Jumlah Data yang Diprediksi Tepat</th>
					<td><?= $jumlah_tepat ?></td>
				</tr>
				<tr>
					<th>Jumlah Data Yang Diprediksi Tidak Tepat</th>
					<td><?= $jumlah_tidak ?></td>
				</tr>
				<?php
				if ($kosong!=0) {
				?>
				<tr>
					<th>Jumlah Data yang Prediksinya Kosong</th>
					<td><?= $kosong ?></td>
				</tr>
				<?php
				}
				?>
				<tr>
					<th>Akurasi</th>
					<td><?= $akurasi ?>%</td>
				</tr>
				<tr>
					<th>Error</th>
					<td><?= $laju_error ?>%</td>
				</tr>
			</table>
			
		</div>
	</div>
</div>