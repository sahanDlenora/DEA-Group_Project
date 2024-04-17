<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="All_Components/allCss.jsp" %>
    </head>
    <body style="background-color:#f1f8e9">

        <%@include file="All_Components/navbar.jsp"%>
         <!--start recent item-->    
        <div class="container">
            <h3 class="text-center p-2 category-title">Fertilizer</h3>
            <div class="container my-3 text-center">
                <div class="row">
                    <div class="col-lg-3 col-md-6 ">
                        <div class="card crd-ho">
                            <div class="card-body text-center">
                                <img src="images/dd.jpg" alt="" class="img-fluid card-img">
                                <p class="card-para1">Item Name</p>
                                <p class="card-para2">Price</p>
                                <div class="d-flex flex-row justify-content-around">
                                    <a href="" class="btn btn-danger btn-sm"><i class="fa-solid fa-cart-plus"></i> Add Cart</a>
                                    <a href="" class="btn btn-success btn-sm">View Details</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="card crd-ho">
                            <div class="card-body text-center">
                                <img src="images/dd.jpg" alt="" class="img-fluid card-img">
                                <p class="card-para1">Item Name</p>
                                <p class="card-para2">Price</p>
                                <div class="d-flex flex-row justify-content-around">
                                    <a href="" class="btn btn-danger btn-sm"><i class="fa-solid fa-cart-plus"></i> Add Cart</a>
                                    <a href="" class="btn btn-success btn-sm">View Details</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="card crd-ho">
                            <div class="card-body text-center">
                                <img src="images/dd.jpg" alt="" class="img-fluid card-img">
                                <p class="card-para1">Item Name</p>
                                <p class="card-para2">Price</p>
                                <div class="d-flex flex-row justify-content-around">
                                    <a href="" class="btn btn-danger btn-sm"><i class="fa-solid fa-cart-plus"></i> Add Cart</a>
                                    <a href="" class="btn btn-success btn-sm">View Details</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="card crd-ho">
                            <div class="card-body text-center">
                                <img src="images/dd.jpg" alt="" class="img-fluid card-img">
                                <p class="card-para1">Item Name</p>
                                <p class="card-para2">Price</p>
                                <div class="d-flex flex-row justify-content-around">
                                    <a href="" class="btn btn-danger btn-sm"><i class="fa-solid fa-cart-plus"></i> Add Cart</a>
                                    <a href="" class="btn btn-success btn-sm">View Details</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>         
        </div>
         <!--end recent item--> 
        
        <%@include file="All_Components/footer.jsp" %> 
    </body>
</html>
