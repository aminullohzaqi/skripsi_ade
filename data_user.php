<div class="container-fluid">
	<div class="row">
	<div class="col-lg-12">
		<div class="card">
              <div class="card-header">Data User</div>
               <div class="card-body">
                                        <div class="card-title">
                                            <h3 class="text-center title-2"></h3>
                                        </div>

<?php
	include "koneksi.php";		
	if(isset($_GET['act'])){
		$action=$_GET['act'];
		$id=$_GET['id'];		
		//delete data user
		if($action=='delete'){
			mysqli_query($koneksi, "DELETE FROM user WHERE user_id = '$id'");
			
			header('location:index.php?menu=user');
		}
		//delete semua data
		else if($action=='delete_all'){
			mysqli_query($koneksi, "TRUNCATE pengguna");
			mysqli_query($koneksi, "DELETE FROM user WHERE type ='1'");
			header('location:index.php?menu=user');
		}		
	}else{
		include "form_data_user.php";
		$query=mysqli_query($koneksi, "SELECT * from user ORDER BY(user_id)");
		$jumlah=mysqli_num_rows($query);	
		echo "<br><br>";
	?>
		
		<!-- <p>
			<form method="post" enctype="multipart/form-data" action="upload.php?data=user" >
				<div class="form-group">
				Opsi: <br> <a href="index.php?menu=user&act=delete_all" onClick="return confirm('Anda yakin akan hapus semua data user?')" class="btn btn-danger btn-sm"> <i class="fa fa-trash"></i> > Hapus Semua Data</a> <br> <br> 
				Import data excel: <input name="userfile" type="file" class="form-control-file"> 
				<input name="upload" type="submit" value="import" class="btn btn-success"> *format sama dengan tabel tanpa no dan status prediksi
			</div>
			</form>
		</p>	 -->
	<?php		
		
		if($jumlah==0){
			echo "<center><h3>Data user masih kosong...</h3></center>";
		}else{
			echo "Jumlah data : ".$jumlah;	
		?>			
			<table class="table table-responsive table-stripped table-bordered w-100 d-block d-md-table">
				<thead>
					<tr>
						<th>No</th>
						<th>User ID</th>
						<th>Username</th>
						<th>Nama</th>
						<th>Email</th>
						<th>Type</th>
						<th>Action</th>
					</tr>
				</thead>
		<?php
				// $warna1 = '#ffffff';
				// $warna2 = '#f5f5f5';
				// $warna  = $warna1; 	
				$no=1; 
				while($row=mysqli_fetch_array($query)){
					
			?>
					<tr>
						<td><?php echo $no;?></td>			
						<td><?php echo $row['user_id'];?></td>
						<td><?php echo $row['username'];?></td>
						<td><?php echo $row['nama'];?></td>
						<td><?php echo $row['email'];?></td>
						<td><span class="badge badge-pill <?= $row['type'] == 1 ? 'badge-success' : 'badge-primary' ?>"><?= $row['type'] == 0 ? 'Admin' : 'User' ?></span></td>
						<td>							
							<a href="index.php?menu=user&act=delete&id=<?php echo $row[0]; ?>" title="Hapus" onclick="return confirm('Anda yakin akan hapus data ini?')" class="btn btn-sm btn-outline-danger"><i class="fa fa-trash"></i></a>
						</td>
					</tr>
				<?php
					$no++;
				}
				?>
			</table>
	<?php
		}
	}
?>
</div>
</div>
</div>
</div>
</div>