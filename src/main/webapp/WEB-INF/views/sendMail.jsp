<%@include file="header.jsp" %>


<div class="container cnt">
    <h1>Form for contact with students</h1>

    <form:form method="POST" modelAttribute="sendMessage" action="/sendMail">
        <div class="form-group my">
            <spring:bind path="sendMessage">
                <form:label for="usr" type="text" path="sendMessage">Title</form:label>
                <form:input class="form-control" id="usr" maxlength="35" path="title"/>
                <form:label for="usr" type="text" path="sendMessage">Message:</form:label>
                <form:textarea rows="9" class="form-control my" id="usr" path="sendMessage"/>
                <div class="send-btn">
                    <input class="send" type="submit" value="send"/>
                </div>
            </spring:bind>
        </div>
    </form:form>
</div>


<%@include file="footer.jsp" %>
