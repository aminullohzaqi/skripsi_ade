<?php
	include "koneksi.php";
    $userID=$_POST['user'];
    $password=$_POST['pass'];
    $query=mysqli_query($koneksi, "select * from user where username='$userID' and password='$password'");    
    if (mysqli_num_rows($query)==0){
        ?>
		User dan Password tidak cocok <a href="login.php">Kembali</a></div>
        <?php
    }
    else{
        while($row=mysqli_fetch_array($query)){
            session_start();
            $_SESSION['usr']=$row['user_id'];
			$_SESSION['nama']=$row['nama'];
            $_SESSION['pwd']=$row['password'];
			$_SESSION['lvl']=$row['type'];
            header("location:index.php");
        }
    }
?>

