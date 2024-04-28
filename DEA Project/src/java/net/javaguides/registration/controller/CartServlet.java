/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package net.javaguides.registration.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import net.javaguides.registration.dao.CartDao;
import net.javaguides.registration.dao.ItemDao;
import net.javaguides.registration.dao.LoginDao;
import net.javaguides.registration.model.Cart;
import net.javaguides.registration.model.Item;
import net.javaguides.registration.model.Login;

/**
 *
 * @author User
 */
@WebServlet(name = "CartServlet", urlPatterns = {"/CartServlet"})
public class CartServlet extends HttpServlet {

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
            out.println("<title>Servlet CartServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CartServlet at " + request.getContextPath() + "</h1>");
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
        
        int item_id = Integer.parseInt(request.getParameter("Id"));
        int user_id = Integer.parseInt(request.getParameter("user_id"));
        String item_name = request.getParameter("Iname");
        double price = Double.parseDouble(request.getParameter("Iprice"));
        double tot_price = Double.parseDouble(request.getParameter("Iprice"));
        
        try {
             Connection conn= DbConnect.getConn();
            
            PreparedStatement ps = conn.prepareStatement("insert into cart (item_id,user_id,item_name,price,total_price) values (?,?,?,?,?)");
            ps.setInt(1, item_id);
            ps.setInt(2, user_id);
            ps.setString(3, item_name);
            ps.setDouble(4, price);
            ps.setDouble(5, tot_price);

            ps.executeUpdate();
            
            response.sendRedirect("after_login/home.jsp");
     
            CartDao cartDao = new CartDao();
                                    
        } catch (Exception e) {
            e.printStackTrace();
        }
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
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
