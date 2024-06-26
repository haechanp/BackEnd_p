<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Alcoho Man</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <link rel="stylesheet" href="styles/alcoho_man.css">
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <style>
        .card {
            max-width: 250px;
            margin-bottom: 20px;
            height: 100%;
        }
        .card-body {
            padding: 10px;
            text-align: center;
        }
        .empty-card {
            max-width: 250px;
            margin-bottom: 20px;
            height: 100%;
            background-color: #f8f9fa;
            border: 1px solid #ced4da;
        }
        .empty-card .card-body {
            padding: 10px;
            text-align: center;
        }
    </style>
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
                <a class="nav-link" href="#">홈 <span class="sr-only">(현재)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">로그아웃</a>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    목록
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="#">리큐어</a>
                    <a class="dropdown-item" href="#">위스키</a>
                    <a class="dropdown-item" href="#">코냑</a>
                    <a class="dropdown-item" href="#">브랜디</a>
                    <a class="dropdown-item" href="#">위스키</a>   
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="#">다른 항목</a>
                </div>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="alcoho_man_p.html" id="customerServiceLink">고객센터</a>                
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">
                    <i class="fas fa-id-card"></i>
                </a>
            </li>
            
        </ul>
        <form class="form-inline my-2 my-lg-0">
            <input class="form-control mr-sm-2" type="search" placeholder="검색" aria-label="검색">
            <button class="btn btn-secondary" type="submit">검색</button>
        </form>
    </div>
</nav>

<!-- 컨텐츠 영역 시작 -->
<div class="container mt-5">
    <!-- 제품 목록 -->
    <div class="row">
        <%
            // 데이터베이스 연결 정보
            String jdbcUrl = "jdbc:mariadb://localhost:3306/alcohol_store";
            String dbUser = "alcohoMan";
            String dbPassword = "1111";

            // 데이터베이스 연결 변수
            Connection conn = null;
            PreparedStatement stmt = null;
            ResultSet rs = null;

            try {
                // JDBC 드라이버 로드
                Class.forName("org.mariadb.jdbc.Driver");

                // 데이터베이스 연결
                conn = DriverManager.getConnection(jdbcUrl, dbUser, dbPassword);

                // SQL 쿼리 준비
                String query = "SELECT id, name, category, alcohol_content, price, description, image_url FROM products";
                stmt = conn.prepareStatement(query);

                // 쿼리 실행 및 결과 가져오기
                rs = stmt.executeQuery();

                // 제품 카드 출력
                while (rs.next()) {
                    int productId = rs.getInt("id");
                    String productName = rs.getString("name");
                    int productPrice = rs.getInt("price");
                    String imageUrl = rs.getString("image_url");

                    // 상세 페이지 URL 설정
                    String detailPage = "alcoho_man_Product.jsp";
        %>
        <div class="col-md-4 mb-4">
            <div class="card">
                <a href="<%= detailPage %>?id=<%= productId %>">
                    <img src="<%= imageUrl %>" class="card-img-top" alt="<%= productName %>">
                </a>
                <div class="card-body">
                    <h5 class="card-title"><%= productName %></h5>
                    <p class="card-text">₩<%= productPrice %></p>
                    <button class="btn btn-primary add-to-cart" data-name="<%= productName %>" data-price="<%= productPrice %>">장바구니에 추가</button>
                </div>
            </div>
        </div>
        <%
                } // while 루프 종료
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                // 리소스 해제
                if (rs != null) rs.close();
                if (stmt != null) stmt.close();
                if (conn != null) conn.close();
            }
        %>
    </div>
</div>
<!-- 컨텐츠 영역 끝 -->

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

</body>
</html>
