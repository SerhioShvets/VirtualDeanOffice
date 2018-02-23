<%@include file="header.jsp" %>

<div class="container">
    <h2>Your personal information</h2>
    <hr>
    <div class="row">
        <div class="col-xs-6 col-md-3">
            <a href="#" class="thumbnail">
                <img src="${contextPath}/resources/img/${userName}.jpg" alt="avatar"></a>
        </div>
        <div class="col-xs-6 col-md-1"></div>
        <div class="col-xs-6 col-md-6 my">
            <form:form action="/userInfo/${userName}" method="GET">
                <table class="table table-w">
                    <tr class="info">
                        <th>First name</th>
                        <td>${user.name}</td>
                    </tr>
                    <tr class="info">
                        <th>Last name</th>
                        <td>${user.surname}</td>
                    </tr>
                    <tr class="info">
                        <th>Birthday</th>
                        <td>${user.birthday}</td>
                    </tr>
                    <tr class="info">
                        <th>E-Mail</th>
                        <td>${user.email}</td>
                    </tr>
                    <tr class="info">
                        <th>Telephone</th>
                        <td>${user.telephone}</td>
                    </tr>
                    <tr class="info">
                        <th>Address</th>
                        <td>${user.address}</td>
                    </tr>
                </table>
                <%--<h3>First name: ${user.name}</h3>
                <hr>
                <h3>Last name: ${user.surname}</h3>
                <hr>
                <h3>Birthday: ${user.birthday}</h3>
                <hr>
                <h3>E-mail: ${user.email}</h3>
                <hr>
                <h3>Telephone: ${user.telephone}</h3>
                <hr>
                <h3>Address: ${user.address}</h3>--%>
            </form:form>
        </div>
    </div>
</div>
<%@include file="footer.jsp" %>

