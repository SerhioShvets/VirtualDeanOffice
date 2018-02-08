<%@include file="header.jsp" %>

<form:form method="POST" modelAttribute="sendMessage" action="/sendMail">
    <spring:bind path="sendMessage">
        <table>
            <tr>
                <td><form:label type="text" path="sendMessage">Title</form:label></td>
                <td><form:input path="title"/></td>

                <td><form:label type="text" path="sendMessage">Message:</form:label></td>
                <td><form:input path="sendMessage"/></td>
                <td colspan="2">
                    <input type="submit" value="Submit"/>
                </td>
            </tr>
        </table>
    </spring:bind>
</form:form>

<%@include file="footer.jsp"%>
