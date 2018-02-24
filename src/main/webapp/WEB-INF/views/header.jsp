<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Dean's office</title>
    <link rel="shortcut icon" href="${contextPath}/resources/img/W.ico" type="image/x-icon">

    <!-- Bootstrap -->
    <link href="${contextPath}/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/style.css">

</head>
<body onload="myFunction()">
<%--function log out--%>
<div class="container">
    <c:if test="${pageContext.request.userPrincipal.name != null}">
        <form id="logoutForm" method="POST" action="${contextPath}/logout">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        </form>
    </c:if>
</div>
<%--header--%>
<header>
    <nav class="navbar navbar-default">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                        data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="http://localhost:8080/">WSEI</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li><a href="http://localhost:8080/unreadMail">Message</a></li>
                    <li><a href="http://localhost:8080/lessonPlan/7">Plan</a></li>
                    <li><a href="http://localhost:8080/userInfo/${userName}">Info</a></li>
                    <li><a href="http://localhost:8080/grade">Grade</a></li>
                    <c:if test="${userName == adminFunction}">
                        <li><a href="http://localhost:8080/registration">Create an account</a></li>
                        <li><a href="http://localhost:8080/sendMail/">Send mail</a></li>
                        <li><a href="http://localhost:8080/allStudents">All Students</a></li>
                    </c:if>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li class="username"><a href="#">${userName}</a></li>
                    <li><a onclick="document.forms['logoutForm'].submit()">Log out</a></li>
                </ul>
            </div>
        </div>
    </nav>
</header>
<div id="loader"></div>
<div style="display:none;" id="myDiv" class="animate-bottom">

