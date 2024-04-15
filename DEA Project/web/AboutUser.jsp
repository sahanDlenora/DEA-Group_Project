<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="all_component/allCss.jsp"%>
<style type="text/css">
a{
text-decoration: none;
color:black;
}
a:hover{
    text-decoration: none;
}
</style>
}
</head>
<body style="background-color: #f7f7f7;">
<%@include file="all_component/navbar.jsp"%>
    <div class="container">
    <h3 class="text-center>Hello, Pabitra</h3>
        <div class="row p-5">
         <div class="col-md-6">
         <a href="">
         <div class="card">
         <div class="card-body text-center">
           <div class="text-primary">
            <i class="fas fa-book-open fa-3x"></i> 
          </div>
           <h4>Sell Old Book</h4>
</div>
         </div>
           </a>
          </div>

  <div class="col-md-6">
         <a href="">
         <div class="card">
         <div class="card-body text-center">
           <div class="text-primary">
            <i class="fas fa-edit-open fa-3x"></i> 
          </div>
           <h4>Login & Security (Edit Profile)</h4>
</div>
         </div>
           </a>
          </div>


 <div class="col-md-4 mt-3">
         <a href="">
         <div class="card">
         <div class="card-body text-center">
           <div class="text-warning">
            <i class="fas fa-map-marker-alt fa-3x"></i> 
          </div>
           <h4>Your Address</h4>
           <p>Edit Address</p> 
</div>
         </div>
           </a>
          </div>

<div class="col-md-4 mt-3">
         <a href="">
         <div class="card">
         <div class="card-body text-center">
           <div class="text-danger">
            <i class="fas fa-box-open fa-3x"></i> 
          </div>
           <h4>My Order</h4>
           <p>Track Your Order</p> 
</div>
         </div>
           </a>
          </div>



div class="col-md-4 mt-3">
         <a href="">
         <div class="card">
         <div class="card-body text-center">
           <div class="text-primary">
            <i class="fas fa-user-circle fa-3x"></i> 
          </div>
           <h4>Help Center</h4>
           <p>24 * 7 Service</p> 
</div>
         </div>
           </a>
          </div>

   
         </div>

         <%@include file="all_component/footer.jsp"%>
        </div>
<body>

</body>
</html>
