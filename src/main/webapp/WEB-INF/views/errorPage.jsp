<%@ page contentType="text/html;charset=UTF-8" language="java" %>

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
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/error.css">
</head>
<body>
<div class="container">
    <div class="jumbotron">
        <div class="jumbotron-my">
            <div class="text-center"><img src="${contextPath}/resources/img/exclamation.png" alt="Logo"></div>

            <h1 class="text-center">Oops! Something went wrong.</h1>
            <p class="text-center">Try pressing the back button or clicking on this button.</p>
            <p class="text-center"><a class="btn btn-primary myBut" href="http://localhost:8080/welcome"><i class="fa fa-home"></i> Take Me Home</a></p>
        </div>
    </div>
</div>
</body>
</html>
