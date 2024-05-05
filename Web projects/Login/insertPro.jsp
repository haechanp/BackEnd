<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import ="java.sql.*" %>
    
<%	
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String pwd = request.getParameter("pwd");
	
	Class.forName("org.mariadb.jdbc.Driver");
	
	String url = "jdbc:mariadb://localhost:3306/jspdb";
	String username = "jsp";
	String password = "1111";
	Connection conn = DriverManager.getConnection(url, username, password);
	
	String sql = "insert into BYGlogin(id, name, pwd) VALUES (?, ?, ?)";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, id);
	pstmt.setString(2, name);
	pstmt.setString(3, pwd);
	
	int rowsAffected = pstmt.executeUpdate();
	
	pstmt.close();
	conn.close();
	
	response.sendRedirect("list.jsp");
%>
