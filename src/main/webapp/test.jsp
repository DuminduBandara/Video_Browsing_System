<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
  <%@page import="java.util.ArrayList"%>
<%@page import="com.videoCtrl.Video"%>

<%@page isErrorPage="true"%>

<% ArrayList videoRecord = (ArrayList)request.getAttribute("videoRecord"); %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%= exception %>	
	
	
</body>
</html>