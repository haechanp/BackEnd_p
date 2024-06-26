<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
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
                <a class="nav-link" href="./index.jsp">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="./BYGlogin.jsp">Login</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="./insertForm.jsp">Sign Up</a>
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
                <a class="nav-link" href="alcoho_man_p.jsp" id="customerServiceLink">고객센터</a>                
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
<div class="jumbotron jumbotron-fluid">
    <div class="container">
        <h1 class="display-4">Alcoho_Man</h1>
        <p class="lead">hidden treasure.</p>
    </div>
</div>

<div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
        <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
        <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
        <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="https://lh3.googleusercontent.com/p/AF1QipMZavTJ8wV2Lo2vzJDRmqjE6sPj8u5-BaCQ7Pv-=s1360-w1360-h1020" class="d-block w-100" alt="...">
            <div class="carousel-caption d-none d-md-block">
                <h5></h5>
            </div>
        </div>
        <div class="carousel-item">
            <img src="https://www.royalsalute.com/wp-content/uploads/2021/02/The-Kensignton-RoyalSalute6737-scaled-aspect-ratio-18-11-6-scaled.jpg" class="d-block w-100" alt="...">
            <div class="carousel-caption d-none d-md-block">
                <h5></h5>
            </div>  
        </div>
        <div class="carousel-item">
            <img src="https://res.klook.com/images/fl_lossy.progressive,q_65/c_fill,w_1280,h_854/w_79,x_14,y_14,g_south_west,l_Klook_water_br_trans_yhcmh3/activities/uhwzi5frqucrw2vbjctq/%EC%BC%90%ED%94%84%ED%84%B4%EC%9C%84%EC%8A%A4%ED%82%A4%EC%96%91%EC%A1%B0%EC%9E%A5%EA%B0%80%EC%9D%B4%EB%93%9C%ED%88%AC%EC%96%B4(%EC%8B%9C%EC%9D%8C%ED%8F%AC%ED%95%A8).jpg" class="d-block w-100" alt="...">
            <div class="carousel-caption d-none d-md-block">
                <h5></h5>
            </div>
        </div>
    </div>
    <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

<script>
    $(document).ready(function(){
        $('.carousel').carousel({
            interval: 5000 // 5 seconds
        });

        // 고객센터 클릭 시 페이지 전환
        $('#customerServiceLink').on('click', function(event) {
            event.preventDefault(); // 기본 동작 중단
            window.location.href = 'alcoho_man_p.jsp';
        });
    });
</script>

</body>
</html>
