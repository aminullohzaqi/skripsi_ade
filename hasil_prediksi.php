<div class="container-fluid">
	<div class="row">
	<div class="col-lg-12">
		<div class="card">
              <div class="card-header">HASIL PREDIKSI</div>
               <div class="card-body">
                                        <div class="card-title">
                                            <h3 class="text-center title-2"></h3>
                                        </div>
<?php
	include "koneksi.php";
	if(isset($_GET['act'])){
		$action=$_GET['act'];				
		//delete semua data
		if($action=='delete_all'){
			mysqli_query($koneksi, "TRUNCATE hasil_prediksi");
			header('location:index.php?menu=hasil');
		}
	}else{
		$query=mysqli_query($koneksi, "SELECT *
								FROM hasil_prediksi 
								ORDER BY(id)");
		$jumlah=mysqli_num_rows($query);	
		//jika hasil_prediksi kosong
		if($jumlah==0){
			echo "<center><h3>Hasil Prediksi Kosong...</h3></center>";
		}
		//jika hasil prediksi sudah terisi
		else{
			echo "Jumlah data : ".$jumlah;	
?>
			<p>
				<a href="index.php?menu=hasil&act=delete_all" onClick="return confirm('Anda yakin akan hapus semua data?')" class="btn btn-danger btn-sm"> <i class="fa fa-trash"></i> > Hapus Semua Data</a>  
				<a href="export/CLP.php?format=3" class="btn btn-success btn-sm"> <i class="fa fa-download"></i> > Download Laporan</a>
			</p>
		<br>	
<table class="table table-responsive table-stripped table-bordered" >
				<tr align='center'>
					<th>No</th>
					<th>Latitude Gempa</th>
					<th>Longitude Gempa</th>
					<th>Latitude Stasiun</th>
					<th>Longitude Stasiun</th>
					<th>Magnitudo</th>
					<th>Kedalaman</th>
					<th>PGA</th>
					<th>Jarak Hipocenter</th>
					<th>Jarak Epicenter</th>
					<th>Efek Gempa </th>
				</tr>
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
						<td><?php echo $row[1];?></td>
						<td><?php echo $row[2];?></td>
						<td><?php echo $row[3];?></td>
						<td><?php echo $row[4];?></td>
						<td><?php echo $row[6];?></td>						
						<td><?php echo $row[8];?></td>		
						<td><?php echo $row[10];?></td>		
						<td><?php echo $row[12];?></td>
						<td><?php echo $row[13];?></td>		
						<td><?php echo $row[16];?></td>		
					</tr>
				<?php
					$no++;
				}
				?>
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