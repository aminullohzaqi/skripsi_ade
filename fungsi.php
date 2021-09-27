<?php
	//fungsi cek nilai atribut
	function cek_nilaiAtribut($field , $kondisi){
		global $koneksi;
		//sql disticnt		
		$hasil = array();
		if($kondisi==''){
			$sql = mysqli_query($koneksi, "SELECT DISTINCT($field) FROM data_training");					
		}else{
			$sql = mysqli_query($koneksi, "SELECT DISTINCT($field) FROM data_training WHERE $kondisi");					
		}
		$a=0;
		while($row = mysqli_fetch_array($sql)){
			$hasil[$a] = $row['0'];
			$a++;
		}	
		return $hasil;
	}	
	//fungsi cek heterogen data
	function cek_heterohomogen($field , $kondisi){
		global $koneksi;
		//sql disticnt
		if($kondisi==''){
			$sql = mysqli_query($koneksi, "SELECT DISTINCT($field) FROM data_training");					
		}else{
			$sql = mysqli_query($koneksi, "SELECT DISTINCT($field) FROM data_training WHERE $kondisi");					
		}
		//jika jumlah data 1 maka homogen
		if (mysqli_num_rows($sql) == 1) {                      
			$nilai = "homogen";
		}else{
			$nilai = "heterogen";
		}		
		return $nilai;
	}	
	//fungsi menghitung jumlah data
	function jumlah_data($kondisi){
		global $koneksi;
		//sql
		if($kondisi==''){
			$sql = mysqli_query($koneksi, "SELECT COUNT(*) FROM data_training $kondisi");	
		}else{
			$sql = mysqli_query($koneksi, "SELECT COUNT(*) FROM data_training WHERE $kondisi");	
		}		
		$row = mysqli_fetch_array($sql);
		$jml = $row['0'];
		return $jml;
	}
	//fungsi menghitung gain
	function hitung_gain($kasus , $atribut , $ent_all , $kondisi1 , $kondisi2 , $kondisi3 , $kondisi4 , $kondisi5){
		global $koneksi;
		$data_kasus = '';
		if($kasus!=''){
			$data_kasus = $kasus." AND ";
		}
		//untuk atribut 2 nilai atribut	
		if($kondisi3==''){
			$j_11   = jumlah_data("$data_kasus MMI='1' AND $kondisi1");
			$j_21  	= jumlah_data("$data_kasus MMI='2' AND $kondisi1");
            $j_31 	= jumlah_data("$data_kasus MMI='3' AND $kondisi1");
            $j_41  	= jumlah_data("$data_kasus MMI='4' AND $kondisi1");
            $j_51   = jumlah_data("$data_kasus MMI='5' AND $kondisi1");
            $j_61  	= jumlah_data("$data_kasus MMI='6' AND $kondisi1");
			$j_71 	= jumlah_data("$data_kasus MMI='7' AND $kondisi1");
			$j_81	= jumlah_data("$data_kasus MMI='8' AND $kondisi1");
			$jml1   = $j_11 + $j_21 + $j_31 + $j_41 + $j_51 + $j_61 + $j_71 + $j_81;
			$j_12   = jumlah_data("$data_kasus MMI='1' AND $kondisi2");
            $j_22  	= jumlah_data("$data_kasus MMI='2' AND $kondisi2");
            $j_32 	= jumlah_data("$data_kasus MMI='3' AND $kondisi2");
            $j_42  	= jumlah_data("$data_kasus MMI='4' AND $kondisi2");
            $j_52   = jumlah_data("$data_kasus MMI='5' AND $kondisi2");
            $j_62  	= jumlah_data("$data_kasus MMI='6' AND $kondisi2");
			$j_72 	= jumlah_data("$data_kasus MMI='7' AND $kondisi2");
			$j_82	= jumlah_data("$data_kasus MMI='8' AND $kondisi2");
			$jml2   = $j_12 + $j_22 + $j_32 + $j_42 + $j_52 + $j_62 + $j_72 + $j_82;
			//hitung entropy masing-masing kondisi
			$jml_total = $jml1 + $jml2;
			$ent1 = hitung_entropy($j_11 , $j_21, $j_31 , $j_41, $j_51 , $j_61 , $j_71 , $j_81);
			$ent2 = hitung_entropy($j_12 , $j_22, $j_32 , $j_42, $j_52 , $j_62 , $j_72 , $j_82);
			$gain = $ent_all - ((($jml1/$jml_total)*$ent1) + (($jml2/$jml_total)*$ent2));
		}
		//untuk atribut 3 nilai atribut
		else if($kondisi4==''){
			$j_11   = jumlah_data("$data_kasus MMI='1' AND $kondisi1");
			$j_21  	= jumlah_data("$data_kasus MMI='2' AND $kondisi1");
            $j_31 	= jumlah_data("$data_kasus MMI='3' AND $kondisi1");
            $j_41  	= jumlah_data("$data_kasus MMI='4' AND $kondisi1");
            $j_51   = jumlah_data("$data_kasus MMI='5' AND $kondisi1");
            $j_61  	= jumlah_data("$data_kasus MMI='6' AND $kondisi1");
			$j_71 	= jumlah_data("$data_kasus MMI='7' AND $kondisi1");
			$j_81	= jumlah_data("$data_kasus MMI='8' AND $kondisi1");
			$jml1   = $j_11 + $j_21 + $j_31 + $j_41 + $j_51 + $j_61 + $j_71 + $j_81;
			$j_12   = jumlah_data("$data_kasus MMI='1' AND $kondisi2");
            $j_22  	= jumlah_data("$data_kasus MMI='2' AND $kondisi2");
            $j_32 	= jumlah_data("$data_kasus MMI='3' AND $kondisi2");
            $j_42  	= jumlah_data("$data_kasus MMI='4' AND $kondisi2");
            $j_52   = jumlah_data("$data_kasus MMI='5' AND $kondisi2");
            $j_62  	= jumlah_data("$data_kasus MMI='6' AND $kondisi2");
			$j_72 	= jumlah_data("$data_kasus MMI='7' AND $kondisi2");
			$j_82	= jumlah_data("$data_kasus MMI='8' AND $kondisi2");
			$jml2   = $j_12 + $j_22 + $j_32 + $j_42 + $j_52 + $j_62 + $j_72 + $j_82;
			$j_13   = jumlah_data("$data_kasus MMI='1' AND $kondisi3");
            $j_23  	= jumlah_data("$data_kasus MMI='2' AND $kondisi3");
            $j_33 	= jumlah_data("$data_kasus MMI='3' AND $kondisi3");
            $j_43  	= jumlah_data("$data_kasus MMI='4' AND $kondisi3");
            $j_53   = jumlah_data("$data_kasus MMI='5' AND $kondisi3");
            $j_63  	= jumlah_data("$data_kasus MMI='6' AND $kondisi3");
			$j_73 	= jumlah_data("$data_kasus MMI='7' AND $kondisi3");
			$j_83	= jumlah_data("$data_kasus MMI='8' AND $kondisi3");
			$jml3   = $j_13 + $j_23 + $j_33 + $j_43 + $j_53 + $j_63 + $j_73 + $j_83;
			//hitung entropy masing-masing kondisi
			$jml_total = $jml1 + $jml2 + $jml3;
			$ent1 = hitung_entropy($j_11 , $j_21, $j_31 , $j_41, $j_51 , $j_61 , $j_71 , $j_81);
			$ent2 = hitung_entropy($j_12 , $j_22, $j_32 , $j_42, $j_52 , $j_62 , $j_72 , $j_82);
			$ent3 = hitung_entropy($j_13 , $j_23, $j_33 , $j_43, $j_53 , $j_63 , $j_73 , $j_83);			
			$gain = $ent_all - ((($jml1/$jml_total)*$ent1) + (($jml2/$jml_total)*$ent2) 
						+ (($jml3/$jml_total)*$ent3));				
		}
		//untuk atribut 4 nilai atribut
		else if($kondisi5==''){
			$j_11   = jumlah_data("$data_kasus MMI='1' AND $kondisi1");
			$j_21  	= jumlah_data("$data_kasus MMI='2' AND $kondisi1");
            $j_31 	= jumlah_data("$data_kasus MMI='3' AND $kondisi1");
            $j_41  	= jumlah_data("$data_kasus MMI='4' AND $kondisi1");
            $j_51   = jumlah_data("$data_kasus MMI='5' AND $kondisi1");
            $j_61  	= jumlah_data("$data_kasus MMI='6' AND $kondisi1");
			$j_71 	= jumlah_data("$data_kasus MMI='7' AND $kondisi1");
			$j_81	= jumlah_data("$data_kasus MMI='8' AND $kondisi1");
			$jml1   = $j_11 + $j_21 + $j_31 + $j_41 + $j_51 + $j_61 + $j_71 + $j_81;
			$j_12   = jumlah_data("$data_kasus MMI='1' AND $kondisi2");
            $j_22  	= jumlah_data("$data_kasus MMI='2' AND $kondisi2");
            $j_32 	= jumlah_data("$data_kasus MMI='3' AND $kondisi2");
            $j_42  	= jumlah_data("$data_kasus MMI='4' AND $kondisi2");
            $j_52   = jumlah_data("$data_kasus MMI='5' AND $kondisi2");
            $j_62  	= jumlah_data("$data_kasus MMI='6' AND $kondisi2");
			$j_72 	= jumlah_data("$data_kasus MMI='7' AND $kondisi2");
			$j_82	= jumlah_data("$data_kasus MMI='8' AND $kondisi2");
			$jml2   = $j_12 + $j_22 + $j_32 + $j_42 + $j_52 + $j_62 + $j_72 + $j_82;
			$j_13   = jumlah_data("$data_kasus MMI='1' AND $kondisi3");
            $j_23  	= jumlah_data("$data_kasus MMI='2' AND $kondisi3");
            $j_33 	= jumlah_data("$data_kasus MMI='3' AND $kondisi3");
            $j_43  	= jumlah_data("$data_kasus MMI='4' AND $kondisi3");
            $j_53   = jumlah_data("$data_kasus MMI='5' AND $kondisi3");
            $j_63  	= jumlah_data("$data_kasus MMI='6' AND $kondisi3");
			$j_73 	= jumlah_data("$data_kasus MMI='7' AND $kondisi3");
			$j_83	= jumlah_data("$data_kasus MMI='8' AND $kondisi3");
			$jml3   = $j_13 + $j_23 + $j_33 + $j_43 + $j_53 + $j_63 + $j_73 + $j_83;
			$j_14   = jumlah_data("$data_kasus MMI='1' AND $kondisi4");
            $j_24  	= jumlah_data("$data_kasus MMI='2' AND $kondisi4");
            $j_34 	= jumlah_data("$data_kasus MMI='3' AND $kondisi4");
            $j_44  	= jumlah_data("$data_kasus MMI='4' AND $kondisi4");
            $j_54   = jumlah_data("$data_kasus MMI='5' AND $kondisi4");
            $j_64  	= jumlah_data("$data_kasus MMI='6' AND $kondisi4");
			$j_74 	= jumlah_data("$data_kasus MMI='7' AND $kondisi4");
			$j_84	= jumlah_data("$data_kasus MMI='8' AND $kondisi4");
			$jml4   = $j_14 + $j_24 + $j_34 + $j_44 + $j_54 + $j_64 + $j_74 + $j_84;
			//hitung entropy masing-masing kondisi
			$jml_total = $jml1 + $jml2 + $jml3 + $jml4;
			$ent1 = hitung_entropy($j_11 , $j_21, $j_31 , $j_41, $j_51 , $j_61 , $j_71 , $j_81);
			$ent2 = hitung_entropy($j_12 , $j_22, $j_32 , $j_42, $j_52 , $j_62 , $j_72 , $j_82);
			$ent3 = hitung_entropy($j_13 , $j_23, $j_33 , $j_43, $j_53 , $j_63 , $j_73 , $j_83);
			$ent4 = hitung_entropy($j_14 , $j_24, $j_34 , $j_44, $j_54 , $j_64 , $j_74 , $j_84);
			$gain = $ent_all - ((($jml1/$jml_total)*$ent1) + (($jml2/$jml_total)*$ent2)
						+ (($jml3/$jml_total)*$ent3) + (($jml4/$jml_total)*$ent4));				
		}
		//untuk atribut 5 nilai atribut	
		else{
			$j_11   = jumlah_data("$data_kasus MMI='1' AND $kondisi1");
			$j_21  	= jumlah_data("$data_kasus MMI='2' AND $kondisi1");
            $j_31 	= jumlah_data("$data_kasus MMI='3' AND $kondisi1");
            $j_41  	= jumlah_data("$data_kasus MMI='4' AND $kondisi1");
            $j_51   = jumlah_data("$data_kasus MMI='5' AND $kondisi1");
            $j_61  	= jumlah_data("$data_kasus MMI='6' AND $kondisi1");
			$j_71 	= jumlah_data("$data_kasus MMI='7' AND $kondisi1");
			$j_81	= jumlah_data("$data_kasus MMI='8' AND $kondisi1");
			$jml1   = $j_11 + $j_21 + $j_31 + $j_41 + $j_51 + $j_61 + $j_71 + $j_81;
			$j_12   = jumlah_data("$data_kasus MMI='1' AND $kondisi2");
            $j_22  	= jumlah_data("$data_kasus MMI='2' AND $kondisi2");
            $j_32 	= jumlah_data("$data_kasus MMI='3' AND $kondisi2");
            $j_42  	= jumlah_data("$data_kasus MMI='4' AND $kondisi2");
            $j_52   = jumlah_data("$data_kasus MMI='5' AND $kondisi2");
            $j_62  	= jumlah_data("$data_kasus MMI='6' AND $kondisi2");
			$j_72 	= jumlah_data("$data_kasus MMI='7' AND $kondisi2");
			$j_82	= jumlah_data("$data_kasus MMI='8' AND $kondisi2");
			$jml2   = $j_12 + $j_22 + $j_32 + $j_42 + $j_52 + $j_62 + $j_72 + $j_82;
			$j_13   = jumlah_data("$data_kasus MMI='1' AND $kondisi3");
            $j_23  	= jumlah_data("$data_kasus MMI='2' AND $kondisi3");
            $j_33 	= jumlah_data("$data_kasus MMI='3' AND $kondisi3");
            $j_43  	= jumlah_data("$data_kasus MMI='4' AND $kondisi3");
            $j_53   = jumlah_data("$data_kasus MMI='5' AND $kondisi3");
            $j_63  	= jumlah_data("$data_kasus MMI='6' AND $kondisi3");
			$j_73 	= jumlah_data("$data_kasus MMI='7' AND $kondisi3");
			$j_83	= jumlah_data("$data_kasus MMI='8' AND $kondisi3");
			$jml3   = $j_13 + $j_23 + $j_33 + $j_43 + $j_53 + $j_63 + $j_73 + $j_83;
			$j_14   = jumlah_data("$data_kasus MMI='1' AND $kondisi4");
            $j_24  	= jumlah_data("$data_kasus MMI='2' AND $kondisi4");
            $j_34 	= jumlah_data("$data_kasus MMI='3' AND $kondisi4");
            $j_44  	= jumlah_data("$data_kasus MMI='4' AND $kondisi4");
            $j_54   = jumlah_data("$data_kasus MMI='5' AND $kondisi4");
            $j_64  	= jumlah_data("$data_kasus MMI='6' AND $kondisi4");
			$j_74 	= jumlah_data("$data_kasus MMI='7' AND $kondisi4");
			$j_84	= jumlah_data("$data_kasus MMI='8' AND $kondisi4");
			$jml4   = $j_14 + $j_24 + $j_34 + $j_44 + $j_54 + $j_64 + $j_74 + $j_84;
			$j_15   = jumlah_data("$data_kasus MMI='1' AND $kondisi5");
            $j_25  	= jumlah_data("$data_kasus MMI='2' AND $kondisi5");
            $j_35 	= jumlah_data("$data_kasus MMI='3' AND $kondisi5");
            $j_45  	= jumlah_data("$data_kasus MMI='4' AND $kondisi5");
            $j_55   = jumlah_data("$data_kasus MMI='5' AND $kondisi5");
            $j_65  	= jumlah_data("$data_kasus MMI='6' AND $kondisi5");
			$j_75 	= jumlah_data("$data_kasus MMI='7' AND $kondisi5");
			$j_85	= jumlah_data("$data_kasus MMI='8' AND $kondisi5");
			$jml5   = $j_15 + $j_25 + $j_35 + $j_45 + $j_55 + $j_65 + $j_75 + $j_85;
			//hitung entropy masing-masing kondisi
			$jml_total = $jml1 + $jml2 + $jml3 + $jml4 + $jml5;
			$ent1 = hitung_entropy($j_11 , $j_21, $j_31 , $j_41, $j_51 , $j_61 , $j_71 , $j_81);
			$ent2 = hitung_entropy($j_12 , $j_22, $j_32 , $j_42, $j_52 , $j_62 , $j_72 , $j_82);
			$ent3 = hitung_entropy($j_13 , $j_23, $j_33 , $j_43, $j_53 , $j_63 , $j_73 , $j_83);
			$ent4 = hitung_entropy($j_14 , $j_24, $j_34 , $j_44, $j_54 , $j_64 , $j_74 , $j_84);
			$ent5 = hitung_entropy($j_15 , $j_25, $j_35 , $j_45, $j_55 , $j_65 , $j_75 , $j_85);
			$gain = $ent_all - ((($jml1/$jml_total)*$ent1) + (($jml2/$jml_total)*$ent2) 
						+ (($jml3/$jml_total)*$ent3) + (($jml4/$jml_total)*$ent4) + (($jml5/$jml_total)*$ent5));			
		}
		//desimal 3 angka dibelakang koma
		$gain = round($gain,50);	
		if($gain>0){
			echo "Gain ".$atribut." = ".$gain."<br>";
		}	
		echo "Gain ".$atribut." = ".$gain."<br>";
		
		$res = mysqli_query($koneksi, "INSERT INTO gain VALUES (DEFAULT,'$atribut','$gain')");
		// print_r($res);
		// exit(0);
	}
	//fungsi menghitung entropy
	function hitung_entropy($nilai1 , $nilai2, $nilai3, $nilai4, $nilai5, $nilai6, $nilai7, $nilai8){
		$total = $nilai1 + $nilai2 + $nilai3 + $nilai4 + $nilai5 + $nilai6 + $nilai7 + $nilai8;
		//jika salah satu nilai 0, maka entropy 0
        $entropy1 =($nilai1!=0)?(-($nilai1/$total)*(log(($nilai1/$total),2))):0;
        $entropy2 =($nilai2!=0)?(-($nilai2/$total)*(log(($nilai2/$total),2))):0;
        $entropy3 =($nilai3!=0)?(-($nilai3/$total)*(log(($nilai3/$total),2))):0;
        $entropy4 =($nilai4!=0)?(-($nilai4/$total)*(log(($nilai4/$total),2))):0;
        $entropy5 =($nilai5!=0)?(-($nilai5/$total)*(log(($nilai5/$total),2))):0;
        $entropy6 =($nilai6!=0)?(-($nilai6/$total)*(log(($nilai6/$total),2))):0;
		$entropy7 =($nilai7!=0)?(-($nilai7/$total)*(log(($nilai7/$total),2))):0;
		$entropy8 =($nilai8!=0)?(-($nilai8/$total)*(log(($nilai8/$total),2))):0;
        
        $entropy = $entropy1 + $entropy2 + $entropy3 + $entropy4 + $entropy5 + $entropy6 + $entropy7 + $entropy8;
		//desimal 3 angka dibelakang koma
		$entropy = round($entropy,50);	
		return $entropy;
	}
	//fungsi hitung rasio
	function hitung_rasio($kasus , $atribut , $gain , $nilai1 , $nilai2 , $nilai3 , $nilai4 , $nilai5){		
		global $koneksi;		
		$data_kasus = '';
		if($kasus!=''){
			$data_kasus = $kasus." AND ";
		}
		//menentukan jumlah nilai
			$jmlNilai=5;
			//jika nilai 5 kosong maka nilai atribut-nya 4
			if($nilai5==''){
				$jmlNilai=4;
			}
			//jika nilai 4 kosong maka nilai atribut-nya 3
			if($nilai4==''){
				$jmlNilai=3;				
			}						
		mysqli_query($koneksi, "TRUNCATE rasio_gain");		
		if($jmlNilai==3){
			$opsi11 = jumlah_data("$data_kasus ($atribut='$nilai2' OR $atribut='$nilai3')");
			$opsi12 = jumlah_data("$data_kasus $atribut='$nilai1'");
			$tot_opsi1=$opsi11+$opsi12;
			$opsi21 = jumlah_data("$data_kasus ($atribut='$nilai3' OR $atribut='$nilai1')");
			$opsi22 = jumlah_data("$data_kasus $atribut='$nilai2'");
			$tot_opsi2=$opsi21+$opsi22;
			$opsi31 = jumlah_data("$data_kasus ($atribut='$nilai1' OR $atribut='$nilai2')");
			$opsi32 = jumlah_data("$data_kasus $atribut='$nilai3'");
			$tot_opsi3=$opsi31+$opsi32;			
			//hitung split info
			$opsi1 = (-($opsi11/$tot_opsi1)*(log(($opsi11/$tot_opsi1),2))) + (-($opsi12/$tot_opsi1)*(log(($opsi12/$tot_opsi1),2)));
			$opsi2 = (-($opsi21/$tot_opsi2)*(log(($opsi21/$tot_opsi2),2))) + (-($opsi22/$tot_opsi2)*(log(($opsi22/$tot_opsi2),2)));
			$opsi3 = (-($opsi31/$tot_opsi3)*(log(($opsi31/$tot_opsi3),2))) + (-($opsi32/$tot_opsi3)*(log(($opsi32/$tot_opsi3),2)));
			//desimal 3 angka dibelakang koma
			$opsi1 = round($opsi1,50);
			$opsi2 = round($opsi2,50);
			$opsi3 = round($opsi3,50);										
			//hitung rasio
			$rasio1 = $gain/$opsi1;
			$rasio2 = $gain/$opsi2;
			$rasio3 = $gain/$opsi3;
			//desimal 3 angka dibelakang koma
			$rasio1 = round($rasio1,50);
			$rasio2 = round($rasio2,50);
			$rasio3 = round($rasio3,50);
			//cetak
			echo "Opsi 1 : <br>jumlah ".$nilai2."/".$nilai3." = ".$opsi11.
				"<br>jumlah ".$nilai1." = ".$opsi12.
				"<br>Split = ".$opsi1.
				"<br>Rasio = ".$rasio1."<br>";
			echo "Opsi 2 : <br>jumlah ".$nilai3."/".$nilai1." = ".$opsi21.
				"<br>jumlah ".$nilai2." = ".$opsi22.
				"<br>Split = ".$opsi2.
				"<br>Rasio = ".$rasio2."<br>";
			echo "Opsi 3 : <br>jumlah ".$nilai1."/".$nilai2." = ".$opsi31.
				"<br>jumlah ".$nilai3." = ".$opsi32.
				"<br>Split = ".$opsi3.
				"<br>Rasio = ".$rasio3."<br>";
				
			//insert 
			mysqli_query($koneksi, "INSERT INTO rasio_gain VALUES 
						(DEFAULT , 'opsi1' , '$nilai1' , '$nilai2 , $nilai3' , '$rasio1'),
						(DEFAULT , 'opsi2' , '$nilai2' , '$nilai3 , $nilai1' , '$rasio2'),
						(DEFAULT , 'opsi3' , '$nilai3' , '$nilai1 , $nilai2' , '$rasio3')");
		}
		else if($jmlNilai==4){
			$opsi11 = jumlah_data("$data_kasus ($atribut='$nilai2' OR $atribut='$nilai3' OR $atribut='$nilai4')");
			$opsi12 = jumlah_data("$data_kasus $atribut='$nilai1'");
			$tot_opsi1=$opsi11+$opsi12;
			$opsi21 = jumlah_data("$data_kasus ($atribut='$nilai3' OR $atribut='$nilai4' OR $atribut='$nilai1')");
			$opsi22 = jumlah_data("$data_kasus $atribut='$nilai2'");
			$tot_opsi2=$opsi21+$opsi22;
			$opsi31 = jumlah_data("$data_kasus ($atribut='$nilai4' OR $atribut='$nilai1' OR $atribut='$nilai2')");
			$opsi32 = jumlah_data("$data_kasus $atribut='$nilai3'");
			$tot_opsi3=$opsi31+$opsi32;
			$opsi41 = jumlah_data("$data_kasus ($atribut='$nilai1' OR $atribut='$nilai2' OR $atribut='$nilai3')");
			$opsi42 = jumlah_data("$data_kasus $atribut='$nilai4'");
			$tot_opsi4=$opsi41+$opsi42;
			
			//hitung split info
			$opsi1 = (-($opsi11/$tot_opsi1)*(log(($opsi11/$tot_opsi1),2))) + (-($opsi12/$tot_opsi1)*(log(($opsi12/$tot_opsi1),2)));
			$opsi2 = (-($opsi21/$tot_opsi2)*(log(($opsi21/$tot_opsi2),2))) + (-($opsi22/$tot_opsi2)*(log(($opsi22/$tot_opsi2),2)));
			$opsi3 = (-($opsi31/$tot_opsi3)*(log(($opsi31/$tot_opsi3),2))) + (-($opsi32/$tot_opsi3)*(log(($opsi32/$tot_opsi3),2)));
			$opsi4 = (-($opsi41/$tot_opsi4)*(log(($opsi41/$tot_opsi4),2))) + (-($opsi42/$tot_opsi4)*(log(($opsi42/$tot_opsi4),2)));			
			//desimal 3 angka dibelakang koma
			$opsi1 = round($opsi1,50);
			$opsi2 = round($opsi2,50);
			$opsi3 = round($opsi3,50);
			$opsi4 = round($opsi4,50);
			
			//hitung rasio
			$rasio1 = $gain/$opsi1;
			$rasio2 = $gain/$opsi2;
			$rasio3 = $gain/$opsi3;
			$rasio4 = $gain/$opsi4;
			//desimal 3 angka dibelakang koma
			$rasio1 = round($rasio1,50);
			$rasio2 = round($rasio2,50);
			$rasio3 = round($rasio3,50);
			$rasio4 = round($rasio4,50);
			//cetak					
			echo "Opsi 1 : <br>jumlah ".$nilai2."/".$nilai3."/".$nilai4." = ".$opsi11.
				"<br>jumlah ".$nilai1." = ".$opsi12.
				"<br>Split = ".$opsi1.
				"<br>Rasio = ".$rasio1."<br>";
			echo "Opsi 2 : <br>jumlah ".$nilai3."/".$nilai4."/".$nilai1." = ".$opsi21.
				"<br>jumlah ".$nilai2." = ".$opsi22.
				"<br>Split = ".$opsi2.
				"<br>Rasio = ".$rasio2."<br>";
			echo "Opsi 3 : <br>jumlah ".$nilai4."/".$nilai1."/".$nilai2." = ".$opsi31.
				"<br>jumlah ".$nilai3." = ".$opsi32.
				"<br>Split = ".$opsi3.
				"<br>Rasio = ".$rasio3."<br>";
			echo "Opsi 4 : <br>jumlah ".$nilai1."/".$nilai2."/".$nilai3." = ".$opsi41.
				"<br>jumlah ".$nilai4." = ".$opsi42.
				"<br>Split = ".$opsi4.
				"<br>Rasio = ".$rasio4."<br>";			
			
			//insert 
			mysqli_query($koneksi, "INSERT INTO rasio_gain VALUES 
						(DEFAULT , 'opsi1' , '$nilai1' , '$nilai2 , $nilai3 , $nilai4' , '$rasio1'),
						(DEFAULT , 'opsi2' , '$nilai2' , '$nilai3 , $nilai4 , $nilai1' , '$rasio2'),
						(DEFAULT , 'opsi3' , '$nilai3' , '$nilai4 , $nilai1 , $nilai2' , '$rasio3'),
						(DEFAULT , 'opsi4' , '$nilai4' , '$nilai1 , $nilai2 , $nilai3' , '$rasio4')");
		}else if($jmlNilai==5){
			$opsi11 = jumlah_data("$data_kasus ($atribut='$nilai2' OR $atribut='$nilai3' OR $atribut='$nilai4' OR $atribut='$nilai5')");
			$opsi12 = jumlah_data("$data_kasus $atribut='$nilai1'");
			$tot_opsi1=$opsi11+$opsi12;
			$opsi21 = jumlah_data("$data_kasus ($atribut='$nilai3' OR $atribut='$nilai4' OR $atribut='$nilai5' OR $atribut='$nilai1')");
			$opsi22 = jumlah_data("$data_kasus $atribut='$nilai2'");
			$tot_opsi2=$opsi21+$opsi22;
			$opsi31 = jumlah_data("$data_kasus ($atribut='$nilai4' OR $atribut='$nilai5' OR $atribut='$nilai1' OR $atribut='$nilai2')");
			$opsi32 = jumlah_data("$data_kasus $atribut='$nilai3'");
			$tot_opsi3=$opsi31+$opsi32;
			$opsi41 = jumlah_data("$data_kasus ($atribut='$nilai5' OR $atribut='$nilai1' OR $atribut='$nilai2' OR $atribut='$nilai3')");
			$opsi42 = jumlah_data("$data_kasus $atribut='$nilai4'");
			$tot_opsi4=$opsi41+$opsi42;
			$opsi51 = jumlah_data("$data_kasus ($atribut='$nilai1' OR $atribut='$nilai2' OR $atribut='$nilai3' OR $atribut='$nilai4')");
			$opsi52 = jumlah_data("$data_kasus $atribut='$nilai5'");
			$tot_opsi5=$opsi51+$opsi52;
			
			//hitung split info
			$opsi1 = (-($opsi11/$tot_opsi1)*(log(($opsi11/$tot_opsi1),2))) + (-($opsi12/$tot_opsi1)*(log(($opsi12/$tot_opsi1),2)));
			$opsi2 = (-($opsi21/$tot_opsi2)*(log(($opsi21/$tot_opsi2),2))) + (-($opsi22/$tot_opsi2)*(log(($opsi22/$tot_opsi2),2)));
			$opsi3 = (-($opsi31/$tot_opsi3)*(log(($opsi31/$tot_opsi3),2))) + (-($opsi32/$tot_opsi3)*(log(($opsi32/$tot_opsi3),2)));
			$opsi4 = (-($opsi41/$tot_opsi4)*(log(($opsi41/$tot_opsi4),2))) + (-($opsi42/$tot_opsi4)*(log(($opsi42/$tot_opsi4),2)));
			$opsi5 = (-($opsi51/$tot_opsi5)*(log(($opsi51/$tot_opsi5),2))) + (-($opsi52/$tot_opsi5)*(log(($opsi52/$tot_opsi5),2)));
			//desimal 3 angka dibelakang koma
			$opsi1 = round($opsi1,50);
			$opsi2 = round($opsi2,50);
			$opsi3 = round($opsi3,50);
			$opsi4 = round($opsi4,50);
			$opsi5 = round($opsi5,50);
			
			//hitung rasio
			$rasio1 = $gain/$opsi1;
			$rasio2 = $gain/$opsi2;
			$rasio3 = $gain/$opsi3;
			$rasio4 = $gain/$opsi4;
			$rasio5 = $gain/$opsi5;
			//desimal 3 angka dibelakang koma
			$rasio1 = round($rasio1,50);
			$rasio2 = round($rasio2,50);
			$rasio3 = round($rasio3,50);
			$rasio4 = round($rasio4,50);
			$rasio5 = round($rasio5,50);
			//cetak
			echo "Opsi 1 : <br>jumlah ".$nilai2."/".$nilai3."/".$nilai4."/".$nilai5." = ".$opsi11.
				"<br>jumlah ".$nilai1." = ".$opsi12.
				"<br>Split = ".$opsi1.
				"<br>Rasio = ".$rasio1."<br>";
			echo "Opsi 2 : <br>jumlah ".$nilai3."/".$nilai4."/".$nilai5."/".$nilai1." = ".$opsi21.
				"<br>jumlah ".$nilai2." = ".$opsi22.
				"<br>Split = ".$opsi2.
				"<br>Rasio = ".$rasio2."<br>";
			echo "Opsi 3 : <br>jumlah ".$nilai4."/".$nilai5."/".$nilai1."/".$nilai2." = ".$opsi31.
				"<br>jumlah ".$nilai3." = ".$opsi32.
				"<br>Split = ".$opsi3.
				"<br>Rasio = ".$rasio3."<br>";
			echo "Opsi 4 : <br>jumlah ".$nilai5."/".$nilai1."/".$nilai2."/".$nilai3." = ".$opsi41.
				"<br>jumlah ".$nilai4." = ".$opsi42.
				"<br>Split = ".$opsi4.
				"<br>Rasio = ".$rasio4."<br>";
			echo "Opsi 5 : <br>jumlah ".$nilai1."/".$nilai2."/".$nilai3."/".$nilai4." = ".$opsi51.
				"<br>jumlah ".$nilai5." = ".$opsi52.
				"<br>Split = ".$opsi5.
				"<br>Rasio = ".$rasio5."<br>";	
			
			//insert 
			$res = mysqli_query($koneksi, "INSERT INTO rasio_gain VALUES 
						(DEFAULT , 'opsi1' , '$nilai1' , '$nilai2 , $nilai3 , $nilai4 , $nilai5' , '$rasio1'),
						(DEFAULT , 'opsi2' , '$nilai2' , '$nilai3 , $nilai4 , $nilai5 , $nilai1' , '$rasio2'),
						(DEFAULT , 'opsi3' , '$nilai3' , '$nilai4 , $nilai5 , $nilai1 , $nilai2' , '$rasio3'),
						(DEFAULT , 'opsi4' , '$nilai4' , '$nilai5 , $nilai1 , $nilai2 , $nilai3' , '$rasio4'),
						(DEFAULT , 'opsi5' , '$nilai5' , '$nilai1 , $nilai2 , $nilai3 , $nilai4' , '$rasio5')");
		}
		$sql_max = mysqli_query($koneksi, "SELECT MAX(rg.rasio_gain) FROM rasio_gain rg");
		$row_max = mysqli_fetch_array($sql_max);
		$max_rasio = $row_max['0'];
		$sql = mysqli_query($koneksi, "SELECT * FROM rasio_gain rg WHERE rg.rasio_gain=$max_rasio");
		$row = mysqli_fetch_array($sql);	
		$opsiMax = array();
		$opsiMax[0] = $row[2];
		$opsiMax[1] = $row[3];		
		echo "<br>=========================<br>";
		return $opsiMax;		
	}
?>