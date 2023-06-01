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
		int box = Integer.parseInt(request.getParameter("box"));
		String[] unitArr = request.getParameterValues("unit");
		
		double in = box / 2.54; 
		double yd = box / 91.44;
		double ft = box / 30.48;
		double m = box / 100.0;
		%>
		
		<h1>길이 변환 결과</h1>
		<h2><%= box %>cm</h2>
		<hr>
		
		
		<h2>
			<%
				for (int i = 0; i < unitArr.length; i++) {
					if (unitArr[i].equals("inch")) {
						out.print(in + " in<br>");
						continue;
					}
					if (unitArr[i].equals("yard")) {
						out.print(yd + " yd<br>");
						continue;
					}
					if (unitArr[i].equals("feet")) {
						out.print(ft + " ft<br>");
						continue;
					}
					if (unitArr[i].equals("meter")) {
						out.print(m + " m<br>");
					}
				}
			%>
		</h2>
		
		<!-- 풀이
		<h2>
			<%
			if (unitArr != null) {
				for (String unit : unitArr) {
					if (unit.equals("inch")) {
						out.print(in + "in");
					} else if (unit.equals("yard")) {
						out.print(yd + "yd");
					} else if (unit.equals("feet")) {
						out.print(ft + "ft");
					} else if (unit.equals("meter")) {
						out.print(m + "m");
					}
				}
			}
			%>
		</h2>
		 -->
	
</body>
</html>