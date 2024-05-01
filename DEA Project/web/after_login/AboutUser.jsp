<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>About User</title>
<%@include file="allCss.jsp" %>
<style type="text/css">
a{
text-decoration: none;
color:black;
}
a:hover{
    text-decoration: none;
}
</style>

</head>
<body style="background-color: #f1f8e9;">
    
<%@include file="../All_Components/navbar_after.jsp"%>

    <div class="container">
        <h3 class="text-center mt-2">Hello, <%=login1.getName()%></h3>
        <div class="row p-5">
           

            <div class="col-md-4 mt-3 ">
                <a href="edit_profile.jsp">
                    <div class="card">
                        <div class="card-body text-center">
                            <div class="text-primary">
                                <i class="fa-solid fa-id-card fa-3x"></i> 
                            </div>
                            <h4>Edit Profile</h4>
                            <p>Login & Security</p>
                        </div>
                    </div>
                </a>
            </div>
            
            <div class="col-md-4 mt-3">
                <a href="order.jsp">
                    <div class="card">
                        <div class="card-body text-center">
                            <div class="text-danger">
                                <i class="fas fa-box-open fa-3x"></i> 
                            </div>
                            <h4>My Order</h4>
                            <p>Track Your Order</p> 
                        </div>
                    </div>
                </a>
            </div>
            
            <div class="col-md-4 mt-3">
                    <a href="contact us_after.jsp">
                        <div class="card">
                            <div class="card-body text-center">
                                <div class="text-primary">
                                    <i class="fas fa-user-circle fa-3x"></i> 
                                </div>
                                <h4>Help Center</h4>
                                <p>24 * 7 Service</p> 
                            </div>
                        </div>
                    </a>
            </div>
        </div>
    </div>

    <%@include file="../All_Components/footer_after.jsp" %> 


</body>
</html>
