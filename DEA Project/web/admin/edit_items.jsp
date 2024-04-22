<%@page import="java.sql.Statement"%>
<%@page import="net.javaguides.registration.controller.DbConnect"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>

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
                            <h4 class="text-center">Edit Item</h4>
                            <%
                                String id= request.getParameter("id");
                                try{
                                    Connection conn= DbConnect.getConn();
                                    Statement st= conn.createStatement();
                                    ResultSet rs = st.executeQuery("select * from item_details where Id='"+id+"'");
                                    while(rs.next()){
                                %>
                            <form action="../adminEditItemServlet" method="POST">
                                
                                <input type="hidden" name="id" value="<%out.println(id);%>">

                                <div class="form-group">
                                    <b>   <label for="exampleInputEmail">Item Name*</label></b>
                                    <input type="text" name="Iname" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="<%=rs.getString(2)%>">
                                </div>


                                <div class="form-group">
                                    <b><label for="exampleInputPassword1">Price*</label></b>
                                    <input type="number" name="price" class="form-control" id="exampleInputPassword1" aria-describedby="emailHelp" value="<%=rs.getString(3)%>">
                                </div>


                                <div class="form-group">
                                    <b> <label for="inputState"> Item Category</label></b>
                                    <select  name="Itype" class="form-control" id="inputState" value="<%=rs.getString(4)%>" >
                                        <option selected>Select</option>
                                        <option value="Plant" <% if ("Plant".equals(rs.getString(4))) { %> selected <% } %>>Plant</option>
                                        <option value="Seeds" <% if ("Seeds".equals(rs.getString(4))) { %> selected <% } %>>Seeds</option>
                                        <option value="Fertilizer" <% if ("Fertilizer".equals(rs.getString(4))) { %> selected <% } %>>Fertilizer</option>
                                        <option value="Equipment" <% if ("Equipment".equals(rs.getString(4))) { %> selected <% } %>>Equipment</option>
                                    </select>
                                </div>


                                <div class="form-group">
                                    <b> <label for="inputState">Item Status</label></b>
                                    <select  name="Istatus" class="form-control" id="inputState">
                                        <option selected>Select</option>
                                        <option value="Active" <% if ("Active".equals(rs.getString(5))) { %> selected <% } %>>Active</option>
                                        <option value="Inactive" <% if ("Inactive".equals(rs.getString(5))) { %> selected <% } %>>Inactive</option>
                                    </select>

                                </div>
                                    
                                <br>

                                <button type="submit" class="btn btn-primary">Save</button>
                            </form>
                                    
                            <% }}
                            catch(Exception e){
                            System.out.println(e);
                            }%>
                                    
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
