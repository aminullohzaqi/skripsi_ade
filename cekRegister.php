<?php
	include "koneksi.php";
    $username   = $_POST['username'];
    $nama       = $_POST['nama'];
    $email      = $_POST['email'];
    $password   = $_POST['password'];
    $query      = mysqli_query($koneksi, "INSERT INTO user (username, nama, password, email, type) VALUES ('".$username."','".$nama."', '".$password."', '".$email."',  '1')");    
        
    
    if ($query){
        echo "<script>
            alert('Berhasil Menambah Nilai');
        </script>";
        header("location:login.php");
    }
    else {
        echo"Error:". mysqli_error($koneksi);
    }

?>

