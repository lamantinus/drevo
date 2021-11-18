<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
    <meta charset="UTF-8">
    <title>Not Completed Orders</title>
</head>

<body>
    <%@ include file = "./parts/header.jsp" %>

    <h2>Not Completed Orders</h2>

    <c:if test="${empty orders}">There are no new orders!</c:if>

    <c:forEach var="basket" items="${orders}">
        <c:forEach var="basketItem" items="${basket.basketItems}" varStatus="status">
            <div>
                <h4>${basketItem.product.name}</h4>
                <div>Quantity: ${basketItem.quantity}</div>
                <div>Price: ${basketItem.product.price}р.</div>
                <br />
                <img src="${basketItem.product.imageUrl}" height="150" />
                <br /><br />
                <form:form method="post" action="/admin/orders/complete/${basket.id}">
                    <input type="submit" value="Complete order" />
                </form:form>
                <br /><br />
                <c:if test="${!status.last}"><hr /></c:if>
            </div>
        </c:forEach>
    </c:forEach>

    <%@ include file = "./parts/footer.jsp" %>
</body>
</html>
