<?php
	include "koneksi.php";
	if(isset($_GET['act'])){
		$action=$_GET['act'];		
		//delete semua data
		if($action=='delete_all'){
			mysqli_query($koneksi, "TRUNCATE data_uji");
			header('location:index.php?menu=uji_rule');
		}
	}else{				
		if(isset($_POST['submit'])){
			include "hitung_akurasi.php";
		}else{
			$query=mysqli_query($koneksi, "SELECT * FROM data_uji order by id");
			$jumlah=mysqli_num_rows($query);
			?>
			<div class="container-fluid">
				<div class="card">
					<div class="card-header">Uji Rule</div>
					<div class="card-body">
						<div class="card">
							<div class="card-body">
								<div class="card-title"><h5>Opsi</h5></div>
								<hr>
								<div class="row">
									<div class="col-12">
										<form method="POST" action=''>		              				
											<input type='submit' name='submit' value='Hitung Akurasi' class="btn btn-primary">
										</form>
									</div>
									
									
								</div>
							</div>
						</div>

						<?php
						if($jumlah==0){
						?>
							<h6 class="text-center">Data uji masih kosong...</h6>
						<?php
						}
						else {
						?>
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
									<th><b>Ketepatan</b></th>
									</tr>
							</thead>
						<?php
							$warna1 = '#ffffff';
							$warna2 = '#f5f5f5';
							$warna  = $warna1; 	
							$no=1;
							while($row=mysqli_fetch_array($query)){
								if($warna == $warna1){ 
									$warna = $warna2; 
								} else { 
									$warna = $warna1; 
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
									<td><span class="badge badge-pill badge-<?= $row['ketepatan'] == 'TIDAK' ? 'danger' : 'success' ?>"><?= $row['ketepatan'] ?></span></td>			
								</tr>
							<?php
								$no++;
							}
							?>
						</table>
						<?php
						}
						?>
					</div>
				</div>
			</div>
			<?php
		}
	}
?>

<script>
$(document).ready(() => {
	$("#predict-data").DataTable({
		dom: 'Bfrtip',
		initComplete: (settings, json) => {
			$(".dt-button").each((index, elem) => {
				$(elem).removeClass("dt-button")
				$(elem).addClass("btn btn-dark")
			})

			$(".dt-buttons").addClass("btn-group")
		}
	})
})
</script>