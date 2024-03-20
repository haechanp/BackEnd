<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>점수합산</title>
</head>
<body>
<h2>점수입력</h2>
<form action="form02.jsp" method="get">
    국어 :<input type="text" name="kor"><br>
    영어 : <input type="text" name="eng"><br>
    수학 : <input type="text" name="math"><br>
    <input type="submit" value="확인">
    <input type="button" value="취소" onclick="window.location.href='form01.jsp';">
</form>
</body>
</html>