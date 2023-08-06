<%@page import="com.videoCtrl.VideoInheritance"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.script.*"%>
<%@page import="java.util.List"%>
<%@page import="com.videoCtrl.Vid1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% HttpSession se = request.getSession(true);
	List vid = (List)se.getAttribute("hisDis");

%>

	
	

</body>
</html>