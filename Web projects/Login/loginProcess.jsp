<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*" %>
<%
    request.setCharacterEncoding("UTF-8");
    

    String id = request.getParameter("id");
    String password = request.getParameter("password");
    
    String url = "jdbc:mariadb://localhost:3306/hae";
    String username = "hae";
    String passwd = "1111";
    
    try {
        Class.forName("org.mariadb.jdbc.Driver");
        Connection conn = DriverManager.getConnection(url, username, passwd);

        String sql = "SELECT * FROM BYGlogin WHERE id=? AND pwd=?";
        PreparedStatement pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, id);
        pstmt.setString(2, password);
        ResultSet rs = pstmt.executeQuery();
        
        if (rs.next()) {
            // 인증 성공
            response.sendRedirect("MainPage.jsp");
        } else {
            // 인증 실패
            response.sendRedirect("BYGlogin.jsp?error=true");
        }

        rs.close();
        pstmt.close();
        conn.close();
    } catch (Exception e) {
        e.printStackTrace();
    }
%>
