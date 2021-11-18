<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
    <meta charset="UTF-8">
    <title>User Page</title>
</head>

<body>
    <%@ include file = "./parts/header.jsp" %>

    <c:choose>
        <c:when test="${param.edit}">
            <h2>Edit Address</h2>

            <form:form method="post" action="/user" modelAttribute="address">
                <table cellpadding="2" cellspacing="2">
                    <tr>
                        <td>Zip code</td>
                        <td><form:input path="zipCode" /></td>
                    </tr>
                    <tr>
                        <td>Country</td>
                        <td><form:select path="country" items="${countries}" itemValue="name" itemLabel="name" /></td>
                    </tr>
                    <tr>
                        <td>Region</td>
                        <td><form:input path="region" /></td>
                    </tr>
                    <tr>
                        <td>City</td>
                        <td><form:input path="city" /></td>
                    </tr>
                    <tr>
                        <td>Address</td>
                        <td><form:input path="address" /></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" value="Save" /></td>
                    </tr>
                </table>
            </form:form>
        </c:when>
        <c:otherwise>
            <h2>Address</h2>
            <div>Zip code: ${address.zipCode}</div>
            <div>Country: ${address.country}</div>
            <div>Region: ${address.region}</div>
            <div>City: ${address.city}</div>
            <div>Address: ${address.address}</div>
            <br />
            <a href="?edit=true">Edit</a>
            <br /><br />
        </c:otherwise>
    </c:choose>

    <hr />

    <h2>Order History</h2>
    <c:forEach var="basket" items="${orders}">
        <c:forEach var="basketItem" items="${basket.basketItems}">
            <div>
                <h4>${basketItem.product.name}</h4>
                <div>Quantity: ${basketItem.quantity}</div>
                <div>Price: ${basketItem.product.price}р.</div>
                <br />
                <img src="${basketItem.product.imageUrl}" height="150" />
                <br /><br />
            </div>
        </c:forEach>
    </c:forEach>

    <%@ include file = "./parts/footer.jsp" %>
</body>
</html>
