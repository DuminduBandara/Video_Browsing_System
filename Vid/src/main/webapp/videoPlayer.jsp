<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.script.*"%>
<%@page import="java.util.List"%>
<%@page import="com.videoCtrl.Vid1"%>

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
<%@ page import="java.sql.*" %>

<% List vid = (List)request.getAttribute("vids"); %>

<% HttpSession se = request.getSession(true);
	String str = se.getAttribute("username").toString();
	String str1 = se.getAttribute("username1").toString();
%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Video Player</title>
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
		      <a href="./watchHistory.jsp" target="_blank" class="btn" style="background:var(--clr-1); color:var(--clr-5);">
		      	<i class="bi bi-collection"></i>
		      	<span>Library</span>
		      </a>
		    </div>
		    <div class="col">
		      <a href="./accounts.jsp" target="_blank" class="btn" style="background:var(--clr-1); color:var(--clr-5);">
		      	<span><%=str%></span>
		      </a>
		    </div>
		  </div>
	    </div>
	  </div>
	  
	</div>
	
	<div class="container-fluid w-100">
	
		
	
		<% Vid1 vid1 = (Vid1)vid.get(0); %>
		
		
	

	  	<div class="videoPlayer">
			<video width="100%" height="500px" controls autoplay id="myVideo">
				<source src="<%=vid1.getVideo()%>" type="video/mp4">
			</video>				
		</div>
		<div class="row px-3">
		    <div class="col-12 col-md-8">
		      <h4 id="vidtitle"><%=vid1.getVname()%></h4>
		      <h5 class="fs-6">
		      	<span>123 views.</span>
		      	<span><%=vid1.getDate()%></span>
		      </h5>
		    </div>
		    <div class="col-12 col-md-4 d-flex">
		      <div class="d-flex align-items-center">
		      	<form action="getLike" method="post">
		      	<button type="button" class="btn fs-3 likeBtn">
		      		<i class="bi bi-hand-thumbs-up" id="likeBtn"></i>
		      	</button>
		      	<span class="fs-5" id="likeCount">12</span>
		      	</form>
		      </div>
		      <div class="d-flex align-items-center">
		      	<button type="button" class="btn fs-3 dislikeBtn">
		      		<i class="bi bi-hand-thumbs-down"></i>
		      	</button>
		      	<span class="fs-5" id="dislikeCount">5</span>
		      </div>
		      <div class="d-flex align-items-center">
		      	<a href="" class="btn" id="downBtn">
		      		<i class="bi bi-arrow-down-circle-fill"></i>
		      		<span class="fs-5">Download</span>
		      	</a>
		      </div>
		      <div class="d-flex align-items-center">
		      	<button type="button" class="btn">
		      		<i class="bi bi-plus-circle-fill"></i>
		      		<span class="fs-5">Save</span>
		      	</button>
		      </div>
		    </div>
		</div>
		
		<div class="w-100 my-3" style="background:var(--clr-1); height:2px;"></div>
		
		<a href="./profile.jsp" class="btn fs-5 d-flex align-items-center px-3" onload="call()">
			<i class="bi bi-person-circle fs-2"></i>
			
			<%
				try{			
				connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
  				statement=connection.createStatement();
  				String name = vid1.getUser();%><%
  				
  	 				
  				
  				String sql = "select * from profile where UserName='"+name+"'";
  				resultSet = statement.executeQuery(sql);
	  			while(resultSet.next()){
	  			%>
	  			
	  				<span class="ps-2" ><%=resultSet.getString(2)%> <%=resultSet.getString("lName")%></span>
	  			<%
	  			}	
				}catch(Exception e){
					e.printStackTrace();
				}
	  		%>
			
			
		</a>

		<p class="p-3" id="desc"><%=vid1.getDesc()%></p>
		
		
		<div class="w-100 my-3" style="background:var(--clr-1); height:2px;"></div>
		
		<div class="d-block px-3">
			<h4 id="ccount"></h4>
			
			
			<form class="mb-3" action="insert" method="post">
				<div class="mb-3">
			   		<input type="text" name="comment" class="form-control border-top-0 border-start-0 border-end-0 border-bottom-1 cin" placeholder="Add a comment">
			  		<input type="text" name="vidID" id="vidID" style="display:none;" class="form-control border-top-0 border-start-0 border-end-0 border-bottom-1 cin" placeholder="Add a comment" value="<%=vid1.getVid()%>">
			  		<input type="text" name="userID" id="vidID" style="display:none;" class="form-control border-top-0 border-start-0 border-end-0 border-bottom-1 cin" placeholder="Add a comment" value="<%=str1%>">	
			  	</div>
			  	<input type="submit" class="btn" style="background:var(--clr-1); color:var(--clr-5);" onclick="addc()" value="Comment">
			</form>
			
			<ul id="cList" class="list-group border-0 my-3 w-100">
			
						<%
							try{
								Class.forName("com.mysql.jdbc.Driver");
								Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/video_db","root", "1234");
								int vidid = vid1.getVid();%><%
								String query = "select * from comment where videoID='"+vidid+"'";
								PreparedStatement ps = con.prepareStatement(query);
								ResultSet rs = ps.executeQuery(query);
								
								
								while(rs.next()){
								%>
								<li class="list-group-item border-start-0 border-end-0 border-top-0 pb-3 mb-3 d-flex w-100">
									<i class="bi bi-person-circle fs-4"></i>
									<span class="ps-3 fs-5" style="width:70%;"><%= rs.getString("comment")%></span>
									<%
										String user1 = rs.getString("user");
										String user2 = str1;
										int user3 = rs.getInt("commentID");
										
										
										
										if(user1.equals(user2)){%>
											
											<div class="dropdown w-100 ms-5" style="right:-40rem;">
											  <button class="btn btn-secondary dropdown-toggle" style="background:var(--clr-1);"type="button" data-bs-toggle="dropdown" aria-expanded="false"></button>
											  <div class="dropdown-menu p-3">
											    
											    	<button type="button" class="btn text-light mb-3" style="background:var(--clr-1); width:10rem;" data-bs-toggle="modal" data-bs-target="#exampleModal">
													  Edit comment
													</button>
											    	<form action="deleteComment" method="post">
											    		<input type="text" name="commentCD" value="<%=user3%>" style="display:none;">
														<input type="text" name="userND" value="<%=user2%>" style="display:none;">
														<button type="submit" class="btn text-light bg-danger" style="width:10rem;" data-bs-toggle="modal" data-bs-target="#">
														  Delete comment
														</button>
													</form>
											  </div>
											</div>
											
											
											
											
											
											<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
											  <div class="modal-dialog">
											    <div class="modal-content">
											      <div class="modal-header">
											        <h1 class="modal-title fs-5" id="exampleModalLabel">Edit Comment</h1>
											        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
											      </div>
											      <div class="modal-body">
											      	<form action="updateComment" method="post">
											        	<div class="mb-3">
														    <input type="text" name="commentE" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Add new comment">
															<input type="text" name="userC" value="<%=user2%>" style="display:none;">
															<input type="text" name="commentC" value="<%=user3%>" style="display:none;">
														</div>
											        	<button type="submit" class="btn text-light" style="background:var(--clr-1)">Edit Comment</button>
											        </form>
											      </div>
											    </div>
											  </div>
											</div>
											
										<%}
										
									%>
									
								</li>
								<% }
							}catch(Exception e){
								
							}
						%>
						</ul>
			
					
				
			
		</div>
		
	</div>
	
			
	
	
	<footer style="background:var(--clr-1);" class="text-center py-4">
		<a href="#" class="btn text-light">@watchita</a>
	</footer>
	
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
  	<script src="../JS/script.js"></script>
  	<script src="../JS/reactionCtrl.js"></script>
  	<script>
  	
  		
  		//contorl video
 
  		


  		
  		
  		
  		//control reactions  		
  		let likeBtn = document.querySelector(".likeBtn");
  		let likeIcon = likeBtn.querySelector(".bi-hand-thumbs-up");
  		let dislikeBtn = document.querySelector(".dislikeBtn");
  		let dislikeIcon = dislikeBtn.querySelector(".bi-hand-thumbs-down");
  		let likeCount = document.getElementById("likeCount");
  		let dislikeCount = document.getElementById("dislikeCount");
  		
  		likeBtn.onclick = function(){
  			if(likeIcon.classList.contains("bi-hand-thumbs-up")){
  				likeIcon.classList.replace("bi-hand-thumbs-up", "bi-hand-thumbs-up-fill");
  				likeCount.textContent = Number(likeCount.innerHTML) + 1;
  				
  				if(dislikeIcon.classList.contains("bi-hand-thumbs-down-fill")){
  					dislikeIcon.classList.replace("bi-hand-thumbs-down-fill", "bi-hand-thumbs-down");
  					dislikeCount.textContent = Number(dislikeCount.innerHTML) - 1;
  				}
  			}
  			else{
  				likeIcon.classList.replace("bi-hand-thumbs-up-fill", "bi-hand-thumbs-up");
  				likeCount.textContent = Number(likeCount.innerHTML) - 1 ;
  			}
  		}
  		
  		dislikeBtn.onclick = function(){
  			if(dislikeIcon.classList.contains("bi-hand-thumbs-down")){
  				dislikeIcon.classList.replace("bi-hand-thumbs-down", "bi-hand-thumbs-down-fill");
  				dislikeCount.textContent = Number(dislikeCount.innerHTML) + 1;
  				
  				if(likeIcon.classList.contains("bi-hand-thumbs-up-fill")){
  					likeIcon.classList.replace("bi-hand-thumbs-up-fill", "bi-hand-thumbs-up");
  					likeCount.textContent = Number(likeCount.innerHTML) - 1 ;
  				}
  			}
  			else{
  				dislikeIcon.classList.replace("bi-hand-thumbs-down-fill", "bi-hand-thumbs-down");
  				dislikeCount.textContent = Number(dislikeCount.innerHTML) - 1;
  			}
  		}
  		
  		
  		
  		
  		
  	</script>
  	
  </body>
</html>