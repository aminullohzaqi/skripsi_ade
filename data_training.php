<div class="container-fluid">
	<div class="row">
		<div class="col-lg-12">
			<div class="card">
				<div class="card-header bg-primary text-white">Maps</div>
					<div class="card-body">
						<div class="card-title">
							<h3 class="text-center title-2"></h3>
						</div>                    

						<div id="my-map" style="height: 300px"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

	<div class="row">
		<div class="col-lg-12">
			<div class="card">
					<div class="card-header bg-success text-white">Tambah Data Training</div>
						<div class="card-body">
							<div class="card-title">
								<h3 class="text-center title-2"></h3>
							</div>
							<?php
							include "koneksi.php";
							$action = null;
							$id = null;

							if(isset($_GET['act'])){
								$action=$_GET['act'];
								$id=$_GET['id'];
							}
							//update data training
							if($action=='update'){
								include "update_data_training.php";
							}
							//delete data training
							else if($action=='delete'){
								mysqli_query($koneksi, "DELETE FROM data_training WHERE id = '$id'");
								header('location:index.php?menu=data');
							}
							//delete semua data
							else if($action=='delete_all'){
								mysqli_query($koneksi, "TRUNCATE data_training");
								header('location:index.php?menu=data');
							}
							else{
								include "form_data_training.php";
								$query=mysqli_query($koneksi, "select * from data_training order by(id)");
								$jumlah=mysqli_num_rows($query);	
							?>
								<br>
								<p>
								</p>

			<!-- <form method="post" enctype="multipart/form-data" action="upload.php?data=training">
				<div class="form-group">
					Opsi: <br> <a href="index.php?menu=data&act=delete_all" onClick="return confirm('Anda yakin akan hapus semua data?')"class="btn btn-danger btn-sm"> <i class="fa fa-trash"></i> > Hapus Semua Data</a> <br><br>
					Import data excel: <input name="userfile" type="file" class="form-control-file">
					<input name="upload" type="submit" value="import" class="btn btn-success">
				</div>
			</form> -->
						</div>
					</div>
				</div>
			</div>

	<div class="card">
		<div class="card-header">Data Training</div>
		<div class="card-body">
		<?php		
		if($jumlah==0){
			echo "<center><h3>Data training masih kosong...</h3></center>";
		}else{
			echo "Jumlah data training: ".$jumlah;				
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
						<th>PGA</th>
						<th>Jarak Hipocenter</th>
						<th>Efek Gempa</th>
						<th>Aksi</th>
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
					<tr bgcolor=<?php echo $warna; ?> align='center'>
						<td><?php echo $no;?></td>			
						<td><?php echo $row['lat'];?></td>
						<td><?php echo $row['long'];?></td>
						<td><?php echo $row['latsta'];?></td>
						<td><?php echo $row['longsta'];?></td>
						<td><?php echo $row['kategori_magnitudo'];?></td>
						<td><?php echo $row['kategori_kedalaman'];?></td>
						<td><?php echo $row['kategori_PGA'];?></td>
						<td><?php echo $row['kategori_jarakhipo'];?></td>
						<td><?php echo $row['efek_gempa'];?></td>
						<td>
							<a href="index.php?menu=data&act=update&id=<?php echo $row['id']; ?>" title="Edit" class="btn btn-outline-warning btn-sm"><i class="fa fa-edit"></i></a>	
							<a href="data_training.php?act=delete&id=<?php echo $row['id']; ?>" title="Hapus" onclick="return confirm('Apakah anda yakin akan menghapus data?')" class="btn btn-outline-danger btn-sm"><i class="fa fa-trash"></i></a>	
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
if ($action == 'update') {
?>
	stationMarker = L.marker([<?= $latsta ?>, <?= $longsta ?>], 
		{
			draggable: true,
			title: `${<?= $latsta ?>}, ${<?= $longsta ?>}`
		}).addTo(map)

	epicenterMarker = L.marker([<?= $lat ?>, <?= $long ?>], 
		{
			draggable: true,
			title: `${<?= $lat ?>}, ${<?= $long ?>}`,
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
