<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    String kor = request.getParameter("kor");
    String eng = request.getParameter("eng");
    String math = request.getParameter("math");
    
    out.println("국어: " + kor + "점<br>");
    out.println("영어: " + eng + "점<br>");
    out.println("수학: " + math + "점<br>");
    
    int total = Integer.parseInt(kor) + Integer.parseInt(eng) + Integer.parseInt(math);
    out.println("<br>총 점수: " + total + "점");
%>	
</body>
</html>