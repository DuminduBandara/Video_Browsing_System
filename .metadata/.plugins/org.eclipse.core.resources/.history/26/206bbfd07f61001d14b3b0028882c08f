<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    
    
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.List"%>
<%@page import="com.videoCtrl.Profile"%>

<%
String id = request.getParameter("userId");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "video_db";
String userId = "root";
String password = "1234";


try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
    
<% HttpSession se = request.getSession(true);
	String str = se.getAttribute("username").toString();
	String str1 = se.getAttribute("username1").toString();
%>
    
    
    
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Profile</title>
    <link rel="stylesheet" href="./styles/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
  	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
  </head>
  <body>
  	
  	
  	<div class="container-fluid text-center bg-light top-header g-0">
	  <div class="main-header row align-items-center d-flex flex-wrap">
	    <div class="col-12 col-lg-2 justify-content-center order-1">
	      <a href="./index.jsp" class="navbar-brand">
	      	<img src="./img/logo.jpg" class="img-fluid" style="width:70px;" alt="...">
	      </a>
	    </div>
	    <div class="col-12 col-lg-7 order-lg-2 order-3 my-3">
	      <form class="d-flex" role="search">
	        <input class="form-control me-2 py-1" type="search" placeholder="Search" aria-label="Search">
	        <button class="btn text-light" style="background:#394339;" type="submit">Search</button>
	      </form>
	    </div>
	    <div class="col-12 col-lg-3 order-lg-3 order-2 d-none d-lg-block">
	    	<div class="row">
		    <div class="col">
		      <a href="./library.jsp"  class="btn" style="background:var(--clr-1); color:var(--clr-5);">
		      	<span>Watch History</span>
		      </a>
		      <a href="./accounts.jsp" class="btn" style="background:var(--clr-1); color:var(--clr-5);">
		      	<span>Sign Out</span>
		      </a>
		    </div>
		  </div>
	    </div>
	  </div>
	  
	</div>
	
	<form class="d-flex" action="delP" method="post">
	        <input class="form-control me-2 py-1" type="text" placeholder="Search" aria-label="Search" style="display:block;" value="<%=str1%>" name="user">
	        <button class="btn text-light" style="background:#394339;" type="submit">Search</button>
	</form>


	<%
	  		
	  		try{
	  			connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
	  			statement=connection.createStatement();
	  			String getSearch = request.getParameter("search");
	  			String sqlQ; 
	  			
	  			
	  			sqlQ ="select * from profile where UserName='"+str1+"'";
	  			
	  			
	  			resultSet = statement.executeQuery(sqlQ);
	  			while(resultSet.next()){
	  				%>
	  				<% String u = resultSet.getString("UserName");%>
	  				<% String f = resultSet.getString("fName");%>
	  				<% String l = resultSet.getString("lName");%>
	  				<% String e = resultSet.getString("email");%>
	  				
	  					<div class="row m-5" style=" display:flex; justify-content:center; margin-left:20rem;">
						  	<div class="col-12 pb-5">
						    	<div class="row pb-5">
						    		<div class="col-6">
						    			<span class="h4" style="color:var(--clr-1);">First Name: <%=resultSet.getString("fName") %></span>
						    		</div>
						    		<div class="col-6">
						    		
						    			<button type="button" class="btn ms-5" style="background:var(--clr-1); color:var(--clr-5);" data-bs-toggle="modal" data-bs-target="#m1">
										  Edit First Name
									  </button>
						    		</div>
						    	</div>
						    	<div class="row pb-5">
						    		<div class="col-6">
						    			<span class="h4" style="color:var(--clr-1);">Last Name: <%=resultSet.getString("lName") %></span>
						    		</div>
						    		<div class="col-6">
						    		
						    			<button type="button" class="btn ms-5" style="background:var(--clr-1); color:var(--clr-5);" data-bs-toggle="modal" data-bs-target="#m2">
										  Edit Last Name
									  </button>
						    		</div>
						    	</div>
						    	<div class="row pb-5">
						    		<div class="col-6">
						    			<span class="h4" style="color:var(--clr-1);">Email: <%=resultSet.getString("email") %></span>
						    		</div>
						    		<div class="col-6">
						    		
						    			<button type="button" class="btn ms-5" style="background:var(--clr-1); color:var(--clr-5);" data-bs-toggle="modal" data-bs-target="#m3">
										  Edit Email
									  </button>
						    		</div>
						    	</div>
						    </div>
					    </div>
	  		
	  			
	

	
	
	<div class="modal fade" id="m1" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h1 class="modal-title fs-5" id="exampleModalLabel">Edit First Name</h1>
	        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      </div>
	      <div class="modal-body">
	        <form action="insertP" method="post">
	        	<div class="mb-3">
				    <input type="text" name="fin" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Add new First Name">
					<input type="text" name="user" value="<%=u%>" style="display:none;">
				</div>
	        	<button type="submit" class="btn text-light" style="background:var(--clr-1)">Edit Comment</button>
	        </form>
	      </div>
	    </div>
	  </div>
	</div>
	
		<div class="modal fade" id="m2" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h1 class="modal-title fs-5" id="exampleModalLabel">Edit Last Name</h1>
	        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      </div>
	      <div class="modal-body">
	        <form action="insertP1" method="post">
	        	<div class="mb-3">
				    <input type="text" name="lin" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Add new First Name">
					<input type="text" name="user" value="<%=u%>" style="display:none;">
				</div>
	        	<button type="submit" class="btn text-light" style="background:var(--clr-1)">Edit Comment</button>
	        </form>
	      </div>
	    </div>
	  </div>
	</div>
	
		<div class="modal fade" id="m3" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h1 class="modal-title fs-5" id="exampleModalLabel">Edit Email</h1>
	        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      </div>
	      <div class="modal-body">
	        <form action="insertP2" method="post">
	        	<div class="mb-3">
				    <input type="text" name="em" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Add new First Name">
					<input type="text" name="user" value="<%=u%>" style="display:none;">
				</div>
	        	<button type="submit" class="btn text-light" style="background:var(--clr-1)">Edit Comment</button>
	        </form>
	      </div>
	    </div>
	  </div>
	</div>
	
	<% 
	  		}
	  		}catch(Exception e){
	  			e.printStackTrace();
	  		}	
	  		%>
	 
	
	<!-- My Videos -->
	<div class="container text-center mt-3 mb-5">
		<h2 style="color:var(--clr-1);">My videos</h2>
		<div id="features" class="container-fluid">
	  	<div class="row">
	  		
	  		<%
	  		
	  		try{
	  			connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
	  			statement=connection.createStatement();
	  			String getSearch = request.getParameter("search");
	  			String sqlQ; 
	  			String user = str1;
	  			sqlQ ="select * from video where UserName='"+user+"'";
	  			
	  			resultSet = statement.executeQuery(sqlQ);
	  			while(resultSet.next()){
	  				%>
	  			
	  		
	  		<div class="col-12 col-md-6 col-lg-3 my-3 mx-3">
	  			<div class="card" style="width: 18rem;">
	  			  <div class="card-img">
				  	<img src="./img/i1.jpg" class="card-img-top" alt="...">
				  	<form action="getvid" method="post">
				  		<input type="text" name="vid" style="display:none;" value="<%=resultSet.getInt("idvideo")%>">
				  		<input type="text" name="wTime" style="display:none;" value="ht" id="getDate">
				  		<button type="submit" class="btn play-btn"><i class="bi bi-play-circle"></i></button>
				  	</form>
				  	
				  </div>
				  <div class="card-body">
				    <h5 class="card-title"><%=resultSet.getString("vname")%></h5>
				    <p class="card-text"><%=resultSet.getString("description")%></p>
				  </div>
				</div>
	  		</div>
	  		
	  		<% 
	  		}
	  		}catch(Exception e){
	  			e.printStackTrace();
	  		}	
	  		%>
	  </div>
	  
	</div>
	
	</div>
	
	<div class="col-12 pb-5">
	    	<div class="row">
	    		
	    		<div class="col-6">
	    			<button type="button" class="btn ms-5" style="background:var(--clr-1); color:var(--clr-5);" data-bs-toggle="modal" data-bs-target="#uploadVideo">
						  Upload Video
					  </button>
	    		</div>
	    	</div>
	    </div>
	
	  	
	
	
  	
	
			
	
	
	<footer style="background:var(--clr-1);" class="text-center py-4">
		<a href="#" class="btn text-light">@watchita</a>
	</footer>
	
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
  	<script src="../JS/script.js"></script>
  	<script>
	  		  	
	  	function getVideo(file1, file2){
	  		localStorage.setItem('vidURL', file1);
	  		localStorage.setItem('downURL', file2);
	  		
	  		window.location.href = "./videoPlayer.jsp";
	  	}
  	</script>
  </body>
</html>