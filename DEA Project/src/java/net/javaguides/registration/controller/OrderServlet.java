/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package net.javaguides.registration.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import net.javaguides.registration.dao.CartDao;
import net.javaguides.registration.dao.OrderDao;
import net.javaguides.registration.model.Cart;
import net.javaguides.registration.model.Item_Order;

/**
 *
 * @author User
 */
@WebServlet(name = "OrderServlet", urlPatterns = {"/OrderServlet"})
public class OrderServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet OrderServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet OrderServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            
            int id = Integer.parseInt(request.getParameter("id"));
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String phone = request.getParameter("phone");
            String address = request.getParameter("address");
            String city = request.getParameter("city");
            String state = request.getParameter("state");
            String pincode = request.getParameter("pincode");
            String payment = request.getParameter("payment");
            
            String fullAdd = address+","+city+","+state+","+pincode;
            //System.out.println(name+""+email+""+phone+""+fullAdd+""+payment);
            
             CartDao dao = new CartDao();
            List<Cart> ilist = dao.getItemByUser(id);
            
            HttpSession session = request.getSession();
            
            if(ilist.isEmpty()) {
                session.setAttribute("addMsg", "Add Item");
                response.sendRedirect("after_login/cart.jsp");
            }else {
                OrderDao dao2 = new OrderDao();
            Item_Order o = new Item_Order();
            int i = dao2.getOrderNo();
            
            ArrayList<Item_Order> orderList = new ArrayList<Item_Order>();
            for(Cart cart:ilist) {
                o.setOrder_id("ITEM-ORD-00"+i);
                o.setUser_name(name);
                o.setEmail(email);
                o.setFullAdd(fullAdd);
                o.setPhone(phone);
                o.setItem_name(cart.getItem_name());
                o.setPrice(cart.getPrice()+"");
                o.setPayment(payment);
                orderList.add(o);
                i++;
            }
            
            if("noselect".equals(payment)) {
                session.setAttribute("fMsg", "Choose Payment Method");
                response.sendRedirect("after_login/cart.jsp");
            }else {
                boolean f = dao2.saveOrder(orderList);
                if(f) {
                    response.sendRedirect("after_login/order_success.jsp");
                }else {
                    session.setAttribute("fMsg", "Your Order Failed");
                    response.sendRedirect("after_login/cart.jsp");
                }
            }
            }
            
        }
            
        catch (Exception e) {
            e.printStackTrace();
        }
      

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */

    }
}
