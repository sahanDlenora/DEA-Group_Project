<%@page import="net.javaguides.registration.model.Item"%>
<%@page import="net.javaguides.registration.controller.DbConnect"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin : All Items</title>
        <%@include file="allCss.jsp" %>
    </head>
    <body style="background-color: #f1f8e9;">
        <%@include file="../All_Components/navbar_admin.jsp" %>
        <h3 class="text-center p-2">Hello Admin</h3>
        
        <%String edtMsg = (String) session.getAttribute("edt-msg");
            if (edtMsg != null) {%>
                <div class="alert alert-success" role="alert">
                <%= edtMsg%>
                </div>
                <%}
                 %>
        
        

        <table class="table table-striped">
            <thead class="bg-primary text-white">
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Image</th>
                    <th scope="col">Name</th>
                    <th scope="col">Price</th>
                    <th scope="col">Category</th>
                    <th scope="col">Status</th>
                    <th scope="col">Action</th>

                </tr>
            </thead>
            <tbody>

                <%
                    Connection conn = DbConnect.getConn();

                    PreparedStatement ps = conn.prepareStatement("select * from item_details");
                    ResultSet rs = ps.executeQuery();
                    while (rs.next()) {
                %>
                <tr>
                    
                                
                    <th scope="row"><%= rs.getInt("Id") %></th>
                    <td><img alt="" src="imgs/<%=rs.getString("img_name")%>" width="100px" height="50px"></td>
                    <td><%= rs.getString("Iname") %></td>
                    <td><%= rs.getDouble("Iprice") %></td>
                    <td><%= rs.getString("Icategory") %></td>
                    <td><%= rs.getString("Istatus") %></td>
                    <td>
                        <a href="edit_items.jsp?id=<%=rs.getString(1)%>" class="btn btn-primary">Edit</a>
                        <a href="../adminDeleteItemServlet?id=<%=rs.getString(1)%>" class="btn btn-danger">Delete</a>
                    </td>
                </tr>
                <% }
                %>

                

            </tbody>
        </table>


        <%@include file="../All_Components/footer_admin.jsp" %>
    </body>
</html>
