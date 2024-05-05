<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<%
    Class.forName("org.mariadb.jdbc.Driver");

    String url = "jdbc:mariadb://localhost:3306/jspdb";
    String username = "jsp";
    String password = "1111";
    Connection conn = DriverManager.getConnection(url, username, password);

    Statement stmt = conn.createStatement();
    ResultSet rs = stmt.executeQuery("SELECT * FROM BYGlogin");
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>사용자 목록</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>
    <div class="container"><br>
        <h1 class="text-center font-weight-bold">사용자 정보</h1><br>
        <table class="table table-hover">
            <tr>
                <th>아이디</th>
                <th>이름</th>
                <th>비밀번호</th>
            </tr>
            <% while(rs.next()) { %>
            <tr>
                <td><%= rs.getString("id") %></td>
                <td><%= rs.getString("name") %></td>
                <td><%= rs.getString("pwd") %></td>
            </tr>
            <% } %>
        </table>
    </div>
</body>
</html>
