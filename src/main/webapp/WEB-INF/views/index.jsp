<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<html>
<head>
    <meta charset="UTF-8">
    <title>drevojewelry</title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet">

    <style>
        .top-left {
            position: absolute;
            top: 20px;
            left: 20px;
        }

        .top-right {
            position: absolute;
            top: 20px;
            right: 20px;
        }

        h2 {
            font-family: Lobster;
            font-size: 60px;
            font-weight: 500;
            text-align: center;
        }

        div {
            text-align: center;
        }
    </style>
</head>

<body>
    <header>
        <h2>drevojewelry</h2>

        <sec:authorize access="isAuthenticated()">
            <div class="top-left">
                Hello, <strong>${pageContext.request.userPrincipal.name}</strong>!
            </div>
        </sec:authorize>

        <div class="top-right">
            <a href="/help/shipping">Shipping</a> |
            <a href="/basket">Basket</a>

            <sec:authorize access="!isAuthenticated()">
                | <a href="/login">Login</a>
                | <a href="/registration">Register</a>
            </sec:authorize>

            <sec:authorize access="isAuthenticated()">
                | <a href="/logout">Logout</a>
            </sec:authorize>
        </div>
    </header>

    <div>
        <a href="/products?category=RING">Rings</a> |
        <a href="/products?category=PENDANT">Pendants</a> |
        <a href="/products?category=OTHER">Other</a> |
        <a href="/products">All</a>
    </div>
</body>
</html>

