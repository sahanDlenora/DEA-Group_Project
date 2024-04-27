<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Setting</title>
        <%@include file="All_Components/allCss.jsp" %>
        <style type="text/css">
            a{
                text-decoration: none;
                color:black;
            }
            a:hover
            {
                text-decoration: none;
            }
        </style>
    </head>
    <body>
        <%@include file="All_Components/navbar.jsp" %>
        
        <div class="container">
            <h3 class="text-center">Hello,User</h3>
            <div class="row p-5">
                
                <div class="col-md-4">
                    <a href="edit_profile.jsp">
                        <div class="card">
                            <div class="card-body text-center" >
                                <div class="text-primary">
                                    <i class="fas fa-edit fa-3x"></i>
                                </div>
                                <h4>Login & Security</h4>
                                <p>Edit Profile</p>
                            </div>
                        </div>
                    </a>
                </div>
                
                 <div class="col-md-4 mt-3">
                    <a href="user_address.jsp">
                        <div class="card">
                            <div class="card-body text-center" >
                                <div class="text-warning">
                                    <i class="fas fa-map-marker-alt fa-3x"></i>
                                </div>
                                <h4>Your  Address</h4>
                                <p>Edit Address</p>
                            </div>
                        </div>
                    </a>
                </div>
                
                <div class="col-md-4 mt-3">
                    <a href="order.jsp">
                        <div class="card">
                            <div class="card-body text-center" >
                                <div class="text-danger">
                                    <i class="fas fa-box-open fa-3x"></i>
                                </div>
                                <h4>My Order</h4>
                                <p>Track Your Order</p>
                            </div>
                        </div>
                    </a>
                </div>
                
                
            </div>
        </div>
         <%@include file="All_Components/footer.jsp" %>
    </body>
</html>
