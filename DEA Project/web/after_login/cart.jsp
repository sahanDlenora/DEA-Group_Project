<%@page import="net.javaguides.registration.model.Cart"%>
<%@page import="java.util.List"%>
<%@page import="net.javaguides.registration.dao.CartDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cart Page</title>
        <%@include file="allCss.jsp" %>
    </head>
    <body style="background-color: #f0f1f2">
        <%@include file="../All_Components/navbar_after.jsp" %>
        
        <div class="container">
            <div class="row p-2">
                <div class="col-md-6">                
                    <div class="card bg-white">                  
                        <div class="card-body">
                            <h3 class="text-center text-success">Your Selected Item</h3>
                            <%
                                String removeMsg = (String)session.getAttribute("succMsg");
                                if(removeMsg != null) 
                            {%>
                                <div class="alert alert-success text-center" role="alert"><%= removeMsg %></div>
                            <% 
                                session.removeAttribute("succMsg");
                            }
                            %>
        
                            <%
                                String errorMsg = (String)session.getAttribute("failedMsg");
                                if(errorMsg != null) 
                            {%>
                                <div class="alert alert-danger text-center" role="alert"><%= errorMsg %></div>
                                <%
                                    session.removeAttribute("failedMsg");
                            }
                            %>
                            
                            <%
                                String addErrMsg = (String)session.getAttribute("addMsg");
                                if(addErrMsg != null) 
                            {%>
                                <div class="alert alert-danger text-center" role="alert"><%= addErrMsg %></div>
                                <%
                                    session.removeAttribute("addMsg");
                            }
                            %>
                            <table class="table table-striped">
                                <thead>
                                    <tr>
                                        <th scope="col">Item Name</th>
                                        <th scope="col">Price</th>
                                        <th scope="col">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    
                                    <%
                                        Login lo = (Login)session.getAttribute("user-ob");
                                        CartDao dao = new CartDao();
                                        List<Cart> c = dao.getItemByUser(lo.getId());
                                        Double totalPrice = 0.00;
                                        for(Cart cart:c){
                                            totalPrice = cart.getTotal_price();
                                        %>
                                            <tr>
                                                <th scope="row"><%= cart.getItem_name() %></th>
                                                <td><%= cart.getPrice() %></td>
                                                <td>
                                                    <a href="../RemoveItemServlet?item_id=<%= cart.getItem_id() %>" class="btn btn-sm btn-danger">Remove</a>
                                                </td>
                                            </tr>
                                        <%}
                                    %>
                                    <tr>
                                        <td style="color: green">Total Price</td>
                                        <td></td>
                                        <td style="color: green">Rs. <%=totalPrice%></td>
                                    </tr>
                                    
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-body">
                            <h3 class="text-center text-success">Your Details For Order</h3>
                            <%
                                String errMsg = (String)session.getAttribute("fMsg");
                                if(errMsg != null) 
                            {%>
                                <div class="alert alert-danger text-center" role="alert"><%= errMsg %></div>
                                <%
                                    session.removeAttribute("fMsg");
                            }
                            %>
                            
                            <form action="../OrderServlet" method="post">
                                 <div class="form-row">
                                    <div class="form-group col-md-6">                                        
                                        <input type="hidden" value="<%=lo.getId()%>" name="id">
                                        
                                        <label for="inputEmail4">Name</label>
                                        <input type="text" class="form-control" id="inputEmail4" value="<%= lo.getName() %>" name="name" required="required">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="inputPassword4">Email</label>
                                        <input type="email" class="form-control" id="inputPassword4" value="<%= lo.getEmail() %>" name="email" required="required">
                                    </div>
                                </div>                            
                                 <div class="form-row">
                                    <div class="form-group col-md-6">
                                        <label for="inputEmail4">Phone Number</label>
                                        <input type="text" class="form-control" id="inputEmail4" value="<%= lo.getPhone() %>" name="phone" required="required">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="inputPassword4">Address</label>
                                        <input type="text" class="form-control" id="inputPassword4" name="address" required="required">
                                    </div>
                                </div>                                
                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                        <label for="inputPassword4">City</label>
                                        <input type="text" class="form-control" id="inputPassword4" name="city" required="required">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="inputEmail4">State</label>
                                        <input type="text" class="form-control" id="inputEmail4" name="state" required="required">
                                    </div>                                  
                                </div>                               
                                <div class="form-row">                     
                                    <div class="form-group col-md-6">
                                        <label for="inputPassword4">Pin Code</label>
                                        <input type="text" class="form-control" id="inputPassword4" name="pincode" required="required">
                                    </div>
                                </div>
                                
                                <div class="form.group">
                                    <label>Payment Mode</label>
                                    <select class="form.control" name="payment">
                                        <option value="noselect">--select--</option>
                                        <option value="COD">Cash on delivery</option>
                                    </select>
                                </div>
                                
                                <div class="text-center">
                                    <button class="btn btn-warning">Order Now</button>
                                    <a href="home.jsp" class="btn btn-success">Continue Shopping</a>
                                </div>                              
                            </form>
                        </div>                       
                    </div>
                </div>               
            </div>
        </div>
        <%@include file="../All_Components/footer_after.jsp" %> 
    </body>
</html>
