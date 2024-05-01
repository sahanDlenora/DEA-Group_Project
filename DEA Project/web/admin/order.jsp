<%-- 
    Document   : order
    Created on : May 1, 2024, 7:16:20 AM
    Author     : User
--%>

<%@page import="net.javaguides.registration.model.Item_Order"%>
<%@page import="java.util.List"%>
<%@page import="net.javaguides.registration.dao.OrderDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="allCss.jsp" %>
    </head>
    <body style="background-color: #f1f8e9;">
        <%@include file="../All_Components/navbar_admin.jsp" %>
        <div class="container p-1">
            <h3 class="text-center text-primary">Your Order</h3>
             <table class="table table-striped mt-3">
                 <thead class="bg-primary text-white">
                  <tr>
                    <th scope="col">Order Id</th>
                    <th scope="col">Name</th>
                    <th scope="col">Email</th>
                    <th scope="col">Address</th>
                    <th scope="col">Phone</th>
                    <th scope="col">Item Name</th>
                    <th scope="col">Price</th>
                    <th scope="col">Payment Type</th>
                  </tr>
                </thead>
                <tbody>
                    <%
                        OrderDao dao = new OrderDao();
                        List<Item_Order> ilist = dao.getAllOrder();
                        for(Item_Order io:ilist)
                        {%>
                            <tr>
                                <th scope="row"><%=io.getOrder_id()%></th>
                                <td><%=io.getUser_name()%></td>
                                <td><%=io.getEmail()%></td>
                                <td><%=io.getFullAdd()%></td>
                                <td><%=io.getPhone()%></td>
                                <td><%=io.getItem_name()%></td>
                                <td><%=io.getPrice()%></td>
                                <td><%=io.getPayment()%></td>
                            </tr>
                        <%
                        }
                    %>
                </tbody>
              </table>
        </div>
        <%@include file="../All_Components/footer_admin.jsp" %>        
    </body>
</html>
