<%@page import="net.javaguides.registration.model.Item_Order"%>
<%@page import="java.util.List"%>
<%@page import="net.javaguides.registration.dao.OrderDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>order</title>
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
                    <th scope="col">Name</th>
                    <th scope="col">Item Name</th>
                    <th scope="col">Price</th>
                    <th scope="col">Payment Type</th>
                  </tr>
                </thead>
                <tbody>
                    <%
                        Login lo = (Login) session.getAttribute("user-ob");
                        OrderDao dao = new OrderDao();
                        List<Item_Order> ilist = dao.getItem(lo.getEmail());
                        for(Item_Order io:ilist)
                        {%>
                            <tr>
                                <th scope="row"><%=io.getOrder_id()%></th>
                                <td><%=io.getUser_name()%></td>
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
 
       
        <%@include file="../All_Components/footer_after.jsp" %>
    </body>
</html>
