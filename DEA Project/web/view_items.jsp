<%@page import="net.javaguides.registration.controller.DbConnect"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert Title Here</title>
        <%@include file="All_Components/allCss.jsp" %>
    </head>
    <body style="background-color: #f0f1f2">
        
    </body>   
    
    <%@include file="All_Components/navbar.jsp"%>
        
     <% 
        String id = request.getParameter("Id");
        String name = request.getParameter("Iname");
        String price = request.getParameter("Iprice");
        String imgName = request.getParameter("img_name");
        String status = request.getParameter("Istatus");
        String category = request.getParameter("Icategory");%>

    
    <div class="container p-3">
        <div class="row p-5">
            <div class="col-md-6 text-center p-5 border bg-white">
                <img src="admin/imgs/<%= imgName %>" style="height:150px; width:150px"><br><br>
                <h4 class="mt-2">Name : <span class="text-success"><%= name %></span></h4>
                <h4>category : <span class="text-success"><%= category %></span></h4>
                <h4>Status : <span class="text-success"><%= status %></span></h4>
            </div>
            <div class="col-md-6 text-center p-5 border bg-white">
                

                <h2><%= category %></h2> <br>
                
                <h5 class="text-primary">Contact To Seller</h5>
                <h5 class="text-primary"><i class="fa-regular fa-envelope"></i> Email: plantme@gmail.com</h5>
                
                <div class="row ">
                    <div class="col-md-4 text-danger text-center p-2">
                        <i class="fa-solid fa-money-bill-wave fa-3x" ></i>
                        <p>Cash On  Delivery</p>
                    </div>  
                    <div class="col-md-4 text-danger text-center p-2">
                        <i class="fa-solid fa-rotate-left fa-3x"></i>
                        <p>Return Available</p>
                    </div> 
                    <div class="col-md-4 text-danger text-center p-2">
                        <i class="fa-solid fa-truck fa-3x "></i>
                        <p>Free Shipping</p>
                    </div> 
                </div>
                
                
                <div class=" text-center p-3">
                    <a href="login.jsp" class="btn btn-primary"><i class="fa fa-cart-plus" aria-hidden="true"></i>Add Cart</a>
                    <a href="login.jsp" class="btn btn-danger">Rs <%= price %></a>
                </div>
                
            </div>
        </div>   
    </div>
    <%@include file="All_Components/footer.jsp" %>
</body>
</html>
