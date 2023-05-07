<%@ page import="java.util.ArrayList" %>
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

    <div style="display: flex; justify-content: center; margin-top: 40px;">
        <h1><b>Welcome to BITLAB SHOP</b></h1>
    </div>

    <div style="display: flex; justify-content: center; margin-top: 10px;">
        <p style="color: gray">Electronic devices with high quality and service.</p>
    </div>


    <div class="row mt-3">
        <%
            ArrayList<Items> items = (ArrayList<Items>) request.getAttribute("items");
            for (Items i: items) {

        %>
        <div class="col-md-4 mb-4 text-center">
            <div class="card">
                <div class="card-header" style="padding: 15px;"><h3 class="card-title"><%=i.getName()%></h3></div>
                <div class="card-body">
                    <h3 class="card-title" style="color: #368751;">$<%=i.getPrice()%></h3>
                    <p class="card-text" style="padding: 10px 140px;"><%=i.getDescription()%></p>
                    <a>
                        <button class="btn btn-success" style="width: 100%;">Buy Now</button>
                    </a>
                </div>
            </div>
        </div>
        <%
            }
        %>
    </div>



</body>

</html>