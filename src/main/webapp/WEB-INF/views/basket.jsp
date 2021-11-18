<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
    <meta charset="UTF-8">
    <title>Basket</title>
</head>

<body>
    <%@ include file = "./parts/header.jsp" %>

    <h2>Basket</h2>

    <c:if test="${empty basket.basketItems}">The basket is empty!</c:if>

    <c:forEach var="basketItem" items="${basket.basketItems}" varStatus="status">
        <div>
            <h4>${basketItem.product.name}</h4>
            <div>Quantity: ${basketItem.quantity}</div>
            <div>Price: ${basketItem.product.price}р.</div>
            <br />
            <img src="${basketItem.product.imageUrl}" height="150" />
            <br /><br />
            <c:if test="${!status.last}"><hr /></c:if>
        </div>
    </c:forEach>
</body>
</html>
