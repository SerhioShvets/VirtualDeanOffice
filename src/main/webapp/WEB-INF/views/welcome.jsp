<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" scope="session" value="${pageContext.request.contextPath}"/>
<c:set var="userName" scope="session" value="${pageContext.request.userPrincipal.name}"/>
<c:set var="adminFunction" scope="session" value="admin"/>

<%@include file="header.jsp" %>


<%@include file="footer.jsp"%>
