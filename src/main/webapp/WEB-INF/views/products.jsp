<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
    <meta charset="UTF-8">
    <title>Products Page</title>
</head>

<body>
    <c:forEach var="product" items="${products}">
        <div>
            <h4>${product.name}</h4>
            <div>Price: ${product.price}р.</div>
            <div>Material: ${product.material.name}</div>
            <div>Product care: ${product.care}</div>
            <div>Filing: ${product.filling}</div>
            <div>Delivery: ${product.deliveryDays}</div>
            <br />
            <img src="${product.imageUrl}" height="150" />
            <br /><br />
            <hr />
        </div>
    </c:forEach>

    <sec:authorize access="hasAuthority('ADMIN')">
        <h3>Add Product</h3>

        <form:form method="post" action="/products" modelAttribute="product">
            <table cellpadding="2" cellspacing="2">
                <tr>
                    <td>Name</td>
                    <td><form:input path="name" /></td>
                </tr>
                <tr>
                    <td>Care</td>
                    <td><form:input path="care" /></td>
                </tr>
                <tr>
                    <td>Filling</td>
                    <td><form:input path="filling" /></td>
                </tr>
                <tr>
                    <td>Image URL</td>
                    <td><form:input path="imageUrl" /></td>
                </tr>
                <tr>
                    <td>Price</td>
                    <td><form:input path="price" type="number" /></td>
                </tr>
                <tr>
                    <td>Delivery Days</td>
                    <td><form:input path="deliveryDays" type="number" /></td>
                </tr>
                <tr>
                    <td>Material</td>
                    <td><form:select path="material" items="${productMaterials}" itemValue="name" itemLabel="name" /></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Save" /></td>
                </tr>
            </table>
        </form:form>
    </sec:authorize>
</body>
</html>
