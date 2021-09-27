<form method=POST action='' >
	<div class="form-group">
		<label>Nama</label>
		<input name='nama' type='text' required="required" class="form-control">
	</div>

	<div class="form-group">
		<label>Username</label>
		<input name='username' type='text' required="required" class="form-control">
	</div>

	<div class="form-group">
		<label>Email</label>
		<input name='email' type='email' required="required" class="form-control">
	</div>

	<div class="form-group">
		<label>Password</label>
		<input name='password' type='password' required="required" class="form-control">
	</div>

	<div class="text-center">
		<input type=submit name=submit value=Submit class="btn btn-primary mr-2">
	</div>

	<!-- <table align='center' >
		<tr>
			<td colspan=2><b><center>Tambah Data Pengguna</center></b></td>
		</tr>
		<tr>
			<td>User ID</td>        
			<td>: </td>
			<td> <input name='user_id' type='text' style="width:100px;" required="required" class="form-control"> </td>			
		</tr>
		<tr>
			<td>Nama</td>        
			<td>: </td>
			<td colspan=2> <input name='nama' type='text' style="width:250px;" required="required" class="form-control"> </td>			
		</tr>
			
		<tr>
			<td colspan=2>
				<input type=submit name=submit value=Submit class="btn btn-primary">
				<input type='reset' value='Batal' class="btn btn-danger">
			</td>
		</tr>
	</table> -->
</form>
<?php
if (isset($_POST['submit'])) {
	$username = $_POST['username'];
	$nama = $_POST['nama'];
	$email = $_POST['email'];
	$password = $_POST['password'];
	
    $query=mysqli_query($koneksi, "INSERT INTO `user`(username,nama,password,email,type) 				
				VALUES(
					'".$username."',
					'".$nama."',
					'".$password."',
                    '".$email."',
					'1'										
				)");
if ($query){
            echo "<script>
                alert('Berhasil Menambah User');
            </script>";
        }
        else {
            echo"Error: <br>". mysqli_error($koneksi);
        }
}

?>