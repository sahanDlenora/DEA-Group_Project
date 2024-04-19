<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert Title Here</title>
        <%@include file="all_component/allCss.jsp" %>
    </head>
    <body style="background-color: #f0f1f2">
        
    </body>
    <%@include file="all_component/navbar.jsp"%>
    <div class="container p-3">
        <div class="row p-5">
            <div class="col-mad-6 text-center p-5 border bg-white">
                <img src="AgriPic/S.png" style="height:150px; width:150px"><br><br>
                <h4 class="mt-2">Seeds's Name :<span class="text-success"> Corn</span></h4>
                <h4>category : <span class="text-success">Recent</span></h4>
            </div>
            <div class="col-mad-6 text-center p-5 border bg-white">
                
                <%
                    if("Old".equals(b.getAgriCategory())) {
                        %>
                        <h5 class="text-primary">Contact To Seller</h5>
                        
                        <h5 class="text-primary"> <i class=""far fa-envelop></i> Email:<%=b.getEmail()%></h5>
                        <%
                    }

                %>
                <h2>Seeds</h2> <br>
                <div class="row ">
                    <div class="col-mad-4 text-danger text-center p-2">
                        <i class="fa-solid fa-money-bill-wave fa-3x" ></i>
                        <p>Cash On  Delivery</p>
                    </div>  
                    <div class="col-mad-4 text-danger text-center p-2">
                        <i class="fa-solid fa-rotate-left fa-3x"></i>
                        <p>Return Available</p>
                    </div> 
                    <div class="col-mad-4 text-danger text-center p-2">
                        <i class="fa-solid fa-truck fa-3x "></i>
                        <p>Free Shipping</p>
                    </div> 
                    
                  
                </div>
                
                <% if("Old".equals(b.getAgriCategory())){
                    %>
                    <div class=" text-center p-3">
                    <a href="index.jsp" class="btn btn-success"><i class="fa fa-cart-plus" aria-hidden="true"></i>Continue Shipping </a>
                    <a href="" class="btn btn-danger"><i class="fa fa-usd" aria-hidden="true"></i>200</a>
                </div>
                    <% }
                     else{
                          %>
                          <div class=" text-center p-3">
                    <a href="" class="btn btn-primary"><i class="fa fa-cart-plus" aria-hidden="true"></i>Continue Shipping </a>
                    <a href="" class="btn btn-danger"><i class="fa fa-usd" aria-hidden="true"></i>200</a>
                </div>
                          <%
                         }
                    %>

                <div class=" text-center p-3">
                    <a href="" class="btn btn-primary"><i class="fa fa-cart-plus" aria-hidden="true"></i>Add Cart</a>
                    <a href="" class="btn btn-danger"><i class="fa fa-usd" aria-hidden="true"></i>200</a>
                </div>
                
            </div>
        </div>   
    </div>
</html>
