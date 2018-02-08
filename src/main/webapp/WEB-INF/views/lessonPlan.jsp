<%@include file="header.jsp" %>

<div class="container">
    <h2>Lessons Plan</h2>

    <a href="/lessonPlan/7">week</a>
    <a href="/lessonPlan/30">month</a>
    <a href="/lessonPlan/120">semester</a>
    <a href="/lessonPlan">all lessons</a>

    <form:form method="GET">
        <c:set var="lastDay" scope="request" value="empty"/>
        <c:forEach items="${listAllByDateLesson}" var="lesson">
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
</div>
<%@include file="footer.jsp" %>
