
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>user_address</title>
        <%@include file="All_Components/allCss.jsp" %>
    </head>
    <body style="background-color: #f1f8e9">
        <%@include file="All_Components/navbar.jsp" %>
        <div class="container p-2">
            <div class="row p-3">
                <div class="col-md-6 offset-md-3">
                    <div class="card">
                        <div class="card-body">
                            <h3 class="text-center text-success">Add Address</h3>
                            <form action="">
                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                        <lable for="inputPassword4">Address</lable>
                                        <input type="number" class="form-control" id="inputPassword4">
                                    </div>
                                    
                                    <div class="form-group col-md-6">
                                        <lable for="inputPassword4">Land Mark</lable>
                                        <input type="number" class="form-control" id="inputPassword4">
                                    </div>
                                </div>
                                
                                <div class="form-row">
                                        
                                    <div class="form-group col-md-4">
                                        <lable for="inputEmail4">City</lable>
                                        <input type="number" class="form-control" id="inputEmail4">
                                    </div>
                                    
                                    <div class="form-group col-md-4">
                                        <lable for="inputEmail4">State</lable>
                                        <input type="number" class="form-control" id="inputEmail4">
                                    </div>
                                    
                                     <div class="form-group col-md-4">
                                        <lable for="inputEmail4">Zip</lable>
                                        <input type="number" class="form-control" id="inputEmail4">
                                    </div>
                                </div>
                                
                                <div class="text-center">
                                    <button class="btn btn-warning text-white">Add Address</button>
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
