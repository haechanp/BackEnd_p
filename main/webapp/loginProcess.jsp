<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*" %>
<%
    request.setCharacterEncoding("UTF-8");
    

    String id = request.getParameter("id");
    String password = request.getParameter("password");
    
    String url = "jdbc:mariadb://localhost:3306/alcohoMan";
    String username = "alcohoMan";
    String pwd = "1111";
    
    try {
        Class.forName("org.mariadb.jdbc.Driver");
        Connection con = DriverManager.getConnection(url, username, pwd);

        String sql = "SELECT * FROM member WHERE id=? AND password=?";
        PreparedStatement pstmt = con.prepareStatement(sql);
        pstmt.setString(1, id);
        pstmt.setString(2, password);
        ResultSet rs = pstmt.executeQuery();
        
        //if (rs.next()) {
            // 인증 성공
            response.sendRedirect("ShopPage.jsp");
        //} else {
            // 인증 실패
            //response.sendRedirect("BYGlogin.jsp?error=true");
        //}

        rs.close();
        pstmt.close();
        con.close();
    } catch (Exception e) {
        e.printStackTrace();
    }
%>
