<%@include file="header.jsp" %>

<div class="container cont">
    <blockquote>
        <div class="row myRow">
            <form:form modelAttribute="message" method="GET" action="/unreadMail">
                <div class="col-sm-12 title"><h3>SUBJECT</h3></div>
                <div class="col-sm-12 message">${message.title}</div>
                <div class="col-sm-12 message"><br></div>
                <div class="col-sm-12 title"><h3>MESSAGE</h3></div>
                <div class="col-sm-12 message">${message.sendMessage}</div>
                <div class="col-sm-12 message"><br></div>
                <div class="col-sm-12 message">
                    <footer>${message.publicationDate}</footer>
                </div>
            </form:form>
        </div>
    </blockquote>
    <a href="http://localhost:8080/unreadMail">back to message box</a>
</div>

<%@include file="footer.jsp" %>
