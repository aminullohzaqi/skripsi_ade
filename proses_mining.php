<?php
	$awal = microtime(true); 
	include 'koneksi.php';
	include 'fungsi.php';
	mysqli_query($koneksi, "TRUNCATE pohon_keputusan");	
	pembentukan_tree("","");
	echo "<br><h1><center>---PROSES SELESAI---</center></h1>";
	echo "<center><a href='index.php?menu=tree' accesskey='5' title='pohon keputusan'>Lihat pohon keputusan yang terbentuk</a></center>";
	
	$akhir = microtime(true);
	$lama = $akhir - $awal;
	//echo "<br>Lama eksekusi script adalah: ".$lama." detik";
		
	
	//fungsi utama
	function proses_DT($parent , $kasus_cabang1 , $kasus_cabang2){	
		echo "cabang 1<br>";
		pembentukan_tree($parent , $kasus_cabang1);		
		echo "cabang 2<br>";
		pembentukan_tree($parent , $kasus_cabang2);		
	}		
	
	function pangkas($PARENT, $KASUS, $LEAF){
		global $koneksi;
		//PEMANGKASAN CABANG
		$sql_pangkas = mysqli_query($koneksi, "SELECT * FROM pohon_keputusan WHERE parent=\"$PARENT\" AND keputusan=\"$LEAF\"");
		$row_pangkas = mysqli_fetch_array($sql_pangkas);
		$jml_pangkas = mysqli_num_rows($sql_pangkas);
		//jika keputusan dan parent belum ada maka insert
		if($jml_pangkas==0){			
			mysqli_query($koneksi, "INSERT INTO pohon_keputusan (parent,akar,keputusan)VALUES (\"$PARENT\" , \"$KASUS\" , \"$LEAF\")");
		}
		//jika keputusan dan parent sudah ada maka delete
		else{			
			mysqli_query($koneksi, "DELETE FROM pohon_keputusan WHERE id='$row_pangkas[0]'");
			
			$exPangkas = explode(" AND ",$PARENT);
			$jmlEXpangkas = count($exPangkas);
			$temp=array();
			for($a=0;$a<($jmlEXpangkas-1);$a++){
				$temp[$a]=$exPangkas[$a];
			}
			$imPangkas = implode(" AND ",$temp);
			$akarPangkas = $exPangkas[$jmlEXpangkas-1];
			
			$que_pangkas = mysqli_query($koneksi, "SELECT * FROM pohon_keputusan WHERE parent=\"$imPangkas\" AND keputusan=\"$LEAF\"");
			$baris_pangkas = mysqli_fetch_array($que_pangkas);
			$jumlah_pangkas = mysqli_num_rows($que_pangkas);
			
			if($jumlah_pangkas==0){		
				mysqli_query($koneksi, "INSERT INTO pohon_keputusan (parent,akar,keputusan)VALUES (\"$imPangkas\" , \"$akarPangkas\" , \"$LEAF\")");
				//mysqli_query($koneksi, "UPDATE pohon_keputusan SET parent=\"$imPangkas\" , akar=\"$akarPangkas\" , keputusan=\"$LEAF\" WHERE id=\"$row_pangkas[0]\"");
			}else{
				pangkas($imPangkas,$akarPangkas,$LEAF);
			}								
		}
		echo "Keputusan = ".$LEAF."<br>================================<br>";		
	}
	
	//fungsi proses dalam suatu kasus data
	function pembentukan_tree($N_parent , $kasus){
		global $koneksi;
		//mengisi kondisi
		if($N_parent!=''){
			$kondisi = $N_parent." AND ".$kasus;
		}else{
			$kondisi = $kasus;
		}		
		echo $kondisi."<br>";
		//cek data heterogen / homogen???
		$cek = cek_heterohomogen('MMI',$kondisi);		
		if($cek=='homogen'){
			echo "<br>LEAF ";
			$sql_keputusan = mysqli_query($koneksi, "SELECT DISTINCT(MMI) FROM data_training WHERE $kondisi");
			$row_keputusan = mysqli_fetch_array($sql_keputusan);	
			$keputusan = $row_keputusan['0'];
			//insert atau lakukan pemangkasan cabang
			pangkas($N_parent , $kasus , $keputusan);
			
		}//jika data masih heterogen
		else if($cek=='heterogen'){
			//cek jumlah data
			$jumlah = jumlah_data($kondisi);				
			if($jumlah<41){
				echo "<br>LEAF ";
				$NI     = $kondisi." AND MMI='1'";
                $NII    = $kondisi." AND MMI='2'";
                $NIII   = $kondisi." AND MMI='3'";
                $NIV    = $kondisi." AND MMI='4'";
                $NV     = $kondisi." AND MMI='5'";
                $NVI    = $kondisi." AND MMI='6'";
				$NVII   = $kondisi." AND MMI='7'";
				$NVIII  = $kondisi." AND MMI='8'";
				$jumlahI    = jumlah_data("$NI");
                $jumlahII   = jumlah_data("$NII");
                $jumlahIII  = jumlah_data("$NIII");
                $jumlahIV   = jumlah_data("$NIV");
                $jumlahV    = jumlah_data("$NV");				
                $jumlahVI   = jumlah_data("$NVI");
				$jumlahVII  = jumlah_data("$NVII");
				$jumlahVIII = jumlah_data("$NVIII");

				//$max = max(array($jumlahI, $jumlahII, $jumlahIII, $jumlahIV, $jumlahV, $jumlahVI))
				if($jumlahVII < $jumlahVIII){
					$keputusan = '8';
				}			
				else if($jumlahVI < $jumlahVII){
					$keputusan = '7';
				}
				else if($jumlahV < $jumlahVI){
					$keputusan = '6';
				}	
				else if($jumlahIV < $jumlahV){
					$keputusan = '5';
				}
				else if($jumlahIII < $jumlahIV){
					$keputusan = '4';
				}
				else if($jumlahII < $jumlahIII){
					$keputusan = '3';
				}
				else if($jumlahI <= $jumlahII){
					$keputusan = '2';
				}
				else if($jumlahI > $jumlahII){
					$keputusan = '1';
				}
				//insert atau lakukan pemangkasan cabang
				pangkas($N_parent , $kasus , $keputusan);		
			}
			//lakukan perhitungan
			else{			
				//jika kondisi tidak kosong kondisi_ipk=tambah and
				$kondisi_MMI='';
				if($kondisi!=''){
					$kondisi_MMI=$kondisi." AND ";
				}
				$jml_I      = jumlah_data("$kondisi_MMI MMI='1'");
                $jml_II     = jumlah_data("$kondisi_MMI MMI='2'");
                $jml_III    = jumlah_data("$kondisi_MMI MMI='3'");
                $jml_IV     = jumlah_data("$kondisi_MMI MMI='4'");
                $jml_V      = jumlah_data("$kondisi_MMI MMI='5'");
                $jml_VI     = jumlah_data("$kondisi_MMI MMI='6'");
				$jml_VII    = jumlah_data("$kondisi_MMI MMI='7'");
				$jml_VIII   = jumlah_data("$kondisi_MMI MMI='8'");
				$jml_total  = $jml_I + $jml_II + $jml_III + $jml_IV + $jml_V + $jml_VI + $jml_VII + $jml_VIII;
				echo "Jumlah data training = ".$jml_total."<br>";
				echo "Jumlah  Data MMI 1 = ".$jml_I."<br>";
				echo "Jumlah Data MMI 2 = ".$jml_II."<br>";
                echo "Jumlah Data MMI 3 = ".$jml_III."<br>";
                echo "Jumlah Data MMI 4 = ".$jml_IV."<br>";
                echo "Jumlah Data MMI 5 = ".$jml_V."<br>";
                echo "Jumlah Data MMI 6 = ".$jml_VI."<br>";
				echo "Jumlah Data MMI 7 = ".$jml_VII."<br>";
				echo "Jumlah Data MMI 8 = ".$jml_VIII."<br>";
				
				//hitung entropy semua
				$entropy_all = hitung_entropy($jml_I , $jml_II, $jml_III, $jml_IV, $jml_V, $jml_VI, $jml_VII, $jml_VIII);
				echo "Entropy = ".$entropy_all."<br>";
				
				//cek berapa nilai setiap atribut
				$nilai_Magnitudo = array();
				$nilai_Magnitudo = cek_nilaiAtribut('kategori_magnitudo',$kondisi);	
				$jmlMagnitudo = count($nilai_Magnitudo);								
				$nilai_Kedalaman = array();
				$nilai_Kedalaman = cek_nilaiAtribut('kategori_kedalaman',$kondisi);
				$jmlKedalaman = count($nilai_Kedalaman);
				$nilai_PGA = array();
				$nilai_PGA = cek_nilaiAtribut('kategori_PGA',$kondisi);								
				$jmlPGA= count($nilai_PGA);
				$nilai_Jarak = array();
				$nilai_Jarak = cek_nilaiAtribut('kategori_jarakhipo',$kondisi);
				$jmlJarak = count($nilai_Jarak);				
							
				//hitung gain atribut
				mysqli_query($koneksi, "TRUNCATE gain");

                //Magnitudo
				if($jmlMagnitudo!=1){
					$NA1Magnitudo="kategori_magnitudo='$nilai_Magnitudo[0]'";
					$NA2Magnitudo="";
					$NA3Magnitudo="";
					$NA4Magnitudo="";
					$NA5Magnitudo="";
					if($jmlMagnitudo==2){
						$NA2Magnitudo="kategori_magnitudo='$nilai_Magnitudo[1]'";
					}else if($jmlMagnitudo==3){
						$NA2Magnitudo="kategori_magnitudo='$nilai_Magnitudo[1]'";
						$NA3Magnitudo="kategori_magnitudo='$nilai_Magnitudo[2]'";
					}else if($jmlMagnitudo==4){
						$NA2Magnitudo="kategori_magnitudo='$nilai_Magnitudo[1]'";
						$NA3Magnitudo="kategori_magnitudo='$nilai_Magnitudo[2]'";
						$NA4Magnitudo="kategori_magnitudo='$nilai_Magnitudo[3]'";
					}else if($jmlMagnitudo==5){
						$NA2Magnitudo="kategori_magnitudo='$nilai_Magnitudo[1]'";
						$NA3Magnitudo="kategori_magnitudo='$nilai_Magnitudo[2]'";
						$NA4Magnitudo="kategori_magnitudo='$nilai_Magnitudo[3]'";
						$NA5Magnitudo="kategori_magnitudo='$nilai_Magnitudo[4]'";
					}
					hitung_gain($kondisi , "kategori_magnitudo" , $entropy_all , $NA1Magnitudo , $NA2Magnitudo , $NA3Magnitudo , $NA4Magnitudo , $NA5Magnitudo);
				}				
				
				//Kedalaman
				if($jmlKedalaman!=1){
					$NA1Kedalaman="kategori_kedalaman='$nilai_Kedalaman[0]'";
					$NA2Kedalaman="";
					$NA3Kedalaman="";
					$NA4Kedalaman="";
					$NA5Kedalaman="";
					if($jmlKedalaman==2){
						$NA2Kedalaman="kategori_kedalaman='$nilai_Kedalaman[1]'";
					}else if($jmlKedalaman==3){
						$NA2Kedalaman="kategori_kedalaman='$nilai_Kedalaman[1]'";
						$NA3Kedalaman="kategori_kedalaman='$nilai_Kedalaman[2]'";
					}else if($jmlKedalaman==4){
						$NA2Kedalaman="kategori_kedalaman='$nilai_Kedalaman[1]'";
						$NA3Kedalaman="kategori_kedalaman='$nilai_Kedalaman[2]'";
						$NA4Kedalaman="kategori_kedalaman='$nilai_Kedalaman[3]'";
					}else if($jmlKedalaman==5){
						$NA2Kedalaman="kategori_kedalaman='$nilai_Kedalaman[1]'";
						$NA3Kedalaman="kategori_kedalaman='$nilai_Kedalaman[2]'";
						$NA4Kedalaman="kategori_kedalaman='$nilai_Kedalaman[3]'";
						$NA5Kedalaman="kategori_kedalaman='$nilai_Kedalaman[4]'";
					}
					hitung_gain($kondisi , "kategori_kedalaman" , $entropy_all , $NA1Kedalaman , $NA2Kedalaman , $NA3Kedalaman , $NA4Kedalaman , $NA5Kedalaman);
				}		
                
                //PGA
				if($jmlPGA!=1){
					$NA1PGA="kategori_PGA='$nilai_PGA[0]'";
					$NA2PGA="";
					$NA3PGA="";
					$NA4PGA="";
					$NA5PGA="";
					if($jmlPGA==2){
						$NA2PGA="kategori_PGA='$nilai_PGA[1]'";
					}else if($jmlPGA==3){
						$NA2PGA="kategori_PGA='$nilai_PGA[1]'";
						$NA3PGA="kategori_PGA='$nilai_PGA[2]'";
					}else if($jmlPGA==4){
						$NA2PGA="kategori_PGA='$nilai_PGA[1]'";
						$NA3PGA="kategori_PGA='$nilai_PGA[2]'";
						$NA4PGA="kategori_PGA='$nilai_PGA[3]'";
					}else if($jmlPGA==5){
						$NA2PGA="kategori_PGA='$nilai_PGA[1]'";
						$NA3PGA="kategori_PGA='$nilai_PGA[2]'";
						$NA4PGA="kategori_PGA='$nilai_PGA[3]'";
						$NA5PGA="kategori_PGA='$nilai_PGA[4]'";
					}
					hitung_gain($kondisi , "kategori_PGA" , $entropy_all , $NA1PGA , $NA2PGA , $NA3PGA , $NA4PGA , $NA5PGA);
				}	

				//Jarak
				if($jmlJarak!=1){
					$NA1Jarak="kategori_jarakhipo='$nilai_Jarak[0]'";
					$NA2Jarak="";
					$NA3Jarak="";
					$NA4Jarak="";
					$NA5Jarak="";
					if($jmlJarak==2){
						$NA2Jarak="kategori_jarakhipo='$nilai_Jarak[1]'";
					}else if($jmlJarak==3){
						$NA2Jarak="kategori_jarakhipo='$nilai_Jarak[1]'";
						$NA3Jarak="kategori_jarakhipo='$nilai_Jarak[2]'";
					}else if($jmlJarak==4){
						$NA2Jarak="kategori_jarakhipo='$nilai_Jarak[1]'";
						$NA3Jarak="kategori_jarakhipo='$nilai_Jarak[2]'";
						$NA4Jarak="kategori_jarakhipo='$nilai_Jarak[3]'";
					}else if($jmlJarak==5){
						$NA2Jarak="kategori_jarakhipo='$nilai_Jarak[1]'";
						$NA3Jarak="kategori_jarakhipo='$nilai_Jarak[2]'";
						$NA4Jarak="kategori_jarakhipo='$nilai_Jarak[3]'";
						$NA5Jarak="kategori_jarakhipo='$nilai_Jarak[4]'";
					}
					hitung_gain($kondisi , "kategori_jarakhipo" , $entropy_all , $NA1Jarak , $NA2Jarak , $NA3Jarak , $NA4Jarak , $NA5Jarak);
				}
					
				//ambil nilai gain tertinggi
				$sql_max = mysqli_query($koneksi, "SELECT MAX(g.gain) FROM gain g");
				$row_max = mysqli_fetch_array($sql_max);	
				$max_gain = $row_max['0'];
				$sql = mysqli_query($koneksi, "SELECT * FROM gain g WHERE g.gain=$max_gain");
				$row = mysqli_fetch_array($sql);
				$atribut = $row['1'];
				echo "Atribut terpilih = ".$atribut.", dengan nilai gain = ".$max_gain."<br>";					
				echo "<br>================================<br>";
				//percabangan jika nilai atribut lebih dari 2 hitung rasio terlebih dahulu
				
				//Magnitudo
                if($atribut=="kategori_magnitudo"){
					//jika nilai atribut 5
					if($jmlMagnitudo==5){
						//hitung rasio
						$cabang = array();
						$cabang = hitung_rasio($kondisi , 'kategori_magnitudo',$max_gain,$nilai_Magnitudo[0],$nilai_Magnitudo[1],$nilai_Magnitudo[2],$nilai_Magnitudo[3],$nilai_Magnitudo[4]);
						$exp_cabang = explode(" , ",$cabang[1]);						
						proses_DT($kondisi,"($atribut='$cabang[0]')","($atribut='$exp_cabang[0]' OR $atribut='$exp_cabang[1]' OR $atribut='$exp_cabang[2]' OR $atribut='$exp_cabang[3]')");						
					}					
					//jika nilai atribut 4
					else if($jmlMagnitudo==4){
						//hitung rasio
						$cabang = array();
						$cabang = hitung_rasio($kondisi , 'kategori_magnitudo',$max_gain,$nilai_Magnitudo[0],$nilai_Magnitudo[1],$nilai_Magnitudo[2],$nilai_Magnitudo[3],'');
						$exp_cabang = explode(" , ",$cabang[1]);
						proses_DT($kondisi,"($atribut='$cabang[0]')","($atribut='$exp_cabang[0]' OR $atribut='$exp_cabang[1]' OR $atribut='$exp_cabang[2]')");
					}					
					//jika nilai atribut 3
					else if($jmlMagnitudo==3){
						//hitung rasio
						$cabang = array();
						$cabang = hitung_rasio($kondisi , 'kategori_magnitudo',$max_gain,$nilai_Magnitudo[0],$nilai_Magnitudo[1],$nilai_Magnitudo[2],'','');
						$exp_cabang = explode(" , ",$cabang[1]);
						proses_DT($kondisi,"($atribut='$cabang[0]')","($atribut='$exp_cabang[0]' OR $atribut='$exp_cabang[1]')");
					}
					//jika nilai atribut 2
					else if($jmlMagnitudo==2){
						proses_DT($kondisi,"($atribut='$nilai_Magnitudo[0]')" , "($atribut='$nilai_Magnitudo[1]')");
					}
				}
				
				//Kedalaman
                else if($atribut=="kategori_kedalaman"){
					//jika nilai atribut 5
					if($jmlKedalaman==5){
						//hitung rasio
						$cabang = array();
						$cabang = hitung_rasio($kondisi , 'kategori_kedalaman',$max_gain,$nilai_Kedalaman[0],$nilai_Kedalaman[1],$nilai_Kedalaman[2],$nilai_Kedalaman[3],$nilai_Kedalaman[4]);
						$exp_cabang = explode(" , ",$cabang[1]);						
						proses_DT($kondisi,"($atribut='$cabang[0]')","($atribut='$exp_cabang[0]' OR $atribut='$exp_cabang[1]' OR $atribut='$exp_cabang[2]' OR $atribut='$exp_cabang[3]')");						
					}					
					//jika nilai atribut 4
					else if($jmlKedalaman==4){
						//hitung rasio
						$cabang = array();
						$cabang = hitung_rasio($kondisi , 'kategori_kedalaman',$max_gain,$nilai_Kedalaman[0],$nilai_Kedalaman[1],$nilai_Kedalaman[2],$nilai_Kedalaman[3],'');
						$exp_cabang = explode(" , ",$cabang[1]);
						proses_DT($kondisi,"($atribut='$cabang[0]')","($atribut='$exp_cabang[0]' OR $atribut='$exp_cabang[1]' OR $atribut='$exp_cabang[2]')");
					}					
					//jika nilai atribut 3
					else if($jmlKedalaman==3){
						//hitung rasio
						$cabang = array();
						$cabang = hitung_rasio($kondisi , 'kategori_kedalaman',$max_gain,$nilai_Kedalaman[0],$nilai_Kedalaman[1],$nilai_Kedalaman[2],'','');
						$exp_cabang = explode(" , ",$cabang[1]);
						proses_DT($kondisi,"($atribut='$cabang[0]')","($atribut='$exp_cabang[0]' OR $atribut='$exp_cabang[1]')");
					}
					//jika nilai atribut 2
					else if($jmlKedalaman==2){
						proses_DT($kondisi,"($atribut='$nilai_Kedalaman[0]')" , "($atribut='$nilai_Kedalaman[1]')");
					}
				}
				
				//PGA
                else if($atribut=="kategori_PGA"){
					//jika nilai atribut 5
					if($jmlPGA==5){
						//hitung rasio
						$cabang = array();
						$cabang = hitung_rasio($kondisi , 'kategori_PGA',$max_gain,$nilai_PGA[0],$nilai_PGA[1],$nilai_PGA[2],$nilai_PGA[3],$nilai_PGA[4]);
						$exp_cabang = explode(" , ",$cabang[1]);						
						proses_DT($kondisi,"($atribut='$cabang[0]')","($atribut='$exp_cabang[0]' OR $atribut='$exp_cabang[1]' OR $atribut='$exp_cabang[2]' OR $atribut='$exp_cabang[3]')");						
					}					
					//jika nilai atribut 4
					else if($jmlPGA==4){
						//hitung rasio
						$cabang = array();
						$cabang = hitung_rasio($kondisi , 'kategori_PGA',$max_gain,$nilai_PGA[0],$nilai_PGA[1],$nilai_PGA[2],$nilai_PGA[3],'');
						$exp_cabang = explode(" , ",$cabang[1]);
						proses_DT($kondisi,"($atribut='$cabang[0]')","($atribut='$exp_cabang[0]' OR $atribut='$exp_cabang[1]' OR $atribut='$exp_cabang[2]')");
					}					
					//jika nilai atribut 3
					else if($jmlPGA==3){
						//hitung rasio
						$cabang = array();
						$cabang = hitung_rasio($kondisi , 'kategori_PGA',$max_gain,$nilai_PGA[0],$nilai_PGA[1],$nilai_PGA[2],'','');
						$exp_cabang = explode(" , ",$cabang[1]);
						proses_DT($kondisi,"($atribut='$cabang[0]')","($atribut='$exp_cabang[0]' OR $atribut='$exp_cabang[1]')");
					}
					//jika nilai atribut 2
					else if($jmlPGA==2){
						proses_DT($kondisi,"($atribut='$nilai_PGA[0]')" , "($atribut='$nilai_PGA[1]')");
					}
				}
                
                //Jarak
                else if($atribut=="kategori_jarakhipo"){
					//jika nilai atribut 5
					if($jmlJarak==5){
						//hitung rasio
						$cabang = array();
						$cabang = hitung_rasio($kondisi , 'kategori_jarakhipo',$max_gain,$nilai_Jarak[0],$nilai_Jarak[1],$nilai_Jarak[2],$nilai_Jarak[3],$nilai_Jarak[4]);
						$exp_cabang = explode(" , ",$cabang[1]);						
						proses_DT($kondisi,"($atribut='$cabang[0]')","($atribut='$exp_cabang[0]' OR $atribut='$exp_cabang[1]' OR $atribut='$exp_cabang[2]' OR $atribut='$exp_cabang[3]')");						
					}					
					//jika nilai atribut 4
					else if($jmlJarak==4){
						//hitung rasio
						$cabang = array();
						$cabang = hitung_rasio($kondisi , 'kategori_jarakhipo',$max_gain,$nilai_Jarak[0],$nilai_Jarak[1],$nilai_Jarak[2],$nilai_Jarak[3],'');
						$exp_cabang = explode(" , ",$cabang[1]);
						proses_DT($kondisi,"($atribut='$cabang[0]')","($atribut='$exp_cabang[0]' OR $atribut='$exp_cabang[1]' OR $atribut='$exp_cabang[2]')");
					}					
					//jika nilai atribut 3
					else if($jmlJarak==3){
						//hitung rasio
						$cabang = array();
						$cabang = hitung_rasio($kondisi , 'kategori_jarakhipo',$max_gain,$nilai_Jarak[0],$nilai_Jarak[1],$nilai_Jarak[2],'','');
						$exp_cabang = explode(" , ",$cabang[1]);
						proses_DT($kondisi,"($atribut='$cabang[0]')","($atribut='$exp_cabang[0]' OR $atribut='$exp_cabang[1]')");
					}
					//jika nilai atribut 2
					else if($jmlJarak==2){
						proses_DT($kondisi,"($atribut='$nilai_Jarak[0]')" , "($atribut='$nilai_Jarak[1]')");
					}
				}
			}
		}						
	}
?>