<%-- 
    Document   : order_success
    Created on : May 1, 2024, 3:27:17 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <%@include file="allCss.jsp" %>
    </head>
    <body style="background-color:#f1f8e9">
        <%@include file="../All_Components/navbar_after.jsp"%>
        
        <div class="container text-center p-4">
            <i class="fas fa-check-circle fa-5x text-success"></i>
            <h1>Thank You</h1>
            <h2>Your Order Successfully</h2>
            <h5>With in 7 Days Your Product Will Be Delivered In Your Address</h5>
            <a href="home.jsp" class="btn btn-primary mt-3">Home</a>
            <a href="order.jsp" class="btn btn-danger mt-3">View Order</a><br>
        </div>
        
        
        
        
        
        <%@include file="../All_Components/footer_after.jsp" %> 
    </body>
</html>
