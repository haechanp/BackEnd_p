<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*" %>
<% 	

    String id = request.getParameter("id");
    
    Class.forName("org.mariadb.jdbc.Driver");
    String url ="jdbc:mariadb://localhost:3306/alcohoMan";
    String user ="alcohoMan";
    String pwd ="1111";
    Connection con = DriverManager.getConnection(url, user, pwd);
    
  
    String sql = "SELECT * FROM member WHERE id=?";
    PreparedStatement pstmt = con.prepareStatement(sql);
    pstmt.setString(1, id);
    ResultSet rs = pstmt.executeQuery();
    String email = "";
    String password = "";
    String name = "";
    String dateOfBirth = "";
    String address = "";
    String detailedAddress = "";
    String phoneNumber = "";
    if(rs.next()) {
        email = rs.getString("name");
        password = rs.getString("password");
        name = rs.getString("name");
        dateOfBirth = rs.getString("dateOfBirth");
        address = rs.getString("address");
        detailedAddress = rs.getString("detailedAddress");
        phoneNumber = rs.getString("phoneNumber");
    }
%>	
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>사용자 정보 변경</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>

    <div class="container">
        <br>
        <h2 class="text-center font-weight-bold">사용자 정보 변경</h2>
        <hr/>
        <form action="updatePro.jsp" method="post">
          <div class="form-group">
            <label for="id">아이디:</label>
            <input type="text" class="form-control" id="id" name="id" value="<%= id %>" readonly>
          </div>
          <div class="form-group">
				<label for="email">이메일:</label>
				<input type="text" class="form-control" id="email" name="email" value="<%= email %>">
			</div>
			<div class="form-group">
				<label for="password">비밀번호:</label>
				<input type="password" class="form-control" id="password" name="password" value="<%= password %>">
			</div>
			<div class="form-group">
				<label for="passwordCheck">비밀번호 확인:</label>
				<input type="password" class="form-control" id="passwordCheck" name="passwordCheck" value="<%= password %>">
			</div>
			<div class="form-group">
				<label for="name">이름:</label>
				<input type="text" class="form-control" id="name" name="name" value="<%= name %>">
			</div>
			<div class="form-group">
				<label for="date">생년월일:</label>
				<input type="text" class="form-control" id="dateOfBirth" name="dateOfBirth" placeholder="yyyy-mm-dd" value="<%= dateOfBirth %>">
			</div>
			<div class="form-group">
				<label for="address">주소:</label>
				<input type="text" class="form-control" id="address" name="address" value="<%= address %>">
			</div>
			<div class="form-group">
				<label for="detailedAddress">상세주소:</label>
				<input type="text" class="form-control" id="detailedAddress" name="detailedAddress" value="<%= detailedAddress %>">
			</div>
			<div class="form-group">
				<label for="phoneNumber">전화번호:</label>
				<input type="text" class="form-control" id="phoneNumber" name="phoneNumber" placeholder="010-xxxx-xxxx" value="<%= phoneNumber %>">
			</div>
          <br>
          <div class="text-center">
                    <input type="submit" value="변경" class="btn btn-secondary">  
                    <input type="button" value="삭제" class="btn btn-secondary" onclick="location.href='delete.jsp'">
                    <input type="button" value="목록" class="btn btn-secondary" onclick="location.href='list.jsp'">
            </div>
        </form>
    </div>
</body>
</html>
