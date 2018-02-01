<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE HTML>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <title>Getting Started: Handling Form Submission</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
</head>
<body>
<h1>Form</h1>

<%--<form action="${contextPath}/message" method="POST">
    <input name="message"/>
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
    <button type="submit">ok</button>
</form>--%>

 <form:form method ="POST" modelAttribute="sendMessage" action="/sendMail">
    <spring:bind path="sendMessage">
        <table>
            <tr>
                <td><form:label type="text" path="sendMessage">Message:</form:label></td>
                <td><form:input path = "sendMessage"></form:input></td>
            </tr>
            <tr>
                <td colspan = "2">
                    <input type = "submit" value = "Submit"/>
                </td>
            </tr>
    </table>
     </spring:bind>
 </form:form>
</body>
</html>