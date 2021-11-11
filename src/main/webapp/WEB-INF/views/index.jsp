<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<html>
<head>
    <meta charset="UTF-8">
    <title>drevojewelry</title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="//unpkg.com/@fortawesome/fontawesome-free/css/fontawesome.css" />
    <link rel="stylesheet" href="//unpkg.com/@fortawesome/fontawesome-free/css/brands.css" />
    <link rel="stylesheet" href="//unpkg.com/@fortawesome/fontawesome-free/css/regular.css" />
    <link rel="stylesheet" href="//unpkg.com/@fortawesome/fontawesome-free/css/solid.css" />

    <style>
        body {
            background-color: #ffffff;
            background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 1600 900'%3E%3Cdefs%3E%3ClinearGradient id='a' x1='0' x2='0' y1='1' y2='0'%3E%3Cstop offset='0' stop-color='%230FF'/%3E%3Cstop offset='1' stop-color='%23CF6'/%3E%3C/linearGradient%3E%3ClinearGradient id='b' x1='0' x2='0' y1='0' y2='1'%3E%3Cstop offset='0' stop-color='%23F00'/%3E%3Cstop offset='1' stop-color='%23FC0'/%3E%3C/linearGradient%3E%3C/defs%3E%3Cg fill='%23FFF' fill-opacity='0' stroke-miterlimit='10'%3E%3Cg stroke='url(%23a)' stroke-width='2'%3E%3Cpath transform='translate(0 0)' d='M1409 581 1450.35 511 1490 581z'/%3E%3Ccircle stroke-width='4' transform='rotate(0 800 450)' cx='500' cy='100' r='40'/%3E%3Cpath transform='translate(0 0)' d='M400.86 735.5h-83.73c0-23.12 18.74-41.87 41.87-41.87S400.86 712.38 400.86 735.5z'/%3E%3C/g%3E%3Cg stroke='url(%23b)' stroke-width='4'%3E%3Cpath transform='translate(0 0)' d='M149.8 345.2 118.4 389.8 149.8 434.4 181.2 389.8z'/%3E%3Crect stroke-width='8' transform='rotate(0 1089 759)' x='1039' y='709' width='100' height='100'/%3E%3Cpath transform='rotate(0 1400 132)' d='M1426.8 132.4 1405.7 168.8 1363.7 168.8 1342.7 132.4 1363.7 96 1405.7 96z'/%3E%3C/g%3E%3C/g%3E%3C/svg%3E");
            background-attachment: fixed;
            background-size: cover;
        }

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

        .bottom-left {
            position: absolute;
            bottom: 20px;
            left: 20px;
        }

        .fa-instagram {
            color: #E1306C;
        }

        h2 {
            font-family: Lobster;
            font-size: 60px;
            font-weight: 500;
            text-align: center;
            margin-top: 200px;
            text-shadow: 6px 6px #ffcb00;
        }

        button {
            padding: 8px 16px;
            background: #ffcb00;
            border: 0;
            border-radius: 5px;
            font-size: 18px;
            color: #333;
            margin: 6px;
            cursor: pointer;
            border: 2px solid transparent;
        }

        button:hover {
            border: 2px solid #333;
        }

        div {
            text-align: center;
        }

        .images {
            margin: 50px auto 0 auto;
        }

        .images img {
            width: 15%;
            margin: 5px;
        }
    </style>
</head>

<body>
    <header>
        <h2>drevojewelry</h2>

        <sec:authorize access="isAuthenticated()">
            <div class="top-left">
                Hello, <strong>${pageContext.request.userPrincipal.name}</strong>!
                <a href="/user">Go to profile</a>
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
        <a href="/products?category=RING"><button>Rings</button></a>
        <a href="/products?category=PENDANT"><button>Pendants</button></a>
        <a href="/products?category=OTHER"><button>Other</button></a>
        <a href="/products"><button>All</button></a>
    </div>

    <div class="images">
        <img src="https://i.imgur.com/HNHCTOX.jpg" />
        <img src="https://i.imgur.com/nCiCQWr.jpg" />
        <img src="https://i.imgur.com/AtlDoAt.jpg" />
    </div>

    <div class="bottom-left">
        <a href="https://www.instagram.com/drevojewelry"><i class="fab fa-instagram fa-2x"></i></a>
    </div>
</body>
</html>

