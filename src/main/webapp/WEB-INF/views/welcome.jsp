<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" scope="session" value="${pageContext.request.contextPath}"/>
<c:set var="userName" scope="session" value="${pageContext.request.userPrincipal.name}"/>
<c:set var="adminFunction" scope="session" value="admin"/>

<%@include file="header.jsp" %>
<div class="container">
    <div class="jumbotron my-setting">
        <h1>Welcome to the virtual Dean's office</h1>
        <p>Dean's office is a place where you can find about your lessons and grades, as well as other information related to your studies.</p>
    </div>
</div>
<%@include file="footer.jsp" %>
