<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<%@include file="header.jsp" %>

<div class="container">

    <form:form method="POST" modelAttribute="userForm" class="form-signin">
        <h2>Create your account</h2>
        <spring:bind path="username">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="username" class="form-control" placeholder="username" autofocus="true"/>
                <form:errors path="username"/>
            </div>
        </spring:bind>

        <spring:bind path="name">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="name" class="form-control" placeholder="name"
                            autofocus="true"/>
                <form:errors path="name"/>
            </div>
        </spring:bind>

        <spring:bind path="surname">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="surname" class="form-control" placeholder="surname"
                            autofocus="true"/>
                <form:errors path="surname"/>
            </div>
        </spring:bind>

        <spring:bind path="birthday">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="birthday" class="form-control" placeholder="birthday yyyy-mm-dd"
                            autofocus="true"/>
                <form:errors path="birthday"/>
            </div>
        </spring:bind>


        <spring:bind path="email">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="email" class="form-control" placeholder="email"
                            autofocus="true"/>
                <form:errors path="email"/>
            </div>
        </spring:bind>

        <spring:bind path="telephone">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="telephone" class="form-control" placeholder="telephone"
                            autofocus="true"/>
                <form:errors path="telephone"/>
            </div>
        </spring:bind>


        <spring:bind path="address">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="address" class="form-control" placeholder="address"
                            autofocus="true"/>
                <form:errors path="telephone"/>
            </div>
        </spring:bind>

        <spring:bind path="password">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="password" path="password" class="form-control" placeholder="Password"/>
                <form:errors path="password"/>
            </div>
        </spring:bind>

        <spring:bind path="passwordConfirm">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="password" path="passwordConfirm" class="form-control"
                            placeholder="Confirm your password"/>
                <form:errors path="passwordConfirm"/>
            </div>
        </spring:bind>

        <button type="submit">Submit</button>
    </form:form>
</div>

<%@include file="footer.jsp"%>
