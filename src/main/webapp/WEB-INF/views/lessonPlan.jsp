<%@include file="header.jsp" %>

<div class="container">
    <nav class="navbar">
        <ul class="nav navbar-nav plan">
            <li><a href="/lessonPlan/7">week</a></li>
            <li><a href="/lessonPlan/30">month</a></li>
            <li><a href="/lessonPlan/120">semester</a></li>
            <li><a href="/lessonPlan">all lessons</a></li>
        </ul>
    </nav>

    <table class="table">
        <tr class="change">
            <td>START</td>
            <td>FINISH</td>
            <td>LESSON</td>
            <td>TEACHER</td>
            <td>CLASSROOM</td>
        </tr>
        <form:form method="GET">
            <c:set var="lastDay" scope="request" value="empty"/>
            <c:forEach items="${listAllByDateLesson}" var="lesson">
                <c:if test="${lastDay != lesson.getDayOnDate}">
                    <tr class="change-date">
                        <th>${lesson.getDayOnDate}</th>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                </c:if>
                <tr class="lesson-info">
                    <td>${lesson.beginLesson}</td>
                    <td>${lesson.endLesson}</td>
                    <td>${lesson.lessonName}</td>
                    <td>${lesson.teacher}</td>
                    <td>${lesson.classRoom}</td>
                    <c:set var="lastDay" scope="request" value="${lesson.getDayOnDate}"/>
                </tr>
            </c:forEach>
        </form:form>
    </table>
</div>
<%@include file="footer.jsp" %>
