<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>술 상세 페이지</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <link rel="stylesheet" href="styles/alcoho_man.css">
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <style>
        .product-img {
            max-width: 100%;
            height: auto;
        }
        .product-details {
            padding: 20px;
        }
        .product-name {
            font-size: 24px;
            font-weight: bold;
        }
        .product-category {
            font-style: italic;
        }
        .product-info {
            margin-top: 20px;
        }
        .product-info p {
            margin-bottom: 10px;
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
                <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Logout</a>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    List
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="#">Liqueur</a>
                    <a class="dropdown-item" href="#">Whiskey</a>
                    <a class="dropdown-item" href="#">Cognac</a>
                    <a class="dropdown-item" href="#">Liqueur</a>
                    <a class="dropdown-item" href="#">Whiskey</a>
                    <a class="dropdown-item" href="#">Cognac</a>
                    <a class="dropdown-item" href="#">Brandy</a>
                    <a class="dropdown-item" href="#">Whiskey</a>   
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="#">Something else here</a>
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
            <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-secondary" type="submit">Search</button>
        </form>
    </div>
</nav>

<div class="container mt-5">
    <div class="row">
        <!-- 데이터베이스 연결 및 이미지 URL 가져오기 -->
        <%
            // 클라이언트에서 전달받은 제품 ID
            int productId = Integer.parseInt(request.getParameter("id"));

            // 데이터베이스 연결 정보
            String jdbcUrl = "jdbc:mariadb://localhost:3306/alcohol_store";
            String dbUser = "alcohoMan";
            String dbPassword = "1111";

            // 데이터베이스 연결 변수
            Connection conn = null;
            PreparedStatement stmt = null;
            ResultSet rs = null;

            // 제품 정보 변수 초기화
            String productName = "";
            String category = "";
            double alcoholContent = 0.0;
            int productPrice = 0;
            String description = "";
            String imageUrl = "";

            try {
                // JDBC 드라이버 로드
                Class.forName("org.mariadb.jdbc.Driver");

                // 데이터베이스 연결
                conn = DriverManager.getConnection(jdbcUrl, dbUser, dbPassword);

                // SQL 쿼리 준비 (제품 ID에 해당하는 제품 정보 조회)
                String query = "SELECT name, category, alcohol_content, price, description, image_url FROM products WHERE id = ?";
                stmt = conn.prepareStatement(query);
                stmt.setInt(1, productId);

                // 쿼리 실행 및 결과 가져오기
                rs = stmt.executeQuery();

                // 결과가 있으면 변수에 저장
                if (rs.next()) {
                    productName = rs.getString("name");
                    category = rs.getString("category");
                    alcoholContent = rs.getDouble("alcohol_content");
                    productPrice = rs.getInt("price");
                    description = rs.getString("description");
                    imageUrl = rs.getString("image_url");
                }
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                // 리소스 해제
                if (rs != null) try { rs.close(); } catch (Exception e) { e.printStackTrace(); }
                if (stmt != null) try { stmt.close(); } catch (Exception e) { e.printStackTrace(); }
                if (conn != null) try { conn.close(); } catch (Exception e) { e.printStackTrace(); }
            }
        %>

        <!-- 이미지 섹션 -->
        <div class="col-md-6">
            <img src="<%= imageUrl %>" class="product-img" alt="Product Image">
        </div>
        <!-- 정보 섹션 -->
        <div class="col-md-6 product-details">
            <h2 class="product-name"><%= productName %></h2>
            <p class="product-category"><%= category %></p>
            <p><strong>알코올 함량:</strong> <%= alcoholContent %> %</p>
            <p><strong>가격:</strong> ₩<%= productPrice %></p>
            <div class="mb-3">
                <button class="btn btn-primary mb-2">장바구니</button>
                <button class="btn btn-secondary mb-2">바로구매</button>
            </div>
            <p class="product-info"><%= description %></p>
        </div>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

</body>
</html>
