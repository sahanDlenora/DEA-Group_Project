<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edite Profile</title>
        <%@include file="allCss.jsp" %>
    </head>
    <body style="background-color: #f1f8e9">
        <%@include file="../All_Components/navbar_after.jsp"%>

        <div class="container p-2">
            <div class="row">
                <div class="col-md-4 offset-md-4">
                    <div class="card">
                        <div class="card-body">
                            
                            <h4 class="text-center text-primary">Edit Profile</h4>
                            
                            <form action="register.jsp" method="post">
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
                                <button type="submit" class="btn btn-primary text-center w-100">Update</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <%@include file="../All_Components/footer_after.jsp" %>
    </body>
</html>
