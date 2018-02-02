<%@page contentType="text/html;charset = UTF-8" language="java" %>
<%@page isELIgnored="false" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Spring MVC Form Handling</title>
</head>

<body>
<h2>Submitted Student Information</h2>

<%--<form:form modelAttribute="Message" method="GET">
    <spring:bind path="sendMessage">
        <h5>${Message.id}</h5>
        <h5>${Message.sendMessage}</h5>
    </spring:bind>

</form:form>--%>

<form:form modelAttribute="messageList" method="GET">
    <c:forEach items="${messageList}" var="message">
        <table>
            <td>${message.publicationDate}</td>
            <td>${message.title}</td>
            <td>${message.sendMessage}</td>
        </table>
    </c:forEach>

</form:form>

</body>

</html>