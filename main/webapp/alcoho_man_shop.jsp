<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

    <title>Alcoho Man</title>

    <link rel="stylesheet" href="<%=request.getContextPath()%>/styles/alcoho_man.css">
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
                <a class="nav-link" href="./ShopPage.jsp">Home <span class="sr-only">(current)</span></a>
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

<!-- 상품 진열 -->
<div class="container mt-5">
    <!-- 첫 번째 행 -->
    <div class="row">
        <div class="col-md-4">
            <div class="card">
                <img src="https://via.placeholder.com/300x200" class="card-img-top" alt="Product 1">
                <div class="card-body">
                    <h5 class="card-title">Product 1</h5>
                    <p class="card-text">This is a description of product 1.</p>
                    <a href="#" class="btn btn-primary">바로구매</a>
                    <a href="#" class="btn btn-secondary">장바구니</a>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card">
                <img src="https://via.placeholder.com/300x200" class="card-img-top" alt="Product 2">
                <div class="card-body">
                    <h5 class="card-title">Product 2</h5>
                    <p class="card-text">This is a description of product 2.</p>
                    <a href="#" class="btn btn-primary">바로구매</a>
                    <a href="#" class="btn btn-secondary">장바구니</a>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card">
                <img src="https://via.placeholder.com/300x200" class="card-img-top" alt="Product 3">
                <div class="card-body">
                    <h5 class="card-title">Product 3</h5>
                    <p class="card-text">This is a description of product 3.</p>
                    <a href="#" class="btn btn-primary">바로구매</a>
                    <a href="#" class="btn btn-secondary">장바구니</a>
                </div>
            </div>
        </div>
    </div>

    <!-- 두 번째 행 -->
    <div class="row mt-4">
        <div class="col-md-4">
            <div class="card">
                <img src="https://via.placeholder.com/300x200" class="card-img-top" alt="Product 4">
                <div class="card-body">
                    <h5 class="card-title">Product 4</h5>
                    <p class="card-text">This is a description of product 4.</p>
                    <a href="#" class="btn btn-primary">바로구매</a>
                    <a href="#" class="btn btn-secondary">장바구니</a>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card">
                <img src="https://via.placeholder.com/300x200" class="card-img-top" alt="Product 5">
                <div class="card-body">
                    <h5 class="card-title">Product 5</h5>
                    <p class="card-text">This is a description of product 5.</p>
                    <a href="#" class="btn btn-primary">바로구매</a>
                    <a href="#" class="btn btn-secondary">장바구니</a>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card">
                <img src="https://via.placeholder.com/300x200" class="card-img-top" alt="Product 6">
                <div class="card-body">
                    <h5 class="card-title">Product 6</h5>
                    <p class="card-text">This is a description of product 6.</p>
                    <a href="#" class="btn btn-primary">바로구매</a>
                    <a href="#" class="btn btn-secondary">장바구니</a>
                </div>
            </div>
        </div>
    </div>

    <!-- 세 번째 행 -->
    <div class="row mt-4">
        <div class="col-md-4">
            <div class="card">
                <img src="https://via.placeholder.com/300x200" class="card-img-top" alt="Product 7">
                <div class="card-body">
                    <h5 class="card-title">Product 7</h5>
                    <p class="card-text">This is a description of product 7.</p>
                    <a href="#" class="btn btn-primary">바로구매</a>
                    <a href="#" class="btn btn-secondary">장바구니</a>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card">
                <img src="https://via.placeholder.com/300x200" class="card-img-top" alt="Product 8">
                <div class="card-body">
                    <h5 class="card-title">Product 8</h5>
                    <p class="card-text">This is a description of product 8.</p>
                    <a href="#" class="btn btn-primary">바로구매</a>
                    <a href="#" class="btn btn-secondary">장바구니</a>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card">
                <img src="https://via.placeholder.com/300x200" class="card-img-top" alt="Product 9">
                <div class="card-body">
                    <h5 class="card-title">Product 9</h5>
                    <p class="card-text">This is a description of product
