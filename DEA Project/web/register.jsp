<%@page import="net.javaguides.registration.controller.DbConnect"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="All_Components/allCss.jsp" %>
    </head>
    <body style="background-color: #f1f8e9">
        <%@include file="All_Components/navbar.jsp" %>
       

        <div class="container p-2">
            <div class="row">
                <div class="col-md-4 offset-md-4">
                    <div class="card">
                        <div class="card-header text-center c-header">
                            <i class="fa-solid fa-circle-user fa-2x"></i>
                            <h5>Registration Page</h5>
                        </div>
                        <%
                            String regMsg = (String)session.getAttribute("reg-msg");
                            if(regMsg != null)
                            {%>
                            <div class="alert alert-success" role="alert"><%=regMsg%> Login <a href="login.jsp" class="">Click Here</a></div>                            
                            <%
                                session.removeAttribute("reg-msg");
                                }
                        %>
                        <%
                            String errMsg = (String)session.getAttribute("err-msg");
                            if(errMsg != null) 
                            {%>
                                <div class="alert alert-danger" role="alert"><%=errMsg%></div>                            
                            <%
                                session.removeAttribute("err-msg");
                            }
                        %>
                        
                        <div class="card-body">
                            <form action="RegisterServlet" method="post">
                                <div class="mb-3">
                                    <label for="exampleInputEmail1" class="form-label">Username : </label>
                                    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required="required" name="name">
                                </div>
                                <div class="mb-3">
                                    <label for="exampleInputEmail1" class="form-label">Email address : </label>
                                    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required="required" name="email">
                                </div>
                                <div class="mb-3">
                                    <label for="exampleInputEmail1" class="form-label">Phone No : </label>
                                    <input type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required="required" name="phone">
                                </div>
                                <div class="mb-3">
                                    <label for="exampleInputPassword1" class="form-label">Password : </label>
                                    <input type="password" class="form-control" id="exampleInputPassword1" required="required" name="password">
                                </div>
                                <div class="mb-3 form-check">
                                    <input type="checkbox" class="form-check-input" id="exampleCheck1" name="check" required="required">
                                    <label class="form-check-label" for="exampleCheck1">Agree terms & condition</label>
                                </div>
                                <button type="submit" class="btn btn-primary text-center w-100">Register</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <%@include file="All_Components/footer.jsp" %>
    </body>
</html>
