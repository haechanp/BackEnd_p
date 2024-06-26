<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<!doctype html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

    <title>Alcoho Man</title>

    <link rel="stylesheet" href="styles/alcoho_man.css">
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>

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
            <input class="form-control mr-sm-2" type="search" placeholder="검색" aria-label="검색">
            <button class="btn btn-secondary" type="submit">검색</button>
        </form>
    </div>
</nav>

<div class="container mt-4">
    <h1 class="display-4">장바구니</h1>
    <p class="lead">선택한 상품</p>

    <div class="row">
        <!-- 상품 목록 -->
        <div class="col-md-8">
            <h3>상품 목록</h3>
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

                    // 첫 번째 상품 출력
                    if (rs.next()) {
                        %>
                        <div class="card mb-3">
                            <div class="row no-gutters">
                                <div class="col-md-4">
                                    <img src="<%= rs.getString("image_url") %>" class="card-img" alt="<%= rs.getString("name") %>">
                                </div>
                                <div class="col-md-8">
                                    <div class="card-body">
                                        <h5 class="card-title"><%= rs.getString("name") %></h5>
                                        <p class="card-text">₩<%= rs.getDouble("price") %></p>
                                        <button class="btn btn-primary add-to-cart" data-name="<%= rs.getString("name") %>" data-price="<%= rs.getDouble("price") %>">장바구니에 추가</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%
                    }

                    // 두 번째 상품 출력
                    if (rs.next()) {
                        %>
                        <div class="card mb-3">
                            <div class="row no-gutters">
                                <div class="col-md-4">
                                    <img src="<%= rs.getString("image_url") %>" class="card-img" alt="<%= rs.getString("name") %>">
                                </div>
                                <div class="col-md-8">
                                    <div class="card-body">
                                        <h5 class="card-title"><%= rs.getString("name") %></h5>
                                        <p class="card-text">₩<%= rs.getDouble("price") %></p>
                                        <button class="btn btn-primary add-to-cart" data-name="<%= rs.getString("name") %>" data-price="<%= rs.getDouble("price") %>">장바구니에 추가</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%
                    }
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

        <!-- 장바구니 -->
        <div class="col-md-4">
            <h3>장바구니</h3>
            <ul class="list-group" id="cart-items">
                <!-- 장바구니 항목이 동적으로 추가됩니다 -->
            </ul>
            <h4 class="mt-3">총 합계: ₩<span id="total-price">0</span></h4>
            <button class="btn btn-success mt-3" id="checkout-button">결제하기</button>
        </div>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

<script>
    $(document).ready(function(){
        // 장바구니에 아이템 추가
        $('.add-to-cart').on('click', function(){
            var name = $(this).data('name');
            var price = parseFloat($(this).data('price'));
            
            var item = $('<li class="list-group-item d-flex justify-content-between align-items-center">')
                .text(name + " - ₩" + price.toLocaleString())
                .append('<span class="badge badge-primary badge-pill remove-item" style="cursor: pointer;">&times;</span>')
                .data('price', price);
            
            $('#cart-items').append(item);
            updateTotalPrice();
        });

        // 장바구니에서 아이템 제거
        $('#cart-items').on('click', '.remove-item', function(){
            $(this).parent().remove();
            updateTotalPrice();
        });

        // 총 가격 업데이트
        function updateTotalPrice(){
            var total = 0;
            $('#cart-items .list-group-item').each(function(){
                total += $(this).data('price');
            });
            $('#total-price').text(total.toLocaleString());
        }

        // 결제 버튼 클릭
        $('#checkout-button').on('click', function(){
            alert('결제 기능은 아직 구현되지 않았습니다.');
        });
    });
</script>

</body>
</html>
