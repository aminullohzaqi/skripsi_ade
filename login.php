<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="author" content="Kodinger">
	<meta name="viewport" content="width=device-width,initial-scale=1">
	<title>My Login Page</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="css/my-login.css">
</head>

<body class="my-login-page">
	<section class="h-100">
		<div class="container h-100">
			<div class="row justify-content-md-center h-100">
				<div class="card-wrapper">
					<div class="brand">
						<img src="images/bmkg.png" alt="bmkg">
					</div>
					<div class="card fat">
						<div class="card-body">
							<h4 class="card-title">Login</h4>
							<form method="POST" action="<?php echo $_SERVER["PHP_SELF"];?>" class="my-login-validation" id="needs-validation" novalidate>
								<div class="form-group">
									<label for="username">Username</label>
									<input id="username" type="text" class="form-control" name="user" value="" required autofocus>
									<div class="invalid-feedback">
									</div>
								</div>

								<div class="form-group">
									<label for="password">Password
									</label>
									<input id="password" type="password" class="form-control" name="pass" required data-eye>
								    <div class="invalid-feedback">
								    	Username or Password is invalid
							    	</div>
								</div>
								<div class="form-group m-0">
									<button type="submit" name="Submit" onclick="myFunction()" class="btn btn-primary btn-block">
										Login
									</button>
								</div>
								<div class="mt-4 text-center">
									Don't have an account? <a href="register.html">Create One</a>
								</div>
							</form>
						</div>
					</div>
					
				</div>
			</div>
		</div>
	</section>

	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	<script src="js/my-login.js"></script>
</body>

<?php
if(isset($_POST["Submit"])){
	include "koneksi.php";
    $userID=$_POST['user'];
    $password=$_POST['pass'];
    $query=mysqli_query($koneksi, "select * from user where username='$userID' and password='$password'");    
    if (mysqli_num_rows($query)==0){
		?>
			<script>
				document.getElementById("needs-validation").classList.add("was-validated");
			</script>
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
}
?>
</html>

