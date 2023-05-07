<%@ page import="models.Items" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>

<head>
    <%@include file="head.jsp" %>
    <title>BITLAB SHOP</title>
</head>

<body>

<div class="container">

    <%@include file="navbar.jsp" %>


    <form action="/login" method="post" style="padding: 15px 200px">

        <div class="card-header">
            <h2>Login Page</h2>
        </div>

        <div class="row mb-3 mt-5">
            <label for="inputEmail3" class="col-sm-2 col-form-label"><b>Email</b></label>
            <div class="col-sm-10">
                <input name="email" type="email" class="form-control" id="inputEmail3">
            </div>
        </div>
        <div class="row mb-3">
            <label for="inputPassword3" class="col-sm-2 col-form-label"><b>Password</b></label>
            <div class="col-sm-10">
                <input name="password" type="password" class="form-control" id="inputPassword3">
            </div>
        </div>

        <button type="submit" class="btn btn-success">Sign in</button>
    </form>


</div>

</body>

</html>

