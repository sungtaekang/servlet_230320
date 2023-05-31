<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz01</title>
</head>
<body>
	<%!
	
	// 1) 합계
	// input(n) , output(합계)
	public int getSum(int n) {
		int sum = 0;
		for(int i = 1; i <= n; i++) {
			sum += i;
		}
		return sum;
	}
	%>
	
	<h2>1부터 50까지의 합은 <%= getSum(50) %> 입니다.</h2>
	<br>
	
	
	<%
	 int[] scores = {80, 90, 100, 95, 80};
	 int sum = 0;
	 for(int i= 0; i < scores.length; i++) {
		sum += scores[i];
	 }
	 double average = (double)sum / scores.length; 
	 %>
	
	<h2>평균 점수는 <%= average %> 입니다.</h2>
	<br>
	
	
	<%
		List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
			int score = 0;
		for (int i = 0; i < scoreList.size(); i++) {
			if(scoreList.get(i).equals("O")) {
				score += 10;
			}
		}
	%>
	<h2>채점결과는 <%= score %>점 입니다.</h2>
	<br>
	
	
	<%
	String birthDay = "20010820";
	
	String year = birthDay.substring(0, 4);
	int y = Integer.parseInt(year);
	int age = 0;
	// int age = 2023 - Interger.parseInt(year);
	%>
	
	<h2><%= birthDay %>의 나이는 <%= age = (2023 - y)%>세 입니다.</h2>
</body>
</html>