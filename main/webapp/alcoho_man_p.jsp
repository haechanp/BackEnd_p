<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Service</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
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

<div class="container mt-4">
    <div class="row">
        <div class="col-md-4">
            <div class="custom-button" onclick="location.href='faq.jsp'">FAQ</div>
        </div>
        <div class="col-md-4">
            <div class="custom-button" onclick="location.href='alcoho_man_board.jsp'">문의게시판(Q&A)</div>
        </div>
        <div class="col-md-4">
            <div class="custom-button" onclick="location.href='one_to_one_inquiry.jsp'">1대1문의</div>
        </div>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

</body>
</html>