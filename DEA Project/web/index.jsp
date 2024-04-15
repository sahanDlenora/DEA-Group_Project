<%@page import="net.javaguides.registration.model.Item"%>
<%@page import="java.util.List"%>
<%@page import="net.javaguides.registration.dao.ItemDao"%>
<%@page import="net.javaguides.registration.controller.DbConnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    ItemDao pd = new ItemDao(DbConnect.getConn());
    List<Item> items = pd.getAllItem();

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Egri:Index</title>
        <%@include file="All_Components/allCss.jsp" %>
        <style type="text/css">
            .back-img{
                background:url("images/g.jpg");
                height: 50vh;
                width: 100%;
                background-size: cover;
                background-repeat: no-repeat;
            }
            .crd-ho:hover{
                background-color: #fcf7f7; 
            }
        </style>
    </head>

    <body style="background-color:#f7f7f7">

        <%@include file="All_Components/navbar.jsp"%>

        <div class="container">
            <div class="card-header my-3">All Products</div>
            <div class="row">
                <%                    if (!items.isEmpty()) {
                        for (Item i : items) {%>
                <div class="col-md-3 my-3">
                    <div class="card w-100" style = "width: 18rem;"> <img src = "admin/imgs/<%=i.getImage() %>" class="card-img-top" alt = "..." width="200px" height="150px"> 
                        <div class="card-body">
                            <h5 class="card-title"><%= i.getName() %></h5>
                            <h6 class="price">Price: $<%= i.getPrice()%></h6> 
                            <h6 class="category">Category:<%= i.getCategory()%></h6> 
                            <div class="mt-3 d-flex justify-content-between">
                                    <a href = "#" class="btn btn-primary">Add to cart</a> 
                                    <a href = "#" class="btn btn-primary">Buy Now</a> </div> 
                                    </div>
                        </div> </div>
                                    <%}
                                        }
                                    %>

                                </div>
                        </div>


                        </body>
                        </html>
