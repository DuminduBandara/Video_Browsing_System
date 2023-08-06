<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Reset Password</title>
    <link rel="stylesheet" href="../styles/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
  	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
  </head>
  <body>
  	
  	<nav class="navbar bg-light p-0 justify-content-center m-0">
	  <a href="./index.jsp" class="navbar-brand">
      	<img src="../img/logo.jpg" class="img-fluid" style="width:80px;" alt="...">
      </a>
	</nav>
	
	<div class="container my-5 mx-auto">
	
				<h4 class="text-center" style="color:var(--clr-1)">Reset Password</h4>
			  	<form action="#" method="post">
				  <div class="mb-3">
				    <label for="exampleInputEmail1" class="form-label">Email address</label>
				    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
				  </div>
				  <div class="mb-3">
				    <label for="exampleInputPassword1" class="form-label">New Password</label>
				    <input type="password" class="form-control" id="exampleInputPassword1">
				  </div>
				  <div class="mb-3">
				    <label for="exampleInputPassword1" class="form-label">Confirm Password</label>
				    <input type="password" class="form-control" id="exampleInputPassword1">
				  </div>
				  <button type="submit" class="btn" style="background:var(--clr-1); color:var(--clr-5);">Reset password</button>
				</form>				
	</div>
  	
	
			
	
	
	<footer style="background:var(--clr-1);" class="text-center py-4">
		<a href="#" class="btn text-light">@watchita</a>
	</footer>
	
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
  	<script src="../JS/script.js"></script>
  </body>
</html>