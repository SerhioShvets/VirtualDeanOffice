<%@include file="header.jsp" %>

<div class="container">
    <h2>Your personal information</h2>
    <hr>
    <div class="row">
        <div class="col-xs-6 col-md-3">
            <a href="#" class="thumbnail">
            <img src="${contextPath}/resources/img/${userName}.jpg" alt="avatar" ></a>
        </div>
        <div class="col-xs-6 col-md-1"></div>
        <div class="col-xs-6 col-md-6 my">
            <form:form action="/userInfo/${userName}" method="GET">
                <h3>name: ${user.name}</h3>
                <hr>
                <h3>surname: ${user.surname}</h3>
                <hr>
                <h3>birthday: ${user.birthday}</h3>
                <hr>
                <h3>email: ${user.email}</h3>
                <hr>
                <h3>telephone: ${user.telephone}</h3>
                <hr>
                <h3>address: ${user.address}</h3>
            </form:form>
        </div>
    </div>
</div>
<%@include file="footer.jsp" %>

