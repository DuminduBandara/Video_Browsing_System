<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Accounts</title>
    <link rel="stylesheet" href="./styles/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
  	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
  </head>
  <body>
  	
  	<nav class="navbar bg-light p-0 justify-content-center m-0">
	  <a href="./index.jsp" class="navbar-brand">
      	<img src="./img/logo.jpg" class="img-fluid" style="width:80px;" alt="...">
      </a>
	</nav>
	
	<div class="container my-5">
	
		<div class="row">
			<div class="col-12 col-lg-5">
				<h4 style="color:var(--clr-1)">Sign In</h4>
			  	<form action="login" method="post">
				  <div class="mb-3">
				    <label for="exampleInputEmail1" class="form-label">User</label>
				    <input type="text" name="username" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
				  </div>
				  <div class="mb-3">
				    <label for="exampleInputPassword1" class="form-label">Password</label>
				    <input type="text" name="password" class="form-control" id="exampleInputPassword1">
				  </div>
				  <div class="mb-3">
				  	<a href="./forgetPassword.jsp" class="btn m-0 p-0" style="color:var(--clr-1);">Forget Password..?</a>
				  </div>
				  <button type="submit" class="btn" style="background:var(--clr-1); color:var(--clr-5);">Sign In</button>
				</form>
			</div>
			
			<div class="col-12 col-lg-2 text-center d-flex align-items-center justify-content-center">
				<h1 style="color:var(--clr-1);">OR</h1>
			</div>
			
			<div class="col-12 col-lg-5">
				<h4 style="color:var(--clr-1)">Sign Up</h4>
			  	<form action="#" method="post">
			  	<div class="mb-3">
				    <label for="formFileLg" class="form-label">Upload Profile Picture</label>
  					<input class="form-control form-control-lg" id="formFileLg" type="file">
				  </div>
			  	 <div class="mb-3">
				    <label for="exampleInputEmail1" class="form-label">First Name</label>
				    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
				  </div>
				  <div class="mb-3">
				    <label for="exampleInputEmail1" class="form-label">Last Name</label>
				    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
				  </div>
				  <div class="mb-3">
				    <label for="exampleInputEmail1" class="form-label">Email address</label>
				    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
				  </div>
				  <div class="mb-3">
				    <label for="exampleInputPassword1" class="form-label">Password</label>
				    <input type="password" class="form-control" id="exampleInputPassword1">
				  </div>
				  <div class="mb-3">
				    <label for="exampleInputPassword1" class="form-label">Confirm Password</label>
				    <input type="password" class="form-control" id="exampleInputPassword1">
				  </div>
				  <button type="submit" class="btn" style="background:var(--clr-1); color:var(--clr-5);">Sign Up</button>
				</form>
			</div>
			
		</div>	
	</div>
  	
	
			
	
	
	<footer style="background:var(--clr-1);" class="text-center py-4">
		<a href="#" class="btn text-light">@watchita</a>
	</footer>
	
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
  	<script src="../JS/script.js"></script>
  </body>
</html>