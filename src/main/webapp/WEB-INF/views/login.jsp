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
    <title>Dean's office</title>
    <link rel="shortcut icon" href="${contextPath}/resources/img/W.ico" type="image/x-icon">
    <!-- Bootstrap -->
    <link href="${contextPath}/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/form.css">
</head>
<body>

<div class="container">
    <div class="col-lg-4 col-md-3 col-sm-2"></div>
    <div class="col-lg-4 col-md-6 col-sm-8">
        <div class="logo">
            <img src="${contextPath}/resources/img/logo.png" alt="Logo">
        </div>
        <form method="POST" action="${contextPath}/login">
            <div class="form-group ${error != null ? 'has-error' : ''}">

                <div class="row loginbox">
                    <div class="col-lg-12">
                        <span class="singtext">Log in</span>
                    </div>
                    <span class="message-info">${message}</span>
                    <div class="col-lg-12 col-md-12 col-sm-12">
                        <input name="username" class="form-control" type="text"
                               placeholder="User Name">
                    </div>
                    <div class="col-lg-12  col-md-12 col-sm-12">
                        <input name="password" class="form-control" type="password" placeholder="Password">
                    </div>
                    <span class="error-message">${error}</span>
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                    <div class="col-lg-12  col-md-12 col-sm-12">
                        <button class="btn  submitButton">Log in</button>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="${contextPath}/resources/js/bootstrap.min.js"></script>

</body>
</html>
