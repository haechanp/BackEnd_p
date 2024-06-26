<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*, java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <title>Submit Post</title>
</head>
<body>
    <%
    	request.setCharacterEncoding("UTF-8");
        
        String title = request.getParameter("title");
    	String author = request.getParameter("id");
        String content = request.getParameter("content");
        
        String url = "jdbc:mariadb://localhost:3306/alcohoMan";
		String username = "alcohoMan";
		String pwd = "1111";
        
        Connection connection = null;
        PreparedStatement pstatement = null;
        
        Class.forName("org.mariadb.jdbc.Driver");
        
        connection = DriverManager.getConnection(url, username, pwd);
        
        String sql = "INSERT INTO board (title, author, content) VALUES (?, ?, ?)";
        pstatement = connection.prepareStatement(sql);
        pstatement.setString(1, title);
        pstatement.setString(2, "id");
        pstatement.setString(3, content);
        
        int rowsInserted = pstatement.executeUpdate();
        if (rowsInserted > 0) {
            response.sendRedirect("alcoho_man_board.jsp");
        }
        
        pstatement.close();
        connection.close();
    %>
</body>
</html>



