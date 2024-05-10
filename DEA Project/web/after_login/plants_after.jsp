<%@page import="net.javaguides.registration.model.Item"%>
<%@page import="java.util.List"%>
<%@page import="net.javaguides.registration.dao.ItemDao"%>
<%@page import="net.javaguides.registration.controller.DbConnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    ItemDao id=new ItemDao(DbConnect.getConn());
    List<Item> items = id.getPlantItem();   
    %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="allCss.jsp" %>
    </head>
    <body style="background-color:#f1f8e9">

        <%@include file="../All_Components/navbar_after.jsp"%>
         <!--start recent item-->    
        <div class="container">
            <h3 class="text-center p-2 category-title">Plants</h3>
            <div class="container my-3 text-center">
                <div class="row">
                    <% 
                        if (!items.isEmpty()) {
                        for (Item i : items) {%>
                        
                    <div class="col-lg-3 col-md-6 p-2">
                        <div class="card crd-ho">
                            <div class="card-body text-center">
                                <img src = "../admin/imgs/<%=i.getImage() %>" class="img-fluid card-img" alt = "..."> 
                                <p class="card-para1"><%= i.getName() %></p>
                                <p class="card-para2">Price : <%= i.getPrice() %></p>
                                
                                <% int idp = i.getId(); %>
                                <% String n = i.getName(); %>
                                <% double p = i.getPrice(); %>
                                <% String im = i.getImage(); %>
                                <% String s = i.getStatus(); %>
                                <% String ic = i.getCategory(); %>
                                
                                <div class="d-flex flex-row justify-content-around">
                                    <a href="" class="btn btn-danger btn-sm"><i class="fa-solid fa-cart-plus"></i> Add Cart</a>
                                    <a href="view_items_after.jsp?Id=<%=id%>&Iname=<%=n%>&Iprice=<%=p%>&img_name=<%=im%>&Istatus=<%=s%>&Icategory=<%=ic%>" class="btn btn-success btn-sm">View Details</a>
                                </div>
                            </div>
                        </div>
                    </div>
                        
                        <%}
                        }
                        %>   
                </div>
            </div>         
        </div>
         <!--end recent item--> 
        
        <%@include file="../All_Components/footer_after.jsp" %> 
    </body>
</html>
