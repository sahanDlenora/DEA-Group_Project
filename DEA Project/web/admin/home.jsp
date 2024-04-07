<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin: Add Items</title>
         <%@include file="allCss.jsp" %>
    </head>
    <body style="background-color: #98FB98;">
         <%@include file="navbar.jsp" %>
         <div class="container">
            <div class="row ">
                <div class="col-md-4 offset-md-4">
                   <div class="card">
                        <div class="card-body ">
                            <h4 class="text-center">Add Item</h4>
                            <form action="AdminAddItemServlet" method="POST" enctype="multipart/form-data">
                                
                                <div class="form-group">
                                    <b>   <label for="exampleInputEmail">Item Name*</label></b>
                                    <input type="text" name="Iname" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                                </div>
                                
                                 
                                <div class="form-group">
                                    <b><label for="exampleInputPassword1">Price*</label></b>
                                    <input type="number" name="price" class="form-control" id="exampleInputPassword1" aria-describedby="emailHelp">
                                </div>
                                
                                 
                                <div class="form-group">
                                    <b> <label for="inputState"> Item Category</label></b>
                                    <select  name="Itype" class="form-control" id="inputState" >
                                        <option selected>Select</option>
                                        <option value="Plant">Plant</option>
                                        <option value="Seeds">Seeds</option>
                                        <option value="Fertilizer">Fertilizer</option>
                                        <option value="Equipment">Equipment</option>
                                    </select>
                                </div>
                                
                                 
                                <div class="form-group">
                                    <b> <label for="inputState">Item Status</label></b>
                                    <select  name="Istatus" class="form-control" id="inputState" >
                                        <option selected>Select</option>
                                        <option value="Active">Active</option>
                                        <option value="Inactive">Inactive</option>
                                    </select>
                                    
                                </div>
                                
                                <div class="form-group">
                                    <b> <label for="exampleFormControlFile1">Upload Photo</label></b>
                                    <input name="Iimg" type="file" class="form-control-file" id="exampleFormControlFile1">
                                
                                </div>
                                
                                <br>
                                
                                <button type="submit" class="btn btn-primary">Add</button>
                                
                                
                                
                                
                                
                            </form>
                            
                            
                            
                            
                            
                        </div>
                   </div>
                </div>
            </div>
         </div>
    </body>
</html>
