<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
}
</head>
<body style="background-color: #f1f8e9;">
    
<%@include file="../All_Components/navbar_after.jsp"%>

    <div class="container">
        <h3 class="text-center mt-2">Hello, <%=login1.getName()%></h3>
        <div class="row p-5">
            <div class="col-md-6">
                <a href="">
                    <div class="card">
                        <div class="card-body text-center">
                            <div class="text-primary">
                                <i class="fas fa-book-open fa-3x"></i> 
                            </div>
                            <h4>Sell Items</h4>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col-md-6">
                <a href="">
                    <div class="card">
                        <div class="card-body text-center">
                            <div class="text-primary">
                                <i class="fa-solid fa-id-card fa-3x"></i> 
                            </div>
                            <h4>Login & Security (Edit Profile)</h4>
                        </div>
                    </div>
                </a>
            </div>


            <div class="col-md-4 mt-3">
                <a href="">
                    <div class="card">
                        <div class="card-body text-center">
                            <div class="text-warning">
                                <i class="fas fa-map-marker-alt fa-3x"></i> 
                            </div>
                            <h4>Your Address</h4>
                            <p>Edit Address</p> 
                        </div>
                    </div>
                </a>
            </div>

            <div class="col-md-4 mt-3">
                <a href="">
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
                <a href="">
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
<body>

</body>
</html>
