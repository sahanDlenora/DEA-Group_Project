<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Home</title>
        <%@include file="allCss.jsp" %>
        <style type="text/css">
            a{
            text-decoration: none;
            color:black
            }
            a:hover{
                text-decoration: none;
                color:black
            }
            
            </style>
            
    </head>
    <body style="background-color: #98FB98;">
        <%@include file="../All_Components/navbar.jsp" %>

        <div class="container">
            <div class="row p-5">
                <div class="col-md-3 ">
                    <a href="addItems.jsp">
                    <div class="card">
                        <div class="card-body text-center">
                            <i class="fas fa-plus-square fa-3x text-primary"></i><br>
                            <h4>Add Item</h4>
                           
                        </div>
                    </div>
                    </a>
                  </div> 
                
                 <div class="col-md-3 ">
                     <a href="allItems.jsp">
                    <div class="card">
                        <div class="card-body text-center">
                            <i class="fas fa-th-large fa-3x text-danger"></i><br>
                            <h4>All Item</h4>
                           
                        </div>
                    </div>
                     </a>
                  </div> 
                
                
                 <div class="col-md-3 ">
                      <a href="Orders.jsp">
                    <div class="card">
                        <div class="card-body text-center">
                            <i class="fas fa-box-open fa-3x text-warning"></i><br>
                            <h4>Orders</h4>
                          
                        </div>
                    </div>
                      </a>
                  </div> 
                
                
                 <div class="col-md-3 ">
                    <div class="card">
                        <div class="card-body text-center">
                            <i class="fas fa-sign-out-alt fa-3x text-primary"></i><br>
                            <h4>Logout</h4>
                            
                        </div>
                    </div>
                  </div> 
                           
                        </div>
                    </div>
              

        <%@include file="../All_Components/footer.jsp" %>
    </body>
</html>
