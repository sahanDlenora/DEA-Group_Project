<div class="container-fluid" style="background-color: #00796b; height: 10px;"></div>

<div class="container-fluid p-3 bg-nav">
    <div class="row text-center">
        <div class="col-md-3 text-logo">
            <h3 class="t">Plant.<i class="fa-brands fa-pagelines text-logo-icon"></i>.Me</h3>
        </div>
        <div class="col-md-6 col-lg-5 col-11 mx-auto my-auto"> 
            <form action="search.jsp" method="post">
                <div class="input-group form-container">
                    <input class="form-control search-input" type="search" name="ch" placeholder="Search Your Items...." aria-label="Search"  >
                <button class="btn btn-search" type="submit"><i class="fa-solid fa-magnifying-glass"></i></button>
            </div> 
            </form>           
        </div>
        <div class="col-md-3">
            <a href="login.jsp" class="btn btn-lo"><i class="fa-solid fa-right-to-bracket"></i> Login</a>
            <a href="register.jsp" class="btn btn-custom"><i class="fa-solid fa-user-plus"></i> Register</a>
        </div>
    </div>
</div>


<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="index.jsp"><i class="fa-solid fa-house"></i> Home <span class="sr-only">(current)</span></a>
      </li>
      
      <li class="nav-item active"><a class="nav-link" href="plants.jsp"><i class="fa-solid fa-seedling"></i> Plants</a></li>
      <li class="nav-item active"><a class="nav-link" href="seeds.jsp"><i class="fa-solid fa-bowling-ball"></i> Seeds</a></li>
      <li class="nav-item active"><a class="nav-link" href="fertilizer.jsp"><i class="fa-solid fa-box"></i> Fertilizer</a></li>
      <li class="nav-item active"><a class="nav-link" href="equipment.jsp"><i class="fa-solid fa-tree"></i> Equipments</a></li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
        <button class="btn btn-nav my-2 my-sm-0" type="submit"><a href="aboutUs.jsp" class="btn-bu"><i class="fa-solid fa-user-group"></i> About Us</a></button>
        <button class="btn btn-nav my-2 my-sm-0 ml-1" type="submit"><a href="contact us.jsp" class="btn-bu"><i class="fa-solid fa-phone"></i> Contact Us</a></button>
    </form>
  </div>
</nav>