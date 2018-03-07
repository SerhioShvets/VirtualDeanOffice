    <%@include file="header.jsp" %>
<div class="container">
    <form:form action="/chosenStudent" method="GET">
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
            <tbody>
            <tr class="toChange">
                <th>${student.id}</th>
                <th>${student.name}</th>
                <th>${student.surname}</th>
                <th>${student.email}</th>
                <th>${student.telephone}</th>
                <th>${student.address}</th>
            </tr>
            </tbody>
        </table>
    </form:form>
    <br>
    <br>
    <br>

    <table class="table table-hover">
        <treat>
            <tr class="studentsList">
                <th>ID</th>
                <th>Lesson</th>
                <th>Teacher</th>
                <th>ECTS points</th>
                <th>Grade Form</th>
                <th>Grade</th>
                <th>Select</th>
                <th>Complete</th>
            </tr>
        </treat>
        <c:set var="estimate" value="${estimate}" scope="request"/>
        <c:forEach items="${lessonList}" var="lessonList">
            <tbody>
            <tr class="toChange">
                <th>${lessonList.id}</th>
                <th>${lessonList.lessonName}</th>
                <th>${lessonList.teacherName}</th>
                <th>${lessonList.ectsPoint}</th>
                <th>${lessonList.estimateForm}</th>
                <th>${estimate.get(lessonList.id)}</th>
                <form:form modelAttribute="studentEstimate" action="" method="POST">
                    <spring:bind path="idLesson">
                        <input type="hidden" name="idLesson" value="${lessonList.id}"/>
                    </spring:bind>
                    <spring:bind path="estimate">
                        <th><form:select path="estimate">
                            <form:options items="${studentEstimate.estimates}"/>
                        </form:select>
                        </th>
                        <th><form:button value="set">set</form:button></th>
                    </spring:bind>
                </form:form>
            </tr>
            </tbody>
        </c:forEach>
    </table>
</div>


<%@include file="footer.jsp" %>