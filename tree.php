<div class="container-fluid">
	<div class="row">
	<div class="col-lg-12">
		<div class="card">
              <div class="card-header">POHON KEPUTUSAN</div>
               <div class="card-body">
                                        <div class="card-title">
                                            <h3 class="text-center title-2"></h3>
                                        </div>
<?php
	include "koneksi.php";	    			
	if(isset($_GET['act'])){
		$action=$_GET['act'];
		$id=$_GET['id'];
		if($action=='delete'){
			mysqli_query($koneksi, "TRUNCATE pohon_keputusan");
			header('location:index.php?menu=tree');
		}
	}		
	 
	$query=mysqli_query($koneksi, "SELECT * from pohon_keputusan order by(id)");
	$jumlah=mysqli_num_rows($query);

	//jika pohon keputusan kosong
	if($jumlah==0){
		echo "<center><h3> Pohon keputusan belum terbentuk...</h3></center>";
	}else{
		if($_SESSION['lvl']=='0'){
			echo "<center>
					Klik 'Uji Rule' untuk menguji akurasi rule...<br>								
				</center>";
		}
		echo "Jumlah rule : ".$jumlah."<br>";
		//hanya kaprodi yang bisa menghapus pohon keputusan dan menguji akurasi
		if($_SESSION['lvl']=='0'){
	?>				
			
			<p>
				<a href="?menu=pohon_tree" class="btn btn-success btn-sm"> <i class="fa fa-star"></i> > Lihat Pohon Keputusan</a>
				<a href="?menu=uji_rule" class="btn btn-info btn-sm"> <i class="fa fa-lightbulb-o"></i> > Uji Rule</a> 
			</p>
			
		<?php
		}else if($_SESSION['lvl']=='1'){
			echo "<a href=\"?menu=pohon_tree\" >Lihat Pohon Keputusan</a>";
		}

		?>
		<div class="container-fluid">
                                    <div class="card-body text-center">
                                        <h5 class="mt-4 mb-4">Pohon Keputusan</h5>
                                        <img src='images/pohon2.png' alt="Pohon Keputusan" width='800' height='700' style="margin-bottom: 50px" />
                                    </div>
                                
                            </div>
		<br>
		<table width=900 class='table table-responsive table-stripped table-bordered'>
			<tr align='center'>
				<th>No</th><th>Aturan</th>
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
				<tr bgcolor=<?php echo $warna; ?> >
					<td align='center'><?php echo $no;?></td>			
					<td><?php 
						echo "IF ";
						if($row['parent']!=''){
							echo $row['parent']." AND ";
						}
						echo $row['akar']." THEN MMI = ".$row['keputusan'];?>
					</td>								
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
	?>
		