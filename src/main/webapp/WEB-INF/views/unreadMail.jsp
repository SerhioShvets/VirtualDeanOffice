<%@include file="header.jsp" %>

<div class="container">
    <table class="table table-hover">
        <thead>
        <tr class="titles">
            <th>DATE</th>
            <th>SUBJECT</th>
            <th>MESSAGE</th>
            <th></th>
        </tr>
        </thead>
        <tbody>
        <form:form modelAttribute="messageList" method="GET" action="/unreadMail">
            <c:forEach items="${messageList}" var="message">
                <tr class="toChange" onclick="window.location.href='http://localhost:8080/unreadMail/${message.id}'; return false">
                    <th>${message.publicationDate}</th>
                    <th>${message.title}</th>
                    <th>${message.subMessage}</th>
                    <th>more</th>
            </c:forEach>
        </form:form>
        </tbody>
    </table>
</div>

<%@include file="footer.jsp" %>
