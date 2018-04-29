<%@include file="header.jsp" %>
<div class="container">
    <form:form action="/allStudents" method="GET">
        <table class="table table-hover">
            <treat>
                <tr class="studentsList">
                    <th>ID</th>
                    <th>First name</th>
                    <th>Last name</th>
                    <th>E-mail</th>
                    <th>Telephone</th>
                    <th>Address</th>
                </tr>
            </treat>
            <c:forEach var="allStudentList" items="${allStudentsList}">
                <tbody>
                <tr class="toChange"
                    onclick="window.location.href='http://localhost:8080/chosenStudent/${allStudentList.id}'; return false">
                    <th>${allStudentList.id}</th>
                    <th>${allStudentList.name}</th>
                    <th>${allStudentList.surname}</th>
                    <th>${allStudentList.email}</th>
                    <th>${allStudentList.telephone}</th>
                    <th>${allStudentList.address}</th>
                </tr>
                </tbody>
            </c:forEach>
        </table>
        <br>
    </form:form>
</div>
<%@include file="footer.jsp" %>
