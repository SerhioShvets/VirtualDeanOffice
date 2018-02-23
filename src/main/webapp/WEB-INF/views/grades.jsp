<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="header.jsp" %>

<div class="container">
    <form:form action="/grades" method="post">
    <table class="table">
        <treat>
            <tr class="studentsList">
                <th>ID</th>
                <th>Lesson</th>
                <th>Teacher</th>
                <th>ECTS points</th>
                <th>Grade Form</th>
                <th>Grade</th>
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
            </tr>
            </tbody>
        </c:forEach>
    </table>
    </form:form>
<%@include file="footer.jsp" %>