<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .content {
            order: 1;
            text-align: center;
        }
        .login-container-wrapper {
            order: 2;
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        .login-container {
            background-color: #f9f9f9;
            padding: 30px;
            border-radius: 5px;
            border: 2px solid #ccc;
            box-shadow: 3px 3px 5px #888888;
            width: 250px;
            text-align: center;
        }
        .login-container h2 {
            margin-bottom: 15px;
            color: #333333;
            font-size: 20px;
        }
        .login-container input[type="text"],
        .login-container input[type="password"],
        .login-container input[type="submit"] {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
            font-size: 14px;
        }
        .login-container input[type="submit"] {
            cursor: pointer;
        }
        .buttons {
            margin-top: 20px;
            display: flex;
            justify-content: space-between;
            width: 120%;
        }
        .buttons button {
            padding: 8px 20px;
            border: 1px solid #ccc;
            border-radius: 3px;
            font-size: 14px;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <div class="content">
        <h1>Alcohol man</h1>
        <p>주류 회사 홈페이지 사진</p>
    </div>
    <div class="login-container-wrapper">
        <div class="login-container">
            <h2>로그인</h2>
            <form action="loginProcess.jsp" method="post">
                <input type="text" placeholder="ID" id="id" name="id"><br>
                <input type="password" placeholder="PASSWORD" id="password" name="password"><br>
                <input type="submit" value="로그인">
            </form>
        </div>
        
        <div class="buttons">
            <button onclick="location.href='insertForm.jsp'">회원가입</button>
            <button onclick="location.href='list.jsp'">ID/PASSWORD 찾기</button>
            <button>주문조회</button>
        </div>
    </div>
</body>
</html>