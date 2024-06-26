<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<%
    Class.forName("org.mariadb.jdbc.Driver");

    String url = "jdbc:mariadb://localhost:3306/alcohoMan";
    String username = "alcohoMan";
    String pwd = "1111";
    Connection conn = DriverManager.getConnection(url, username, pwd);

    Statement stmt = conn.createStatement();
    ResultSet rs = stmt.executeQuery("SELECT * FROM board");
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <title>Inquiry Board</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRSGFjfCbzIJVxz8zQ96n7oo044Sjq8b2Y72w&s" width="100"> 
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Logout</a>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    list
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="#">liqueur</a>
                    <a class="dropdown-item" href="#">Whiskey</a>
                    <a class="dropdown-item" href="#">Cognac</a>
                    <a class="dropdown-item" href="#">Brandy</a>
                    <a class="dropdown-item" href="#">Whiskey</a>   
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="#">Something else here</a>
                </div>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="alcoho_man_p.jsp">고객센터</a>                
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">
                    <i class="fas fa-id-card"></i>
                </a>
            </li>
        </ul>
        <form class="form-inline my-2 my-lg-0">
            <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-secondary" type="submit">Search</button>
        </form>
    </div>
</nav>
<div class="container mt-5">
	<div style="display: flex; justify-content: space-between; width: 100%; margin-bottom: 20px;">
		<h2>문의 게시판</h2>
    	<button class="btn btn-primary" onclick="location.href='write_post.jsp'">게시글 작성하기</button>
	</div>
    <table class="table table-striped">
        <thead>
            <tr>
                <th scope="col" style="text-align:center">번호</th>
                <th scope="col" style="text-align:center">제목</th>
                <th scope="col" style="text-align:center">작성자</th>
                <th scope="col" style="text-align:center">작성일</th>
                <th scope="col" style="text-align:center">조회수</th>
                <th scope="col" style="text-align:center">답변 여부</th>
            </tr>
        </thead>
        <tbody>
            <% 
            while (rs.next()) {
                String postNumber = rs.getString("postNumber");
                String title = rs.getString("title");
                String author = rs.getString("author");
                String createdDate = rs.getString("createdDate");
                String views = rs.getString("views");
                String answered = rs.getString("answered");
            %>
            <tr>
                <td style="text-align:center"><a href="updateForm.jsp?id=<%= postNumber %>"><%= postNumber %></a></td>
                <td style="text-align:center"><%= title %></td>
                <td style="text-align:center"><%= author %></td>
                <td style="text-align:center"><%= createdDate %></td>
                <td style="text-align:center"><%= views %></td>
                <td style="text-align:center"><%
                	if (answered.equals("0")) {
                		out.print("O");
                	} else {
                		out.print("X");
                	}
                %></td>
            </tr>
            <% } %>
        </tbody>
    </table>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

</body>
</html>
