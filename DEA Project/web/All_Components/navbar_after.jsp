<<<<<<< Updated upstream
<%@page import="net.javaguides.registration.model.Login"%>
<%
    Login login = (Login)session.getAttribute("user-ob");
    if(login==null) 
    {
        session.setAttribute("login-msg", "Please Login First...");
        response.sendRedirect("login.jsp");
    }
%>
=======
>>>>>>> Stashed changes
<div class="container-fluid" style="background-color: #00796b; height: 10px;"></div>

<div class="container-fluid p-3 bg-nav">
    <div class="row">
        <div class="col-md-3 text-logo">
            <h3 class="t">Plant.<i class="fa-brands fa-pagelines text-logo-icon"></i>.Me</h3>
        </div>
        <div class="col-md-6">
            <form class="form-inline my-2 my-lg-0">
                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search" >
                <button class="btn btn-custom my-2 my-sm-0" type="submit">Search</button>
            </form>
        </div>
<<<<<<< Updated upstream
        <%
            Login login1 = (Login)session.getAttribute("user-ob");
        %>
        <%
            if(login!=null)
            {%>
                <div class="col-md-3 text-center">   
                    <a href="" class="btn btn-custom-after"><i class="fa-solid fa-circle-user"></i> <%=login1.getEmail()%></a>
                    <a href="../LogoutServlet" class="btn btn-lo"><i class="fa-solid fa-right-to-bracket"></i> Logout</a>
                </div>
            <%
            }
        %>
        
        
=======
        <div class="col-md-3">
            <a href=""></a>
            <a href="register.jsp" class="btn btn-custom"><i class="fa-solid fa-user-plus"></i> Register</a>
            <a href="login.jsp" class="btn btn-lo"><i class="fa-solid fa-right-to-bracket"></i> Login</a>
        </div>
>>>>>>> Stashed changes
    </div>
</div>


<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
<<<<<<< Updated upstream
        <a class="nav-link" href="home.jsp"><i class="fa-solid fa-house"></i> Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active"><a class="nav-link" href="recent_items_after.jsp"><i class="fa-solid fa-tree"></i> Recent Items</a></li>
      <li class="nav-item active"><a class="nav-link" href="plants_after.jsp"><i class="fa-solid fa-seedling"></i> Plants</a></li>
      <li class="nav-item active"><a class="nav-link" href="seeds_after.jsp"><i class="fa-solid fa-bowling-ball"></i> Seeds</a></li>
      <li class="nav-item active"><a class="nav-link" href="fertilizer_after.jsp"><i class="fa-solid fa-box"></i> Fertilizer</a></li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
       <a href="" class="nav-icon-after"><i class="fa-solid fa-cart-arrow-down fa-2x mt-1"></i></a>
      <button class="btn btn-nav my-2 my-sm-0 ml-2" type="submit"><i class="fa-solid fa-user-group"></i> About Us</button>
=======
        <a class="nav-link" href="index.jsp"><i class="fa-solid fa-house"></i> Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active"><a class="nav-link" href="recent_items.jsp"><i class="fa-solid fa-tree"></i> Recent Items</a></li>
      <li class="nav-item active"><a class="nav-link" href="plants.jsp"><i class="fa-solid fa-seedling"></i> Plants</a></li>
      <li class="nav-item active"><a class="nav-link" href="seeds.jsp"><i class="fa-solid fa-bowling-ball"></i> Seeds</a></li>
      <li class="nav-item active"><a class="nav-link" href="fertilizer.jsp"><i class="fa-solid fa-box"></i> Fertilizer</a></li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <button class="btn btn-nav my-2 my-sm-0" type="submit"><i class="fa-solid fa-user-group"></i> About Us</button>
>>>>>>> Stashed changes
      <button class="btn btn-nav my-2 my-sm-0 ml-1" type="submit"><i class="fa-solid fa-phone"></i> Contact Us</button>
    </form>
  </div>
</nav>