<%@include file="header.jsp" %>

<form:form modelAttribute="messageList" method="GET" action="/unreadMail">
    <c:forEach items="${messageList}" var="message">
        <table>
            <td>${message.publicationDate}</td>
            <td>${message.title}</td>
            <td>${message.sendMessage}</td>
        </table>
    </c:forEach>
</form:form>

<%@include file="footer.jsp"%>
