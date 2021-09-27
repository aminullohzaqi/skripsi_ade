<div class="container-fluid">
	<div class="row">
	<div class="col-lg-12">
		<div class="card">
              <div class="card-header">MINING</div>
               <div class="card-body">
                                        <div class="card-title">
                                            <h3 class="text-center title-2"></h3>
                                        </div>
<?php
	include "koneksi.php";
	$query=mysqli_query($koneksi, "SELECT * from data_training order by(id)");
	$jumlah=mysqli_num_rows($query);	
	
	if($jumlah==0){
		echo "<center><h3>Data training masih kosong...</h3></center>";
	}else{
		
		if(isset($_POST['submit'])){
			include "proses_mining.php";
		}else{
			?>
			<center>
				Klik "Proses Mining" untuk membentuk pohon keputusan...
				<form method=POST action=''>		              				
					<input type='submit' name='submit' value='Proses' class='btn btn-primary' Mining!>
				</form>
			</center>
			<?php
			echo "Jumlah data : ".$jumlah;
			?>
			<table id="training-data" class='table-responsive table table-stripped table-bordered'>
				<thead>
					<tr>
						<th>No</th>
						<th>Latitude Gempa</th>
						<th>Longitude Gempa</th>
						<th>Latitude Stasiun</th>
						<th>Longitude Stasiun</th>
						<th>Magnitudo</th>
						<th>Kedalaman</th>
						<th><b>PGA</b></th>
						<th>Jarak Hipocenter</th>
						<th>Efek Gempa</th>
					</tr>
				</thead>
				<tbody>
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
					<tr bgcolor=<?php echo $warna; ?> align=center>		
						<td><?php echo $no;?></td>			
						<td><?php echo $row['lat'];?></td>
						<td><?php echo $row['long'];?></td>
						<td><?php echo $row['latsta'];?></td>
						<td><?php echo $row['longsta'];?></td>
						<td><?php echo $row['kategori_magnitudo'];?></td>
						<td><?php echo $row['kategori_kedalaman'];?></td>
						<td><b><?php echo $row['kategori_PGA'];?></b></td>
						<td><?php echo $row['kategori_jarakhipo'];?></td>
						<td><?php echo $row['efek_gempa'];?></td>			
					</tr>
				<?php
					$no++;
				}
				?>
				</tbody>
			</table>	
</div>
</div>
</div>
</div>
</div>	
<?php
		}
	}		    	
?>

<script>
$(document).ready(() => {
	$("#training-data").DataTable({
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
