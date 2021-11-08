<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
    <meta charset="UTF-8">
    <title>Products Page</title>
</head>

<body>
    <c:forEach var="product" items="${products}">
        <div>
            <div>${product.name} - ${product.price}р. (${product.type.name})</div>
        </div>
    </c:forEach>

    <h3>Add Product</h3>

    <form:form method="post" action="/products" modelAttribute="product">
        <table cellpadding="2" cellspacing="2">
            <tr>
                <td>Name</td>
                <td><form:input path="name" /></td>
            </tr>
            <tr>
                <td>Type</td>
                <td><form:select path="type" items="${productTypes}" itemValue="name" itemLabel="name" /></td>
            </tr>
            <tr>
                <td>Price</td>
                <td><form:input path="price" /></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Save" /></td>
            </tr>
        </table>
    </form:form>
</body>
</html>
