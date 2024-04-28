<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
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
                        <div class="card-body">
                            <h4 class="text-center">Edit Profile</h4>
                            <form action="UpdateProfileServlet" method="POST">
                                <input type="hidden" value="${userobj.id}" name="id">
                                <div class="mb-3">
                                    <label for="exampleInputEmail1" class="form-label">Enter Full Name : </label>
                                    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="fname" required="required" value="${userobj.name}">
                                </div>
                                <div class="mb-3">
                                    <label for="exampleInputEmail1" class="form-label">Email address : </label>
                                    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="email" required="required" value="${userobj.email}">
                                </div>
                                <div class="mb-3">
                                    <label for="exampleInputEmail1" class="form-label">Phone No : </label>
                                    <input type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="phno" required="required" value="${userobj.phno}">
                                </div>
                                <div class="mb-3">
                                    <label for="exampleInputPassword1" class="form-label">Password : </label>
                                    <input type="password" class="form-control" id="exampleInputPassword1" name="password" required="required">
                                </div>
                                
                                <button type="submit" class="btn btn-primary btn-block btn-sm">Update</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <%@include file="All_Components/footer.jsp" %>
    </body>
</html>
