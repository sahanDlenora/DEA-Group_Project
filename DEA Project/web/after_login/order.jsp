<%-- 
    Document   : order
    Created on : Apr 27, 2024, 10:39:44 PM
    Author     : ASUS_RSA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Order</title>
        <%@include file="allCss.jsp" %>
    </head>
    <body style="background-color: #f1f8e9">
        
        <%@include file="../All_Components/navbar_after.jsp"%>
        
        <div class="container p-1">
            <h3 class="text-center text-primary">Your Order</h3>
             <table class="table table-striped mt-3">
                 <thead class="bg-primary text-white">
                     <tr>
                    <th scope="col">Order Id</th>
                    <th scope="col">Category</th>
                    <th scope="col">Price</th>
                    <th scope="col">Payment Type</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <th scope="row">1</th>
                    <td>Mark</td>
                    <td>Otto</td>
                    <td>@mdo</td>

                  </tr>

                </tbody>
              </table>
        </div>
 
       
        <%@include file="../All_Components/footer_after.jsp" %> 
    </body>
</html>
