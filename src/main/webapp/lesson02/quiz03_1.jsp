<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String height = request.getParameter("height");
	String weight = request.getParameter("weight");
	int h = Integer.parseInt("height");
	int w = Integer.parseInt("weight");
	if(w / ((h / 100.0) * (h / 100.0)) <= 20) {
		out.print("<h1>BMI 측정 결과</h1><br> <h1>당신은 저체중입니다</h1>");
	}
	%>
</body>
</html>