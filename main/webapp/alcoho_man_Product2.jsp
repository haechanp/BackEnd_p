<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!doctype html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <link rel="stylesheet" href="styles/alcoho_man.css">
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <title>술 상세 페이지</title>
    <style>
        .custom-button {
            background-color: #f0f0f0;
            border: 1px solid #ccc;
            text-align: center;
            padding: 20px;
            margin: 10px 0;
            font-size: 18px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        .custom-button:hover {
            background-color: #e0e0e0;
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
                    list
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="#">liqueur</a>
                    <a class="dropdown-item" href="#">Whiskey</a>
                    <a class="dropdown-item" href="#">Cognac</a>
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
            // 데이터베이스 연결 정보
            String jdbcUrl = "jdbc:mariadb://localhost:3306/alcohol_store";
            String dbUser = "alcohoMan";
            String dbPassword = "1111";

            // 데이터베이스 연결 변수
            Connection conn = null;
            PreparedStatement stmt = null;
            ResultSet rs = null;

            String imageUrl = "";

            try {
                // JDBC 드라이버 로드
                Class.forName("org.mariadb.jdbc.Driver");

                // 데이터베이스 연결
                conn = DriverManager.getConnection(jdbcUrl, dbUser, dbPassword);

                // SQL 쿼리 준비
                String query = "SELECT image_url FROM products ORDER BY id LIMIT 1, 1";
                stmt = conn.prepareStatement(query);

                // 쿼리 실행 및 결과 가져오기
                rs = stmt.executeQuery();

                if (rs.next()) {
                    imageUrl = rs.getString("image_url");
                }
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                if (rs != null) try { rs.close(); } catch (Exception e) { e.printStackTrace(); }
                if (stmt != null) try { stmt.close(); } catch (Exception e) { e.printStackTrace(); }
                if (conn != null) try { conn.close(); } catch (Exception e) { e.printStackTrace(); }
            }
        %>

        <!-- 이미지 섹션 -->
        <div class="col-md-6">
            <img src="<%= imageUrl %>" class="img-fluid" alt="Product Image">
        </div>
        <!-- 정보 섹션 -->
        <div class="col-md-6">
            <h2 class="productname">malibu</h2>
            <p class="productname2">liqueur</p>
            <p><strong>알코올 함량:</strong> 21%</p>
            <p><strong>가격:</strong> 32,000원</p>
            <div>
                <button class="btn btn-primary mb-2">장바구니</button>
                <button class="btn btn-secondary mb-2">바로구매</button>
            </div>
            <p class="seconddetail mt-3"> 말리부(Malibu)는 럼(Rum)을 베이스로 한 리큐르(Liqueur)이다.
                럼은 1600년대 중반부터 카리브 지역의 바베이도스에서 만들어지기 시작했는데, 사탕수수를 이용하여 발효, 증류, 숙성시켜 만들어진다. 말리부(Malibu)는 바로 이 Rum의 발생지라 할 수 있는 바베이도스 지역에서 생산되는 최상급 럼만을 사용하여 코코넛과 당분을 첨가하여 Blending되어 만들어진다.
                 그래서 말리부의 라벨에는 “Caribbean White Rum with Coconut”이라고 표기되어 있는데 이것이 바로 말리부가 어떤 제품인지를 보여주는 것이다</p>
        </div>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

</body>
</html>
