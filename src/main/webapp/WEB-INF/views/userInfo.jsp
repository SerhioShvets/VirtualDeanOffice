<%@include file="header.jsp" %>


<img src="${contextPath}/resources/img/${userName}.jpg" class="avatar img-circle" alt="avatar">
<form:form action="/userInfo/${userName}" method="GET">
    <h3>${user.name}</h3>
    <h3>${user.surname}</h3>
    <h3>${user.birthday}</h3>
    <h3>${user.email}</h3>
    <h3>${user.telephone}</h3>
    <h3>${user.address}</h3>
</form:form>

<%@include file="footer.jsp" %>

