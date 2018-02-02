<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Lesson Plan</title>
</head>

<body>
<h2>Lessons</h2>


<form:form modelAttribute="Lesson" method="GET">
    <c:set var="lastDay" scope="request" value="empty"/>
    <c:forEach items="${lessonList}" var="lesson">
        <c:if test="${lastDay != lesson.getDayOnDate}">
            <h3>${lesson.getDayOnDate}</h3>
        </c:if>
        <table>
            <td>${lesson.beginLesson}</td>
            <td>${lesson.endLesson}</td>
            <td>${lesson.lessonName}</td>
            <td>${lesson.teacher}</td>
            <td>${lesson.classRoom}</td>
            <c:set var="lastDay" scope="request" value="${lesson.getDayOnDate}"/>
        </table>
    </c:forEach>

</form:form>

</body>

</html>