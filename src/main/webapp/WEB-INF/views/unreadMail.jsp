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

<form:form modelAttribute="Message" method="GET">
    <spring:bind path="sendMessage">
        <h5>${Message.id}</h5>
        <h5>${Message.author}</h5>
        <h5>${Message.sendMessage}</h5>
    </spring:bind>

</form:form>

<form:form modelAttribute="messageList" method="GET">
        <c:forEach items="${messageList}" var="message">
            <h3>${message.id}</h3>
            <h3>${message.sendMessage}</h3>
            <h3>${message.author}</h3>
        </c:forEach>

</form:form>

</body>

</html>