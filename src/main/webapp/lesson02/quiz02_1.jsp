<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz02_1</title>
</head>
<body>
	<%
	String type = request.getParameter("type");
	
	Date now = new Date();  	// zonedDateTime 추천
	SimpleDateFormat sdf = new SimpleDateFormat("현재 시간은 HH시 mm분 ss초 입니다.");
	
	Date today = new Date();
	SimpleDateFormat sdF = new SimpleDateFormat("현재 날짜는 yyyy년 MM월 dd일 입니다.");
	
	if (type.equals("current_time")) {
		out.print("<h1>현재 시간은 " + sdf.format(now) + "</h1>");		
	 } else {
		out.print("<h1>현재 날짜는 " + sdF.format(today) + "</h1>");
	 }
	%>
	
</body>
</html>