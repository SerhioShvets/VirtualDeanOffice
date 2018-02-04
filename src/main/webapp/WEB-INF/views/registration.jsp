<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Create an account</title>

    <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${contextPath}/resources/css/common.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
<%--Для загрузки фотогафии--%>
<%--<div class="col-md-3">
    <div class="text-center">
        <img src="${contextPath}/resources/img/100.png" class="avatar img-circle" alt="avatar">
        <h6>Upload a different photo...</h6>
        <input type="file" class="form-control">
    </div>
</div>--%>

<div class="container">

    <form:form method="POST" modelAttribute="userForm" class="form-signin">
        <h2 class="form-signin-heading">Create your account</h2>
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


        <spring:bind path="gender">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="gender" class="form-control" placeholder="gender"
                            autofocus="true"/>
                <form:errors path="gender"/>
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

        <button class="btn btn-lg btn-primary btn-block" type="submit">Submit</button>
    </form:form>
</div>
<!-- /container -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</body>
</html>
