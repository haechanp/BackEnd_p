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
	Connection con = DriverManager.getConnection(url, username, pwd);

    //3. 생성된 연결을 통해 SQL문 실행 의뢰 준비
    String sql = "UPDATE member SET email=?, password=?, name=?, dateOfBirth=?, address=?, detailedAddress=?, phoneNumber=? WHERE id=?";
    PreparedStatement pstmt = con.prepareStatement(sql);
    
    pstmt.setString(1, id);
	pstmt.setString(2, email);
	pstmt.setString(3, password);
	pstmt.setString(4, name);
	pstmt.setString(5, dateOfBirth);
	pstmt.setString(6, address);
	pstmt.setString(7, detailedAddress);
	pstmt.setString(8, phoneNumber);
	
    //4. SQL 실행
    int i = pstmt.executeUpdate();
    
    //5. 객체 해제
    pstmt.close();
    con.close();
%>

<script>
    let ans = alert("변경되었습니다!");
    if (!ans){
        location.href='list.jsp';
    }
</script>




