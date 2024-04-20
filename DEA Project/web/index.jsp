<%@page import="net.javaguides.registration.model.Item"%>
<%@page import="java.util.List"%>
<%@page import="net.javaguides.registration.dao.ItemDao"%>
<%@page import="net.javaguides.registration.controller.DbConnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    ItemDao idP=new ItemDao(DbConnect.getConn());
    List<Item> itemsP = idP.getPlantItemHome();
    %>
    
<%
    ItemDao idS=new ItemDao(DbConnect.getConn());
    List<Item> itemsS = idS.getSeedsItemHome();
    %>
    
<%
    ItemDao idF=new ItemDao(DbConnect.getConn());
    List<Item> itemsF = idF.getFertilizerItemHome();
    %>
    
<%
    ItemDao idR=new ItemDao(DbConnect.getConn());
    List<Item> itemsR = idR.getRecentItemHome();
    %>
    
<%
    ItemDao idE=new ItemDao(DbConnect.getConn());
    List<Item> itemsE = idE.getEquipmentItemHome();
    %>
   




<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>index-page</title>
        <%@include file="All_Components/allCss.jsp" %>
    </head>

    <body style="background-color:#f1f8e9">

        <%@include file="All_Components/navbar.jsp"%>
        <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="d-block " src="images/u.jpg" alt="First slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block" src="images/j.jpg" alt="Second slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block" src="images/p.jpg" alt="Third slide">
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
            </a>
        </div>
         <!--start recent item-->    
        <div class="container">
            <h3 class="text-center p-2 category-title">Recent Items</h3>
            <div class="container my-3 text-center">
                <div class="row">
                    <% 
                        if (!itemsR.isEmpty()) {
                        for (Item i : itemsR) {%>
                        
                    <div class="col-lg-3 col-md-6 ">
                        <div class="card crd-ho">
                            <div class="card-body text-center">
                                <img src="admin/imgs/<%=i.getImage() %>" alt="" class="img-fluid card-img">
                                <p class="card-para1"><%= i.getName() %></p>
                                <p class="card-para2">Price : <%= i.getPrice() %></p>
                                
                                <% int id = i.getId(); %>
                                <% String n = i.getName(); %>
                                <% double p = i.getPrice(); %>
                                <% String im = i.getImage(); %>
                                <% String s = i.getStatus(); %>
                                <% String ic = i.getCategory(); %>
                                
                                
                                <div class="d-flex flex-row justify-content-around">
                                    <a href="login.jsp" class="btn btn-danger btn-sm"><i class="fa-solid fa-cart-plus"></i> Add Cart</a>
                                    
                                    <a href="view_items.jsp?Id=<%=id%>&Iname=<%=n%>&Iprice=<%=p%>&img_name=<%=im%>&Istatus=<%=s%>&Icategory=<%=ic%>" class="btn btn-success btn-sm">View Details</a>
                                </div>
                            </div>
                        </div>
                    </div>
                        
                        <%}
                        }
                        %>
                    
                </div>
                <div class="text-center mt-1">
                    
                </div>
            </div>         
        </div>
         <!--end recent item--> 
         <hr>
         <!--start plants-->   
         
        <div class="container">
            <h3 class="text-center category-title">Plants</h3>
            <div class="container my-3 text-center">
                <div class="row">
                    <% 
                        if (!itemsP.isEmpty()) {
                        for (Item i : itemsP) {%>
                        
                    <div class="col-lg-3 col-md-6">
                        <div class="card crd-ho">
                            <div class="card-body text-center">
                                <img src="admin/imgs/<%=i.getImage() %>" alt="" class="img-fluid card-img">
                                <p class="card-para1"><%= i.getName() %></p>
                                <p class="card-para2">Price : <%= i.getPrice() %></p>
                                
                                <% int id = i.getId(); %>
                                <% String n = i.getName(); %>
                                <% double p = i.getPrice(); %>
                                <% String im = i.getImage(); %>
                                <% String s = i.getStatus(); %>
                                <% String ic = i.getCategory(); %>
                                
                                <div class="d-flex flex-row justify-content-around">
                                    <a href="login.jsp" class="btn btn-danger btn-sm"><i class="fa-solid fa-cart-plus"></i> Add Cart</a>
                                    <a href="view_items.jsp?Id=<%=id%>&Iname=<%=n%>&Iprice=<%=p%>&img_name=<%=im%>&Istatus=<%=s%>&Icategory=<%=ic%>" class="btn btn-success btn-sm">View Details</a>
                                </div>
                            </div>
                        </div>
                    </div>
                        
                        <%}
                        }
                        %>
                    
                </div>
                <div class="text-center mt-1">
                    <a href="plants.jsp" class="btn btn-danger btn-sm text-white ">View All</a>
                </div>
            </div>         
        </div>
         <!--end plants--> 
         
         <hr>
         
         <!--start seeds-->  
         
        <div class="container">
            <h3 class="text-center category-title">Seeds</h3>
            <div class="container my-3 text-center">
                
                <div class="row">
                    
                    <% 
                        if (!itemsS.isEmpty()) {
                        for (Item i : itemsS) {%>
                        
                    <div class="col-lg-3 col-md-6">
                        <div class="card crd-ho">
                            <div class="card-body text-center">
                                <img src="admin/imgs/<%=i.getImage() %>" alt="" class="img-fluid card-img">
                                <p class="card-para1"><%= i.getName() %></p>
                                <p class="card-para2">Price : <%= i.getPrice() %></p>
                                
                                <% int id = i.getId(); %>
                                <% String n = i.getName(); %>
                                <% double p = i.getPrice(); %>
                                <% String im = i.getImage(); %>
                                <% String s = i.getStatus(); %>
                                <% String ic = i.getCategory(); %>
                                
                                <div class="d-flex flex-row justify-content-around">
                                    <a href="login.jsp" class="btn btn-danger btn-sm"><i class="fa-solid fa-cart-plus"></i> Add Cart</a>
                                    <a href="view_items.jsp?Id=<%=id%>&Iname=<%=n%>&Iprice=<%=p%>&img_name=<%=im%>&Istatus=<%=s%>&Icategory=<%=ic%>" class="btn btn-success btn-sm">View Details</a>
                                </div>
                            </div>
                        </div>
                    </div>
                        
                        <%}
                        }
                        %>
                    
                </div>
                <div class="text-center mt-1">
                    <a href="seeds.jsp" class="btn btn-danger btn-sm text-white ">View All</a>
                </div>
            </div>         
        </div>
         <!--end seeds--> 
         
         <hr>
         
         <!--start fertilizer-->    
         
        <div class="container">
            <h3 class="text-center category-title">Fertilizer</h3>
            <div class="container my-3 text-center">
                <div class="row">
                    <% 
                        if (!itemsF.isEmpty()) {
                        for (Item i : itemsF) {%>
                        
                    <div class="col-lg-3 col-md-6">
                        <div class="card crd-ho">
                            <div class="card-body text-center">
                                <img src="admin/imgs/<%=i.getImage() %>" alt="" class="img-fluid card-img">
                                <p class="card-para1"><%= i.getName() %></p>
                                <p class="card-para2">Price : <%= i.getPrice() %></p>
                                
                                <% int id = i.getId(); %>
                                <% String n = i.getName(); %>
                                <% double p = i.getPrice(); %>
                                <% String im = i.getImage(); %>
                                <% String s = i.getStatus(); %>
                                <% String ic = i.getCategory(); %>
                                
                                <div class="d-flex flex-row justify-content-around">
                                    <a href="login.jsp" class="btn btn-danger btn-sm"><i class="fa-solid fa-cart-plus"></i> Add Cart</a>
                                    <a href="view_items.jsp?Id=<%=id%>&Iname=<%=n%>&Iprice=<%=p%>&img_name=<%=im%>&Istatus=<%=s%>&Icategory=<%=ic%>" class="btn btn-success btn-sm">View Details</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <%}
                        }
                        %>
                        
                </div>
                <div class="text-center mt-1">
                    <a href="fertilizer.jsp" class="btn btn-danger btn-sm text-white ">View All</a>
                </div>
            </div>         
        </div>
         <!--end fertilizer-->
         
         <hr>
         
         <!--start Equipment-->    
         
        <div class="container">
            <h3 class="text-center category-title">Equipment</h3>
            <div class="container my-3 text-center">
                <div class="row">
                    <% 
                        if (!itemsE.isEmpty()) {
                        for (Item i : itemsE) {%>
                        
                    <div class="col-lg-3 col-md-6">
                        <div class="card crd-ho">
                            <div class="card-body text-center">
                                <img src="admin/imgs/<%=i.getImage() %>" alt="" class="img-fluid card-img">
                                <p class="card-para1"><%= i.getName() %></p>
                                <p class="card-para2">Price : <%= i.getPrice() %></p>
                                
                                <% int id = i.getId(); %>
                                <% String n = i.getName(); %>
                                <% double p = i.getPrice(); %>
                                <% String im = i.getImage(); %>
                                <% String s = i.getStatus(); %>
                                <% String ic = i.getCategory(); %>
                                
                                <div class="d-flex flex-row justify-content-around">
                                    <a href="login.jsp" class="btn btn-danger btn-sm"><i class="fa-solid fa-cart-plus"></i> Add Cart</a>
                                    <a href="view_items.jsp?Id=<%=id%>&Iname=<%=n%>&Iprice=<%=p%>&img_name=<%=im%>&Istatus=<%=s%>&Icategory=<%=ic%>" class="btn btn-success btn-sm">View Details</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <%}
                        }
                        %>
                        
                </div>
                <div class="text-center mt-1">
                    <a href="equipment.jsp" class="btn btn-danger btn-sm text-white ">View All</a>
                </div>
            </div>         
        </div>
         <!--end Equipment-->
         
        <%@include file="All_Components/footer.jsp" %> 
    </body>
</html>
