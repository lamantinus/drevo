<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="language" value="${not empty param.language ? param.language : not empty language ? language : pageContext.request.locale}" scope="session" />
<fmt:setLocale value="${language}" />
<fmt:setBundle basename="messages" />

<style>
    body {
        padding: 16px;
    }

    body.dark-theme {
        color: white;
        background-color: #121212;
    }

    header {
        display: flex;
        justify-content: space-between;
    }

    select {
        width: 100%;
    }

    .dark-theme a:visited {
        color: #ddd;
    }

    .dark-theme a, .dark-theme a:hover {
        color: white;
    }

    .top-right form {
        display: inline-block;
    }
</style>

<header>
    <div>
        <sec:authorize access="isAuthenticated()">
            Hello, <strong>${pageContext.request.userPrincipal.name}</strong>!
            <c:if test="${!fn:startsWith(requestScope['javax.servlet.forward.request_uri'], '/user')}">
                <a href="/user">Go to profile</a>
            </c:if>
            <sec:authorize access="hasAuthority('ADMIN')">
                | <a href="/admin/orders">Not completed orders</a>
            </sec:authorize>
        </sec:authorize>
    </div>

    <div class="top-right">
        <a href="/">Main Page</a> |
        <a href="/help/shipping">Shipping</a> |
        <a href="/basket">Basket</a>

        <sec:authorize access="!isAuthenticated()">
            | <a href="/login">Login</a>
            | <a href="/registration">Register</a>
        </sec:authorize>

        <sec:authorize access="isAuthenticated()">
            | <a href="/logout">Logout</a>
        </sec:authorize>

        | <form>
            <select id="language" name="language" onchange="submit()">
                <option value="en" ${language == 'en' ? 'selected' : ''}>English</option>
                <option value="ru" ${language == 'ru' ? 'selected' : ''}>Russian</option>
            </select>
        </form>
    </div>
</header>
