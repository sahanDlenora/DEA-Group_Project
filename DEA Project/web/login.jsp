<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="All_Components/allCss.jsp" %>
    </head>
    <body style="background-color: #f0f1f2">
        <%@include file="All_Components/navbar.jsp" %>

        <div class="container">
            <div class="row mt-2">
                <div class="col-md-4 offset-md-4">
                    <div class="card">
                        <div class="card-header text-center c-header">
                            <i class="fa-solid fa-circle-user fa-2x"></i>
                            <h5>Login Page</h5>
                        </div>
                        <%
                            String logoutMSG = (String)session.getAttribute("logout-msg");
                            if(logoutMSG != null) 
                            {%>
                                <div class="alert alert-success" role="alert"><%= logoutMSG %></div>
                            <% 
                                session.removeAttribute("logout-msg");
                                }
                        %>
                        
            <!-- error msg -->            
                        <%
                            String errorMsg = (String)session.getAttribute("error-msg");
                            if(errorMsg != null) 
                            {%>
                                <div class="alert alert-danger" role="alert"><%= errorMsg %></div>
                            <%
                                session.removeAttribute("error-msg");
                            }
                        %>
                        
                        <div class="card-body">
                            <form action="LoginServlet" method="post">
                                <div class="mb-3">
                                    <label for="exampleInputEmail1" class="form-label">Email address</label>
                                    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required="required" name="email">
                                </div>
                                <div class="mb-3">
                                    <label for="exampleInputPassword1" class="form-label">Password</label>
                                    <input type="password" class="form-control" id="exampleInputPassword1" required="required" name="password">
                                </div>
                                <div class="text-center">
                                    <button type="submit" class="btn btn-primary text-center w-100">Login</button>
                                    <a href="register.jsp">Create Account</a>
                                    
                                </div>
                            </form>
                                
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <%@include file="All_Components/footer.jsp" %>
    </body>
</html>
