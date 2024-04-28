package net.javaguides.registration.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 *
 * @author user
 */
@WebServlet(name = "AdminAddItemServlet", urlPatterns = {"/AdminAddItemServlet"})
@MultipartConfig
public class AdminAddItemServlet extends HttpServlet {

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
            out.println("<title>Servlet AddItem</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AddItem at " + request.getContextPath() + "</h1>");
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
        //processRequest(request, response);
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
        //processRequest(request, response);

        Part p = request.getPart("files");
        String fileName = p.getSubmittedFileName();

        String Iname = request.getParameter("Iname");
        double Iprice = Double.parseDouble(request.getParameter("price"));
        String Itype = request.getParameter("Itype");
        String Istatus = request.getParameter("Istatus");

        try {
            Connection conn= DbConnect.getConn();
            
            PreparedStatement ps = conn.prepareStatement("insert into item_details (Iname,Iprice,Icategory,Istatus,img_name) values (?,?,?,?,?)");
            ps.setString(1, Iname);
            ps.setDouble(2, Iprice);
            ps.setString(3, Itype);
            ps.setString(4, Istatus);
            ps.setString(5, fileName);

            int i = ps.executeUpdate();

            if (i == 1) {
                String path = new File(getServletContext().getRealPath(""), "admin/imgs").getPath();

                File file = new File(path);
                p.write(path + File.separator + fileName);
                
                HttpSession session = request.getSession();
                session.setAttribute("reg-msg", "uploaded Successfully");
                response.sendRedirect("admin/addItems.jsp");
            } else {
                HttpSession session = request.getSession();
                session.setAttribute("error-msg", "something went wrong");
                response.sendRedirect("admin/addItems.jsp");

                
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

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
