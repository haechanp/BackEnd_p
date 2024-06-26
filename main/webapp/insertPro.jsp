<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import ="java.sql.*" %>
    
<%	
    request.setCharacterEncoding("UTF-8");

    String id = request.getParameter("id");
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    String name = request.getParameter("name");
    String dateOfBirth = request.getParameter("dateOfBirth");
    String passwordCheck = request.getParameter("passwordCheck");
    String address = request.getParameter("address");
    String detailedAddress = request.getParameter("detailedAddress");
    String phoneNumber = request.getParameter("phoneNumber");
    
    Class.forName("org.mariadb.jdbc.Driver");
    
    String url = "jdbc:mariadb://localhost:3306/alcohoMan";
    String username = "alcohoMan";
    String pwd = "1111";
    Connection conn = DriverManager.getConnection(url, username, pwd);
    
    String checkEmailSQL = "SELECT COUNT(*) FROM member WHERE email = ?";
    PreparedStatement checkStmt = conn.prepareStatement(checkEmailSQL);
    checkStmt.setString(1, email);
    ResultSet rs = checkStmt.executeQuery();
    if (rs.next() && rs.getInt(1) > 0) {
        response.setContentType("text/html; charset=UTF-8");
        response.getWriter().println("<script>alert('이미 존재하는 이메일입니다.'); history.back();</script>");
    } else {
        String sql = "insert into member(id, email, password, name, dateOfBirth, address, detailedAddress, phoneNumber) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
        PreparedStatement pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, id);
        pstmt.setString(2, email);
        pstmt.setString(3, password);
        pstmt.setString(4, name);
        pstmt.setString(5, dateOfBirth);
        pstmt.setString(6, address);
        pstmt.setString(7, detailedAddress);
        pstmt.setString(8, phoneNumber);
        
        int result = pstmt.executeUpdate();
        
        pstmt.close();
        conn.close();
        
        response.sendRedirect("list.jsp");
    }
%>
