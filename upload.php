<?php
	include "koneksi.php";
	//menggunakan class phpExcelReader
	include "import/excel_reader2.php";

	$dataUpload = $_GET['data'];
	if($dataUpload=='training'){
		//membaca file excel yang diupload
		$data = new Spreadsheet_Excel_Reader($_FILES['userfile']['tmp_name']);
		//membaca jumlah baris dari data excel
		$baris = $data->rowcount($sheet_index=0);
		//nilai awal counter jumlah data yang sukses dan yang gagal diimport
		$sukses = 0;
		$gagal = 0;
		//import data excel dari baris kedua, karena baris pertama adalah nama kolom
		for ($i=2; $i<=$baris; $i++) {			
			$lat = $data->val($i,2);
			$long = $data->val($i,3); 
			$latsta = $data->val($i,4);
			$longsta = $data->val($i,5);
			$kategori_magnitudo = $data->val($i,6);
			$kategori_kedalaman = $data->val($i,7);
			$kategori_PGA = $data->val($i,8);
			$kategori_jarakhipo = $data->val($i,9);
			$efek_gempa = $data->val($i,10);
			//setelah data dibaca, sisipkan ke dalam tabel 
			$query = "INSERT INTO data_training (lat,long,latsta,longsta,kategori_magnitudo,kategori_kedalaman,kategori_PGA,kategori_jarakhipo,efek_gempa) 
			VALUES ('$lat','$long','$latsta','$longsta','$kategori_magnitudo','$kategori_kedalaman','$kategori_PGA','$kategori_jarakhipo','$efek_gempa')";
			$hasil = mysql_query($query);
			//menambah counter jika berhasil atau gagal
			if($hasil) $sukses++;
				else $gagal++;
		}		
		header('location:index.php?menu=data');
	}else if($dataUpload=='uji'){
		//membaca file excel yang diupload
		$data = new Spreadsheet_Excel_Reader($_FILES['userfile']['tmp_name']);
		//membaca jumlah baris dari data excel
		$baris = $data->rowcount($sheet_index=0);
		//nilai awal counter jumlah data yang sukses dan yang gagal diimport
		$sukses = 0;
		$gagal = 0;
		//import data excel dari baris kedua, karena baris pertama adalah nama kolom
		for ($i=2; $i<=$baris; $i++) {			
			$lat = $data->val($i,2);
			$long = $data->val($i,3); 
			$latsta = $data->val($i,4);
			$longsta = $data->val($i,5);
			$kategori_magnitudo = $data->val($i,6);
			$kategori_kedalaman = $data->val($i,7);
			$kategori_PGA = $data->val($i,8);
			$kategori_jarakhipo = $data->val($i,9);
			$efek_gempa = $data->val($i,10);
			//setelah data dibaca, sisipkan ke dalam tabel 
			$query = "INSERT INTO data_uji (lat,long,latsta,longsta,kategori_magnitudo,kategori_kedalaman,kategori_PGA,kategori_jarakhipo,efek_gempa_asli)  
			VALUES ('$lat','$long','$latsta','$longsta','$kategori_magnitudo','$kategori_kedalaman','$kategori_PGA','$kategori_jarakhipo','$efek_gempa')";
			$hasil = mysql_query($query);
			//menambah counter jika berhasil atau gagal
			if($hasil) $sukses++;
				else $gagal++;
		}		
		header('location:index.php?menu=uji_rule');
	}else if($dataUpload=='user'){
		//membaca file excel yang diupload
		$data = new Spreadsheet_Excel_Reader($_FILES['userfile']['tmp_name']);
		//membaca jumlah baris dari data excel
		$baris = $data->rowcount($sheet_index=0);
		//nilai awal counter jumlah data yang sukses dan yang gagal diimport
		$sukses = 0;
		$gagal = 0;
		//import data excel dari baris kedua, karena baris pertama adalah nama kolom
		for ($i=2; $i<=$baris; $i++) {			
			$user_id = $data->val($i,1);
			$nama = $data->val($i,2); 
			$jk = $data->val($i,3);
						
			//setelah data dibaca, sisipkan ke dalam tabel 
			mysql_query("INSERT INTO pengguna VALUES ('$user_id','$nama','$jk')");
			mysql_query("INSERT INTO user VALUES ('$user_id','$nama','$nim','1')");
			//menambah counter jika berhasil atau gagal
			if($hasil) $sukses++;
				else $gagal++;
		}		
		header('location:index.php?menu=user');
	}
	
?>