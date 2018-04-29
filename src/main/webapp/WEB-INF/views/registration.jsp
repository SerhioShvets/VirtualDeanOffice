<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<%@include file="header.jsp" %>

<div class="container">

    <form:form method="POST" modelAttribute="userForm" class="well form-horizontal" id="contact_form">
        <fieldset>

            <legend>Create new student account</legend>

            <!--text-input username-->

            <div class="form-group">
                <spring:bind path="username">
                    <div class="form-group ${status.error ? 'has-error' : ''}">
                        <form:label class="col-md-4 control-label" path="username">User Name</form:label>
                        <div class="col-md-4 inputGroupContainer">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                <form:input name="first_name" class="form-control" type="text" path="username"
                                            placeholder="User Name"/>
                            </div>
                            <form:errors path="username"/>
                        </div>
                    </div>
                </spring:bind>
            </div>

            <!--text-input first name-->
            <div class="form-group">
                <spring:bind path="name">
                    <div class="form-group ${status.error ? 'has-error' : ''}">
                        <form:label class="col-md-4 control-label" path="name">First Name</form:label>
                        <div class="col-md-4 inputGroupContainer">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                <form:input name="first_name" type="text" path="name" class="form-control"
                                            placeholder="First Name"/>
                            </div>
                            <form:errors path="name"/>
                        </div>
                    </div>
                </spring:bind>
            </div>

            <!--text-input last name-->
            <div class="form-group">
                <spring:bind path="surname">
                    <div class="form-group ${status.error ? 'has-error' : ''}">
                        <form:label class="col-md-4 control-label" path="surname">Last Name</form:label>
                        <div class="col-md-4 inputGroupContainer">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                <form:input name="first_name" type="text" path="surname" class="form-control"
                                            placeholder="Last Name"/>
                            </div>
                            <form:errors path="surname"/>
                        </div>
                    </div>
                </spring:bind>
            </div>
            <!--text-input birthday-->

            <div class="form-group">
                <spring:bind path="birthday">
                    <div class="form-group ${status.error ? 'has-error' : ''}">
                        <form:label class="col-md-4 control-label" path="birthday">Birthday</form:label>
                        <div class="col-md-4 inputGroupContainer">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                                <form:input name="first_name" type="text" path="birthday" class="form-control"
                                            placeholder="1991-01-01"/>
                            </div>
                            <form:errors path="birthday"/>
                        </div>
                    </div>
                </spring:bind>
            </div>

            <!--text-input email-->
            <div class="form-group">
                <spring:bind path="email">
                    <div class="form-group ${status.error ? 'has-error' : ''}">
                        <form:label class="col-md-4 control-label" path="email">E-Mail</form:label>
                        <div class="col-md-4 inputGroupContainer">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                                <form:input name="email" type="text" path="email" class="form-control"
                                            placeholder="E-Mail Address"/>
                            </div>
                            <form:errors path="email"/>
                        </div>
                    </div>
                </spring:bind>
            </div>

            <!--text-input telephone-->

            <div class="form-group">
                <spring:bind path="telephone">
                    <div class="form-group ${status.error ? 'has-error' : ''}">
                        <form:label class="col-md-4 control-label" path="telephone">Phone</form:label>
                        <div class="col-md-4 inputGroupContainer">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-phone"></i></span>
                                <form:input name="phone" type="text" path="telephone" class="form-control"
                                            placeholder="+48 455 474 522"/>
                            </div>
                            <form:errors path="telephone"/>
                        </div>
                    </div>
                </spring:bind>
            </div>

            <!--text-input address-->

            <div class="form-group">
                <spring:bind path="address">
                    <div class="form-group ${status.error ? 'has-error' : ''}">
                        <form:label class="col-md-4 control-label" path="address">Address</form:label>
                        <div class="col-md-4 inputGroupContainer">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
                                <form:input name="address" type="text" path="address" class="form-control"
                                            placeholder="Address"/>
                            </div>
                            <form:errors path="telephone"/>
                        </div>
                    </div>
                </spring:bind>
            </div>

            <!--text-input password-->

            <div class="form-group">
                <spring:bind path="password">
                    <div class="form-group ${status.error ? 'has-error' : ''}">
                        <form:label class="col-md-4 control-label" path="password">Password</form:label>
                        <div class="col-md-4 inputGroupContainer">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-expand"></i></span>
                                <form:input name="password" type="password" path="password" class="form-control"
                                            placeholder="Password"/>
                            </div>
                            <form:errors path="password"/>
                        </div>
                    </div>
                </spring:bind>
            </div>

            <!--text-input passwordConfirm-->
            <div class="form-group">
                <spring:bind path="passwordConfirm">
                    <div class="form-group ${status.error ? 'has-error' : ''}">
                        <form:label class="col-md-4 control-label" path="passwordConfirm">Confirm Password</form:label>
                        <div class="col-md-4 inputGroupContainer">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-expand"></i></span>
                                <form:input name="confirmPassword" type="password" path="passwordConfirm"
                                            class="form-control"
                                            placeholder="Confirm password"/>
                            </div>
                            <form:errors path="passwordConfirm"/>
                        </div>
                    </div>
                </spring:bind>
            </div>

            <!-- Button -->
            <div class="form-group">
                <label class="col-md-4 control-label"></label>
                <div class="col-md-4">
                    <button type="submit">Create</button>
                </div>
            </div>
        </fieldset>
    </form:form>
</div>

<%@include file="footer.jsp" %>
